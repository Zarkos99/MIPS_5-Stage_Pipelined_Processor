LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
ENTITY Testbench_Control IS
END Testbench_Control;
 
ARCHITECTURE behavior OF Testbench_Control IS

--Control Signal Component
component Control
port ( Instruction: in UNSIGNED (5 downto 0);
	    RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch: out STD_LOGIC;
		 ALUop: out UNSIGNED (1 downto 0)
	  );
end component;

--INPUTS
signal Instruction: UNSIGNED (5 downto 0);

--OUTPUTS
signal RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch: STD_LOGIC;
signal ALUop: UNSIGNED (1 downto 0);

BEGIN

--UUT Instantiation
UUT: Control PORT MAP
(Instruction(5 downto 0),
 RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch,
 ALUop(1 downto 0)
);

-- Stimulus process: no stimulus so runs through once
 stim_proc: process
 begin
-- hold reset state for 100 ns.
 wait for 100 ns;
 
 Instruction <= "000000";
 
 wait for 20 ns;
 
 Instruction <= "100011";
 
 wait for 20 ns;
 
 Instruction <= "101011";
 
 wait for 20 ns;
 
 Instruction <= "000100";
 
 wait for 20 ns;
 
 wait;
 end process;


end behavior;