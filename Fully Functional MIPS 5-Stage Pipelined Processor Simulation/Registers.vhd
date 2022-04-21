LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity Registers is
 port (Read_Register1, Read_Register2: in UNSIGNED (4 downto 0);
		 Write_Register: in UNSIGNED (4 downto 0);
		 Write_Data: in STD_LOGIC_VECTOR (31 downto 0);
		 RegWrite: in STD_LOGIC;
		 clk: in STD_LOGIC;
		 Read_Data1, Read_Data2: out STD_LOGIC_VECTOR (31 downto 0)
		); 
end Registers;


architecture Registers_arch of Registers is
	
	--signal zero, at, v0, v1, a0, a1, a2, a3, t0, t1, t2, t3, t4, t5, t6, t7, s0, s1, s2, s3, s4, s5, s6, s7, t8, t9, k0, k1, gp, sp, fp, ra: STD_LOGIC_VECTOR (31 downto 0);
	
	type Regs is array (31 downto 0) of std_logic_vector (31 downto 0);
	
	signal Registers : Regs := (others=>(others=>'0'));
	
 begin
 
 	Read_Data1 <= (others => '0') when Read_Register1 = "00000" else Registers(to_integer(Read_Register1));
	Read_Data2 <= (others => '0') when Read_Register2 = "00000" else Registers(to_integer(Read_Register2));
	
	process(clk)
		begin
		if (rising_edge(clk)) then
			if (Regwrite = '1') then
				Registers(to_integer(Write_Register)) <= Write_Data;
			end if;
		end if;
	end process;
			
	
end Registers_arch;