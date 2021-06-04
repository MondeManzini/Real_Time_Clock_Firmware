-------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- This file contains  modules which make up a testbench
-- suitable for testing the "device under test".
--
-------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.numeric_std.all;
    use ieee.std_logic_UNSIGNED.all;

library modelsim_lib;
    use modelsim_lib.util.all;

entity Real_Time_Clock_Firmware_Test_Bench is

end Real_Time_Clock_Firmware_Test_Bench;

architecture Archtest_bench of Real_Time_Clock_Firmware_Test_Bench is
	
  component test_bench_T
    generic (
      Vec_Width  : positive := 4;
      ClkPer     : time     := 20 ns;
      StimuFile  : string   := "data.txt";
      ResultFile : string   := "results.txt"
      );
    port (
      oVec : out std_logic_vector(Vec_Width-1 downto 0);
      oClk : out std_logic;
      iVec : in std_logic_vector(3 downto 0)
      );
  end component;

----------------------------------------------------------------------
-- RTC I2C Driver Component and Signals
----------------------------------------------------------------------
component i2c_master IS
  GENERIC(
    input_clk : INTEGER := 50_000_000;               --input clock speed from user logic in Hz
    bus_clk   : INTEGER := 400_000);                 --speed the i2c bus (scl) will run at in Hz
  PORT(
    clk       : IN     STD_LOGIC;                    --system clock
    reset_n   : IN     STD_LOGIC;                    --active low reset
    ena       : IN     STD_LOGIC;                    --latch in command
    addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
    rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
    data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
    busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
    data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
    ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
    sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
    scl       : INOUT  STD_LOGIC                     --serial clock output of i2c bus
    );                   
END component i2c_master;


----------------------------------------------------------------------
-- RTC I2C Handler Test Bench Component and Signals
----------------------------------------------------------------------
component Real_Time_Clock_I2C_Handler IS
  PORT(
-- General Signals
  RST_I                : in  std_logic;
  CLK_I 	            : in  std_logic;
  -- Inputs from I2C Driver
  Busy                 : in  std_logic;
  data_read            : in  std_logic_vector(7 downto 0);
  ack_error            : in std_logic;
  -- Outputs to I2C Driver
  initialation_Status  : out std_logic;
  Enable               : out std_logic;
  Slave_Address_Out    : out std_logic_vector(6 downto 0);
  Slave_read_nWrite    : out std_logic;
  Slave_Data_Out       : out std_logic_vector(7 downto 0);  
  -- Inputs
  Start                : in std_logic;
  Get_Sample           : in std_logic;
  Sync                 : in std_logic;
  Enable_in            : in std_logic;
  PPS_in               : in std_logic;
  -- Inputs from DeMux
  Seconds_in           : in std_logic_vector(7 downto 0); 
  Minutes_in           : in std_logic_vector(7 downto 0); 
  Hours_in             : in std_logic_vector(7 downto 0); 
  Day_in               : in std_logic_vector(7 downto 0); 
  Date_in              : in std_logic_vector(7 downto 0); 
  Month_Century_in     : in std_logic_vector(7 downto 0); 
  Year_in              : in std_logic_vector(7 downto 0); 
  -- Outputs for Mux
  Seconds_out          : out std_logic_vector(7 downto 0); 
  Minutes_out          : out std_logic_vector(7 downto 0); 
  Hours_out            : out std_logic_vector(7 downto 0); 
  Day_out              : out std_logic_vector(7 downto 0); 
  Date_out             : out std_logic_vector(7 downto 0); 
  Month_Century_out    : out std_logic_vector(7 downto 0); 
  Year_out             : out std_logic_vector(7 downto 0); 
  Ready                : out std_logic
  );                   
END component Real_Time_Clock_I2C_Handler;

signal Get_Sample_i           : std_logic;
signal Sync_i                 : std_logic;
signal Enable_in_i            : std_logic;
signal PPS_in_i               : std_logic;
signal Enable_i               : std_logic;
signal Address_i              : std_logic_vector(6 downto 0);
signal RnW_i                  : std_logic;
signal Data_WR_i              : std_logic_vector(7 downto 0);
signal Ready_i                : std_logic;
signal Seconds_out_i          : std_logic_vector(7 downto 0);         
signal Minutes_out_i          : std_logic_vector(7 downto 0);     
signal Hours_out_i            : std_logic_vector(7 downto 0);
signal Day_out_i              : std_logic_vector(7 downto 0);         
signal Date_out_i             : std_logic_vector(7 downto 0);     
signal Month_Century_out_i    : std_logic_vector(7 downto 0);
signal Year_out_i             : std_logic_vector(7 downto 0);
signal Seconds_in_i           : std_logic_vector(7 downto 0);         
signal Minutes_in_i           : std_logic_vector(7 downto 0);     
signal Hours_in_i             : std_logic_vector(7 downto 0);
signal Day_in_i               : std_logic_vector(7 downto 0);         
signal Date_in_i              : std_logic_vector(7 downto 0);     
signal Month_Century_in_i     : std_logic_vector(7 downto 0);
signal Year_in_i              : std_logic_vector(7 downto 0);
signal Ack_Error_i            : std_logic;
signal SDA_i                  : std_logic;
signal SCL_i                  : std_logic;  
signal lock_Out_i             : std_logic;
signal lock_Out2_i            : std_logic;
signal Busy_i                 : std_logic;
signal Data_RD_i              : std_logic_vector(7 downto 0);
signal Start_i                : std_logic;
signal lockout_i              : std_logic;
signal initialation_Status_i  : std_logic;
signal TestData               : std_logic_vector(7 downto 0);

