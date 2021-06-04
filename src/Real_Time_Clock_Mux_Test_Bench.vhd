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

entity Maser_Mux_ADXL345_Test_Bench is

end Maser_Mux_ADXL345_Test_Bench;

architecture Archtest_bench of Maser_Mux_ADXL345_Test_Bench is
	
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
-- Maser Mux ADXL345 Test Bench Component and Signals
----------------------------------------------------------------------
component Maser_Mux_ADXL345 is
  port (
      Clk                  : in  std_logic;
      RST_I                : in  std_logic;
      UART_TXD             : out std_logic;
      ADXL345_X_1          : in std_logic_vector(15 downto 0);  
      ADXL345_Y_1          : in std_logic_vector(15 downto 0);
      ADXL345_Z_1          : in std_logic_vector(15 downto 0);
      Fifo_CTL_1           : in std_logic_vector(7 downto 0);
      Fifo_Status_1        : in std_logic_vector(7 downto 0);
      Baud_Rate_Enable     : in std_logic;  
      Ready_1              : in std_logic
    );
end component Maser_Mux_ADXL345;

signal UART_TXD_i    : std_logic;
signal ADXL345_X_1_i : std_logic_vector(15 downto 0);  
signal ADXL345_Y_1_i : std_logic_vector(15 downto 0);
signal ADXL345_Z_1_i : std_logic_vector(15 downto 0);
signal ADXL345_X_2_i : std_logic_vector(15 downto 0);  
signal ADXL345_Y_2_i : std_logic_vector(15 downto 0);
signal ADXL345_Z_2_i : std_logic_vector(15 downto 0);
signal ADXL345_X_3_i : std_logic_vector(15 downto 0);  
signal ADXL345_Y_3_i : std_logic_vector(15 downto 0);
signal ADXL345_Z_3_i : std_logic_vector(15 downto 0);
signal ADXL345_X_4_i : std_logic_vector(15 downto 0);  
signal ADXL345_Y_4_i : std_logic_vector(15 downto 0);
signal ADXL345_Z_4_i : std_logic_vector(15 downto 0);
signal Ready_1_i     : std_logic;
signal Ready_2_i     : std_logic;
signal Ready_3_i     : std_logic;
signal Ready_4_i     : std_logic;
signal Fifo_CTL_1_i  : std_logic_vector(7 downto 0);
signal Fifo_Status_1_i  : std_logic_vector(7 downto 0);

component Baud_Rate_Generator is
    port (
        Clk              : in  std_logic;
        RST_I            : in  std_logic;
        baud_rate        : in  integer range 0 to 7;
        Baud_Rate_Enable : out std_logic
    );
end component Baud_Rate_Generator;

signal Baud_Rate_Enable_i : std_logic;
signal Run_i              : std_logic;
signal Key_Start_i        : std_logic;
signal Key_Stop_i         : std_logic;
signal Stop_i             : std_logic;
signal Lockout_i          : std_logic;
-------------------------------------------------------------------------------
-- New Code Signal and Components
------------------------------------------------------------------------------- 
signal RST_I_i                  : std_logic;
signal CLK_I_i                  : std_logic;

---------------------------------------
----------------------------------------
-- General Signals
-------------------------------------------------------------------------------
type Push_Buttons is (Idle, Set_Run, Wait_Run, Set_Stop, End_Stop);
type Mux_States is (Idle, Load_Data, Send_Data, Stop_Stream);

signal Push_Button  : Push_Buttons;
signal Mux_State    : Mux_States;

signal  sClok,snrst,sStrobe,PWM_sStrobe,newClk,Clk : std_logic := '0';
  signal  stx_data,srx_data : std_logic_vector(3 downto 0) := "0000";
  signal  sCnt         : integer range 0 to 7 := 0;
  signal  cont         : integer range 0 to 100;  
  signal  oClk,OneuS_sStrobe, Quad_CHA_sStrobe, Quad_CHB_sStrobe,OnemS_sStrobe,cStrobe,sStrobe_A,Ten_mS_sStrobe,Twenty_mS_sStrobe, Fifty_mS_sStrobe, Hun_mS_sStrobe : std_logic;

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
Maser_Mux_ADXL345_1: entity work.Maser_Mux_ADXL345
        port map (
        Clk              => CLK_I_i,
        RST_I            => RST_I_i,
        UART_TXD         => UART_TXD_i, 
        ADXL345_X_1      => ADXL345_X_1_i,
        ADXL345_Y_1      => ADXL345_Y_1_i,
        ADXL345_Z_1      => ADXL345_Z_1_i,
        Fifo_CTL_1       => Fifo_CTL_1_i,
        Fifo_Status_1    => Fifo_Status_1_i,
        Baud_Rate_Enable => Baud_Rate_Enable_i,  
        Ready_1          => Ready_1_i
        );
 
-- Baud Gen Instance
      Baud_1: entity work.Baud_Rate_Generator
      port map (
        Clk              => CLK_I_i,
        RST_I            => RST_I_i,
        baud_rate        => 4,
        Baud_Rate_Enable => Baud_Rate_Enable_i
        );

