-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "09/09/2019 07:28:21"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Maser_Vibration_Test_Jig IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	LED : OUT std_logic_vector(7 DOWNTO 0);
	I2C_SCLK : OUT std_logic;
	I2C_SDAT : INOUT std_logic;
	GPIO_2_UP : INOUT std_logic_vector(2 DOWNTO 0);
	GPIO_2 : INOUT std_logic_vector(8 DOWNTO 0);
	GPIO_2_IN : IN std_logic_vector(2 DOWNTO 0);
	GPIO_0 : INOUT std_logic_vector(33 DOWNTO 0);
	GPIO_0_IN : IN std_logic_vector(1 DOWNTO 0);
	GPIO_1 : INOUT std_logic_vector(33 DOWNTO 0);
	GPIO_1_IN : IN std_logic_vector(1 DOWNTO 0)
	);
END Maser_Vibration_Test_Jig;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- I2C_SCLK	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2_IN[0]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_2_IN[1]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_2_IN[2]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0_IN[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0_IN[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_1_IN[0]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_1_IN[1]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- I2C_SDAT	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2_UP[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_2_UP[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_2_UP[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_2[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[5]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[6]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[8]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[2]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[3]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[4]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[6]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[8]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[10]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[12]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[14]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[16]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[18]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[20]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[22]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[24]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[26]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[1]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[3]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[4]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[5]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[6]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[7]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[8]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[9]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[10]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[11]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[12]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[13]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[14]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[15]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[16]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[17]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[18]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[19]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[20]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[21]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[22]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[23]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[24]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[25]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[26]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[27]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[28]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[29]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[30]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[31]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[32]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[33]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[0]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[5]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[7]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[9]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[11]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[13]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[15]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[17]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[19]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[21]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[23]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[25]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[27]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[28]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[29]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[30]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[31]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[32]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[33]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Maser_Vibration_Test_Jig IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_GPIO_2_IN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GPIO_0_IN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GPIO_1_IN : std_logic_vector(1 DOWNTO 0);
SIGNAL \RST_I_i~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \GPIO_2_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_2_IN[1]~input_o\ : std_logic;
SIGNAL \GPIO_2_IN[2]~input_o\ : std_logic;
SIGNAL \GPIO_0_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_0_IN[1]~input_o\ : std_logic;
SIGNAL \GPIO_1_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_1_IN[1]~input_o\ : std_logic;
SIGNAL \I2C_SDAT~input_o\ : std_logic;
SIGNAL \GPIO_2_UP[0]~input_o\ : std_logic;
SIGNAL \GPIO_2_UP[1]~input_o\ : std_logic;
SIGNAL \GPIO_2_UP[2]~input_o\ : std_logic;
SIGNAL \GPIO_2[0]~input_o\ : std_logic;
SIGNAL \GPIO_2[1]~input_o\ : std_logic;
SIGNAL \GPIO_2[2]~input_o\ : std_logic;
SIGNAL \GPIO_2[3]~input_o\ : std_logic;
SIGNAL \GPIO_2[4]~input_o\ : std_logic;
SIGNAL \GPIO_2[5]~input_o\ : std_logic;
SIGNAL \GPIO_2[6]~input_o\ : std_logic;
SIGNAL \GPIO_2[7]~input_o\ : std_logic;
SIGNAL \GPIO_2[8]~input_o\ : std_logic;
SIGNAL \GPIO_0[2]~input_o\ : std_logic;
SIGNAL \GPIO_0[3]~input_o\ : std_logic;
SIGNAL \GPIO_0[4]~input_o\ : std_logic;
SIGNAL \GPIO_0[6]~input_o\ : std_logic;
SIGNAL \GPIO_0[8]~input_o\ : std_logic;
SIGNAL \GPIO_0[10]~input_o\ : std_logic;
SIGNAL \GPIO_0[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[16]~input_o\ : std_logic;
SIGNAL \GPIO_0[18]~input_o\ : std_logic;
SIGNAL \GPIO_0[20]~input_o\ : std_logic;
SIGNAL \GPIO_0[22]~input_o\ : std_logic;
SIGNAL \GPIO_0[24]~input_o\ : std_logic;
SIGNAL \GPIO_0[26]~input_o\ : std_logic;
SIGNAL \GPIO_1[0]~input_o\ : std_logic;
SIGNAL \GPIO_1[1]~input_o\ : std_logic;
SIGNAL \GPIO_1[3]~input_o\ : std_logic;
SIGNAL \GPIO_1[4]~input_o\ : std_logic;
SIGNAL \GPIO_1[5]~input_o\ : std_logic;
SIGNAL \GPIO_1[6]~input_o\ : std_logic;
SIGNAL \GPIO_1[7]~input_o\ : std_logic;
SIGNAL \GPIO_1[8]~input_o\ : std_logic;
SIGNAL \GPIO_1[9]~input_o\ : std_logic;
SIGNAL \GPIO_1[10]~input_o\ : std_logic;
SIGNAL \GPIO_1[11]~input_o\ : std_logic;
SIGNAL \GPIO_1[12]~input_o\ : std_logic;
SIGNAL \GPIO_1[13]~input_o\ : std_logic;
SIGNAL \GPIO_1[14]~input_o\ : std_logic;
SIGNAL \GPIO_1[15]~input_o\ : std_logic;
SIGNAL \GPIO_1[16]~input_o\ : std_logic;
SIGNAL \GPIO_1[17]~input_o\ : std_logic;
SIGNAL \GPIO_1[18]~input_o\ : std_logic;
SIGNAL \GPIO_1[19]~input_o\ : std_logic;
SIGNAL \GPIO_1[20]~input_o\ : std_logic;
SIGNAL \GPIO_1[21]~input_o\ : std_logic;
SIGNAL \GPIO_1[22]~input_o\ : std_logic;
SIGNAL \GPIO_1[23]~input_o\ : std_logic;
SIGNAL \GPIO_1[24]~input_o\ : std_logic;
SIGNAL \GPIO_1[25]~input_o\ : std_logic;
SIGNAL \GPIO_1[26]~input_o\ : std_logic;
SIGNAL \GPIO_1[27]~input_o\ : std_logic;
SIGNAL \GPIO_1[28]~input_o\ : std_logic;
SIGNAL \GPIO_1[29]~input_o\ : std_logic;
SIGNAL \GPIO_1[30]~input_o\ : std_logic;
SIGNAL \GPIO_1[31]~input_o\ : std_logic;
SIGNAL \GPIO_1[32]~input_o\ : std_logic;
SIGNAL \GPIO_1[33]~input_o\ : std_logic;
SIGNAL \GPIO_0[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[5]~input_o\ : std_logic;
SIGNAL \GPIO_0[7]~input_o\ : std_logic;
SIGNAL \GPIO_0[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[11]~input_o\ : std_logic;
SIGNAL \GPIO_0[13]~input_o\ : std_logic;
SIGNAL \GPIO_0[15]~input_o\ : std_logic;
SIGNAL \GPIO_0[17]~input_o\ : std_logic;
SIGNAL \GPIO_0[19]~input_o\ : std_logic;
SIGNAL \GPIO_0[21]~input_o\ : std_logic;
SIGNAL \GPIO_0[23]~input_o\ : std_logic;
SIGNAL \GPIO_0[25]~input_o\ : std_logic;
SIGNAL \GPIO_0[27]~input_o\ : std_logic;
SIGNAL \GPIO_0[28]~input_o\ : std_logic;
SIGNAL \GPIO_0[29]~input_o\ : std_logic;
SIGNAL \GPIO_0[30]~input_o\ : std_logic;
SIGNAL \GPIO_0[31]~input_o\ : std_logic;
SIGNAL \GPIO_0[32]~input_o\ : std_logic;
SIGNAL \GPIO_0[33]~input_o\ : std_logic;
SIGNAL \GPIO_1[2]~input_o\ : std_logic;
SIGNAL \I2C_SDAT~output_o\ : std_logic;
SIGNAL \GPIO_2_UP[0]~output_o\ : std_logic;
SIGNAL \GPIO_2_UP[1]~output_o\ : std_logic;
SIGNAL \GPIO_2_UP[2]~output_o\ : std_logic;
SIGNAL \GPIO_2[0]~output_o\ : std_logic;
SIGNAL \GPIO_2[1]~output_o\ : std_logic;
SIGNAL \GPIO_2[2]~output_o\ : std_logic;
SIGNAL \GPIO_2[3]~output_o\ : std_logic;
SIGNAL \GPIO_2[4]~output_o\ : std_logic;
SIGNAL \GPIO_2[5]~output_o\ : std_logic;
SIGNAL \GPIO_2[6]~output_o\ : std_logic;
SIGNAL \GPIO_2[7]~output_o\ : std_logic;
SIGNAL \GPIO_2[8]~output_o\ : std_logic;
SIGNAL \GPIO_0[2]~output_o\ : std_logic;
SIGNAL \GPIO_0[3]~output_o\ : std_logic;
SIGNAL \GPIO_0[4]~output_o\ : std_logic;
SIGNAL \GPIO_0[6]~output_o\ : std_logic;
SIGNAL \GPIO_0[8]~output_o\ : std_logic;
SIGNAL \GPIO_0[10]~output_o\ : std_logic;
SIGNAL \GPIO_0[12]~output_o\ : std_logic;
SIGNAL \GPIO_0[14]~output_o\ : std_logic;
SIGNAL \GPIO_0[16]~output_o\ : std_logic;
SIGNAL \GPIO_0[18]~output_o\ : std_logic;
SIGNAL \GPIO_0[20]~output_o\ : std_logic;
SIGNAL \GPIO_0[22]~output_o\ : std_logic;
SIGNAL \GPIO_0[24]~output_o\ : std_logic;
SIGNAL \GPIO_0[26]~output_o\ : std_logic;
SIGNAL \GPIO_1[0]~output_o\ : std_logic;
SIGNAL \GPIO_1[1]~output_o\ : std_logic;
SIGNAL \GPIO_1[3]~output_o\ : std_logic;
SIGNAL \GPIO_1[4]~output_o\ : std_logic;
SIGNAL \GPIO_1[5]~output_o\ : std_logic;
SIGNAL \GPIO_1[6]~output_o\ : std_logic;
SIGNAL \GPIO_1[7]~output_o\ : std_logic;
SIGNAL \GPIO_1[8]~output_o\ : std_logic;
SIGNAL \GPIO_1[9]~output_o\ : std_logic;
SIGNAL \GPIO_1[10]~output_o\ : std_logic;
SIGNAL \GPIO_1[11]~output_o\ : std_logic;
SIGNAL \GPIO_1[12]~output_o\ : std_logic;
SIGNAL \GPIO_1[13]~output_o\ : std_logic;
SIGNAL \GPIO_1[14]~output_o\ : std_logic;
SIGNAL \GPIO_1[15]~output_o\ : std_logic;
SIGNAL \GPIO_1[16]~output_o\ : std_logic;
SIGNAL \GPIO_1[17]~output_o\ : std_logic;
SIGNAL \GPIO_1[18]~output_o\ : std_logic;
SIGNAL \GPIO_1[19]~output_o\ : std_logic;
SIGNAL \GPIO_1[20]~output_o\ : std_logic;
SIGNAL \GPIO_1[21]~output_o\ : std_logic;
SIGNAL \GPIO_1[22]~output_o\ : std_logic;
SIGNAL \GPIO_1[23]~output_o\ : std_logic;
SIGNAL \GPIO_1[24]~output_o\ : std_logic;
SIGNAL \GPIO_1[25]~output_o\ : std_logic;
SIGNAL \GPIO_1[26]~output_o\ : std_logic;
SIGNAL \GPIO_1[27]~output_o\ : std_logic;
SIGNAL \GPIO_1[28]~output_o\ : std_logic;
SIGNAL \GPIO_1[29]~output_o\ : std_logic;
SIGNAL \GPIO_1[30]~output_o\ : std_logic;
SIGNAL \GPIO_1[31]~output_o\ : std_logic;
SIGNAL \GPIO_1[32]~output_o\ : std_logic;
SIGNAL \GPIO_1[33]~output_o\ : std_logic;
SIGNAL \GPIO_0[0]~output_o\ : std_logic;
SIGNAL \GPIO_0[1]~output_o\ : std_logic;
SIGNAL \GPIO_0[5]~output_o\ : std_logic;
SIGNAL \GPIO_0[7]~output_o\ : std_logic;
SIGNAL \GPIO_0[9]~output_o\ : std_logic;
SIGNAL \GPIO_0[11]~output_o\ : std_logic;
SIGNAL \GPIO_0[13]~output_o\ : std_logic;
SIGNAL \GPIO_0[15]~output_o\ : std_logic;
SIGNAL \GPIO_0[17]~output_o\ : std_logic;
SIGNAL \GPIO_0[19]~output_o\ : std_logic;
SIGNAL \GPIO_0[21]~output_o\ : std_logic;
SIGNAL \GPIO_0[23]~output_o\ : std_logic;
SIGNAL \GPIO_0[25]~output_o\ : std_logic;
SIGNAL \GPIO_0[27]~output_o\ : std_logic;
SIGNAL \GPIO_0[28]~output_o\ : std_logic;
SIGNAL \GPIO_0[29]~output_o\ : std_logic;
SIGNAL \GPIO_0[30]~output_o\ : std_logic;
SIGNAL \GPIO_0[31]~output_o\ : std_logic;
SIGNAL \GPIO_0[32]~output_o\ : std_logic;
SIGNAL \GPIO_0[33]~output_o\ : std_logic;
SIGNAL \GPIO_1[2]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \I2C_SCLK~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \i2c_master_1|bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[0]~0_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[0]~q\ : std_logic;
SIGNAL \Reset_gen:cnt[1]~1_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[1]~q\ : std_logic;
SIGNAL \Reset_gen:cnt[1]~2\ : std_logic;
SIGNAL \Reset_gen:cnt[2]~1_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[2]~q\ : std_logic;
SIGNAL \Reset_gen:cnt[2]~2\ : std_logic;
SIGNAL \Reset_gen:cnt[3]~1_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[3]~q\ : std_logic;
SIGNAL \Reset_gen:cnt[3]~2\ : std_logic;
SIGNAL \Reset_gen:cnt[4]~1_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[4]~q\ : std_logic;
SIGNAL \Reset_gen:cnt[4]~2\ : std_logic;
SIGNAL \Reset_gen:cnt[5]~1_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[5]~q\ : std_logic;
SIGNAL \Reset_gen:cnt[5]~2\ : std_logic;
SIGNAL \Reset_gen:cnt[6]~1_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[6]~q\ : std_logic;
SIGNAL \Reset_gen:cnt[6]~2\ : std_logic;
SIGNAL \Reset_gen:cnt[7]~1_combout\ : std_logic;
SIGNAL \Reset_gen:cnt[7]~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \RST_I_i~feeder_combout\ : std_logic;
SIGNAL \RST_I_i~q\ : std_logic;
SIGNAL \RST_I_i~clkctrl_outclk\ : std_logic;
SIGNAL \i2c_master_1|Selector25~0_combout\ : std_logic;
SIGNAL \i2c_master_1|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \i2c_master_1|Add1~0_combout\ : std_logic;
SIGNAL \i2c_master_1|state~15_combout\ : std_logic;
SIGNAL \i2c_master_1|Add0~3\ : std_logic;
SIGNAL \i2c_master_1|Add0~5\ : std_logic;
SIGNAL \i2c_master_1|Add0~6_combout\ : std_logic;
SIGNAL \i2c_master_1|count~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Add0~7\ : std_logic;
SIGNAL \i2c_master_1|Add0~8_combout\ : std_logic;
SIGNAL \i2c_master_1|count~6_combout\ : std_logic;
SIGNAL \i2c_master_1|Add0~9\ : std_logic;
SIGNAL \i2c_master_1|Add0~11\ : std_logic;
SIGNAL \i2c_master_1|Add0~12_combout\ : std_logic;
SIGNAL \i2c_master_1|count~2_combout\ : std_logic;
SIGNAL \i2c_master_1|Equal0~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Add0~4_combout\ : std_logic;
SIGNAL \i2c_master_1|count~1_combout\ : std_logic;
SIGNAL \i2c_master_1|Equal0~2_combout\ : std_logic;
SIGNAL \i2c_master_1|count~5_combout\ : std_logic;
SIGNAL \i2c_master_1|Add0~10_combout\ : std_logic;
SIGNAL \i2c_master_1|LessThan1~2_combout\ : std_logic;
SIGNAL \i2c_master_1|LessThan1~4_combout\ : std_logic;
SIGNAL \i2c_master_1|LessThan1~3_combout\ : std_logic;
SIGNAL \i2c_master_1|process_0~0_combout\ : std_logic;
SIGNAL \i2c_master_1|process_0~1_combout\ : std_logic;
SIGNAL \i2c_master_1|process_0~2_combout\ : std_logic;
SIGNAL \i2c_master_1|process_0~3_combout\ : std_logic;
SIGNAL \i2c_master_1|process_0~4_combout\ : std_logic;
SIGNAL \i2c_master_1|process_0~5_combout\ : std_logic;
SIGNAL \i2c_master_1|process_0~6_combout\ : std_logic;
SIGNAL \i2c_master_1|data_clk~0_combout\ : std_logic;
SIGNAL \i2c_master_1|data_clk~q\ : std_logic;
SIGNAL \i2c_master_1|data_clk_prev~q\ : std_logic;
SIGNAL \i2c_master_1|process_1~0_combout\ : std_logic;
SIGNAL \i2c_master_1|state.slv_ack2~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_reload[0]~feeder_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|Equal0~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~2\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~1_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~q\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|Equal0~2_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|Equal0~0_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|Equal0~3_combout\ : std_logic;
SIGNAL \Baud_Rate_Generator_1|Baud_Rate_Enable~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[0]~10_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[0]~11\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[1]~12_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[1]~13\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[2]~14_combout\ : std_logic;
SIGNAL \i2c_master_1|busy~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal10~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Address_Lock_i~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Address_Lock_i~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Address_Lock_i~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Address_Lock_i~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector49~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Enable_i~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~4_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal1~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~4_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~5_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~2\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal1~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector26~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Add0~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Add0~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal2~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal2~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector83~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector27~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector28~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector30~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector73~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector73~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector73~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector73~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Enable_i~q\ : std_logic;
SIGNAL \i2c_master_1|Selector0~1_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector0~2_combout\ : std_logic;
SIGNAL \i2c_master_1|Equal1~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector19~0_combout\ : std_logic;
SIGNAL \i2c_master_1|state.command~q\ : std_logic;
SIGNAL \i2c_master_1|Selector0~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector0~3_combout\ : std_logic;
SIGNAL \i2c_master_1|busy~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~5_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector56~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector56~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Ready_i~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|send_msg~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector0~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector0~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|busy_i~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|gen_tx_ser_data~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Send_Operation~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars2send[0]~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Equal2~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[2]~15\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[3]~16_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[3]~17\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[4]~18_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[4]~19\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[5]~20_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[5]~21\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[6]~22_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[6]~23\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars[7]~24_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Equal2~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Equal2~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector3~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|tx_state.sync~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector4~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|tx_state.send_start~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector11~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector10~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Add1~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector9~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Add1~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector8~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Equal0~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector6~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|tx_state.CRC_ready~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector6~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector6~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector6~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~2\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Equal1~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Equal1~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~2\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~2\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~2\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~2\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector5~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector5~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|tx_state.send_data~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector7~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|tx_state.send_stop~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector2~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector2~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|tx_state.idle~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Controller_State~10_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector85~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector85~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|initialation_Status_i~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Get_Sample_i~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Initialization_lockout~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Initialization_lockout~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Get_Sample_i~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Get_Sample_i~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector84~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Controller_State.Idle~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Get_Sample_i~_wirecell_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector7~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Slave_read_nWrite~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector48~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector48~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector48~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector48~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Slave_read_nWrite~q\ : std_logic;
SIGNAL \i2c_master_1|addr_rw[0]~2_combout\ : std_logic;
SIGNAL \i2c_master_1|addr_rw[0]~3_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector20~0_combout\ : std_logic;
SIGNAL \i2c_master_1|state~13_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector20~1_combout\ : std_logic;
SIGNAL \i2c_master_1|state.wr~q\ : std_logic;
SIGNAL \i2c_master_1|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \i2c_master_1|state~14_combout\ : std_logic;
SIGNAL \i2c_master_1|state.slv_ack1~q\ : std_logic;
SIGNAL \i2c_master_1|Selector21~1_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector21~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector21~2_combout\ : std_logic;
SIGNAL \i2c_master_1|state.rd~q\ : std_logic;
SIGNAL \i2c_master_1|data_rd[2]~2_combout\ : std_logic;
SIGNAL \i2c_master_1|state.mstr_ack~q\ : std_logic;
SIGNAL \i2c_master_1|Selector22~0_combout\ : std_logic;
SIGNAL \i2c_master_1|state.stop~q\ : std_logic;
SIGNAL \i2c_master_1|Selector17~0_combout\ : std_logic;
SIGNAL \i2c_master_1|state.ready~q\ : std_logic;
SIGNAL \i2c_master_1|Selector18~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector18~1_combout\ : std_logic;
SIGNAL \i2c_master_1|state.start~q\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~7_combout\ : std_logic;
SIGNAL \i2c_master_1|scl_ena~0_combout\ : std_logic;
SIGNAL \i2c_master_1|scl_ena~q\ : std_logic;
SIGNAL \i2c_master_1|stretch~0_combout\ : std_logic;
SIGNAL \i2c_master_1|stretch~q\ : std_logic;
SIGNAL \i2c_master_1|Add0~0_combout\ : std_logic;
SIGNAL \i2c_master_1|count~4_combout\ : std_logic;
SIGNAL \i2c_master_1|Add0~1\ : std_logic;
SIGNAL \i2c_master_1|Add0~2_combout\ : std_logic;
SIGNAL \i2c_master_1|count~3_combout\ : std_logic;
SIGNAL \i2c_master_1|Equal0~1_combout\ : std_logic;
SIGNAL \i2c_master_1|scl_clk~0_combout\ : std_logic;
SIGNAL \i2c_master_1|scl_clk~q\ : std_logic;
SIGNAL \i2c_master_1|scl~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector79~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector79~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector79~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Slave_Register_i[5]~5_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector22~0_combout\ : std_logic;
SIGNAL \GPIO_0[1]~input_o\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~1_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rx[2]~0_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rd[2]~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_CTL_i[2]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal5~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal5~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Config_i[7]~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Config_i[7]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector19~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector22~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector17~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector18~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Config_i[7]~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Config_i[7]~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector70~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Slave_Data_i[0]~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector78~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector78~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector78~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector21~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector21~4_combout\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~2_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rx[3]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_CTL_i[3]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector21~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector69~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector80~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector80~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Slave_Register_i[1]~feeder_combout\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~8_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rx[1]~6_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rd[1]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_CTL_i[1]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector23~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector23~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector23~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector71~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector24~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector24~1_combout\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~9_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rx[0]~7_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rd[0]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_CTL_i[0]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector24~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector81~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector81~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector81~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector72~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux2~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux2~1_combout\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~5_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rx[6]~4_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rd[6]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector18~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector18~4_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector18~5_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector66~0_combout\ : std_logic;
SIGNAL \i2c_master_1|data_tx[6]~feeder_combout\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~6_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rx[7]~5_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rd[7]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_CTL_i[7]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector17~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector17~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector65~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~4_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rx[5]~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_CTL_i[5]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector19~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector19~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector76~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector76~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector67~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Mux9~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector77~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Slave_Register_i[4]~4_combout\ : std_logic;
SIGNAL \i2c_master_1|Decoder0~3_combout\ : std_logic;
SIGNAL \i2c_master_1|data_rx[4]~2_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_CTL_i[4]~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector20~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector20~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Selector68~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux2~2_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux2~3_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~10_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~6_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~5_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~7_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux3~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux3~1_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux3~2_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux3~3_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~8_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~9_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~2_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~3_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux4~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux4~1_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux4~2_combout\ : std_logic;
SIGNAL \i2c_master_1|Mux4~3_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~0_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~1_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~4_combout\ : std_logic;
SIGNAL \i2c_master_1|Selector23~11_combout\ : std_logic;
SIGNAL \i2c_master_1|sda_int~q\ : std_logic;
SIGNAL \i2c_master_1|Selector29~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~1_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~0_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~4_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~10_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|PushButton_Mux:Count[0]~q\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~8_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Add1~3_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~9_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|PushButton_Mux:Count[1]~q\ : std_logic;
SIGNAL \Maser_PushButton_1|Add1~0_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~7_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|PushButton_Mux:Count[2]~q\ : std_logic;
SIGNAL \Maser_PushButton_1|Add0~2_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~2_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Add1~2_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~6_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|PushButton_Mux:Count[3]~q\ : std_logic;
SIGNAL \Maser_PushButton_1|Add0~0_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~3_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Add1~1_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|Count~5_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|PushButton_Mux:Count[4]~q\ : std_logic;
SIGNAL \Maser_PushButton_1|Add0~1_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|LockOut~1_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|LockOut~0_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|LockOut~2_combout\ : std_logic;
SIGNAL \Maser_PushButton_1|LockOut~q\ : std_logic;
SIGNAL \Int_SCL_i~feeder_combout\ : std_logic;
SIGNAL \Int_SCL_i~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector12~9_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector12~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector12~5_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector12~6_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[0][7]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[0][7]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux4~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][6]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][6]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][7]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][4]~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][4]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][5]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux11~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux11~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][3]~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][3]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][1]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][2]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[11][0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux11~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux11~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux256~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux256~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux13~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[6]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[7]~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal5~5_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][6]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[7]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][7]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][5]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][4]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux5~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux5~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][2]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[3]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][3]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][1]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[0]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[5][0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux5~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux5~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux5~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux4~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux256~6_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal5~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][3]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][1]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][2]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux9~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux9~3_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[15]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][7]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][7]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][6]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][5]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[12]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[9][4]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux9~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux9~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux9~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector12~7_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[6]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][6]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][6]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[7]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][7]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][5]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[4]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][4]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux12~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux12~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[1]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][1]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[3]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][3]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][2]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i[0]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[12][0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux12~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux12~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux12~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux4~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[1]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal5~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][1]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[3]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][3]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][2]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[0]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux8~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux8~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][6]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[7]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][7]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][5]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i[4]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[8][4]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux8~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux8~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux8~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux256~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux256~5_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux14~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[6]~feeder_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[7]~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][6]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][6]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[7]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][7]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][5]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[4]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][4]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux2~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux2~1_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][2]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[3]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][3]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[1]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][1]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][1]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i[0]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[2][0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux2~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux2~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux2~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux256~0_combout\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|Equal5~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][6]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][6]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[15]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][7]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][5]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][5]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[12]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][4]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux6~0_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux6~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][1]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][1]~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i[11]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][3]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][2]~feeder_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][2]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|data2send[6][0]~q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux6~2_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux6~3_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux6~4_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Mux256~1_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector12~10_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector12~11_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|Selector12~8_combout\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|SerDataOut~q\ : std_logic;
SIGNAL \LED[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[0]~reg0_q\ : std_logic;
SIGNAL \LED[1]~reg0_q\ : std_logic;
SIGNAL \LED[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[2]~reg0_q\ : std_logic;
SIGNAL \LED[3]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[3]~reg0_q\ : std_logic;
SIGNAL \LED[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[4]~reg0_q\ : std_logic;
SIGNAL \LED[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[5]~reg0_q\ : std_logic;
SIGNAL \LED[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[6]~reg0_q\ : std_logic;
SIGNAL \LED[7]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[7]~reg0_q\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_master_1|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Maser_i2c_Controller_1|Slave_Register_i\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_master_1|data_rd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_master_1|data_rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Maser_Mux_ADXL345_1|no_of_chars2send\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_master_1|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i2c_master_1|addr_rw\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Maser_i2c_Controller_1|Slave_Data_i\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_master_1|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Maser_i2c_Controller_1|Config_i\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Maser_i2c_Controller_1|ADXL345_Y_i\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Maser_i2c_Controller_1|ADXL345_X_i\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Maser_i2c_Controller_1|FIFO_CTL_i\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Maser_i2c_Controller_1|ADXL345_Z_i\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Maser_i2c_Controller_1|FIFO_Status_i\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Baud_Rate_Generator_1|baud_rate_reload\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \Maser_Mux_ADXL345_1|ALT_INV_tx_state.CRC_ready~q\ : std_logic;
SIGNAL \Maser_i2c_Controller_1|ALT_INV_i2c_Controller_State.ReadDataXYZ~q\ : std_logic;
SIGNAL \i2c_master_1|ALT_INV_busy~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LED <= ww_LED;
I2C_SCLK <= ww_I2C_SCLK;
ww_GPIO_2_IN <= GPIO_2_IN;
ww_GPIO_0_IN <= GPIO_0_IN;
ww_GPIO_1_IN <= GPIO_1_IN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST_I_i~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST_I_i~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\Maser_Mux_ADXL345_1|ALT_INV_tx_state.CRC_ready~q\ <= NOT \Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\;
\Maser_i2c_Controller_1|ALT_INV_i2c_Controller_State.ReadDataXYZ~q\ <= NOT \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\;
\i2c_master_1|ALT_INV_busy~q\ <= NOT \i2c_master_1|busy~q\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N2
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \I2C_SDAT~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\GPIO_2_UP[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2_UP[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\GPIO_2_UP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2_UP[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\GPIO_2_UP[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2_UP[2]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\GPIO_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[0]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\GPIO_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\GPIO_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[2]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\GPIO_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[3]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\GPIO_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[4]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\GPIO_2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[5]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\GPIO_2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[6]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\GPIO_2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[7]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\GPIO_2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_2[8]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\GPIO_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\GPIO_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[3]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\GPIO_0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[4]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\GPIO_0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[6]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\GPIO_0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[8]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\GPIO_0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[10]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\GPIO_0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[12]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\GPIO_0[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[14]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\GPIO_0[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[16]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\GPIO_0[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[18]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\GPIO_0[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[20]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\GPIO_0[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[22]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\GPIO_0[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[24]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\GPIO_0[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[26]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\GPIO_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\GPIO_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\GPIO_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\GPIO_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\GPIO_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\GPIO_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\GPIO_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\GPIO_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\GPIO_1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\GPIO_1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\GPIO_1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\GPIO_1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\GPIO_1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\GPIO_1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[14]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\GPIO_1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[15]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\GPIO_1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[16]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\GPIO_1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[17]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\GPIO_1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[18]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\GPIO_1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[19]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\GPIO_1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[20]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\GPIO_1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\GPIO_1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[22]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\GPIO_1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[23]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\GPIO_1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[24]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\GPIO_1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[25]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\GPIO_1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[26]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\GPIO_1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[27]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\GPIO_1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[28]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\GPIO_1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[29]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\GPIO_1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[30]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\GPIO_1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[31]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\GPIO_1[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[32]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\GPIO_1[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[33]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\GPIO_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|scl~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[0]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\GPIO_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|Selector29~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\GPIO_0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|scl~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[5]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\GPIO_0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|scl~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[7]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\GPIO_0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_KEY[0]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[9]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\GPIO_0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_KEY[1]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[11]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\GPIO_0[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Maser_PushButton_1|LockOut~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[13]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\GPIO_0[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[15]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\GPIO_0[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|data_rd\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[17]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\GPIO_0[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|data_rd\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[19]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\GPIO_0[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|data_rd\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[21]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\GPIO_0[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|data_rd\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[23]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\GPIO_0[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|data_rd\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[25]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\GPIO_0[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|data_rd\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[27]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\GPIO_0[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO_0[1]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[28]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\GPIO_0[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|data_rd\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[29]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\GPIO_0[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Int_SCL_i~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[30]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\GPIO_0[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|data_rd\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[31]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\GPIO_0[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_master_1|ALT_INV_busy~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[32]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\GPIO_0[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Maser_Mux_ADXL345_1|SerDataOut~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_0[33]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\GPIO_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Maser_Mux_ADXL345_1|SerDataOut~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I2C_SCLK~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y29_N22
\i2c_master_1|bit_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|bit_cnt[0]~1_combout\ = !\i2c_master_1|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|bit_cnt\(0),
	combout => \i2c_master_1|bit_cnt[0]~1_combout\);

-- Location: LCCOMB_X24_Y33_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Reset_gen:cnt[1]~q\ & (\Reset_gen:cnt[0]~q\ & (\Reset_gen:cnt[2]~q\ & \Reset_gen:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_gen:cnt[1]~q\,
	datab => \Reset_gen:cnt[0]~q\,
	datac => \Reset_gen:cnt[2]~q\,
	datad => \Reset_gen:cnt[3]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y33_N2
\Reset_gen:cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset_gen:cnt[0]~0_combout\ = ((\Equal0~1_combout\ & \Equal0~0_combout\)) # (!\Reset_gen:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Reset_gen:cnt[0]~q\,
	datad => \Equal0~0_combout\,
	combout => \Reset_gen:cnt[0]~0_combout\);

-- Location: FF_X24_Y33_N3
\Reset_gen:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reset_gen:cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset_gen:cnt[0]~q\);

-- Location: LCCOMB_X24_Y33_N6
\Reset_gen:cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset_gen:cnt[1]~1_combout\ = (\Reset_gen:cnt[1]~q\ & (\Reset_gen:cnt[0]~q\ $ (VCC))) # (!\Reset_gen:cnt[1]~q\ & (\Reset_gen:cnt[0]~q\ & VCC))
-- \Reset_gen:cnt[1]~2\ = CARRY((\Reset_gen:cnt[1]~q\ & \Reset_gen:cnt[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_gen:cnt[1]~q\,
	datab => \Reset_gen:cnt[0]~q\,
	datad => VCC,
	combout => \Reset_gen:cnt[1]~1_combout\,
	cout => \Reset_gen:cnt[1]~2\);

-- Location: FF_X24_Y33_N7
\Reset_gen:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reset_gen:cnt[1]~1_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset_gen:cnt[1]~q\);

-- Location: LCCOMB_X24_Y33_N8
\Reset_gen:cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset_gen:cnt[2]~1_combout\ = (\Reset_gen:cnt[2]~q\ & (!\Reset_gen:cnt[1]~2\)) # (!\Reset_gen:cnt[2]~q\ & ((\Reset_gen:cnt[1]~2\) # (GND)))
-- \Reset_gen:cnt[2]~2\ = CARRY((!\Reset_gen:cnt[1]~2\) # (!\Reset_gen:cnt[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reset_gen:cnt[2]~q\,
	datad => VCC,
	cin => \Reset_gen:cnt[1]~2\,
	combout => \Reset_gen:cnt[2]~1_combout\,
	cout => \Reset_gen:cnt[2]~2\);

-- Location: FF_X24_Y33_N9
\Reset_gen:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reset_gen:cnt[2]~1_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset_gen:cnt[2]~q\);

-- Location: LCCOMB_X24_Y33_N10
\Reset_gen:cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset_gen:cnt[3]~1_combout\ = (\Reset_gen:cnt[3]~q\ & (\Reset_gen:cnt[2]~2\ $ (GND))) # (!\Reset_gen:cnt[3]~q\ & (!\Reset_gen:cnt[2]~2\ & VCC))
-- \Reset_gen:cnt[3]~2\ = CARRY((\Reset_gen:cnt[3]~q\ & !\Reset_gen:cnt[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_gen:cnt[3]~q\,
	datad => VCC,
	cin => \Reset_gen:cnt[2]~2\,
	combout => \Reset_gen:cnt[3]~1_combout\,
	cout => \Reset_gen:cnt[3]~2\);

-- Location: FF_X24_Y33_N11
\Reset_gen:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reset_gen:cnt[3]~1_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset_gen:cnt[3]~q\);

-- Location: LCCOMB_X24_Y33_N12
\Reset_gen:cnt[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset_gen:cnt[4]~1_combout\ = (\Reset_gen:cnt[4]~q\ & (!\Reset_gen:cnt[3]~2\)) # (!\Reset_gen:cnt[4]~q\ & ((\Reset_gen:cnt[3]~2\) # (GND)))
-- \Reset_gen:cnt[4]~2\ = CARRY((!\Reset_gen:cnt[3]~2\) # (!\Reset_gen:cnt[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_gen:cnt[4]~q\,
	datad => VCC,
	cin => \Reset_gen:cnt[3]~2\,
	combout => \Reset_gen:cnt[4]~1_combout\,
	cout => \Reset_gen:cnt[4]~2\);

-- Location: FF_X24_Y33_N13
\Reset_gen:cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reset_gen:cnt[4]~1_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset_gen:cnt[4]~q\);

-- Location: LCCOMB_X24_Y33_N14
\Reset_gen:cnt[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset_gen:cnt[5]~1_combout\ = (\Reset_gen:cnt[5]~q\ & (\Reset_gen:cnt[4]~2\ $ (GND))) # (!\Reset_gen:cnt[5]~q\ & (!\Reset_gen:cnt[4]~2\ & VCC))
-- \Reset_gen:cnt[5]~2\ = CARRY((\Reset_gen:cnt[5]~q\ & !\Reset_gen:cnt[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reset_gen:cnt[5]~q\,
	datad => VCC,
	cin => \Reset_gen:cnt[4]~2\,
	combout => \Reset_gen:cnt[5]~1_combout\,
	cout => \Reset_gen:cnt[5]~2\);

-- Location: FF_X24_Y33_N15
\Reset_gen:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reset_gen:cnt[5]~1_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset_gen:cnt[5]~q\);

-- Location: LCCOMB_X24_Y33_N16
\Reset_gen:cnt[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset_gen:cnt[6]~1_combout\ = (\Reset_gen:cnt[6]~q\ & (!\Reset_gen:cnt[5]~2\)) # (!\Reset_gen:cnt[6]~q\ & ((\Reset_gen:cnt[5]~2\) # (GND)))
-- \Reset_gen:cnt[6]~2\ = CARRY((!\Reset_gen:cnt[5]~2\) # (!\Reset_gen:cnt[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reset_gen:cnt[6]~q\,
	datad => VCC,
	cin => \Reset_gen:cnt[5]~2\,
	combout => \Reset_gen:cnt[6]~1_combout\,
	cout => \Reset_gen:cnt[6]~2\);

-- Location: FF_X24_Y33_N17
\Reset_gen:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reset_gen:cnt[6]~1_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset_gen:cnt[6]~q\);

-- Location: LCCOMB_X24_Y33_N18
\Reset_gen:cnt[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reset_gen:cnt[7]~1_combout\ = \Reset_gen:cnt[6]~2\ $ (!\Reset_gen:cnt[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Reset_gen:cnt[7]~q\,
	cin => \Reset_gen:cnt[6]~2\,
	combout => \Reset_gen:cnt[7]~1_combout\);

-- Location: FF_X24_Y33_N19
\Reset_gen:cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Reset_gen:cnt[7]~1_combout\,
	ena => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reset_gen:cnt[7]~q\);

-- Location: LCCOMB_X24_Y33_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Reset_gen:cnt[4]~q\ & (\Reset_gen:cnt[7]~q\ & (\Reset_gen:cnt[5]~q\ & \Reset_gen:cnt[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_gen:cnt[4]~q\,
	datab => \Reset_gen:cnt[7]~q\,
	datac => \Reset_gen:cnt[5]~q\,
	datad => \Reset_gen:cnt[6]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y33_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X24_Y33_N4
\RST_I_i~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_I_i~feeder_combout\ = \Equal0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~2_combout\,
	combout => \RST_I_i~feeder_combout\);

-- Location: FF_X24_Y33_N5
RST_I_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_I_i~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_I_i~q\);

-- Location: CLKCTRL_G13
\RST_I_i~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST_I_i~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST_I_i~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y29_N28
\i2c_master_1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector25~0_combout\ = \i2c_master_1|bit_cnt\(1) $ (\i2c_master_1|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|bit_cnt\(1),
	datad => \i2c_master_1|bit_cnt\(0),
	combout => \i2c_master_1|Selector25~0_combout\);

-- Location: LCCOMB_X19_Y29_N8
\i2c_master_1|bit_cnt[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|bit_cnt[1]~feeder_combout\ = \i2c_master_1|Selector25~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|Selector25~0_combout\,
	combout => \i2c_master_1|bit_cnt[1]~feeder_combout\);

-- Location: FF_X19_Y29_N9
\i2c_master_1|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|bit_cnt[1]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|bit_cnt\(1));

-- Location: LCCOMB_X18_Y29_N16
\i2c_master_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Add1~0_combout\ = \i2c_master_1|bit_cnt\(2) $ (((\i2c_master_1|bit_cnt\(0) & \i2c_master_1|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datac => \i2c_master_1|bit_cnt\(1),
	datad => \i2c_master_1|bit_cnt\(2),
	combout => \i2c_master_1|Add1~0_combout\);

-- Location: FF_X18_Y29_N25
\i2c_master_1|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|Add1~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \i2c_master_1|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|bit_cnt\(2));

-- Location: LCCOMB_X18_Y29_N20
\i2c_master_1|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|state~15_combout\ = (\i2c_master_1|state.wr~q\ & (\i2c_master_1|bit_cnt\(1) & (\i2c_master_1|bit_cnt\(0) & \i2c_master_1|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.wr~q\,
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(0),
	datad => \i2c_master_1|bit_cnt\(2),
	combout => \i2c_master_1|state~15_combout\);

-- Location: LCCOMB_X21_Y33_N12
\i2c_master_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Add0~2_combout\ = (\i2c_master_1|count\(1) & (!\i2c_master_1|Add0~1\)) # (!\i2c_master_1|count\(1) & ((\i2c_master_1|Add0~1\) # (GND)))
-- \i2c_master_1|Add0~3\ = CARRY((!\i2c_master_1|Add0~1\) # (!\i2c_master_1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|count\(1),
	datad => VCC,
	cin => \i2c_master_1|Add0~1\,
	combout => \i2c_master_1|Add0~2_combout\,
	cout => \i2c_master_1|Add0~3\);

-- Location: LCCOMB_X21_Y33_N14
\i2c_master_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Add0~4_combout\ = (\i2c_master_1|count\(2) & (\i2c_master_1|Add0~3\ $ (GND))) # (!\i2c_master_1|count\(2) & (!\i2c_master_1|Add0~3\ & VCC))
-- \i2c_master_1|Add0~5\ = CARRY((\i2c_master_1|count\(2) & !\i2c_master_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|count\(2),
	datad => VCC,
	cin => \i2c_master_1|Add0~3\,
	combout => \i2c_master_1|Add0~4_combout\,
	cout => \i2c_master_1|Add0~5\);

-- Location: LCCOMB_X21_Y33_N16
\i2c_master_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Add0~6_combout\ = (\i2c_master_1|count\(3) & (!\i2c_master_1|Add0~5\)) # (!\i2c_master_1|count\(3) & ((\i2c_master_1|Add0~5\) # (GND)))
-- \i2c_master_1|Add0~7\ = CARRY((!\i2c_master_1|Add0~5\) # (!\i2c_master_1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|count\(3),
	datad => VCC,
	cin => \i2c_master_1|Add0~5\,
	combout => \i2c_master_1|Add0~6_combout\,
	cout => \i2c_master_1|Add0~7\);

-- Location: LCCOMB_X21_Y33_N2
\i2c_master_1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|count~0_combout\ = (\i2c_master_1|Add0~6_combout\ & ((!\i2c_master_1|Equal0~0_combout\) # (!\i2c_master_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~2_combout\,
	datac => \i2c_master_1|Equal0~0_combout\,
	datad => \i2c_master_1|Add0~6_combout\,
	combout => \i2c_master_1|count~0_combout\);

-- Location: FF_X21_Y33_N29
\i2c_master_1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|count~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|count\(3));

-- Location: LCCOMB_X21_Y33_N18
\i2c_master_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Add0~8_combout\ = (\i2c_master_1|count\(4) & (\i2c_master_1|Add0~7\ $ (GND))) # (!\i2c_master_1|count\(4) & (!\i2c_master_1|Add0~7\ & VCC))
-- \i2c_master_1|Add0~9\ = CARRY((\i2c_master_1|count\(4) & !\i2c_master_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|count\(4),
	datad => VCC,
	cin => \i2c_master_1|Add0~7\,
	combout => \i2c_master_1|Add0~8_combout\,
	cout => \i2c_master_1|Add0~9\);

-- Location: LCCOMB_X21_Y33_N0
\i2c_master_1|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|count~6_combout\ = (\i2c_master_1|Add0~8_combout\ & ((!\i2c_master_1|Equal0~0_combout\) # (!\i2c_master_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~2_combout\,
	datac => \i2c_master_1|Equal0~0_combout\,
	datad => \i2c_master_1|Add0~8_combout\,
	combout => \i2c_master_1|count~6_combout\);

-- Location: FF_X21_Y33_N1
\i2c_master_1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|count~6_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|count\(4));

-- Location: LCCOMB_X21_Y33_N20
\i2c_master_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Add0~10_combout\ = (\i2c_master_1|count\(5) & (!\i2c_master_1|Add0~9\)) # (!\i2c_master_1|count\(5) & ((\i2c_master_1|Add0~9\) # (GND)))
-- \i2c_master_1|Add0~11\ = CARRY((!\i2c_master_1|Add0~9\) # (!\i2c_master_1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|count\(5),
	datad => VCC,
	cin => \i2c_master_1|Add0~9\,
	combout => \i2c_master_1|Add0~10_combout\,
	cout => \i2c_master_1|Add0~11\);

-- Location: LCCOMB_X21_Y33_N22
\i2c_master_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Add0~12_combout\ = \i2c_master_1|Add0~11\ $ (!\i2c_master_1|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|count\(6),
	cin => \i2c_master_1|Add0~11\,
	combout => \i2c_master_1|Add0~12_combout\);

-- Location: LCCOMB_X20_Y33_N4
\i2c_master_1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|count~2_combout\ = (\i2c_master_1|Add0~12_combout\ & ((!\i2c_master_1|Equal0~0_combout\) # (!\i2c_master_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|Equal0~2_combout\,
	datac => \i2c_master_1|Equal0~0_combout\,
	datad => \i2c_master_1|Add0~12_combout\,
	combout => \i2c_master_1|count~2_combout\);

-- Location: FF_X20_Y33_N9
\i2c_master_1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|count~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|count\(6));

-- Location: LCCOMB_X21_Y33_N28
\i2c_master_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Equal0~0_combout\ = (\i2c_master_1|count\(5) & (\i2c_master_1|count\(4) & (\i2c_master_1|count\(3) & \i2c_master_1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|count\(5),
	datab => \i2c_master_1|count\(4),
	datac => \i2c_master_1|count\(3),
	datad => \i2c_master_1|count\(6),
	combout => \i2c_master_1|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y33_N8
\i2c_master_1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|count~1_combout\ = (\i2c_master_1|Add0~4_combout\ & ((!\i2c_master_1|Equal0~2_combout\) # (!\i2c_master_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~0_combout\,
	datac => \i2c_master_1|Add0~4_combout\,
	datad => \i2c_master_1|Equal0~2_combout\,
	combout => \i2c_master_1|count~1_combout\);

-- Location: FF_X21_Y33_N25
\i2c_master_1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|count~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|count\(2));

-- Location: LCCOMB_X21_Y33_N24
\i2c_master_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Equal0~2_combout\ = (\i2c_master_1|count\(0) & (\i2c_master_1|count\(1) & !\i2c_master_1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|count\(0),
	datab => \i2c_master_1|count\(1),
	datac => \i2c_master_1|count\(2),
	combout => \i2c_master_1|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y33_N26
\i2c_master_1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|count~5_combout\ = (\i2c_master_1|Add0~10_combout\ & ((!\i2c_master_1|Equal0~0_combout\) # (!\i2c_master_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~2_combout\,
	datac => \i2c_master_1|Equal0~0_combout\,
	datad => \i2c_master_1|Add0~10_combout\,
	combout => \i2c_master_1|count~5_combout\);

-- Location: FF_X21_Y33_N27
\i2c_master_1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|count~5_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|count\(5));

-- Location: LCCOMB_X21_Y33_N30
\i2c_master_1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|LessThan1~2_combout\ = (\i2c_master_1|Add0~2_combout\ & (\i2c_master_1|Add0~0_combout\ & \i2c_master_1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~2_combout\,
	datac => \i2c_master_1|Add0~0_combout\,
	datad => \i2c_master_1|Add0~8_combout\,
	combout => \i2c_master_1|LessThan1~2_combout\);

-- Location: LCCOMB_X20_Y33_N2
\i2c_master_1|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|LessThan1~4_combout\ = (\i2c_master_1|Add0~4_combout\ & (\i2c_master_1|Add0~6_combout\ & ((!\i2c_master_1|Equal0~2_combout\) # (!\i2c_master_1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~0_combout\,
	datab => \i2c_master_1|Equal0~2_combout\,
	datac => \i2c_master_1|Add0~4_combout\,
	datad => \i2c_master_1|Add0~6_combout\,
	combout => \i2c_master_1|LessThan1~4_combout\);

-- Location: LCCOMB_X20_Y33_N16
\i2c_master_1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|LessThan1~3_combout\ = (\i2c_master_1|Add0~10_combout\) # ((\i2c_master_1|Add0~12_combout\) # ((\i2c_master_1|LessThan1~2_combout\ & \i2c_master_1|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~10_combout\,
	datab => \i2c_master_1|Add0~12_combout\,
	datac => \i2c_master_1|LessThan1~2_combout\,
	datad => \i2c_master_1|LessThan1~4_combout\,
	combout => \i2c_master_1|LessThan1~3_combout\);

-- Location: LCCOMB_X20_Y33_N24
\i2c_master_1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|process_0~0_combout\ = (\i2c_master_1|Add0~4_combout\ & (\i2c_master_1|Add0~6_combout\ & ((!\i2c_master_1|Equal0~2_combout\) # (!\i2c_master_1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~0_combout\,
	datab => \i2c_master_1|Equal0~2_combout\,
	datac => \i2c_master_1|Add0~4_combout\,
	datad => \i2c_master_1|Add0~6_combout\,
	combout => \i2c_master_1|process_0~0_combout\);

-- Location: LCCOMB_X20_Y33_N26
\i2c_master_1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|process_0~1_combout\ = (\i2c_master_1|Add0~10_combout\ & (\i2c_master_1|Add0~8_combout\ & (\i2c_master_1|Add0~2_combout\ & \i2c_master_1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~10_combout\,
	datab => \i2c_master_1|Add0~8_combout\,
	datac => \i2c_master_1|Add0~2_combout\,
	datad => \i2c_master_1|process_0~0_combout\,
	combout => \i2c_master_1|process_0~1_combout\);

-- Location: LCCOMB_X20_Y33_N20
\i2c_master_1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|process_0~2_combout\ = (!\i2c_master_1|Add0~10_combout\ & (((!\i2c_master_1|count~0_combout\) # (!\i2c_master_1|LessThan1~2_combout\)) # (!\i2c_master_1|count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~10_combout\,
	datab => \i2c_master_1|count~1_combout\,
	datac => \i2c_master_1|LessThan1~2_combout\,
	datad => \i2c_master_1|count~0_combout\,
	combout => \i2c_master_1|process_0~2_combout\);

-- Location: LCCOMB_X20_Y33_N22
\i2c_master_1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|process_0~3_combout\ = (\i2c_master_1|Equal0~1_combout\) # ((\i2c_master_1|Add0~12_combout\) # ((\i2c_master_1|process_0~1_combout\) # (\i2c_master_1|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~1_combout\,
	datab => \i2c_master_1|Add0~12_combout\,
	datac => \i2c_master_1|process_0~1_combout\,
	datad => \i2c_master_1|process_0~2_combout\,
	combout => \i2c_master_1|process_0~3_combout\);

-- Location: LCCOMB_X20_Y33_N18
\i2c_master_1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|process_0~4_combout\ = (\i2c_master_1|Add0~2_combout\ & (((\i2c_master_1|Add0~4_combout\ & \i2c_master_1|count~0_combout\)))) # (!\i2c_master_1|Add0~2_combout\ & (\i2c_master_1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~0_combout\,
	datab => \i2c_master_1|Add0~2_combout\,
	datac => \i2c_master_1|Add0~4_combout\,
	datad => \i2c_master_1|count~0_combout\,
	combout => \i2c_master_1|process_0~4_combout\);

-- Location: LCCOMB_X20_Y33_N28
\i2c_master_1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|process_0~5_combout\ = (\i2c_master_1|Add0~8_combout\ & ((\i2c_master_1|Add0~2_combout\ & ((\i2c_master_1|count~2_combout\) # (\i2c_master_1|process_0~4_combout\))) # (!\i2c_master_1|Add0~2_combout\ & (\i2c_master_1|count~2_combout\ & 
-- \i2c_master_1|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~8_combout\,
	datab => \i2c_master_1|Add0~2_combout\,
	datac => \i2c_master_1|count~2_combout\,
	datad => \i2c_master_1|process_0~4_combout\,
	combout => \i2c_master_1|process_0~5_combout\);

-- Location: LCCOMB_X20_Y33_N10
\i2c_master_1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|process_0~6_combout\ = (\i2c_master_1|Add0~10_combout\ & (((\i2c_master_1|count~2_combout\) # (!\i2c_master_1|process_0~5_combout\)))) # (!\i2c_master_1|Add0~10_combout\ & ((\i2c_master_1|process_0~5_combout\ & 
-- (\i2c_master_1|process_0~0_combout\)) # (!\i2c_master_1|process_0~5_combout\ & ((!\i2c_master_1|count~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~10_combout\,
	datab => \i2c_master_1|process_0~0_combout\,
	datac => \i2c_master_1|count~2_combout\,
	datad => \i2c_master_1|process_0~5_combout\,
	combout => \i2c_master_1|process_0~6_combout\);

-- Location: LCCOMB_X20_Y33_N0
\i2c_master_1|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_clk~0_combout\ = (!\i2c_master_1|Equal0~1_combout\ & (\i2c_master_1|LessThan1~3_combout\ & ((!\i2c_master_1|process_0~6_combout\) # (!\i2c_master_1|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~1_combout\,
	datab => \i2c_master_1|LessThan1~3_combout\,
	datac => \i2c_master_1|process_0~3_combout\,
	datad => \i2c_master_1|process_0~6_combout\,
	combout => \i2c_master_1|data_clk~0_combout\);

-- Location: FF_X20_Y33_N1
\i2c_master_1|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_clk~0_combout\,
	ena => \RST_I_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_clk~q\);

-- Location: FF_X20_Y29_N21
\i2c_master_1|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_clk~q\,
	sload => VCC,
	ena => \RST_I_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_clk_prev~q\);

-- Location: LCCOMB_X20_Y29_N26
\i2c_master_1|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|process_1~0_combout\ = (\i2c_master_1|data_clk~q\ & !\i2c_master_1|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_clk~q\,
	datad => \i2c_master_1|data_clk_prev~q\,
	combout => \i2c_master_1|process_1~0_combout\);

-- Location: FF_X18_Y29_N21
\i2c_master_1|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|state~15_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.slv_ack2~q\);

-- Location: LCCOMB_X29_Y29_N0
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~1_combout\ = \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~q\ $ (VCC)
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~2\ = CARRY(\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~q\,
	datad => VCC,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~2\);

-- Location: LCCOMB_X25_Y33_N0
\Baud_Rate_Generator_1|baud_rate_reload[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_reload[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Baud_Rate_Generator_1|baud_rate_reload[0]~feeder_combout\);

-- Location: FF_X25_Y33_N1
\Baud_Rate_Generator_1|baud_rate_reload[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_reload[0]~feeder_combout\,
	ena => \RST_I_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_reload\(0));

-- Location: FF_X29_Y29_N1
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~1_combout\,
	asdata => \Baud_Rate_Generator_1|baud_rate_reload\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~q\);

-- Location: LCCOMB_X29_Y29_N2
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~2\ & VCC)) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~q\ & 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~2\))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~2\ = CARRY((!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~q\ & !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~2\);

-- Location: LCCOMB_X30_Y29_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X29_Y29_N3
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~q\);

-- Location: LCCOMB_X29_Y29_N4
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~q\ & ((GND) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~2\))) # 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~2\ $ (GND)))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~2\ = CARRY((\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~q\) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~2\);

-- Location: FF_X29_Y29_N5
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~q\);

-- Location: LCCOMB_X29_Y29_N6
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~2\ & VCC)) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~q\ & 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~2\))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~2\ = CARRY((!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~q\ & !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~2\);

-- Location: FF_X29_Y29_N7
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~q\);

-- Location: LCCOMB_X29_Y29_N8
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~q\ & ((GND) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~2\))) # 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~2\ $ (GND)))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~2\ = CARRY((\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~q\) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~2\);

-- Location: FF_X29_Y29_N9
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~1_combout\,
	asdata => \Baud_Rate_Generator_1|baud_rate_reload\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~q\);

-- Location: LCCOMB_X29_Y29_N10
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~2\ & VCC)) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~q\ & 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~2\))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~2\ = CARRY((!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~q\ & !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~2\);

-- Location: FF_X29_Y29_N11
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~1_combout\,
	asdata => \Baud_Rate_Generator_1|baud_rate_reload\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~q\);

-- Location: LCCOMB_X29_Y29_N12
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~q\ & ((GND) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~2\))) # 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~2\ $ (GND)))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~2\ = CARRY((\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~q\) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~2\);

-- Location: FF_X29_Y29_N13
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~q\);

-- Location: LCCOMB_X29_Y29_N14
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~2\ & VCC)) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~q\ & 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~2\))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~2\ = CARRY((!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~q\ & !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~2\);

-- Location: FF_X29_Y29_N15
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~1_combout\,
	asdata => \Baud_Rate_Generator_1|baud_rate_reload\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~q\);

-- Location: LCCOMB_X29_Y29_N30
\Baud_Rate_Generator_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|Equal0~1_combout\ = (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~q\ & (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~q\ & (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~q\ & 
-- !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[6]~q\,
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~q\,
	datac => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[4]~q\,
	datad => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[5]~q\,
	combout => \Baud_Rate_Generator_1|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y29_N16
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~q\ & ((GND) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~2\))) # 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~2\ $ (GND)))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~2\ = CARRY((\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~q\) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[7]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~2\);

-- Location: FF_X29_Y29_N17
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~1_combout\,
	asdata => \Baud_Rate_Generator_1|baud_rate_reload\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~q\);

-- Location: LCCOMB_X29_Y29_N18
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~2\ & VCC)) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~q\ & 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~2\))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~2\ = CARRY((!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~q\ & !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~2\);

-- Location: FF_X29_Y29_N19
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~q\);

-- Location: LCCOMB_X29_Y29_N20
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~q\ & ((GND) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~2\))) # 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~2\ $ (GND)))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~2\ = CARRY((\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~q\) # (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~2\);

-- Location: FF_X29_Y29_N21
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~q\);

-- Location: LCCOMB_X29_Y29_N22
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~1_combout\ = (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~q\ & (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~2\ & VCC)) # 
-- (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~q\ & (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~2\))
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~2\ = CARRY((!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~q\ & !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~q\,
	datad => VCC,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~1_combout\,
	cout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~2\);

-- Location: FF_X29_Y29_N23
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~q\);

-- Location: LCCOMB_X29_Y29_N24
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~1_combout\ = \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~2\ $ (\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~q\,
	cin => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~2\,
	combout => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~1_combout\);

-- Location: FF_X29_Y29_N25
\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~1_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Baud_Rate_Generator_1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~q\);

-- Location: LCCOMB_X30_Y29_N20
\Baud_Rate_Generator_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|Equal0~2_combout\ = (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~q\ & (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~q\ & (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~q\ & 
-- !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[9]~q\,
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[11]~q\,
	datac => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[8]~q\,
	datad => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[10]~q\,
	combout => \Baud_Rate_Generator_1|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y29_N28
\Baud_Rate_Generator_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|Equal0~0_combout\ = (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~q\ & (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~q\ & (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~q\ & 
-- !\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[3]~q\,
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[1]~q\,
	datac => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[2]~q\,
	datad => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[0]~q\,
	combout => \Baud_Rate_Generator_1|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y29_N26
\Baud_Rate_Generator_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Baud_Rate_Generator_1|Equal0~3_combout\ = (\Baud_Rate_Generator_1|Equal0~1_combout\ & (!\Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~q\ & (\Baud_Rate_Generator_1|Equal0~2_combout\ & \Baud_Rate_Generator_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|Equal0~1_combout\,
	datab => \Baud_Rate_Generator_1|baud_rate_gen:Baud_rate_cnt[12]~q\,
	datac => \Baud_Rate_Generator_1|Equal0~2_combout\,
	datad => \Baud_Rate_Generator_1|Equal0~0_combout\,
	combout => \Baud_Rate_Generator_1|Equal0~3_combout\);

-- Location: FF_X29_Y29_N27
\Baud_Rate_Generator_1|Baud_Rate_Enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Baud_Rate_Generator_1|Equal0~3_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\);

-- Location: LCCOMB_X28_Y30_N10
\Maser_Mux_ADXL345_1|no_of_chars[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[0]~10_combout\ = \Maser_Mux_ADXL345_1|no_of_chars\(0) $ (VCC)
-- \Maser_Mux_ADXL345_1|no_of_chars[0]~11\ = CARRY(\Maser_Mux_ADXL345_1|no_of_chars\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(0),
	datad => VCC,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[0]~10_combout\,
	cout => \Maser_Mux_ADXL345_1|no_of_chars[0]~11\);

-- Location: LCCOMB_X28_Y30_N0
\Maser_Mux_ADXL345_1|no_of_chars[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\ = (\Maser_Mux_ADXL345_1|Selector7~0_combout\) # ((\Maser_Mux_ADXL345_1|Equal2~2_combout\ & (\Maser_Mux_ADXL345_1|tx_state.send_stop~q\ & \Baud_Rate_Generator_1|Baud_Rate_Enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Equal2~2_combout\,
	datab => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	datac => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	datad => \Maser_Mux_ADXL345_1|Selector7~0_combout\,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\);

-- Location: FF_X28_Y30_N11
\Maser_Mux_ADXL345_1|no_of_chars[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|no_of_chars[0]~10_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	ena => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars\(0));

-- Location: LCCOMB_X28_Y30_N12
\Maser_Mux_ADXL345_1|no_of_chars[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[1]~12_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(1) & (!\Maser_Mux_ADXL345_1|no_of_chars[0]~11\)) # (!\Maser_Mux_ADXL345_1|no_of_chars\(1) & ((\Maser_Mux_ADXL345_1|no_of_chars[0]~11\) # (GND)))
-- \Maser_Mux_ADXL345_1|no_of_chars[1]~13\ = CARRY((!\Maser_Mux_ADXL345_1|no_of_chars[0]~11\) # (!\Maser_Mux_ADXL345_1|no_of_chars\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(1),
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|no_of_chars[0]~11\,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[1]~12_combout\,
	cout => \Maser_Mux_ADXL345_1|no_of_chars[1]~13\);

-- Location: FF_X28_Y30_N13
\Maser_Mux_ADXL345_1|no_of_chars[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|no_of_chars[1]~12_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	ena => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars\(1));

-- Location: LCCOMB_X28_Y30_N14
\Maser_Mux_ADXL345_1|no_of_chars[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[2]~14_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(2) & (\Maser_Mux_ADXL345_1|no_of_chars[1]~13\ $ (GND))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(2) & (!\Maser_Mux_ADXL345_1|no_of_chars[1]~13\ & VCC))
-- \Maser_Mux_ADXL345_1|no_of_chars[2]~15\ = CARRY((\Maser_Mux_ADXL345_1|no_of_chars\(2) & !\Maser_Mux_ADXL345_1|no_of_chars[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|no_of_chars[1]~13\,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[2]~14_combout\,
	cout => \Maser_Mux_ADXL345_1|no_of_chars[2]~15\);

-- Location: FF_X28_Y30_N15
\Maser_Mux_ADXL345_1|no_of_chars[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|no_of_chars[2]~14_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	ena => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars\(2));

-- Location: LCCOMB_X24_Y29_N26
\i2c_master_1|busy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|busy~2_combout\ = (!\Maser_i2c_Controller_1|Enable_i~q\ & !\i2c_master_1|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|Enable_i~q\,
	datad => \i2c_master_1|busy~q\,
	combout => \i2c_master_1|busy~2_combout\);

-- Location: LCCOMB_X24_Y30_N12
\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & (!\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\ & (!\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\ & 
-- !\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	datac => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~0_combout\);

-- Location: FF_X24_Y30_N19
\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	sload => VCC,
	ena => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\);

-- Location: LCCOMB_X25_Y30_N8
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~1_combout\ = (\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ & VCC)) # (!\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ $ 
-- (VCC)))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~2\ = CARRY((!\i2c_master_1|busy~q\ & \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|busy~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\,
	datad => VCC,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~2\);

-- Location: LCCOMB_X24_Y30_N24
\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~0_combout\ = (!\Maser_Mux_ADXL345_1|Get_Sample_i~q\) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datad => \Maser_Mux_ADXL345_1|Get_Sample_i~q\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~0_combout\);

-- Location: LCCOMB_X25_Y30_N18
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~3_combout\ = (\RST_I_i~q\ & (((\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\ & \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\)) # 
-- (!\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_I_i~q\,
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\,
	datac => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~0_combout\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~3_combout\);

-- Location: FF_X25_Y30_N9
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~1_combout\,
	sclr => \Maser_i2c_Controller_1|ALT_INV_i2c_Controller_State.ReadDataXYZ~q\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\);

-- Location: LCCOMB_X25_Y30_N10
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~2\)) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~2\) # (GND)))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~2\ = CARRY((!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~2\) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\,
	datad => VCC,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~2\);

-- Location: FF_X25_Y30_N11
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~1_combout\,
	sclr => \Maser_i2c_Controller_1|ALT_INV_i2c_Controller_State.ReadDataXYZ~q\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\);

-- Location: LCCOMB_X25_Y30_N12
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~2\ $ (GND))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~2\ & VCC))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~2\ = CARRY((\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\,
	datad => VCC,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~2\);

-- Location: FF_X25_Y30_N13
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~1_combout\,
	sclr => \Maser_i2c_Controller_1|ALT_INV_i2c_Controller_State.ReadDataXYZ~q\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\);

-- Location: LCCOMB_X25_Y30_N14
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~1_combout\ = \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\ $ (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~1_combout\);

-- Location: FF_X25_Y30_N15
\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~1_combout\,
	sclr => \Maser_i2c_Controller_1|ALT_INV_i2c_Controller_State.ReadDataXYZ~q\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\);

-- Location: LCCOMB_X25_Y30_N2
\Maser_i2c_Controller_1|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal10~0_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\,
	combout => \Maser_i2c_Controller_1|Equal10~0_combout\);

-- Location: LCCOMB_X24_Y30_N16
\Maser_i2c_Controller_1|Address_Lock_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Address_Lock_i~0_combout\ = (\RST_I_i~q\ & \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_I_i~q\,
	datad => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	combout => \Maser_i2c_Controller_1|Address_Lock_i~0_combout\);

-- Location: LCCOMB_X24_Y30_N18
\Maser_i2c_Controller_1|Address_Lock_i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Address_Lock_i~1_combout\ = (\Maser_i2c_Controller_1|Address_Lock_i~0_combout\ & ((\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ & (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\)) # 
-- (!\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ & ((\i2c_master_1|busy~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\,
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\,
	datad => \Maser_i2c_Controller_1|Address_Lock_i~0_combout\,
	combout => \Maser_i2c_Controller_1|Address_Lock_i~1_combout\);

-- Location: LCCOMB_X24_Y30_N20
\Maser_i2c_Controller_1|Address_Lock_i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Address_Lock_i~2_combout\ = (\Maser_i2c_Controller_1|Address_Lock_i~1_combout\ & (\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ & (!\i2c_master_1|busy~q\))) # (!\Maser_i2c_Controller_1|Address_Lock_i~1_combout\ & 
-- (((\Maser_i2c_Controller_1|Address_Lock_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\,
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|Address_Lock_i~q\,
	datad => \Maser_i2c_Controller_1|Address_Lock_i~1_combout\,
	combout => \Maser_i2c_Controller_1|Address_Lock_i~2_combout\);

-- Location: FF_X24_Y30_N21
\Maser_i2c_Controller_1|Address_Lock_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Address_Lock_i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Address_Lock_i~q\);

-- Location: LCCOMB_X24_Y30_N0
\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~1_combout\ = (\i2c_master_1|busy~q\ & ((!\Maser_i2c_Controller_1|Address_Lock_i~q\) # (!\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\,
	datab => \Maser_i2c_Controller_1|Address_Lock_i~q\,
	datad => \i2c_master_1|busy~q\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~1_combout\);

-- Location: LCCOMB_X24_Y30_N2
\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~2_combout\ = (\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~1_combout\ & (((!\Maser_i2c_Controller_1|Equal10~0_combout\ & \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\)) # 
-- (!\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Equal10~0_combout\,
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~1_combout\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~2_combout\);

-- Location: LCCOMB_X24_Y30_N8
\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~3_combout\ = (\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ & ((\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~2_combout\)))) # (!\i2c_master_1|busy~q\ & 
-- (((\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~2_combout\) # (!\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\,
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\,
	datac => \i2c_master_1|busy~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~2_combout\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~3_combout\);

-- Location: LCCOMB_X24_Y30_N22
\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4_combout\ = (\RST_I_i~q\ & (((\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & !\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~3_combout\)) # 
-- (!\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datab => \RST_I_i~q\,
	datac => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~3_combout\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~0_combout\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4_combout\);

-- Location: FF_X24_Y30_N13
\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~0_combout\,
	ena => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\);

-- Location: LCCOMB_X25_Y30_N24
\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~0_combout\ = (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\ & (((!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\ & \i2c_master_1|busy~q\)))) # 
-- (!\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\ & (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\,
	datac => \i2c_master_1|busy~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~0_combout\);

-- Location: FF_X25_Y30_N25
\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~0_combout\,
	sclr => \Maser_i2c_Controller_1|ALT_INV_i2c_Controller_State.ReadDataXYZ~q\,
	ena => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\);

-- Location: LCCOMB_X24_Y30_N14
\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~0_combout\);

-- Location: FF_X24_Y30_N15
\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~0_combout\,
	ena => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\);

-- Location: LCCOMB_X23_Y30_N30
\Maser_i2c_Controller_1|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector49~0_combout\ = (\Maser_i2c_Controller_1|Enable_i~q\ & (((\i2c_master_1|busy~q\) # (!\Maser_i2c_Controller_1|Equal10~0_combout\)) # (!\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Enable_i~q\,
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	datac => \Maser_i2c_Controller_1|Equal10~0_combout\,
	datad => \i2c_master_1|busy~q\,
	combout => \Maser_i2c_Controller_1|Selector49~0_combout\);

-- Location: LCCOMB_X24_Y29_N8
\Maser_i2c_Controller_1|Enable_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Enable_i~0_combout\ = (\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ & ((\Maser_i2c_Controller_1|Selector49~0_combout\))) # (!\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ & (!\i2c_master_1|busy~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|busy~2_combout\,
	datab => \Maser_i2c_Controller_1|Selector49~0_combout\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\,
	combout => \Maser_i2c_Controller_1|Enable_i~0_combout\);

-- Location: LCCOMB_X23_Y27_N4
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~0_combout\ = !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~0_combout\);

-- Location: LCCOMB_X23_Y29_N16
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~1_combout\ = \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~q\ $ (VCC)
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~2\ = CARRY(\Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~q\,
	datad => VCC,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~2\);

-- Location: LCCOMB_X23_Y29_N14
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\) # (\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\);

-- Location: LCCOMB_X23_Y29_N26
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~2\)) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\ & 
-- ((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~2\) # (GND)))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~2\ = CARRY((!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~2\) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\,
	datad => VCC,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~2\);

-- Location: LCCOMB_X23_Y29_N28
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~2\ $ (GND))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\ & 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~2\ & VCC))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~2\ = CARRY((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\,
	datad => VCC,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~2\);

-- Location: FF_X23_Y29_N29
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\);

-- Location: LCCOMB_X23_Y29_N30
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~4_combout\ = \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~q\ $ (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~q\,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~4_combout\);

-- Location: FF_X23_Y29_N31
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~4_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~q\);

-- Location: LCCOMB_X23_Y29_N4
\Maser_i2c_Controller_1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal1~1_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~q\,
	combout => \Maser_i2c_Controller_1|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y29_N10
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~1_combout\ = (\Maser_i2c_Controller_1|Equal1~1_combout\ & ((\Maser_i2c_Controller_1|Equal1~0_combout\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\))) # 
-- (!\Maser_i2c_Controller_1|Equal1~0_combout\ & (\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\)))) # (!\Maser_i2c_Controller_1|Equal1~1_combout\ & (\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	datac => \Maser_i2c_Controller_1|Equal1~1_combout\,
	datad => \Maser_i2c_Controller_1|Equal1~0_combout\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~1_combout\);

-- Location: LCCOMB_X23_Y29_N0
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~4_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~4_combout\);

-- Location: LCCOMB_X24_Y29_N30
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~5_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~q\ & (((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~4_combout\) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\)) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~4_combout\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~5_combout\);

-- Location: LCCOMB_X23_Y29_N8
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~2_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~1_combout\) # ((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~5_combout\ & 
-- \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~1_combout\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~5_combout\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~2_combout\);

-- Location: LCCOMB_X23_Y29_N2
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\ = (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & ((\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\)) # (!\i2c_master_1|busy~q\ & 
-- ((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|busy~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~2_combout\,
	datad => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\);

-- Location: FF_X23_Y29_N17
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~q\);

-- Location: LCCOMB_X23_Y29_N18
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~2\)) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~q\ & 
-- ((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~2\) # (GND)))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~2\ = CARRY((!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~2\) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~q\,
	datad => VCC,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[0]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~2\);

-- Location: FF_X23_Y29_N19
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~q\);

-- Location: LCCOMB_X23_Y29_N20
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~2\ $ (GND))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\ & 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~2\ & VCC))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~2\ = CARRY((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\,
	datad => VCC,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[1]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~2\);

-- Location: FF_X23_Y29_N21
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~q\);

-- Location: LCCOMB_X23_Y29_N22
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~2\)) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\ & 
-- ((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~2\) # (GND)))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~2\ = CARRY((!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~2\) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\,
	datad => VCC,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~2\);

-- Location: FF_X23_Y29_N23
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\);

-- Location: LCCOMB_X23_Y29_N24
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~2\ $ (GND))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\ & 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~2\ & VCC))
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~2\ = CARRY((\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\,
	datad => VCC,
	cin => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~2\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~1_combout\,
	cout => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~2\);

-- Location: FF_X23_Y29_N25
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\);

-- Location: FF_X23_Y29_N27
\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[2]~3_combout\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\);

