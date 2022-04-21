-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/21/2022 13:26:24"

-- 
-- Device: Altera EP4CE115F29I8L Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE MIPS_Processor_data_type IS

TYPE Instruction_Program_31_0_type IS ARRAY (31 DOWNTO 0) OF std_logic;
TYPE Instruction_Program_31_0_15_0_type IS ARRAY (15 DOWNTO 0) OF Instruction_Program_31_0_type;
SUBTYPE Instruction_Program_type IS Instruction_Program_31_0_15_0_type;

END MIPS_Processor_data_type;

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.MIPS_PROCESSOR_DATA_TYPE.ALL;

ENTITY 	MIPS_Processor IS
    PORT (
	Instruction_Program : IN Instruction_Program_type;
	RESET : IN std_logic;
	CLK : IN std_logic
	);
END MIPS_Processor;

-- Design Ports Information
-- Instruction_Program[0][0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][3]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][6]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][8]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][9]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][10]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][12]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][13]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][14]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][15]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][16]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][17]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][18]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][19]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][20]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][21]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][22]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][23]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][24]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][25]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][26]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][27]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][28]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][29]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][30]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[0][31]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][0]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][1]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][3]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][7]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][8]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][9]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][10]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][11]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][12]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][13]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][14]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][16]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][17]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][18]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][19]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][20]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][21]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][22]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][23]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][24]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][25]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][26]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][27]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][28]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][29]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][30]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[1][31]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][2]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][4]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][5]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][7]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][8]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][10]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][12]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][13]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][14]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][15]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][16]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][17]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][19]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][20]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][21]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][22]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][23]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][24]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][25]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][26]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][27]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][28]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][29]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][30]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[2][31]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][3]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][4]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][5]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][7]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][8]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][9]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][10]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][13]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][14]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][15]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][16]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][17]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][18]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][19]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][20]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][21]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][22]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][23]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][24]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][25]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][26]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][27]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][28]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][29]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][30]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[3][31]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][1]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][6]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][9]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][10]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][11]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][13]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][15]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][16]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][17]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][18]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][19]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][20]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][21]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][22]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][23]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][24]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][25]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][26]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][27]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][28]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][29]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][30]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[4][31]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][1]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][5]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][7]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][8]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][9]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][11]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][12]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][14]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][15]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][16]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][17]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][18]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][19]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][20]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][21]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][22]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][23]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][24]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][25]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][26]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][27]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][28]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][29]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][30]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[5][31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][3]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][5]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][7]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][8]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][9]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][10]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][11]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][12]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][13]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][14]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][15]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][16]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][17]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][18]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][19]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][20]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][21]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][22]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][23]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][24]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][25]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][26]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][27]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][28]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][29]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][30]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[6][31]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][0]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][2]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][4]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][6]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][9]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][10]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][14]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][16]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][17]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][18]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][19]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][20]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][21]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][22]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][23]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][24]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][25]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][26]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][27]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][28]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][29]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][30]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[7][31]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][0]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][4]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][6]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][7]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][8]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][9]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][10]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][12]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][13]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][14]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][15]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][16]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][17]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][18]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][19]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][20]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][21]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][22]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][23]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][24]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][25]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][26]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][27]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][28]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][29]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][30]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[8][31]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][0]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][1]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][4]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][7]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][8]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][9]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][11]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][12]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][13]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][14]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][15]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][16]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][17]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][18]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][19]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][20]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][21]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][22]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][23]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][24]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][25]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][26]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][27]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][28]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][29]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][30]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[9][31]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][0]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][5]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][6]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][7]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][8]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][9]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][11]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][13]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][15]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][16]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][17]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][18]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][19]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][20]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][21]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][22]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][23]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][24]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][25]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][26]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][27]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][28]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][29]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][30]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[10][31]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][3]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][7]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][8]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][9]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][11]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][12]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][15]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][16]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][17]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][18]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][19]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][20]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][21]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][22]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][23]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][24]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][25]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][26]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][28]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][29]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][30]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[11][31]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][0]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][1]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][3]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][6]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][7]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][8]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][9]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][10]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][11]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][12]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][13]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][14]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][15]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][16]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][17]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][18]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][19]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][20]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][21]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][22]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][23]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][24]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][25]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][26]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][27]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][28]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][29]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][30]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[12][31]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][0]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][1]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][5]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][6]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][8]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][10]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][12]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][13]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][16]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][18]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][19]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][20]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][21]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][22]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][23]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][24]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][25]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][26]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][27]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][28]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][29]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][30]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[13][31]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][1]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][2]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][3]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][5]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][7]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][8]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][9]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][10]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][11]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][12]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][13]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][15]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][16]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][17]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][18]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][19]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][20]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][21]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][22]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][23]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][24]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][25]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][26]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][27]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][29]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][30]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[14][31]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][1]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][2]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][4]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][9]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][10]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][11]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][12]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][13]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][14]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][15]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][16]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][17]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][18]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][19]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][20]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][21]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][22]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][23]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][24]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][25]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][26]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][27]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][28]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][29]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][30]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction_Program[15][31]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_Processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Instruction_Program : Instruction_Program_type;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \Instruction_Program[0][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[0][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[1][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[2][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[3][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[4][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[5][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[6][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[7][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[8][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[9][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[10][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[11][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[12][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[13][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[14][31]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][0]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][1]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][2]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][3]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][4]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][5]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][6]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][7]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][8]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][9]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][10]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][11]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][12]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][13]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][14]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][15]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][16]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][17]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][18]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][19]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][20]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][21]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][22]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][23]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][24]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][25]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][26]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][27]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][28]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][29]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][30]~input_o\ : std_logic;
SIGNAL \Instruction_Program[15][31]~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Instruction_Program <= Instruction_Program;
ww_RESET <= RESET;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOIBUF_X107_Y0_N8
\Instruction_Program[0][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(0),
	o => \Instruction_Program[0][0]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\Instruction_Program[0][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(1),
	o => \Instruction_Program[0][1]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\Instruction_Program[0][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(2),
	o => \Instruction_Program[0][2]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\Instruction_Program[0][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(3),
	o => \Instruction_Program[0][3]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\Instruction_Program[0][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(4),
	o => \Instruction_Program[0][4]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\Instruction_Program[0][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(5),
	o => \Instruction_Program[0][5]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\Instruction_Program[0][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(6),
	o => \Instruction_Program[0][6]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\Instruction_Program[0][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(7),
	o => \Instruction_Program[0][7]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\Instruction_Program[0][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(8),
	o => \Instruction_Program[0][8]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\Instruction_Program[0][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(9),
	o => \Instruction_Program[0][9]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\Instruction_Program[0][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(10),
	o => \Instruction_Program[0][10]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\Instruction_Program[0][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(11),
	o => \Instruction_Program[0][11]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\Instruction_Program[0][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(12),
	o => \Instruction_Program[0][12]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\Instruction_Program[0][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(13),
	o => \Instruction_Program[0][13]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\Instruction_Program[0][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(14),
	o => \Instruction_Program[0][14]~input_o\);

-- Location: IOIBUF_X115_Y54_N15
\Instruction_Program[0][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(15),
	o => \Instruction_Program[0][15]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\Instruction_Program[0][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(16),
	o => \Instruction_Program[0][16]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\Instruction_Program[0][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(17),
	o => \Instruction_Program[0][17]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\Instruction_Program[0][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(18),
	o => \Instruction_Program[0][18]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\Instruction_Program[0][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(19),
	o => \Instruction_Program[0][19]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\Instruction_Program[0][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(20),
	o => \Instruction_Program[0][20]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\Instruction_Program[0][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(21),
	o => \Instruction_Program[0][21]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\Instruction_Program[0][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(22),
	o => \Instruction_Program[0][22]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\Instruction_Program[0][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(23),
	o => \Instruction_Program[0][23]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\Instruction_Program[0][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(24),
	o => \Instruction_Program[0][24]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\Instruction_Program[0][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(25),
	o => \Instruction_Program[0][25]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\Instruction_Program[0][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(26),
	o => \Instruction_Program[0][26]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\Instruction_Program[0][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(27),
	o => \Instruction_Program[0][27]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\Instruction_Program[0][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(28),
	o => \Instruction_Program[0][28]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\Instruction_Program[0][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(29),
	o => \Instruction_Program[0][29]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\Instruction_Program[0][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(30),
	o => \Instruction_Program[0][30]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\Instruction_Program[0][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(0)(31),
	o => \Instruction_Program[0][31]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\Instruction_Program[1][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(0),
	o => \Instruction_Program[1][0]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\Instruction_Program[1][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(1),
	o => \Instruction_Program[1][1]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\Instruction_Program[1][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(2),
	o => \Instruction_Program[1][2]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\Instruction_Program[1][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(3),
	o => \Instruction_Program[1][3]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\Instruction_Program[1][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(4),
	o => \Instruction_Program[1][4]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\Instruction_Program[1][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(5),
	o => \Instruction_Program[1][5]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\Instruction_Program[1][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(6),
	o => \Instruction_Program[1][6]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\Instruction_Program[1][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(7),
	o => \Instruction_Program[1][7]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\Instruction_Program[1][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(8),
	o => \Instruction_Program[1][8]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\Instruction_Program[1][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(9),
	o => \Instruction_Program[1][9]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\Instruction_Program[1][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(10),
	o => \Instruction_Program[1][10]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\Instruction_Program[1][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(11),
	o => \Instruction_Program[1][11]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\Instruction_Program[1][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(12),
	o => \Instruction_Program[1][12]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\Instruction_Program[1][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(13),
	o => \Instruction_Program[1][13]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\Instruction_Program[1][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(14),
	o => \Instruction_Program[1][14]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\Instruction_Program[1][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(15),
	o => \Instruction_Program[1][15]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\Instruction_Program[1][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(16),
	o => \Instruction_Program[1][16]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\Instruction_Program[1][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(17),
	o => \Instruction_Program[1][17]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\Instruction_Program[1][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(18),
	o => \Instruction_Program[1][18]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\Instruction_Program[1][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(19),
	o => \Instruction_Program[1][19]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\Instruction_Program[1][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(20),
	o => \Instruction_Program[1][20]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\Instruction_Program[1][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(21),
	o => \Instruction_Program[1][21]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\Instruction_Program[1][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(22),
	o => \Instruction_Program[1][22]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\Instruction_Program[1][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(23),
	o => \Instruction_Program[1][23]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\Instruction_Program[1][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(24),
	o => \Instruction_Program[1][24]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\Instruction_Program[1][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(25),
	o => \Instruction_Program[1][25]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\Instruction_Program[1][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(26),
	o => \Instruction_Program[1][26]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\Instruction_Program[1][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(27),
	o => \Instruction_Program[1][27]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\Instruction_Program[1][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(28),
	o => \Instruction_Program[1][28]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\Instruction_Program[1][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(29),
	o => \Instruction_Program[1][29]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\Instruction_Program[1][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(30),
	o => \Instruction_Program[1][30]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\Instruction_Program[1][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(1)(31),
	o => \Instruction_Program[1][31]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\Instruction_Program[2][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(0),
	o => \Instruction_Program[2][0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\Instruction_Program[2][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(1),
	o => \Instruction_Program[2][1]~input_o\);

-- Location: IOIBUF_X115_Y58_N22
\Instruction_Program[2][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(2),
	o => \Instruction_Program[2][2]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\Instruction_Program[2][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(3),
	o => \Instruction_Program[2][3]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\Instruction_Program[2][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(4),
	o => \Instruction_Program[2][4]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\Instruction_Program[2][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(5),
	o => \Instruction_Program[2][5]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\Instruction_Program[2][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(6),
	o => \Instruction_Program[2][6]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\Instruction_Program[2][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(7),
	o => \Instruction_Program[2][7]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\Instruction_Program[2][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(8),
	o => \Instruction_Program[2][8]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\Instruction_Program[2][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(9),
	o => \Instruction_Program[2][9]~input_o\);

-- Location: IOIBUF_X115_Y8_N15
\Instruction_Program[2][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(10),
	o => \Instruction_Program[2][10]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\Instruction_Program[2][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(11),
	o => \Instruction_Program[2][11]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\Instruction_Program[2][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(12),
	o => \Instruction_Program[2][12]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\Instruction_Program[2][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(13),
	o => \Instruction_Program[2][13]~input_o\);

-- Location: IOIBUF_X115_Y31_N1
\Instruction_Program[2][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(14),
	o => \Instruction_Program[2][14]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\Instruction_Program[2][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(15),
	o => \Instruction_Program[2][15]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\Instruction_Program[2][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(16),
	o => \Instruction_Program[2][16]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\Instruction_Program[2][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(17),
	o => \Instruction_Program[2][17]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\Instruction_Program[2][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(18),
	o => \Instruction_Program[2][18]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\Instruction_Program[2][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(19),
	o => \Instruction_Program[2][19]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\Instruction_Program[2][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(20),
	o => \Instruction_Program[2][20]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\Instruction_Program[2][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(21),
	o => \Instruction_Program[2][21]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\Instruction_Program[2][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(22),
	o => \Instruction_Program[2][22]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\Instruction_Program[2][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(23),
	o => \Instruction_Program[2][23]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\Instruction_Program[2][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(24),
	o => \Instruction_Program[2][24]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\Instruction_Program[2][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(25),
	o => \Instruction_Program[2][25]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\Instruction_Program[2][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(26),
	o => \Instruction_Program[2][26]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\Instruction_Program[2][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(27),
	o => \Instruction_Program[2][27]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\Instruction_Program[2][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(28),
	o => \Instruction_Program[2][28]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\Instruction_Program[2][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(29),
	o => \Instruction_Program[2][29]~input_o\);

-- Location: IOIBUF_X115_Y51_N8
\Instruction_Program[2][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(30),
	o => \Instruction_Program[2][30]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\Instruction_Program[2][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(2)(31),
	o => \Instruction_Program[2][31]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\Instruction_Program[3][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(0),
	o => \Instruction_Program[3][0]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\Instruction_Program[3][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(1),
	o => \Instruction_Program[3][1]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\Instruction_Program[3][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(2),
	o => \Instruction_Program[3][2]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\Instruction_Program[3][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(3),
	o => \Instruction_Program[3][3]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\Instruction_Program[3][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(4),
	o => \Instruction_Program[3][4]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\Instruction_Program[3][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(5),
	o => \Instruction_Program[3][5]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\Instruction_Program[3][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(6),
	o => \Instruction_Program[3][6]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\Instruction_Program[3][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(7),
	o => \Instruction_Program[3][7]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\Instruction_Program[3][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(8),
	o => \Instruction_Program[3][8]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\Instruction_Program[3][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(9),
	o => \Instruction_Program[3][9]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\Instruction_Program[3][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(10),
	o => \Instruction_Program[3][10]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\Instruction_Program[3][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(11),
	o => \Instruction_Program[3][11]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\Instruction_Program[3][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(12),
	o => \Instruction_Program[3][12]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\Instruction_Program[3][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(13),
	o => \Instruction_Program[3][13]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\Instruction_Program[3][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(14),
	o => \Instruction_Program[3][14]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\Instruction_Program[3][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(15),
	o => \Instruction_Program[3][15]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\Instruction_Program[3][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(16),
	o => \Instruction_Program[3][16]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\Instruction_Program[3][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(17),
	o => \Instruction_Program[3][17]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\Instruction_Program[3][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(18),
	o => \Instruction_Program[3][18]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\Instruction_Program[3][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(19),
	o => \Instruction_Program[3][19]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\Instruction_Program[3][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(20),
	o => \Instruction_Program[3][20]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\Instruction_Program[3][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(21),
	o => \Instruction_Program[3][21]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\Instruction_Program[3][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(22),
	o => \Instruction_Program[3][22]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\Instruction_Program[3][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(23),
	o => \Instruction_Program[3][23]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\Instruction_Program[3][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(24),
	o => \Instruction_Program[3][24]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\Instruction_Program[3][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(25),
	o => \Instruction_Program[3][25]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\Instruction_Program[3][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(26),
	o => \Instruction_Program[3][26]~input_o\);

-- Location: IOIBUF_X100_Y73_N22
\Instruction_Program[3][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(27),
	o => \Instruction_Program[3][27]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\Instruction_Program[3][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(28),
	o => \Instruction_Program[3][28]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\Instruction_Program[3][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(29),
	o => \Instruction_Program[3][29]~input_o\);

-- Location: IOIBUF_X115_Y33_N8
\Instruction_Program[3][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(30),
	o => \Instruction_Program[3][30]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\Instruction_Program[3][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(3)(31),
	o => \Instruction_Program[3][31]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\Instruction_Program[4][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(0),
	o => \Instruction_Program[4][0]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\Instruction_Program[4][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(1),
	o => \Instruction_Program[4][1]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\Instruction_Program[4][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(2),
	o => \Instruction_Program[4][2]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\Instruction_Program[4][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(3),
	o => \Instruction_Program[4][3]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\Instruction_Program[4][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(4),
	o => \Instruction_Program[4][4]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\Instruction_Program[4][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(5),
	o => \Instruction_Program[4][5]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\Instruction_Program[4][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(6),
	o => \Instruction_Program[4][6]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\Instruction_Program[4][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(7),
	o => \Instruction_Program[4][7]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\Instruction_Program[4][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(8),
	o => \Instruction_Program[4][8]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\Instruction_Program[4][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(9),
	o => \Instruction_Program[4][9]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\Instruction_Program[4][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(10),
	o => \Instruction_Program[4][10]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\Instruction_Program[4][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(11),
	o => \Instruction_Program[4][11]~input_o\);

-- Location: IOIBUF_X56_Y73_N1
\Instruction_Program[4][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(12),
	o => \Instruction_Program[4][12]~input_o\);

-- Location: IOIBUF_X56_Y73_N8
\Instruction_Program[4][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(13),
	o => \Instruction_Program[4][13]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\Instruction_Program[4][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(14),
	o => \Instruction_Program[4][14]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\Instruction_Program[4][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(15),
	o => \Instruction_Program[4][15]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\Instruction_Program[4][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(16),
	o => \Instruction_Program[4][16]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\Instruction_Program[4][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(17),
	o => \Instruction_Program[4][17]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\Instruction_Program[4][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(18),
	o => \Instruction_Program[4][18]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\Instruction_Program[4][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(19),
	o => \Instruction_Program[4][19]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\Instruction_Program[4][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(20),
	o => \Instruction_Program[4][20]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\Instruction_Program[4][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(21),
	o => \Instruction_Program[4][21]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\Instruction_Program[4][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(22),
	o => \Instruction_Program[4][22]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\Instruction_Program[4][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(23),
	o => \Instruction_Program[4][23]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\Instruction_Program[4][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(24),
	o => \Instruction_Program[4][24]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\Instruction_Program[4][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(25),
	o => \Instruction_Program[4][25]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\Instruction_Program[4][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(26),
	o => \Instruction_Program[4][26]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\Instruction_Program[4][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(27),
	o => \Instruction_Program[4][27]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\Instruction_Program[4][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(28),
	o => \Instruction_Program[4][28]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\Instruction_Program[4][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(29),
	o => \Instruction_Program[4][29]~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\Instruction_Program[4][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(30),
	o => \Instruction_Program[4][30]~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\Instruction_Program[4][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(4)(31),
	o => \Instruction_Program[4][31]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\Instruction_Program[5][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(0),
	o => \Instruction_Program[5][0]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\Instruction_Program[5][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(1),
	o => \Instruction_Program[5][1]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\Instruction_Program[5][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(2),
	o => \Instruction_Program[5][2]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\Instruction_Program[5][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(3),
	o => \Instruction_Program[5][3]~input_o\);

-- Location: IOIBUF_X0_Y68_N15
\Instruction_Program[5][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(4),
	o => \Instruction_Program[5][4]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\Instruction_Program[5][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(5),
	o => \Instruction_Program[5][5]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\Instruction_Program[5][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(6),
	o => \Instruction_Program[5][6]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\Instruction_Program[5][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(7),
	o => \Instruction_Program[5][7]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\Instruction_Program[5][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(8),
	o => \Instruction_Program[5][8]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\Instruction_Program[5][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(9),
	o => \Instruction_Program[5][9]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\Instruction_Program[5][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(10),
	o => \Instruction_Program[5][10]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\Instruction_Program[5][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(11),
	o => \Instruction_Program[5][11]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\Instruction_Program[5][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(12),
	o => \Instruction_Program[5][12]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\Instruction_Program[5][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(13),
	o => \Instruction_Program[5][13]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\Instruction_Program[5][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(14),
	o => \Instruction_Program[5][14]~input_o\);

-- Location: IOIBUF_X115_Y56_N22
\Instruction_Program[5][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(15),
	o => \Instruction_Program[5][15]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\Instruction_Program[5][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(16),
	o => \Instruction_Program[5][16]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\Instruction_Program[5][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(17),
	o => \Instruction_Program[5][17]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\Instruction_Program[5][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(18),
	o => \Instruction_Program[5][18]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\Instruction_Program[5][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(19),
	o => \Instruction_Program[5][19]~input_o\);

-- Location: IOIBUF_X115_Y8_N22
\Instruction_Program[5][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(20),
	o => \Instruction_Program[5][20]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\Instruction_Program[5][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(21),
	o => \Instruction_Program[5][21]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\Instruction_Program[5][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(22),
	o => \Instruction_Program[5][22]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\Instruction_Program[5][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(23),
	o => \Instruction_Program[5][23]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\Instruction_Program[5][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(24),
	o => \Instruction_Program[5][24]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\Instruction_Program[5][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(25),
	o => \Instruction_Program[5][25]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\Instruction_Program[5][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(26),
	o => \Instruction_Program[5][26]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\Instruction_Program[5][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(27),
	o => \Instruction_Program[5][27]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\Instruction_Program[5][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(28),
	o => \Instruction_Program[5][28]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\Instruction_Program[5][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(29),
	o => \Instruction_Program[5][29]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\Instruction_Program[5][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(30),
	o => \Instruction_Program[5][30]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\Instruction_Program[5][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(5)(31),
	o => \Instruction_Program[5][31]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\Instruction_Program[6][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(0),
	o => \Instruction_Program[6][0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\Instruction_Program[6][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(1),
	o => \Instruction_Program[6][1]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\Instruction_Program[6][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(2),
	o => \Instruction_Program[6][2]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\Instruction_Program[6][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(3),
	o => \Instruction_Program[6][3]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\Instruction_Program[6][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(4),
	o => \Instruction_Program[6][4]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\Instruction_Program[6][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(5),
	o => \Instruction_Program[6][5]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\Instruction_Program[6][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(6),
	o => \Instruction_Program[6][6]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\Instruction_Program[6][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(7),
	o => \Instruction_Program[6][7]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\Instruction_Program[6][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(8),
	o => \Instruction_Program[6][8]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\Instruction_Program[6][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(9),
	o => \Instruction_Program[6][9]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\Instruction_Program[6][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(10),
	o => \Instruction_Program[6][10]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\Instruction_Program[6][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(11),
	o => \Instruction_Program[6][11]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\Instruction_Program[6][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(12),
	o => \Instruction_Program[6][12]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\Instruction_Program[6][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(13),
	o => \Instruction_Program[6][13]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\Instruction_Program[6][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(14),
	o => \Instruction_Program[6][14]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\Instruction_Program[6][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(15),
	o => \Instruction_Program[6][15]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\Instruction_Program[6][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(16),
	o => \Instruction_Program[6][16]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\Instruction_Program[6][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(17),
	o => \Instruction_Program[6][17]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\Instruction_Program[6][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(18),
	o => \Instruction_Program[6][18]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\Instruction_Program[6][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(19),
	o => \Instruction_Program[6][19]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\Instruction_Program[6][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(20),
	o => \Instruction_Program[6][20]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\Instruction_Program[6][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(21),
	o => \Instruction_Program[6][21]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\Instruction_Program[6][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(22),
	o => \Instruction_Program[6][22]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\Instruction_Program[6][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(23),
	o => \Instruction_Program[6][23]~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\Instruction_Program[6][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(24),
	o => \Instruction_Program[6][24]~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\Instruction_Program[6][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(25),
	o => \Instruction_Program[6][25]~input_o\);

-- Location: IOIBUF_X115_Y18_N1
\Instruction_Program[6][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(26),
	o => \Instruction_Program[6][26]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\Instruction_Program[6][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(27),
	o => \Instruction_Program[6][27]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\Instruction_Program[6][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(28),
	o => \Instruction_Program[6][28]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\Instruction_Program[6][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(29),
	o => \Instruction_Program[6][29]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\Instruction_Program[6][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(30),
	o => \Instruction_Program[6][30]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\Instruction_Program[6][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(6)(31),
	o => \Instruction_Program[6][31]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\Instruction_Program[7][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(0),
	o => \Instruction_Program[7][0]~input_o\);

-- Location: IOIBUF_X115_Y64_N8
\Instruction_Program[7][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(1),
	o => \Instruction_Program[7][1]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\Instruction_Program[7][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(2),
	o => \Instruction_Program[7][2]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\Instruction_Program[7][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(3),
	o => \Instruction_Program[7][3]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\Instruction_Program[7][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(4),
	o => \Instruction_Program[7][4]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\Instruction_Program[7][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(5),
	o => \Instruction_Program[7][5]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\Instruction_Program[7][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(6),
	o => \Instruction_Program[7][6]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\Instruction_Program[7][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(7),
	o => \Instruction_Program[7][7]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\Instruction_Program[7][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(8),
	o => \Instruction_Program[7][8]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\Instruction_Program[7][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(9),
	o => \Instruction_Program[7][9]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\Instruction_Program[7][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(10),
	o => \Instruction_Program[7][10]~input_o\);

-- Location: IOIBUF_X115_Y25_N15
\Instruction_Program[7][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(11),
	o => \Instruction_Program[7][11]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\Instruction_Program[7][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(12),
	o => \Instruction_Program[7][12]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\Instruction_Program[7][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(13),
	o => \Instruction_Program[7][13]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\Instruction_Program[7][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(14),
	o => \Instruction_Program[7][14]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\Instruction_Program[7][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(15),
	o => \Instruction_Program[7][15]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\Instruction_Program[7][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(16),
	o => \Instruction_Program[7][16]~input_o\);

-- Location: IOIBUF_X87_Y0_N15
\Instruction_Program[7][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(17),
	o => \Instruction_Program[7][17]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\Instruction_Program[7][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(18),
	o => \Instruction_Program[7][18]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\Instruction_Program[7][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(19),
	o => \Instruction_Program[7][19]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\Instruction_Program[7][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(20),
	o => \Instruction_Program[7][20]~input_o\);

-- Location: IOIBUF_X115_Y22_N1
\Instruction_Program[7][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(21),
	o => \Instruction_Program[7][21]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\Instruction_Program[7][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(22),
	o => \Instruction_Program[7][22]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\Instruction_Program[7][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(23),
	o => \Instruction_Program[7][23]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\Instruction_Program[7][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(24),
	o => \Instruction_Program[7][24]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\Instruction_Program[7][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(25),
	o => \Instruction_Program[7][25]~input_o\);

-- Location: IOIBUF_X115_Y48_N1
\Instruction_Program[7][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(26),
	o => \Instruction_Program[7][26]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\Instruction_Program[7][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(27),
	o => \Instruction_Program[7][27]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\Instruction_Program[7][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(28),
	o => \Instruction_Program[7][28]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\Instruction_Program[7][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(29),
	o => \Instruction_Program[7][29]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\Instruction_Program[7][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(30),
	o => \Instruction_Program[7][30]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\Instruction_Program[7][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(7)(31),
	o => \Instruction_Program[7][31]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\Instruction_Program[8][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(0),
	o => \Instruction_Program[8][0]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\Instruction_Program[8][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(1),
	o => \Instruction_Program[8][1]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\Instruction_Program[8][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(2),
	o => \Instruction_Program[8][2]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\Instruction_Program[8][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(3),
	o => \Instruction_Program[8][3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\Instruction_Program[8][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(4),
	o => \Instruction_Program[8][4]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\Instruction_Program[8][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(5),
	o => \Instruction_Program[8][5]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\Instruction_Program[8][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(6),
	o => \Instruction_Program[8][6]~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\Instruction_Program[8][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(7),
	o => \Instruction_Program[8][7]~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\Instruction_Program[8][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(8),
	o => \Instruction_Program[8][8]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\Instruction_Program[8][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(9),
	o => \Instruction_Program[8][9]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\Instruction_Program[8][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(10),
	o => \Instruction_Program[8][10]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Instruction_Program[8][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(11),
	o => \Instruction_Program[8][11]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\Instruction_Program[8][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(12),
	o => \Instruction_Program[8][12]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\Instruction_Program[8][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(13),
	o => \Instruction_Program[8][13]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\Instruction_Program[8][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(14),
	o => \Instruction_Program[8][14]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\Instruction_Program[8][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(15),
	o => \Instruction_Program[8][15]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\Instruction_Program[8][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(16),
	o => \Instruction_Program[8][16]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\Instruction_Program[8][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(17),
	o => \Instruction_Program[8][17]~input_o\);

-- Location: IOIBUF_X115_Y52_N1
\Instruction_Program[8][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(18),
	o => \Instruction_Program[8][18]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\Instruction_Program[8][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(19),
	o => \Instruction_Program[8][19]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\Instruction_Program[8][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(20),
	o => \Instruction_Program[8][20]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\Instruction_Program[8][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(21),
	o => \Instruction_Program[8][21]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\Instruction_Program[8][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(22),
	o => \Instruction_Program[8][22]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\Instruction_Program[8][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(23),
	o => \Instruction_Program[8][23]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\Instruction_Program[8][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(24),
	o => \Instruction_Program[8][24]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\Instruction_Program[8][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(25),
	o => \Instruction_Program[8][25]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\Instruction_Program[8][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(26),
	o => \Instruction_Program[8][26]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\Instruction_Program[8][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(27),
	o => \Instruction_Program[8][27]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\Instruction_Program[8][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(28),
	o => \Instruction_Program[8][28]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\Instruction_Program[8][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(29),
	o => \Instruction_Program[8][29]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\Instruction_Program[8][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(30),
	o => \Instruction_Program[8][30]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\Instruction_Program[8][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(8)(31),
	o => \Instruction_Program[8][31]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\Instruction_Program[9][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(0),
	o => \Instruction_Program[9][0]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\Instruction_Program[9][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(1),
	o => \Instruction_Program[9][1]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\Instruction_Program[9][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(2),
	o => \Instruction_Program[9][2]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\Instruction_Program[9][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(3),
	o => \Instruction_Program[9][3]~input_o\);

-- Location: IOIBUF_X115_Y19_N8
\Instruction_Program[9][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(4),
	o => \Instruction_Program[9][4]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\Instruction_Program[9][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(5),
	o => \Instruction_Program[9][5]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\Instruction_Program[9][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(6),
	o => \Instruction_Program[9][6]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\Instruction_Program[9][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(7),
	o => \Instruction_Program[9][7]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\Instruction_Program[9][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(8),
	o => \Instruction_Program[9][8]~input_o\);

-- Location: IOIBUF_X111_Y0_N1
\Instruction_Program[9][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(9),
	o => \Instruction_Program[9][9]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\Instruction_Program[9][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(10),
	o => \Instruction_Program[9][10]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\Instruction_Program[9][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(11),
	o => \Instruction_Program[9][11]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\Instruction_Program[9][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(12),
	o => \Instruction_Program[9][12]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\Instruction_Program[9][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(13),
	o => \Instruction_Program[9][13]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\Instruction_Program[9][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(14),
	o => \Instruction_Program[9][14]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\Instruction_Program[9][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(15),
	o => \Instruction_Program[9][15]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\Instruction_Program[9][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(16),
	o => \Instruction_Program[9][16]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\Instruction_Program[9][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(17),
	o => \Instruction_Program[9][17]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\Instruction_Program[9][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(18),
	o => \Instruction_Program[9][18]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\Instruction_Program[9][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(19),
	o => \Instruction_Program[9][19]~input_o\);

-- Location: IOIBUF_X115_Y36_N8
\Instruction_Program[9][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(20),
	o => \Instruction_Program[9][20]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\Instruction_Program[9][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(21),
	o => \Instruction_Program[9][21]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\Instruction_Program[9][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(22),
	o => \Instruction_Program[9][22]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\Instruction_Program[9][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(23),
	o => \Instruction_Program[9][23]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\Instruction_Program[9][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(24),
	o => \Instruction_Program[9][24]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\Instruction_Program[9][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(25),
	o => \Instruction_Program[9][25]~input_o\);

-- Location: IOIBUF_X115_Y65_N22
\Instruction_Program[9][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(26),
	o => \Instruction_Program[9][26]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\Instruction_Program[9][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(27),
	o => \Instruction_Program[9][27]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\Instruction_Program[9][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(28),
	o => \Instruction_Program[9][28]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\Instruction_Program[9][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(29),
	o => \Instruction_Program[9][29]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\Instruction_Program[9][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(30),
	o => \Instruction_Program[9][30]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\Instruction_Program[9][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(9)(31),
	o => \Instruction_Program[9][31]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\Instruction_Program[10][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(0),
	o => \Instruction_Program[10][0]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\Instruction_Program[10][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(1),
	o => \Instruction_Program[10][1]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\Instruction_Program[10][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(2),
	o => \Instruction_Program[10][2]~input_o\);

-- Location: IOIBUF_X105_Y0_N22
\Instruction_Program[10][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(3),
	o => \Instruction_Program[10][3]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\Instruction_Program[10][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(4),
	o => \Instruction_Program[10][4]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\Instruction_Program[10][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(5),
	o => \Instruction_Program[10][5]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\Instruction_Program[10][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(6),
	o => \Instruction_Program[10][6]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\Instruction_Program[10][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(7),
	o => \Instruction_Program[10][7]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\Instruction_Program[10][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(8),
	o => \Instruction_Program[10][8]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\Instruction_Program[10][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(9),
	o => \Instruction_Program[10][9]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\Instruction_Program[10][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(10),
	o => \Instruction_Program[10][10]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\Instruction_Program[10][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(11),
	o => \Instruction_Program[10][11]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\Instruction_Program[10][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(12),
	o => \Instruction_Program[10][12]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\Instruction_Program[10][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(13),
	o => \Instruction_Program[10][13]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\Instruction_Program[10][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(14),
	o => \Instruction_Program[10][14]~input_o\);

-- Location: IOIBUF_X115_Y62_N8
\Instruction_Program[10][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(15),
	o => \Instruction_Program[10][15]~input_o\);

-- Location: IOIBUF_X115_Y12_N1
\Instruction_Program[10][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(16),
	o => \Instruction_Program[10][16]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\Instruction_Program[10][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(17),
	o => \Instruction_Program[10][17]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\Instruction_Program[10][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(18),
	o => \Instruction_Program[10][18]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\Instruction_Program[10][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(19),
	o => \Instruction_Program[10][19]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\Instruction_Program[10][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(20),
	o => \Instruction_Program[10][20]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\Instruction_Program[10][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(21),
	o => \Instruction_Program[10][21]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\Instruction_Program[10][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(22),
	o => \Instruction_Program[10][22]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\Instruction_Program[10][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(23),
	o => \Instruction_Program[10][23]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\Instruction_Program[10][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(24),
	o => \Instruction_Program[10][24]~input_o\);

-- Location: IOIBUF_X98_Y0_N15
\Instruction_Program[10][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(25),
	o => \Instruction_Program[10][25]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\Instruction_Program[10][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(26),
	o => \Instruction_Program[10][26]~input_o\);

-- Location: IOIBUF_X115_Y37_N22
\Instruction_Program[10][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(27),
	o => \Instruction_Program[10][27]~input_o\);

-- Location: IOIBUF_X115_Y37_N15
\Instruction_Program[10][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(28),
	o => \Instruction_Program[10][28]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\Instruction_Program[10][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(29),
	o => \Instruction_Program[10][29]~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\Instruction_Program[10][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(30),
	o => \Instruction_Program[10][30]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\Instruction_Program[10][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(10)(31),
	o => \Instruction_Program[10][31]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\Instruction_Program[11][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(0),
	o => \Instruction_Program[11][0]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\Instruction_Program[11][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(1),
	o => \Instruction_Program[11][1]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\Instruction_Program[11][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(2),
	o => \Instruction_Program[11][2]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\Instruction_Program[11][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(3),
	o => \Instruction_Program[11][3]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\Instruction_Program[11][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(4),
	o => \Instruction_Program[11][4]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\Instruction_Program[11][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(5),
	o => \Instruction_Program[11][5]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\Instruction_Program[11][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(6),
	o => \Instruction_Program[11][6]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\Instruction_Program[11][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(7),
	o => \Instruction_Program[11][7]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\Instruction_Program[11][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(8),
	o => \Instruction_Program[11][8]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\Instruction_Program[11][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(9),
	o => \Instruction_Program[11][9]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\Instruction_Program[11][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(10),
	o => \Instruction_Program[11][10]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\Instruction_Program[11][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(11),
	o => \Instruction_Program[11][11]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\Instruction_Program[11][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(12),
	o => \Instruction_Program[11][12]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\Instruction_Program[11][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(13),
	o => \Instruction_Program[11][13]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\Instruction_Program[11][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(14),
	o => \Instruction_Program[11][14]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\Instruction_Program[11][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(15),
	o => \Instruction_Program[11][15]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\Instruction_Program[11][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(16),
	o => \Instruction_Program[11][16]~input_o\);

-- Location: IOIBUF_X115_Y25_N22
\Instruction_Program[11][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(17),
	o => \Instruction_Program[11][17]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\Instruction_Program[11][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(18),
	o => \Instruction_Program[11][18]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\Instruction_Program[11][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(19),
	o => \Instruction_Program[11][19]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\Instruction_Program[11][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(20),
	o => \Instruction_Program[11][20]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\Instruction_Program[11][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(21),
	o => \Instruction_Program[11][21]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\Instruction_Program[11][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(22),
	o => \Instruction_Program[11][22]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\Instruction_Program[11][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(23),
	o => \Instruction_Program[11][23]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\Instruction_Program[11][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(24),
	o => \Instruction_Program[11][24]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\Instruction_Program[11][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(25),
	o => \Instruction_Program[11][25]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\Instruction_Program[11][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(26),
	o => \Instruction_Program[11][26]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\Instruction_Program[11][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(27),
	o => \Instruction_Program[11][27]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\Instruction_Program[11][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(28),
	o => \Instruction_Program[11][28]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\Instruction_Program[11][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(29),
	o => \Instruction_Program[11][29]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\Instruction_Program[11][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(30),
	o => \Instruction_Program[11][30]~input_o\);

-- Location: IOIBUF_X115_Y66_N15
\Instruction_Program[11][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(11)(31),
	o => \Instruction_Program[11][31]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\Instruction_Program[12][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(0),
	o => \Instruction_Program[12][0]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\Instruction_Program[12][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(1),
	o => \Instruction_Program[12][1]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\Instruction_Program[12][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(2),
	o => \Instruction_Program[12][2]~input_o\);

-- Location: IOIBUF_X115_Y24_N8
\Instruction_Program[12][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(3),
	o => \Instruction_Program[12][3]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\Instruction_Program[12][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(4),
	o => \Instruction_Program[12][4]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\Instruction_Program[12][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(5),
	o => \Instruction_Program[12][5]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\Instruction_Program[12][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(6),
	o => \Instruction_Program[12][6]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\Instruction_Program[12][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(7),
	o => \Instruction_Program[12][7]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\Instruction_Program[12][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(8),
	o => \Instruction_Program[12][8]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\Instruction_Program[12][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(9),
	o => \Instruction_Program[12][9]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\Instruction_Program[12][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(10),
	o => \Instruction_Program[12][10]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\Instruction_Program[12][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(11),
	o => \Instruction_Program[12][11]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\Instruction_Program[12][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(12),
	o => \Instruction_Program[12][12]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\Instruction_Program[12][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(13),
	o => \Instruction_Program[12][13]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\Instruction_Program[12][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(14),
	o => \Instruction_Program[12][14]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\Instruction_Program[12][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(15),
	o => \Instruction_Program[12][15]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\Instruction_Program[12][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(16),
	o => \Instruction_Program[12][16]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\Instruction_Program[12][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(17),
	o => \Instruction_Program[12][17]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\Instruction_Program[12][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(18),
	o => \Instruction_Program[12][18]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\Instruction_Program[12][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(19),
	o => \Instruction_Program[12][19]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\Instruction_Program[12][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(20),
	o => \Instruction_Program[12][20]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\Instruction_Program[12][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(21),
	o => \Instruction_Program[12][21]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\Instruction_Program[12][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(22),
	o => \Instruction_Program[12][22]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\Instruction_Program[12][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(23),
	o => \Instruction_Program[12][23]~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\Instruction_Program[12][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(24),
	o => \Instruction_Program[12][24]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\Instruction_Program[12][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(25),
	o => \Instruction_Program[12][25]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\Instruction_Program[12][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(26),
	o => \Instruction_Program[12][26]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\Instruction_Program[12][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(27),
	o => \Instruction_Program[12][27]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\Instruction_Program[12][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(28),
	o => \Instruction_Program[12][28]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\Instruction_Program[12][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(29),
	o => \Instruction_Program[12][29]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\Instruction_Program[12][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(30),
	o => \Instruction_Program[12][30]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\Instruction_Program[12][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(12)(31),
	o => \Instruction_Program[12][31]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\Instruction_Program[13][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(0),
	o => \Instruction_Program[13][0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\Instruction_Program[13][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(1),
	o => \Instruction_Program[13][1]~input_o\);

-- Location: IOIBUF_X115_Y62_N15
\Instruction_Program[13][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(2),
	o => \Instruction_Program[13][2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\Instruction_Program[13][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(3),
	o => \Instruction_Program[13][3]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\Instruction_Program[13][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(4),
	o => \Instruction_Program[13][4]~input_o\);

-- Location: IOIBUF_X115_Y50_N1
\Instruction_Program[13][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(5),
	o => \Instruction_Program[13][5]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\Instruction_Program[13][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(6),
	o => \Instruction_Program[13][6]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\Instruction_Program[13][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(7),
	o => \Instruction_Program[13][7]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\Instruction_Program[13][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(8),
	o => \Instruction_Program[13][8]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\Instruction_Program[13][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(9),
	o => \Instruction_Program[13][9]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\Instruction_Program[13][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(10),
	o => \Instruction_Program[13][10]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\Instruction_Program[13][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(11),
	o => \Instruction_Program[13][11]~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\Instruction_Program[13][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(12),
	o => \Instruction_Program[13][12]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\Instruction_Program[13][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(13),
	o => \Instruction_Program[13][13]~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\Instruction_Program[13][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(14),
	o => \Instruction_Program[13][14]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\Instruction_Program[13][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(15),
	o => \Instruction_Program[13][15]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\Instruction_Program[13][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(16),
	o => \Instruction_Program[13][16]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\Instruction_Program[13][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(17),
	o => \Instruction_Program[13][17]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\Instruction_Program[13][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(18),
	o => \Instruction_Program[13][18]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\Instruction_Program[13][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(19),
	o => \Instruction_Program[13][19]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\Instruction_Program[13][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(20),
	o => \Instruction_Program[13][20]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\Instruction_Program[13][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(21),
	o => \Instruction_Program[13][21]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\Instruction_Program[13][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(22),
	o => \Instruction_Program[13][22]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\Instruction_Program[13][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(23),
	o => \Instruction_Program[13][23]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\Instruction_Program[13][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(24),
	o => \Instruction_Program[13][24]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\Instruction_Program[13][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(25),
	o => \Instruction_Program[13][25]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\Instruction_Program[13][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(26),
	o => \Instruction_Program[13][26]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\Instruction_Program[13][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(27),
	o => \Instruction_Program[13][27]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\Instruction_Program[13][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(28),
	o => \Instruction_Program[13][28]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\Instruction_Program[13][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(29),
	o => \Instruction_Program[13][29]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\Instruction_Program[13][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(30),
	o => \Instruction_Program[13][30]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\Instruction_Program[13][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(13)(31),
	o => \Instruction_Program[13][31]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\Instruction_Program[14][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(0),
	o => \Instruction_Program[14][0]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\Instruction_Program[14][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(1),
	o => \Instruction_Program[14][1]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\Instruction_Program[14][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(2),
	o => \Instruction_Program[14][2]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\Instruction_Program[14][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(3),
	o => \Instruction_Program[14][3]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\Instruction_Program[14][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(4),
	o => \Instruction_Program[14][4]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\Instruction_Program[14][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(5),
	o => \Instruction_Program[14][5]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\Instruction_Program[14][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(6),
	o => \Instruction_Program[14][6]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\Instruction_Program[14][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(7),
	o => \Instruction_Program[14][7]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\Instruction_Program[14][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(8),
	o => \Instruction_Program[14][8]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\Instruction_Program[14][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(9),
	o => \Instruction_Program[14][9]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\Instruction_Program[14][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(10),
	o => \Instruction_Program[14][10]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\Instruction_Program[14][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(11),
	o => \Instruction_Program[14][11]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\Instruction_Program[14][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(12),
	o => \Instruction_Program[14][12]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\Instruction_Program[14][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(13),
	o => \Instruction_Program[14][13]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\Instruction_Program[14][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(14),
	o => \Instruction_Program[14][14]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\Instruction_Program[14][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(15),
	o => \Instruction_Program[14][15]~input_o\);

-- Location: IOIBUF_X115_Y17_N8
\Instruction_Program[14][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(16),
	o => \Instruction_Program[14][16]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\Instruction_Program[14][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(17),
	o => \Instruction_Program[14][17]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\Instruction_Program[14][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(18),
	o => \Instruction_Program[14][18]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\Instruction_Program[14][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(19),
	o => \Instruction_Program[14][19]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\Instruction_Program[14][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(20),
	o => \Instruction_Program[14][20]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\Instruction_Program[14][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(21),
	o => \Instruction_Program[14][21]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\Instruction_Program[14][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(22),
	o => \Instruction_Program[14][22]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\Instruction_Program[14][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(23),
	o => \Instruction_Program[14][23]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\Instruction_Program[14][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(24),
	o => \Instruction_Program[14][24]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\Instruction_Program[14][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(25),
	o => \Instruction_Program[14][25]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\Instruction_Program[14][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(26),
	o => \Instruction_Program[14][26]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\Instruction_Program[14][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(27),
	o => \Instruction_Program[14][27]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\Instruction_Program[14][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(28),
	o => \Instruction_Program[14][28]~input_o\);

-- Location: IOIBUF_X113_Y73_N1
\Instruction_Program[14][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(29),
	o => \Instruction_Program[14][29]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\Instruction_Program[14][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(30),
	o => \Instruction_Program[14][30]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\Instruction_Program[14][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(14)(31),
	o => \Instruction_Program[14][31]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\Instruction_Program[15][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(0),
	o => \Instruction_Program[15][0]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\Instruction_Program[15][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(1),
	o => \Instruction_Program[15][1]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\Instruction_Program[15][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(2),
	o => \Instruction_Program[15][2]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\Instruction_Program[15][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(3),
	o => \Instruction_Program[15][3]~input_o\);

-- Location: IOIBUF_X115_Y12_N8
\Instruction_Program[15][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(4),
	o => \Instruction_Program[15][4]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\Instruction_Program[15][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(5),
	o => \Instruction_Program[15][5]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\Instruction_Program[15][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(6),
	o => \Instruction_Program[15][6]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\Instruction_Program[15][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(7),
	o => \Instruction_Program[15][7]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\Instruction_Program[15][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(8),
	o => \Instruction_Program[15][8]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\Instruction_Program[15][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(9),
	o => \Instruction_Program[15][9]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\Instruction_Program[15][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(10),
	o => \Instruction_Program[15][10]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\Instruction_Program[15][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(11),
	o => \Instruction_Program[15][11]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\Instruction_Program[15][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(12),
	o => \Instruction_Program[15][12]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\Instruction_Program[15][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(13),
	o => \Instruction_Program[15][13]~input_o\);

-- Location: IOIBUF_X115_Y30_N1
\Instruction_Program[15][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(14),
	o => \Instruction_Program[15][14]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\Instruction_Program[15][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(15),
	o => \Instruction_Program[15][15]~input_o\);

-- Location: IOIBUF_X115_Y26_N22
\Instruction_Program[15][16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(16),
	o => \Instruction_Program[15][16]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\Instruction_Program[15][17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(17),
	o => \Instruction_Program[15][17]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Instruction_Program[15][18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(18),
	o => \Instruction_Program[15][18]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\Instruction_Program[15][19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(19),
	o => \Instruction_Program[15][19]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\Instruction_Program[15][20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(20),
	o => \Instruction_Program[15][20]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\Instruction_Program[15][21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(21),
	o => \Instruction_Program[15][21]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\Instruction_Program[15][22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(22),
	o => \Instruction_Program[15][22]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\Instruction_Program[15][23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(23),
	o => \Instruction_Program[15][23]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\Instruction_Program[15][24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(24),
	o => \Instruction_Program[15][24]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\Instruction_Program[15][25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(25),
	o => \Instruction_Program[15][25]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\Instruction_Program[15][26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(26),
	o => \Instruction_Program[15][26]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\Instruction_Program[15][27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(27),
	o => \Instruction_Program[15][27]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\Instruction_Program[15][28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(28),
	o => \Instruction_Program[15][28]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\Instruction_Program[15][29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(29),
	o => \Instruction_Program[15][29]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\Instruction_Program[15][30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(30),
	o => \Instruction_Program[15][30]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\Instruction_Program[15][31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_Program(15)(31),
	o => \Instruction_Program[15][31]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);
END structure;


