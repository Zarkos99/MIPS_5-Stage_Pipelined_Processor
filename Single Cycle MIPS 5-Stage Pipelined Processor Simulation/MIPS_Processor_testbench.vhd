LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
use work.instruction_type.all;
 
ENTITY Testbench_MIPS_Processor IS
END Testbench_MIPS_Processor;
 
ARCHITECTURE behavior OF Testbench_MIPS_Processor IS

component MIPS_Processor
port (Instruction_Program: in Instruction_Array;
		RESET: in STD_LOGIC := '0';
		CLK: in STD_LOGIC := '0');
end component;

-- Single Cycle Datapath will go through entire datapath once per clock pulse.
-- Pipelined Datapath will have clock periods based on the longest propogation delay for the individual components
 constant Clock_Frequency: integer := 1e6; --1MHz
 constant Clock_Period: time := 1000 ms / Clock_Frequency;	--Clock Period is 1 us at 1MHz frequency

 signal Instruction_Program: Instruction_Array;
 signal clk: STD_LOGIC := '0';
 signal index: natural := 0;
 signal reset: STD_LOGIC := '0';

    type Instruction_vectors_array is array (natural range <>) of UNSIGNED (31 downto 0);
    constant Instruction_vector : Instruction_vectors_array := 
	-- (_op_)(_rs)(_rt)(_rd)(shf)(func)
	 ("00000000000000000000000000000000",	-- 0	--NOP
	  "00100000000010100000000000100101",	--	1  --addi 	rs =  0, rt = 10, constant = 37
	  "00100000000010010000000000001110",	--	2	--addi 	rs =  0, rt =  9, constant = 14
	  "00000001010010010100000000100101", 	--	3	--OR 		rs = 10, rt =  9, rd = 8, shamt = 0, funct = 100101
	  "00000001010010010101100000100000",	--	4	--add 	rs = 10, rt =  9, rd = 11, shamt = 0, funct = 100000
	  "10101100000010100000000000000000",	--	5	--sw 		rs =  0, rt = 10, constant =  0
	  "10001100000010010000000000000000",	--	6	--lw 		rs =  0, rt =  9, constant =  0
	  "00010001010010011111111111111110",	-- 7  --beq    rs = 10, rt =  9, constant =  -2
	  "00100000000010100000000000000000",	--	8  --addi 	rs =  0, rt = 10, constant = 0
	  "00100000000010010000000000000001",	--	9  --addi 	rs =  0, rt =  9, constant = 1
	  "00000001010010010101000000100000"	--	10	--add 	rs = 10, rt =  9, rd = 10, shamt = 0, funct = 100000
	 );
 
 BEGIN
 
 uut: MIPS_Processor PORT MAP (Instruction_Program, reset, clk);
 

 Instruction_Program(0) <= Instruction_vector(1);	--addi 10,  0, 37 	(adding constant to reg 0 and storing in reg 10)
 Instruction_Program(1) <= Instruction_vector(2);	--addi  9,  0, 14		(adding constant to reg 0 and storing in reg 9)
 Instruction_Program(2) <= Instruction_vector(3);	--  OR  8, 10,  9		(ORing reg 10 with reg 0 and storing in reg 8)
 Instruction_Program(3) <= Instruction_vector(4);	-- add 11, 10,  9		(adding reg 10 to reg 9 and storing in reg 11)
 Instruction_Program(4) <= Instruction_vector(5);	--  sw 10, 0(0)		(storing contents of reg 10 into memory at address 0)  
 Instruction_Program(5) <= Instruction_vector(6);	--  lw  9, 0(0)		(loading contents of memory from address 0 into reg 8)
 Instruction_Program(6) <= Instruction_vector(4);	-- add 11, 10,  9		(adding reg 10 to reg 9 and storing in reg 11)
 

clk_process :process
   begin
		clk <= not clk;
		wait for Clock_Period/2;
   end process;
	
   -- Stimulus process
   stim_proc: process
   begin  
      reset <= '1';
      wait for Clock_Period;
		reset <= '0';
      wait;
   end process;

END;