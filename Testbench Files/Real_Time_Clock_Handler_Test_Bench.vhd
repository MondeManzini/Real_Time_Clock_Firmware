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
    use ieee.std_logic_unsigned.all;
    use std.textio.all;
    use work.txt_util.all;
    use work.Version_Ascii.all;

library modelsim_lib;
    use modelsim_lib.util.all;

entity Real_Time_Clock_Handler_Test_Bench is

end Real_Time_Clock_Handler_Test_Bench;

architecture Archtest_bench of Real_Time_Clock_Handler_Test_Bench is
	
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

signal Version_Register_i       : STD_LOGIC_VECTOR(199 downto 0);

-- Timestamp from Tcl Script
signal Version_Timestamp_i      : STD_LOGIC_VECTOR(111 downto 0);       -- 20181120105439
  
-- Firmware Module
constant APE_Test_System_FPGA_Firmware_name_i   : STD_LOGIC_VECTOR(23 downto 0) := x"524643";  -- Endat_FirmwareC

-- Version Major Number - Hardcoded
constant Version_Major_High_i   : STD_LOGIC_VECTOR(7 downto 0) := x"30";  -- 0x
constant Version_Major_Low_i    : STD_LOGIC_VECTOR(7 downto 0) := x"30";  -- x3

constant Dot_i                  : STD_LOGIC_VECTOR(7 downto 0) := x"2e";  -- .
-- Version Minor Number - Hardcoded
constant Version_Minor_High_i   : STD_LOGIC_VECTOR(7 downto 0) := x"32";  -- 0x
constant Version_Minor_Low_i    : STD_LOGIC_VECTOR(7 downto 0) := x"30";  -- x0
-- Null Termination
constant Null_i                 : STD_LOGIC_VECTOR(7 downto 0) := x"00";  -- termination



----------------------------------------------------------------------
-- RTC I2C Driver Component and Signals
----------------------------------------------------------------------
component I2C_Driver IS
  GENERIC(
    input_clk : INTEGER := 50_000_000;               --input clock speed from user logic in Hz
    bus_clk   : INTEGER := 400_000);   --speed the i2c bus (scl) will run at in Hz
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
END component I2C_Driver;

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
  Ready                : out std_logic;
  ----------------------------------------------------------------
  -- Memory Port
  ----------------------------------------------------------------
  -- Outputs for Mux
-- Outputs for Mux
    Seconds_out_mem            : out std_logic_vector(7 downto 0);
    Minutes_out_mem            : out std_logic_vector(7 downto 0);
    Hours_out_mem              : out std_logic_vector(7 downto 0);
    Day_out_mem                : out std_logic_vector(7 downto 0);
    Date_out_mem               : out std_logic_vector(7 downto 0);
    Month_Century_out_mem      : out std_logic_vector(7 downto 0);
    Year_out_mem               : out std_logic_vector(7 downto 0);
  Ready_mem                  : out std_logic
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
signal I2C_Busy_i               : std_logic;
signal Busy_i                 : std_logic;
signal Data_RD_i              : std_logic_vector(7 downto 0);
signal Start_i                : std_logic;
signal lockout_i              : std_logic;
signal initialation_Status_i  : std_logic;
signal TestData               : std_logic_vector(7 downto 0);

signal display_version_lock :STD_LOGIC;
signal Version_Register_std_logic : string(1 to 28);

----------------------------------------------------------------
-- Real Time Clock Mux Component and Signals
----------------------------------------------------------------
component Real_Time_Clock_I2C_Mux is 
    port(
    Clk                 : in  std_logic;
    RST_I               : in  std_logic;
    UART_TXD            : out std_logic;
    Busy                : out std_logic;
    Get_Sample          : out std_logic;
    Initialation_Status : in std_logic;
    Seconds             : in std_logic_vector(7 downto 0);  
    Minutes             : in std_logic_vector(7 downto 0);
    Hours               : in std_logic_vector(7 downto 0);
    Day                 : in std_logic_vector(7 downto 0);
    Date                : in std_logic_vector(7 downto 0);
    Month_Century       : in std_logic_vector(7 downto 0);
    Year                : in std_logic_vector(7 downto 0);
    Baud_Rate_Enable    : in std_logic;  
    Ready               : in std_logic
    );
