LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
ENTITY Testbench_ALU IS
END Testbench_ALU;
 
ARCHITECTURE behavior OF Testbench_ALU IS
 
-- Component Declaration for the Unit Under Test (UUT)

component ALU 
 port ( 	A, B: in STD_LOGIC_VECTOR (31 downto 0);
			ALUctrl: in UNSIGNED (3 downto 0); --( Anegate, Bnegate, Operation(2-bit) )
			Result: out STD_LOGIC_VECTOR (31 downto 0);
			Zero: out STD_LOGIC);
end component;
 
-- Inputs
 signal A, B : STD_LOGIC_VECTOR (31 downto 0);
 signal ALUctrl: UNSIGNED (3 downto 0);
 
-- Outputs
 signal Result : STD_LOGIC_VECTOR (31 downto 0);
 signal Zero : STD_LOGIC;

 -- Lookup List
 -- declare record type
    type ALU_vector is record
			a, b: Integer;
			ALUctrl: UNSIGNED (3 downto 0);
    end record; 

    type ALU_vector_array is array (natural range <>) of ALU_vector;
    constant ALU_vectors : ALU_vector_array := (
      -- a, b, ALUctrl   -- positional method is used below
        (0, 0, "0000"), -- or (a => 0, b => 0 ALUctrl => "0000")
        (0, 1, "0001"),
        (1, 0, "0010"),
        (1, 1, "0110"),
        (0, 0, "0111"),
		  (0, 0, "1100"),
		  (0, 0, "0101")
        );
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: ALU PORT MAP (
 A => A,
 B => B,
 ALUctrl => ALUctrl,
 Result => Result,
 Zero => Zero
 );
 
-- Stimulus process: no stimulus so runs through once
 stim_proc: process
 begin
-- hold reset state for 100 ns.
 wait for 100 ns;
 
--===ALUctrl options===--
-- Function Input Below ( ALU_vectors(value) )
-- |	  ALUctrl
-- |	  |		  Operation
-- V	  V		  V
---------------------------
-- 0: "0000" == AND
-- 1: "0001" == OR
-- 2: "0010" == add
-- 3: "0110" == subtract
-- 4: "0111" == set on less than
-- 5: "1100" == nor
-- 6: "0101" == nand

ALUctrl <= ALU_vectors(2).ALUctrl;
---------------------------

		for n in INTEGER range 0 to 1 loop
			A <= std_logic_vector(to_unsigned(n, 32));
			for m in INTEGER range 0 to 1 loop
				B <= std_logic_vector(to_unsigned(m, 32));
				wait for 10 ns;
			end loop;
		end loop;
		
		A <= std_logic_vector(to_unsigned(1253135, 32));
		B <= std_logic_vector(to_unsigned(912737, 32));
		
		wait;
 end process;
 
END;
