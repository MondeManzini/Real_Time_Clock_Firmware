
-- ===========
--
-- Fpga Controller Main Module
--
-- 
-- Written by  : Glen Taylor, Monde Manzini
-- Tested      : 
-- Last update : 18/09/2014 
-- Outstanding :
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Real_Time_Clock_Firmware is

  port (

--------------------------Clock Input  ---------------------------------
    CLOCK_50                            : in    std_logic;                      --      50 MHz          
--------------------------Push Button  ---------------------------------                        
    KEY                                 : in    std_logic_vector(1 downto 0);   --      Pushbutton[1:0]                   
--------------------------DPDT Switch  ---------------------------------
    SW                                  : in    std_logic_vector(3 downto 0);   --      Toggle Switch[3:0]              
--------------------------LED    ------------------------------------
    LED                                 : out   std_logic_vector(7 downto 0);   --      LED [7:0]     
--------------------------SDRAM Interface  ---------------------------
    --DRAM_DQ                             : inout std_logic_vector(15 downto 0);  --      SDRAM Data bus 16 Bits
    --DRAM_DQM                            : out   std_logic_vector(1 downto 0);   --      SDRAM Data bus 2 Bits
    --DRAM_ADDR                           : out   std_logic_vector(12 downto 0);  --      SDRAM Address bus 13 Bits
    --DRAM_WE_N                           : out   std_logic;                      --      SDRAM Write Enable
    --DRAM_CAS_N                          : out   std_logic;                      --      SDRAM Column Address Strobe
    --DRAM_RAS_N                          : out   std_logic;                      --      SDRAM Row Address Strobe
    --DRAM_CS_N                           : out   std_logic;                      --      SDRAM Chip Select
    --DRAM_BA                             : out   std_logic_vector(1 downto 0);   --      SDRAM Bank Address 0
    --DRAM_CLK                            : out   std_logic;                      --      SDRAM Clock
    --DRAM_CKE                            : out   std_logic;                      --      SDRAM Clock Enable
 
--------------------------Accelerometer and EEPROM----------------
    --G_SENSOR_CS_N                       : out     std_logic;  
    --G_SENSOR_INT                        : in      std_logic;  
    I2C_SCLK                            : out     std_logic;  
    I2C_SDAT                            : inout   std_logic;  
--------------------------ADC--------------------------------------------------------
    --ADC_CS_N                            : out     std_logic;   
    --ADC_SADDR                           : out     std_logic; 
    --ADC_SCLK                            : out     std_logic; 
    --ADC_SDAT                            : in      std_logic;
--------------------------2x13 GPIO Header-----------------------------------------------
    GPIO_2_UP                           : inout   std_logic_vector(2 downto 0);
    GPIO_2                              : inout   std_logic_vector(8 downto 0);
    GPIO_2_IN                           : in      std_logic_vector(2 downto 0);
--------------------------GPIO_0, GPIO_0 connect to GPIO Default-----------------------
    GPIO_0                              : inout   std_logic_vector(33 downto 0);
    GPIO_0_IN                           : in      std_logic_vector(1 downto 0);
--------------------------GPIO_1, GPIO_1 connect to GPIO Default--------------------------
    GPIO_1                              : inout   std_logic_vector(33 downto 0);
    GPIO_1_IN                           : in      std_logic_vector(1 downto 0)
    );
end Real_Time_Clock_Firmware;

architecture Arch_DUT of Real_Time_Clock_Firmware is
  
-- Accelerometer and EEPROM
signal I2C_SCLK_i                       : std_logic;  
signal I2C_SDAT_i                       : std_logic; 

-- General Signals
signal RST_I_i                          : std_logic; 
signal CLK_I_i                          : STD_LOGIC;
signal One_uS_i                         : STD_LOGIC;     
signal One_mS_i                         : STD_LOGIC;              
signal Ten_mS_i                         : STD_LOGIC;
signal Twenty_mS_i                      : STD_LOGIC;             
signal Hunder_mS_i                      : STD_LOGIC;
signal UART_locked_i                    : STD_LOGIC;
signal One_Sec_i                        : STD_LOGIC;
signal Two_ms_i                         : STD_LOGIC;
signal One_mS_pulse_i                   : std_logic;


