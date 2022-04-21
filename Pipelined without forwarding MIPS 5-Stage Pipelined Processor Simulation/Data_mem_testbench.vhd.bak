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
		 Read_Data1, Read_Data2: out STD_LOGIC_VECTOR (31 downto 0)
		); 
end component;
 
-- Inputs
 signal Read_Register1, Read_Register2: UNSIGNED (4 downto 0);
 signal Write_Register: UNSIGNED (4 downto 0);
 signal Write_Data: STD_LOGIC_VECTOR (31 downto 0);
 signal RegWrite: STD_LOGIC;
 
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
 Read_Data1 => Read_Data1,
 Read_Data2 => Read_Data2
 );
 
-- Stimulus process: no stimulus so runs through once
 stim_proc: process
 begin
-- hold reset state for 100 ns.
 wait for 100 ns;
 
 RegWrite <= '1';
 
 Write_Register <= to_unsigned(0, 5);
 Write_Data <= std_logic_vector(to_unsigned(5, 32));
 wait for 10 ns;
 
 Write_Register <= to_unsigned(1, 5);
 Write_Data <= std_logic_vector(to_unsigned(11, 32));
 
 Read_Register1 <= to_unsigned(0, 5);
 Read_Register2 <= to_unsigned(1, 5);
 wait for 10 ns;
  
 Read_Register1 <= to_unsigned(1, 5);
 Read_Register2 <= to_unsigned(0, 5);
 wait for 10 ns;
 
 Write_Register <= to_unsigned(17, 5);
 Write_Data <= std_logic_vector(to_unsigned(72, 32));
 
 Read_Register1 <= to_unsigned(17, 5);
 wait for 10 ns;
 
 RegWrite <= '0';
 
 Write_Register <= to_unsigned(0, 5);
 Write_Data <= std_logic_vector(to_unsigned(99, 32));
 Read_Register2 <= to_unsigned(0, 5);
 
 wait;
 end process;
 
END;