end component;

----------------------------------------------------------------------
-- Baud Rate for Mux Signals and Component
----------------------------------------------------------------------
signal baud_rate_i                            : integer range 0 to 7;
signal Baud_Rate_Enable_i                     : std_logic;   

component Baud_Rate_Generator is
  port (
    Clk                                 : in  std_logic;
    RST_I                               : in  std_logic;
    baud_rate                           : in  integer range 0 to 7;
    Baud_Rate_Enable                    : out std_logic 
    );
end component Baud_Rate_Generator;

-------------------------------------------------------------------------------
-- New Code Signal and Components
------------------------------------------------------------------------------- 
signal RST_I_i                  : std_logic;
signal CLK_I_i                  : std_logic;
signal Time_Mux                 : std_logic;
signal Roach_Trigger            : std_logic; 

signal TestData_i                   : std_logic_vector(7 downto 0); 
signal Int_SCL_i                    : std_logic;
signal Int_SDA_i                    : std_logic;
signal Start_Detected               : std_logic; 
signal Byte_Address                 : std_logic; 
signal busy_mux_lockout_i           : std_logic; 
signal Delay_Count                  : integer range 0 to 126;
signal Byte_Count                   : integer range 0 to 15;
signal Record_Slave_Address         : std_logic_vector(6 downto 0);
signal Test_Byte_i                  : std_logic_vector(7 downto 0); 
signal Lockout_Edge_i               : std_logic_vector(7 downto 0);
signal Seconds_TestData_i           : std_logic_vector(7 downto 0);
signal Minutes_TestData_i           : std_logic_vector(7 downto 0);
signal Hours_TestData_i             : std_logic_vector(7 downto 0);
signal Days_TestData_i              : std_logic_vector(7 downto 0);
signal Dates_TestData_i             : std_logic_vector(7 downto 0);
signal Years_TestData_i             : std_logic_vector(7 downto 0);
signal Months_Century_TestData_i    : std_logic_vector(7 downto 0);
signal Seconds_TestData_int         : integer range 0 to 60;
signal Minutes_TestData_int         : integer range 0 to 60;
signal Hours_TestData_int           : integer range 0 to 24;
signal Days_TestData_int            : integer range 0 to 31;
signal Months_Century_TestData_int  : integer range 0 to 12;
signal Real_Time_Clock_Ready_i      : std_logic;
signal Seconds_out_mem_i            : std_logic_vector(7 downto 0) := X"00";         
signal Minutes_out_mem_i            : std_logic_vector(7 downto 0) := X"00";     
signal Hours_out_mem_i              : std_logic_vector(7 downto 0) := X"00";
signal Day_out_mem_i                : std_logic_vector(7 downto 0) := X"00";         
signal Date_out_mem_i               : std_logic_vector(7 downto 0) := X"00";     
signal Month_Century_out_mem_i      : std_logic_vector(7 downto 0) := X"00";
signal Year_out_mem_i               : std_logic_vector(7 downto 0) := X"00";

type memory_array is array (0 to 255) of std_logic_vector(7 downto 0);
signal data2store                   : memory_array;

----------------------------------------
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
type Real_Time_Counters_States is (Idle, mS_counter, Min_counter, Hrs_counter, Days_counter, Mon_Cen_counter, Years_counter);
signal I2C_Test_State           : I2C_Test_States;
signal Test_I2C_Config_State    : Test_I2C_Config_States;
signal Test_I2C_Read_State      : Test_I2C_Read_States;
signal Real_Time_Counters_State : Real_Time_Counters_States;  