----------------------------------------------------------------------
-- Master Push Button Component and Signals
----------------------------------------------------------------------  
component Maser_PushButton_Controller is 
    port (
        --General Signals
        CLK_I                   : in  std_logic;
        RST_I                   : in  std_logic;
        -- Push Button Inputs
        PushButton_Start        : in  std_logic;
        PushButton_Stop         : in  std_logic;
        Initialization_Complete : in  std_logic;    
        --  Push Button Outputs    
        Start                   : out std_logic
    );
end component Maser_PushButton_Controller;  

signal PushButton_Start_i : std_logic;
signal PushButton_Stop_i  : std_logic;
signal Start_i            : std_logic;

----------------------------------------------------------------------
-- I2C Master Component and Signals
----------------------------------------------------------------------
component i2c_master is
    generic(
         bus_clk   : INTEGER := 400_000);                 --speed the i2c bus (scl) will run at in Hz
    port(
        clk       : in     STD_LOGIC;                    --system clock
        reset_n   : in     STD_LOGIC;                    --active low reset
        ena       : in     STD_LOGIC;                    --latch in command
        addr      : in     STD_LOGIC_VECTOR(6 downto 0); --address of target slave
        rw        : in     STD_LOGIC;                    --'0' is write, '1' is read
        data_wr   : in     STD_LOGIC_VECTOR(7 downto 0); --data to write to slave
        busy      : out    STD_LOGIC;                    --indicates transaction in progress
        data_rd   : out    STD_LOGIC_VECTOR(7 downto 0); --data read from slave
        ack_error : buffer STD_LOGIC;                    --flag if improper acknowledge from slave
        sda       : inout  STD_LOGIC;                    --serial data output of i2c bus
        scl       : inout  STD_LOGIC                     --serial clock output of i2c bus
    );                   
end component i2c_master;

signal Enable_i           : std_logic;
signal Address_i          : std_logic_vector(6 downto 0);
signal RnW_i              : std_logic;
signal Data_WR_i          : std_logic_vector(7 downto 0);

----------------------------------------------------------------------
-- Maser i2c Controller Component and Signals
----------------------------------------------------------------------
component Maser_i2c_Controller is
    port(
        --General Signals
        RST_I                 : in  std_logic;
        CLK_I                   : in  std_logic;
        -- Inputs i2c
        Busy                  : in  std_logic;
        data_read             : in  std_logic_vector(7 downto 0);
        ack_error             : in std_logic;   
        -- Outputs i2c 1
        initialation_Status   : out std_logic;  
        Enable                : out std_logic;
        Slave_Address_Out     : out std_logic_vector(6 downto 0);
        Slave_read_nWrite     : out std_logic;
        Slave_Data_Out        : out std_logic_vector(7 downto 0);  
        -- Maser MuxPushbutton Inputs
        Start                 : in std_logic;
        Get_Sample            : in std_logic;
        -- Maser Input for future use only     
        --    Slave_Address_in      : in std_logic_vector(6 downto 0);
        --    Slave_Register        : in std_logic_vector(7 downto 0);
        --    Slave_Data_In         : in std_logic_vector(7 downto 0);
        -- Maser Mux Outputs
        ADXL345_X             : out std_logic_vector(15 downto 0);
        ADXL345_Y             : out std_logic_vector(15 downto 0);
        ADXL345_Z             : out std_logic_vector(15 downto 0);
        FIFO_CTL              : out std_logic_vector(7 downto 0);
        FIFO_Status           : out std_logic_vector(7 downto 0);
        Ready                 : out std_logic
    );                   
end component Maser_i2c_Controller;

signal Ready_i            : std_logic;
signal Get_Sample_i       : std_logic;
signal ADXL345_X_i        : std_logic_vector(15 downto 0);
signal ADXL345_Y_i        : std_logic_vector(15 downto 0);
signal ADXL345_Z_i        : std_logic_vector(15 downto 0);
signal FIFO_CTL_i         : std_logic_vector(7 downto 0);
signal FIFO_Status_i      : std_logic_vector(7 downto 0); 
signal Ack_Error_i        : std_logic;
signal SDA_i              : std_logic;
signal SCL_i              : std_logic;  
signal lock_Out_i         : std_logic;
signal lock_Out2_i        : std_logic;
signal Busy_i             : std_logic;
signal Data_RD_i          : std_logic_vector(7 downto 0);
signal initialation_Status_i : std_logic;  