-- Location: LCCOMB_X23_Y29_N6
\Maser_i2c_Controller_1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal1~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\ & 
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[5]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[4]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[3]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Count[6]~q\,
	combout => \Maser_i2c_Controller_1|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y29_N16
\Maser_i2c_Controller_1|Maser_i2c_Control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\ = (\Maser_i2c_Controller_1|Equal1~0_combout\ & (\Maser_i2c_Controller_1|Equal1~1_combout\ & !\i2c_master_1|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Equal1~0_combout\,
	datac => \Maser_i2c_Controller_1|Equal1~1_combout\,
	datad => \i2c_master_1|busy~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\);

-- Location: LCCOMB_X24_Y29_N28
\Maser_i2c_Controller_1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector26~0_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\ & (((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\)))) # 
-- (!\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\ & ((\i2c_master_1|busy~q\) # ((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\,
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector26~0_combout\);

-- Location: FF_X24_Y29_N29
\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector26~0_combout\,
	ena => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\);

-- Location: LCCOMB_X24_Y29_N10
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & (\Maser_i2c_Controller_1|Equal1~0_combout\ & (\Maser_i2c_Controller_1|Equal1~1_combout\ & !\i2c_master_1|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	datab => \Maser_i2c_Controller_1|Equal1~0_combout\,
	datac => \Maser_i2c_Controller_1|Equal1~1_combout\,
	datad => \i2c_master_1|busy~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\);

-- Location: LCCOMB_X23_Y27_N22
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~1_combout\ = (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~1_combout\);

-- Location: FF_X23_Y27_N5
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\);