signal  sClok,snrst,sStrobe,PWM_sStrobe,newClk,Clk : std_logic := '0';
signal  stx_data,srx_data : std_logic_vector(3 downto 0) := "0000";
signal  sCnt         : integer range 0 to 7 := 0;
signal  cont         : integer range 0 to 100;  
signal  oClk,OneuS_sStrobe, Quad_CHA_sStrobe, Quad_CHB_sStrobe,OnemS_sStrobe,cStrobe,sStrobe_A,Ten_mS_sStrobe,Twenty_mS_sStrobe, Fifty_mS_sStrobe, Hun_mS_sStrobe, Sec_sStrobe : std_logic;

constant Baudrate : integer := 115200;
constant bit_time_4800      : time                         := 52.08*4 us;
constant bit_time_9600      : time                         := 52.08*2 us;    
constant bit_time_19200     : time                         := 52.08 us;
constant bit_time_57600     : time                         := 17.36 us;    
constant bit_time_115200    : time                         := 8.68 us;  
constant default_bit_time   : time                         := 52.08 us;  --19200  
constant start_bit          : std_logic := '0';
constant stop_bit           : std_logic := '1';
signal   bit_time           : time;

signal Seconds_out_mem_hi_i            : std_logic_vector(7 downto 0);
signal Seconds_out_mem_lo_i            : std_logic_vector(7 downto 0);
signal Minutes_out_mem_hi_i            : std_logic_vector(7 downto 0);
signal Minutes_out_mem_lo_i            : std_logic_vector(7 downto 0);
signal Hours_out_mem_hi_i              : std_logic_vector(7 downto 0);
signal Hours_out_mem_lo_i              : std_logic_vector(7 downto 0);
signal Day_out_mem_hi_i                : std_logic_vector(7 downto 0);
signal Day_out_mem_lo_i                : std_logic_vector(7 downto 0);
signal Date_out_mem_hi_i               : std_logic_vector(7 downto 0);
signal Date_out_mem_lo_i               : std_logic_vector(7 downto 0);
signal Month_Century_out_mem_hi_i      : std_logic_vector(7 downto 0);
signal Month_Century_out_mem_lo_i      : std_logic_vector(7 downto 0);
signal Year_out_mem_hi_i               : std_logic_vector(7 downto 0);
signal Year_out_mem_lo_i               : std_logic_vector(7 downto 0);
signal Ready_mem_i                     : std_logic;
signal Get_RTC_i                       : std_logic;

-- Build State
-- Good Build State 
------------------------------------------
-- Messages following the software scripts 
------------------------------------------

                                                                                                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------------------
  -- 
--------------------------------------------------------------------------------------------------------------------------------------------------------
begin
      
 RST_I_i            <= snrst;
 CLK_I_i            <= sClok;
    
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
Real_Time_Clock_I2C_Driver_1: entity work.I2C_Driver
  PORT map (
    clk       => CLK_I_i,                  --system clock
    reset_n   => RST_I_i,                  --active low reset
    ena       => Enable_i,                 --latch in command
    addr      => Address_i,                --address of target slave
    rw        => RnW_i,                    --'0' is write, '1' is read
    data_wr   => Data_WR_i,                --data to write to slave
    busy      => I2C_Busy_i,                   --indicates transaction in progress
    data_rd   => Data_RD_i,                --data read from slave
    ack_error => Ack_Error_i,              --flag if improper acknowledge from slave
    sda       => SDA_i,                    --serial data output of i2c bus
    scl       => SCL_i                    -- serial clock output of i2c bus
    );    

