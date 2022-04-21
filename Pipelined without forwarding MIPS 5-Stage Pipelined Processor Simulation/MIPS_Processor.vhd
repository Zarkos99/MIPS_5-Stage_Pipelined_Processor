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
			Shamt: in UNSIGNED (4 downto 0);	--Shift amount
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
 port (reset: in STD_LOGIC;
		 Read_Address: in UNSIGNED (31 downto 0);
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
--Naming Convention:
-- IF: Instruction Fetch
-- ID: Instruction Decode
-- EX: Execute
-- MA: Memory Access
-- WB: Write Back

--Intermediary
 signal PC, PC_next, Constant_Shifted, EX_PC_branch, MA_PC_branch, IF_PC_add4, ID_PC_add4, EX_PC_add4: UNSIGNED (31 downto 0);
 signal IF_Instruction_out, ID_Instruction_out: UNSIGNED (31 downto 0);
 signal Data_MemtoReg, MA_Mem_Data, WB_Mem_Data: STD_LOGIC_VECTOR (31 downto 0);
 signal ID_Constant_32bit, EX_Constant_32bit: STD_LOGIC_VECTOR (31 downto 0);
 signal ALUsrc_Data: STD_LOGIC_VECTOR (31 downto 0);
 signal EX_Shamt: UNSIGNED (4 downto 0);
 
 --Registers
 signal EX_Write_Register_Num, MA_Write_Register_Num, WB_Write_Register_Num, EX_rt, EX_rd: UNSIGNED (4 downto 0);
 signal ID_Read_Reg1_Data, EX_Read_Reg1_Data, ID_Read_Reg2_Data, EX_Read_Reg2_Data, MA_Read_Reg2_Data: STD_LOGIC_VECTOR (31 downto 0);			--Outputs to Register Data
 
 --ALU
 signal EX_ALU_Result, MA_ALU_Result, WB_ALU_Result: STD_LOGIC_VECTOR (31 downto 0);
 signal EX_ALU_Zero, MA_ALU_Zero: STD_LOGIC := '0';
 
 --Control Signals
 signal ID_RegDst, EX_RegDst: STD_LOGIC; 
 signal ID_ALUsrc, EX_ALUsrc: STD_LOGIC;
 signal ID_MemtoReg, EX_MemtoReg, MA_MemtoReg, WB_MemtoReg: STD_LOGIC;
 signal ID_RegWrite, EX_RegWrite, MA_RegWrite, WB_RegWrite: STD_LOGIC;
 signal ID_MemRead, EX_MemRead, MA_MemRead: STD_LOGIC;
 signal ID_MemWrite, EX_MemWrite, MA_MemWrite: STD_LOGIC;
 signal ID_Branch, EX_Branch, MA_Branch: STD_LOGIC;
 signal ID_ALUop, EX_ALUop: UNSIGNED (1 downto 0);
 signal ALUctrl: UNSIGNED (3 downto 0);
 signal PCSrc: STD_LOGIC;

BEGIN
--------------------------------------------
--================Datapath================--
-- When implementing pipeline, only the pipeline registers will require a clock,
-- signals will be reliant on the prior signals which when filling the pipeline,
-- will be unassigned thanks to the pipeline registers
--------------------------------------------

process(clk, RESET)
begin
	if(RESET = '1') then
		PC <= (others => '0');
	elsif(rising_edge(clk)) then
		PC <= PC_next;
	end if;
end process;

IF_PC_add4 <= PC + 4; 	--Add 4 due to word addressing. In VHDL, we use array indexing so typically want 1 but mock word addressing is handled in the component.

--PC and Branch Determination
Constant_Shifted <= shift_left(unsigned(EX_Constant_32bit), 2);
EX_PC_branch <= Constant_Shifted + EX_PC_add4;
PCSrc <= MA_ALU_Zero and MA_Branch;

--Concurrent RESET Implementation to allow the whole processor to be reset
PC_next <= x"00000000" when RESET = '1' else
			  IF_PC_add4  when PCSrc = '0' else 
			  MA_PC_branch;

----------===Instruction Fetch===----------
	
-- Mapping intermediary signals to the instruction memory ports
Instruction_Mem_Ports: Instruction_Mem PORT MAP
(RESET,
 PC, 						--Program Counter (Address to read)
 Instruction_Program, --Instruction Program Input
 IF_Instruction_out		--The instruction to be decoded
);

--***IF/ID Pipeline Register***--
process(clk, RESET)
begin
	if(RESET = '1') then
		ID_PC_add4 <= (others => '0');
		ID_Instruction_Out <= (others => '0');
	elsif(rising_edge(clk)) then
		ID_PC_add4 <= IF_PC_add4;
		ID_Instruction_Out <= IF_Instruction_Out;
	end if;
end process;

----------===Instruction Decode===----------

--Control Signals Instantiation
Control_Signals: Control PORT MAP
(ID_Instruction_out(31 downto 26),
 ID_RegDst, ID_ALUsrc, ID_MemtoReg, ID_RegWrite, ID_MemRead, ID_MemWrite, ID_Branch,
 ID_ALUop(1 downto 0)
);

--Registers Instantiation
Registers_Ports: Registers PORT MAP 
(ID_Instruction_out(25 downto 21), 		--reg1 number
 ID_Instruction_out(20 downto 16), 		--reg2 number
 WB_Write_Register_Num, 						--Write reg number
 Data_MemtoReg,								--write reg data
 WB_RegWrite,									--control signal
 CLK,
 ID_Read_Reg1_Data,							--data read from reg1
 ID_Read_Reg2_Data								--data read from reg2
);

--Sign extending lower 16 bits of Instruction
ID_Constant_32bit <= std_logic_vector(resize(signed(ID_Instruction_out(15 downto 0)), ID_Constant_32bit'length));
	 
--***ID/EX Pipeline Register***--
process(clk, RESET)
begin
	if(RESET = '1') then
		--Control Signals
		--EX	
		EX_ALUsrc <= '0';
		EX_ALUop <= (others => '0');
		EX_RegDst <= '0';
		--MA
		EX_Branch <= '0';
		EX_MemWrite <= '0';
		EX_MemRead <= '0';
		--WB
		EX_MemtoReg <= '0';
		EX_RegWrite <= '0';
		
		--Intermediate Signals
		EX_PC_add4 <= (others => '0');
		EX_Read_Reg1_Data <= (others => '0');
		EX_Read_Reg2_Data <= (others => '0');
		EX_Constant_32bit <= (others => '0');
		EX_rt <= (others => '0');
		EX_rd <= (others => '0');
		EX_Shamt <= (others => '0');
		
	elsif(rising_edge(clk)) then
		--Control Signals
		--EX
		EX_ALUsrc <= ID_ALUsrc;
		EX_ALUop <= ID_ALUop;
		EX_RegDst <= ID_RegDst;
		--MA
		EX_Branch <= ID_Branch;
		EX_MemWrite <= ID_MemWrite;
		EX_MemRead <= ID_MemRead;
		--WB
		EX_MemtoReg <= ID_MemtoReg;
		EX_RegWrite <= ID_RegWrite;
		
		--Intermediate Signals
		EX_PC_add4 <= ID_PC_add4;
		EX_Read_Reg1_Data <= ID_Read_Reg1_Data;
		EX_Read_Reg2_Data <= ID_Read_Reg2_Data;
		EX_Constant_32bit <= ID_Constant_32bit;
		EX_rt <= ID_Instruction_out(20 downto 16);
		EX_rd <= ID_Instruction_out(15 downto 11);
		EX_Shamt <= ID_Instruction_out(10 downto 6);
	end if;
end process;
	 
----------===Execute===----------
	 
--ALU Control Signal Instantiation
ALU_Control_Signals: ALU_Control PORT MAP
(unsigned(EX_Constant_32bit(5 downto 0)),
 EX_ALUop(1 downto 0),
 ALUctrl
);

ALUsrc_Data <= EX_Read_Reg2_Data when EX_ALUsrc='0' else EX_Constant_32bit;
 
--Write Register Data Signal
EX_Write_Register_Num <= EX_rt when EX_RegDst='0' else EX_rd; 

--ALU Instantiation
 ALU_Ports: ALU PORT MAP (
 A 		=> EX_Read_Reg1_Data,
 B 		=> ALUsrc_Data,
 ALUctrl => ALUctrl,
 Shamt   => EX_Shamt,
 Result 	=> EX_ALU_Result,
 Zero 	=> EX_ALU_Zero
 );
 
 --***EX/MA Pipeline Register***--
process(clk, RESET)
begin
	if(RESET = '1') then
		--Control Signals
		--MA
		MA_Branch <= '0';
		MA_MemWrite <= '0';
		MA_MemRead <= '0';
		--WB
		MA_MemtoReg <= '0';
		MA_RegWrite <= '0';
		
		--Intermediate Signals
		MA_PC_branch <= (others => '0');
		MA_ALU_Result <= (others => '0');
		MA_ALU_Zero <= '0';
		MA_Read_Reg2_Data <= (others => '0');
		MA_Write_Register_Num <= (others => '0');
		
	elsif(rising_edge(clk)) then
		--Control Signals
		--MA
		MA_Branch <= EX_Branch;
		MA_MemWrite <= EX_MemWrite;
		MA_MemRead <= EX_MemRead;
		--WB
		MA_MemtoReg <= EX_MemtoReg;
		MA_RegWrite <= EX_RegWrite;
		
		--Intermediate Signals
		MA_PC_branch <= EX_PC_branch;
		MA_ALU_Result <= EX_ALU_Result;
		MA_ALU_Zero <= EX_ALU_Zero;
		MA_Read_Reg2_Data <= EX_Read_Reg2_Data;
		MA_Write_Register_Num <= EX_Write_Register_Num;
	end if;
end process;
 
----------===Memory Access===----------
 
 --Data Memory Instantiation
  Data_Mem_Ports: Data_Mem PORT MAP (
 Address    => MA_ALU_Result,
 Write_Data => MA_Read_Reg2_Data,
 memWrite 	=> MA_MemWrite,
 memRead 	=> MA_MemRead,
 clk			=> CLK,
 Read_Data 	=> MA_Mem_Data
);

--***MA/WB Pipeline Register***--
process(clk, RESET)
begin
	if(RESET = '1') then
		--Control Signals
		--WB
		WB_MemtoReg <= '0';
		WB_RegWrite <= '0';
		
		--Intermediate Signals
		WB_Mem_Data <= (others => '0');
		WB_ALU_Result <= (others => '0');
		WB_Write_Register_Num <= (others => '0');
		
	elsif(rising_edge(clk)) then
		--Control Signals
		--WB
		WB_MemtoReg <= MA_MemtoReg;
		WB_RegWrite <= MA_RegWrite;
		
		--Intermediate Signals
		WB_Mem_Data <= MA_Mem_Data;
		WB_ALU_Result <= MA_ALU_Result;
		WB_Write_Register_Num <= MA_Write_Register_Num;
	end if;
end process;

----------===Write Back===----------

Data_MemtoReg <= WB_Mem_Data when WB_MemtoReg = '1' else WB_ALU_Result;
	 
	 
end MIPS_Processor_arch;