-- Location: LCCOMB_X23_Y27_N12
\Maser_i2c_Controller_1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Add0~1_combout\ = \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ $ (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	combout => \Maser_i2c_Controller_1|Add0~1_combout\);

-- Location: FF_X23_Y27_N13
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Add0~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\);

-- Location: LCCOMB_X23_Y27_N18
\Maser_i2c_Controller_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Add0~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	combout => \Maser_i2c_Controller_1|Add0~0_combout\);

-- Location: LCCOMB_X23_Y27_N6
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~1_combout\ = \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ $ (((\Maser_i2c_Controller_1|Add0~0_combout\ & (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Add0~0_combout\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~1_combout\);

-- Location: FF_X23_Y27_N7
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\);

-- Location: LCCOMB_X23_Y27_N16
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~0_combout\ = \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ $ (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~1_combout\ & (\Maser_i2c_Controller_1|Add0~0_combout\ & 
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~1_combout\,
	datab => \Maser_i2c_Controller_1|Add0~0_combout\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~0_combout\);

-- Location: FF_X23_Y27_N17
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\);

-- Location: LCCOMB_X23_Y27_N0
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~0_combout\);

-- Location: LCCOMB_X23_Y27_N26
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~2_combout\ = \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ $ (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~0_combout\,
	combout => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~2_combout\);

-- Location: FF_X23_Y27_N27
\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\);

-- Location: LCCOMB_X23_Y30_N26
\Maser_i2c_Controller_1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal2~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y30_N0
\Maser_i2c_Controller_1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal2~1_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & (\Maser_i2c_Controller_1|Equal2~0_combout\ & 
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datac => \Maser_i2c_Controller_1|Equal2~0_combout\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	combout => \Maser_i2c_Controller_1|Equal2~1_combout\);

-- Location: LCCOMB_X23_Y30_N20
\Maser_i2c_Controller_1|Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector83~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\) # ((\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\ & 
-- \Maser_i2c_Controller_1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|busy~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\,
	datac => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datad => \Maser_i2c_Controller_1|Equal2~1_combout\,
	combout => \Maser_i2c_Controller_1|Selector83~0_combout\);

-- Location: FF_X23_Y30_N21
\Maser_i2c_Controller_1|i2c_Controller_State.Initialization\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector83~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\);

-- Location: LCCOMB_X23_Y30_N22
\Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\ = (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & \RST_I_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datad => \RST_I_i~q\,
	combout => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\);

-- Location: LCCOMB_X24_Y29_N0
\Maser_i2c_Controller_1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector27~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\) # ((!\i2c_master_1|busy~q\ & \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector27~0_combout\);

-- Location: FF_X24_Y29_N1
\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector27~0_combout\,
	ena => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\);

-- Location: LCCOMB_X24_Y29_N24
\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~3_combout\ = (\i2c_master_1|busy~q\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\))) # 
-- (!\Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\ & (\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\)))) # (!\i2c_master_1|busy~q\ & (((\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|busy~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	combout => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~3_combout\);

-- Location: FF_X24_Y29_N25
\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\);

-- Location: LCCOMB_X24_Y29_N6
\Maser_i2c_Controller_1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector28~0_combout\ = (\i2c_master_1|busy~q\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\) # ((\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\)))) # (!\i2c_master_1|busy~q\ & (((\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|busy~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector28~0_combout\);

-- Location: FF_X24_Y29_N7
\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector28~0_combout\,
	ena => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\);

-- Location: LCCOMB_X24_Y29_N20
\Maser_i2c_Controller_1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector30~0_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\) # ((!\i2c_master_1|busy~q\ & 
-- \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\)))) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\ & (!\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\,
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector30~0_combout\);

-- Location: FF_X24_Y29_N21
\Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector30~0_combout\,
	ena => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\);

-- Location: LCCOMB_X23_Y30_N4
\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~0_combout\ = (\Maser_i2c_Controller_1|Equal2~1_combout\) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\,
	datad => \Maser_i2c_Controller_1|Equal2~1_combout\,
	combout => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~0_combout\);

-- Location: LCCOMB_X23_Y30_N8
\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~2_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\) # 
-- (\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	combout => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~2_combout\);

-- Location: LCCOMB_X23_Y30_N16
\Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~1_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\ & \Maser_i2c_Controller_1|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\,
	datad => \Maser_i2c_Controller_1|Equal2~1_combout\,
	combout => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~1_combout\);

-- Location: FF_X23_Y30_N17
\Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~1_combout\,
	ena => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~q\);

-- Location: LCCOMB_X23_Y30_N6
\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~1_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~q\) # ((!\i2c_master_1|busy~q\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\) # 
-- (!\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~q\,
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\,
	combout => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~1_combout\);

-- Location: LCCOMB_X23_Y30_N28
\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~3_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\ & (!\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~1_combout\ & 
-- ((\Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~2_combout\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~1_combout\,
	combout => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~3_combout\);

-- Location: FF_X23_Y30_N5
\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~0_combout\,
	ena => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\);

-- Location: LCCOMB_X24_Y29_N12
\Maser_i2c_Controller_1|Selector73~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector73~2_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\ & !\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\,
	combout => \Maser_i2c_Controller_1|Selector73~2_combout\);

-- Location: LCCOMB_X24_Y29_N4
\Maser_i2c_Controller_1|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector73~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\) # ((!\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\ & (\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\ & 
-- !\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~q\,
	combout => \Maser_i2c_Controller_1|Selector73~0_combout\);

-- Location: LCCOMB_X24_Y29_N18
\Maser_i2c_Controller_1|Selector73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector73~1_combout\ = (\Maser_i2c_Controller_1|Enable_i~q\ & ((\Maser_i2c_Controller_1|Selector73~0_combout\) # ((\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Byte_Write~q\,
	datab => \Maser_i2c_Controller_1|Enable_i~q\,
	datac => \Maser_i2c_Controller_1|Selector73~0_combout\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector73~1_combout\);

-- Location: LCCOMB_X24_Y29_N22
\Maser_i2c_Controller_1|Selector73~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector73~3_combout\ = (\Maser_i2c_Controller_1|Selector73~1_combout\) # ((!\Maser_i2c_Controller_1|Selector73~2_combout\ & (!\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & !\i2c_master_1|busy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Selector73~2_combout\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datac => \i2c_master_1|busy~2_combout\,
	datad => \Maser_i2c_Controller_1|Selector73~1_combout\,
	combout => \Maser_i2c_Controller_1|Selector73~3_combout\);

-- Location: FF_X24_Y29_N9
\Maser_i2c_Controller_1|Enable_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Enable_i~0_combout\,
	asdata => \Maser_i2c_Controller_1|Selector73~3_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Maser_i2c_Controller_1|ALT_INV_i2c_Controller_State.ReadDataXYZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Enable_i~q\);

-- Location: LCCOMB_X19_Y29_N0
\i2c_master_1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector0~1_combout\ = (\i2c_master_1|state.wr~q\) # ((\i2c_master_1|state.rd~q\) # ((!\i2c_master_1|state.ready~q\ & \Maser_i2c_Controller_1|Enable_i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.wr~q\,
	datab => \i2c_master_1|state.ready~q\,
	datac => \i2c_master_1|state.rd~q\,
	datad => \Maser_i2c_Controller_1|Enable_i~q\,
	combout => \i2c_master_1|Selector0~1_combout\);

-- Location: LCCOMB_X20_Y29_N16
\i2c_master_1|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector0~2_combout\ = (!\i2c_master_1|state.mstr_ack~q\ & !\i2c_master_1|state.slv_ack2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.mstr_ack~q\,
	datad => \i2c_master_1|state.slv_ack2~q\,
	combout => \i2c_master_1|Selector0~2_combout\);

-- Location: LCCOMB_X18_Y29_N12
\i2c_master_1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Equal1~0_combout\ = (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(1) & \i2c_master_1|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datac => \i2c_master_1|bit_cnt\(1),
	datad => \i2c_master_1|bit_cnt\(2),
	combout => \i2c_master_1|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y29_N4
\i2c_master_1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector19~0_combout\ = (\i2c_master_1|state.start~q\) # ((!\i2c_master_1|Equal1~0_combout\ & \i2c_master_1|state.command~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|Equal1~0_combout\,
	datac => \i2c_master_1|state.command~q\,
	datad => \i2c_master_1|state.start~q\,
	combout => \i2c_master_1|Selector19~0_combout\);

-- Location: FF_X18_Y29_N5
\i2c_master_1|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|Selector19~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.command~q\);

-- Location: LCCOMB_X18_Y29_N0
\i2c_master_1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector0~0_combout\ = (\i2c_master_1|state.start~q\) # ((!\i2c_master_1|busy~q\ & ((\i2c_master_1|state.slv_ack1~q\) # (\i2c_master_1|state.command~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.slv_ack1~q\,
	datab => \i2c_master_1|state.command~q\,
	datac => \i2c_master_1|busy~q\,
	datad => \i2c_master_1|state.start~q\,
	combout => \i2c_master_1|Selector0~0_combout\);

-- Location: LCCOMB_X20_Y30_N8
\i2c_master_1|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector0~3_combout\ = (!\i2c_master_1|Selector0~1_combout\ & (!\i2c_master_1|Selector0~0_combout\ & ((\i2c_master_1|Selector0~2_combout\) # (!\i2c_master_1|busy~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Selector0~1_combout\,
	datab => \i2c_master_1|Selector0~2_combout\,
	datac => \i2c_master_1|Selector0~0_combout\,
	datad => \i2c_master_1|busy~2_combout\,
	combout => \i2c_master_1|Selector0~3_combout\);

-- Location: FF_X20_Y30_N9
\i2c_master_1|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|Selector0~3_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|busy~q\);

-- Location: LCCOMB_X24_Y30_N28
\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~5_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\) # 
-- (!\i2c_master_1|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\,
	datad => \i2c_master_1|busy~q\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~5_combout\);

-- Location: FF_X24_Y30_N29
\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~5_combout\,
	ena => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~q\);

-- Location: LCCOMB_X21_Y30_N16
\Maser_i2c_Controller_1|Selector56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector56~2_combout\ = (\Maser_i2c_Controller_1|Ready_i~q\ & ((\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\) # (!\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|Ready_i~q\,
	datac => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~q\,
	combout => \Maser_i2c_Controller_1|Selector56~2_combout\);

-- Location: LCCOMB_X21_Y30_N2
\Maser_i2c_Controller_1|Selector56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector56~3_combout\ = (\Maser_i2c_Controller_1|Selector56~2_combout\) # ((\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\ & \Maser_i2c_Controller_1|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|busy~q\,
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	datac => \Maser_i2c_Controller_1|Equal10~0_combout\,
	datad => \Maser_i2c_Controller_1|Selector56~2_combout\,
	combout => \Maser_i2c_Controller_1|Selector56~3_combout\);

-- Location: FF_X21_Y30_N3
\Maser_i2c_Controller_1|Ready_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector56~3_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Ready_i~q\);

-- Location: FF_X27_Y30_N7
\Maser_Mux_ADXL345_1|send_msg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|send_msg~q\);

-- Location: LCCOMB_X28_Y30_N2
\Maser_Mux_ADXL345_1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector0~0_combout\ = ((\Maser_Mux_ADXL345_1|busy_i~q\ & ((!\Maser_Mux_ADXL345_1|Equal2~2_combout\) # (!\Maser_Mux_ADXL345_1|Selector2~0_combout\)))) # (!\Maser_Mux_ADXL345_1|tx_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datab => \Maser_Mux_ADXL345_1|busy_i~q\,
	datac => \Maser_Mux_ADXL345_1|Selector2~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Equal2~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y30_N30
\Maser_Mux_ADXL345_1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector0~1_combout\ = (\Maser_Mux_ADXL345_1|Selector0~0_combout\ & ((\Maser_Mux_ADXL345_1|tx_state.idle~q\ & ((\Maser_Mux_ADXL345_1|busy_i~q\))) # (!\Maser_Mux_ADXL345_1|tx_state.idle~q\ & (\Maser_Mux_ADXL345_1|send_msg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datab => \Maser_Mux_ADXL345_1|send_msg~q\,
	datac => \Maser_Mux_ADXL345_1|busy_i~q\,
	datad => \Maser_Mux_ADXL345_1|Selector0~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector0~1_combout\);

-- Location: FF_X28_Y30_N31
\Maser_Mux_ADXL345_1|busy_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector0~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|busy_i~q\);

-- Location: LCCOMB_X25_Y31_N0
\Maser_Mux_ADXL345_1|gen_tx_ser_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|gen_tx_ser_data~0_combout\ = (\Maser_i2c_Controller_1|Ready_i~q\ & !\Maser_Mux_ADXL345_1|busy_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Ready_i~q\,
	datad => \Maser_Mux_ADXL345_1|busy_i~q\,
	combout => \Maser_Mux_ADXL345_1|gen_tx_ser_data~0_combout\);

-- Location: FF_X25_Y31_N1
\Maser_Mux_ADXL345_1|Send_Operation\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|gen_tx_ser_data~0_combout\,
	ena => \RST_I_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|Send_Operation~q\);

-- Location: LCCOMB_X26_Y30_N30
\Maser_Mux_ADXL345_1|no_of_chars2send[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars2send[0]~0_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars2send\(0)) # ((\Maser_Mux_ADXL345_1|Send_Operation~q\ & \RST_I_i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	datab => \RST_I_i~q\,
	datad => \Maser_Mux_ADXL345_1|no_of_chars2send\(0),
	combout => \Maser_Mux_ADXL345_1|no_of_chars2send[0]~0_combout\);

-- Location: FF_X27_Y30_N13
\Maser_Mux_ADXL345_1|no_of_chars2send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_Mux_ADXL345_1|no_of_chars2send[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars2send\(0));

-- Location: LCCOMB_X27_Y30_N12
\Maser_Mux_ADXL345_1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Equal2~1_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(2) & (\Maser_Mux_ADXL345_1|no_of_chars\(0) & (\Maser_Mux_ADXL345_1|no_of_chars2send\(0) & \Maser_Mux_ADXL345_1|no_of_chars\(1)))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(2) & 
-- (!\Maser_Mux_ADXL345_1|no_of_chars\(0) & (!\Maser_Mux_ADXL345_1|no_of_chars2send\(0) & !\Maser_Mux_ADXL345_1|no_of_chars\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(0),
	datac => \Maser_Mux_ADXL345_1|no_of_chars2send\(0),
	datad => \Maser_Mux_ADXL345_1|no_of_chars\(1),
	combout => \Maser_Mux_ADXL345_1|Equal2~1_combout\);

-- Location: LCCOMB_X28_Y30_N16
\Maser_Mux_ADXL345_1|no_of_chars[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[3]~16_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(3) & (!\Maser_Mux_ADXL345_1|no_of_chars[2]~15\)) # (!\Maser_Mux_ADXL345_1|no_of_chars\(3) & ((\Maser_Mux_ADXL345_1|no_of_chars[2]~15\) # (GND)))
-- \Maser_Mux_ADXL345_1|no_of_chars[3]~17\ = CARRY((!\Maser_Mux_ADXL345_1|no_of_chars[2]~15\) # (!\Maser_Mux_ADXL345_1|no_of_chars\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(3),
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|no_of_chars[2]~15\,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[3]~16_combout\,
	cout => \Maser_Mux_ADXL345_1|no_of_chars[3]~17\);

-- Location: FF_X28_Y30_N17
\Maser_Mux_ADXL345_1|no_of_chars[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|no_of_chars[3]~16_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	ena => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars\(3));

-- Location: LCCOMB_X28_Y30_N18
\Maser_Mux_ADXL345_1|no_of_chars[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[4]~18_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(4) & (\Maser_Mux_ADXL345_1|no_of_chars[3]~17\ $ (GND))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(4) & (!\Maser_Mux_ADXL345_1|no_of_chars[3]~17\ & VCC))
-- \Maser_Mux_ADXL345_1|no_of_chars[4]~19\ = CARRY((\Maser_Mux_ADXL345_1|no_of_chars\(4) & !\Maser_Mux_ADXL345_1|no_of_chars[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(4),
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|no_of_chars[3]~17\,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[4]~18_combout\,
	cout => \Maser_Mux_ADXL345_1|no_of_chars[4]~19\);

-- Location: FF_X28_Y30_N19
\Maser_Mux_ADXL345_1|no_of_chars[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|no_of_chars[4]~18_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	ena => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars\(4));

-- Location: LCCOMB_X28_Y30_N20
\Maser_Mux_ADXL345_1|no_of_chars[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[5]~20_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(5) & (!\Maser_Mux_ADXL345_1|no_of_chars[4]~19\)) # (!\Maser_Mux_ADXL345_1|no_of_chars\(5) & ((\Maser_Mux_ADXL345_1|no_of_chars[4]~19\) # (GND)))
-- \Maser_Mux_ADXL345_1|no_of_chars[5]~21\ = CARRY((!\Maser_Mux_ADXL345_1|no_of_chars[4]~19\) # (!\Maser_Mux_ADXL345_1|no_of_chars\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(5),
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|no_of_chars[4]~19\,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[5]~20_combout\,
	cout => \Maser_Mux_ADXL345_1|no_of_chars[5]~21\);

-- Location: FF_X28_Y30_N21
\Maser_Mux_ADXL345_1|no_of_chars[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|no_of_chars[5]~20_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	ena => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars\(5));

-- Location: LCCOMB_X28_Y30_N22
\Maser_Mux_ADXL345_1|no_of_chars[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[6]~22_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(6) & (\Maser_Mux_ADXL345_1|no_of_chars[5]~21\ $ (GND))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(6) & (!\Maser_Mux_ADXL345_1|no_of_chars[5]~21\ & VCC))
-- \Maser_Mux_ADXL345_1|no_of_chars[6]~23\ = CARRY((\Maser_Mux_ADXL345_1|no_of_chars\(6) & !\Maser_Mux_ADXL345_1|no_of_chars[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(6),
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|no_of_chars[5]~21\,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[6]~22_combout\,
	cout => \Maser_Mux_ADXL345_1|no_of_chars[6]~23\);

-- Location: FF_X28_Y30_N23
\Maser_Mux_ADXL345_1|no_of_chars[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|no_of_chars[6]~22_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	ena => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars\(6));

-- Location: LCCOMB_X28_Y30_N24
\Maser_Mux_ADXL345_1|no_of_chars[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|no_of_chars[7]~24_combout\ = \Maser_Mux_ADXL345_1|no_of_chars[6]~23\ $ (\Maser_Mux_ADXL345_1|no_of_chars\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Maser_Mux_ADXL345_1|no_of_chars\(7),
	cin => \Maser_Mux_ADXL345_1|no_of_chars[6]~23\,
	combout => \Maser_Mux_ADXL345_1|no_of_chars[7]~24_combout\);

-- Location: FF_X28_Y30_N25
\Maser_Mux_ADXL345_1|no_of_chars[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|no_of_chars[7]~24_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	ena => \Maser_Mux_ADXL345_1|no_of_chars[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|no_of_chars\(7));

-- Location: LCCOMB_X28_Y30_N26
\Maser_Mux_ADXL345_1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Equal2~0_combout\ = (!\Maser_Mux_ADXL345_1|no_of_chars\(6) & (!\Maser_Mux_ADXL345_1|no_of_chars\(5) & (!\Maser_Mux_ADXL345_1|no_of_chars\(4) & !\Maser_Mux_ADXL345_1|no_of_chars\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(6),
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(5),
	datac => \Maser_Mux_ADXL345_1|no_of_chars\(4),
	datad => \Maser_Mux_ADXL345_1|no_of_chars\(7),
	combout => \Maser_Mux_ADXL345_1|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y30_N14
\Maser_Mux_ADXL345_1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Equal2~2_combout\ = (\Maser_Mux_ADXL345_1|Equal2~1_combout\ & (\Maser_Mux_ADXL345_1|Equal2~0_combout\ & (\Maser_Mux_ADXL345_1|no_of_chars\(3) $ (!\Maser_Mux_ADXL345_1|no_of_chars2send\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Equal2~1_combout\,
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(3),
	datac => \Maser_Mux_ADXL345_1|no_of_chars2send\(0),
	datad => \Maser_Mux_ADXL345_1|Equal2~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Equal2~2_combout\);

-- Location: LCCOMB_X27_Y30_N22
\Maser_Mux_ADXL345_1|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector3~4_combout\ = (\Maser_Mux_ADXL345_1|Selector2~0_combout\ & (((!\Maser_Mux_ADXL345_1|Equal2~2_combout\)))) # (!\Maser_Mux_ADXL345_1|Selector2~0_combout\ & (!\Maser_Mux_ADXL345_1|tx_state.idle~q\ & 
-- ((\Maser_Mux_ADXL345_1|send_msg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Selector2~0_combout\,
	datab => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datac => \Maser_Mux_ADXL345_1|Equal2~2_combout\,
	datad => \Maser_Mux_ADXL345_1|send_msg~q\,
	combout => \Maser_Mux_ADXL345_1|Selector3~4_combout\);

-- Location: FF_X27_Y30_N23
\Maser_Mux_ADXL345_1|tx_state.sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector3~4_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|tx_state.sync~q\);

-- Location: LCCOMB_X27_Y30_N0
\Maser_Mux_ADXL345_1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector4~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.sync~q\) # ((!\Baud_Rate_Generator_1|Baud_Rate_Enable~q\ & \Maser_Mux_ADXL345_1|tx_state.send_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	datac => \Maser_Mux_ADXL345_1|tx_state.send_start~q\,
	datad => \Maser_Mux_ADXL345_1|tx_state.sync~q\,
	combout => \Maser_Mux_ADXL345_1|Selector4~0_combout\);

-- Location: FF_X27_Y30_N1
\Maser_Mux_ADXL345_1|tx_state.send_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector4~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|tx_state.send_start~q\);

-- Location: LCCOMB_X27_Y31_N4
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~1_combout\ = \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~q\ $ (VCC)
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~2\ = CARRY(\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~q\,
	datad => VCC,
	combout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~1_combout\,
	cout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~2\);

-- Location: LCCOMB_X27_Y29_N10
\Maser_Mux_ADXL345_1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector11~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & (\Maser_Mux_ADXL345_1|Equal0~0_combout\ & !\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datab => \Maser_Mux_ADXL345_1|Equal0~0_combout\,
	datac => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Selector11~0_combout\);

-- Location: LCCOMB_X28_Y30_N4
\Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.idle~q\ & (\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & ((\Baud_Rate_Generator_1|Baud_Rate_Enable~q\)))) # (!\Maser_Mux_ADXL345_1|tx_state.idle~q\ & 
-- ((\Maser_Mux_ADXL345_1|send_msg~q\) # ((\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & \Baud_Rate_Generator_1|Baud_Rate_Enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datab => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datac => \Maser_Mux_ADXL345_1|send_msg~q\,
	datad => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	combout => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~0_combout\);

-- Location: FF_X27_Y29_N11
\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector11~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\);

-- Location: LCCOMB_X27_Y29_N28
\Maser_Mux_ADXL345_1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector10~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & (\Maser_Mux_ADXL345_1|Equal0~0_combout\ & (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ $ (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datab => \Maser_Mux_ADXL345_1|Equal0~0_combout\,
	datac => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Selector10~0_combout\);

-- Location: FF_X27_Y29_N29
\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector10~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\);

-- Location: LCCOMB_X28_Y29_N26
\Maser_Mux_ADXL345_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Add1~0_combout\ = \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ $ (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Add1~0_combout\);

-- Location: LCCOMB_X28_Y29_N28
\Maser_Mux_ADXL345_1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector9~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & (\Maser_Mux_ADXL345_1|Equal0~0_combout\ & \Maser_Mux_ADXL345_1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datac => \Maser_Mux_ADXL345_1|Equal0~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Add1~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector9~0_combout\);

-- Location: FF_X28_Y29_N29
\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector9~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\);

-- Location: LCCOMB_X28_Y29_N22
\Maser_Mux_ADXL345_1|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Add1~1_combout\ = \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~q\ $ (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datac => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Add1~1_combout\);

-- Location: LCCOMB_X28_Y29_N14
\Maser_Mux_ADXL345_1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector8~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & (\Maser_Mux_ADXL345_1|Equal0~0_combout\ & \Maser_Mux_ADXL345_1|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datac => \Maser_Mux_ADXL345_1|Equal0~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Add1~1_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector8~0_combout\);

-- Location: FF_X28_Y29_N15
\Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector8~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~q\);

-- Location: LCCOMB_X28_Y29_N8
\Maser_Mux_ADXL345_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Equal0~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\) # ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\) # ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datac => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[3]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y31_N26
\Maser_Mux_ADXL345_1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector6~1_combout\ = (\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & (\Baud_Rate_Generator_1|Baud_Rate_Enable~q\ & \Maser_Mux_ADXL345_1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datac => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	datad => \Maser_Mux_ADXL345_1|Equal0~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector6~1_combout\);

-- Location: LCCOMB_X27_Y31_N28
\Maser_Mux_ADXL345_1|tx_state.CRC_ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|tx_state.CRC_ready~feeder_combout\ = \Maser_Mux_ADXL345_1|Selector6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_Mux_ADXL345_1|Selector6~1_combout\,
	combout => \Maser_Mux_ADXL345_1|tx_state.CRC_ready~feeder_combout\);

-- Location: LCCOMB_X27_Y30_N20
\Maser_Mux_ADXL345_1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector6~0_combout\ = (!\Maser_Mux_ADXL345_1|tx_state.sync~q\ & \Maser_Mux_ADXL345_1|tx_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_Mux_ADXL345_1|tx_state.sync~q\,
	datad => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	combout => \Maser_Mux_ADXL345_1|Selector6~0_combout\);

-- Location: LCCOMB_X27_Y31_N20
\Maser_Mux_ADXL345_1|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector6~2_combout\ = (\Baud_Rate_Generator_1|Baud_Rate_Enable~q\ & ((\Maser_Mux_ADXL345_1|tx_state.send_data~q\) # (!\Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\,
	datac => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	datad => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	combout => \Maser_Mux_ADXL345_1|Selector6~2_combout\);

-- Location: LCCOMB_X27_Y31_N30
\Maser_Mux_ADXL345_1|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector6~3_combout\ = ((\Maser_Mux_ADXL345_1|Selector6~2_combout\) # ((!\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & \Maser_Mux_ADXL345_1|Selector5~0_combout\))) # (!\Maser_Mux_ADXL345_1|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datab => \Maser_Mux_ADXL345_1|Selector5~0_combout\,
	datac => \Maser_Mux_ADXL345_1|Selector6~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Selector6~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector6~3_combout\);

-- Location: FF_X27_Y31_N29
\Maser_Mux_ADXL345_1|tx_state.CRC_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|tx_state.CRC_ready~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\);

-- Location: LCCOMB_X27_Y31_N12
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\ & (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~2\ $ (GND))) # (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\ & (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~2\ & 
-- VCC))
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~2\ = CARRY((\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\ & !\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\,
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~2\,
	combout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~1_combout\,
	cout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~2\);

-- Location: LCCOMB_X27_Y31_N14
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~2_combout\ = \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~q\ $ (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~q\,
	cin => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~2\,
	combout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~2_combout\);

-- Location: FF_X27_Y31_N15
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|ALT_INV_tx_state.CRC_ready~q\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~q\);

-- Location: LCCOMB_X27_Y31_N0
\Maser_Mux_ADXL345_1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Equal1~1_combout\ = (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~q\ & \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\,
	combout => \Maser_Mux_ADXL345_1|Equal1~1_combout\);

-- Location: LCCOMB_X27_Y31_N18
\Maser_Mux_ADXL345_1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Equal1~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~q\ & (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~q\ & (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~q\ & \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~q\,
	datac => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y31_N22
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\ = (\Maser_Mux_ADXL345_1|Selector6~1_combout\) # ((\Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\ & ((!\Maser_Mux_ADXL345_1|Equal1~0_combout\) # (!\Maser_Mux_ADXL345_1|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Equal1~1_combout\,
	datab => \Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\,
	datac => \Maser_Mux_ADXL345_1|Selector6~1_combout\,
	datad => \Maser_Mux_ADXL345_1|Equal1~0_combout\,
	combout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\);

-- Location: FF_X27_Y31_N5
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|ALT_INV_tx_state.CRC_ready~q\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~q\);

-- Location: LCCOMB_X27_Y31_N6
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~q\ & (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~2\)) # (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~2\) # (GND)))
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~2\ = CARRY((!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~2\) # (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~q\,
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[0]~2\,
	combout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~1_combout\,
	cout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~2\);

-- Location: FF_X27_Y31_N7
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|ALT_INV_tx_state.CRC_ready~q\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~q\);

-- Location: LCCOMB_X27_Y31_N8
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~q\ & (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~2\ $ (GND))) # (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~q\ & (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~2\ & 
-- VCC))
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~2\ = CARRY((\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~q\ & !\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~q\,
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[1]~2\,
	combout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~1_combout\,
	cout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~2\);

-- Location: FF_X27_Y31_N9
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|ALT_INV_tx_state.CRC_ready~q\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~q\);