-------------------------------------------------------------------------------
-- RTC I2C Handler Controller Instance
-------------------------------------------------------------------------------
Real_Time_Clock_Handler_1: entity work.Real_Time_Clock_I2C_Handler
PORT map (
  CLK_I                       => CLK_I_i,     
  RST_I                       => RST_I_i,    
  Busy                        => I2C_Busy_i,     
  data_read                   => Data_RD_i,   
  ack_error                   => Ack_Error_i, 
  initialation_Status         => initialation_Status_i,
  Enable                      => Enable_i,    
  Slave_Address_Out           => Address_i,   
  Slave_read_nWrite           => RnW_i,       
  Slave_Data_Out              => Data_WR_i,   
  Get_Sample                  => Get_RTC_i,
  PPS_in                      => PPS_in_i,
  Seconds_in                  => Seconds_in_i,          
  Minutes_in                  => Minutes_in_i,           
  Hours_in                    => Hours_in_i,           
  Day_in                      => Day_in_i,           
  Date_in                     => Date_in_i, 
  Month_Century_in            => Month_Century_in_i,   
  Year_in                     => Year_in_i, 
  Seconds_out                 => Seconds_out_i,          
  Minutes_out                 => Minutes_out_i,           
  Hours_out                   => Hours_out_i,           
  Day_out                     => Day_out_i,           
  Date_out                    => Date_out_i,
  Month_Century_out           => Month_Century_out_i,    
  Year_out                    => Year_out_i,   
  Ready                       => Real_Time_Clock_Ready_i,
  Seconds_out_mem             => Seconds_out_mem_i,
  Minutes_out_mem             => Minutes_out_mem_i,
  Hours_out_mem               => Hours_out_mem_i,
  Day_out_mem                 => Day_out_mem_i,
  Date_out_mem                => Date_out_mem_i,
  Month_Century_out_mem       => Month_Century_out_mem_i,
  Year_out_mem                => Year_out_mem_i,
  Ready_mem                   => Ready_mem_i  
  );  

------------------------------------------------------
-- RTC Mux Instance
------------------------------------------------------   
Real_Time_Clock_Mux_1: entity work.Real_Time_Clock_Mux
  PORT map (
    Clk                         => CLK_I_i,     
    RST_I                       => RST_I_i,    
    Busy                        => Busy_i,     
    initialation_Status         => initialation_Status_i,
    Get_Sample                  => Get_RTC_i,
    Seconds                     => Seconds_out_i,          
    Minutes                     => Minutes_out_i,           
    Hours                       => Hours_out_i,           
    Day                         => Day_out_i,           
    Date                        => Date_out_i,
    Month_Century               => Month_Century_out_i,    
    Year                        => Year_out_i,   
    Baud_Rate_Enable            => Baud_Rate_Enable_i,
    Ready                       => Real_Time_Clock_Ready_i  
    ); 

------------------------------------------------------
-- Baud Rate Generator Instance
------------------------------------------------------  
Baud_Rate_Generator_1: entity work.Baud_Rate_Generator
port map (
  Clk                                 => CLK_I_i,
  RST_I                               => RST_I_i,
  baud_rate                           => 5,
  Baud_Rate_Enable                    => Baud_Rate_Enable_i
  );

------------------------------------------------------
-- I2C Test for Real Time Clock
------------------------------------------------------
i2c_data_test: process(CLK_I_i, RST_I_i)
    variable Stop_Cnt           : integer range 0 to 50;
    variable Cycle_Count        : integer range 0 to 10;
    variable Edge_Count         : integer range 0 to 5000;
    variable Assert_Data_Count  : integer range 0 to 100;
    variable OnemS_Count        : integer range 0 to 1002;
    variable Sample_Count       : integer range 0 to 1002;
    variable Latch_Sample_Count : integer range 0 to 1002;
    variable bus_clk_test       : integer range 0 to 400_000;
    variable v_TIME             : time := 0 ns;
    variable vee_TIME           : time := 0 ns;

