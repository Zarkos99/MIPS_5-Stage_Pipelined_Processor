LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

package instruction_type is
	constant Data_size: INTEGER := 10;		--Amount of instructions to be held within the instruction memory
	type Instruction_array is array(Data_size downto 0) of UNSIGNED (31 downto 0);
end package instruction_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.instruction_type.all;

entity Instruction_Mem is 
 port (Read_Address: in UNSIGNED (31 downto 0);
		 Instruction_memory: in Instruction_array;
		 Instruction_out: out UNSIGNED (31 downto 0)
		 );
end Instruction_Mem;


architecture Instruction_Mem_arch of Instruction_Mem is
	
 begin
 	
	Instruction_out <= Instruction_memory(to_integer(Read_address) / 4);		--Divide by 4 to mock actual word addressing behavior. Since using array, need integer indexing.
	
end Instruction_Mem_arch;