-- Location: LCCOMB_X27_Y31_N10
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~q\ & (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~2\)) # (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~2\) # (GND)))
-- \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~2\ = CARRY((!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~2\) # (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~q\,
	datad => VCC,
	cin => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[2]~2\,
	combout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~1_combout\,
	cout => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~2\);

-- Location: FF_X27_Y31_N11
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|ALT_INV_tx_state.CRC_ready~q\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[3]~q\);

-- Location: FF_X27_Y31_N13
\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sclr => \Maser_Mux_ADXL345_1|ALT_INV_tx_state.CRC_ready~q\,
	ena => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\);

-- Location: LCCOMB_X27_Y31_N16
\Maser_Mux_ADXL345_1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector5~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\ & (\Maser_Mux_ADXL345_1|Equal1~0_combout\ & (!\Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~q\ & \Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[4]~q\,
	datab => \Maser_Mux_ADXL345_1|Equal1~0_combout\,
	datac => \Maser_Mux_ADXL345_1|uart_tx:Wait_cnt[5]~q\,
	datad => \Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\,
	combout => \Maser_Mux_ADXL345_1|Selector5~0_combout\);

-- Location: LCCOMB_X27_Y30_N30
\Maser_Mux_ADXL345_1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector5~1_combout\ = (\Maser_Mux_ADXL345_1|Selector5~0_combout\) # ((\Baud_Rate_Generator_1|Baud_Rate_Enable~q\ & (\Maser_Mux_ADXL345_1|tx_state.send_start~q\)) # (!\Baud_Rate_Generator_1|Baud_Rate_Enable~q\ & 
-- ((\Maser_Mux_ADXL345_1|tx_state.send_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	datab => \Maser_Mux_ADXL345_1|tx_state.send_start~q\,
	datac => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datad => \Maser_Mux_ADXL345_1|Selector5~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector5~1_combout\);

-- Location: FF_X27_Y30_N31
\Maser_Mux_ADXL345_1|tx_state.send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector5~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|tx_state.send_data~q\);

-- Location: LCCOMB_X27_Y30_N2
\Maser_Mux_ADXL345_1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector7~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & (\Baud_Rate_Generator_1|Baud_Rate_Enable~q\ & !\Maser_Mux_ADXL345_1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datac => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	datad => \Maser_Mux_ADXL345_1|Equal0~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector7~0_combout\);

-- Location: FF_X27_Y30_N3
\Maser_Mux_ADXL345_1|tx_state.send_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector7~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\);

-- Location: LCCOMB_X27_Y30_N26
\Maser_Mux_ADXL345_1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector2~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.send_stop~q\ & \Baud_Rate_Generator_1|Baud_Rate_Enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	datac => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	combout => \Maser_Mux_ADXL345_1|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y30_N16
\Maser_Mux_ADXL345_1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector2~1_combout\ = (\Maser_Mux_ADXL345_1|Selector2~0_combout\ & (!\Maser_Mux_ADXL345_1|Equal2~2_combout\)) # (!\Maser_Mux_ADXL345_1|Selector2~0_combout\ & (((\Maser_Mux_ADXL345_1|tx_state.idle~q\) # 
-- (\Maser_Mux_ADXL345_1|send_msg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Selector2~0_combout\,
	datab => \Maser_Mux_ADXL345_1|Equal2~2_combout\,
	datac => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datad => \Maser_Mux_ADXL345_1|send_msg~q\,
	combout => \Maser_Mux_ADXL345_1|Selector2~1_combout\);

-- Location: FF_X27_Y30_N17
\Maser_Mux_ADXL345_1|tx_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector2~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|tx_state.idle~q\);

-- Location: LCCOMB_X23_Y30_N10
\Maser_i2c_Controller_1|i2c_Controller_State~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Controller_State~10_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\ & (\i2c_master_1|busy~q\ & \Maser_i2c_Controller_1|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\,
	datac => \i2c_master_1|busy~q\,
	datad => \Maser_i2c_Controller_1|Equal2~1_combout\,
	combout => \Maser_i2c_Controller_1|i2c_Controller_State~10_combout\);

-- Location: LCCOMB_X23_Y30_N2
\Maser_i2c_Controller_1|Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector85~0_combout\ = (\Maser_i2c_Controller_1|initialation_Status_i~q\) # ((\Maser_i2c_Controller_1|i2c_Controller_State~10_combout\) # ((!\Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\ & 
-- \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.StopInitialization~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~q\,
	datad => \Maser_i2c_Controller_1|i2c_Controller_State~10_combout\,
	combout => \Maser_i2c_Controller_1|Selector85~0_combout\);

-- Location: LCCOMB_X23_Y30_N14
\Maser_i2c_Controller_1|Selector85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector85~1_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & ((\Maser_i2c_Controller_1|initialation_Status_i~q\) # ((!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- \Maser_i2c_Controller_1|Selector85~0_combout\)))) # (!\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & ((\Maser_i2c_Controller_1|Selector85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datac => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	datad => \Maser_i2c_Controller_1|Selector85~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector85~1_combout\);

-- Location: FF_X23_Y30_N15
\Maser_i2c_Controller_1|initialation_Status_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector85~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|initialation_Status_i~q\);

-- Location: LCCOMB_X28_Y30_N28
\Maser_Mux_ADXL345_1|Get_Sample_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Get_Sample_i~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.idle~q\ & (((\Maser_Mux_ADXL345_1|Selector2~0_combout\ & \Maser_Mux_ADXL345_1|Equal2~2_combout\)))) # (!\Maser_Mux_ADXL345_1|tx_state.idle~q\ & 
-- (!\Maser_i2c_Controller_1|initialation_Status_i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datab => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	datac => \Maser_Mux_ADXL345_1|Selector2~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Equal2~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Get_Sample_i~0_combout\);

-- Location: LCCOMB_X28_Y30_N6
\Maser_Mux_ADXL345_1|Initialization_lockout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Initialization_lockout~0_combout\ = (\Maser_Mux_ADXL345_1|tx_state.idle~q\ & ((\Maser_Mux_ADXL345_1|Initialization_lockout~q\))) # (!\Maser_Mux_ADXL345_1|tx_state.idle~q\ & (\Maser_i2c_Controller_1|initialation_Status_i~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datab => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	datac => \Maser_Mux_ADXL345_1|Initialization_lockout~q\,
	combout => \Maser_Mux_ADXL345_1|Initialization_lockout~0_combout\);

-- Location: FF_X28_Y30_N7
\Maser_Mux_ADXL345_1|Initialization_lockout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Initialization_lockout~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|Initialization_lockout~q\);

-- Location: LCCOMB_X28_Y30_N8
\Maser_Mux_ADXL345_1|Get_Sample_i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Get_Sample_i~1_combout\ = (\Maser_Mux_ADXL345_1|Get_Sample_i~0_combout\ & ((\Maser_Mux_ADXL345_1|tx_state.idle~q\) # ((\Maser_Mux_ADXL345_1|Initialization_lockout~q\)))) # (!\Maser_Mux_ADXL345_1|Get_Sample_i~0_combout\ & 
-- (((\Maser_Mux_ADXL345_1|Get_Sample_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datab => \Maser_Mux_ADXL345_1|Get_Sample_i~0_combout\,
	datac => \Maser_Mux_ADXL345_1|Get_Sample_i~q\,
	datad => \Maser_Mux_ADXL345_1|Initialization_lockout~q\,
	combout => \Maser_Mux_ADXL345_1|Get_Sample_i~1_combout\);

-- Location: FF_X28_Y30_N9
\Maser_Mux_ADXL345_1|Get_Sample_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Get_Sample_i~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|Get_Sample_i~q\);

-- Location: LCCOMB_X24_Y30_N6
\Maser_i2c_Controller_1|Selector84~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector84~2_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & (\Maser_Mux_ADXL345_1|Get_Sample_i~q\)) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & 
-- (((!\Maser_i2c_Controller_1|i2c_Controller_State.Idle~0_combout\ & \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Get_Sample_i~q\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~0_combout\,
	datac => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datad => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	combout => \Maser_i2c_Controller_1|Selector84~2_combout\);

-- Location: FF_X24_Y30_N7
\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector84~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\);

-- Location: LCCOMB_X23_Y30_N24
\Maser_i2c_Controller_1|i2c_Controller_State.Idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Controller_State.Idle~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & (\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~q\)) # (!\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & 
-- ((\Maser_i2c_Controller_1|i2c_Controller_State~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~q\,
	datad => \Maser_i2c_Controller_1|i2c_Controller_State~10_combout\,
	combout => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~0_combout\);

-- Location: LCCOMB_X24_Y30_N10
\Maser_Mux_ADXL345_1|Get_Sample_i~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Get_Sample_i~_wirecell_combout\ = !\Maser_Mux_ADXL345_1|Get_Sample_i~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_Mux_ADXL345_1|Get_Sample_i~q\,
	combout => \Maser_Mux_ADXL345_1|Get_Sample_i~_wirecell_combout\);

-- Location: FF_X23_Y30_N25
\Maser_i2c_Controller_1|i2c_Controller_State.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~0_combout\,
	asdata => \Maser_Mux_ADXL345_1|Get_Sample_i~_wirecell_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\);

-- Location: LCCOMB_X24_Y28_N18
\Maser_i2c_Controller_1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector7~0_combout\ = (\Maser_i2c_Controller_1|Slave_read_nWrite~q\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\ & ((!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\))) # 
-- (!\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\ & (!\i2c_master_1|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\,
	datab => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datac => \i2c_master_1|busy~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector7~0_combout\);

-- Location: LCCOMB_X24_Y28_N20
\Maser_i2c_Controller_1|Slave_read_nWrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Slave_read_nWrite~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & (\Maser_i2c_Controller_1|Slave_read_nWrite~q\)) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & 
-- ((\Maser_i2c_Controller_1|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datac => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datad => \Maser_i2c_Controller_1|Selector7~0_combout\,
	combout => \Maser_i2c_Controller_1|Slave_read_nWrite~0_combout\);

-- Location: LCCOMB_X25_Y30_N30
\Maser_i2c_Controller_1|Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector48~1_combout\ = (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\) # ((\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\ & ((\Maser_i2c_Controller_1|Slave_read_nWrite~q\) # 
-- (!\Maser_i2c_Controller_1|Address_Lock_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Address~q\,
	datab => \Maser_i2c_Controller_1|Address_Lock_i~q\,
	datac => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~q\,
	combout => \Maser_i2c_Controller_1|Selector48~1_combout\);

-- Location: LCCOMB_X25_Y30_N28
\Maser_i2c_Controller_1|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector48~0_combout\ = (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\) # ((\Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~q\ & \Maser_i2c_Controller_1|Slave_read_nWrite~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|i2c_ReadData_State.TestStop~q\,
	datac => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	combout => \Maser_i2c_Controller_1|Selector48~0_combout\);

-- Location: LCCOMB_X25_Y30_N4
\Maser_i2c_Controller_1|Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector48~2_combout\ = (\Maser_i2c_Controller_1|Selector48~1_combout\) # ((\Maser_i2c_Controller_1|Selector48~0_combout\ & ((\Maser_i2c_Controller_1|Equal10~0_combout\) # (\Maser_i2c_Controller_1|Slave_read_nWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Equal10~0_combout\,
	datab => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datac => \Maser_i2c_Controller_1|Selector48~1_combout\,
	datad => \Maser_i2c_Controller_1|Selector48~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector48~2_combout\);

-- Location: LCCOMB_X24_Y30_N26
\Maser_i2c_Controller_1|Selector48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector48~3_combout\ = (\i2c_master_1|busy~q\ & (((\Maser_i2c_Controller_1|Slave_read_nWrite~q\ & \Maser_i2c_Controller_1|Selector48~2_combout\)))) # (!\i2c_master_1|busy~q\ & ((\Maser_i2c_Controller_1|Selector48~2_combout\) # 
-- ((!\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ & \Maser_i2c_Controller_1|Slave_read_nWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\,
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datad => \Maser_i2c_Controller_1|Selector48~2_combout\,
	combout => \Maser_i2c_Controller_1|Selector48~3_combout\);

-- Location: FF_X24_Y28_N21
\Maser_i2c_Controller_1|Slave_read_nWrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Slave_read_nWrite~0_combout\,
	asdata => \Maser_i2c_Controller_1|Selector48~3_combout\,
	sload => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	ena => \RST_I_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_read_nWrite~q\);

-- Location: LCCOMB_X20_Y29_N12
\i2c_master_1|addr_rw[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|addr_rw[0]~2_combout\ = (\RST_I_i~q\ & (((\i2c_master_1|state.slv_ack2~q\) # (\i2c_master_1|state.mstr_ack~q\)) # (!\i2c_master_1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.ready~q\,
	datab => \i2c_master_1|state.slv_ack2~q\,
	datac => \RST_I_i~q\,
	datad => \i2c_master_1|state.mstr_ack~q\,
	combout => \i2c_master_1|addr_rw[0]~2_combout\);

-- Location: LCCOMB_X20_Y29_N10
\i2c_master_1|addr_rw[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|addr_rw[0]~3_combout\ = (!\i2c_master_1|data_clk_prev~q\ & (\i2c_master_1|data_clk~q\ & (\Maser_i2c_Controller_1|Enable_i~q\ & \i2c_master_1|addr_rw[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|data_clk_prev~q\,
	datab => \i2c_master_1|data_clk~q\,
	datac => \Maser_i2c_Controller_1|Enable_i~q\,
	datad => \i2c_master_1|addr_rw[0]~2_combout\,
	combout => \i2c_master_1|addr_rw[0]~3_combout\);

-- Location: FF_X20_Y29_N9
\i2c_master_1|addr_rw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	sload => VCC,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|addr_rw\(0));

-- Location: LCCOMB_X18_Y29_N30
\i2c_master_1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector20~0_combout\ = (\i2c_master_1|addr_rw\(0) & (!\i2c_master_1|Equal1~0_combout\ & (\i2c_master_1|state.wr~q\))) # (!\i2c_master_1|addr_rw\(0) & ((\i2c_master_1|state.slv_ack1~q\) # ((!\i2c_master_1|Equal1~0_combout\ & 
-- \i2c_master_1|state.wr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|addr_rw\(0),
	datab => \i2c_master_1|Equal1~0_combout\,
	datac => \i2c_master_1|state.wr~q\,
	datad => \i2c_master_1|state.slv_ack1~q\,
	combout => \i2c_master_1|Selector20~0_combout\);

-- Location: LCCOMB_X19_Y29_N18
\i2c_master_1|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|state~13_combout\ = (\i2c_master_1|addr_rw\(0) $ (\Maser_i2c_Controller_1|Slave_read_nWrite~q\)) # (!\Maser_i2c_Controller_1|Enable_i~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|addr_rw\(0),
	datac => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datad => \Maser_i2c_Controller_1|Enable_i~q\,
	combout => \i2c_master_1|state~13_combout\);

-- Location: LCCOMB_X18_Y29_N26
\i2c_master_1|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector20~1_combout\ = (\i2c_master_1|Selector20~0_combout\) # ((\i2c_master_1|state.slv_ack2~q\ & !\i2c_master_1|state~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|state.slv_ack2~q\,
	datac => \i2c_master_1|Selector20~0_combout\,
	datad => \i2c_master_1|state~13_combout\,
	combout => \i2c_master_1|Selector20~1_combout\);

-- Location: FF_X18_Y29_N27
\i2c_master_1|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|Selector20~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.wr~q\);

-- Location: LCCOMB_X18_Y29_N6
\i2c_master_1|bit_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|bit_cnt[2]~0_combout\ = (\i2c_master_1|process_1~0_combout\ & ((\i2c_master_1|state.wr~q\) # ((\i2c_master_1|state.rd~q\) # (\i2c_master_1|state.command~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.wr~q\,
	datab => \i2c_master_1|state.rd~q\,
	datac => \i2c_master_1|state.command~q\,
	datad => \i2c_master_1|process_1~0_combout\,
	combout => \i2c_master_1|bit_cnt[2]~0_combout\);

-- Location: FF_X18_Y29_N23
\i2c_master_1|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|bit_cnt[0]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|bit_cnt\(0));

-- Location: LCCOMB_X18_Y29_N10
\i2c_master_1|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|state~14_combout\ = (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(1) & (\i2c_master_1|state.command~q\ & \i2c_master_1|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|state.command~q\,
	datad => \i2c_master_1|bit_cnt\(2),
	combout => \i2c_master_1|state~14_combout\);

-- Location: FF_X18_Y29_N11
\i2c_master_1|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|state~14_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.slv_ack1~q\);

-- Location: LCCOMB_X18_Y29_N24
\i2c_master_1|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector21~1_combout\ = (\i2c_master_1|state.rd~q\ & (((!\i2c_master_1|bit_cnt\(2)) # (!\i2c_master_1|bit_cnt\(1))) # (!\i2c_master_1|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(2),
	datad => \i2c_master_1|state.rd~q\,
	combout => \i2c_master_1|Selector21~1_combout\);

-- Location: LCCOMB_X19_Y29_N2
\i2c_master_1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector21~0_combout\ = (\Maser_i2c_Controller_1|Enable_i~q\ & (\i2c_master_1|state.mstr_ack~q\ & (\Maser_i2c_Controller_1|Slave_read_nWrite~q\ $ (!\i2c_master_1|addr_rw\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Enable_i~q\,
	datab => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datac => \i2c_master_1|state.mstr_ack~q\,
	datad => \i2c_master_1|addr_rw\(0),
	combout => \i2c_master_1|Selector21~0_combout\);

-- Location: LCCOMB_X19_Y29_N26
\i2c_master_1|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector21~2_combout\ = (\i2c_master_1|Selector21~1_combout\) # ((\i2c_master_1|Selector21~0_combout\) # ((\i2c_master_1|state.slv_ack1~q\ & \i2c_master_1|addr_rw\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.slv_ack1~q\,
	datab => \i2c_master_1|addr_rw\(0),
	datac => \i2c_master_1|Selector21~1_combout\,
	datad => \i2c_master_1|Selector21~0_combout\,
	combout => \i2c_master_1|Selector21~2_combout\);

-- Location: FF_X19_Y29_N27
\i2c_master_1|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|Selector21~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.rd~q\);

-- Location: LCCOMB_X19_Y29_N4
\i2c_master_1|data_rd[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rd[2]~2_combout\ = (\i2c_master_1|state.rd~q\ & (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(1) & \i2c_master_1|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.rd~q\,
	datab => \i2c_master_1|bit_cnt\(0),
	datac => \i2c_master_1|bit_cnt\(1),
	datad => \i2c_master_1|bit_cnt\(2),
	combout => \i2c_master_1|data_rd[2]~2_combout\);

-- Location: FF_X19_Y29_N3
\i2c_master_1|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd[2]~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.mstr_ack~q\);

-- Location: LCCOMB_X18_Y29_N28
\i2c_master_1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector22~0_combout\ = (!\Maser_i2c_Controller_1|Enable_i~q\ & ((\i2c_master_1|state.mstr_ack~q\) # (\i2c_master_1|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.mstr_ack~q\,
	datab => \i2c_master_1|state.slv_ack2~q\,
	datad => \Maser_i2c_Controller_1|Enable_i~q\,
	combout => \i2c_master_1|Selector22~0_combout\);

-- Location: FF_X18_Y29_N29
\i2c_master_1|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|Selector22~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.stop~q\);

-- Location: LCCOMB_X19_Y29_N14
\i2c_master_1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector17~0_combout\ = (!\i2c_master_1|state.stop~q\ & ((\i2c_master_1|state.ready~q\) # (\Maser_i2c_Controller_1|Enable_i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|state.stop~q\,
	datac => \i2c_master_1|state.ready~q\,
	datad => \Maser_i2c_Controller_1|Enable_i~q\,
	combout => \i2c_master_1|Selector17~0_combout\);

-- Location: FF_X19_Y29_N15
\i2c_master_1|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|Selector17~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.ready~q\);

-- Location: LCCOMB_X20_Y29_N8
\i2c_master_1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector18~0_combout\ = (\i2c_master_1|state.slv_ack2~q\ & (\Maser_i2c_Controller_1|Slave_read_nWrite~q\ $ ((\i2c_master_1|addr_rw\(0))))) # (!\i2c_master_1|state.slv_ack2~q\ & (\i2c_master_1|state.mstr_ack~q\ & 
-- (\Maser_i2c_Controller_1|Slave_read_nWrite~q\ $ (\i2c_master_1|addr_rw\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datab => \i2c_master_1|state.slv_ack2~q\,
	datac => \i2c_master_1|addr_rw\(0),
	datad => \i2c_master_1|state.mstr_ack~q\,
	combout => \i2c_master_1|Selector18~0_combout\);

-- Location: LCCOMB_X19_Y29_N22
\i2c_master_1|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector18~1_combout\ = (\Maser_i2c_Controller_1|Enable_i~q\ & ((\i2c_master_1|Selector18~0_combout\) # (!\i2c_master_1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|state.ready~q\,
	datac => \i2c_master_1|Selector18~0_combout\,
	datad => \Maser_i2c_Controller_1|Enable_i~q\,
	combout => \i2c_master_1|Selector18~1_combout\);

-- Location: FF_X19_Y29_N23
\i2c_master_1|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|Selector18~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|state.start~q\);

-- Location: LCCOMB_X20_Y29_N20
\i2c_master_1|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~7_combout\ = (!\i2c_master_1|data_clk~q\ & \i2c_master_1|data_clk_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_master_1|data_clk~q\,
	datac => \i2c_master_1|data_clk_prev~q\,
	combout => \i2c_master_1|Decoder0~7_combout\);

-- Location: LCCOMB_X19_Y30_N4
\i2c_master_1|scl_ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|scl_ena~0_combout\ = (\i2c_master_1|Decoder0~7_combout\ & ((\i2c_master_1|state.start~q\) # ((!\i2c_master_1|state.stop~q\ & \i2c_master_1|scl_ena~q\)))) # (!\i2c_master_1|Decoder0~7_combout\ & (((\i2c_master_1|scl_ena~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.start~q\,
	datab => \i2c_master_1|state.stop~q\,
	datac => \i2c_master_1|scl_ena~q\,
	datad => \i2c_master_1|Decoder0~7_combout\,
	combout => \i2c_master_1|scl_ena~0_combout\);

-- Location: FF_X19_Y30_N5
\i2c_master_1|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|scl_ena~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|scl_ena~q\);

-- Location: LCCOMB_X20_Y33_N6
\i2c_master_1|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|stretch~0_combout\ = (\i2c_master_1|process_0~6_combout\ & (((\i2c_master_1|stretch~q\)))) # (!\i2c_master_1|process_0~6_combout\ & (\i2c_master_1|scl_ena~q\ & (!\i2c_master_1|scl_clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|scl_ena~q\,
	datab => \i2c_master_1|scl_clk~q\,
	datac => \i2c_master_1|stretch~q\,
	datad => \i2c_master_1|process_0~6_combout\,
	combout => \i2c_master_1|stretch~0_combout\);

-- Location: FF_X20_Y33_N7
\i2c_master_1|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|stretch~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|stretch~q\);

-- Location: LCCOMB_X21_Y33_N10
\i2c_master_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Add0~0_combout\ = (\i2c_master_1|count\(0) & (\i2c_master_1|stretch~q\ $ (GND))) # (!\i2c_master_1|count\(0) & (!\i2c_master_1|stretch~q\ & VCC))
-- \i2c_master_1|Add0~1\ = CARRY((\i2c_master_1|count\(0) & !\i2c_master_1|stretch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|count\(0),
	datab => \i2c_master_1|stretch~q\,
	datad => VCC,
	combout => \i2c_master_1|Add0~0_combout\,
	cout => \i2c_master_1|Add0~1\);

-- Location: LCCOMB_X21_Y33_N6
\i2c_master_1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|count~4_combout\ = (\i2c_master_1|Add0~0_combout\ & ((!\i2c_master_1|Equal0~2_combout\) # (!\i2c_master_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~0_combout\,
	datac => \i2c_master_1|Equal0~0_combout\,
	datad => \i2c_master_1|Equal0~2_combout\,
	combout => \i2c_master_1|count~4_combout\);

-- Location: FF_X21_Y33_N7
\i2c_master_1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|count~4_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|count\(0));

-- Location: LCCOMB_X21_Y33_N4
\i2c_master_1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|count~3_combout\ = (\i2c_master_1|Add0~2_combout\ & ((!\i2c_master_1|Equal0~2_combout\) # (!\i2c_master_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Add0~2_combout\,
	datac => \i2c_master_1|Equal0~0_combout\,
	datad => \i2c_master_1|Equal0~2_combout\,
	combout => \i2c_master_1|count~3_combout\);

-- Location: FF_X21_Y33_N5
\i2c_master_1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|count~3_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|count\(1));

-- Location: LCCOMB_X20_Y33_N12
\i2c_master_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Equal0~1_combout\ = (\i2c_master_1|count\(1) & (!\i2c_master_1|count\(2) & (\i2c_master_1|Equal0~0_combout\ & \i2c_master_1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|count\(1),
	datab => \i2c_master_1|count\(2),
	datac => \i2c_master_1|Equal0~0_combout\,
	datad => \i2c_master_1|count\(0),
	combout => \i2c_master_1|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y33_N30
\i2c_master_1|scl_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|scl_clk~0_combout\ = (!\i2c_master_1|Equal0~1_combout\ & (\i2c_master_1|process_0~3_combout\ & \i2c_master_1|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal0~1_combout\,
	datac => \i2c_master_1|process_0~3_combout\,
	datad => \i2c_master_1|LessThan1~3_combout\,
	combout => \i2c_master_1|scl_clk~0_combout\);

-- Location: FF_X20_Y33_N31
\i2c_master_1|scl_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|scl_clk~0_combout\,
	ena => \RST_I_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|scl_clk~q\);

-- Location: LCCOMB_X20_Y33_N8
\i2c_master_1|scl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|scl~0_combout\ = (\i2c_master_1|scl_clk~q\) # (!\i2c_master_1|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|scl_clk~q\,
	datad => \i2c_master_1|scl_ena~q\,
	combout => \i2c_master_1|scl~0_combout\);

-- Location: LCCOMB_X21_Y30_N26
\Maser_i2c_Controller_1|Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector79~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\) # 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Selector79~0_combout\);

-- Location: LCCOMB_X21_Y30_N20
\Maser_i2c_Controller_1|Selector79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector79~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & ((\Maser_i2c_Controller_1|Equal2~0_combout\))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & !\Maser_i2c_Controller_1|Equal2~0_combout\)))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & 
-- ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ $ (!\Maser_i2c_Controller_1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Equal2~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector79~1_combout\);

-- Location: LCCOMB_X21_Y30_N28
\Maser_i2c_Controller_1|Selector79~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector79~2_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\) # ((!\Maser_i2c_Controller_1|Selector79~0_combout\ & !\Maser_i2c_Controller_1|Selector79~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datac => \Maser_i2c_Controller_1|Selector79~0_combout\,
	datad => \Maser_i2c_Controller_1|Selector79~1_combout\,
	combout => \Maser_i2c_Controller_1|Selector79~2_combout\);

-- Location: LCCOMB_X20_Y30_N14
\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~2_combout\ = (\i2c_master_1|busy~q\ & \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|busy~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	combout => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~2_combout\);

-- Location: LCCOMB_X21_Y30_N6
\Maser_i2c_Controller_1|Slave_Register_i[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Slave_Register_i[5]~5_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & (\Maser_Mux_ADXL345_1|Get_Sample_i~q\))) # 
-- (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~2_combout\) # ((\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & \Maser_Mux_ADXL345_1|Get_Sample_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datac => \Maser_Mux_ADXL345_1|Get_Sample_i~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~2_combout\,
	combout => \Maser_i2c_Controller_1|Slave_Register_i[5]~5_combout\);

-- Location: FF_X21_Y30_N29
\Maser_i2c_Controller_1|Slave_Register_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector79~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Register_i[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Register_i\(2));

-- Location: LCCOMB_X24_Y27_N10
\Maser_i2c_Controller_1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector22~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ $ 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	combout => \Maser_i2c_Controller_1|Selector22~0_combout\);

-- Location: IOIBUF_X1_Y34_N1
\GPIO_0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(1),
	o => \GPIO_0[1]~input_o\);

