LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
use work.instruction_type.all;
 
ENTITY Testbench_Instruction_Mem IS
END Testbench_Instruction_Mem;
 
ARCHITECTURE behavior OF Testbench_Instruction_Mem IS
 
-- Component Declaration for the Unit Under Test (UUT)

component Instruction_Mem
 port (Read_Address: in UNSIGNED (31 downto 0);
		 Instruction_memory: in Instruction_array;
		 Instruction_out: out STD_LOGIC_VECTOR (31 downto 0)
		 );
end component;
 
-- Inputs
 signal Read_Address: UNSIGNED (31 downto 0);
 signal Instruction_memory: Instruction_array;
 
-- Outputs
 signal Instruction_out: STD_LOGIC_VECTOR (31 downto 0);
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: Instruction_Mem PORT MAP (
 Read_Address => Read_Address,
 Instruction_memory => Instruction_memory,
 Instruction_out => Instruction_out
 );
 
-- Stimulus process: no stimulus so runs through once
 stim_proc: process
 begin
-- hold reset state for 100 ns.
 wait for 100 ns;
 
 Instruction_memory(0) <= "00000001010010000100100000100101";
 Read_Address <= to_unsigned(0, 32);
 
 wait;
 end process;
 
END;
