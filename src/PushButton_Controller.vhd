-------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- Controller for the Push Button Switch Driver.
--
-- The firmware performs the following functions:
-- 
-- Written by: Glen Taylor
-- Tested      : ??/??/20?? Simulation only - Initialization.
--             : Test do file is wave.do
-- Last update : 11/01/2012 Initial release  Version 1.0
-- Last update : ??/??/20?? - ??
-- Outstanding : 
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity PushButton_Controller is
  
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
end PushButton_Controller;

architecture Arch_DUT of PushButton_Controller is
    
-- --Opto Outputs   
     signal  Initialization_Complete_i      : std_logic;           
     signal  PushButton_Start_i             : std_logic;
     signal  PushButton_Stop_i              : std_logic;
     signal  Start_i                        : std_logic;
     signal  LockOut                        : std_logic;
-------------------------------------------------------------------------------  
  begin
    
--  wire links
    Initialization_Complete_i   <= Initialization_Complete;
    PushButton_Start_i          <= PushButton_Start;
    PushButton_Stop_i           <= PushButton_Stop;
    Start                       <= Start_i;
-------------------------------------------------------------------------------
-- Maser Pushbotton Code
-------------------------------------------------------------------------------

   PushButton_Mux :process (CLK_I,RST_I)
   variable Count              : integer range 0 to 16;
   begin
   
       if RST_I = '0' then 
          Start_i                 <= '0';
          Count                   := 0;
          LockOut                 <= '0';
       elsif CLK_I'event and CLK_I = '1' then
             if Initialization_Complete_i = '1' then
                if PushButton_Start_i = '1' and LockOut = '0' then
                   Count             := Count + 1;
                   if Count = 10 then                   
                      Start_i        <= '1';
                      LockOut        <= '1';
                   end if;   
                elsif PushButton_Start_i = '0' and LockOut = '0' then 
                      Count := 0;
                end if;
                
                if PushButton_Stop_i = '1' and LockOut = '1' then
                   Count := Count + 1;
                   if Count = 10 then                   
                      Start_i        <= '0';
                      LockOut        <= '0';
                   end if;
                elsif PushButton_Start_i = '1' and LockOut = '1' then 
                      Count := 0;
                end if;
            end if;
      end if; 
  end process; 
 
  end architecture Arch_DUT;    	      