----------------------------------------------------------------------
-- I2C Mux ADXL345 Component and Signals
----------------------------------------------------------------------
component Maser_Mux_ADXL345 is
    port (
        Clk                 : in  std_logic;
        RST_I               : in  std_logic;
        UART_TXD            : out std_logic;
        Busy                : out std_logic;
        Get_Sample          : out std_logic;
        ADXL345_X_1         : in std_logic_vector(15 downto 0);  
        ADXL345_Y_1         : in std_logic_vector(15 downto 0);
        ADXL345_Z_1         : in std_logic_vector(15 downto 0);
        Fifo_Status_1       : in std_logic_vector(7 downto 0);
        Fifo_CTL_1          : in std_logic_vector(7 downto 0);
        Baud_Rate_Enable    : in std_logic;  
        initialation_Status : in std_logic;
        Ready_1_i           : in std_logic
    );
end component Maser_Mux_ADXL345;

signal UART_TXD_i       : std_logic;
signal ADXL345_X_1_i    : std_logic_vector(15 downto 0);  
signal ADXL345_Y_1_i    : std_logic_vector(15 downto 0);
signal ADXL345_Z_1_i    : std_logic_vector(15 downto 0);
signal Fifo_Status_1_i  : std_logic_vector(7 downto 0);
signal Fifo_CTL_1_i     : std_logic_vector(7 downto 0);
signal Ready_1_i        : std_logic;
signal Busy_Mux_i       : std_logic;

component Baud_Rate_Generator is
    port (
        Clk              : in  std_logic;
        RST_I            : in  std_logic;
        baud_rate        : in  integer range 0 to 7;
        Baud_Rate_Enable : out std_logic
    );
end component Baud_Rate_Generator;

signal Baud_Rate_Enable_i       : std_logic;
signal Int_SCL_i                : std_logic;
signal Int_SDA_i                : std_logic;


-- End of Signals and Components

-------------------------------------------------------------------------------
-- Clock for Genlock
-------------------------------------------------------------------------------  

-------------------------------------------------------------------------------
-- Code Start
-------------------------------------------------------------------------------  
  Begin
-------------------------------------------------------------------------------    
--  Wire
-------------------------------------------------------------------------------    
      -- Links  
      CLK_I_i             <= CLOCK_50;
      PushButton_Start_i  <= not KEY(0);
      PushButton_Stop_i   <= not KEY(1);
        -- IOs to Device
      GPIO_0(0)           <= SCL_i;
     -- SDA_i               <= GPIO_0(1)  See I2c Master instance;
     -- Serial Out to PC
      GPIO_1(2)           <= UART_TXD_i;
      GPIO_0(3)           <= '0'; -- not working FPGA Pin
      GPIO_0(5)           <= '0'; -- not working FPGA Pin
      GPIO_0(7)           <= SCL_i; -- GPIO_0(1); --Int_SDA_i;
      GPIO_0(9)           <= PushButton_Start_i;
      GPIO_0(11)           <= PushButton_Stop_i;
      GPIO_0(13)           <= Start_i;
      GPIO_0(15)           <= Ready_1_i;
      GPIO_0(17)           <= Data_RD_i(7);
      GPIO_0(19)          <= Data_RD_i(6);
      GPIO_0(21)          <= Data_RD_i(5);
      GPIO_0(23)          <= Data_RD_i(4);
      GPIO_0(25)          <= Data_RD_i(3);
      GPIO_0(27)          <= Data_RD_i(2);
      GPIO_0(29)          <= Data_RD_i(1);
      GPIO_0(31)          <= Data_RD_i(0);
      GPIO_0(33)          <= UART_TXD_i;
      GPIO_0(32)          <= Busy_i;
      GPIO_0(30)          <= Int_SCL_i;
      GPIO_0(28)          <= GPIO_0(1); --Int_SDA_i;

        
-------------------------------------------------------------------------------    
--  Instantiations of Modules
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
        
