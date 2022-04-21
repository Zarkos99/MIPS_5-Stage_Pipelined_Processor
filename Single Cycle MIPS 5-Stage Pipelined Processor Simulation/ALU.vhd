LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity ALU is
 port ( 	A, B: in STD_LOGIC_VECTOR (31 downto 0);
			ALUctrl: in UNSIGNED (3 downto 0); --( Anegate, Bnegate, Operation(2-bit) )
			Result: out STD_LOGIC_VECTOR (31 downto 0);
			Zero: out STD_LOGIC := '0');
end ALU;


architecture ALU_arch of ALU is

	signal temp: STD_LOGIC_VECTOR (31 downto 0);
	
 begin
 
	 temp <=
	 -------- AND --------
    A AND  B after 1 ns when ALUctrl = "0000" else
	 -------- OR --------
    A  OR  B after 1 ns when ALUctrl = "0001" else
    -------- add --------
    std_logic_vector(unsigned(A) + unsigned(B)) after 1 ns when ALUctrl = "0010" else
    -------- subtract --------
    std_logic_vector(unsigned(A) - unsigned(B)) after 1 ns when ALUctrl = "0110" else    
	 -------- NAND --------
    A NAND B after 1 ns when ALUctrl = "0101" else
    -------- NOR --------
    A NOR  B after 1 ns when ALUctrl = "1100" else
	 -------- set on less than --------
	 std_logic_vector(to_unsigned(1, 32)) after 1 ns when ALUctrl = "0111" and A < B else
	 std_logic_vector(to_unsigned(0, 32)) after 1 ns when ALUctrl = "0111" and not(A < B) else
	 -------- XOR --------
    --A XOR  B after 1 ns when ALUctrl = "1001" else
    -------- shift left logical --------
    --std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(B(10 downto 6))))) after 1 ns when ALUctrl = "0111" else
    -------- shift right logical --------
    --std_logic_vector(shift_right(unsigned(A), to_integer(unsigned(B(10 downto 6))))) after 1 ns when ALUctrl = "1000" else
    --
    -------- in other cases --------
    (others => '0');
  zero <= '1' when (temp <= "00000000000000000000000000000000") else '0';
  result <= temp;
  
end ALU_arch;
