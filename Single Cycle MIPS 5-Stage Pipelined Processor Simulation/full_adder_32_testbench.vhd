LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
ENTITY Testbench_full_adder_32b IS
END Testbench_full_adder_32b;
 
ARCHITECTURE behavior OF Testbench_full_adder_32b IS
 
-- Component Declaration for the Unit Under Test (UUT)
 
component full_adder_32_bit is
 port ( 	A, B: in STD_LOGIC_VECTOR (31 downto 0);
			CarryIn: in STD_LOGIC;
			Sum: out STD_LOGIC_VECTOR (31 downto 0);
			CarryOut: out STD_LOGIC
			);
end component;
 
 signal choice : STD_LOGIC := '1';	--0 for sequentially testing all combinations between two points, 1 to just add two numbers
 
-- Inputs
 signal A : STD_LOGIC_VECTOR (31 downto 0);
 signal B : STD_LOGIC_VECTOR (31 downto 0);
 signal cIN : std_logic;
 
-- Outputs
 signal Sum : STD_LOGIC_VECTOR (31 downto 0);
 signal cOUT : std_logic;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
uut: full_adder_32_bit PORT MAP ( A(31 downto 0), B(31 downto 0), cIN, Sum(31 downto 0), cOUT );
 
-- Stimulus process
 stim_proc: process
 begin
	-- hold reset state for 100 ns.
	wait for 100 ns;

	case choice is 
	when '0' => 
		for o in std_logic range '0' to '1' loop
			cIN <= o;
			for m in 0 to 255 loop
				B <= std_logic_vector(to_UNSIGNED(m,32));
				for n in 0 to 255 loop
					A <= std_logic_vector(to_UNSIGNED(n,32));
					wait for 100 ps;
				end loop; 
			end loop;
		end loop;
	
	when '1' =>
		cIN <= '1';
		A <= std_logic_vector(to_UNSIGNED(2147483647, 32));	-- Max INTEGER capacity is a value of 2147483647
		--A <= "10000000000000000000000000000000";				-- Test for CarryOut bit
		B <= std_logic_vector(to_UNSIGNED(2147483647, 32));
	
	when others =>
		cIN <= '0';
		A <= std_logic_vector(to_UNSIGNED(0,32));
		B <= std_logic_vector(to_UNSIGNED(0,32));
		end case;
	wait;
 end process;
 
END;