-------------------------------------------
-- Push Button Instance
-------------------------------------------
    Maser_PushButton_1: entity work.Maser_PushButton_Controller
        port map(
            CLK_I                   => CLK_I_i,
            RST_I                   => RST_I_i,    
            PushButton_Start        => PushButton_Start_i,
            PushButton_Stop         => PushButton_Stop_i,
            Initialization_Complete => initialation_Status_i,    
            Start                   => Start_i
        );          
 -------------------------------------------
 -- I2C Controller Instance
 -------------------------------------------
    Maser_i2c_Controller_1: entity work.Maser_i2c_Controller
        port map (
            CLK_I               => CLK_I_i,     --system clock
            RST_I               => RST_I_i,     --active low reset
            Busy                => Busy_i,      --latch in command
            data_read           => Data_RD_i,   --address of target slave
            ack_error           => Ack_Error_i, --flag if improper acknowledge from slave
            initialation_Status => initialation_Status_i,
            Enable              => Enable_i,    --indicates transaction in progress
            Slave_Address_Out   => Address_i,   --data read from slave
            Slave_read_nWrite   => RnW_i,       --'0' is write, '1' is read
            Slave_Data_Out      => Data_WR_i,   --serial data output of i2c bus
            Start               => Start_i,     
            Get_Sample          => Get_Sample_i,     
            ADXL345_X           => ADXL345_X_i,          
            ADXL345_Y           => ADXL345_Y_i,           
            ADXL345_Z           => ADXL345_Z_i,           
            FIFO_CTL            => FIFO_CTL_i,           
            FIFO_Status         => FIFO_Status_i,         
            Ready               => Ready_i   
        );   
        
-------------------------------------------
-- I2C Master Instance
-------------------------------------------        
    i2c_master_1: entity work.i2c_master
        port map (
            clk       => CLK_I_i,                  --system clock
            reset_n   => RST_I_i,                  --active low reset
            ena       => Enable_i,                 --latch in command
            addr      => Address_i,                --address of target slave
            rw        => RnW_i,                    --'0' is write, '1' is read
            data_wr   => Data_WR_i,                --data to write to slave
            busy      => Busy_i,                   --indicates transaction in progress
            data_rd   => Data_RD_i,                --data read from slave
            ack_error => Ack_Error_i,              --flag if improper acknowledge from slave
            sda       => GPIO_0(1), --SDA_i,                    --serial data output of i2c bus
            scl       => SCL_i                     --serial clock output of i2c bus
        );   

-------------------------------------------------------------------------------
-- Main Mux ADXL345 Instance
-------------------------------------------------------------------------------
    Maser_Mux_ADXL345_1: entity work.Maser_Mux_ADXL345
        port map (
            Clk                 => CLK_I_i,
            RST_I               => RST_I_i,
            Busy                => Busy_Mux_i,
            Get_Sample          => Get_Sample_i, 
            UART_TXD            => UART_TXD_i, 
            ADXL345_X_1         => ADXL345_X_i,
            ADXL345_Y_1         => ADXL345_Y_i,
            ADXL345_Z_1         => ADXL345_Z_i,
            Fifo_CTL_1          => FIFO_CTL_i,
            Fifo_Status_1       => FIFO_Status_i,
            Baud_Rate_Enable    => Baud_Rate_Enable_i,  
            initialation_Status => initialation_Status_i,
            Ready_1             => Ready_i
        );  
    
-------------------------------------------------------------------------------
-- Baud Rate Generator Instance
-------------------------------------------------------------------------------      Baud_1: entity work.Baud_Rate_Generator
    Baud_Rate_Generator_1: entity work.Baud_Rate_Generator
        port map (
            Clk              => CLK_I_i,
            RST_I            => RST_I_i,
            baud_rate        => 5,
            Baud_Rate_Enable => Baud_Rate_Enable_i
        );

