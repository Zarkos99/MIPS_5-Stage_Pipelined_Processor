LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
ENTITY Testbench_full_adder_1b IS
END Testbench_full_adder_1b;
 
ARCHITECTURE behavior OF Testbench_full_adder_1b IS
 
-- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT full_adder
 PORT(
 A : IN std_logic;
 B : IN std_logic;
 CarryIn : IN std_logic;
 Sum : OUT std_logic;
 CarryOut : OUT std_logic
 );
 END COMPONENT;
 
-- Inputs
 signal A : std_logic := '0';
 signal B : std_logic := '0';
 signal CarryIn : std_logic := '0';
 
-- Outputs
 signal Sum : std_logic;
 signal CarryOut : std_logic;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
 uut: full_adder PORT MAP (
 A => A,
 B => B,
 CarryIn => CarryIn,
 Sum => Sum,
 CarryOut => CarryOut
 );
 
-- Stimulus process
 stim_proc: process
 begin
-- hold reset state for 100 ns.
 wait for 100 ns;
 
-- insert stimulus here
	for m in std_logic range '0' to '1' loop
		CarryIn <= m;
		for n in std_logic range '0' to '1' loop
			B <= n;
			for o in std_logic range '0' to '1' loop
				A <= o;
				wait for 10 ns;
			end loop; 
		end loop;
	end loop;
 end process;
 
END;
