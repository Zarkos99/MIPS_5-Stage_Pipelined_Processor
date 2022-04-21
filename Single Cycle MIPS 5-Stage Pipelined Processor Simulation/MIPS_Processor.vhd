LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

use work.instruction_type.all;

entity MIPS_Processor is
port (Instruction_Program: in Instruction_Array;
		RESET: in STD_LOGIC := '0';
		CLK: in STD_LOGIC := '0');	--MIGHT NEED TO REMOVE THIS INITIALIZATION IF IT MESSES WITH SIGNAL
end MIPS_Processor;


architecture MIPS_Processor_arch of MIPS_Processor is

-------------------------------------------
--================Components================-- 
-------------------------------------------

--Registers Component
component Registers
 port (Read_Register1, Read_Register2: in UNSIGNED (4 downto 0);
		 Write_Register: in UNSIGNED (4 downto 0);
		 Write_Data: in STD_LOGIC_VECTOR (31 downto 0);
		 RegWrite: in STD_LOGIC;
		 clk: in STD_LOGIC;
		 Read_Data1, Read_Data2: out STD_LOGIC_VECTOR (31 downto 0)
		); 
end component;

--ALU Component
component ALU 
 port ( 	A, B: in STD_LOGIC_VECTOR (31 downto 0);
			ALUctrl: in UNSIGNED (3 downto 0); --( Anegate, Bnegate, Operation(2-bit) )
			Result: out STD_LOGIC_VECTOR (31 downto 0);
			Zero: out STD_LOGIC := '0');
end component;

--Data Memory Component
component Data_Mem
 port (Address: in STD_LOGIC_VECTOR (31 downto 0);
		 Write_Data: in STD_LOGIC_VECTOR (31 downto 0);
		 memWrite, memRead: in STD_LOGIC;
		 clk: in STD_LOGIC;
		 Read_Data: out STD_LOGIC_VECTOR (31 downto 0)); 
end component;

--Instruction Memory Component
component Instruction_Mem
 port (Read_Address: in UNSIGNED (31 downto 0);
		 Instruction_memory: in Instruction_array;
		 Instruction_out: out UNSIGNED (31 downto 0)
		 );
end component;

--ALU Control Signal Component
component ALU_Control
 port ( funct: in UNSIGNED (5 downto 0);
		  ALUop: in UNSIGNED (1 downto 0);
		  ALUctrl: out UNSIGNED (3 downto 0)
	   );
end component;

--Control Signal Component
component Control
port ( Instruction: in UNSIGNED (5 downto 0);
	    RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch: out STD_LOGIC;
		 ALUop: out UNSIGNED (1 downto 0)
	  );
end component;

-------------------------------------------
--================Signals================-- 
-------------------------------------------

--Intermediary
 signal PC: UNSIGNED (31 downto 0);
 signal PC_next, PC_shifted, PC_branch, PC_add4: UNSIGNED (31 downto 0);
 signal Instruction_out: UNSIGNED (31 downto 0);
 signal Data_MemtoReg, Mem_Data: STD_LOGIC_VECTOR (31 downto 0);
 signal Constant_32bit: STD_LOGIC_VECTOR (31 downto 0);
 signal ALUsrc_Data: STD_LOGIC_VECTOR (31 downto 0);
 
 --Registers
 signal Write_Register_Num: UNSIGNED (4 downto 0);
 signal Read_Reg1_Data, Read_Reg2_Data: STD_LOGIC_VECTOR (31 downto 0);			--Outputs to Register Data
 
 --ALU
 signal ALU_Result: STD_LOGIC_VECTOR (31 downto 0);
 signal ALU_Zero: STD_LOGIC := '0';
 
 --Control Signals
 signal RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch: STD_LOGIC;
 signal ALUop: UNSIGNED (1 downto 0);
 signal ALUctrl: UNSIGNED (3 downto 0);
 signal PCSrc: STD_LOGIC;

BEGIN
--------------------------------------------
--================Datapath================--
-- When implementing pipeline, only the pipeline registers will require a clock,
-- signals will be reliant on the prior signals which when filling the pipeline,
-- will be unassigned thanks to the pipeline registers
--------------------------------------------

process(clk)
	begin
	
	if(RESET = '1') then
		PC <= (others => '0');
	elsif(rising_edge(clk)) then
		PC <= PC_next;
	end if;
end process;

PC_add4 <= PC + 4; 	--Add 4 due to word addressing. In VHDL, we use array indexing so typically want 1 but mock word addressing is handled in the component.

----------===Instruction Fetch===----------
	
-- Mapping intermediary signals to the instruction memory ports
Instruction_Mem_Ports: Instruction_Mem PORT MAP
(PC, 						--Program Counter (Address to read)
Instruction_Program, --Instruction Program Input
Instruction_out		--The instruction to be decoded
);

----------===Instruction Decode===----------

--Control Signals Instantiation
Control_Signals: Control PORT MAP
(Instruction_out(31 downto 26),
 RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch,
 ALUop(1 downto 0)
);

Write_Register_Num <= Instruction_out(20 downto 16) when RegDst='0' else Instruction_out(15 downto 11); --Write Register Data Signal

--Registers Instantiation
Registers_Ports: Registers PORT MAP 
(Instruction_out(25 downto 21), 		--reg1 number
 Instruction_out(20 downto 16), 		--reg2 number
 Write_Register_Num, 						--Write reg number
 Data_MemtoReg,								--write reg data
 RegWrite,									--control signal
 CLK,
 Read_Reg1_Data,							--data read from reg1
 Read_Reg2_Data								--data read from reg2
);

--Sign extending lower 16 bits of Instruction
Constant_32bit <= std_logic_vector(resize(signed(Instruction_out(15 downto 0)), Constant_32bit'length));
	 
----------===Execute===----------
	 
--ALU Control Signal Instantiation
ALU_Control_Signals: ALU_Control PORT MAP
(Instruction_out(5 downto 0),
 ALUop(1 downto 0),
 ALUctrl
);

 ALUsrc_Data <= Read_Reg2_Data when ALUsrc='0' else Constant_32bit;

--ALU Instantiation
 ALU_Ports: ALU PORT MAP (
 A 		=> Read_Reg1_Data,
 B 		=> ALUsrc_Data,
 ALUctrl => ALUctrl,
 Result 	=> ALU_Result,
 Zero 	=> ALU_Zero
 );
 
--PC and Branch Determination
PC_shifted <= shift_left(unsigned(Constant_32bit), 2);
PC_branch <= PC_shifted + PC_add4;
PCSrc <= ALU_Zero and Branch;

PC_next <= PC_add4 when PCSrc = '0' else PC_branch;
 
----------===Memory Access===----------
 
 --Data Memory Instantiation
  Data_Mem_Ports: Data_Mem PORT MAP (
 Address    => ALU_Result,
 Write_Data => Read_Reg2_Data,
 memWrite 	=> MemWrite,
 memRead 	=> MemRead,
 clk			=> CLK,
 Read_Data 	=> Mem_Data
);

----------===Write Back===----------

Data_MemtoReg <= Mem_Data when MemtoReg = '1' else ALU_Result;
	 
	 
end MIPS_Processor_arch;
