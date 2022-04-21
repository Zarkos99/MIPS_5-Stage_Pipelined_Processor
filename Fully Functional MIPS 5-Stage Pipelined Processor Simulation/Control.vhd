LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity Control is
port ( Instruction: in UNSIGNED (5 downto 0);
	    RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch: out STD_LOGIC;
		 ALUop: out UNSIGNED (1 downto 0)
	  );
end Control;


architecture Control_arch of Control is

 -- Lookup List
 -- declare record type
    type Control_vectors is record
			RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch: STD_LOGIC;
			ALUop: UNSIGNED (1 downto 0);
			Instruction: UNSIGNED (5 downto 0);
    end record; 

    type Control_vectors_array is array (natural range <>) of Control_vectors;
    constant Control_vector : Control_vectors_array := (
      -- RegDst, ALUsrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUop, Instruction   						-- positional method is used below
        ( '1',    '0',     '0',      '1',      '0',     '0',     '0',   "10",   "000000"),  --R-format			-- or (a => 0, b => 0 ALUctrl => "0000")
        ( '0',    '1',     '1',      '1',      '1',     '0',     '0',   "00",   "100011"),  --lw
        ( '0',    '1',     '0',      '0',      '0',     '1',     '0',   "00",   "101011"),  --sw
		  ( '0',    '0',     '0',      '0',      '0',     '0',     '1',   "01",   "000100"),  --beq
		  ( '0',    '1',     '0',      '1',      '0',     '0',     '0',   "00",   "001000")   --addi
        );

BEGIN
	
	RegDst <= 
		--R-format
		Control_vector(0).RegDst after 1 ns when Instruction = Control_vector(0).Instruction else
		--lw
		Control_vector(1).RegDst after 1 ns when Instruction = Control_vector(1).Instruction else
		--sw
		Control_vector(2).RegDst after 1 ns when Instruction = Control_vector(2).Instruction else
		--beq
		Control_vector(3).RegDst after 1 ns when Instruction = Control_vector(3).Instruction else
		--addi
		Control_vector(4).RegDst after 1 ns when Instruction = Control_vector(4).Instruction;
		
	ALUsrc <= 
		--R-format
		Control_vector(0).ALUsrc after 1 ns when Instruction = Control_vector(0).Instruction else
		--lw
		Control_vector(1).ALUsrc after 1 ns when Instruction = Control_vector(1).Instruction else
		--sw
		Control_vector(2).ALUsrc after 1 ns when Instruction = Control_vector(2).Instruction else
		--beq
		Control_vector(3).ALUsrc after 1 ns when Instruction = Control_vector(3).Instruction else
		--addi
		Control_vector(4).ALUsrc after 1 ns when Instruction = Control_vector(4).Instruction;
		
	MemtoReg <= 
		--R-format
		Control_vector(0).MemtoReg after 1 ns when Instruction = Control_vector(0).Instruction else
		--lw
		Control_vector(1).MemtoReg after 1 ns when Instruction = Control_vector(1).Instruction else
		--sw
		Control_vector(2).MemtoReg after 1 ns when Instruction = Control_vector(2).Instruction else
		--beq
		Control_vector(3).MemtoReg after 1 ns when Instruction = Control_vector(3).Instruction else
		--addi
		Control_vector(4).MemtoReg after 1 ns when Instruction = Control_vector(4).Instruction;
		
	RegWrite <= 
		--R-format
		Control_vector(0).RegWrite after 1 ns when Instruction = Control_vector(0).Instruction else
		--lw
		Control_vector(1).RegWrite after 1 ns when Instruction = Control_vector(1).Instruction else
		--sw
		Control_vector(2).RegWrite after 1 ns when Instruction = Control_vector(2).Instruction else
		--beq
		Control_vector(3).RegWrite after 1 ns when Instruction = Control_vector(3).Instruction else
		--addi
		Control_vector(4).RegWrite after 1 ns when Instruction = Control_vector(4).Instruction;
		
	MemRead <= 
		--R-format
		Control_vector(0).MemRead after 1 ns when Instruction = Control_vector(0).Instruction else
		--lw
		Control_vector(1).MemRead after 1 ns when Instruction = Control_vector(1).Instruction else
		--sw
		Control_vector(2).MemRead after 1 ns when Instruction = Control_vector(2).Instruction else
		--beq
		Control_vector(3).MemRead after 1 ns when Instruction = Control_vector(3).Instruction else
		--addi
		Control_vector(4).MemRead after 1 ns when Instruction = Control_vector(4).Instruction;
		
	MemWrite <= 
		--R-format
		Control_vector(0).MemWrite after 1 ns when Instruction = Control_vector(0).Instruction else
		--lw
		Control_vector(1).MemWrite after 1 ns when Instruction = Control_vector(1).Instruction else
		--sw
		Control_vector(2).MemWrite after 1 ns when Instruction = Control_vector(2).Instruction else
		--beq
		Control_vector(3).MemWrite after 1 ns when Instruction = Control_vector(3).Instruction else
		--addi
		Control_vector(4).MemWrite after 1 ns when Instruction = Control_vector(4).Instruction;
	Branch <= 
		--R-format
		Control_vector(0).Branch after 1 ns when Instruction = Control_vector(0).Instruction else
		--lw
		Control_vector(1).Branch after 1 ns when Instruction = Control_vector(1).Instruction else
		--sw
		Control_vector(2).Branch after 1 ns when Instruction = Control_vector(2).Instruction else
		--beq
		Control_vector(3).Branch after 1 ns when Instruction = Control_vector(3).Instruction else
		--addi
		Control_vector(4).Branch after 1 ns when Instruction = Control_vector(4).Instruction;
		
	ALUop <= 
		--R-format
		Control_vector(0).ALUop after 1 ns when Instruction = Control_vector(0).Instruction else
		--lw
		Control_vector(1).ALUop after 1 ns when Instruction = Control_vector(1).Instruction else
		--sw
		Control_vector(2).ALUop after 1 ns when Instruction = Control_vector(2).Instruction else
		--beq
		Control_vector(3).ALUop after 1 ns when Instruction = Control_vector(3).Instruction else
		--addi
		Control_vector(4).ALUop after 1 ns when Instruction = Control_vector(4).Instruction;

end Control_arch;
