LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity Stall_Unit is
 port ( EX_MemRead, EX_RegWrite: in STD_LOGIC;
		  EX_rt, ID_rs, ID_rt: in UNSIGNED (4 downto 0);
		  Stall: out STD_LOGIC
		);
end Stall_Unit;

-- Stall Unit
-- This unit is in charge of stalling the IF and ID pipeline registers when the following are concurrently true:
--		-EX_MemRead = 1
--		-EX_RegWrite = 1
--		-ID_rs = EX_rt OR ID_rt = EX_rt

-- If these conditions are simultaneously true, the following needs to happen:
--		-The ID/EX pipeline register needs to insert a NOP (x"00000000") into the EX stage
--		-The IF/ID register contents need to be maintained for the stall and not overwritten by the incoming IF instruction
--		-The PC needs to be stalled, it needs to continue pointing at the IF instruction we stalled at

-- One thing to note is that EX_rt is used instead of EX_Write_Register_Num since this stall is not necessary for R-format instructions.
-- Non-R-format instructions do not use Rd, and EX_Write_Register_Num can represent either EX_rt or EX_rd. Therefore we only want EX_rt.
architecture Stall_Unit_arch of Stall_Unit is
	
	
 begin
	
	Stall <= '1' when (EX_MemRead = '1') and (EX_RegWrite = '1') and ( (ID_rs = EX_rt) or (ID_rt = EX_rt) ) else '0';
	  
end Stall_Unit_arch;
