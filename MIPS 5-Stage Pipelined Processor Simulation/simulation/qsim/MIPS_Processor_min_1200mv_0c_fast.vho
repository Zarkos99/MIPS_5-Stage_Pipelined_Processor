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

-- DATE "10/25/2021 19:01:27"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_Processor IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	cIN : IN std_logic;
	Sum : OUT std_logic_vector(31 DOWNTO 0);
	cOUT : OUT std_logic
	);
END MIPS_Processor;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[16]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[17]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[18]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[19]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[20]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[21]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[22]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[23]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[24]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[25]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[26]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[27]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[28]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[29]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[30]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[31]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cOUT	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cIN	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cIN : std_logic;
SIGNAL ww_Sum : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cOUT : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \Sum[8]~output_o\ : std_logic;
SIGNAL \Sum[9]~output_o\ : std_logic;
SIGNAL \Sum[10]~output_o\ : std_logic;
SIGNAL \Sum[11]~output_o\ : std_logic;
SIGNAL \Sum[12]~output_o\ : std_logic;
SIGNAL \Sum[13]~output_o\ : std_logic;
SIGNAL \Sum[14]~output_o\ : std_logic;
SIGNAL \Sum[15]~output_o\ : std_logic;
SIGNAL \Sum[16]~output_o\ : std_logic;
SIGNAL \Sum[17]~output_o\ : std_logic;
SIGNAL \Sum[18]~output_o\ : std_logic;
SIGNAL \Sum[19]~output_o\ : std_logic;
SIGNAL \Sum[20]~output_o\ : std_logic;
SIGNAL \Sum[21]~output_o\ : std_logic;
SIGNAL \Sum[22]~output_o\ : std_logic;
SIGNAL \Sum[23]~output_o\ : std_logic;
SIGNAL \Sum[24]~output_o\ : std_logic;
SIGNAL \Sum[25]~output_o\ : std_logic;
SIGNAL \Sum[26]~output_o\ : std_logic;
SIGNAL \Sum[27]~output_o\ : std_logic;
SIGNAL \Sum[28]~output_o\ : std_logic;
SIGNAL \Sum[29]~output_o\ : std_logic;
SIGNAL \Sum[30]~output_o\ : std_logic;
SIGNAL \Sum[31]~output_o\ : std_logic;
SIGNAL \cOUT~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \cIN~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:0:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:1:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:2:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:3:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:4:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:5:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:6:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:7:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:8:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:9:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:10:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:11:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:12:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:13:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:14:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:15:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:16:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:17:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:18:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:19:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:20:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:21:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:22:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:23:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:24:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:25:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:26:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:27:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:28:FAX|Sum~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:29:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:30:FAX|Sum~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \FA_32bit|Gen_FA:31:FAX|Sum~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_cIN <= cIN;
Sum <= ww_Sum;
cOUT <= ww_cOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N16
\Sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:0:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\Sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:1:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\Sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:2:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\Sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:3:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\Sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:4:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:5:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\Sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:6:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:7:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Sum[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:8:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\Sum[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:9:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[9]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\Sum[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:10:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[10]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\Sum[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:11:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[11]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\Sum[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:12:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[12]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\Sum[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:13:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\Sum[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:14:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[14]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\Sum[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:15:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[15]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\Sum[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:16:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[16]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\Sum[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:17:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[17]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\Sum[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:18:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[18]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Sum[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:19:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[19]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\Sum[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:20:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[20]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\Sum[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:21:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[21]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\Sum[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:22:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[22]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\Sum[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:23:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[23]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\Sum[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:24:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[24]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Sum[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:25:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[25]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\Sum[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:26:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[26]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\Sum[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:27:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[27]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\Sum[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:28:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[28]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\Sum[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:29:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[29]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\Sum[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:30:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[30]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\Sum[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_32bit|Gen_FA:31:FAX|Sum~0_combout\,
	devoe => ww_devoe,
	o => \Sum[31]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\cOUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cOUT~output_o\);

-- Location: IOIBUF_X5_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\cIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cIN,
	o => \cIN~input_o\);

-- Location: LCCOMB_X6_Y1_N16
\FA_32bit|Gen_FA:0:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:0:FAX|Sum~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:0:FAX|Sum~0_combout\);

-- Location: IOIBUF_X25_Y0_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X25_Y1_N16
\FA_32bit|Gen_FA:1:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:1:FAX|Sum~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:1:FAX|Sum~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X21_Y1_N24
\FA_32bit|Gen_FA:2:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:2:FAX|Sum~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:2:FAX|Sum~0_combout\);

-- Location: IOIBUF_X34_Y4_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X32_Y4_N24
\FA_32bit|Gen_FA:3:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:3:FAX|Sum~0_combout\ = \A[3]~input_o\ $ (\cIN~input_o\ $ (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \cIN~input_o\,
	datad => \B[3]~input_o\,
	combout => \FA_32bit|Gen_FA:3:FAX|Sum~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X30_Y1_N16
\FA_32bit|Gen_FA:4:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:4:FAX|Sum~0_combout\ = \A[4]~input_o\ $ (\cIN~input_o\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \cIN~input_o\,
	datad => \B[4]~input_o\,
	combout => \FA_32bit|Gen_FA:4:FAX|Sum~0_combout\);

-- Location: IOIBUF_X23_Y0_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X22_Y1_N0
\FA_32bit|Gen_FA:5:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:5:FAX|Sum~0_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:5:FAX|Sum~0_combout\);

-- Location: IOIBUF_X25_Y24_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X28_Y20_N0
\FA_32bit|Gen_FA:6:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:6:FAX|Sum~0_combout\ = \A[6]~input_o\ $ (\cIN~input_o\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \cIN~input_o\,
	datad => \B[6]~input_o\,
	combout => \FA_32bit|Gen_FA:6:FAX|Sum~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X17_Y1_N8
\FA_32bit|Gen_FA:7:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:7:FAX|Sum~0_combout\ = \B[7]~input_o\ $ (\cIN~input_o\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \cIN~input_o\,
	datad => \A[7]~input_o\,
	combout => \FA_32bit|Gen_FA:7:FAX|Sum~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X1_Y6_N0
\FA_32bit|Gen_FA:8:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:8:FAX|Sum~0_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:8:FAX|Sum~0_combout\);

-- Location: IOIBUF_X21_Y24_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X21_Y24_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X21_Y23_N24
\FA_32bit|Gen_FA:9:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:9:FAX|Sum~0_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:9:FAX|Sum~0_combout\);

-- Location: IOIBUF_X34_Y17_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X33_Y17_N8
\FA_32bit|Gen_FA:10:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:10:FAX|Sum~0_combout\ = \B[10]~input_o\ $ (\cIN~input_o\ $ (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \cIN~input_o\,
	datad => \A[10]~input_o\,
	combout => \FA_32bit|Gen_FA:10:FAX|Sum~0_combout\);

-- Location: IOIBUF_X34_Y3_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X34_Y6_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X33_Y6_N8
\FA_32bit|Gen_FA:11:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:11:FAX|Sum~0_combout\ = \A[11]~input_o\ $ (\cIN~input_o\ $ (\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[11]~input_o\,
	datac => \cIN~input_o\,
	datad => \B[11]~input_o\,
	combout => \FA_32bit|Gen_FA:11:FAX|Sum~0_combout\);

-- Location: IOIBUF_X25_Y24_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X23_Y23_N0
\FA_32bit|Gen_FA:12:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:12:FAX|Sum~0_combout\ = \A[12]~input_o\ $ (\B[12]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:12:FAX|Sum~0_combout\);

-- Location: IOIBUF_X3_Y0_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X10_Y1_N0
\FA_32bit|Gen_FA:13:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:13:FAX|Sum~0_combout\ = \cIN~input_o\ $ (\B[13]~input_o\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cIN~input_o\,
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	combout => \FA_32bit|Gen_FA:13:FAX|Sum~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X17_Y4_N24
\FA_32bit|Gen_FA:14:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:14:FAX|Sum~0_combout\ = \cIN~input_o\ $ (\B[14]~input_o\ $ (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cIN~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[14]~input_o\,
	combout => \FA_32bit|Gen_FA:14:FAX|Sum~0_combout\);

-- Location: IOIBUF_X9_Y24_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X9_Y23_N0
\FA_32bit|Gen_FA:15:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:15:FAX|Sum~0_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:15:FAX|Sum~0_combout\);

-- Location: IOIBUF_X18_Y24_N8
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X17_Y23_N8
\FA_32bit|Gen_FA:16:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:16:FAX|Sum~0_combout\ = \A[16]~input_o\ $ (\B[16]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:16:FAX|Sum~0_combout\);

-- Location: IOIBUF_X28_Y0_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X28_Y1_N16
\FA_32bit|Gen_FA:17:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:17:FAX|Sum~0_combout\ = \B[17]~input_o\ $ (\cIN~input_o\ $ (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datac => \cIN~input_o\,
	datad => \A[17]~input_o\,
	combout => \FA_32bit|Gen_FA:17:FAX|Sum~0_combout\);

-- Location: IOIBUF_X34_Y9_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X33_Y9_N8
\FA_32bit|Gen_FA:18:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:18:FAX|Sum~0_combout\ = \B[18]~input_o\ $ (\cIN~input_o\ $ (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datac => \cIN~input_o\,
	datad => \A[18]~input_o\,
	combout => \FA_32bit|Gen_FA:18:FAX|Sum~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X11_Y1_N24
\FA_32bit|Gen_FA:19:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:19:FAX|Sum~0_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:19:FAX|Sum~0_combout\);

-- Location: IOIBUF_X34_Y2_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X33_Y3_N16
\FA_32bit|Gen_FA:20:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:20:FAX|Sum~0_combout\ = \cIN~input_o\ $ (\A[20]~input_o\ $ (\B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cIN~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \FA_32bit|Gen_FA:20:FAX|Sum~0_combout\);

-- Location: IOIBUF_X34_Y18_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X33_Y14_N16
\FA_32bit|Gen_FA:21:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:21:FAX|Sum~0_combout\ = \B[21]~input_o\ $ (\A[21]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:21:FAX|Sum~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X1_Y23_N24
\FA_32bit|Gen_FA:22:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:22:FAX|Sum~0_combout\ = \B[22]~input_o\ $ (\A[22]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:22:FAX|Sum~0_combout\);

-- Location: IOIBUF_X0_Y7_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X1_Y7_N16
\FA_32bit|Gen_FA:23:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:23:FAX|Sum~0_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:23:FAX|Sum~0_combout\);

-- Location: IOIBUF_X34_Y19_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X33_Y19_N0
\FA_32bit|Gen_FA:24:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:24:FAX|Sum~0_combout\ = \cIN~input_o\ $ (\A[24]~input_o\ $ (\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cIN~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \FA_32bit|Gen_FA:24:FAX|Sum~0_combout\);

-- Location: IOIBUF_X0_Y4_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\FA_32bit|Gen_FA:25:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:25:FAX|Sum~0_combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:25:FAX|Sum~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X1_Y11_N24
\FA_32bit|Gen_FA:26:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:26:FAX|Sum~0_combout\ = \A[26]~input_o\ $ (\cIN~input_o\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \cIN~input_o\,
	datad => \B[26]~input_o\,
	combout => \FA_32bit|Gen_FA:26:FAX|Sum~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X3_Y24_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X2_Y22_N24
\FA_32bit|Gen_FA:27:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:27:FAX|Sum~0_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[27]~input_o\,
	datac => \B[27]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:27:FAX|Sum~0_combout\);

-- Location: IOIBUF_X16_Y24_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X16_Y23_N8
\FA_32bit|Gen_FA:28:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:28:FAX|Sum~0_combout\ = \A[28]~input_o\ $ (\B[28]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:28:FAX|Sum~0_combout\);

-- Location: IOIBUF_X5_Y24_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X5_Y24_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X5_Y23_N0
\FA_32bit|Gen_FA:29:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:29:FAX|Sum~0_combout\ = \B[29]~input_o\ $ (\cIN~input_o\ $ (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[29]~input_o\,
	datac => \cIN~input_o\,
	datad => \A[29]~input_o\,
	combout => \FA_32bit|Gen_FA:29:FAX|Sum~0_combout\);

-- Location: IOIBUF_X7_Y0_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X9_Y1_N8
\FA_32bit|Gen_FA:30:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:30:FAX|Sum~0_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (\cIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \cIN~input_o\,
	combout => \FA_32bit|Gen_FA:30:FAX|Sum~0_combout\);

-- Location: IOIBUF_X34_Y7_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X33_Y7_N8
\FA_32bit|Gen_FA:31:FAX|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FA_32bit|Gen_FA:31:FAX|Sum~0_combout\ = \A[31]~input_o\ $ (\cIN~input_o\ $ (\B[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \cIN~input_o\,
	datad => \B[31]~input_o\,
	combout => \FA_32bit|Gen_FA:31:FAX|Sum~0_combout\);

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_Sum(8) <= \Sum[8]~output_o\;

ww_Sum(9) <= \Sum[9]~output_o\;

ww_Sum(10) <= \Sum[10]~output_o\;

ww_Sum(11) <= \Sum[11]~output_o\;

ww_Sum(12) <= \Sum[12]~output_o\;

ww_Sum(13) <= \Sum[13]~output_o\;

ww_Sum(14) <= \Sum[14]~output_o\;

ww_Sum(15) <= \Sum[15]~output_o\;

ww_Sum(16) <= \Sum[16]~output_o\;

ww_Sum(17) <= \Sum[17]~output_o\;

ww_Sum(18) <= \Sum[18]~output_o\;

ww_Sum(19) <= \Sum[19]~output_o\;

ww_Sum(20) <= \Sum[20]~output_o\;

ww_Sum(21) <= \Sum[21]~output_o\;

ww_Sum(22) <= \Sum[22]~output_o\;

ww_Sum(23) <= \Sum[23]~output_o\;

ww_Sum(24) <= \Sum[24]~output_o\;

ww_Sum(25) <= \Sum[25]~output_o\;

ww_Sum(26) <= \Sum[26]~output_o\;

ww_Sum(27) <= \Sum[27]~output_o\;

ww_Sum(28) <= \Sum[28]~output_o\;

ww_Sum(29) <= \Sum[29]~output_o\;

ww_Sum(30) <= \Sum[30]~output_o\;

ww_Sum(31) <= \Sum[31]~output_o\;

ww_cOUT <= \cOUT~output_o\;
END structure;


