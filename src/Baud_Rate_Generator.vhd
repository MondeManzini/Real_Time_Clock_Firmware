-------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- Valon Simulator TX Baud

-- The firmware performs the following functions:
--
-- Generates all Baud rates
-- 
-- Written by           : Monde Manzini             
-- Version              : 1.0 
-- Change Note          : 
-- Tested               : 22 April 2017
-- Type of Test         : Simulation and Compilation
-- located at           : (https://katfs.kat.ac.za/svnAfricanArray/Software
--                        Repository/CommonCode/ScrCommon)
-- Test do file         : Valon_Simulator_Test_Bench.do
-- located at           : (https://katfs.kat.ac.za/svnAfricanArray/Software
--                        Repository/CommonCode/Modelsim)
-- Outstanding          : RF Standalone Integration Testing  
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Baud_Rate_Generator is

  port (
    Clk                             : in  std_logic;
    RST_I                           : in  std_logic;
-- Baud_Rate
    baud_rate                       : in  integer range 0 to 7;
-- Enabe_Clock
    Baud_Rate_Enable                : out std_logic
    );
end Baud_Rate_Generator;

architecture Arch_DUT of Baud_Rate_Generator is

  signal baud_rate_reload     : integer range 0 to 6000;

begin

  baud_rate_gen : process (Clk, RST_I)
    variable Baud_rate_cnt : integer range 0 to 6000;

  begin  -- process baud_rate_gen
    if RST_I = '0' then
       Baud_Rate_Enable    <= '0';
       Baud_rate_cnt       := 0;
    elsif Clk'event and Clk = '1' then
      case baud_rate is
        when 0      =>                  -- 9600
          Baud_rate_reload <= 5208;     
        when 1      =>                  -- 19200
          Baud_rate_reload <= 2603;
        when 2      =>                  -- 38400
          Baud_rate_reload <= 1301;
        when 3      =>                  -- 57600
          Baud_rate_reload <= 868;
        when 4      =>                  -- 76800
          Baud_rate_reload <= 651;          
        when 5      =>                  --115200
          Baud_rate_reload <= 433;
        when others =>                  -- 9600
          Baud_rate_reload <= 5208;
      end case;

      if Baud_rate_cnt = 0 then
         Baud_rate_cnt     := Baud_rate_reload;
         Baud_Rate_Enable  <= '1';
      else
         Baud_rate_cnt     := Baud_rate_cnt - 1;
         Baud_Rate_Enable  <= '0';
      end if;
    end if;
  end process baud_rate_gen;
  

end Arch_DUT;


