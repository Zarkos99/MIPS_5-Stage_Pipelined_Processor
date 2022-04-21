--VHDL Implementation for a Full Adder
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity full_adder is
 port ( 	A, B, CarryIn  : in STD_LOGIC;
			Sum, CarryOut  : out STD_LOGIC
			);
end full_adder;


architecture full_adder_arch of full_adder is
begin

Sum <= (A xor B) xor CarryIn;
CarryOut <= (A and B) or ((A xor B) and CarryIn);

end full_adder_arch;

--==========================================================
--VHDL Implementation for a 32 bit Full Adder
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity full_adder_32_bit is
 port ( 	A, B: in STD_LOGIC_VECTOR(31 downto 0);
			CarryIn: in STD_LOGIC;
			Sum: out STD_LOGIC_VECTOR(31 downto 0);
			CarryOut: out STD_LOGIC
			);
end full_adder_32_bit;


architecture full_adder_32_arch of full_adder_32_bit is

component full_adder is
 port ( 	A, B, CarryIn  : in STD_LOGIC;
			Sum, CarryOut  : out STD_LOGIC
			);
end component;

signal carry: STD_LOGIC_VECTOR (30 downto 0);

begin

	FA0: full_adder port map( A(0), B(0), CarryIn, Sum(0), carry(0) );
	
	Gen_FA:
	for I in 1 to 30 generate
		FAX: full_adder port map( A(I), B(I), carry(I-1), Sum(I), carry(I) );
	end generate Gen_FA;

	FA31: full_adder port map( A(31), B(31), carry(30), Sum(31), CarryOut );
	
end full_adder_32_arch;