-- Location: LCCOMB_X20_Y29_N14
\i2c_master_1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~0_combout\ = (\i2c_master_1|state.rd~q\ & (!\i2c_master_1|data_clk~q\ & \i2c_master_1|data_clk_prev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.rd~q\,
	datac => \i2c_master_1|data_clk~q\,
	datad => \i2c_master_1|data_clk_prev~q\,
	combout => \i2c_master_1|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y31_N28
\i2c_master_1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~1_combout\ = (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(2) & (!\i2c_master_1|bit_cnt\(1) & \i2c_master_1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(2),
	datac => \i2c_master_1|bit_cnt\(1),
	datad => \i2c_master_1|Decoder0~0_combout\,
	combout => \i2c_master_1|Decoder0~1_combout\);

-- Location: LCCOMB_X23_Y31_N4
\i2c_master_1|data_rx[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rx[2]~0_combout\ = (\i2c_master_1|Decoder0~1_combout\ & (\GPIO_0[1]~input_o\)) # (!\i2c_master_1|Decoder0~1_combout\ & ((\i2c_master_1|data_rx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~input_o\,
	datac => \i2c_master_1|data_rx\(2),
	datad => \i2c_master_1|Decoder0~1_combout\,
	combout => \i2c_master_1|data_rx[2]~0_combout\);

-- Location: FF_X23_Y31_N5
\i2c_master_1|data_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rx[2]~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rx\(2));

-- Location: LCCOMB_X24_Y31_N22
\i2c_master_1|data_rd[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rd[2]~3_combout\ = (!\i2c_master_1|data_clk_prev~q\ & (\i2c_master_1|data_rd[2]~2_combout\ & \i2c_master_1|data_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|data_clk_prev~q\,
	datab => \i2c_master_1|data_rd[2]~2_combout\,
	datad => \i2c_master_1|data_clk~q\,
	combout => \i2c_master_1|data_rd[2]~3_combout\);

-- Location: FF_X24_Y31_N31
\i2c_master_1|data_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rx\(2),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \i2c_master_1|data_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rd\(2));

-- Location: LCCOMB_X25_Y27_N22
\Maser_i2c_Controller_1|FIFO_CTL_i[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_CTL_i[2]~feeder_combout\ = \i2c_master_1|data_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(2),
	combout => \Maser_i2c_Controller_1|FIFO_CTL_i[2]~feeder_combout\);

-- Location: LCCOMB_X24_Y30_N30
\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~1_combout\ = (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\ & \i2c_master_1|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	datad => \i2c_master_1|busy~q\,
	combout => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~1_combout\);

-- Location: LCCOMB_X24_Y30_N4
\Maser_i2c_Controller_1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal5~0_combout\ = (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~1_combout\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\ & 
-- \Maser_i2c_Controller_1|Address_Lock_i~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~1_combout\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\,
	datad => \Maser_i2c_Controller_1|Address_Lock_i~0_combout\,
	combout => \Maser_i2c_Controller_1|Equal5~0_combout\);

-- Location: LCCOMB_X25_Y27_N28
\Maser_i2c_Controller_1|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal5~2_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ & \Maser_i2c_Controller_1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\,
	datad => \Maser_i2c_Controller_1|Equal5~0_combout\,
	combout => \Maser_i2c_Controller_1|Equal5~2_combout\);

-- Location: FF_X25_Y27_N23
\Maser_i2c_Controller_1|FIFO_CTL_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_CTL_i[2]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_CTL_i\(2));

-- Location: LCCOMB_X25_Y27_N16
\Maser_i2c_Controller_1|Config_i[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Config_i[7]~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	combout => \Maser_i2c_Controller_1|Config_i[7]~0_combout\);

-- Location: LCCOMB_X24_Y27_N4
\Maser_i2c_Controller_1|Config_i[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Config_i[7]~1_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\ & \Maser_i2c_Controller_1|Config_i[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datad => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|Config_i[7]~1_combout\);

-- Location: LCCOMB_X24_Y27_N24
\Maser_i2c_Controller_1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector19~0_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & !\Maser_i2c_Controller_1|Config_i[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datad => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector19~0_combout\);

-- Location: LCCOMB_X24_Y27_N28
\Maser_i2c_Controller_1|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector22~1_combout\ = (\Maser_i2c_Controller_1|Selector22~0_combout\ & ((\Maser_i2c_Controller_1|Selector19~0_combout\) # ((\Maser_i2c_Controller_1|FIFO_CTL_i\(2) & \Maser_i2c_Controller_1|Config_i[7]~1_combout\)))) # 
-- (!\Maser_i2c_Controller_1|Selector22~0_combout\ & (\Maser_i2c_Controller_1|FIFO_CTL_i\(2) & (\Maser_i2c_Controller_1|Config_i[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Selector22~0_combout\,
	datab => \Maser_i2c_Controller_1|FIFO_CTL_i\(2),
	datac => \Maser_i2c_Controller_1|Config_i[7]~1_combout\,
	datad => \Maser_i2c_Controller_1|Selector19~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector22~1_combout\);

-- Location: LCCOMB_X24_Y27_N6
\Maser_i2c_Controller_1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector17~0_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Selector17~0_combout\);

-- Location: LCCOMB_X23_Y27_N28
\Maser_i2c_Controller_1|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector18~2_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	combout => \Maser_i2c_Controller_1|Selector18~2_combout\);

-- Location: LCCOMB_X24_Y27_N0
\Maser_i2c_Controller_1|Config_i[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Config_i[7]~2_combout\ = (\Maser_i2c_Controller_1|Selector17~0_combout\ & (\Maser_i2c_Controller_1|Selector18~2_combout\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & 
-- !\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Selector17~0_combout\,
	datab => \Maser_i2c_Controller_1|Selector18~2_combout\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\,
	combout => \Maser_i2c_Controller_1|Config_i[7]~2_combout\);

-- Location: LCCOMB_X24_Y27_N2
\Maser_i2c_Controller_1|Config_i[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Config_i[7]~3_combout\ = (\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\) # 
-- (\Maser_i2c_Controller_1|Config_i[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.initialzation_Complete~0_combout\,
	datad => \Maser_i2c_Controller_1|Config_i[7]~2_combout\,
	combout => \Maser_i2c_Controller_1|Config_i[7]~3_combout\);

-- Location: FF_X24_Y27_N29
\Maser_i2c_Controller_1|Config_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector22~1_combout\,
	ena => \Maser_i2c_Controller_1|Config_i[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Config_i\(2));

-- Location: LCCOMB_X21_Y29_N20
\Maser_i2c_Controller_1|Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector70~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (((!\Maser_i2c_Controller_1|Slave_Register_i\(2))))) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- ((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & ((\Maser_i2c_Controller_1|Config_i\(2)))) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & (!\Maser_i2c_Controller_1|Slave_Register_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	datac => \Maser_i2c_Controller_1|Slave_Register_i\(2),
	datad => \Maser_i2c_Controller_1|Config_i\(2),
	combout => \Maser_i2c_Controller_1|Selector70~0_combout\);

-- Location: LCCOMB_X21_Y29_N24
\Maser_i2c_Controller_1|Slave_Data_i[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Slave_Data_i[0]~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\) # ((!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\ & 
-- ((\Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\) # (!\i2c_master_1|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.i2c_Idle~q\,
	datac => \i2c_master_1|busy~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~0_combout\,
	combout => \Maser_i2c_Controller_1|Slave_Data_i[0]~0_combout\);

-- Location: LCCOMB_X21_Y29_N30
\Maser_i2c_Controller_1|Slave_Data_i[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\ = ((!\Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\ & (\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & \i2c_master_1|busy~q\))) # 
-- (!\Maser_i2c_Controller_1|Slave_Data_i[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.i2c_Idle~q\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datac => \i2c_master_1|busy~q\,
	datad => \Maser_i2c_Controller_1|Slave_Data_i[0]~0_combout\,
	combout => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\);

-- Location: FF_X21_Y29_N21
\Maser_i2c_Controller_1|Slave_Data_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector70~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Data_i\(2));

-- Location: FF_X20_Y29_N1
\i2c_master_1|data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_Data_i\(2),
	sload => VCC,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_tx\(2));

-- Location: LCCOMB_X21_Y30_N22
\Maser_i2c_Controller_1|Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector78~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\))))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\) # ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Selector78~0_combout\);

-- Location: LCCOMB_X21_Y30_N0
\Maser_i2c_Controller_1|Selector78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector78~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ $ (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\))))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Selector78~1_combout\);

-- Location: LCCOMB_X21_Y30_N24
\Maser_i2c_Controller_1|Selector78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector78~2_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\) # (\Maser_i2c_Controller_1|Selector78~0_combout\ $ (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & 
-- !\Maser_i2c_Controller_1|Selector78~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Selector78~0_combout\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Selector78~1_combout\,
	combout => \Maser_i2c_Controller_1|Selector78~2_combout\);

-- Location: FF_X21_Y30_N25
\Maser_i2c_Controller_1|Slave_Register_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector78~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Register_i[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Register_i\(3));

-- Location: LCCOMB_X23_Y27_N24
\Maser_i2c_Controller_1|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector21~3_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\) # 
-- ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	combout => \Maser_i2c_Controller_1|Selector21~3_combout\);

-- Location: LCCOMB_X23_Y27_N14
\Maser_i2c_Controller_1|Selector21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector21~4_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & (\Maser_i2c_Controller_1|Selector21~3_combout\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ $ 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & ((\Maser_i2c_Controller_1|Selector21~3_combout\) # ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datad => \Maser_i2c_Controller_1|Selector21~3_combout\,
	combout => \Maser_i2c_Controller_1|Selector21~4_combout\);

-- Location: LCCOMB_X23_Y31_N18
\i2c_master_1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~2_combout\ = (!\i2c_master_1|bit_cnt\(0) & (!\i2c_master_1|bit_cnt\(1) & (\i2c_master_1|bit_cnt\(2) & \i2c_master_1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(2),
	datad => \i2c_master_1|Decoder0~0_combout\,
	combout => \i2c_master_1|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y31_N30
\i2c_master_1|data_rx[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rx[3]~1_combout\ = (\i2c_master_1|Decoder0~2_combout\ & (\GPIO_0[1]~input_o\)) # (!\i2c_master_1|Decoder0~2_combout\ & ((\i2c_master_1|data_rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~input_o\,
	datac => \i2c_master_1|data_rx\(3),
	datad => \i2c_master_1|Decoder0~2_combout\,
	combout => \i2c_master_1|data_rx[3]~1_combout\);

-- Location: FF_X23_Y31_N31
\i2c_master_1|data_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rx[3]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rx\(3));

-- Location: FF_X24_Y31_N15
\i2c_master_1|data_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rx\(3),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \i2c_master_1|data_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rd\(3));

-- Location: LCCOMB_X25_Y27_N14
\Maser_i2c_Controller_1|FIFO_CTL_i[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_CTL_i[3]~1_combout\ = !\i2c_master_1|data_rd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(3),
	combout => \Maser_i2c_Controller_1|FIFO_CTL_i[3]~1_combout\);

-- Location: FF_X25_Y27_N15
\Maser_i2c_Controller_1|FIFO_CTL_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_CTL_i[3]~1_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_CTL_i\(3));

-- Location: LCCOMB_X24_Y27_N18
\Maser_i2c_Controller_1|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector21~2_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\ & ((\Maser_i2c_Controller_1|Config_i[7]~0_combout\ & ((!\Maser_i2c_Controller_1|FIFO_CTL_i\(3)))) # 
-- (!\Maser_i2c_Controller_1|Config_i[7]~0_combout\ & (\Maser_i2c_Controller_1|Selector21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Selector21~4_combout\,
	datab => \Maser_i2c_Controller_1|FIFO_CTL_i\(3),
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datad => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector21~2_combout\);

-- Location: FF_X24_Y27_N19
\Maser_i2c_Controller_1|Config_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector21~2_combout\,
	ena => \Maser_i2c_Controller_1|Config_i[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Config_i\(3));

-- Location: LCCOMB_X21_Y29_N18
\Maser_i2c_Controller_1|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector69~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (((!\Maser_i2c_Controller_1|Slave_Register_i\(3))))) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- ((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & ((\Maser_i2c_Controller_1|Config_i\(3)))) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & (!\Maser_i2c_Controller_1|Slave_Register_i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	datac => \Maser_i2c_Controller_1|Slave_Register_i\(3),
	datad => \Maser_i2c_Controller_1|Config_i\(3),
	combout => \Maser_i2c_Controller_1|Selector69~0_combout\);

-- Location: FF_X21_Y29_N19
\Maser_i2c_Controller_1|Slave_Data_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector69~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Data_i\(3));

-- Location: FF_X20_Y29_N31
\i2c_master_1|data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_Data_i\(3),
	sload => VCC,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_tx\(3));

-- Location: LCCOMB_X23_Y27_N20
\Maser_i2c_Controller_1|Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector80~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (((!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\)) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	combout => \Maser_i2c_Controller_1|Selector80~0_combout\);

-- Location: LCCOMB_X23_Y27_N10
\Maser_i2c_Controller_1|Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector80~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & (\Maser_i2c_Controller_1|Selector80~0_combout\ $ (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\))))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & (\Maser_i2c_Controller_1|Selector80~0_combout\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Selector80~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector80~1_combout\);

-- Location: LCCOMB_X21_Y30_N4
\Maser_i2c_Controller_1|Slave_Register_i[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Slave_Register_i[1]~feeder_combout\ = \Maser_i2c_Controller_1|Selector80~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|Selector80~1_combout\,
	combout => \Maser_i2c_Controller_1|Slave_Register_i[1]~feeder_combout\);

-- Location: FF_X21_Y30_N5
\Maser_i2c_Controller_1|Slave_Register_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Slave_Register_i[1]~feeder_combout\,
	asdata => VCC,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	ena => \Maser_i2c_Controller_1|Slave_Register_i[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Register_i\(1));

-- Location: LCCOMB_X23_Y31_N20
\i2c_master_1|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~8_combout\ = (!\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(1) & (\i2c_master_1|bit_cnt\(2) & \i2c_master_1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(2),
	datad => \i2c_master_1|Decoder0~0_combout\,
	combout => \i2c_master_1|Decoder0~8_combout\);

-- Location: LCCOMB_X23_Y31_N24
\i2c_master_1|data_rx[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rx[1]~6_combout\ = (\i2c_master_1|Decoder0~8_combout\ & (\GPIO_0[1]~input_o\)) # (!\i2c_master_1|Decoder0~8_combout\ & ((\i2c_master_1|data_rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~input_o\,
	datac => \i2c_master_1|data_rx\(1),
	datad => \i2c_master_1|Decoder0~8_combout\,
	combout => \i2c_master_1|data_rx[1]~6_combout\);

-- Location: FF_X23_Y31_N25
\i2c_master_1|data_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rx[1]~6_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rx\(1));

-- Location: LCCOMB_X24_Y31_N6
\i2c_master_1|data_rd[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rd[1]~feeder_combout\ = \i2c_master_1|data_rx\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rx\(1),
	combout => \i2c_master_1|data_rd[1]~feeder_combout\);

-- Location: FF_X24_Y31_N7
\i2c_master_1|data_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rd[1]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|data_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rd\(1));

-- Location: LCCOMB_X25_Y27_N4
\Maser_i2c_Controller_1|FIFO_CTL_i[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_CTL_i[1]~feeder_combout\ = \i2c_master_1|data_rd\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(1),
	combout => \Maser_i2c_Controller_1|FIFO_CTL_i[1]~feeder_combout\);

-- Location: FF_X25_Y27_N5
\Maser_i2c_Controller_1|FIFO_CTL_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_CTL_i[1]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_CTL_i\(1));

-- Location: LCCOMB_X25_Y27_N18
\Maser_i2c_Controller_1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector23~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\)))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ $ (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	combout => \Maser_i2c_Controller_1|Selector23~0_combout\);

-- Location: LCCOMB_X25_Y27_N8
\Maser_i2c_Controller_1|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector23~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & (((\Maser_i2c_Controller_1|Selector18~2_combout\ & \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & (\Maser_i2c_Controller_1|Selector23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datab => \Maser_i2c_Controller_1|Selector23~0_combout\,
	datac => \Maser_i2c_Controller_1|Selector18~2_combout\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	combout => \Maser_i2c_Controller_1|Selector23~1_combout\);

-- Location: LCCOMB_X24_Y27_N14
\Maser_i2c_Controller_1|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector23~2_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\ & ((\Maser_i2c_Controller_1|Config_i[7]~0_combout\ & (\Maser_i2c_Controller_1|FIFO_CTL_i\(1))) # (!\Maser_i2c_Controller_1|Config_i[7]~0_combout\ 
-- & ((\Maser_i2c_Controller_1|Selector23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datab => \Maser_i2c_Controller_1|FIFO_CTL_i\(1),
	datac => \Maser_i2c_Controller_1|Selector23~1_combout\,
	datad => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector23~2_combout\);

-- Location: FF_X24_Y27_N15
\Maser_i2c_Controller_1|Config_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector23~2_combout\,
	ena => \Maser_i2c_Controller_1|Config_i[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Config_i\(1));

-- Location: LCCOMB_X21_Y29_N16
\Maser_i2c_Controller_1|Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector71~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (((\Maser_i2c_Controller_1|Slave_Register_i\(1))))) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- ((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & ((\Maser_i2c_Controller_1|Config_i\(1)))) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & (\Maser_i2c_Controller_1|Slave_Register_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	datac => \Maser_i2c_Controller_1|Slave_Register_i\(1),
	datad => \Maser_i2c_Controller_1|Config_i\(1),
	combout => \Maser_i2c_Controller_1|Selector71~0_combout\);

-- Location: FF_X21_Y29_N17
\Maser_i2c_Controller_1|Slave_Data_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector71~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Data_i\(1));

-- Location: FF_X20_Y29_N29
\i2c_master_1|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_Data_i\(1),
	sload => VCC,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_tx\(1));

-- Location: LCCOMB_X23_Y27_N2
\Maser_i2c_Controller_1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector24~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ $ (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & 
-- ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ $ (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	combout => \Maser_i2c_Controller_1|Selector24~0_combout\);

-- Location: LCCOMB_X24_Y27_N8
\Maser_i2c_Controller_1|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector24~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & \Maser_i2c_Controller_1|Selector18~2_combout\)))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & (\Maser_i2c_Controller_1|Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Selector24~0_combout\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datad => \Maser_i2c_Controller_1|Selector18~2_combout\,
	combout => \Maser_i2c_Controller_1|Selector24~1_combout\);

-- Location: LCCOMB_X23_Y31_N10
\i2c_master_1|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~9_combout\ = (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(1) & (\i2c_master_1|bit_cnt\(2) & \i2c_master_1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(2),
	datad => \i2c_master_1|Decoder0~0_combout\,
	combout => \i2c_master_1|Decoder0~9_combout\);

-- Location: LCCOMB_X23_Y31_N22
\i2c_master_1|data_rx[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rx[0]~7_combout\ = (\i2c_master_1|Decoder0~9_combout\ & (\GPIO_0[1]~input_o\)) # (!\i2c_master_1|Decoder0~9_combout\ & ((\i2c_master_1|data_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~input_o\,
	datac => \i2c_master_1|data_rx\(0),
	datad => \i2c_master_1|Decoder0~9_combout\,
	combout => \i2c_master_1|data_rx[0]~7_combout\);

-- Location: FF_X23_Y31_N23
\i2c_master_1|data_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rx[0]~7_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rx\(0));

-- Location: LCCOMB_X24_Y31_N28
\i2c_master_1|data_rd[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rd[0]~feeder_combout\ = \i2c_master_1|data_rx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rx\(0),
	combout => \i2c_master_1|data_rd[0]~feeder_combout\);

-- Location: FF_X24_Y31_N29
\i2c_master_1|data_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rd[0]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|data_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rd\(0));

-- Location: LCCOMB_X25_Y27_N24
\Maser_i2c_Controller_1|FIFO_CTL_i[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_CTL_i[0]~feeder_combout\ = \i2c_master_1|data_rd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(0),
	combout => \Maser_i2c_Controller_1|FIFO_CTL_i[0]~feeder_combout\);

-- Location: FF_X25_Y27_N25
\Maser_i2c_Controller_1|FIFO_CTL_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_CTL_i[0]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_CTL_i\(0));

-- Location: LCCOMB_X24_Y27_N12
\Maser_i2c_Controller_1|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector24~2_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\ & ((\Maser_i2c_Controller_1|Config_i[7]~0_combout\ & ((\Maser_i2c_Controller_1|FIFO_CTL_i\(0)))) # 
-- (!\Maser_i2c_Controller_1|Config_i[7]~0_combout\ & (\Maser_i2c_Controller_1|Selector24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datab => \Maser_i2c_Controller_1|Selector24~1_combout\,
	datac => \Maser_i2c_Controller_1|FIFO_CTL_i\(0),
	datad => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector24~2_combout\);

-- Location: FF_X24_Y27_N13
\Maser_i2c_Controller_1|Config_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector24~2_combout\,
	ena => \Maser_i2c_Controller_1|Config_i[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Config_i\(0));

-- Location: LCCOMB_X21_Y30_N12
\Maser_i2c_Controller_1|Selector81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector81~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & (((!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Selector81~1_combout\);

-- Location: LCCOMB_X21_Y30_N14
\Maser_i2c_Controller_1|Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector81~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Selector81~0_combout\);

-- Location: LCCOMB_X21_Y30_N18
\Maser_i2c_Controller_1|Selector81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector81~2_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\) # ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & ((!\Maser_i2c_Controller_1|Selector81~0_combout\))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & (!\Maser_i2c_Controller_1|Selector81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Selector81~1_combout\,
	datab => \Maser_i2c_Controller_1|Selector81~0_combout\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	combout => \Maser_i2c_Controller_1|Selector81~2_combout\);

-- Location: FF_X21_Y30_N19
\Maser_i2c_Controller_1|Slave_Register_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector81~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Register_i[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Register_i\(0));

-- Location: LCCOMB_X21_Y29_N28
\Maser_i2c_Controller_1|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector72~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (((!\Maser_i2c_Controller_1|Slave_Register_i\(0))))) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- ((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & (\Maser_i2c_Controller_1|Config_i\(0))) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & ((!\Maser_i2c_Controller_1|Slave_Register_i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	datac => \Maser_i2c_Controller_1|Config_i\(0),
	datad => \Maser_i2c_Controller_1|Slave_Register_i\(0),
	combout => \Maser_i2c_Controller_1|Selector72~0_combout\);

-- Location: FF_X21_Y29_N29
\Maser_i2c_Controller_1|Slave_Data_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector72~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Data_i\(0));

-- Location: FF_X20_Y29_N7
\i2c_master_1|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_Data_i\(0),
	sload => VCC,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_tx\(0));

-- Location: LCCOMB_X20_Y29_N6
\i2c_master_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux2~0_combout\ = (\i2c_master_1|bit_cnt\(0) & (((\i2c_master_1|data_tx\(0) & \i2c_master_1|bit_cnt\(1))))) # (!\i2c_master_1|bit_cnt\(0) & ((\i2c_master_1|data_tx\(1)) # ((!\i2c_master_1|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|data_tx\(1),
	datac => \i2c_master_1|data_tx\(0),
	datad => \i2c_master_1|bit_cnt\(1),
	combout => \i2c_master_1|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y29_N30
\i2c_master_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux2~1_combout\ = (\i2c_master_1|bit_cnt\(1) & (((\i2c_master_1|Mux2~0_combout\)))) # (!\i2c_master_1|bit_cnt\(1) & ((\i2c_master_1|Mux2~0_combout\ & ((\i2c_master_1|data_tx\(3)))) # (!\i2c_master_1|Mux2~0_combout\ & 
-- (\i2c_master_1|data_tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(1),
	datab => \i2c_master_1|data_tx\(2),
	datac => \i2c_master_1|data_tx\(3),
	datad => \i2c_master_1|Mux2~0_combout\,
	combout => \i2c_master_1|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y31_N0
\i2c_master_1|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~5_combout\ = (\i2c_master_1|bit_cnt\(0) & (!\i2c_master_1|bit_cnt\(1) & (!\i2c_master_1|bit_cnt\(2) & \i2c_master_1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(2),
	datad => \i2c_master_1|Decoder0~0_combout\,
	combout => \i2c_master_1|Decoder0~5_combout\);

-- Location: LCCOMB_X23_Y31_N8
\i2c_master_1|data_rx[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rx[6]~4_combout\ = (\i2c_master_1|Decoder0~5_combout\ & (\GPIO_0[1]~input_o\)) # (!\i2c_master_1|Decoder0~5_combout\ & ((\i2c_master_1|data_rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~input_o\,
	datac => \i2c_master_1|data_rx\(6),
	datad => \i2c_master_1|Decoder0~5_combout\,
	combout => \i2c_master_1|data_rx[6]~4_combout\);

-- Location: FF_X23_Y31_N9
\i2c_master_1|data_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rx[6]~4_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rx\(6));

-- Location: LCCOMB_X24_Y31_N16
\i2c_master_1|data_rd[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rd[6]~feeder_combout\ = \i2c_master_1|data_rx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rx\(6),
	combout => \i2c_master_1|data_rd[6]~feeder_combout\);

-- Location: FF_X24_Y31_N17
\i2c_master_1|data_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rd[6]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|data_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rd\(6));

-- Location: FF_X25_Y27_N29
\Maser_i2c_Controller_1|FIFO_CTL_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(6),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_CTL_i\(6));