bit_time <= bit_time_19200 when Baudrate = 19200 else bit_time_4800 when Baudrate = 4800 else
         bit_time_9600 when Baudrate = 9600 else bit_time_57600 when Baudrate = 57600 else
         bit_time_115200 when Baudrate = 115200 else default_bit_time;
              
data_test: process(CLK_I_i, RST_I_i)
  variable Key_Stop_Cnt   : integer range 0 to 50;
  variable Key_Start_Cnt  : integer range 0 to 50;
  variable Run_Cnt        : integer range 0 to 50;
  variable Stop_Cnt       : integer range 0 to 50;
  variable Data_Cnt       : integer range 0 to 50001;

begin
    if RST_I_i = '0' then
        ADXL345_X_1_i <= (others =>'0');
        ADXL345_Y_1_i <= (others =>'0');
        ADXL345_Z_1_i <= (others=>'0');
        ADXL345_X_2_i <= (others =>'0');
        ADXL345_Y_2_i <= (others =>'0');
        ADXL345_Z_2_i <= (others =>'0');
        ADXL345_X_3_i <= (others =>'0');
        ADXL345_Y_3_i <= (others =>'0');
        ADXL345_Z_3_i <= (others =>'0');
        ADXL345_X_4_i <= (others =>'0');
        ADXL345_Y_4_i <= (others =>'0');
        ADXL345_Z_4_i <= (others =>'0');
        Fifo_CTL_1_i <= (others =>'0');
        Fifo_Status_1_i <= (others =>'0');
        Ready_1_i     <= '0';
        Ready_2_i     <= '0';
        Ready_3_i     <= '0';
        Ready_4_i     <= '0';
        Run_i         <= '0';
        Key_Stop_Cnt  := 0;
        Key_Start_Cnt := 0;
        Run_Cnt       := 0; 
        Stop_Cnt      := 0;  
        Data_Cnt      := 0;
        Key_Start_i   <= '0';  
        Key_Stop_i    <= '0';  
        Run_i         <= '0';
        Stop_i        <= '0';
        Lockout_i     <= '1';  
        Mux_State     <= Idle;
        Push_Button   <= Idle;
    elsif (CLK_I_i'event and CLK_I_i = '1') then

        case Push_Button is
            when Idle =>
                Run_i   <= '0';
                Stop_i  <= '0';
                if Key_Start_Cnt = 10 then
                    Key_Start_Cnt   := 10;
                    Key_Start_i     <= '1';
                    Push_Button     <= Set_Run;
                else
                    Key_Start_Cnt   := Key_Start_Cnt + 1;
                end if;  

            when Set_Run =>
                if Key_Start_i = '1' and Lockout_i = '1' then
                    Run_i       <= '1';
                    Stop_i      <= '0';
                    Key_Start_i <= '0';
                    Lockout_i   <= '0';
                    Push_Button <= Wait_Run;
                end if;

            when Wait_Run =>
                if OnemS_sStrobe = '1' then
                    Key_Stop_Cnt := Key_Stop_Cnt + 1;
                end if;    

                if Key_Stop_Cnt = 5 then
                    Key_Stop_Cnt    := 0;
                    Key_Stop_i      <= '1';
                    Push_Button     <= Set_Stop;
                end if;       

            when Set_Stop =>
                if Key_Stop_i = '1' and Run_i = '1' and Lockout_i = '0'
                then
                    Run_i       <= '0';
                    Stop_i      <= '1';
                    Key_Stop_i  <= '0';
                    Lockout_i   <= '0';
                    Push_Button <= End_Stop;
                end if;    

            when End_Stop =>
                Stop_i      <= '0';
                Push_Button <= Idle;
        end case;              
        
        case Mux_State is
            when Idle =>
                Data_Cnt    := 0;
                if Run_i = '1' then
                    Mux_State       <= Load_Data;
                end if;     
            
            when Load_Data =>
                -- Load Data --
                if Run_i = '1' then
                        -- Loading the Data --
                                ADXL345_X_1_i   <= x"1122";
                                ADXL345_Y_1_i   <= x"3344";
                                ADXL345_Z_1_i   <= x"5566";
                                Fifo_CTL_1_i    <= x"78";
                                Fifo_Status_1_i <= x"9a";
                                Mux_State       <= Send_Data;
                        end if;      

                    when Send_Data =>  
                        if Stop_i = '1' then
                            Mux_State   <= Stop_Stream;
                            Data_Cnt    := 0;
                        else
                            if OnemS_sStrobe = '1' then
                                Data_Cnt    := Data_Cnt + 1;
                            end if;
                            if Data_Cnt = 3 then
                                Data_Cnt    := 0;
                                Ready_1_i   <= '1';
                                Ready_2_i   <= '1';
                                Ready_3_i   <= '1';
                                Ready_4_i   <= '1';
                                Mux_State   <= Load_Data;
                            else
                                Ready_1_i   <= '0';
                                Ready_2_i   <= '0';
                                Ready_3_i   <= '0';
                                Ready_4_i   <= '0';
                            end if;
                        end if;    

                    when Stop_Stream =>
                        Ready_1_i   <= '0';
                        Ready_2_i   <= '0';
                        Ready_3_i   <= '0';
                        Ready_4_i   <= '0';
                        Data_Cnt    := 0;
                        Mux_State   <= Idle;
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