-------------------------------------------------------------------------------
-- Test Only
------------------------------------------------------------------------------- 
-- add switches and Leds
-------------------------------------------------------------------------------     
Maser_Test: process(RST_I_i,CLOCK_50)
begin
    if RST_I_i = '0' then
        LED <= (others => '0');
    elsif CLOCK_50'event and CLOCK_50 = '1' then
        
        LED(0)          <= Start_i;
        LED(1)          <= RnW_i;
        LED(7 downto 2) <= Data_RD_i(7 downto 2);
        if SCL_i = '0' then
            Int_SCL_i   <= '0';
        else
            Int_SCL_i   <= '1';
        end if; 
        if SDA_i = '0' then
            Int_SDA_i   <= '0';
        else
            Int_SDA_i   <= '1';
        end if; 
    end if;
end process Maser_Test;        
 Time_Trigger: process(RST_I_i,CLOCK_50)
    variable bit_cnt_OuS       : integer range 0 to 100;
    variable bit_cnt_OmS       : integer range 0 to 60000;
    variable bit_cnt_TmS       : integer range 0 to 600000;
    variable bit_cnt_20mS      : integer range 0 to 2000000;       
    variable bit_cnt_HmS       : integer range 0 to 6000000;
    variable Sec_Cnt           : integer range 0 to 11;
    variable Two_ms_cnt        : integer range 0 to 3;
    begin
      if RST_I_i = '0' then
         bit_cnt_OuS       := 0;
         bit_cnt_OmS       := 0;
         bit_cnt_TmS       := 0;         
         bit_cnt_HmS       := 0;
         bit_cnt_20mS      := 0;          
         One_uS_i          <= '0';
         One_mS_i          <= '0';        
         Ten_mS_i          <= '0';
         Twenty_mS_i       <= '0';
         Hunder_mS_i       <= '0';
         One_Sec_i         <= '0';
      elsif CLOCK_50'event and CLOCK_50 = '1' then       
--1uS
            if bit_cnt_OuS = 50 then
               One_uS_i         <= '1';
               bit_cnt_OuS      := 0;                      
            else
               One_uS_i        <= '0';
               bit_cnt_OuS      := bit_cnt_OuS + 1;
            end if;
--1mS            
            if bit_cnt_OmS = 50000 then
               One_mS_i         <= '1';                 
               bit_cnt_OmS      := 0;
               Two_ms_cnt       := Two_ms_cnt + 1;
            else
               One_mS_i   <= '0';
               bit_cnt_OmS      := bit_cnt_OmS + 1;
            end if;
-- 2 ms
            if Two_ms_cnt = 2 then
               Two_ms_i     <= '1';
               Two_ms_cnt   := 0;
            else
               Two_ms_i      <= '0';
            end if;   
--10mS     
--              if SYNC_Pulse_i = '1' then
--                 bit_cnt_TmS      := 0;
--                 Ten_mS_i         <= '0';
--              end if;
            
            if bit_cnt_TmS = 500000 then
               Ten_mS_i   <= '1';
               bit_cnt_TmS      := 0;                      
            else
               Ten_mS_i   <= '0';
               bit_cnt_TmS      := bit_cnt_TmS + 1;
            end if;

-- 20mS         
            if bit_cnt_20mS = 1000000 then
               Twenty_mS_i   <= '1';
               bit_cnt_20mS  := 0;                      
            else
               Twenty_mS_i   <= '0';
               bit_cnt_20mS  := bit_cnt_20mS + 1;
            end if;            
            
--100Ms
            if bit_cnt_HmS = 5000000 then
               Hunder_mS_i      <= '1';                  
               bit_cnt_HmS      := 0;
               Sec_Cnt          := Sec_Cnt + 1;
            else
               Hunder_mS_i      <= '0';
               bit_cnt_HmS      := bit_cnt_HmS + 1;
            end if;

-- 1 sec
            if Sec_Cnt = 10 then
               One_Sec_i <= '1';
               Sec_Cnt   := 0;
            else
              One_Sec_i  <= '0';
            end if;  
      end if;
 end process Time_Trigger;
                            
  Reset_gen : process(CLOCK_50)
          variable cnt : integer range 0 to 255;
        begin
          if (CLOCK_50'event) and (CLOCK_50 = '1') then            
            if cnt = 255 then
               RST_I_i <= '1';
            else
               cnt := cnt + 1;
               RST_I_i <= '0';
             end if;
          end if;
        end process Reset_gen; 
  
  end Arch_DUT;

