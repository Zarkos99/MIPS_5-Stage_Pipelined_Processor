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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/25/2021 18:57:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS_Processor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_Processor_vhd_vec_tst IS
END MIPS_Processor_vhd_vec_tst;
ARCHITECTURE MIPS_Processor_arch OF MIPS_Processor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL cIN : STD_LOGIC;
SIGNAL cOUT : STD_LOGIC;
SIGNAL Sum : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS_Processor
	PORT (
	A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	cIN : IN STD_LOGIC;
	cOUT : OUT STD_LOGIC;
	Sum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS_Processor
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	cIN => cIN,
	cOUT => cOUT,
	Sum => Sum
	);

-- A
t_prcs_A: PROCESS
BEGIN
LOOP
	A <= '0';
	WAIT FOR 100000 ps;
	A <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 400000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
LOOP
	B <= '0';
	WAIT FOR 200000 ps;
	B <= '1';
	WAIT FOR 200000 ps;
	IF (NOW >= 400000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B;

-- cIN
t_prcs_cIN: PROCESS
BEGIN
	cIN <= '0';
WAIT;
END PROCESS t_prcs_cIN;
END MIPS_Processor_arch;