begin
    if RST_I_i = '0' then
        -- bus_clk_test              := 400_000; -- Hz - mus be added to memory                      
        Delay_Count               <= 0;
        Cycle_Count               := 0;   
        Assert_Data_Count         := 0;
        lockout_i                 <= '0';
        TestData_i                <= x"00";
        Seconds_TestData_i        <= x"00";
        Minutes_TestData_i        <= x"00";
        Hours_TestData_i          <= x"00";
        Days_TestData_i           <= x"00";
        Dates_TestData_i          <= x"00";
        Months_Century_TestData_i <= x"00";
        Years_TestData_i          <= x"00";
        SDA_i                     <= 'Z';
        Int_SCL_i                 <= '0';
        Start_Detected            <= '0';
        Byte_Address              <= '0';
        busy_mux_lockout_i        <= '1';
        Test_Byte_i               <= X"68";
        OnemS_Count               := 0; 
        Sample_Count              := 0; 
        Latch_Sample_Count        := 0; 
        PPS_In_i                  <= '0';
        data2store                <= (others => (others => '0'));
    elsif (CLK_I_i'event and CLK_I_i = '1') then

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
        -----------------------------------------
        -- Slave and Test Clock Matching
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
        -------------------------------------------
        ---- Slave Select - RTC or Memory
        -------------------------------------------
        --if Slave_Address_Out = "1101000" then

        --elsif Slave_Address_Out = "1010000" then

        --end if;

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
                        if Int_SCL_i = '1'and Int_SDA_i = '0' then  -- Start Condition
                            Start_Detected          <= '1';
                            Cycle_Count             := 8;  
                            Byte_Address            <= '1';
                            Byte_Count              <= 0;  
                            Test_I2C_Config_State   <= StartFallingEdge;
                        end if;
                        
                    when StartFallingEdge =>
                        
                        if Int_SCL_i = '0' then
                            if Start_Detected = '1' then
                                Delay_Count             <= 0;
                                Test_I2C_Config_State   <= WriteData;
                                Test_Byte_i             <= X"00";
                            end if;
                        else
                            Test_I2C_Config_State       <= StartFallingEdge;
                        end if;
                                            
                    when WriteData =>
                        if Delay_Count = 31 then
                            Test_I2C_Config_State    <= RisingEdge;
                        else
                            Delay_Count             <= Delay_Count + 1;
                        end if;
                        
                    when RisingEdge =>
                        if Int_SCL_i = '1' then
                            Delay_Count             <= 0;
                            Cycle_Count             := Cycle_Count - 1; 
                            Test_I2C_Config_State   <= ReadData;
                        else
                            Test_I2C_Config_State   <= RisingEdge;
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
                            Test_I2C_Config_State   <= RisingEdgeAck;
                            Byte_Count              <= Byte_Count + 1;  -- First Byte
                         else              
                            Delay_Count             <= Delay_Count + 1; 
                            Test_I2C_Config_State   <= WriteAck;
                         end if;     
                            
                    when RisingEdgeAck => 
                        if Int_SCL_i = '1' then
                            Delay_Count             <= 0;
                            Test_I2C_Config_State   <= ReadAck;
                        else
                            Test_I2C_Config_State   <= RisingEdgeAck;
                        end if;
                        
                    when ReadAck =>
                        if Delay_Count = 31 then  
                            if Start_Detected = '1' then
                                Test_I2C_Config_State  <= FallingEdgeAck;
                            else
                                Test_I2C_Config_State  <= FallingEdgeAck;
                            end if;
                        else
                            Delay_Count             <= Delay_Count + 1;
                            Test_I2C_Config_State   <= ReadAck;
                        end if;
                        
                    when FallingEdgeAck =>       
                        if Int_SCL_i = '0' then
                            if Byte_Count = 1 then
                                Byte_Count              <= 0; 
                                Delay_Count             <= 0;
                                Test_I2C_Config_State   <= AckRisingEdge;
                            else
                                Delay_Count             <= 0;
                                Test_I2C_Config_State   <= WriteData;
                            end if;   
                        end if;
                            
                    when AckRisingEdge =>    
                        if Int_SCL_i = '1' then
                            Test_I2C_Config_State  <= WaitStop;
                        end if;    

                    when WaitStop =>       
                        if Int_SCL_i = '1' and Int_SDA_i = '1' then     -- Stop condition
                            I2C_Test_State          <= Wait_Start;
                        else
                            Test_I2C_Config_State   <= WaitStop;
                        end if;  
                end case;
                
                ----------------------------------------------
                ----- End of Config --------------------------
                ----------------------------------------------
                
                ---------------------------------------------------
                ----- Start of Read Data --------------------------
                ---------------------------------------------------
                
            when Read_State =>
                case Test_I2C_Read_State is
                    when StartEdge =>
                        if Int_SCL_i = '1'and SDA_i = '0' then -- Start Condition
                            Start_Detected      <= '1';
                            Cycle_Count         := 8;  
                            Byte_Address        <= '1';
                            Byte_Count          <= 0;  
                            Test_I2C_Read_State <= StartFallingEdge;
                        end if;

                    when StartFallingEdge =>
                        if Int_SCL_i = '0' then
                            if Start_Detected = '1' then
                              Delay_Count           <= 0;
                              Test_I2C_Read_State   <= WriteData;
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
                                                
                    when ReadData =>     -- Read Slave Address 0xd0 Register Address 0x
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
                        
                    -------------------------------------------
                    -- ReStart Condition
                    -------------------------------------------

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
                              --Seconds_TestData_i        <= Seconds_TestData_i;
                              --Minutes_TestData_i        <= Minutes_TestData_i;
                              --Hours_TestData_i          <= Hours_TestData_i;
                              --Days_TestData_i           <= Days_TestData_i;
                              --Dates_TestData_i          <= Dates_TestData_i;
                              --Months_Century_TestData_i <= Months_Century_TestData_i;
                              --Years_TestData_i          <= Years_TestData_i;
                            end if;
                        else
                            Test_I2C_Read_State      <= StartFallingEdgeData_SA;
                        end if;

                    when WriteData_SA =>
                        if Delay_Count = 31 then
                            Delay_Count                 <= 0;
                            Test_Byte_i(Cycle_Count)    <= Int_SDA_i;       -- Read Slave Address 0xd1 
                            Test_I2C_Read_State         <= RisingEdgeData_SA;
                        else
                            Delay_Count                 <= Delay_Count + 1;
                        end if;

                    when RisingEdgeData_SA =>
                        if Int_SCL_i = '1' then
                            Delay_Count         <= 0;
                            Test_I2C_Read_State <= Read_Slave_Data_SA;
                        else
                            Test_I2C_Read_State <= RisingEdgeData_SA;
                        end if;    
                        
                    when Read_Slave_Data_SA =>   -- Read Slave Address 0xd1 + RnW = 1 and 7 Bytes 0x                           
                        if Delay_Count = 31 then
                            Test_Byte_i(Cycle_Count)    <= Int_SDA_i;  -- Read Slave Address 0xd1 + RnW = 1
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
                            Delay_Count         <= 0;
                            Test_I2C_Read_State <= FallingEdgeAckData_SA;
                        else
                            Delay_Count         <= Delay_Count + 1;
                            Test_I2C_Read_State <= ReadAckData_SA;
                        end if;

                    when FallingEdgeAckData_SA =>       
                        if Int_SCL_i = '0' then
                            Delay_Count         <= 0;
                            if Byte_Count > 7 then
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
                                    SDA_i               <= Days_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 4 then
                                    SDA_i               <= Dates_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 5 then
                                    SDA_i               <= Months_Century_TestData_i(Cycle_Count);
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                elsif Assert_Data_Count = 6 then
                                    Test_I2C_Read_State <= RisingEdgeData_Data;
                                    SDA_i               <= Years_TestData_i(Cycle_Count);
                                elsif Assert_Data_Count = 7 then
                                    Assert_Data_Count   := 0;
                                end if;    
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
                                Test_Byte_i(Cycle_Count)    <= Int_SDA_i;  -- Read Slave Address 0xd0 + RnW = 1
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
                                Test_I2C_Read_State     <= FallingEdgeData_Data;
                            elsif Byte_Count > 0 and Byte_Count <= 7 then
                                if Delay_Count = 31 then
                                    Test_Byte_i(Cycle_Count)    <= Int_SDA_i;
                                    Test_I2C_Read_State         <= FallingEdgeData_Data;
                                else
                                    Delay_Count                 <= Delay_Count + 1;
                                    Test_I2C_Read_State         <= Read_Slave_Data_Data;
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
                                if Byte_Count > 7 then
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

        -------------------------------
        -- Real Time Counters
        -------------------------------
        Seconds_TestData_int        <= conv_integer(Seconds_TestData_i);                
        Minutes_TestData_int        <= conv_integer(Minutes_TestData_i);
        Hours_TestData_int          <= conv_integer(Hours_TestData_i);
        Days_TestData_int           <= conv_integer(Days_TestData_i);
        Months_Century_TestData_int <= conv_integer(Months_Century_TestData_i);

        case Real_Time_Counters_State is 

            when mS_counter =>
                -- Seconds counter
                if OnemS_sStrobe = '1' then
                    if Seconds_TestData_i = x"1d" then
                        Real_Time_Counters_State    <= Min_counter;
                        Seconds_TestData_i          <= x"00";
                    else
                        Seconds_TestData_i          <= Seconds_TestData_i + '1';
                    end if; 
                end if;
                
            when Min_counter =>
                -- Minutes counter
                if Minutes_TestData_i = x"03" then      -- 60 ms = 60 secs for simulation purposes
                    Real_Time_Counters_State    <= Hrs_counter;
                    Minutes_TestData_i          <= x"00";  
                else
                    Minutes_TestData_i          <= Minutes_TestData_i + '1';
                    Real_Time_Counters_State    <= mS_counter;
                end if;

            when Hrs_counter =>
                -- Hours counter
                if Hours_TestData_i = x"06" then    -- 06 mns = 1 hrs for simulation purposes
                    Real_Time_Counters_State    <= Days_counter;
                    Hours_TestData_i            <= x"00";
                else
                    Hours_TestData_i            <= Hours_TestData_i + '1';
                    Real_Time_Counters_State    <= Min_counter;
                end if;

            when Days_counter =>
                -- Days counter
                if Days_TestData_i = x"1e" then  
                    Real_Time_Counters_State    <= Mon_Cen_counter;
                    Days_TestData_i             <= x"00";
                else
                    Days_TestData_i             <= Days_TestData_i + '1';
                    Real_Time_Counters_State    <= Hrs_counter;
                end if;

            when Mon_Cen_counter =>    
                -- Months counter
                if Months_Century_TestData_i = x"0c" then
                    Real_Time_Counters_State    <= Years_counter;
                    Months_Century_TestData_i   <= x"00";
                else
                    Months_Century_TestData_i   <= Months_Century_TestData_i + '1';
                    Real_Time_Counters_State    <= Days_counter;
                end if;

            when Years_counter =>
                -- Months counter
                Years_TestData_i   <= Years_TestData_i + '1';
                Real_Time_Counters_State    <= Idle;

            when Idle =>
                Seconds_TestData_i          <= x"00";
                Minutes_TestData_i          <= x"00";
                Hours_TestData_i            <= x"00";
                Days_TestData_i             <= x"00";
                Months_Century_TestData_i   <= x"00";
                Years_TestData_i            <= x"00";
                Real_Time_Counters_State    <= mS_counter;
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

    Sec_strobe: process
    begin
      Sec_sStrobe <= '0', '1' after 1000 ms, '0' after 1000.00002 ms;  
      wait for 1000.0001 ms;
    end process Sec_strobe;    
 
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
