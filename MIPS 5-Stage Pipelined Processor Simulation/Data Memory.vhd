LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity Data_Mem is
 generic (Data_size: Integer := 8);	--amount of 32 bit indexes available for storage in data memory
 
 port (Address: in STD_LOGIC_VECTOR (31 downto 0);
		 Write_Data: in STD_LOGIC_VECTOR (31 downto 0);
		 memWrite, memRead: in STD_LOGIC;
		 clk: in STD_LOGIC;
		 Read_Data: out STD_LOGIC_VECTOR (31 downto 0)); 
end Data_Mem;


architecture Data_Mem_arch of Data_Mem is
	
	type data_array is array (Data_size downto 0) of std_logic_vector (31 downto 0);
	
	signal DATA : data_array;
	
 begin
	
	process(clk)
		begin
		if (rising_edge(clk)) then
			if (memWrite = '1') then
				DATA(to_integer(unsigned(Address))) <= Write_Data;
			end if;
		end if;
	end process;
		
	Read_Data <= DATA(to_integer(unsigned(Address))) when memRead = '1';
	
end Data_Mem_arch;