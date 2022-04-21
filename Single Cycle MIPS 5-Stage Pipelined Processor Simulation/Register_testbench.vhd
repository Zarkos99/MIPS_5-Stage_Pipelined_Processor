LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
ENTITY Testbench_Register IS
END Testbench_Register;
 
ARCHITECTURE behavior OF Testbench_Register IS
 
-- Component Declaration for the Unit Under Test (UUT)

component Registers
 port (Read_Register1, Read_Register2: in UNSIGNED (4 downto 0);
		 Write_Register: in UNSIGNED (4 downto 0);
		 Write_Data: in STD_LOGIC_VECTOR (31 downto 0);
		 RegWrite: in STD_LOGIC;
		 clk: in STD_LOGIC;
		 Read_Data1, Read_Data2: out STD_LOGIC_VECTOR (31 downto 0)
		); 
end component;
  
 constant Clock_Frequency: integer := 1e6; --1MHz
 constant Clock_Period: time := 1000 ms / Clock_Frequency;	--Clock Period is 1 us at 1MHz frequency
 
-- Inputs
 signal Read_Register1, Read_Register2: UNSIGNED (4 downto 0);
 signal Write_Register: UNSIGNED (4 downto 0);
 signal Write_Data: STD_LOGIC_VECTOR (31 downto 0);
 signal RegWrite: STD_LOGIC;
 signal CLK: STD_LOGIC := '0';
 
-- Outputs
 signal Read_Data1, Read_Data2: STD_LOGIC_VECTOR (31 downto 0);
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: Registers PORT MAP (
 Read_Register1 => Read_Register1,
 Read_Register2 => Read_Register2,
 Write_Register => Write_Register,
 Write_Data => Write_Data,
 RegWrite => RegWrite,
 clk => CLK,
 Read_Data1 => Read_Data1,
 Read_Data2 => Read_Data2
 );
 
 clk_process :process
   begin
		clk <= not clk;
		wait for Clock_Period/2;
   end process;
	
-- Stimulus process: no stimulus so runs through once
 stim_proc: process
 begin
-- hold reset state for 100 ns.
 wait for 100 ns;
 
 RegWrite <= '1';
 
 Write_Register <= to_unsigned(9, 5);
 Write_Data <= std_logic_vector(to_unsigned(5, 32));
 wait for Clock_Period;
 
 Write_Register <= to_unsigned(10, 5);
 Write_Data <= std_logic_vector(to_unsigned(11, 32));
 wait for Clock_Period;
 
 Read_Register1 <= to_unsigned(9, 5);
 Read_Register2 <= to_unsigned(10, 5);
 wait for Clock_Period;
  
 Read_Register1 <= to_unsigned(0, 5);
 Read_Register2 <= to_unsigned(1, 5);
 wait for Clock_Period;
 
 Write_Register <= to_unsigned(17, 5);
 Write_Data <= std_logic_vector(to_unsigned(72, 32));
 wait for Clock_Period;
 
 Read_Register1 <= to_unsigned(17, 5);
 wait for Clock_Period;
 
 RegWrite <= '0';
 
 Write_Register <= to_unsigned(9, 5);
 Write_Data <= std_logic_vector(to_unsigned(99, 32));
 Read_Register2 <= to_unsigned(9, 5);
 
 wait;
 end process;
 
END;
