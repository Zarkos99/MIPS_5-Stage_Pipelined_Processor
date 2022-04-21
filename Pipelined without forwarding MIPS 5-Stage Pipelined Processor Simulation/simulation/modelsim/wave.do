onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench_mips_processor/uut/Instruction_Program
add wave -noupdate /testbench_mips_processor/uut/RESET
add wave -noupdate /testbench_mips_processor/uut/CLK
add wave -noupdate -expand -group {PC Handling} -radix decimal /testbench_mips_processor/uut/PC
add wave -noupdate -expand -group {PC Handling} -radix decimal /testbench_mips_processor/uut/PC_next
add wave -noupdate -expand -group {PC Handling} -radix decimal /testbench_mips_processor/uut/PC_shifted
add wave -noupdate -expand -group {PC Handling} -radix decimal /testbench_mips_processor/uut/EX_PC_branch
add wave -noupdate -expand -group {PC Handling} -radix decimal /testbench_mips_processor/uut/MA_PC_branch
add wave -noupdate -expand -group {PC Handling} -radix decimal /testbench_mips_processor/uut/IF_PC_add4
add wave -noupdate -expand -group {PC Handling} -radix decimal /testbench_mips_processor/uut/ID_PC_add4
add wave -noupdate -expand -group {PC Handling} -radix decimal /testbench_mips_processor/uut/EX_PC_add4
add wave -noupdate -group {Instruction Fetch Stage} /testbench_mips_processor/uut/IF_Instruction_out
add wave -noupdate -group {Instruction Decode Stage} /testbench_mips_processor/uut/ID_Instruction_out
add wave -noupdate -group {Instruction Decode Stage} -radix decimal /testbench_mips_processor/uut/ID_Constant_32bit
add wave -noupdate -group {Instruction Decode Stage} -radix decimal /testbench_mips_processor/uut/ID_Read_Reg1_Data
add wave -noupdate -group {Instruction Decode Stage} -radix decimal /testbench_mips_processor/uut/ID_Read_Reg2_Data
add wave -noupdate -group {Execute Stage} -radix decimal /testbench_mips_processor/uut/EX_Constant_32bit
add wave -noupdate -group {Execute Stage} -radix decimal /testbench_mips_processor/uut/ALUsrc_Data
add wave -noupdate -group {Execute Stage} -radix decimal /testbench_mips_processor/uut/EX_Write_Register_Num
add wave -noupdate -group {Execute Stage} -radix decimal /testbench_mips_processor/uut/EX_rt
add wave -noupdate -group {Execute Stage} -radix decimal /testbench_mips_processor/uut/EX_rd
add wave -noupdate -group {Execute Stage} -radix decimal /testbench_mips_processor/uut/EX_Read_Reg1_Data
add wave -noupdate -group {Execute Stage} -radix decimal /testbench_mips_processor/uut/EX_Read_Reg2_Data
add wave -noupdate -group {Execute Stage} -radix decimal /testbench_mips_processor/uut/EX_ALU_Result
add wave -noupdate -group {Execute Stage} /testbench_mips_processor/uut/EX_ALU_Zero
add wave -noupdate -group {Memory Access Stage} -radix decimal /testbench_mips_processor/uut/MA_Mem_Data
add wave -noupdate -group {Memory Access Stage} -radix decimal /testbench_mips_processor/uut/MA_Write_Register_Num
add wave -noupdate -group {Memory Access Stage} -radix decimal /testbench_mips_processor/uut/MA_Read_Reg2_Data
add wave -noupdate -group {Memory Access Stage} -radix decimal /testbench_mips_processor/uut/MA_ALU_Result
add wave -noupdate -group {Memory Access Stage} /testbench_mips_processor/uut/MA_ALU_Zero
add wave -noupdate -group {Write Back Stage} -radix decimal /testbench_mips_processor/uut/Data_MemtoReg
add wave -noupdate -group {Write Back Stage} -radix decimal /testbench_mips_processor/uut/WB_Mem_Data
add wave -noupdate -group {Write Back Stage} -radix decimal /testbench_mips_processor/uut/WB_Write_Register_Num
add wave -noupdate -group {Write Back Stage} -radix decimal /testbench_mips_processor/uut/WB_ALU_Result
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ID_RegDst
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/EX_RegDst
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ID_ALUsrc
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/EX_ALUsrc
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ID_MemtoReg
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/EX_MemtoReg
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/MA_MemtoReg
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/WB_MemtoReg
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ID_RegWrite
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/EX_RegWrite
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/MA_RegWrite
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/WB_RegWrite
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ID_MemRead
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/EX_MemRead
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/MA_MemRead
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ID_MemWrite
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/EX_MemWrite
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/MA_MemWrite
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ID_Branch
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/EX_Branch
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/MA_Branch
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ID_ALUop
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/EX_ALUop
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/ALUctrl
add wave -noupdate -group {Control Signals} /testbench_mips_processor/uut/PCSrc
add wave -noupdate -radix decimal -childformat {{/testbench_mips_processor/uut/Registers_Ports/Registers(31) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(30) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(29) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(28) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(27) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(26) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(25) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(24) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(23) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(22) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(21) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(20) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(19) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(18) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(17) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(16) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(15) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(14) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(13) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(12) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(11) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(10) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(9) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(8) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(7) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(6) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(5) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(4) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(3) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(2) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(1) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(0) -radix decimal}} -subitemconfig {/testbench_mips_processor/uut/Registers_Ports/Registers(31) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(30) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(29) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(28) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(27) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(26) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(25) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(24) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(23) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(22) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(21) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(20) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(19) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(18) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(17) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(16) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(15) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(14) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(13) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(12) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(11) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(10) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(9) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(8) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(7) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(6) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(5) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(4) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(3) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(2) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(1) {-radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(0) {-radix decimal}} /testbench_mips_processor/uut/Registers_Ports/Registers
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {691908 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 324
configure wave -valuecolwidth 229
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {10500 ns}
