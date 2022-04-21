LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity Forward is
 port ( -- ALU Forwarding
		  MA_Rd, WB_Rd: in UNSIGNED (4 downto 0);
		  MA_RegWrite, WB_RegWrite: in STD_LOGIC;
		  EX_rs, EX_rt: in UNSIGNED (4 downto 0);
		  Forward_1, Forward_2: out UNSIGNED (1 downto 0)
		  --Load Word Forwarding
		);
end Forward;

-- Forwarding Unit
-- When the Register write destination register Rd of the memory access or write back stages is equal to the read register Rs or Rt of the execute stage, 
-- forward the data from the respective stage (memory access or write back) to the ALU input.
-- Both Rs and Rt can require forwarding simultaneously.
--
-- Conditions for forwarding:
-- MA_Rd = EX_Rs
-- WB_Rd = EX_Rs
-- MA_Rd = EX_Rt
-- WB_Rd = EX_Rt
--
--Forward_1 controls the top ALU input, or Read_Register1 (Rs)
--Forward_2 controls the bottom ALU input, or Read_Register2 (Rt)
--Forward output meaning:
-- 00 = Read regular register data
-- 01 = Read ALU output from WB stage
-- 10 = Read ALU output from MA stage


architecture Forward_arch of Forward is
	
	
 begin
 -- Forward Mux for top ALU Input
 Forward_1 <=
		--"11" when opcode = "100011" and EX_rd = ID_
		--Use MA ALU output when MA destination register equals EX read register
		"10" when  EX_rs = MA_Rd and MA_RegWrite = '1' else
		--Use WB ALU output when WB destination register equals EX read register
		"01" when  EX_rs = WB_Rd and MA_Rd /= WB_Rd and WB_RegWrite = '1' else		--Need to make sure the MA and WB stage write register numbers dont equal eachother such that we use the most recent ALU output
		--Use the regular register data when they don't equal
		"00";
 -- Forward Mux for bottom ALU Input	
 Forward_2 <=
		--Use MA ALU output when MA destination register equals EX read register
		"10" when  EX_rt = MA_Rd and MA_RegWrite = '1' else
		--Use WB ALU output when WB destination register equals EX read register
		"01" when  EX_rt = WB_Rd and MA_Rd /= WB_Rd and WB_RegWrite = '1' else
		--Use the regular register data when they don't equal
		"00";
				

  
end Forward_arch;