----------------------------------------------------------------------
-- RTC I2C Mux Component and Signals
----------------------------------------------------------------------
component Real_Time_Clock_Mux is
  port (
    Clk                 : in  std_logic;
    RST_I               : in  std_logic;
    UART_TXD            : out std_logic;
    Busy                : out std_logic;
    Get_Sample          : out std_logic;
    Seconds             : in std_logic_vector(7 downto 0);  
    Minutes             : in std_logic_vector(7 downto 0);
    Hours               : in std_logic_vector(7 downto 0);
    Day                 : in std_logic_vector(7 downto 0);
    Date                : in std_logic_vector(7 downto 0);
    Month_Century       : in std_logic_vector(7 downto 0);
    Year                : in std_logic_vector(7 downto 0);
    Baud_Rate_Enable    : in std_logic; 
    initialation_Status : in std_logic;
    Ready_1_i           : in std_logic
    );
end component Real_Time_Clock_Mux;

---------------------------------------
-- PushButton
---------------------------------------
component PushButton_Controller is 
  port (
    --General Signals
    CLK_I 	                : in  std_logic;
    RST_I                   : in  std_logic;
-- Push Button Inputs
    PushButton_Start        : in  std_logic;
    PushButton_Stop         : in  std_logic;
    Initialization_Complete : in  std_logic;    
--  Push Button Outputs    
    Start                   : out std_logic
    );
end component PushButton_Controller;

signal PushButton_Start_i   : std_logic;
signal PushButton_Stop_i    : std_logic; 

--------------------------------------------
-- Baud Rate Generator Component and Signals
--------------------------------------------
component Baud_Rate_Generator is
  port (
      Clk              : in  std_logic;
      RST_I            : in  std_logic;
      baud_rate        : in  integer range 0 to 7;
      Baud_Rate_Enable : out std_logic
  );
end component Baud_Rate_Generator;

signal Baud_Rate_Enable_i       : std_logic;
signal UART_TXD_i               : std_logic;
signal ADXL345_X_1_i            : std_logic_vector(15 downto 0);  
signal ADXL345_Y_1_i            : std_logic_vector(15 downto 0);
signal ADXL345_Z_1_i            : std_logic_vector(15 downto 0);
signal Fifo_Status_1_i          : std_logic_vector(7 downto 0);
signal Fifo_CTL_1_i             : std_logic_vector(7 downto 0);
signal Ready_1_i                : std_logic;
signal Busy_Mux_i               : std_logic;

signal Run_i                    : std_logic;
signal Key_Start_i              : std_logic;
signal Key_Stop_i               : std_logic;
signal Stop_i                   : std_logic;
signal TestData_i               : std_logic_vector(7 downto 0); 
signal Int_SCL_i                : std_logic;
signal Int_SDA_i                : std_logic;
signal Start_Detected           : std_logic; 
signal Byte_Address             : std_logic; 
signal busy_mux_lockout_i       : std_logic; 
signal Delay_Count              : integer range 0 to 126;
signal Byte_Count               : integer range 0 to 15;
signal Record_Slave_Address     : std_logic_vector(6 downto 0);
signal Test_Byte_i              : std_logic_vector(7 downto 0); 
signal Lockout_Edge_i           : std_logic_vector(7 downto 0);
signal Seconds_TestData_i       : std_logic_vector(7 downto 0);
signal Minutes_TestData_i       : std_logic_vector(7 downto 0);
signal Hours_TestData_i         : std_logic_vector(7 downto 0);
signal Day_TestData_i           : std_logic_vector(7 downto 0);
signal Date_TestData_i          : std_logic_vector(7 downto 0);
signal Month_TestData_i         : std_logic_vector(7 downto 0);
signal Year_TestData_i          : std_logic_vector(7 downto 0);
signal Month_Century_TestData_i : std_logic_vector(7 downto 0);
-------------------------------------------------------------------------------
-- New Code Signal and Components
------------------------------------------------------------------------------- 
signal RST_I_i            : std_logic;
signal CLK_I_i            : std_logic;

---------------------------------------
----------------------------------------
-- General Signals
-------------------------------------------------------------------------------
type I2C_Test_States is (Wait_Start, Config_State, Read_State);
type Test_I2C_Config_States is (StartEdge, StartFallingEdge, WriteData, RisingEdge, ReadData, FallingEdge, WriteAck, RisingEdgeAck, ReadAck,  
                              FallingEdgeAck, AckRisingEdge, WaitStop);
type Test_I2C_Read_States is (StartEdge, StartFallingEdge, WriteData, RisingEdge, ReadData, FallingEdge, WriteAck, RisingEdgeAck, ReadAck,  
                            FallingEdgeAck, AckRisingEdge, WaitStop, ReStartEdge,  StartFallingEdgeData_SA, WriteData_SA, RisingEdgeData_SA, Read_Slave_Data_SA, FallingEdgeData_SA, 
                            WriteAckData_SA, RisingEdgeAckData_SA, ReadAckData_SA, FallingEdgeAckData_SA, WriteData_Data, RisingEdgeData_Data, 
                            Read_Slave_Data_Data,  Test_Byte_Complete, FallingEdgeData_Data, WriteAckData_Data, RisingEdgeAckData_Data, ReadAckData_Data, FallingEdgeAckData_Data,
                            AckRisingEdgeData,WaitStopData);
