LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
ENTITY Testbench_Data_Mem IS
END Testbench_Data_Mem;
 
ARCHITECTURE behavior OF Testbench_Data_Mem IS
 
-- Component Declaration for the Unit Under Test (UUT)

component Data_Mem
 port (Address: in UNSIGNED (31 downto 0);
		 Write_Data: in STD_LOGIC_VECTOR (31 downto 0);
		 memWrite, memRead: in STD_LOGIC;
		 clk: in STD_LOGIC;
		 Read_Data: out STD_LOGIC_VECTOR (31 downto 0)); 
end component;
 
-- Inputs
 signal Address: UNSIGNED (31 downto 0);
 signal Write_Data: STD_LOGIC_VECTOR (31 downto 0);
 signal memWrite, memRead: STD_LOGIC;
 signal CLK: STD_LOGIC;
 
-- Outputs
 signal Read_Data: STD_LOGIC_VECTOR (31 downto 0); 
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: Data_Mem PORT MAP (
 Address => Address,
 Write_Data => Write_Data,
 memWrite => memWrite,
 memRead => memRead,
 clk => CLK,
 Read_Data => Read_Data
 );
 
-- Stimulus process: no stimulus so runs through once
 stim_proc: process
 begin
-- hold reset state for 100 ns.
 wait for 100 ns;
 
 memWrite <= '0';
 
 Address <= to_unsigned(0, 32);
 Write_Data <= std_logic_vector(to_unsigned(333333333, 32));
 wait for 10 ns;
 
 memWrite <= '1';
 
 Address <= to_unsigned(250, 32);
 Write_Data <= std_logic_vector(to_unsigned(555555555, 32));
 wait for 10 ns;
 
 memWrite <= '0';
 memRead <= '1';
 wait for 10 ns;
 
 Address <= to_unsigned(0, 32);
 
 wait;
 end process;
 
END;
