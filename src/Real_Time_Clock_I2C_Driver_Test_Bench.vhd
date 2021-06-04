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

entity Maser_i2c_ADXL345_Test_Bench is

end Maser_i2c_ADXL345_Test_Bench;

architecture Archtest_bench of Maser_i2c_ADXL345_Test_Bench is
	
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
-- Maser i2c ADXL345 Test Bench Component and Signals
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

signal Enable_i      : std_logic;
signal Address_i     : std_logic_vector(6 downto 0);
signal RnW_i         : std_logic;
signal Data_WR_i     : std_logic_vector(7 downto 0);
signal Busy_i        : std_logic;
signal Data_RD_i     : std_logic_vector(7 downto 0);  
signal Ack_Error_i   : std_logic;
signal SDA_i         : std_logic;
signal SCL_i         : std_logic;  
signal lock_Out_i    : std_logic;
signal lock_Out2_i    : std_logic;
-------------------------------------------------------------------------------
-- New Code Signal and Components
------------------------------------------------------------------------------- 
signal RST_I_i                  : std_logic;
signal CLK_I_i                  : std_logic;

---------------------------------------
----------------------------------------
-- General Signals
-------------------------------------------------------------------------------
type TX_I2C_States is (Idle, Write_SlaveAddress, WaitnBusy, WriteData);
--type Mux_States is (Idle, Load_Data, Send_Data, Stop_Stream);

signal TX_I2C_State  : TX_I2C_States;
--signal Mux_State    : Mux_States;

signal  sClok,snrst,sStrobe,PWM_sStrobe,newClk,Clk : std_logic := '0';
  signal  stx_data,srx_data : std_logic_vector(3 downto 0) := "0000";
  signal  sCnt         : integer range 0 to 7 := 0;
  signal  cont         : integer range 0 to 100;  
  signal  oClk,OneuS_sStrobe, Quad_CHA_sStrobe, Quad_CHB_sStrobe,OnemS_sStrobe,cStrobe,sStrobe_A,Ten_mS_sStrobe,Twenty_mS_sStrobe, Fifty_mS_sStrobe, Hun_mS_sStrobe : std_logic;

--  constant Baudrate : integer := 115200;
--  constant bit_time_4800      : time                         := 52.08*4 us;
--  constant bit_time_9600      : time                         := 52.08*2 us;    
--  constant bit_time_19200     : time                         := 52.08 us;
--  constant bit_time_57600     : time                         := 17.36 us;    
--  constant bit_time_115200    : time                         := 8.68 us;  
--  constant default_bit_time   : time                         := 52.08 us;  --19200  
--  constant start_bit          : std_logic := '0';
--  constant stop_bit           : std_logic := '1';
--  signal   bit_time           : time;
                                                                                                                                    
begin
      
 RST_I_i         <= snrst;
 CLK_I_i         <= sClok;
 
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
-- Main Mux ADXL345 Instance
-------------------------------------------------------------------------------
i2c_master_1: entity work.i2c_master

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

              
data_test: process(CLK_I_i, RST_I_i)
--  variable Config_Count       : integer range 0 to 50;
  variable Count              : integer range 0 to 150
  ;

begin
    if RST_I_i = '0' then
       Count        := 0;
       Address_i    <= "0000000";
       RnW_i        <= '0';
       lock_Out_i   <= '0';
       TX_I2C_State <= Idle;
    elsif (CLK_I_i'event and CLK_I_i = '1') then
            
             
             
             Case TX_I2C_State is
                when Idle =>                              
                    if Busy_i = '0' then
                       Address_i            <= "1010011"; --     
                       RnW_i                <= '0';   
                       Data_WR_i            <= X"2D";  
                       Enable_i             <= '1';
                       TX_I2C_State         <= Write_SlaveAddress;
                    end if;
                    
                when Write_SlaveAddress =>                       
                    if Busy_i = '1' and Count = 100 then     
                       Address_i            <= "1010011"; --     
                       RnW_i                <= '0';   
                       Data_WR_i            <= X"83";
                       Count                := 0;
                       TX_I2C_State         <= WaitnBusy;
                    elsif Busy_i = '1' and Count < 100 then
                          Count := Count +1;                     
                    end if;
                    
                when WaitnBusy =>
                     if Busy_i = '0' then
                        TX_I2C_State         <= WriteData;
                        end if;
                        
                when WriteData =>                       
                    if Busy_i = '1'  then     
                       Enable_i             <= '0';
                       TX_I2C_State         <= WriteData;                     
                    end if;    
                 end case;   
             
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