signal I2C_Test_State           : I2C_Test_States;
signal Test_I2C_Config_State    : Test_I2C_Config_States;
signal Test_I2C_Read_State      : Test_I2C_Read_States;

-- signal TX_I2C_State  : TX_I2C_States;
-- signal Mux_State    : Mux_States;
signal  sClok,snrst,sStrobe,PWM_sStrobe,newClk,Clk : std_logic := '0';
signal  stx_data,srx_data : std_logic_vector(3 downto 0) := "0000";
signal  sCnt         : integer range 0 to 7 := 0;
signal  cont         : integer range 0 to 100;  
signal  oClk,OneuS_sStrobe, Quad_CHA_sStrobe, Quad_CHB_sStrobe,OnemS_sStrobe,cStrobe,Two_mS_sStrobe, 
          sStrobe_A,Five_mS_sStrobe, Ten_mS_sStrobe,Twenty_mS_sStrobe, Fifty_mS_sStrobe, Hun_mS_sStrobe : std_logic;

constant Baudrate : integer := 115200;
constant Cycle_time_4800      : time                         := 52.08*4 us;
constant Cycle_time_9600      : time                         := 52.08*2 us;    
constant Cycle_time_19200     : time                         := 52.08 us;
constant Cycle_time_57600     : time                         := 17.36 us;    
constant Cycle_time_115200    : time                         := 8.68 us;  
constant default_Cycle_time   : time                         := 52.08 us;  --19200  
constant start_Cycle          : std_logic := '0';
constant stop_Cycle           : std_logic := '1';
signal   Cycle_time           : time;

begin
 
 CLK_I_i         <= sClok;
 RST_I_i         <= snrst; 
-------------------------------------------------------------------------------
-- New test Code
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Leave in code
-------------------------------------------------------------------------------   
    T1: test_bench_T
     port map(
       oVec => stx_data,
       oClk => sClok,
       iVec => srx_data
       );
      
-------------------------------------------------------------------------------
-- RTC I2C Driver Instance
-------------------------------------------------------------------------------
Real_Time_Clock_I2C_Driver_1: entity work.Real_Time_Clock_I2C_Driver
  PORT map (
    clk       => CLK_I_i,                  --system clock
    reset_n   => RST_I_i,                  --active low reset
    ena       => Enable_i,                 --latch in command
    addr      => Address_i,                --address of target slave
    rw        => RnW_i,                    --'0' is write, '1' is read
    data_wr   => Data_WR_i,                --data to write to slave
    busy      => Busy_i,                   --indicates transaction in progress
    data_rd   => Data_RD_i,                --data read from slave
    ack_error => Ack_Error_i,              --flag if improper acknowledge from slave
    sda       => SDA_i,                    --serial data output of i2c bus
    scl       => SCL_i                     --serial clock output of i2c bus
    );    

-------------------------------------------------------------------------------
-- RTC I2C Handler Controller Instance
-------------------------------------------------------------------------------
Real_Time_Clock_I2C_Handler_1: entity work.Real_Time_Clock_I2C_Handler
  PORT map (
    CLK_I               => CLK_I_i,     
    RST_I               => RST_I_i,    
    Busy                => Busy_i,     
    data_read           => Data_RD_i,   
    ack_error           => Ack_Error_i, 
    initialation_Status => initialation_Status_i,
    Enable              => Enable_i,    
    Slave_Address_Out   => Address_i,   
    Slave_read_nWrite   => RnW_i,       
    Slave_Data_Out      => Data_WR_i,   
    Start               => Start_i,    
    Get_Sample          => Get_Sample_i,
    Sync                => Sync_i,
    Enable_in           => Enable_in_i,
    PPS_in              => PPS_in_i,
    Seconds_in          => Seconds_in_i,          
    Minutes_in          => Minutes_in_i,           
    Hours_in            => Hours_in_i,           
    Day_in              => Day_in_i,           
    Date_in             => Date_in_i, 
    Month_Century_in    => Month_Century_in_i,   
    Year_in             => Year_in_i, 
    Seconds_out         => Seconds_out_i,          
    Minutes_out         => Minutes_out_i,           
    Hours_out           => Hours_out_i,           
    Day_out             => Day_out_i,           
    Date_out            => Date_out_i,
    Month_Century_out   => Month_Century_out_i,    
    Year_out            => Year_out_i,   
    Ready               => Ready_i   
    );   
    
    
------------------------------------------------------
-- PushButton Instance
------------------------------------------------------
PushButton_Controller_1: entity work.PushButton_Controller
  port map(
    --General Signals
    CLK_I 	                => CLK_I_i,
    RST_I                   => RST_I_i,    
-- Push Button Inputs
    PushButton_Start        => PushButton_Start_i,
    PushButton_Stop         => PushButton_Stop_i,
    Initialization_Complete => initialation_Status_i,    
--  Push Button Outputs    
    Start                   => Start_i
    );


