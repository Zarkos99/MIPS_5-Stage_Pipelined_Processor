LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity ALU_Control is
 port ( funct: in UNSIGNED (5 downto 0);
		  ALUop: in UNSIGNED (1 downto 0);
		  ALUctrl: out UNSIGNED (3 downto 0)
	   );
end ALU_Control;

--ALUop = 00 => lw, sw
--			 01 => beq
--			 10 => R-format (determined by funct)

architecture ALU_Control_arch of ALU_Control is

BEGIN

ALUctrl <=
	--ADD for lw, sw, and addi 
	"0010" after 1 ns when ALUop = "00" else
	--SUBTRACT for beq
	"0110" after 1 ns when ALUop = "01" else
	--ADD for R-format
	"0010" after 1 ns when ALUop = "10" and funct = "100000" else
	--SUBTRACT for R-format
	"0110" after 1 ns when ALUop = "10" and funct = "100010" else
	--AND for R-format
	"0000" after 1 ns when ALUop = "10" and funct = "100100" else
	--OR for R-format
	"0001" after 1 ns when ALUop = "10" and funct = "100101" else
	--SET-ON-LESS-THAN for R-format
	"0111" after 1 ns when ALUop = "10" and funct = "101010" else
	--Shift Logical Left for R-format
	"0100" after 1 ns when ALUop = "10" and funct = "000000" else
	
	-------- in other cases --------
    (others => '0');
	
	
end ALU_Control_arch;