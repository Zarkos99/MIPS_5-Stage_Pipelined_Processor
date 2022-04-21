LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity WB_Forward is
 port ( Reg_Data1, Reg_Data2: in STD_LOGIC_VECTOR (31 downto 0);
		  Write_Register, rs, rt: in UNSIGNED (4 downto 0);
		  Write_Data: in STD_LOGIC_VECTOR (31 downto 0);
		  RegWrite: in STD_LOGIC;
		  Read_Data1, Read_Data2: out STD_LOGIC_VECTOR (31 downto 0)
		);
end WB_Forward;

-- Write Back Forwarding Unit
-- A forwarding unit for use directly after the registers in the ID stage. This solves the data hazard of reading and writing simulataneously 
-- where the data read is not what should have been written. 
--
-- If data read from a register /= what should be written to it, given Regwrite is high and the register written to = the register read from, 
-- then overwrite the read data with what should be written to it.
--
-- if ( (Reg_Data1 /= Write_Data) and (RegWrite = '1') and ( (Write_Register = rs) or (Write_Register = rt) )  )
--		
--

architecture WB_Forward_arch of WB_Forward is
	
	
 begin
 
 Read_Data1 <= Write_Data when ( (Reg_Data1 /= Write_Data) and (RegWrite = '1') and (Write_Register = rs) ) else Reg_Data1;
 Read_Data2 <= Write_Data when ( (Reg_Data2 /= Write_Data) and (RegWrite = '1') and (Write_Register = rt) ) else Reg_Data2;

  
end WB_Forward_arch;