---------------------------------------------------------
-- RTC Mux Instace
--------------------------
RTC_Mux_1: entity work.Real_Time_Clock_Mux
  port map (
    Clk                  => CLK_I_i,
    RST_I                => RST_I_i,
    Busy                 => Busy_Mux_i,     
    Get_Sample           => Get_Sample_i, 
    Seconds              => Seconds_out_i, 
    Minutes              => Minutes_out_i, 
    Hours                => Hours_out_i,
    Day                  => Day_out_i, 
    Date                 => Date_out_i,
    Month_Century        => Month_Century_out_i, 
    Year                 => Year_out_i,
    Baud_Rate_Enable     => Baud_Rate_Enable_i,  
    initialation_Status  => initialation_Status_i,
    Ready_1              => Ready_i
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

Cycle_time <= Cycle_time_19200 when Baudrate = 19200 else Cycle_time_4800 when Baudrate = 4800 else
         Cycle_time_9600 when Baudrate = 9600 else Cycle_time_57600 when Baudrate = 57600 else
         Cycle_time_115200 when Baudrate = 115200 else default_Cycle_time;
              
data_test: process(CLK_I_i, RST_I_i)
    variable Stop_Cnt           : integer range 0 to 50;
    variable Cycle_Count        : integer range 0 to 10;
    variable Edge_Count         : integer range 0 to 5000;
    variable Assert_Data_Count  : integer range 0 to 100;
    variable OnemS_Count        : integer range 0 to 1002;
    variable Sample_Count       : integer range 0 to 1002;
    variable Latch_Sample_Count : integer range 0 to 1002;
begin
    if RST_I_i = '0' then
        Delay_Count               <= 0;
        Cycle_Count               := 0;   
        Assert_Data_Count         := 0;
        lockout_i                 <= '0';
        TestData_i                <= x"98";
        Seconds_TestData_i        <= x"00";
        Minutes_TestData_i        <= x"00";
        Hours_TestData_i          <= x"00";
        Day_TestData_i            <= x"00";
        Date_TestData_i           <= x"00";
        Month_Century_TestData_i  <= x"00";
        Year_TestData_i           <= x"00";
        PushButton_Start_i        <= '0';
        PushButton_Stop_i         <= '0';
        SDA_i                     <= 'Z';
        Int_SCL_i                 <= '0';
        Start_Detected            <= '0';
        Byte_Address              <= '0';
        busy_mux_lockout_i        <= '1';
        Test_Byte_i               <= X"00";
        OnemS_Count               := 0; 
        Sample_Count              := 0; 
        Latch_Sample_Count        := 0; 
    elsif (CLK_I_i'event and CLK_I_i = '1') then
        --if initialation_Status_i = '1' then 
        --    if Five_mS_sStrobe = '1' and lockout_i = '0' then   
        --        PushButton_Start_i       <= '1';
        --        PushButton_Stop_i        <= '0';
        --        lockout_i                <= '1';            
        --    elsif Five_mS_sStrobe = '1' and lockout_i = '1'   then                      
        --        PushButton_Start_i       <= '0';
        --        PushButton_Stop_i        <= '1';
        --        lockout_i                <= '0';            
        --    end if;
        --end if;
        
        if initialation_Status_i = '1' then 
            if Busy_i = '0' and Busy_Mux_i = '0' and busy_mux_lockout_i = '1' then   
                PushButton_Start_i  <= '1';
                PushButton_Stop_i   <= '0';
                lockout_i           <= '1';
                busy_mux_lockout_i  <= '0';
            elsif Busy_i = '1' and lockout_i = '1' then
                PushButton_Start_i  <= '0';
                PushButton_Stop_i   <= '1';
                lockout_i           <= '0';
            elsif Busy_Mux_i = '1' and busy_mux_lockout_i = '0' then                      
                busy_mux_lockout_i  <= '1';
            end if;
        end if;

        ----------------------------------
        -- Test No. of Samples in a Second
        ----------------------------------
        if OnemS_sStrobe = '1' then
            OnemS_Count := OnemS_Count + 1;
        end if;  
        
        if Get_Sample_i = '1' then
            Sample_Count := Sample_Count + 1;
        end if;
        
        if OnemS_Count = 1000 then
            Latch_Sample_Count  := Sample_Count;
        elsif OnemS_Count = 1001 then
            OnemS_Count   := 0;
            Sample_Count  := 0;
        end if;
        -----------------------------------------
        -- End of Test No. of Samples in a Second
        -----------------------------------------

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
             
        case I2C_Test_State is
            when Wait_Start =>
                if initialation_Status_i = '0' then
                    I2C_Test_State          <= Config_State;
                    Test_I2C_Config_State   <= StartEdge;
                elsif initialation_Status_i = '1' then 
                    I2C_Test_State          <= Read_State;
                end if;    
        
            when Config_State =>
                if initialation_Status_i = '0' then
                    I2C_Test_State  <= Config_State;
                elsif initialation_Status_i = '1' then 
                    I2C_Test_State  <= Read_State;
                end if;
                
                case Test_I2C_Config_State is
                    when StartEdge =>
                        if Int_SCL_i = '1'and SDA_i = '0' then  -- Start Condition
                            Start_Detected  <= '1';
                            Cycle_Count     := 8;  
                            Byte_Address    <= '1';
                            Byte_Count      <= 0;  
                            Test_I2C_Config_State  <= StartFallingEdge;
                        end if;
                        
                    when StartFallingEdge =>
                        
                        if Int_SCL_i = '0' then
                            if Start_Detected = '1' then
                                Delay_Count     <= 0;
                                Test_I2C_Config_State  <= WriteData;
                                Test_Byte_i     <= x"00";
                            end if;
                        else
                            Test_I2C_Config_State      <= StartFallingEdge;
                        end if;
                                            
                    when WriteData =>
                        if Delay_Count = 31 then
                            Test_I2C_Config_State  <= RisingEdge;
                        else
                            Delay_Count     <= Delay_Count + 1;
                        end if;
                        
                    when RisingEdge =>
                        if Int_SCL_i = '1' then
                            Delay_Count             <= 0;
                            Cycle_Count             := Cycle_Count - 1; 
                            Test_I2C_Config_State   <= ReadData;
                        else
                            Test_I2C_Config_State  <= RisingEdge;
                        end if;
                    
                    when ReadData =>
                        if Delay_Count = 31 then
                            Test_Byte_i(Cycle_Count)    <= Int_SDA_i;
                            Test_I2C_Config_State       <= FallingEdge;
                        else
                            Delay_Count                 <= Delay_Count + 1;
                            Test_I2C_Config_State       <= ReadData;
                        end if;    
                    
                    when FallingEdge =>
                        if Int_SCL_i = '0' then
                            if Cycle_Count = 0 then
                                Delay_Count             <= 0;
                                Cycle_Count             := 8; 
                                Test_I2C_Config_State   <= WriteAck;
                            else
                                Delay_Count             <= 0;
                                Test_I2C_Config_State   <= WriteData;
                            end if;
                        end if;    
                    
                    when WriteAck =>
                        if Delay_Count = 31 then
                            Test_I2C_Config_State  <= RisingEdgeAck;
                            Byte_Count      <= Byte_Count + 1;  
                         else              
                            Delay_Count     <= Delay_Count + 1; 
                            Test_I2C_Config_State  <= WriteAck;
                         end if;     
                            
                        when RisingEdgeAck => 
                            if Int_SCL_i = '1' then
                                Delay_Count     <= 0;
                                Test_I2C_Config_State  <= ReadAck;
                            else
                                Test_I2C_Config_State  <= RisingEdgeAck;
                            end if;
                        
                        when ReadAck =>
                            if Delay_Count = 31 then  
                                if Start_Detected = '1' then
                                    Test_I2C_Config_State  <= FallingEdgeAck;
                                else
                                    Test_I2C_Config_State  <= FallingEdgeAck;
                                end if;
                            else
                                Delay_Count     <= Delay_Count + 1;
                                Test_I2C_Config_State  <= ReadAck;
                            end if;
                        
                        when FallingEdgeAck =>       
                            if Int_SCL_i = '0' then
                                if Byte_Count = 3 then
                                    Byte_Count      <= 0; 
                                    Delay_Count     <= 0;
                                    Test_I2C_Config_State  <= AckRisingEdge;
                                else
                                    Delay_Count     <= 0;
                                    Test_I2C_Config_State  <= WriteData;
                                end if;   
                            end if;
                            
                        when AckRisingEdge =>    
                            if Int_SCL_i = '1' then
                                Test_I2C_Config_State  <= WaitStop;
                            end if;    

                        when WaitStop =>       
                            if Int_SCL_i = '1' and Int_SDA_i = '1' then
                                I2C_Test_State  <= Wait_Start;
                                
                            else
                                Test_I2C_Config_State  <= WaitStop;
                            end if;  
                end case;
                
                ----------------------------------------------
                ----- End of Config --------------------------
                ----------------------------------------------
                
                ----------------------------------------------
                ----- Start of Data --------------------------
                ----------------------------------------------
                
            when Read_State =>
                case Test_I2C_Read_State is
                    when StartEdge =>
                        if Int_SCL_i = '1'and SDA_i = '0' then -- Start Condition
                            Start_Detected  <= '1';
                            Cycle_Count     := 8;  
                            Byte_Address    <= '1';
                            Byte_Count      <= 0;  
                            Test_I2C_Read_State  <= StartFallingEdge;
                        end if;

                    when StartFallingEdge =>
                        if Int_SCL_i = '0' then
                            if Start_Detected = '1' then
                              Delay_Count               <= 0;
                              Test_I2C_Read_State       <= WriteData;
                                --Test_Byte_i         <= x"00";
                              Seconds_TestData_i        <= x"00";
                              Minutes_TestData_i        <= x"00";
                              Hours_TestData_i          <= x"00";
                              Day_TestData_i            <= x"00";
                              Day_TestData_i            <= x"00";
                              Date_TestData_i           <= x"00";
                              Month_Century_TestData_i  <= x"00";
                              Year_TestData_i           <= x"00";
                            end if;
                        elsif Busy_i = '0' then
                            Test_I2C_Read_State     <= StartEdge;
                        else
                            Test_I2C_Read_State     <= StartFallingEdge;
                        end if;

                    when WriteData =>
                        if Delay_Count = 31 then
                            Test_I2C_Read_State <= RisingEdge;
                        else
                            Delay_Count         <= Delay_Count + 1;
                        end if;

                    when RisingEdge =>
                        if Int_SCL_i = '1' then
                            Delay_Count         <= 0;
                            Cycle_Count         := Cycle_Count - 1; 
                            Test_I2C_Read_State <= ReadData;
                        else
                            Test_I2C_Read_State <= RisingEdge;
                        end if;
                                                
                    when ReadData =>     -- Read Slave Address 0xA6 Reagister Address 0x32
                        if Byte_Count >= 0 and Byte_Count < 3 then
                            if Delay_Count = 31 then
                                Test_Byte_i(Cycle_Count)    <= Int_SDA_i;  -- Data Address 0x32
                                Test_I2C_Read_State         <= FallingEdge;
                            else
                                Delay_Count                 <= Delay_Count + 1;
                                Test_I2C_Read_State         <= ReadData;
                            end if; 
                            if Byte_Count = 0 then
                                -- For RW bit
                                if SDA_i = '0' then
                                    report "Write Mode" severity note;
                                elsif SDA_i = '1' then
                                    report "Read Mode" severity note;
                                end if;
                            end if;
                        end if;    

                    when FallingEdge =>
                        if Int_SCL_i = '0' then
                            if Cycle_Count = 0 then
                                Delay_Count         <= 0;
                                Cycle_Count         := 8; 
                                Byte_Count          <= Byte_Count + 1; 
                                Test_I2C_Read_State <= WriteAck;
                            else
                                Delay_Count         <= 0;
                                Test_I2C_Read_State <= WriteData;
                            end if;
                        end if;                          

                    when WriteAck =>
                        if Delay_Count = 31 then
                            Delay_Count         <= 0;   
                            SDA_i               <= '0';     -- Assert ACK
                            Test_I2C_Read_State <= RisingEdgeAck;
                        else              
                            Delay_Count         <= Delay_Count + 1;   
                            Test_I2C_Read_State <= WriteAck;
                        end if;     

                    when RisingEdgeAck => 
                        if Int_SCL_i = '1' then
                            Delay_Count         <= 0;
                            Test_I2C_Read_State <= ReadAck;
                        else
                            Test_I2C_Read_State <= RisingEdgeAck;
                        end if;

                    when ReadAck =>
                        if Int_SCL_i = '0' then
                           Test_I2C_Read_State <= FallingEdgeAck;
                        end if;

                    when FallingEdgeAck =>       
                        if Int_SCL_i = '0' and Delay_Count = 31 then
                            SDA_i                   <= 'Z';     -- Clear ACK 
                            Delay_Count             <= 0;
                            if Byte_Count = 2 then
                                Test_I2C_Read_State <= AckRisingEdge;
                            else
                                Test_I2C_Read_State <= WriteData;
                            end if;
                        else
                            Delay_Count     <= Delay_Count + 1;
                        end if;   

                    when AckRisingEdge =>    
                        if Int_SCL_i = '1' then
                            Test_I2C_Read_State  <= WaitStop;
                        end if;    

                    when WaitStop =>       
                        if Int_SCL_i = '1' and Int_SDA_i = '1' then -- Stop Condition
                            Test_I2C_Read_State  <= ReStartEdge;
                        end if;
                        
                    when ReStartEdge =>
                        if Int_SCL_i = '1'and SDA_i = '0' then -- Start Condition
                            Start_Detected      <= '1';
                            Cycle_Count         := 8;  
                            Byte_Address        <= '1';
                            Byte_Count          <= 0;  
                            Test_I2C_Read_State <= StartFallingEdgeData_SA;
                        end if; 
                        
                    when StartFallingEdgeData_SA =>
                        if Int_SCL_i = '0' then
                            if Start_Detected = '1' then
                              Cycle_Count         := Cycle_Count - 1; 
                              Delay_Count         <= 0;
                              Test_I2C_Read_State <= WriteData_SA;
                                --Test_Byte_i         <= x"00";
                              Seconds_TestData_i        <= Seconds_TestData_i;
                              Minutes_TestData_i        <= Minutes_TestData_i;
                              Hours_TestData_i          <= Hours_TestData_i;
                              Day_TestData_i            <= Day_TestData_i;
                              Date_TestData_i           <= Date_TestData_i;
                              Month_Century_TestData_i  <= Month_Century_TestData_i;
                              Year_TestData_i           <= Year_TestData_i;
                            end if;
                        else
                            Test_I2C_Read_State      <= StartFallingEdgeData_SA;
                        end if;

                    when WriteData_SA =>
                        if Delay_Count = 31 then
                            Delay_Count              <= 0;
                            Test_Byte_i(Cycle_Count) <= Int_SDA_i;     -- Read SA 0xA7 
                            Test_I2C_Read_State      <= RisingEdgeData_SA;
                        else
                            Delay_Count             <= Delay_Count + 1;
                        end if;

                    when RisingEdgeData_SA =>
                        if Int_SCL_i = '1' then
                            Delay_Count         <= 0;
                            Test_I2C_Read_State <= Read_Slave_Data_SA;
                        else
                            Test_I2C_Read_State <= RisingEdgeData_SA;
                        end if;    
                        
                    when Read_Slave_Data_SA =>   -- Read Slave Address 0xA6 + RnW = 1 and 7 Bytes 0x98                           
                        if Delay_Count = 31 then
                            Test_Byte_i(Cycle_Count)    <= Int_SDA_i;  -- Read Slave Address 0xA6 + RnW = 1
                            Test_I2C_Read_State         <= FallingEdgeData_SA;
                            -- For RW bit monitoring
                            if RnW_i = '0' then
                                report "Write Mode" severity note;
                                report "Correct Mode" severity note;
                            elsif RnW_i = '1' then
                                report "Read Mode" severity note;
                                report "Incorrect Mode" severity note;
                            end if; 
                        else
                            Delay_Count     <= Delay_Count + 1;
                        end if;
                        
                    when FallingEdgeData_SA =>
                        if Int_SCL_i = '0' then
                            if Cycle_Count = 0 then
                                Delay_Count         <= 0;
                                Cycle_Count         := 8;
                                Byte_Count          <= Byte_Count + 1;
                                SDA_i               <= 'Z';         -- Release bus for master ack
                                Test_I2C_Read_State <= WriteAckData_SA;
                            else
                                Delay_Count         <= 0;
                                Cycle_Count         := Cycle_Count - 1; 
                                Test_I2C_Read_State <= WriteData_SA;
                            end if;
                        end if;  
                        
                    when WriteAckData_SA =>
                            if Delay_Count = 31 then
                                Delay_Count         <= 0;   
                                SDA_i               <= '0';     -- Assert Slave ACK
                                Test_I2C_Read_State <= RisingEdgeAckData_SA;
                            else              
                                Delay_Count         <= Delay_Count + 1;   
                                Test_I2C_Read_State <= WriteAckData_SA;
                            end if;  

                    when RisingEdgeAckData_SA => 
                        if Int_SCL_i = '1' then
                            Delay_Count         <= 0;
                            Test_I2C_Read_State <= ReadAckData_SA;
                        else
                            Test_I2C_Read_State <= RisingEdgeAckData_SA;
                        end if;

                    when ReadAckData_SA =>                      
                        if Delay_Count = 31 then 
                            Test_Byte_i         <= X"00";
                            Delay_Count         <= 0;
                            Test_I2C_Read_State <= FallingEdgeAckData_SA;
                        else
                            Delay_Count         <= Delay_Count + 1;
                            Test_I2C_Read_State <= ReadAckData_SA;
                        end if;

                    when FallingEdgeAckData_SA =>       
                        if Int_SCL_i = '0' then
                                Delay_Count         <= 0;
                                if Byte_Count > 8 then
                                    Byte_Count          <= 0; 
                                    Delay_Count         <= 0;
                                    Test_I2C_Read_State <= AckRisingEdgeData;
                                else
                                    Delay_Count         <= 0;
                                    Cycle_Count         := Cycle_Count - 1;
                                    Test_I2C_Read_State <= WriteData_Data;
                                end if;    
                            end if;
                            
                        when WriteData_Data =>
                            if Delay_Count = 31 then
                                Delay_Count          <= 0;
                                if Assert_Data_Count = 0 then
                                    SDA_i               <= Seconds_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 1 then    
                                    SDA_i               <= Minutes_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 2 then
                                    SDA_i               <= Hours_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 3 then
                                    SDA_i               <= Day_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 4 then
                                    SDA_i               <= Date_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 5 then
                                    SDA_i               <= Month_Century_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 6 then
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                    SDA_i               <= Year_TestData_i(Cycle_Count);
                                elsif Assert_Data_Count = 7 then
                                    Assert_Data_Count   := 0;
                                end if;    
                                -- SDA_i                <= TestData_i(Cycle_Count);     -- DeAssert ACK 
                                -- Test_I2C_Read_State  <= RisingEdgeData_Data;
                            else
                                Delay_Count          <= Delay_Count + 1;
                            end if;

                        when RisingEdgeData_Data =>
                            if Int_SCL_i = '1' then
                                Delay_Count         <= 0;
                                 
                                Test_I2C_Read_State <= Read_Slave_Data_Data;
                            else
                                Test_I2C_Read_State <= RisingEdgeData_Data;
                            end if;    

                        when Read_Slave_Data_Data =>   -- Read Slave Address 0xA6 + RnW = 1 and 7 Bytes 0x98                           
                            if Delay_Count = 31 then
                                Test_Byte_i(Cycle_Count)    <= Int_SDA_i;  -- Read Slave Address 0xA6 + RnW = 1
                                Test_I2C_Read_State         <= Test_Byte_Complete;
                                -- For RW bit monitoring
                                if RnW_i = '0' then
                                    report "Write Mode" severity note;
                                    report "Correct Mode" severity note;
                                elsif RnW_i = '1' then
                                    report "Read Mode" severity note;
                                    report "Incorrect Mode" severity note;
                                end if; 
                            else
                                Delay_Count     <= Delay_Count + 1;
                            end if;

                        when Test_Byte_Complete =>
                            Test_Byte_i(Cycle_Count)    <= Int_SDA_i;
                                if Byte_Count = 0 then
                                    Test_I2C_Read_State         <= FallingEdgeData_Data;
                                elsif Byte_Count > 0 and Byte_Count <= 8 then
                                       if Delay_Count = 31 then
                                           Test_Byte_i(Cycle_Count)    <= Int_SDA_i;
                                           Test_I2C_Read_State         <= FallingEdgeData_Data;
                                       else
                                           Delay_Count         <= Delay_Count + 1;
                                           Test_I2C_Read_State <= Read_Slave_Data_Data;
                                       end if; 
                                       -- For RW bit monitoring
                                       if RnW_i = '0' then
                                           report "Write Mode" severity note;
                                           report "Incorrect Mode" severity note;
                                       elsif RnW_i = '1' then
                                           report "Read Mode" severity note;
                                           report "Correct Mode" severity note;
                                       end if;
                                 else
                                       Test_I2C_Read_State     <= FallingEdgeData_Data;
                                 end if;  

                        when FallingEdgeData_Data =>
                            if Int_SCL_i = '0' then
                                if Cycle_Count = 0 then
                                    Delay_Count         <= 0;
                                    Cycle_Count         := 8;
                                    Assert_Data_Count   := Assert_Data_Count + 1;  -- Recently Added Delete if not Working
                                    Byte_Count          <= Byte_Count + 1;
                                    SDA_i               <= 'Z';         -- Release bus for master ack
                                    Test_I2C_Read_State <= WriteAckData_Data;
                                else
                                    Delay_Count         <= 0;
                                    Cycle_Count         := Cycle_Count - 1;
                                    Test_I2C_Read_State <= WriteData_Data;
                                end if;
                            end if;  

                        when WriteAckData_Data =>
                            if Byte_Count = 1 then
                                if Delay_Count = 31 then
                                    Delay_Count         <= 0;   
                                    SDA_i               <= '0';     -- Assert Slave ACK
                                    Test_I2C_Read_State <= RisingEdgeAckData_Data;
                                else              
                                    Delay_Count         <= Delay_Count + 1;   
                                    Test_I2C_Read_State <= WriteAckData_Data;
                                end if;  

                            elsif Byte_Count > 1 and Byte_Count <= 8 then
                                if Delay_Count = 31 then
                                    Delay_Count         <= 0;   
                                    Test_I2C_Read_State <= RisingEdgeAckData_Data;
                                else              
                                    Delay_Count         <= Delay_Count + 1;   
                                    Test_I2C_Read_State <= WriteAckData_Data;
                                end if; 
                            elsif Byte_Count > 8 then

                                if Delay_Count = 31 then
                                    Delay_Count         <= 0;   
                                    Test_I2C_Read_State <= RisingEdgeAckData_Data;
                                else              
                                    Delay_Count         <= Delay_Count + 1;   
                                    Test_I2C_Read_State <= WriteAckData_Data;
                                end if; 
                            end if;

                        when RisingEdgeAckData_Data => 
                            if Int_SCL_i = '1' then
                                Delay_Count         <= 0;
                                Test_I2C_Read_State <= ReadAckData_Data;
                            else
                                Test_I2C_Read_State <= RisingEdgeAckData_Data;
                            end if;

                        when ReadAckData_Data =>                      
                            if Delay_Count = 31 then 
                                Cycle_Count         := 7;
                                Delay_Count         <= 0;
                                Test_I2C_Read_State <= FallingEdgeAckData_Data;
                            else
                                Delay_Count             <= Delay_Count + 1;
                                Test_I2C_Read_State     <= ReadAckData_Data;
                            end if;

                        when FallingEdgeAckData_Data =>       
                            if Int_SCL_i = '0' then
                                Delay_Count         <= 0;
                                if Byte_Count > 8 then
                                    Byte_Count          <= 0; 
                                    Delay_Count         <= 0;
                                    Test_I2C_Read_State <= AckRisingEdgeData;
                                else
                                    Delay_Count         <= 0;
                                    Test_I2C_Read_State <= WriteData_Data;
                                end if;    
                            end if;        

                    when AckRisingEdgeData =>    
                        if Int_SCL_i = '1' then
                            Test_I2C_Read_State  <= WaitStopData;
                        end if;    

                    when WaitStopData =>       
                        if Int_SCL_i = '1' and Int_SDA_i = '1' then -- 1st Stop Condition
                            Test_I2C_Read_State  <= StartEdge;

                        end if;
                end case;
        end case;

    -- Seconds counter

    if OnemS_sStrobe = '1' then  
      Seconds_TestData_i  <= Seconds_TestData_i + '1';
    end if;

    if Seconds_TestData_i = x"3b" then
      Minutes_TestData_i <= Minutes_TestData_i + '1';
    end if;
        
  end if;
end process;      
        
        
   strobe: process
   begin
     sStrobe <= '0', '1' after 200 ns, '0' after 430 ns;  
     wait for 200 us;
   end process strobe;

   strobe_SPI: process
   begin
     sStrobe_A <= '0', '1' after 200 ns, '0' after 430 ns;  
     wait for 1 ms;
   end process strobe_SPI;
  
    uS_strobe: process
    begin
      OneuS_sStrobe <= '0', '1' after 1 us, '0' after 1.020 us;  
      wait for 1 us;
    end process uS_strobe;

    mS_strobe: process
    begin
      OnemS_sStrobe <= '0', '1' after 1 ms, '0' after 1.00002 ms;  
      wait for 1.0001 ms;
    end process mS_strobe;

  Ten_mS_strobe: process
    begin
      Ten_mS_sStrobe <= '0', '1' after 10 ms, '0' after 10.00002 ms;  
      wait for 10.0001 ms;
    end process Ten_mS_strobe;

  Twenty_mS_strobe: process
    begin
      Twenty_mS_sStrobe <= '0', '1' after 20 ms, '0' after 20.00002 ms;  
      wait for 20.0001 ms;
    end process Twenty_mS_strobe;

  Fifty_mS_strobe: process
    begin
      Fifty_mS_sStrobe <= '0', '1' after 50 ms, '0' after 50.00002 ms;  
      wait for 50.0001 ms;
    end process Fifty_mS_strobe;  

  Hun_mS_strobe: process
    begin
      Hun_mS_sStrobe <= '0', '1' after 100 ms, '0' after 100.00002 ms;  
      wait for 100.0001 ms;
    end process Hun_mS_strobe;   

 
  Gen_Clock: process
  begin
    newClk <= '0', '1' after 40 ns;
    wait for 80 ns;
  end process Gen_Clock;
  
  Do_reset: process(sClok)
  begin
    if (sClok'event and sClok='1') then 
      if sCnt = 7 then
        sCnt <= sCnt;
      else 
        sCnt <= sCnt + 1;

        case sCnt is
          when 0 => snrst <= '0';
          when 1 => snrst <= '0';
          when 2 => snrst <= '0';
          when 3 => snrst <= '0';
          when 4 => snrst <= '0';
          when others => snrst <= '1';
        end case;

      end if;
   
  end if;
  end process;

end Archtest_bench;