-- Location: LCCOMB_X23_Y27_N8
\Maser_i2c_Controller_1|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector18~3_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\) # 
-- (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)))) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & 
-- ((!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	combout => \Maser_i2c_Controller_1|Selector18~3_combout\);

-- Location: LCCOMB_X24_Y27_N22
\Maser_i2c_Controller_1|Selector18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector18~4_combout\ = (\Maser_i2c_Controller_1|Config_i[7]~0_combout\) # (((!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\ & \Maser_i2c_Controller_1|Selector18~3_combout\)) # 
-- (!\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	datab => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	datac => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datad => \Maser_i2c_Controller_1|Selector18~3_combout\,
	combout => \Maser_i2c_Controller_1|Selector18~4_combout\);

-- Location: LCCOMB_X24_Y27_N20
\Maser_i2c_Controller_1|Selector18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector18~5_combout\ = (\Maser_i2c_Controller_1|Selector18~4_combout\ & (((\Maser_i2c_Controller_1|FIFO_CTL_i\(6)) # (!\Maser_i2c_Controller_1|Config_i[7]~0_combout\)) # 
-- (!\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datab => \Maser_i2c_Controller_1|FIFO_CTL_i\(6),
	datac => \Maser_i2c_Controller_1|Selector18~4_combout\,
	datad => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector18~5_combout\);

-- Location: FF_X24_Y27_N21
\Maser_i2c_Controller_1|Config_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector18~5_combout\,
	ena => \Maser_i2c_Controller_1|Config_i[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Config_i\(6));

-- Location: LCCOMB_X21_Y29_N0
\Maser_i2c_Controller_1|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector66~0_combout\ = (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (\Maser_i2c_Controller_1|Config_i\(6) & \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datac => \Maser_i2c_Controller_1|Config_i\(6),
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	combout => \Maser_i2c_Controller_1|Selector66~0_combout\);

-- Location: FF_X21_Y29_N1
\Maser_i2c_Controller_1|Slave_Data_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector66~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Data_i\(6));

-- Location: LCCOMB_X21_Y29_N12
\i2c_master_1|data_tx[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_tx[6]~feeder_combout\ = \Maser_i2c_Controller_1|Slave_Data_i\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|Slave_Data_i\(6),
	combout => \i2c_master_1|data_tx[6]~feeder_combout\);

-- Location: FF_X21_Y29_N13
\i2c_master_1|data_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_tx[6]~feeder_combout\,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_tx\(6));

-- Location: LCCOMB_X23_Y31_N2
\i2c_master_1|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~6_combout\ = (!\i2c_master_1|bit_cnt\(0) & (!\i2c_master_1|bit_cnt\(1) & (!\i2c_master_1|bit_cnt\(2) & \i2c_master_1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(2),
	datad => \i2c_master_1|Decoder0~0_combout\,
	combout => \i2c_master_1|Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y31_N14
\i2c_master_1|data_rx[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rx[7]~5_combout\ = (\i2c_master_1|Decoder0~6_combout\ & (\GPIO_0[1]~input_o\)) # (!\i2c_master_1|Decoder0~6_combout\ & ((\i2c_master_1|data_rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~input_o\,
	datac => \i2c_master_1|data_rx\(7),
	datad => \i2c_master_1|Decoder0~6_combout\,
	combout => \i2c_master_1|data_rx[7]~5_combout\);

-- Location: FF_X23_Y31_N15
\i2c_master_1|data_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rx[7]~5_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rx\(7));

-- Location: LCCOMB_X24_Y31_N18
\i2c_master_1|data_rd[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rd[7]~feeder_combout\ = \i2c_master_1|data_rx\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rx\(7),
	combout => \i2c_master_1|data_rd[7]~feeder_combout\);

-- Location: FF_X24_Y31_N19
\i2c_master_1|data_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rd[7]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|data_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rd\(7));

-- Location: LCCOMB_X25_Y27_N10
\Maser_i2c_Controller_1|FIFO_CTL_i[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_CTL_i[7]~feeder_combout\ = \i2c_master_1|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(7),
	combout => \Maser_i2c_Controller_1|FIFO_CTL_i[7]~feeder_combout\);

-- Location: FF_X25_Y27_N11
\Maser_i2c_Controller_1|FIFO_CTL_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_CTL_i[7]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_CTL_i\(7));

-- Location: LCCOMB_X25_Y27_N12
\Maser_i2c_Controller_1|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector17~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & (\Maser_i2c_Controller_1|Selector17~0_combout\ & 
-- !\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Selector17~0_combout\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	combout => \Maser_i2c_Controller_1|Selector17~1_combout\);

-- Location: LCCOMB_X24_Y27_N30
\Maser_i2c_Controller_1|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector17~2_combout\ = (\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\ & ((\Maser_i2c_Controller_1|Config_i[7]~0_combout\ & (\Maser_i2c_Controller_1|FIFO_CTL_i\(7))) # (!\Maser_i2c_Controller_1|Config_i[7]~0_combout\ 
-- & ((\Maser_i2c_Controller_1|Selector17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datab => \Maser_i2c_Controller_1|FIFO_CTL_i\(7),
	datac => \Maser_i2c_Controller_1|Selector17~1_combout\,
	datad => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector17~2_combout\);

-- Location: FF_X24_Y27_N31
\Maser_i2c_Controller_1|Config_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector17~2_combout\,
	ena => \Maser_i2c_Controller_1|Config_i[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Config_i\(7));

-- Location: LCCOMB_X21_Y29_N26
\Maser_i2c_Controller_1|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector65~0_combout\ = (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (\Maser_i2c_Controller_1|Config_i\(7) & \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datac => \Maser_i2c_Controller_1|Config_i\(7),
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	combout => \Maser_i2c_Controller_1|Selector65~0_combout\);

-- Location: FF_X21_Y29_N27
\Maser_i2c_Controller_1|Slave_Data_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector65~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Data_i\(7));

-- Location: FF_X21_Y29_N23
\i2c_master_1|data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_Data_i\(7),
	sload => VCC,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_tx\(7));

-- Location: LCCOMB_X23_Y31_N6
\i2c_master_1|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~4_combout\ = (!\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(1) & (!\i2c_master_1|bit_cnt\(2) & \i2c_master_1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(2),
	datad => \i2c_master_1|Decoder0~0_combout\,
	combout => \i2c_master_1|Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y31_N26
\i2c_master_1|data_rx[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rx[5]~3_combout\ = (\i2c_master_1|Decoder0~4_combout\ & (\GPIO_0[1]~input_o\)) # (!\i2c_master_1|Decoder0~4_combout\ & ((\i2c_master_1|data_rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~input_o\,
	datac => \i2c_master_1|data_rx\(5),
	datad => \i2c_master_1|Decoder0~4_combout\,
	combout => \i2c_master_1|data_rx[5]~3_combout\);

-- Location: FF_X23_Y31_N27
\i2c_master_1|data_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rx[5]~3_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rx\(5));

-- Location: FF_X24_Y31_N5
\i2c_master_1|data_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rx\(5),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \i2c_master_1|data_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rd\(5));

-- Location: LCCOMB_X25_Y27_N6
\Maser_i2c_Controller_1|FIFO_CTL_i[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_CTL_i[5]~feeder_combout\ = \i2c_master_1|data_rd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(5),
	combout => \Maser_i2c_Controller_1|FIFO_CTL_i[5]~feeder_combout\);

-- Location: FF_X25_Y27_N7
\Maser_i2c_Controller_1|FIFO_CTL_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_CTL_i[5]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_CTL_i\(5));

-- Location: LCCOMB_X23_Y27_N30
\Maser_i2c_Controller_1|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector19~1_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\ & 
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	combout => \Maser_i2c_Controller_1|Selector19~1_combout\);

-- Location: LCCOMB_X24_Y27_N26
\Maser_i2c_Controller_1|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector19~2_combout\ = (\Maser_i2c_Controller_1|FIFO_CTL_i\(5) & ((\Maser_i2c_Controller_1|Config_i[7]~1_combout\) # ((\Maser_i2c_Controller_1|Selector19~1_combout\ & \Maser_i2c_Controller_1|Selector19~0_combout\)))) # 
-- (!\Maser_i2c_Controller_1|FIFO_CTL_i\(5) & (\Maser_i2c_Controller_1|Selector19~1_combout\ & ((\Maser_i2c_Controller_1|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|FIFO_CTL_i\(5),
	datab => \Maser_i2c_Controller_1|Selector19~1_combout\,
	datac => \Maser_i2c_Controller_1|Config_i[7]~1_combout\,
	datad => \Maser_i2c_Controller_1|Selector19~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector19~2_combout\);

-- Location: FF_X24_Y27_N27
\Maser_i2c_Controller_1|Config_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector19~2_combout\,
	ena => \Maser_i2c_Controller_1|Config_i[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Config_i\(5));

-- Location: LCCOMB_X21_Y30_N10
\Maser_i2c_Controller_1|Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector76~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & (((!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\) # (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)))) # 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ & ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\) # ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & 
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[4]~q\,
	combout => \Maser_i2c_Controller_1|Selector76~0_combout\);

-- Location: LCCOMB_X21_Y30_N30
\Maser_i2c_Controller_1|Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector76~1_combout\ = (\Maser_i2c_Controller_1|Selector76~0_combout\) # (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Selector76~0_combout\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Selector76~1_combout\);

-- Location: FF_X21_Y30_N31
\Maser_i2c_Controller_1|Slave_Register_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector76~1_combout\,
	asdata => VCC,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	ena => \Maser_i2c_Controller_1|Slave_Register_i[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Register_i\(5));

-- Location: LCCOMB_X21_Y29_N10
\Maser_i2c_Controller_1|Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector67~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (((\Maser_i2c_Controller_1|Slave_Register_i\(5))))) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- ((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & (\Maser_i2c_Controller_1|Config_i\(5))) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & ((\Maser_i2c_Controller_1|Slave_Register_i\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datab => \Maser_i2c_Controller_1|Config_i\(5),
	datac => \Maser_i2c_Controller_1|Slave_Register_i\(5),
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	combout => \Maser_i2c_Controller_1|Selector67~0_combout\);

-- Location: FF_X21_Y29_N11
\Maser_i2c_Controller_1|Slave_Data_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector67~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Data_i\(5));

-- Location: FF_X20_Y29_N17
\i2c_master_1|data_tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_Data_i\(5),
	sload => VCC,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_tx\(5));

-- Location: LCCOMB_X23_Y30_N18
\Maser_i2c_Controller_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Mux9~0_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\) # ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\) # ((\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & 
-- \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[3]~q\,
	combout => \Maser_i2c_Controller_1|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y30_N8
\Maser_i2c_Controller_1|Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector77~0_combout\ = (!\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & ((\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & (\Maser_Mux_ADXL345_1|Get_Sample_i~q\)) # 
-- (!\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & ((\Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datab => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datac => \Maser_Mux_ADXL345_1|Get_Sample_i~q\,
	datad => \Maser_i2c_Controller_1|i2c_Intialization_State.Wait_Busy_Low~2_combout\,
	combout => \Maser_i2c_Controller_1|Selector77~0_combout\);

-- Location: LCCOMB_X23_Y30_N12
\Maser_i2c_Controller_1|Slave_Register_i[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Slave_Register_i[4]~4_combout\ = (\Maser_i2c_Controller_1|Selector77~0_combout\ & (!\Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\ & (\Maser_i2c_Controller_1|Mux9~0_combout\))) # 
-- (!\Maser_i2c_Controller_1|Selector77~0_combout\ & (((\Maser_i2c_Controller_1|Slave_Register_i\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Idle~q\,
	datab => \Maser_i2c_Controller_1|Mux9~0_combout\,
	datac => \Maser_i2c_Controller_1|Slave_Register_i\(4),
	datad => \Maser_i2c_Controller_1|Selector77~0_combout\,
	combout => \Maser_i2c_Controller_1|Slave_Register_i[4]~4_combout\);

-- Location: FF_X23_Y30_N13
\Maser_i2c_Controller_1|Slave_Register_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Slave_Register_i[4]~4_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Register_i\(4));

-- Location: LCCOMB_X23_Y31_N12
\i2c_master_1|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Decoder0~3_combout\ = (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(1) & (!\i2c_master_1|bit_cnt\(2) & \i2c_master_1|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(1),
	datac => \i2c_master_1|bit_cnt\(2),
	datad => \i2c_master_1|Decoder0~0_combout\,
	combout => \i2c_master_1|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y31_N16
\i2c_master_1|data_rx[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|data_rx[4]~2_combout\ = (\i2c_master_1|Decoder0~3_combout\ & (\GPIO_0[1]~input_o\)) # (!\i2c_master_1|Decoder0~3_combout\ & ((\i2c_master_1|data_rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~input_o\,
	datac => \i2c_master_1|data_rx\(4),
	datad => \i2c_master_1|Decoder0~3_combout\,
	combout => \i2c_master_1|data_rx[4]~2_combout\);

-- Location: FF_X23_Y31_N17
\i2c_master_1|data_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|data_rx[4]~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rx\(4));

-- Location: FF_X24_Y31_N23
\i2c_master_1|data_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rx\(4),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \i2c_master_1|data_rd[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_rd\(4));

-- Location: LCCOMB_X25_Y27_N20
\Maser_i2c_Controller_1|FIFO_CTL_i[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_CTL_i[4]~0_combout\ = !\i2c_master_1|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(4),
	combout => \Maser_i2c_Controller_1|FIFO_CTL_i[4]~0_combout\);

-- Location: FF_X25_Y27_N21
\Maser_i2c_Controller_1|FIFO_CTL_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_CTL_i[4]~0_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_CTL_i\(4));

-- Location: LCCOMB_X25_Y27_N26
\Maser_i2c_Controller_1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector20~0_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\ & (\Maser_i2c_Controller_1|Selector17~0_combout\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\ $ 
-- (!\Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Selector17~0_combout\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Config_Count[0]~q\,
	combout => \Maser_i2c_Controller_1|Selector20~0_combout\);

-- Location: LCCOMB_X24_Y27_N16
\Maser_i2c_Controller_1|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector20~1_combout\ = ((\Maser_i2c_Controller_1|Config_i[7]~0_combout\ & (!\Maser_i2c_Controller_1|FIFO_CTL_i\(4))) # (!\Maser_i2c_Controller_1|Config_i[7]~0_combout\ & ((\Maser_i2c_Controller_1|Selector20~0_combout\)))) # 
-- (!\Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Intialization_State.WaitnBusy~q\,
	datab => \Maser_i2c_Controller_1|Config_i[7]~0_combout\,
	datac => \Maser_i2c_Controller_1|FIFO_CTL_i\(4),
	datad => \Maser_i2c_Controller_1|Selector20~0_combout\,
	combout => \Maser_i2c_Controller_1|Selector20~1_combout\);

-- Location: FF_X24_Y27_N17
\Maser_i2c_Controller_1|Config_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector20~1_combout\,
	ena => \Maser_i2c_Controller_1|Config_i[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Config_i\(4));

-- Location: LCCOMB_X21_Y29_N4
\Maser_i2c_Controller_1|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Selector68~0_combout\ = (\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & (((!\Maser_i2c_Controller_1|Slave_Register_i\(4))))) # (!\Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\ & 
-- ((\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & ((\Maser_i2c_Controller_1|Config_i\(4)))) # (!\Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\ & (!\Maser_i2c_Controller_1|Slave_Register_i\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_Controller_State.Initialization~q\,
	datab => \Maser_i2c_Controller_1|i2c_Intialization_State.LoadData~q\,
	datac => \Maser_i2c_Controller_1|Slave_Register_i\(4),
	datad => \Maser_i2c_Controller_1|Config_i\(4),
	combout => \Maser_i2c_Controller_1|Selector68~0_combout\);

-- Location: FF_X21_Y29_N5
\Maser_i2c_Controller_1|Slave_Data_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|Selector68~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|Slave_Data_i[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|Slave_Data_i\(4));

-- Location: FF_X21_Y29_N3
\i2c_master_1|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_Data_i\(4),
	sload => VCC,
	ena => \i2c_master_1|addr_rw[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|data_tx\(4));

-- Location: LCCOMB_X21_Y29_N2
\i2c_master_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux2~2_combout\ = (\i2c_master_1|bit_cnt\(0) & (((\i2c_master_1|data_tx\(4) & \i2c_master_1|bit_cnt\(1))))) # (!\i2c_master_1|bit_cnt\(0) & ((\i2c_master_1|data_tx\(5)) # ((!\i2c_master_1|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|data_tx\(5),
	datab => \i2c_master_1|bit_cnt\(0),
	datac => \i2c_master_1|data_tx\(4),
	datad => \i2c_master_1|bit_cnt\(1),
	combout => \i2c_master_1|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y29_N22
\i2c_master_1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux2~3_combout\ = (\i2c_master_1|bit_cnt\(1) & (((\i2c_master_1|Mux2~2_combout\)))) # (!\i2c_master_1|bit_cnt\(1) & ((\i2c_master_1|Mux2~2_combout\ & ((\i2c_master_1|data_tx\(7)))) # (!\i2c_master_1|Mux2~2_combout\ & 
-- (\i2c_master_1|data_tx\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(1),
	datab => \i2c_master_1|data_tx\(6),
	datac => \i2c_master_1|data_tx\(7),
	datad => \i2c_master_1|Mux2~2_combout\,
	combout => \i2c_master_1|Mux2~3_combout\);

-- Location: LCCOMB_X20_Y29_N18
\i2c_master_1|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~10_combout\ = (\i2c_master_1|addr_rw\(0)) # ((\i2c_master_1|bit_cnt\(2) & (\i2c_master_1|Mux2~1_combout\)) # (!\i2c_master_1|bit_cnt\(2) & ((\i2c_master_1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(2),
	datab => \i2c_master_1|addr_rw\(0),
	datac => \i2c_master_1|Mux2~1_combout\,
	datad => \i2c_master_1|Mux2~3_combout\,
	combout => \i2c_master_1|Selector23~10_combout\);

-- Location: LCCOMB_X18_Y29_N8
\i2c_master_1|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~6_combout\ = (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(2) & ((\i2c_master_1|addr_rw\(0)) # (!\i2c_master_1|bit_cnt\(1))))) # (!\i2c_master_1|bit_cnt\(0) & (((\i2c_master_1|bit_cnt\(1))) # (!\i2c_master_1|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(2),
	datac => \i2c_master_1|bit_cnt\(1),
	datad => \i2c_master_1|addr_rw\(0),
	combout => \i2c_master_1|Selector23~6_combout\);

-- Location: LCCOMB_X18_Y29_N2
\i2c_master_1|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~5_combout\ = (\i2c_master_1|bit_cnt\(0) & ((\i2c_master_1|bit_cnt\(2)) # ((!\i2c_master_1|bit_cnt\(1))))) # (!\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|bit_cnt\(2) & ((\i2c_master_1|addr_rw\(0)) # (!\i2c_master_1|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|bit_cnt\(2),
	datac => \i2c_master_1|bit_cnt\(1),
	datad => \i2c_master_1|addr_rw\(0),
	combout => \i2c_master_1|Selector23~5_combout\);

-- Location: LCCOMB_X18_Y29_N14
\i2c_master_1|Selector23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~7_combout\ = (\i2c_master_1|Selector23~6_combout\ & ((\i2c_master_1|state.start~q\) # ((\i2c_master_1|state.command~q\ & \i2c_master_1|Selector23~5_combout\)))) # (!\i2c_master_1|Selector23~6_combout\ & 
-- (((\i2c_master_1|state.command~q\ & \i2c_master_1|Selector23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Selector23~6_combout\,
	datab => \i2c_master_1|state.start~q\,
	datac => \i2c_master_1|state.command~q\,
	datad => \i2c_master_1|Selector23~5_combout\,
	combout => \i2c_master_1|Selector23~7_combout\);

-- Location: LCCOMB_X20_Y29_N0
\i2c_master_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux3~0_combout\ = (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|data_tx\(3) & ((\i2c_master_1|bit_cnt\(1))))) # (!\i2c_master_1|bit_cnt\(0) & (((\i2c_master_1|data_tx\(2)) # (\i2c_master_1|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(0),
	datab => \i2c_master_1|data_tx\(3),
	datac => \i2c_master_1|data_tx\(2),
	datad => \i2c_master_1|bit_cnt\(1),
	combout => \i2c_master_1|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y29_N28
\i2c_master_1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux3~1_combout\ = (\i2c_master_1|Selector25~0_combout\ & ((\i2c_master_1|Mux3~0_combout\ & (\i2c_master_1|data_tx\(0))) # (!\i2c_master_1|Mux3~0_combout\ & ((\i2c_master_1|data_tx\(1)))))) # (!\i2c_master_1|Selector25~0_combout\ & 
-- (((\i2c_master_1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|data_tx\(0),
	datab => \i2c_master_1|Selector25~0_combout\,
	datac => \i2c_master_1|data_tx\(1),
	datad => \i2c_master_1|Mux3~0_combout\,
	combout => \i2c_master_1|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y29_N14
\i2c_master_1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux3~2_combout\ = (\i2c_master_1|bit_cnt\(0) & (\i2c_master_1|data_tx\(7) & ((\i2c_master_1|bit_cnt\(1))))) # (!\i2c_master_1|bit_cnt\(0) & (((\i2c_master_1|data_tx\(6)) # (\i2c_master_1|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|data_tx\(7),
	datab => \i2c_master_1|bit_cnt\(0),
	datac => \i2c_master_1|data_tx\(6),
	datad => \i2c_master_1|bit_cnt\(1),
	combout => \i2c_master_1|Mux3~2_combout\);

-- Location: LCCOMB_X20_Y29_N24
\i2c_master_1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux3~3_combout\ = (\i2c_master_1|Mux3~2_combout\ & ((\i2c_master_1|data_tx\(4)) # ((!\i2c_master_1|Selector25~0_combout\)))) # (!\i2c_master_1|Mux3~2_combout\ & (((\i2c_master_1|data_tx\(5) & \i2c_master_1|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|data_tx\(4),
	datab => \i2c_master_1|data_tx\(5),
	datac => \i2c_master_1|Mux3~2_combout\,
	datad => \i2c_master_1|Selector25~0_combout\,
	combout => \i2c_master_1|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y29_N16
\i2c_master_1|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~8_combout\ = (\i2c_master_1|Equal1~0_combout\) # ((\i2c_master_1|Add1~0_combout\ & (\i2c_master_1|Mux3~1_combout\)) # (!\i2c_master_1|Add1~0_combout\ & ((\i2c_master_1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Equal1~0_combout\,
	datab => \i2c_master_1|Mux3~1_combout\,
	datac => \i2c_master_1|Add1~0_combout\,
	datad => \i2c_master_1|Mux3~3_combout\,
	combout => \i2c_master_1|Selector23~8_combout\);

-- Location: LCCOMB_X19_Y29_N30
\i2c_master_1|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~9_combout\ = (\i2c_master_1|Selector23~7_combout\) # ((\i2c_master_1|state.wr~q\ & \i2c_master_1|Selector23~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Selector23~7_combout\,
	datac => \i2c_master_1|state.wr~q\,
	datad => \i2c_master_1|Selector23~8_combout\,
	combout => \i2c_master_1|Selector23~9_combout\);

-- Location: LCCOMB_X19_Y29_N10
\i2c_master_1|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~2_combout\ = (\i2c_master_1|state.slv_ack2~q\ & ((\i2c_master_1|addr_rw\(0) $ (\Maser_i2c_Controller_1|Slave_read_nWrite~q\)) # (!\Maser_i2c_Controller_1|Enable_i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.slv_ack2~q\,
	datab => \i2c_master_1|addr_rw\(0),
	datac => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	datad => \Maser_i2c_Controller_1|Enable_i~q\,
	combout => \i2c_master_1|Selector23~2_combout\);

-- Location: LCCOMB_X19_Y29_N12
\i2c_master_1|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~3_combout\ = (\i2c_master_1|state.mstr_ack~q\) # ((\i2c_master_1|state.stop~q\) # ((\i2c_master_1|Selector23~2_combout\) # (!\i2c_master_1|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.mstr_ack~q\,
	datab => \i2c_master_1|state.stop~q\,
	datac => \i2c_master_1|state.ready~q\,
	datad => \i2c_master_1|Selector23~2_combout\,
	combout => \i2c_master_1|Selector23~3_combout\);

-- Location: LCCOMB_X20_Y29_N2
\i2c_master_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux4~0_combout\ = (\i2c_master_1|bit_cnt\(0) & (((\Maser_i2c_Controller_1|Slave_Data_i\(0) & \i2c_master_1|bit_cnt\(1))))) # (!\i2c_master_1|bit_cnt\(0) & ((\Maser_i2c_Controller_1|Slave_Data_i\(1)) # ((!\i2c_master_1|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Slave_Data_i\(1),
	datab => \Maser_i2c_Controller_1|Slave_Data_i\(0),
	datac => \i2c_master_1|bit_cnt\(0),
	datad => \i2c_master_1|bit_cnt\(1),
	combout => \i2c_master_1|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y29_N4
\i2c_master_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux4~1_combout\ = (\i2c_master_1|bit_cnt\(1) & (((\i2c_master_1|Mux4~0_combout\)))) # (!\i2c_master_1|bit_cnt\(1) & ((\i2c_master_1|Mux4~0_combout\ & (\Maser_i2c_Controller_1|Slave_Data_i\(3))) # (!\i2c_master_1|Mux4~0_combout\ & 
-- ((\Maser_i2c_Controller_1|Slave_Data_i\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(1),
	datab => \Maser_i2c_Controller_1|Slave_Data_i\(3),
	datac => \Maser_i2c_Controller_1|Slave_Data_i\(2),
	datad => \i2c_master_1|Mux4~0_combout\,
	combout => \i2c_master_1|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y29_N8
\i2c_master_1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux4~2_combout\ = (\i2c_master_1|bit_cnt\(1) & ((\i2c_master_1|bit_cnt\(0) & ((\Maser_i2c_Controller_1|Slave_Data_i\(4)))) # (!\i2c_master_1|bit_cnt\(0) & (\Maser_i2c_Controller_1|Slave_Data_i\(5))))) # (!\i2c_master_1|bit_cnt\(1) & 
-- (((!\i2c_master_1|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Slave_Data_i\(5),
	datab => \Maser_i2c_Controller_1|Slave_Data_i\(4),
	datac => \i2c_master_1|bit_cnt\(1),
	datad => \i2c_master_1|bit_cnt\(0),
	combout => \i2c_master_1|Mux4~2_combout\);

-- Location: LCCOMB_X21_Y29_N6
\i2c_master_1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Mux4~3_combout\ = (\i2c_master_1|Mux4~2_combout\ & ((\Maser_i2c_Controller_1|Slave_Data_i\(7)) # ((\i2c_master_1|bit_cnt\(1))))) # (!\i2c_master_1|Mux4~2_combout\ & (((\Maser_i2c_Controller_1|Slave_Data_i\(6) & !\i2c_master_1|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Slave_Data_i\(7),
	datab => \Maser_i2c_Controller_1|Slave_Data_i\(6),
	datac => \i2c_master_1|Mux4~2_combout\,
	datad => \i2c_master_1|bit_cnt\(1),
	combout => \i2c_master_1|Mux4~3_combout\);

-- Location: LCCOMB_X20_Y29_N22
\i2c_master_1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~0_combout\ = (\i2c_master_1|state.slv_ack2~q\ & ((\i2c_master_1|bit_cnt\(2) & (\i2c_master_1|Mux4~1_combout\)) # (!\i2c_master_1|bit_cnt\(2) & ((\i2c_master_1|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|bit_cnt\(2),
	datab => \i2c_master_1|state.slv_ack2~q\,
	datac => \i2c_master_1|Mux4~1_combout\,
	datad => \i2c_master_1|Mux4~3_combout\,
	combout => \i2c_master_1|Selector23~0_combout\);

-- Location: LCCOMB_X19_Y29_N20
\i2c_master_1|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~1_combout\ = (\i2c_master_1|state~13_combout\ & (((\i2c_master_1|data_rd[2]~2_combout\)))) # (!\i2c_master_1|state~13_combout\ & ((\i2c_master_1|state.mstr_ack~q\) # ((\i2c_master_1|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.mstr_ack~q\,
	datab => \i2c_master_1|state~13_combout\,
	datac => \i2c_master_1|data_rd[2]~2_combout\,
	datad => \i2c_master_1|Selector23~0_combout\,
	combout => \i2c_master_1|Selector23~1_combout\);

-- Location: LCCOMB_X19_Y29_N6
\i2c_master_1|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~4_combout\ = (\i2c_master_1|Selector23~1_combout\) # ((!\i2c_master_1|sda_int~q\ & ((\i2c_master_1|Selector23~3_combout\) # (\i2c_master_1|Selector21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|Selector23~3_combout\,
	datab => \i2c_master_1|sda_int~q\,
	datac => \i2c_master_1|Selector21~1_combout\,
	datad => \i2c_master_1|Selector23~1_combout\,
	combout => \i2c_master_1|Selector23~4_combout\);

-- Location: LCCOMB_X19_Y29_N24
\i2c_master_1|Selector23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector23~11_combout\ = (!\i2c_master_1|Selector23~9_combout\ & (!\i2c_master_1|Selector23~4_combout\ & ((!\i2c_master_1|Selector23~10_combout\) # (!\i2c_master_1|state.slv_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|state.slv_ack1~q\,
	datab => \i2c_master_1|Selector23~10_combout\,
	datac => \i2c_master_1|Selector23~9_combout\,
	datad => \i2c_master_1|Selector23~4_combout\,
	combout => \i2c_master_1|Selector23~11_combout\);

-- Location: FF_X19_Y29_N25
\i2c_master_1|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \i2c_master_1|Selector23~11_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \i2c_master_1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_master_1|sda_int~q\);

-- Location: LCCOMB_X18_Y29_N18
\i2c_master_1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2c_master_1|Selector29~0_combout\ = (\i2c_master_1|state.start~q\ & (\i2c_master_1|data_clk_prev~q\)) # (!\i2c_master_1|state.start~q\ & ((\i2c_master_1|state.stop~q\ & (!\i2c_master_1|data_clk_prev~q\)) # (!\i2c_master_1|state.stop~q\ & 
-- ((!\i2c_master_1|sda_int~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_master_1|data_clk_prev~q\,
	datab => \i2c_master_1|state.stop~q\,
	datac => \i2c_master_1|sda_int~q\,
	datad => \i2c_master_1|state.start~q\,
	combout => \i2c_master_1|Selector29~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X29_Y26_N12
\Maser_PushButton_1|Count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~1_combout\ = (\Maser_PushButton_1|LockOut~q\ & (((\Maser_PushButton_1|PushButton_Mux:Count[4]~q\)))) # (!\Maser_PushButton_1|LockOut~q\ & (\Maser_PushButton_1|Add0~1_combout\ & ((!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|Add0~1_combout\,
	datab => \Maser_PushButton_1|PushButton_Mux:Count[4]~q\,
	datac => \KEY[0]~input_o\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Count~1_combout\);

-- Location: LCCOMB_X29_Y26_N18
\Maser_PushButton_1|Count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~0_combout\ = (!\KEY[1]~input_o\ & \Maser_PushButton_1|LockOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Count~0_combout\);

-- Location: LCCOMB_X29_Y26_N22
\Maser_PushButton_1|Count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~4_combout\ = (\Maser_PushButton_1|LockOut~q\ & ((!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Count~4_combout\);

-- Location: LCCOMB_X29_Y26_N6
\Maser_PushButton_1|Count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~10_combout\ = (\KEY[0]~input_o\ & (\Maser_PushButton_1|LockOut~q\ & (\KEY[1]~input_o\ $ (!\Maser_PushButton_1|PushButton_Mux:Count[0]~q\)))) # (!\KEY[0]~input_o\ & (!\Maser_PushButton_1|PushButton_Mux:Count[0]~q\ & 
-- ((!\Maser_PushButton_1|LockOut~q\) # (!\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \Maser_PushButton_1|PushButton_Mux:Count[0]~q\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Count~10_combout\);

-- Location: FF_X29_Y26_N7
\Maser_PushButton_1|PushButton_Mux:Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_PushButton_1|Count~10_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_PushButton_1|PushButton_Mux:Count[0]~q\);

-- Location: LCCOMB_X29_Y26_N10
\Maser_PushButton_1|Count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~8_combout\ = (\Maser_PushButton_1|LockOut~q\ & (((\Maser_PushButton_1|PushButton_Mux:Count[1]~q\)))) # (!\Maser_PushButton_1|LockOut~q\ & (!\KEY[0]~input_o\ & (\Maser_PushButton_1|PushButton_Mux:Count[0]~q\ $ 
-- (\Maser_PushButton_1|PushButton_Mux:Count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|PushButton_Mux:Count[0]~q\,
	datab => \Maser_PushButton_1|PushButton_Mux:Count[1]~q\,
	datac => \KEY[0]~input_o\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Count~8_combout\);

-- Location: LCCOMB_X30_Y26_N4
\Maser_PushButton_1|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Add1~3_combout\ = (\Maser_PushButton_1|LockOut~q\ & (\Maser_PushButton_1|PushButton_Mux:Count[1]~q\ $ ((\Maser_PushButton_1|PushButton_Mux:Count[0]~q\)))) # (!\Maser_PushButton_1|LockOut~q\ & 
-- (!\Maser_PushButton_1|PushButton_Mux:Count[1]~q\ & ((!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|PushButton_Mux:Count[1]~q\,
	datab => \Maser_PushButton_1|PushButton_Mux:Count[0]~q\,
	datac => \KEY[0]~input_o\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Add1~3_combout\);

-- Location: LCCOMB_X29_Y26_N8
\Maser_PushButton_1|Count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~9_combout\ = (\Maser_PushButton_1|Count~8_combout\ & (((\Maser_PushButton_1|Count~0_combout\ & \Maser_PushButton_1|Add1~3_combout\)) # (!\Maser_PushButton_1|Count~4_combout\))) # (!\Maser_PushButton_1|Count~8_combout\ & 
-- (\Maser_PushButton_1|Count~0_combout\ & ((\Maser_PushButton_1|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|Count~8_combout\,
	datab => \Maser_PushButton_1|Count~0_combout\,
	datac => \Maser_PushButton_1|Count~4_combout\,
	datad => \Maser_PushButton_1|Add1~3_combout\,
	combout => \Maser_PushButton_1|Count~9_combout\);

-- Location: FF_X29_Y26_N9
\Maser_PushButton_1|PushButton_Mux:Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_PushButton_1|Count~9_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_PushButton_1|PushButton_Mux:Count[1]~q\);

-- Location: LCCOMB_X30_Y26_N26
\Maser_PushButton_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Add1~0_combout\ = (\Maser_PushButton_1|PushButton_Mux:Count[1]~q\ & ((\Maser_PushButton_1|PushButton_Mux:Count[0]~q\ & ((\Maser_PushButton_1|LockOut~q\))) # (!\Maser_PushButton_1|PushButton_Mux:Count[0]~q\ & (!\KEY[0]~input_o\ & 
-- !\Maser_PushButton_1|LockOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|PushButton_Mux:Count[1]~q\,
	datab => \Maser_PushButton_1|PushButton_Mux:Count[0]~q\,
	datac => \KEY[0]~input_o\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Add1~0_combout\);

-- Location: LCCOMB_X29_Y26_N14
\Maser_PushButton_1|Count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~7_combout\ = (\Maser_PushButton_1|Count~2_combout\ & (((\Maser_PushButton_1|Count~0_combout\ & !\Maser_PushButton_1|Add1~0_combout\)) # (!\Maser_PushButton_1|Count~4_combout\))) # (!\Maser_PushButton_1|Count~2_combout\ & 
-- (((\Maser_PushButton_1|Count~0_combout\ & \Maser_PushButton_1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|Count~4_combout\,
	datab => \Maser_PushButton_1|Count~0_combout\,
	datac => \Maser_PushButton_1|Count~2_combout\,
	datad => \Maser_PushButton_1|Add1~0_combout\,
	combout => \Maser_PushButton_1|Count~7_combout\);

-- Location: FF_X29_Y26_N15
\Maser_PushButton_1|PushButton_Mux:Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_PushButton_1|Count~7_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_PushButton_1|PushButton_Mux:Count[2]~q\);

-- Location: LCCOMB_X30_Y26_N24
\Maser_PushButton_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Add0~2_combout\ = \Maser_PushButton_1|PushButton_Mux:Count[2]~q\ $ (((\Maser_PushButton_1|PushButton_Mux:Count[1]~q\ & \Maser_PushButton_1|PushButton_Mux:Count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|PushButton_Mux:Count[1]~q\,
	datac => \Maser_PushButton_1|PushButton_Mux:Count[0]~q\,
	datad => \Maser_PushButton_1|PushButton_Mux:Count[2]~q\,
	combout => \Maser_PushButton_1|Add0~2_combout\);

-- Location: LCCOMB_X30_Y26_N10
\Maser_PushButton_1|Count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~2_combout\ = (\Maser_PushButton_1|LockOut~q\ & (\Maser_PushButton_1|PushButton_Mux:Count[2]~q\)) # (!\Maser_PushButton_1|LockOut~q\ & (((\Maser_PushButton_1|Add0~2_combout\ & !\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|PushButton_Mux:Count[2]~q\,
	datab => \Maser_PushButton_1|Add0~2_combout\,
	datac => \KEY[0]~input_o\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Count~2_combout\);

-- Location: LCCOMB_X29_Y26_N0
\Maser_PushButton_1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Add1~2_combout\ = \Maser_PushButton_1|Count~3_combout\ $ (((\Maser_PushButton_1|Count~2_combout\ & \Maser_PushButton_1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|Count~3_combout\,
	datac => \Maser_PushButton_1|Count~2_combout\,
	datad => \Maser_PushButton_1|Add1~0_combout\,
	combout => \Maser_PushButton_1|Add1~2_combout\);

-- Location: LCCOMB_X29_Y26_N24
\Maser_PushButton_1|Count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~6_combout\ = (\Maser_PushButton_1|Count~3_combout\ & (((\Maser_PushButton_1|Count~0_combout\ & \Maser_PushButton_1|Add1~2_combout\)) # (!\Maser_PushButton_1|Count~4_combout\))) # (!\Maser_PushButton_1|Count~3_combout\ & 
-- (\Maser_PushButton_1|Count~0_combout\ & ((\Maser_PushButton_1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|Count~3_combout\,
	datab => \Maser_PushButton_1|Count~0_combout\,
	datac => \Maser_PushButton_1|Count~4_combout\,
	datad => \Maser_PushButton_1|Add1~2_combout\,
	combout => \Maser_PushButton_1|Count~6_combout\);

-- Location: FF_X29_Y26_N25
\Maser_PushButton_1|PushButton_Mux:Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_PushButton_1|Count~6_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_PushButton_1|PushButton_Mux:Count[3]~q\);

-- Location: LCCOMB_X29_Y26_N4
\Maser_PushButton_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Add0~0_combout\ = (\Maser_PushButton_1|PushButton_Mux:Count[0]~q\ & (\Maser_PushButton_1|PushButton_Mux:Count[2]~q\ & \Maser_PushButton_1|PushButton_Mux:Count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|PushButton_Mux:Count[0]~q\,
	datab => \Maser_PushButton_1|PushButton_Mux:Count[2]~q\,
	datac => \Maser_PushButton_1|PushButton_Mux:Count[1]~q\,
	combout => \Maser_PushButton_1|Add0~0_combout\);

-- Location: LCCOMB_X29_Y26_N30
\Maser_PushButton_1|Count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~3_combout\ = (\Maser_PushButton_1|LockOut~q\ & (((\Maser_PushButton_1|PushButton_Mux:Count[3]~q\)))) # (!\Maser_PushButton_1|LockOut~q\ & (!\KEY[0]~input_o\ & (\Maser_PushButton_1|PushButton_Mux:Count[3]~q\ $ 
-- (\Maser_PushButton_1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Maser_PushButton_1|PushButton_Mux:Count[3]~q\,
	datac => \Maser_PushButton_1|Add0~0_combout\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|Count~3_combout\);

-- Location: LCCOMB_X29_Y26_N16
\Maser_PushButton_1|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Add1~1_combout\ = (\Maser_PushButton_1|Count~3_combout\ & (\Maser_PushButton_1|Count~2_combout\ & \Maser_PushButton_1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|Count~3_combout\,
	datac => \Maser_PushButton_1|Count~2_combout\,
	datad => \Maser_PushButton_1|Add1~0_combout\,
	combout => \Maser_PushButton_1|Add1~1_combout\);

-- Location: LCCOMB_X29_Y26_N2
\Maser_PushButton_1|Count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Count~5_combout\ = (\Maser_PushButton_1|Count~1_combout\ & (((\Maser_PushButton_1|Count~0_combout\ & !\Maser_PushButton_1|Add1~1_combout\)) # (!\Maser_PushButton_1|Count~4_combout\))) # (!\Maser_PushButton_1|Count~1_combout\ & 
-- (\Maser_PushButton_1|Count~0_combout\ & ((\Maser_PushButton_1|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|Count~1_combout\,
	datab => \Maser_PushButton_1|Count~0_combout\,
	datac => \Maser_PushButton_1|Count~4_combout\,
	datad => \Maser_PushButton_1|Add1~1_combout\,
	combout => \Maser_PushButton_1|Count~5_combout\);

-- Location: FF_X29_Y26_N3
\Maser_PushButton_1|PushButton_Mux:Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_PushButton_1|Count~5_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_PushButton_1|PushButton_Mux:Count[4]~q\);

-- Location: LCCOMB_X29_Y26_N26
\Maser_PushButton_1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|Add0~1_combout\ = \Maser_PushButton_1|PushButton_Mux:Count[4]~q\ $ (((\Maser_PushButton_1|Add0~0_combout\ & \Maser_PushButton_1|PushButton_Mux:Count[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_PushButton_1|PushButton_Mux:Count[4]~q\,
	datac => \Maser_PushButton_1|Add0~0_combout\,
	datad => \Maser_PushButton_1|PushButton_Mux:Count[3]~q\,
	combout => \Maser_PushButton_1|Add0~1_combout\);

-- Location: LCCOMB_X29_Y26_N20
\Maser_PushButton_1|LockOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|LockOut~1_combout\ = (\Maser_PushButton_1|LockOut~q\ & ((\KEY[1]~input_o\) # ((\Maser_PushButton_1|PushButton_Mux:Count[4]~q\)))) # (!\Maser_PushButton_1|LockOut~q\ & (((\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Maser_PushButton_1|PushButton_Mux:Count[4]~q\,
	datac => \KEY[0]~input_o\,
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \Maser_PushButton_1|LockOut~1_combout\);

-- Location: LCCOMB_X30_Y26_N28
\Maser_PushButton_1|LockOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|LockOut~0_combout\ = (!\Maser_PushButton_1|PushButton_Mux:Count[1]~q\ & (\Maser_PushButton_1|PushButton_Mux:Count[3]~q\ & (\Maser_PushButton_1|PushButton_Mux:Count[0]~q\ & !\Maser_PushButton_1|PushButton_Mux:Count[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|PushButton_Mux:Count[1]~q\,
	datab => \Maser_PushButton_1|PushButton_Mux:Count[3]~q\,
	datac => \Maser_PushButton_1|PushButton_Mux:Count[0]~q\,
	datad => \Maser_PushButton_1|PushButton_Mux:Count[2]~q\,
	combout => \Maser_PushButton_1|LockOut~0_combout\);

-- Location: LCCOMB_X29_Y26_N28
\Maser_PushButton_1|LockOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_PushButton_1|LockOut~2_combout\ = (\Maser_PushButton_1|LockOut~1_combout\ & (((\Maser_PushButton_1|LockOut~q\)))) # (!\Maser_PushButton_1|LockOut~1_combout\ & ((\Maser_PushButton_1|LockOut~q\ & ((!\Maser_PushButton_1|LockOut~0_combout\))) # 
-- (!\Maser_PushButton_1|LockOut~q\ & (!\Maser_PushButton_1|Add0~1_combout\ & \Maser_PushButton_1|LockOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_PushButton_1|Add0~1_combout\,
	datab => \Maser_PushButton_1|LockOut~1_combout\,
	datac => \Maser_PushButton_1|LockOut~q\,
	datad => \Maser_PushButton_1|LockOut~0_combout\,
	combout => \Maser_PushButton_1|LockOut~2_combout\);

-- Location: FF_X29_Y26_N29
\Maser_PushButton_1|LockOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_PushButton_1|LockOut~2_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_i2c_Controller_1|initialation_Status_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_PushButton_1|LockOut~q\);

-- Location: LCCOMB_X20_Y33_N14
\Int_SCL_i~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Int_SCL_i~feeder_combout\ = \i2c_master_1|scl~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|scl~0_combout\,
	combout => \Int_SCL_i~feeder_combout\);

-- Location: FF_X20_Y33_N15
Int_SCL_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Int_SCL_i~feeder_combout\,
	ena => \RST_I_i~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Int_SCL_i~q\);

-- Location: LCCOMB_X27_Y30_N6
\Maser_Mux_ADXL345_1|Selector12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector12~9_combout\ = (\Maser_Mux_ADXL345_1|Selector7~0_combout\) # ((!\Maser_Mux_ADXL345_1|tx_state.idle~q\ & \Maser_Mux_ADXL345_1|send_msg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|tx_state.idle~q\,
	datac => \Maser_Mux_ADXL345_1|send_msg~q\,
	datad => \Maser_Mux_ADXL345_1|Selector7~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector12~9_combout\);

-- Location: LCCOMB_X29_Y30_N6
\Maser_Mux_ADXL345_1|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector12~4_combout\ = (\Maser_Mux_ADXL345_1|tx_state.send_data~q\ & (\Maser_Mux_ADXL345_1|Equal2~0_combout\ & \Baud_Rate_Generator_1|Baud_Rate_Enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datac => \Maser_Mux_ADXL345_1|Equal2~0_combout\,
	datad => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	combout => \Maser_Mux_ADXL345_1|Selector12~4_combout\);

-- Location: LCCOMB_X27_Y31_N2
\Maser_Mux_ADXL345_1|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector12~5_combout\ = (\Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\) # ((!\Baud_Rate_Generator_1|Baud_Rate_Enable~q\ & ((\Maser_Mux_ADXL345_1|tx_state.send_data~q\) # (\Maser_Mux_ADXL345_1|tx_state.send_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_data~q\,
	datab => \Maser_Mux_ADXL345_1|tx_state.send_start~q\,
	datac => \Baud_Rate_Generator_1|Baud_Rate_Enable~q\,
	datad => \Maser_Mux_ADXL345_1|tx_state.CRC_ready~q\,
	combout => \Maser_Mux_ADXL345_1|Selector12~5_combout\);

-- Location: LCCOMB_X27_Y31_N24
\Maser_Mux_ADXL345_1|Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector12~6_combout\ = (!\Maser_Mux_ADXL345_1|SerDataOut~q\ & ((\Maser_Mux_ADXL345_1|tx_state.send_stop~q\) # ((\Maser_Mux_ADXL345_1|Selector12~5_combout\) # (!\Maser_Mux_ADXL345_1|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|tx_state.send_stop~q\,
	datab => \Maser_Mux_ADXL345_1|SerDataOut~q\,
	datac => \Maser_Mux_ADXL345_1|Selector6~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Selector12~5_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector12~6_combout\);

-- Location: LCCOMB_X28_Y29_N10
\Maser_Mux_ADXL345_1|data2send[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[0][7]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Maser_Mux_ADXL345_1|data2send[0][7]~feeder_combout\);

-- Location: FF_X28_Y29_N11
\Maser_Mux_ADXL345_1|data2send[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[0][7]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[0][7]~q\);

-- Location: LCCOMB_X27_Y29_N20
\Maser_Mux_ADXL345_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux4~0_combout\ = (\Maser_Mux_ADXL345_1|data2send[0][7]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & 
-- (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[0][7]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y27_N20
\Maser_Mux_ADXL345_1|data2send[11][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[11][6]~feeder_combout\ = \Maser_i2c_Controller_1|FIFO_CTL_i\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|FIFO_CTL_i\(6),
	combout => \Maser_Mux_ADXL345_1|data2send[11][6]~feeder_combout\);

-- Location: FF_X26_Y27_N21
\Maser_Mux_ADXL345_1|data2send[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[11][6]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[11][6]~q\);

-- Location: FF_X26_Y27_N23
\Maser_Mux_ADXL345_1|data2send[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_CTL_i\(7),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[11][7]~q\);

-- Location: LCCOMB_X26_Y27_N8
\Maser_Mux_ADXL345_1|data2send[11][4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[11][4]~0_combout\ = !\Maser_i2c_Controller_1|FIFO_CTL_i\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|FIFO_CTL_i\(4),
	combout => \Maser_Mux_ADXL345_1|data2send[11][4]~0_combout\);

-- Location: FF_X26_Y27_N9
\Maser_Mux_ADXL345_1|data2send[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[11][4]~0_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[11][4]~q\);

-- Location: FF_X26_Y27_N7
\Maser_Mux_ADXL345_1|data2send[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_CTL_i\(5),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[11][5]~q\);

-- Location: LCCOMB_X26_Y27_N6
\Maser_Mux_ADXL345_1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux11~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- ((\Maser_Mux_ADXL345_1|data2send[11][5]~q\))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (\Maser_Mux_ADXL345_1|data2send[11][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[11][4]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[11][5]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux11~0_combout\);

-- Location: LCCOMB_X26_Y27_N22
\Maser_Mux_ADXL345_1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux11~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux11~0_combout\ & ((\Maser_Mux_ADXL345_1|data2send[11][7]~q\))) # (!\Maser_Mux_ADXL345_1|Mux11~0_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[11][6]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[11][6]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[11][7]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux11~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux11~1_combout\);

-- Location: LCCOMB_X26_Y27_N30
\Maser_Mux_ADXL345_1|data2send[11][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[11][3]~1_combout\ = !\Maser_i2c_Controller_1|FIFO_CTL_i\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|FIFO_CTL_i\(3),
	combout => \Maser_Mux_ADXL345_1|data2send[11][3]~1_combout\);

-- Location: FF_X26_Y27_N31
\Maser_Mux_ADXL345_1|data2send[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[11][3]~1_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[11][3]~q\);

-- Location: FF_X26_Y27_N29
\Maser_Mux_ADXL345_1|data2send[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_CTL_i\(1),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[11][1]~q\);

-- Location: LCCOMB_X26_Y27_N14
\Maser_Mux_ADXL345_1|data2send[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[11][2]~feeder_combout\ = \Maser_i2c_Controller_1|FIFO_CTL_i\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|FIFO_CTL_i\(2),
	combout => \Maser_Mux_ADXL345_1|data2send[11][2]~feeder_combout\);

-- Location: FF_X26_Y27_N15
\Maser_Mux_ADXL345_1|data2send[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[11][2]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[11][2]~q\);

-- Location: FF_X26_Y27_N25
\Maser_Mux_ADXL345_1|data2send[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_CTL_i\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[11][0]~q\);

-- Location: LCCOMB_X26_Y27_N24
\Maser_Mux_ADXL345_1|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux11~2_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[11][2]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|data2send[11][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[11][2]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[11][0]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux11~2_combout\);

-- Location: LCCOMB_X26_Y27_N28
\Maser_Mux_ADXL345_1|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux11~3_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|Mux11~2_combout\ & (\Maser_Mux_ADXL345_1|data2send[11][3]~q\)) # (!\Maser_Mux_ADXL345_1|Mux11~2_combout\ & 
-- ((\Maser_Mux_ADXL345_1|data2send[11][1]~q\))))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (((\Maser_Mux_ADXL345_1|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[11][3]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[11][1]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux11~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux11~3_combout\);

-- Location: LCCOMB_X26_Y27_N16
\Maser_Mux_ADXL345_1|Mux256~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux256~2_combout\ = (!\Maser_Mux_ADXL345_1|no_of_chars\(2) & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & (\Maser_Mux_ADXL345_1|Mux11~1_combout\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & 
-- ((\Maser_Mux_ADXL345_1|Mux11~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datac => \Maser_Mux_ADXL345_1|Mux11~1_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux11~3_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux256~2_combout\);

-- Location: LCCOMB_X26_Y27_N18
\Maser_Mux_ADXL345_1|Mux256~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux256~3_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(3) & (((\Maser_Mux_ADXL345_1|Mux256~2_combout\)))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(3) & (\Maser_Mux_ADXL345_1|no_of_chars\(2) & (\Maser_Mux_ADXL345_1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(3),
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datac => \Maser_Mux_ADXL345_1|Mux4~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux256~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux256~3_combout\);

-- Location: LCCOMB_X26_Y30_N8
\Maser_Mux_ADXL345_1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux13~0_combout\ = (\Maser_Mux_ADXL345_1|data2send[0][7]~q\ & (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[0][7]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux13~0_combout\);

-- Location: LCCOMB_X29_Y30_N4
\Maser_i2c_Controller_1|ADXL345_Y_i[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[6]~feeder_combout\ = \i2c_master_1|data_rd\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(6),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y30_N20
\Maser_i2c_Controller_1|ADXL345_X_i[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[7]~0_combout\ = (\RST_I_i~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\ & (\Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\ & 
-- \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_I_i~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|i2c_Controller_State.ReadDataXYZ~q\,
	datad => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Read~1_combout\,
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[7]~0_combout\);

-- Location: LCCOMB_X25_Y30_N16
\Maser_i2c_Controller_1|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal5~5_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\ & (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ & 
-- \Maser_i2c_Controller_1|ADXL345_X_i[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\,
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|ADXL345_X_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|Equal5~5_combout\);

-- Location: FF_X29_Y30_N5
\Maser_i2c_Controller_1|ADXL345_Y_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[6]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(6));

-- Location: FF_X26_Y30_N9
\Maser_Mux_ADXL345_1|data2send[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(6),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[5][6]~q\);

-- Location: LCCOMB_X29_Y30_N20
\Maser_i2c_Controller_1|ADXL345_Y_i[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[7]~feeder_combout\ = \i2c_master_1|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(7),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[7]~feeder_combout\);

-- Location: FF_X29_Y30_N21
\Maser_i2c_Controller_1|ADXL345_Y_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[7]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(7));

-- Location: FF_X26_Y30_N17
\Maser_Mux_ADXL345_1|data2send[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(7),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[5][7]~q\);

-- Location: LCCOMB_X29_Y30_N14
\Maser_i2c_Controller_1|ADXL345_Y_i[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[5]~feeder_combout\ = \i2c_master_1|data_rd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(5),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[5]~feeder_combout\);

-- Location: FF_X29_Y30_N15
\Maser_i2c_Controller_1|ADXL345_Y_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[5]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(5));

-- Location: LCCOMB_X26_Y30_N10
\Maser_Mux_ADXL345_1|data2send[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[5][5]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Y_i\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_Y_i\(5),
	combout => \Maser_Mux_ADXL345_1|data2send[5][5]~feeder_combout\);

-- Location: FF_X26_Y30_N11
\Maser_Mux_ADXL345_1|data2send[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[5][5]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[5][5]~q\);

-- Location: FF_X26_Y30_N5
\Maser_i2c_Controller_1|ADXL345_Y_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(4),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(4));

-- Location: FF_X26_Y30_N13
\Maser_Mux_ADXL345_1|data2send[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(4),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[5][4]~q\);

-- Location: LCCOMB_X26_Y30_N12
\Maser_Mux_ADXL345_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux5~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[5][5]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|data2send[5][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[5][5]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[5][4]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y30_N16
\Maser_Mux_ADXL345_1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux5~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux5~0_combout\ & ((\Maser_Mux_ADXL345_1|data2send[5][7]~q\))) # (!\Maser_Mux_ADXL345_1|Mux5~0_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[5][6]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[5][6]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[5][7]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux5~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y30_N10
\Maser_i2c_Controller_1|ADXL345_Y_i[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[2]~feeder_combout\ = \i2c_master_1|data_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(2),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[2]~feeder_combout\);

-- Location: FF_X29_Y30_N11
\Maser_i2c_Controller_1|ADXL345_Y_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[2]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(2));

-- Location: FF_X26_Y30_N31
\Maser_Mux_ADXL345_1|data2send[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(2),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[5][2]~q\);

-- Location: LCCOMB_X29_Y30_N22
\Maser_i2c_Controller_1|ADXL345_Y_i[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[3]~feeder_combout\ = \i2c_master_1|data_rd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(3),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[3]~feeder_combout\);

-- Location: FF_X29_Y30_N23
\Maser_i2c_Controller_1|ADXL345_Y_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[3]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(3));

-- Location: FF_X26_Y30_N25
\Maser_Mux_ADXL345_1|data2send[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(3),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[5][3]~q\);

-- Location: FF_X26_Y30_N1
\Maser_i2c_Controller_1|ADXL345_Y_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(1),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(1));

-- Location: FF_X26_Y30_N27
\Maser_Mux_ADXL345_1|data2send[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(1),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[5][1]~q\);

-- Location: LCCOMB_X29_Y30_N28
\Maser_i2c_Controller_1|ADXL345_Y_i[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[0]~feeder_combout\ = \i2c_master_1|data_rd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(0),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[0]~feeder_combout\);

-- Location: FF_X29_Y30_N29
\Maser_i2c_Controller_1|ADXL345_Y_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[0]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(0));

-- Location: FF_X26_Y30_N3
\Maser_Mux_ADXL345_1|data2send[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[5][0]~q\);

-- Location: LCCOMB_X26_Y30_N2
\Maser_Mux_ADXL345_1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux5~2_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[5][1]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|data2send[5][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[5][1]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[5][0]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux5~2_combout\);

-- Location: LCCOMB_X26_Y30_N24
\Maser_Mux_ADXL345_1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux5~3_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux5~2_combout\ & ((\Maser_Mux_ADXL345_1|data2send[5][3]~q\))) # (!\Maser_Mux_ADXL345_1|Mux5~2_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[5][2]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[5][2]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[5][3]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux5~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux5~3_combout\);

-- Location: LCCOMB_X26_Y30_N4
\Maser_Mux_ADXL345_1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux5~4_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & (\Maser_Mux_ADXL345_1|Mux5~1_combout\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & ((\Maser_Mux_ADXL345_1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datab => \Maser_Mux_ADXL345_1|Mux5~1_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux5~3_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux5~4_combout\);

-- Location: LCCOMB_X26_Y30_N28
\Maser_Mux_ADXL345_1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux4~2_combout\ = (\Maser_Mux_ADXL345_1|data2send[0][7]~q\ & (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ $ (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[0][7]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux4~2_combout\);

-- Location: LCCOMB_X26_Y30_N14
\Maser_Mux_ADXL345_1|Mux256~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux256~6_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(2) & ((\Maser_Mux_ADXL345_1|no_of_chars\(3)) # ((\Maser_Mux_ADXL345_1|Mux5~4_combout\)))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(2) & (!\Maser_Mux_ADXL345_1|no_of_chars\(3) & 
-- ((\Maser_Mux_ADXL345_1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(3),
	datac => \Maser_Mux_ADXL345_1|Mux5~4_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux4~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux256~6_combout\);

-- Location: LCCOMB_X24_Y31_N0
\Maser_i2c_Controller_1|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal5~4_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ & \Maser_i2c_Controller_1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Equal5~0_combout\,
	combout => \Maser_i2c_Controller_1|Equal5~4_combout\);

-- Location: FF_X24_Y31_N11
\Maser_i2c_Controller_1|ADXL345_Z_i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(3),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(11));

-- Location: FF_X26_Y30_N29
\Maser_Mux_ADXL345_1|data2send[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(11),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[9][3]~q\);

-- Location: FF_X24_Y31_N9
\Maser_i2c_Controller_1|ADXL345_Z_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(1),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(9));

-- Location: FF_X26_Y30_N21
\Maser_Mux_ADXL345_1|data2send[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(9),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[9][1]~q\);

-- Location: FF_X24_Y31_N21
\Maser_i2c_Controller_1|ADXL345_Z_i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(2),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(10));

-- Location: LCCOMB_X26_Y30_N22
\Maser_Mux_ADXL345_1|data2send[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[9][2]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Z_i\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_Z_i\(10),
	combout => \Maser_Mux_ADXL345_1|data2send[9][2]~feeder_combout\);

-- Location: FF_X26_Y30_N23
\Maser_Mux_ADXL345_1|data2send[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[9][2]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[9][2]~q\);

-- Location: FF_X24_Y31_N25
\Maser_i2c_Controller_1|ADXL345_Z_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(0),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(8));

-- Location: FF_X26_Y30_N19
\Maser_Mux_ADXL345_1|data2send[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(8),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[9][0]~q\);

-- Location: LCCOMB_X26_Y30_N18
\Maser_Mux_ADXL345_1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux9~2_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[9][2]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|data2send[9][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[9][2]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[9][0]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux9~2_combout\);

-- Location: LCCOMB_X26_Y30_N20
\Maser_Mux_ADXL345_1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux9~3_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|Mux9~2_combout\ & (\Maser_Mux_ADXL345_1|data2send[9][3]~q\)) # (!\Maser_Mux_ADXL345_1|Mux9~2_combout\ & 
-- ((\Maser_Mux_ADXL345_1|data2send[9][1]~q\))))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (((\Maser_Mux_ADXL345_1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[9][3]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[9][1]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux9~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux9~3_combout\);

-- Location: LCCOMB_X24_Y31_N12
\Maser_i2c_Controller_1|ADXL345_Z_i[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[15]~feeder_combout\ = \i2c_master_1|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(7),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[15]~feeder_combout\);

-- Location: FF_X24_Y31_N13
\Maser_i2c_Controller_1|ADXL345_Z_i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[15]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(15));

-- Location: LCCOMB_X26_Y27_N26
\Maser_Mux_ADXL345_1|data2send[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[9][7]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Z_i\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_Z_i\(15),
	combout => \Maser_Mux_ADXL345_1|data2send[9][7]~feeder_combout\);

-- Location: FF_X26_Y27_N27
\Maser_Mux_ADXL345_1|data2send[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[9][7]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[9][7]~q\);

-- Location: FF_X24_Y31_N1
\Maser_i2c_Controller_1|ADXL345_Z_i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(6),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(14));

-- Location: FF_X26_Y27_N13
\Maser_Mux_ADXL345_1|data2send[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(14),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[9][6]~q\);

-- Location: FF_X24_Y31_N3
\Maser_i2c_Controller_1|ADXL345_Z_i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(5),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(13));

-- Location: LCCOMB_X26_Y27_N2
\Maser_Mux_ADXL345_1|data2send[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[9][5]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Z_i\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|ADXL345_Z_i\(13),
	combout => \Maser_Mux_ADXL345_1|data2send[9][5]~feeder_combout\);

-- Location: FF_X26_Y27_N3
\Maser_Mux_ADXL345_1|data2send[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[9][5]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[9][5]~q\);

-- Location: LCCOMB_X24_Y31_N26
\Maser_i2c_Controller_1|ADXL345_Z_i[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[12]~feeder_combout\ = \i2c_master_1|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(4),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[12]~feeder_combout\);

-- Location: FF_X24_Y31_N27
\Maser_i2c_Controller_1|ADXL345_Z_i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[12]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(12));

-- Location: FF_X26_Y27_N1
\Maser_Mux_ADXL345_1|data2send[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(12),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[9][4]~q\);

-- Location: LCCOMB_X26_Y27_N0
\Maser_Mux_ADXL345_1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux9~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[9][5]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|data2send[9][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[9][5]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[9][4]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux9~0_combout\);

-- Location: LCCOMB_X26_Y27_N12
\Maser_Mux_ADXL345_1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux9~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux9~0_combout\ & (\Maser_Mux_ADXL345_1|data2send[9][7]~q\)) # (!\Maser_Mux_ADXL345_1|Mux9~0_combout\ & 
-- ((\Maser_Mux_ADXL345_1|data2send[9][6]~q\))))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[9][7]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[9][6]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux9~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux9~1_combout\);

-- Location: LCCOMB_X26_Y30_N0
\Maser_Mux_ADXL345_1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux9~4_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & ((\Maser_Mux_ADXL345_1|Mux9~1_combout\))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & (\Maser_Mux_ADXL345_1|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datab => \Maser_Mux_ADXL345_1|Mux9~3_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux9~1_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux9~4_combout\);

-- Location: LCCOMB_X26_Y30_N6
\Maser_Mux_ADXL345_1|Selector12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector12~7_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(3) & ((\Maser_Mux_ADXL345_1|Mux256~6_combout\ & (\Maser_Mux_ADXL345_1|Mux13~0_combout\)) # (!\Maser_Mux_ADXL345_1|Mux256~6_combout\ & 
-- ((\Maser_Mux_ADXL345_1|Mux9~4_combout\))))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(3) & (((\Maser_Mux_ADXL345_1|Mux256~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(3),
	datab => \Maser_Mux_ADXL345_1|Mux13~0_combout\,
	datac => \Maser_Mux_ADXL345_1|Mux256~6_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux9~4_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector12~7_combout\);

-- Location: LCCOMB_X26_Y31_N12
\Maser_i2c_Controller_1|FIFO_Status_i[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[6]~feeder_combout\ = \i2c_master_1|data_rd\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(6),
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y31_N18
\Maser_i2c_Controller_1|FIFO_Status_i[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\ = (\Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\ & (\i2c_master_1|busy~q\ & (\Maser_i2c_Controller_1|Address_Lock_i~0_combout\ & \Maser_i2c_Controller_1|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|i2c_ReadData_State.Wait_Data~q\,
	datab => \i2c_master_1|busy~q\,
	datac => \Maser_i2c_Controller_1|Address_Lock_i~0_combout\,
	datad => \Maser_i2c_Controller_1|Equal10~0_combout\,
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\);

-- Location: FF_X26_Y31_N13
\Maser_i2c_Controller_1|FIFO_Status_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_Status_i[6]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_Status_i\(6));

-- Location: LCCOMB_X26_Y29_N8
\Maser_Mux_ADXL345_1|data2send[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[12][6]~feeder_combout\ = \Maser_i2c_Controller_1|FIFO_Status_i\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|FIFO_Status_i\(6),
	combout => \Maser_Mux_ADXL345_1|data2send[12][6]~feeder_combout\);

-- Location: FF_X26_Y29_N9
\Maser_Mux_ADXL345_1|data2send[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[12][6]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[12][6]~q\);

-- Location: LCCOMB_X26_Y31_N26
\Maser_i2c_Controller_1|FIFO_Status_i[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[7]~feeder_combout\ = \i2c_master_1|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(7),
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[7]~feeder_combout\);

-- Location: FF_X26_Y31_N27
\Maser_i2c_Controller_1|FIFO_Status_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_Status_i[7]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_Status_i\(7));

-- Location: FF_X27_Y29_N5
\Maser_Mux_ADXL345_1|data2send[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_Status_i\(7),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[12][7]~q\);

-- Location: LCCOMB_X26_Y31_N14
\Maser_i2c_Controller_1|FIFO_Status_i[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[5]~feeder_combout\ = \i2c_master_1|data_rd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(5),
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[5]~feeder_combout\);

-- Location: FF_X26_Y31_N15
\Maser_i2c_Controller_1|FIFO_Status_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_Status_i[5]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_Status_i\(5));

-- Location: FF_X27_Y29_N1
\Maser_Mux_ADXL345_1|data2send[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_Status_i\(5),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[12][5]~q\);

-- Location: LCCOMB_X26_Y31_N20
\Maser_i2c_Controller_1|FIFO_Status_i[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[4]~feeder_combout\ = \i2c_master_1|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(4),
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[4]~feeder_combout\);

-- Location: FF_X26_Y31_N21
\Maser_i2c_Controller_1|FIFO_Status_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_Status_i[4]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_Status_i\(4));

-- Location: FF_X27_Y29_N3
\Maser_Mux_ADXL345_1|data2send[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_Status_i\(4),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[12][4]~q\);

-- Location: LCCOMB_X27_Y29_N2
\Maser_Mux_ADXL345_1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux12~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|data2send[12][5]~q\) # ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- (((\Maser_Mux_ADXL345_1|data2send[12][4]~q\ & !\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[12][5]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[12][4]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux12~0_combout\);

-- Location: LCCOMB_X27_Y29_N4
\Maser_Mux_ADXL345_1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux12~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux12~0_combout\ & ((\Maser_Mux_ADXL345_1|data2send[12][7]~q\))) # (!\Maser_Mux_ADXL345_1|Mux12~0_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[12][6]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[12][6]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[12][7]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux12~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux12~1_combout\);

-- Location: LCCOMB_X26_Y31_N16
\Maser_i2c_Controller_1|FIFO_Status_i[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[1]~feeder_combout\ = \i2c_master_1|data_rd\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(1),
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[1]~feeder_combout\);

-- Location: FF_X26_Y31_N17
\Maser_i2c_Controller_1|FIFO_Status_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_Status_i[1]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_Status_i\(1));

-- Location: FF_X27_Y29_N15
\Maser_Mux_ADXL345_1|data2send[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_Status_i\(1),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[12][1]~q\);

-- Location: LCCOMB_X26_Y31_N6
\Maser_i2c_Controller_1|FIFO_Status_i[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[3]~feeder_combout\ = \i2c_master_1|data_rd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(3),
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[3]~feeder_combout\);

-- Location: FF_X26_Y31_N7
\Maser_i2c_Controller_1|FIFO_Status_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_Status_i[3]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_Status_i\(3));

-- Location: FF_X27_Y29_N19
\Maser_Mux_ADXL345_1|data2send[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_Status_i\(3),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[12][3]~q\);

-- Location: LCCOMB_X26_Y31_N2
\Maser_i2c_Controller_1|FIFO_Status_i[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[2]~feeder_combout\ = \i2c_master_1|data_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(2),
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[2]~feeder_combout\);

-- Location: FF_X26_Y31_N3
\Maser_i2c_Controller_1|FIFO_Status_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_Status_i[2]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_Status_i\(2));

-- Location: LCCOMB_X27_Y29_N30
\Maser_Mux_ADXL345_1|data2send[12][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[12][2]~feeder_combout\ = \Maser_i2c_Controller_1|FIFO_Status_i\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|FIFO_Status_i\(2),
	combout => \Maser_Mux_ADXL345_1|data2send[12][2]~feeder_combout\);

-- Location: FF_X27_Y29_N31
\Maser_Mux_ADXL345_1|data2send[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[12][2]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[12][2]~q\);

-- Location: LCCOMB_X26_Y31_N4
\Maser_i2c_Controller_1|FIFO_Status_i[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|FIFO_Status_i[0]~feeder_combout\ = \i2c_master_1|data_rd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(0),
	combout => \Maser_i2c_Controller_1|FIFO_Status_i[0]~feeder_combout\);

-- Location: FF_X26_Y31_N5
\Maser_i2c_Controller_1|FIFO_Status_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|FIFO_Status_i[0]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|FIFO_Status_i[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|FIFO_Status_i\(0));

-- Location: FF_X27_Y29_N9
\Maser_Mux_ADXL345_1|data2send[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|FIFO_Status_i\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[12][0]~q\);

-- Location: LCCOMB_X27_Y29_N8
\Maser_Mux_ADXL345_1|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux12~2_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|data2send[12][2]~q\) # ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & 
-- (((\Maser_Mux_ADXL345_1|data2send[12][0]~q\ & !\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[12][2]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[12][0]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux12~2_combout\);

-- Location: LCCOMB_X27_Y29_N18
\Maser_Mux_ADXL345_1|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux12~3_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|Mux12~2_combout\ & ((\Maser_Mux_ADXL345_1|data2send[12][3]~q\))) # (!\Maser_Mux_ADXL345_1|Mux12~2_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[12][1]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (((\Maser_Mux_ADXL345_1|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[12][1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[12][3]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux12~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux12~3_combout\);

-- Location: LCCOMB_X27_Y29_N0
\Maser_Mux_ADXL345_1|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux12~4_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & (\Maser_Mux_ADXL345_1|Mux12~1_combout\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & ((\Maser_Mux_ADXL345_1|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datab => \Maser_Mux_ADXL345_1|Mux12~1_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux12~3_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux12~4_combout\);

-- Location: LCCOMB_X28_Y29_N30
\Maser_Mux_ADXL345_1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux4~1_combout\ = (\Maser_Mux_ADXL345_1|data2send[0][7]~q\ & (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ $ (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[0][7]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y31_N8
\Maser_i2c_Controller_1|ADXL345_Z_i[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[1]~feeder_combout\ = \i2c_master_1|data_rd\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(1),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[1]~feeder_combout\);

-- Location: LCCOMB_X26_Y31_N28
\Maser_i2c_Controller_1|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal5~3_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ & \Maser_i2c_Controller_1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\,
	datad => \Maser_i2c_Controller_1|Equal5~0_combout\,
	combout => \Maser_i2c_Controller_1|Equal5~3_combout\);

-- Location: FF_X26_Y31_N9
\Maser_i2c_Controller_1|ADXL345_Z_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[1]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(1));

-- Location: FF_X28_Y29_N27
\Maser_Mux_ADXL345_1|data2send[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(1),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[8][1]~q\);

-- Location: LCCOMB_X26_Y31_N18
\Maser_i2c_Controller_1|ADXL345_Z_i[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[3]~feeder_combout\ = \i2c_master_1|data_rd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(3),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[3]~feeder_combout\);

-- Location: FF_X26_Y31_N19
\Maser_i2c_Controller_1|ADXL345_Z_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[3]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(3));

-- Location: FF_X28_Y29_N5
\Maser_Mux_ADXL345_1|data2send[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(3),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[8][3]~q\);

-- Location: LCCOMB_X26_Y31_N22
\Maser_i2c_Controller_1|ADXL345_Z_i[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[2]~feeder_combout\ = \i2c_master_1|data_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(2),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[2]~feeder_combout\);

-- Location: FF_X26_Y31_N23
\Maser_i2c_Controller_1|ADXL345_Z_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[2]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(2));

-- Location: LCCOMB_X28_Y29_N20
\Maser_Mux_ADXL345_1|data2send[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[8][2]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Z_i\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_Z_i\(2),
	combout => \Maser_Mux_ADXL345_1|data2send[8][2]~feeder_combout\);

-- Location: FF_X28_Y29_N21
\Maser_Mux_ADXL345_1|data2send[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[8][2]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[8][2]~q\);

-- Location: LCCOMB_X26_Y31_N0
\Maser_i2c_Controller_1|ADXL345_Z_i[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[0]~feeder_combout\ = \i2c_master_1|data_rd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(0),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[0]~feeder_combout\);

-- Location: FF_X26_Y31_N1
\Maser_i2c_Controller_1|ADXL345_Z_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[0]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(0));

-- Location: FF_X28_Y29_N3
\Maser_Mux_ADXL345_1|data2send[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[8][0]~q\);

-- Location: LCCOMB_X28_Y29_N2
\Maser_Mux_ADXL345_1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux8~2_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[8][2]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|data2send[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[8][2]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[8][0]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux8~2_combout\);

-- Location: LCCOMB_X28_Y29_N4
\Maser_Mux_ADXL345_1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux8~3_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|Mux8~2_combout\ & ((\Maser_Mux_ADXL345_1|data2send[8][3]~q\))) # (!\Maser_Mux_ADXL345_1|Mux8~2_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[8][1]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (((\Maser_Mux_ADXL345_1|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[8][1]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[8][3]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux8~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux8~3_combout\);

-- Location: FF_X26_Y31_N29
\Maser_i2c_Controller_1|ADXL345_Z_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(6),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(6));

-- Location: FF_X28_Y29_N19
\Maser_Mux_ADXL345_1|data2send[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(6),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[8][6]~q\);

-- Location: LCCOMB_X26_Y31_N10
\Maser_i2c_Controller_1|ADXL345_Z_i[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[7]~feeder_combout\ = \i2c_master_1|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(7),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[7]~feeder_combout\);

-- Location: FF_X26_Y31_N11
\Maser_i2c_Controller_1|ADXL345_Z_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[7]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(7));

-- Location: FF_X28_Y29_N17
\Maser_Mux_ADXL345_1|data2send[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(7),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[8][7]~q\);

-- Location: LCCOMB_X26_Y31_N30
\Maser_i2c_Controller_1|ADXL345_Z_i[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[5]~feeder_combout\ = \i2c_master_1|data_rd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(5),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[5]~feeder_combout\);

-- Location: FF_X26_Y31_N31
\Maser_i2c_Controller_1|ADXL345_Z_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[5]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(5));

-- Location: LCCOMB_X28_Y29_N24
\Maser_Mux_ADXL345_1|data2send[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[8][5]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Z_i\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_Z_i\(5),
	combout => \Maser_Mux_ADXL345_1|data2send[8][5]~feeder_combout\);

-- Location: FF_X28_Y29_N25
\Maser_Mux_ADXL345_1|data2send[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[8][5]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[8][5]~q\);

-- Location: LCCOMB_X26_Y31_N24
\Maser_i2c_Controller_1|ADXL345_Z_i[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Z_i[4]~feeder_combout\ = \i2c_master_1|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(4),
	combout => \Maser_i2c_Controller_1|ADXL345_Z_i[4]~feeder_combout\);

-- Location: FF_X26_Y31_N25
\Maser_i2c_Controller_1|ADXL345_Z_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Z_i[4]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Z_i\(4));

-- Location: FF_X28_Y29_N7
\Maser_Mux_ADXL345_1|data2send[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Z_i\(4),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[8][4]~q\);

-- Location: LCCOMB_X28_Y29_N6
\Maser_Mux_ADXL345_1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux8~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[8][5]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|data2send[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[8][5]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[8][4]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y29_N16
\Maser_Mux_ADXL345_1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux8~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux8~0_combout\ & ((\Maser_Mux_ADXL345_1|data2send[8][7]~q\))) # (!\Maser_Mux_ADXL345_1|Mux8~0_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[8][6]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[8][6]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[8][7]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux8~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux8~1_combout\);

-- Location: LCCOMB_X28_Y29_N18
\Maser_Mux_ADXL345_1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux8~4_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & ((\Maser_Mux_ADXL345_1|Mux8~1_combout\))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & (\Maser_Mux_ADXL345_1|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datab => \Maser_Mux_ADXL345_1|Mux8~3_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux8~1_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux8~4_combout\);

-- Location: LCCOMB_X28_Y29_N0
\Maser_Mux_ADXL345_1|Mux256~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux256~4_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(2) & (((\Maser_Mux_ADXL345_1|no_of_chars\(3))))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(2) & ((\Maser_Mux_ADXL345_1|no_of_chars\(3) & ((\Maser_Mux_ADXL345_1|Mux8~4_combout\))) # 
-- (!\Maser_Mux_ADXL345_1|no_of_chars\(3) & (\Maser_Mux_ADXL345_1|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Mux4~1_combout\,
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datac => \Maser_Mux_ADXL345_1|no_of_chars\(3),
	datad => \Maser_Mux_ADXL345_1|Mux8~4_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux256~4_combout\);

-- Location: LCCOMB_X27_Y30_N8
\Maser_Mux_ADXL345_1|Mux256~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux256~5_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(2) & ((\Maser_Mux_ADXL345_1|Mux256~4_combout\ & (\Maser_Mux_ADXL345_1|Mux12~4_combout\)) # (!\Maser_Mux_ADXL345_1|Mux256~4_combout\ & ((\Maser_Mux_ADXL345_1|Mux4~0_combout\))))) # 
-- (!\Maser_Mux_ADXL345_1|no_of_chars\(2) & (((\Maser_Mux_ADXL345_1|Mux256~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datab => \Maser_Mux_ADXL345_1|Mux12~4_combout\,
	datac => \Maser_Mux_ADXL345_1|Mux4~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux256~4_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux256~5_combout\);

-- Location: LCCOMB_X28_Y29_N12
\Maser_Mux_ADXL345_1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux14~0_combout\ = (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & (\Maser_Mux_ADXL345_1|data2send[0][7]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[0][7]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux14~0_combout\);

-- Location: LCCOMB_X26_Y29_N2
\Maser_i2c_Controller_1|ADXL345_X_i[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[6]~feeder_combout\ = \i2c_master_1|data_rd\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(6),
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y30_N26
\Maser_i2c_Controller_1|ADXL345_X_i[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[7]~1_combout\ = (\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ & !\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[2]~q\,
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[7]~1_combout\);

-- Location: LCCOMB_X26_Y29_N30
\Maser_i2c_Controller_1|ADXL345_X_i[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\ & (\Maser_i2c_Controller_1|ADXL345_X_i[7]~1_combout\ & 
-- \Maser_i2c_Controller_1|ADXL345_X_i[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[3]~q\,
	datac => \Maser_i2c_Controller_1|ADXL345_X_i[7]~1_combout\,
	datad => \Maser_i2c_Controller_1|ADXL345_X_i[7]~0_combout\,
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\);

-- Location: FF_X26_Y29_N3
\Maser_i2c_Controller_1|ADXL345_X_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_X_i[6]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_X_i\(6));

-- Location: LCCOMB_X26_Y29_N12
\Maser_Mux_ADXL345_1|data2send[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[2][6]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_X_i\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_X_i\(6),
	combout => \Maser_Mux_ADXL345_1|data2send[2][6]~feeder_combout\);

-- Location: FF_X26_Y29_N13
\Maser_Mux_ADXL345_1|data2send[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[2][6]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[2][6]~q\);

-- Location: LCCOMB_X26_Y29_N16
\Maser_i2c_Controller_1|ADXL345_X_i[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[7]~feeder_combout\ = \i2c_master_1|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(7),
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[7]~feeder_combout\);

-- Location: FF_X26_Y29_N17
\Maser_i2c_Controller_1|ADXL345_X_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_X_i[7]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_X_i\(7));

-- Location: FF_X27_Y29_N23
\Maser_Mux_ADXL345_1|data2send[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_X_i\(7),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[2][7]~q\);

-- Location: LCCOMB_X26_Y29_N20
\Maser_i2c_Controller_1|ADXL345_X_i[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[5]~feeder_combout\ = \i2c_master_1|data_rd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(5),
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[5]~feeder_combout\);

-- Location: FF_X26_Y29_N21
\Maser_i2c_Controller_1|ADXL345_X_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_X_i[5]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_X_i\(5));

-- Location: LCCOMB_X27_Y29_N26
\Maser_Mux_ADXL345_1|data2send[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[2][5]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_X_i\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_X_i\(5),
	combout => \Maser_Mux_ADXL345_1|data2send[2][5]~feeder_combout\);

-- Location: FF_X27_Y29_N27
\Maser_Mux_ADXL345_1|data2send[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[2][5]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[2][5]~q\);

-- Location: LCCOMB_X26_Y29_N26
\Maser_i2c_Controller_1|ADXL345_X_i[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[4]~feeder_combout\ = \i2c_master_1|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(4),
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[4]~feeder_combout\);

-- Location: FF_X26_Y29_N27
\Maser_i2c_Controller_1|ADXL345_X_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_X_i[4]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_X_i\(4));

-- Location: FF_X27_Y29_N17
\Maser_Mux_ADXL345_1|data2send[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_X_i\(4),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[2][4]~q\);

-- Location: LCCOMB_X27_Y29_N16
\Maser_Mux_ADXL345_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux2~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[2][5]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|data2send[2][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[2][5]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[2][4]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y29_N22
\Maser_Mux_ADXL345_1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux2~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux2~0_combout\ & ((\Maser_Mux_ADXL345_1|data2send[2][7]~q\))) # (!\Maser_Mux_ADXL345_1|Mux2~0_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[2][6]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[2][6]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[2][7]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux2~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y29_N10
\Maser_i2c_Controller_1|ADXL345_X_i[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[2]~feeder_combout\ = \i2c_master_1|data_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(2),
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[2]~feeder_combout\);

-- Location: FF_X26_Y29_N11
\Maser_i2c_Controller_1|ADXL345_X_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_X_i[2]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_X_i\(2));

-- Location: LCCOMB_X26_Y29_N14
\Maser_Mux_ADXL345_1|data2send[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[2][2]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_X_i\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_X_i\(2),
	combout => \Maser_Mux_ADXL345_1|data2send[2][2]~feeder_combout\);

-- Location: FF_X26_Y29_N15
\Maser_Mux_ADXL345_1|data2send[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[2][2]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[2][2]~q\);

-- Location: LCCOMB_X26_Y29_N4
\Maser_i2c_Controller_1|ADXL345_X_i[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[3]~feeder_combout\ = \i2c_master_1|data_rd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(3),
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[3]~feeder_combout\);

-- Location: FF_X26_Y29_N5
\Maser_i2c_Controller_1|ADXL345_X_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_X_i[3]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_X_i\(3));

-- Location: FF_X27_Y29_N25
\Maser_Mux_ADXL345_1|data2send[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_X_i\(3),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[2][3]~q\);

-- Location: LCCOMB_X26_Y29_N24
\Maser_i2c_Controller_1|ADXL345_X_i[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[1]~feeder_combout\ = \i2c_master_1|data_rd\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(1),
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[1]~feeder_combout\);

-- Location: FF_X26_Y29_N25
\Maser_i2c_Controller_1|ADXL345_X_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_X_i[1]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_X_i\(1));

-- Location: LCCOMB_X27_Y29_N12
\Maser_Mux_ADXL345_1|data2send[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[2][1]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_X_i\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_X_i\(1),
	combout => \Maser_Mux_ADXL345_1|data2send[2][1]~feeder_combout\);

-- Location: FF_X27_Y29_N13
\Maser_Mux_ADXL345_1|data2send[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[2][1]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[2][1]~q\);

-- Location: LCCOMB_X26_Y29_N18
\Maser_i2c_Controller_1|ADXL345_X_i[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_X_i[0]~feeder_combout\ = \i2c_master_1|data_rd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(0),
	combout => \Maser_i2c_Controller_1|ADXL345_X_i[0]~feeder_combout\);

-- Location: FF_X26_Y29_N19
\Maser_i2c_Controller_1|ADXL345_X_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_X_i[0]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|ADXL345_X_i[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_X_i\(0));

-- Location: FF_X27_Y29_N7
\Maser_Mux_ADXL345_1|data2send[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_X_i\(0),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[2][0]~q\);

-- Location: LCCOMB_X27_Y29_N6
\Maser_Mux_ADXL345_1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux2~2_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[2][1]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|data2send[2][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[2][1]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[2][0]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux2~2_combout\);

-- Location: LCCOMB_X27_Y29_N24
\Maser_Mux_ADXL345_1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux2~3_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux2~2_combout\ & ((\Maser_Mux_ADXL345_1|data2send[2][3]~q\))) # (!\Maser_Mux_ADXL345_1|Mux2~2_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[2][2]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|data2send[2][2]~q\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[2][3]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux2~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux2~3_combout\);

-- Location: LCCOMB_X27_Y29_N14
\Maser_Mux_ADXL345_1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux2~4_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & (\Maser_Mux_ADXL345_1|Mux2~1_combout\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & ((\Maser_Mux_ADXL345_1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Mux2~1_combout\,
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux2~3_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux2~4_combout\);

-- Location: LCCOMB_X27_Y30_N4
\Maser_Mux_ADXL345_1|Mux256~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux256~0_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(2) & (\Maser_Mux_ADXL345_1|no_of_chars\(3))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(2) & ((\Maser_Mux_ADXL345_1|no_of_chars\(3) & (\Maser_Mux_ADXL345_1|Mux4~0_combout\)) # 
-- (!\Maser_Mux_ADXL345_1|no_of_chars\(3) & ((\Maser_Mux_ADXL345_1|Mux2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(3),
	datac => \Maser_Mux_ADXL345_1|Mux4~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux2~4_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux256~0_combout\);

-- Location: LCCOMB_X25_Y31_N26
\Maser_i2c_Controller_1|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|Equal5~1_combout\ = (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\ & (!\Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\ & \Maser_i2c_Controller_1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[1]~q\,
	datab => \Maser_i2c_Controller_1|Maser_i2c_Control:Read_Count[0]~q\,
	datad => \Maser_i2c_Controller_1|Equal5~0_combout\,
	combout => \Maser_i2c_Controller_1|Equal5~1_combout\);

-- Location: FF_X25_Y31_N31
\Maser_i2c_Controller_1|ADXL345_Y_i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(6),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(14));

-- Location: LCCOMB_X28_Y31_N20
\Maser_Mux_ADXL345_1|data2send[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[6][6]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Y_i\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_Y_i\(14),
	combout => \Maser_Mux_ADXL345_1|data2send[6][6]~feeder_combout\);

-- Location: FF_X28_Y31_N21
\Maser_Mux_ADXL345_1|data2send[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[6][6]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[6][6]~q\);

-- Location: LCCOMB_X25_Y31_N24
\Maser_i2c_Controller_1|ADXL345_Y_i[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[15]~feeder_combout\ = \i2c_master_1|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(7),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[15]~feeder_combout\);

-- Location: FF_X25_Y31_N25
\Maser_i2c_Controller_1|ADXL345_Y_i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[15]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(15));

-- Location: FF_X28_Y31_N31
\Maser_Mux_ADXL345_1|data2send[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(15),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[6][7]~q\);

-- Location: FF_X25_Y31_N9
\Maser_i2c_Controller_1|ADXL345_Y_i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(5),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(13));

-- Location: LCCOMB_X28_Y31_N18
\Maser_Mux_ADXL345_1|data2send[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[6][5]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Y_i\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_Y_i\(13),
	combout => \Maser_Mux_ADXL345_1|data2send[6][5]~feeder_combout\);

-- Location: FF_X28_Y31_N19
\Maser_Mux_ADXL345_1|data2send[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[6][5]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[6][5]~q\);

-- Location: LCCOMB_X25_Y31_N2
\Maser_i2c_Controller_1|ADXL345_Y_i[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[12]~feeder_combout\ = \i2c_master_1|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(4),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[12]~feeder_combout\);

-- Location: FF_X25_Y31_N3
\Maser_i2c_Controller_1|ADXL345_Y_i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[12]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(12));

-- Location: FF_X28_Y31_N25
\Maser_Mux_ADXL345_1|data2send[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(12),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[6][4]~q\);

-- Location: LCCOMB_X28_Y31_N24
\Maser_Mux_ADXL345_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux6~0_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & 
-- (\Maser_Mux_ADXL345_1|data2send[6][5]~q\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|data2send[6][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[6][5]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[6][4]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y31_N30
\Maser_Mux_ADXL345_1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux6~1_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|Mux6~0_combout\ & ((\Maser_Mux_ADXL345_1|data2send[6][7]~q\))) # (!\Maser_Mux_ADXL345_1|Mux6~0_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[6][6]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & (((\Maser_Mux_ADXL345_1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[6][6]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[6][7]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux6~0_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux6~1_combout\);

-- Location: FF_X25_Y31_N23
\Maser_i2c_Controller_1|ADXL345_Y_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(1),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(9));

-- Location: LCCOMB_X28_Y31_N16
\Maser_Mux_ADXL345_1|data2send[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[6][1]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Y_i\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_i2c_Controller_1|ADXL345_Y_i\(9),
	combout => \Maser_Mux_ADXL345_1|data2send[6][1]~feeder_combout\);

-- Location: FF_X28_Y31_N17
\Maser_Mux_ADXL345_1|data2send[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[6][1]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[6][1]~q\);

-- Location: LCCOMB_X25_Y31_N16
\Maser_i2c_Controller_1|ADXL345_Y_i[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_i2c_Controller_1|ADXL345_Y_i[11]~feeder_combout\ = \i2c_master_1|data_rd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(3),
	combout => \Maser_i2c_Controller_1|ADXL345_Y_i[11]~feeder_combout\);

-- Location: FF_X25_Y31_N17
\Maser_i2c_Controller_1|ADXL345_Y_i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_i2c_Controller_1|ADXL345_Y_i[11]~feeder_combout\,
	ena => \Maser_i2c_Controller_1|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(11));

-- Location: FF_X28_Y31_N11
\Maser_Mux_ADXL345_1|data2send[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(11),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[6][3]~q\);

-- Location: FF_X25_Y31_N13
\Maser_i2c_Controller_1|ADXL345_Y_i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(2),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(10));

-- Location: LCCOMB_X28_Y31_N2
\Maser_Mux_ADXL345_1|data2send[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|data2send[6][2]~feeder_combout\ = \Maser_i2c_Controller_1|ADXL345_Y_i\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Maser_i2c_Controller_1|ADXL345_Y_i\(10),
	combout => \Maser_Mux_ADXL345_1|data2send[6][2]~feeder_combout\);

-- Location: FF_X28_Y31_N3
\Maser_Mux_ADXL345_1|data2send[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|data2send[6][2]~feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[6][2]~q\);

-- Location: FF_X25_Y31_N27
\Maser_i2c_Controller_1|ADXL345_Y_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \i2c_master_1|data_rd\(0),
	sload => VCC,
	ena => \Maser_i2c_Controller_1|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_i2c_Controller_1|ADXL345_Y_i\(8));

-- Location: FF_X28_Y31_N29
\Maser_Mux_ADXL345_1|data2send[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|ADXL345_Y_i\(8),
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	ena => \Maser_Mux_ADXL345_1|Send_Operation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|data2send[6][0]~q\);

-- Location: LCCOMB_X28_Y31_N28
\Maser_Mux_ADXL345_1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux6~2_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & ((\Maser_Mux_ADXL345_1|data2send[6][2]~q\) # ((\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\ & 
-- (((\Maser_Mux_ADXL345_1|data2send[6][0]~q\ & !\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[1]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[6][2]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[6][0]~q\,
	datad => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	combout => \Maser_Mux_ADXL345_1|Mux6~2_combout\);

-- Location: LCCOMB_X28_Y31_N10
\Maser_Mux_ADXL345_1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux6~3_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & ((\Maser_Mux_ADXL345_1|Mux6~2_combout\ & ((\Maser_Mux_ADXL345_1|data2send[6][3]~q\))) # (!\Maser_Mux_ADXL345_1|Mux6~2_combout\ & 
-- (\Maser_Mux_ADXL345_1|data2send[6][1]~q\)))) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\ & (((\Maser_Mux_ADXL345_1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[0]~q\,
	datab => \Maser_Mux_ADXL345_1|data2send[6][1]~q\,
	datac => \Maser_Mux_ADXL345_1|data2send[6][3]~q\,
	datad => \Maser_Mux_ADXL345_1|Mux6~2_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux6~3_combout\);

-- Location: LCCOMB_X28_Y31_N8
\Maser_Mux_ADXL345_1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux6~4_combout\ = (\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & (\Maser_Mux_ADXL345_1|Mux6~1_combout\)) # (!\Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\ & ((\Maser_Mux_ADXL345_1|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Maser_Mux_ADXL345_1|uart_tx:bit_counter[2]~q\,
	datac => \Maser_Mux_ADXL345_1|Mux6~1_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux6~3_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux6~4_combout\);

-- Location: LCCOMB_X27_Y30_N10
\Maser_Mux_ADXL345_1|Mux256~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Mux256~1_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(2) & ((\Maser_Mux_ADXL345_1|Mux256~0_combout\ & (\Maser_Mux_ADXL345_1|Mux14~0_combout\)) # (!\Maser_Mux_ADXL345_1|Mux256~0_combout\ & ((\Maser_Mux_ADXL345_1|Mux6~4_combout\))))) # 
-- (!\Maser_Mux_ADXL345_1|no_of_chars\(2) & (((\Maser_Mux_ADXL345_1|Mux256~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(2),
	datab => \Maser_Mux_ADXL345_1|Mux14~0_combout\,
	datac => \Maser_Mux_ADXL345_1|Mux256~0_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux6~4_combout\,
	combout => \Maser_Mux_ADXL345_1|Mux256~1_combout\);

-- Location: LCCOMB_X27_Y30_N24
\Maser_Mux_ADXL345_1|Selector12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector12~10_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(1) & (!\Maser_Mux_ADXL345_1|no_of_chars\(0) & ((\Maser_Mux_ADXL345_1|Mux256~1_combout\)))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(1) & ((\Maser_Mux_ADXL345_1|no_of_chars\(0)) 
-- # ((\Maser_Mux_ADXL345_1|Mux256~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|no_of_chars\(1),
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(0),
	datac => \Maser_Mux_ADXL345_1|Mux256~5_combout\,
	datad => \Maser_Mux_ADXL345_1|Mux256~1_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector12~10_combout\);

-- Location: LCCOMB_X27_Y30_N18
\Maser_Mux_ADXL345_1|Selector12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector12~11_combout\ = (\Maser_Mux_ADXL345_1|no_of_chars\(0) & ((\Maser_Mux_ADXL345_1|Selector12~10_combout\ & ((\Maser_Mux_ADXL345_1|Selector12~7_combout\))) # (!\Maser_Mux_ADXL345_1|Selector12~10_combout\ & 
-- (\Maser_Mux_ADXL345_1|Mux256~3_combout\)))) # (!\Maser_Mux_ADXL345_1|no_of_chars\(0) & (((\Maser_Mux_ADXL345_1|Selector12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Mux256~3_combout\,
	datab => \Maser_Mux_ADXL345_1|no_of_chars\(0),
	datac => \Maser_Mux_ADXL345_1|Selector12~7_combout\,
	datad => \Maser_Mux_ADXL345_1|Selector12~10_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector12~11_combout\);

-- Location: LCCOMB_X27_Y30_N28
\Maser_Mux_ADXL345_1|Selector12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Maser_Mux_ADXL345_1|Selector12~8_combout\ = (!\Maser_Mux_ADXL345_1|Selector12~9_combout\ & (!\Maser_Mux_ADXL345_1|Selector12~6_combout\ & ((!\Maser_Mux_ADXL345_1|Selector12~11_combout\) # (!\Maser_Mux_ADXL345_1|Selector12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Maser_Mux_ADXL345_1|Selector12~9_combout\,
	datab => \Maser_Mux_ADXL345_1|Selector12~4_combout\,
	datac => \Maser_Mux_ADXL345_1|Selector12~6_combout\,
	datad => \Maser_Mux_ADXL345_1|Selector12~11_combout\,
	combout => \Maser_Mux_ADXL345_1|Selector12~8_combout\);

-- Location: FF_X27_Y30_N29
\Maser_Mux_ADXL345_1|SerDataOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Maser_Mux_ADXL345_1|Selector12~8_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Maser_Mux_ADXL345_1|SerDataOut~q\);

-- Location: LCCOMB_X37_Y30_N4
\LED[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[0]~reg0feeder_combout\ = \Maser_PushButton_1|LockOut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Maser_PushButton_1|LockOut~q\,
	combout => \LED[0]~reg0feeder_combout\);

-- Location: FF_X37_Y30_N5
\LED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED[0]~reg0feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[0]~reg0_q\);

-- Location: FF_X24_Y30_N27
\LED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Maser_i2c_Controller_1|Slave_read_nWrite~q\,
	clrn => \RST_I_i~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[1]~reg0_q\);

-- Location: LCCOMB_X36_Y30_N12
\LED[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[2]~reg0feeder_combout\ = \i2c_master_1|data_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(2),
	combout => \LED[2]~reg0feeder_combout\);

-- Location: FF_X36_Y30_N13
\LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED[2]~reg0feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[2]~reg0_q\);

-- Location: LCCOMB_X29_Y30_N12
\LED[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[3]~reg0feeder_combout\ = \i2c_master_1|data_rd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(3),
	combout => \LED[3]~reg0feeder_combout\);

-- Location: FF_X29_Y30_N13
\LED[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED[3]~reg0feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[3]~reg0_q\);

-- Location: LCCOMB_X24_Y29_N14
\LED[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[4]~reg0feeder_combout\ = \i2c_master_1|data_rd\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(4),
	combout => \LED[4]~reg0feeder_combout\);

-- Location: FF_X24_Y29_N15
\LED[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED[4]~reg0feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[4]~reg0_q\);

-- Location: LCCOMB_X20_Y27_N24
\LED[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[5]~reg0feeder_combout\ = \i2c_master_1|data_rd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(5),
	combout => \LED[5]~reg0feeder_combout\);

-- Location: FF_X20_Y27_N25
\LED[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED[5]~reg0feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[5]~reg0_q\);

-- Location: LCCOMB_X23_Y29_N12
\LED[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[6]~reg0feeder_combout\ = \i2c_master_1|data_rd\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_master_1|data_rd\(6),
	combout => \LED[6]~reg0feeder_combout\);

-- Location: FF_X23_Y29_N13
\LED[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED[6]~reg0feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[6]~reg0_q\);

-- Location: LCCOMB_X16_Y29_N20
\LED[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[7]~reg0feeder_combout\ = \i2c_master_1|data_rd\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2c_master_1|data_rd\(7),
	combout => \LED[7]~reg0feeder_combout\);

-- Location: FF_X16_Y29_N21
\LED[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LED[7]~reg0feeder_combout\,
	clrn => \RST_I_i~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[7]~reg0_q\);

-- Location: IOIBUF_X0_Y16_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\GPIO_2_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(0),
	o => \GPIO_2_IN[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\GPIO_2_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(1),
	o => \GPIO_2_IN[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\GPIO_2_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(2),
	o => \GPIO_2_IN[2]~input_o\);

-- Location: IOIBUF_X25_Y34_N15
\GPIO_0_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0_IN(0),
	o => \GPIO_0_IN[0]~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\GPIO_0_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0_IN(1),
	o => \GPIO_0_IN[1]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\GPIO_1_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1_IN(0),
	o => \GPIO_1_IN[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\GPIO_1_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1_IN(1),
	o => \GPIO_1_IN[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => I2C_SDAT,
	o => \I2C_SDAT~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\GPIO_2_UP[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2_UP(0),
	o => \GPIO_2_UP[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\GPIO_2_UP[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2_UP(1),
	o => \GPIO_2_UP[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\GPIO_2_UP[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2_UP(2),
	o => \GPIO_2_UP[2]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\GPIO_2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(0),
	o => \GPIO_2[0]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\GPIO_2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(1),
	o => \GPIO_2[1]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\GPIO_2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(2),
	o => \GPIO_2[2]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\GPIO_2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(3),
	o => \GPIO_2[3]~input_o\);

-- Location: IOIBUF_X53_Y30_N1
\GPIO_2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(4),
	o => \GPIO_2[4]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\GPIO_2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(5),
	o => \GPIO_2[5]~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\GPIO_2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(6),
	o => \GPIO_2[6]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\GPIO_2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(7),
	o => \GPIO_2[7]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\GPIO_2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(8),
	o => \GPIO_2[8]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\GPIO_0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(2),
	o => \GPIO_0[2]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\GPIO_0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(3),
	o => \GPIO_0[3]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\GPIO_0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(4),
	o => \GPIO_0[4]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\GPIO_0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(6),
	o => \GPIO_0[6]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\GPIO_0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(8),
	o => \GPIO_0[8]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\GPIO_0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(10),
	o => \GPIO_0[10]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\GPIO_0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(12),
	o => \GPIO_0[12]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\GPIO_0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(14),
	o => \GPIO_0[14]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\GPIO_0[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(16),
	o => \GPIO_0[16]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\GPIO_0[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(18),
	o => \GPIO_0[18]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\GPIO_0[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(20),
	o => \GPIO_0[20]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\GPIO_0[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(22),
	o => \GPIO_0[22]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\GPIO_0[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(24),
	o => \GPIO_0[24]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\GPIO_0[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(26),
	o => \GPIO_0[26]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\GPIO_1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(0),
	o => \GPIO_1[0]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\GPIO_1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(1),
	o => \GPIO_1[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\GPIO_1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(3),
	o => \GPIO_1[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\GPIO_1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(4),
	o => \GPIO_1[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\GPIO_1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(5),
	o => \GPIO_1[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\GPIO_1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(6),
	o => \GPIO_1[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\GPIO_1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(7),
	o => \GPIO_1[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\GPIO_1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(8),
	o => \GPIO_1[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\GPIO_1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(9),
	o => \GPIO_1[9]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\GPIO_1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(10),
	o => \GPIO_1[10]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\GPIO_1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(11),
	o => \GPIO_1[11]~input_o\);

-- Location: IOIBUF_X47_Y0_N22
\GPIO_1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(12),
	o => \GPIO_1[12]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\GPIO_1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(13),
	o => \GPIO_1[13]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\GPIO_1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(14),
	o => \GPIO_1[14]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\GPIO_1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(15),
	o => \GPIO_1[15]~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\GPIO_1[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(16),
	o => \GPIO_1[16]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\GPIO_1[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(17),
	o => \GPIO_1[17]~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\GPIO_1[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(18),
	o => \GPIO_1[18]~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\GPIO_1[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(19),
	o => \GPIO_1[19]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\GPIO_1[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(20),
	o => \GPIO_1[20]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\GPIO_1[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(21),
	o => \GPIO_1[21]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\GPIO_1[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(22),
	o => \GPIO_1[22]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\GPIO_1[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(23),
	o => \GPIO_1[23]~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\GPIO_1[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(24),
	o => \GPIO_1[24]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\GPIO_1[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(25),
	o => \GPIO_1[25]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\GPIO_1[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(26),
	o => \GPIO_1[26]~input_o\);

-- Location: IOIBUF_X53_Y6_N22
\GPIO_1[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(27),
	o => \GPIO_1[27]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\GPIO_1[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(28),
	o => \GPIO_1[28]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\GPIO_1[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(29),
	o => \GPIO_1[29]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\GPIO_1[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(30),
	o => \GPIO_1[30]~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\GPIO_1[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(31),
	o => \GPIO_1[31]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\GPIO_1[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(32),
	o => \GPIO_1[32]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\GPIO_1[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(33),
	o => \GPIO_1[33]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\GPIO_0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(0),
	o => \GPIO_0[0]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\GPIO_0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(5),
	o => \GPIO_0[5]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\GPIO_0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(7),
	o => \GPIO_0[7]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\GPIO_0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(9),
	o => \GPIO_0[9]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\GPIO_0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(11),
	o => \GPIO_0[11]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\GPIO_0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(13),
	o => \GPIO_0[13]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\GPIO_0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(15),
	o => \GPIO_0[15]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\GPIO_0[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(17),
	o => \GPIO_0[17]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\GPIO_0[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(19),
	o => \GPIO_0[19]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\GPIO_0[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(21),
	o => \GPIO_0[21]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\GPIO_0[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(23),
	o => \GPIO_0[23]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\GPIO_0[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(25),
	o => \GPIO_0[25]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\GPIO_0[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(27),
	o => \GPIO_0[27]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\GPIO_0[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(28),
	o => \GPIO_0[28]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\GPIO_0[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(29),
	o => \GPIO_0[29]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\GPIO_0[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(30),
	o => \GPIO_0[30]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\GPIO_0[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(31),
	o => \GPIO_0[31]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\GPIO_0[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(32),
	o => \GPIO_0[32]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\GPIO_0[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(33),
	o => \GPIO_0[33]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\GPIO_1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(2),
	o => \GPIO_1[2]~input_o\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_I2C_SCLK <= \I2C_SCLK~output_o\;

I2C_SDAT <= \I2C_SDAT~output_o\;

GPIO_2_UP(0) <= \GPIO_2_UP[0]~output_o\;

GPIO_2_UP(1) <= \GPIO_2_UP[1]~output_o\;

GPIO_2_UP(2) <= \GPIO_2_UP[2]~output_o\;

GPIO_2(0) <= \GPIO_2[0]~output_o\;

GPIO_2(1) <= \GPIO_2[1]~output_o\;

GPIO_2(2) <= \GPIO_2[2]~output_o\;

GPIO_2(3) <= \GPIO_2[3]~output_o\;

GPIO_2(4) <= \GPIO_2[4]~output_o\;

GPIO_2(5) <= \GPIO_2[5]~output_o\;

GPIO_2(6) <= \GPIO_2[6]~output_o\;

GPIO_2(7) <= \GPIO_2[7]~output_o\;

GPIO_2(8) <= \GPIO_2[8]~output_o\;

GPIO_0(2) <= \GPIO_0[2]~output_o\;

GPIO_0(3) <= \GPIO_0[3]~output_o\;

GPIO_0(4) <= \GPIO_0[4]~output_o\;

GPIO_0(6) <= \GPIO_0[6]~output_o\;

GPIO_0(8) <= \GPIO_0[8]~output_o\;

GPIO_0(10) <= \GPIO_0[10]~output_o\;

GPIO_0(12) <= \GPIO_0[12]~output_o\;

GPIO_0(14) <= \GPIO_0[14]~output_o\;

GPIO_0(16) <= \GPIO_0[16]~output_o\;

GPIO_0(18) <= \GPIO_0[18]~output_o\;

GPIO_0(20) <= \GPIO_0[20]~output_o\;

GPIO_0(22) <= \GPIO_0[22]~output_o\;

GPIO_0(24) <= \GPIO_0[24]~output_o\;

GPIO_0(26) <= \GPIO_0[26]~output_o\;

GPIO_1(0) <= \GPIO_1[0]~output_o\;

GPIO_1(1) <= \GPIO_1[1]~output_o\;

GPIO_1(3) <= \GPIO_1[3]~output_o\;

GPIO_1(4) <= \GPIO_1[4]~output_o\;

GPIO_1(5) <= \GPIO_1[5]~output_o\;

GPIO_1(6) <= \GPIO_1[6]~output_o\;

GPIO_1(7) <= \GPIO_1[7]~output_o\;

GPIO_1(8) <= \GPIO_1[8]~output_o\;

GPIO_1(9) <= \GPIO_1[9]~output_o\;

GPIO_1(10) <= \GPIO_1[10]~output_o\;

GPIO_1(11) <= \GPIO_1[11]~output_o\;

GPIO_1(12) <= \GPIO_1[12]~output_o\;

GPIO_1(13) <= \GPIO_1[13]~output_o\;

GPIO_1(14) <= \GPIO_1[14]~output_o\;

GPIO_1(15) <= \GPIO_1[15]~output_o\;

GPIO_1(16) <= \GPIO_1[16]~output_o\;

GPIO_1(17) <= \GPIO_1[17]~output_o\;

GPIO_1(18) <= \GPIO_1[18]~output_o\;

GPIO_1(19) <= \GPIO_1[19]~output_o\;

GPIO_1(20) <= \GPIO_1[20]~output_o\;

GPIO_1(21) <= \GPIO_1[21]~output_o\;

GPIO_1(22) <= \GPIO_1[22]~output_o\;

GPIO_1(23) <= \GPIO_1[23]~output_o\;

GPIO_1(24) <= \GPIO_1[24]~output_o\;

GPIO_1(25) <= \GPIO_1[25]~output_o\;

GPIO_1(26) <= \GPIO_1[26]~output_o\;

GPIO_1(27) <= \GPIO_1[27]~output_o\;

GPIO_1(28) <= \GPIO_1[28]~output_o\;

GPIO_1(29) <= \GPIO_1[29]~output_o\;

GPIO_1(30) <= \GPIO_1[30]~output_o\;

GPIO_1(31) <= \GPIO_1[31]~output_o\;

GPIO_1(32) <= \GPIO_1[32]~output_o\;

GPIO_1(33) <= \GPIO_1[33]~output_o\;

GPIO_0(0) <= \GPIO_0[0]~output_o\;

GPIO_0(1) <= \GPIO_0[1]~output_o\;

GPIO_0(5) <= \GPIO_0[5]~output_o\;

GPIO_0(7) <= \GPIO_0[7]~output_o\;

GPIO_0(9) <= \GPIO_0[9]~output_o\;

GPIO_0(11) <= \GPIO_0[11]~output_o\;

GPIO_0(13) <= \GPIO_0[13]~output_o\;

GPIO_0(15) <= \GPIO_0[15]~output_o\;

GPIO_0(17) <= \GPIO_0[17]~output_o\;

GPIO_0(19) <= \GPIO_0[19]~output_o\;

GPIO_0(21) <= \GPIO_0[21]~output_o\;

GPIO_0(23) <= \GPIO_0[23]~output_o\;

GPIO_0(25) <= \GPIO_0[25]~output_o\;

GPIO_0(27) <= \GPIO_0[27]~output_o\;

GPIO_0(28) <= \GPIO_0[28]~output_o\;

GPIO_0(29) <= \GPIO_0[29]~output_o\;

GPIO_0(30) <= \GPIO_0[30]~output_o\;

GPIO_0(31) <= \GPIO_0[31]~output_o\;

GPIO_0(32) <= \GPIO_0[32]~output_o\;

GPIO_0(33) <= \GPIO_0[33]~output_o\;

GPIO_1(2) <= \GPIO_1[2]~output_o\;
END structure;


