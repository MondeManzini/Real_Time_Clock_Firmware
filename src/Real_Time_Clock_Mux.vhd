-------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- Maser Mux Module

-- The firmware performs the following functions:
--
-- Transmits 6 x 2 bytes of maser registers 
-- Baud rate 115200
-- 
-- Written by           : Monde Manzini             
-- Version              : 00.00.01 
-- Change Note          : 
-- Tested               : 15 April 2019
-- Type of Test         : (Simulation only).
-- Test Bench file name : Maser_Mux_TX_Test_Bench.vhd
-- located at           : 
-- Test do file         : Maser_Mux_TX_Test_Bench.do
-- located at           : 
-- Outstanding          : Integration Testing   

-------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_UNSIGNED.all;

entity Real_Time_Clock_Mux is

    port (
        Clk                 : in  std_logic;
        RST_I               : in  std_logic;
        -- -- Output Signals --
        UART_TXD            : out std_logic;
        Busy                : out std_logic;
        Get_Sample          : out std_logic;
        ----------------------------------------------------
        -- Operation
        ----------------------------------------------------
            -- Input Signals -- 
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

end Real_Time_Clock_Mux;

architecture Arch_DUT of Real_Time_Clock_Mux is

    -- Constants
    constant Preamble1        : std_logic_vector(7 downto 0) := X"A5";
    constant Preamble2        : std_logic_vector(7 downto 0) := X"5A";
    constant Preamble3        : std_logic_vector(7 downto 0) := X"7E";
    constant null_terminate   : std_logic_vector(7 downto 0) := X"00";
    constant comma            : std_logic_vector(7 downto 0) := X"2C";
    constant semi_colon       : std_logic_vector(7 downto 0) := X"3B";
    constant space            : std_logic_vector(7 downto 0) := X"32";
    constant car_ret          : std_logic_vector(7 downto 0) := X"0D";
    constant new_line         : std_logic_vector(7 downto 0) := X"0A";

type tx_states is (idle, sync, send_start, send_data, CRC_ready, send_stop);
type tx_data_array is array (0 to 255) of std_logic_vector(7 downto 0);

signal data2send                              : tx_data_array;
signal CRC2send                               : tx_data_array;
signal tx_state                               : tx_states;

signal enable_div20         : std_logic;
signal sample_clock2        : std_logic;
signal no_of_chars          : integer range 0 to 255;
signal no_of_chars2send     : integer range 0 to 255;
signal baud_rate_reload     : integer range 0 to 6000;
signal comms_done           : std_logic;
signal done                 : std_logic;
signal send_msg             : std_logic;
signal Get_Sample_i         : std_logic;
signal Gen_Sample_Rate_i    : std_logic;
signal SerDataOut           : std_logic;
signal CRCSerDataOut        : std_logic;
signal SerData_Byte         : std_logic_vector(7 downto 0);
signal Checksum_i           : std_logic_vector(7 downto 0);

    -- CRC 16 Signals
signal X                        : std_logic_vector(15 downto 0);
signal CRC_Sum                  : std_logic_vector(15 downto 0);
signal crc16_ready              : std_logic;
signal add_crc                  : std_logic;
signal Send_Operation           : std_logic;
signal flag_WD                  : std_logic;
signal busy_i                   : std_logic;
signal Message_done             : std_logic;
signal Initialization_lockout   : std_logic;
signal ACK_NACK_Byte_i          : std_logic_vector(7 downto 0);
signal Messag_Length_i          : integer range 0 to 255;

function reverse_any_bus (a : in std_logic_vector)
    return std_logic_vector is
        variable result           :    std_logic_vector(a'range);
        alias aa                  :    std_logic_vector(a'reverse_range) is a;
    begin
        for i in aa'range loop
            result(i) := aa(i);
        end loop;
        return result;
    end;  -- function reverse_any_bus

begin

    UART_TXD    <= not SerDataOut;
    Get_Sample  <= Get_Sample_i;
    busy        <= busy_i;
    
    -- Build message
    gen_tx_ser_data : process (Clk, RST_I)

    begin
        if RST_I = '0' then
            data2send               <= (others => (others => '0'));
            CRC2send                <= (others => (others => '0'));
            send_msg                <= '0';
            Message_done            <= '0';
        elsif Clk'event and Clk = '1' then

            if (Ready = '1') and busy_i = '0' then
                Send_Operation <= '1';
            else
                Send_Operation <= '0';
            end if;
         
            -----------------------------------------
            -- Operation
            -----------------------------------------
            if Send_Operation = '1' then
                send_msg            <= '1';
                no_of_chars2send    <= 15; 

                data2send(0)        <= Preamble1;
                data2send(1)        <= Preamble2;
                data2send(2)        <= Preamble3;
                data2send(3)        <= Seconds;
                data2send(4)        <= space;    
                data2send(5)        <= Minutes;
                data2send(6)        <= space;  
                data2send(7)        <= Hours;
                data2send(8)        <= space;   
                data2send(9)        <= Day;
                data2send(10)       <= space;  
                data2send(11)       <= Date;
                data2send(12)       <= space;  
                data2send(13)       <= Month_Century;
                data2send(14)       <= space;  
                data2send(15)       <= Year;
                data2send(16)       <= new_line;
                data2send(17)       <= car_ret;

                no_of_chars2send    <= 20;
                 
                CRC2send(0)         <= reverse_any_bus(Preamble1);
                CRC2send(1)         <= reverse_any_bus(Preamble2);
                CRC2send(2)         <= reverse_any_bus(Preamble3);  
                CRC2send(3)         <= reverse_any_bus(Seconds);
                CRC2send(4)         <= reverse_any_bus(space);
                CRC2send(5)         <= reverse_any_bus(Minutes);  
                CRC2send(6)         <= reverse_any_bus(space);
                CRC2send(7)         <= reverse_any_bus(Hours);
                CRC2send(8)         <= reverse_any_bus(space);  
                CRC2send(9)         <= reverse_any_bus(Day);
                CRC2send(10)        <= reverse_any_bus(space);
                CRC2send(11)        <= reverse_any_bus(Date);
                CRC2send(12)        <= reverse_any_bus(space);
                CRC2send(13)        <= reverse_any_bus(Month_Century);  
                CRC2send(14)        <= reverse_any_bus(space);
                CRC2send(15)        <= reverse_any_bus(Year);
                CRC2send(16)        <= reverse_any_bus(new_line);
                CRC2send(17)        <= reverse_any_bus(car_ret);

            else
                send_msg         <= '0';
                Message_done     <= '0';   
            end if;   

           -- if add_crc = '1' then
           --     data2send(no_of_chars2send - 2) <= CRC_Sum(15 downto 8);
           --     data2send(no_of_chars2send - 1) <= CRC_Sum(7 downto 0);
           -- end if;

        end if;
    end process gen_tx_ser_data;

    --Send message out

    uart_tx : process (Clk, RST_I)

        variable tx_counter  : integer range 0 to 15;
    variable bit_counter : integer range 0 to 8;
    variable tx_en       : std_logic;
    variable Wait_cnt    : integer range 0 to 50;
    variable Sample_Counter : integer range 0 to 65001;

begin
    if RST_I = '0' then
        tx_state                <= idle;
        tx_counter              := 0;
        SerDataOut              <= '1';             --idle
        CRCSerDataOut           <= '1';
        bit_counter             := 0;
        Sample_Counter          := 0;
        tx_en                   := '0';
        no_of_chars             <= 0;
        busy_i                  <= '0';
        done                    <= '0';
        comms_done              <= '0';
        Get_Sample_i            <= '0';
        Gen_Sample_Rate_i       <= '0';
        Initialization_lockout  <= '0';
        X                       <= (others => '1');
        add_crc                 <= '0';
        Wait_cnt                := 0;
        crc16_ready             <= '0';
        SerData_Byte            <= (others => '0');
    elsif Clk'event and Clk = '1' then

        if Sample_Counter = 65000 then
            Sample_Counter    := 0;
            Gen_Sample_Rate_i <= '1';
        else
            Gen_Sample_Rate_i <= '0';
            Sample_Counter   := Sample_Counter + 1;
        end if;
        
        if Baud_Rate_Enable = '1' then  
            tx_en := '1';
        else
            tx_en := '0';
        end if;

        case tx_state is

            when idle =>
                
                done            <= '0';
                comms_done      <= '0';
                busy_i          <= '0';
          
                if (Initialation_Status = '1') then
                    Initialization_lockout  <= '1';
                elsif (Initialation_Status = '0') and Initialization_lockout = '1' then
                    Get_Sample_i            <= '1';
                    Initialization_lockout  <= '0';
                else    
                    Initialization_lockout  <= '0';
                    Get_Sample_i            <= '0';
                end if;
                if send_msg = '1' then
                    tx_state      <= sync;
                    busy_i        <= '1';
                    bit_counter   := 0;
                    CRCSerDataOut <= '1';
                    SerDataOut    <= '1';       --idle state on line
                else
                    tx_state      <= idle;
                end if;

            when sync =>
                add_crc  <= '0';
                tx_state <= send_start;


            when send_start =>
                if tx_en = '1' then
                    SerDataOut    <= '0';       --start bit
                    CRCSerDataOut <= '0';
                    tx_state      <= send_data;
                end if;

            when send_data =>
                crc16_ready       <= '0';
                if tx_en = '1' then
                    if bit_counter = 8 then
                        bit_counter := 0;
                        tx_state      <= send_stop;
                        no_of_chars   <= no_of_chars + 1;
                        SerDataOut    <= '1';     --stop_bit
                        CRCSerDataOut <= '1';
                    else
                        SerDataOut    <= data2send(no_of_chars)(bit_counter);
                        CRCSerDataOut <= CRC2send(no_of_chars)(bit_counter);
                        SerData_Byte  <= data2send(no_of_chars);
                        bit_counter   := bit_counter + 1;
                        tx_state      <= CRC_ready;
                        Wait_cnt      := 0;
                    end if;
                end if;

            when CRC_ready =>
                if Wait_cnt = 30 then
                    crc16_ready <= '1';
                    tx_state    <= send_data;
                else
                    wait_cnt := wait_cnt + 1;
                end if;

            when send_stop =>
                if tx_en = '1' then
                    if no_of_chars = no_of_chars2send then
                        -- tx_state    <= idle;
                        --if Gen_Sample_Rate_i = '1' then
                            Get_Sample_i <= '1';
                            no_of_chars  <= 0;
                            done         <= '1';
                            comms_done   <= '1';
                            busy_i       <= '0';
                            tx_state     <= idle;
                        --end if;          
                        
                    elsif no_of_chars = 3 then
                        tx_state    <= sync;
                        X           <= (others => '1');
                    elsif no_of_chars = no_of_chars2send - 2 then
                        tx_state    <= sync;
                        add_crc     <= '1';
                    else
                        tx_state    <= sync;
                        comms_done  <= '0';
                    end if;
                end if;
        end case;

        if crc16_ready = '1' then
            X(0)  <= CRCSerDataOut xor X(15);   
            X(1)  <= X(0);
            X(2)  <= X(1);
            X(3)  <= X(2);
            X(4)  <= X(3);
            X(5)  <= X(4) xor CRCSerDataOut xor X(15);
            X(6)  <= X(5);
            X(7)  <= X(6);
            X(8)  <= X(7);
            X(9)  <= X(8);
            X(10) <= X(9);
            X(11) <= X(10);
            X(12) <= X(11) xor CRCSerDataOut xor X(15);
            X(13) <= X(12);
            X(14) <= X(13);
            X(15) <= X(14);
        end if;
        CRC_Sum  <= X;
    end if;
end process uart_tx;


end Arch_DUT;


