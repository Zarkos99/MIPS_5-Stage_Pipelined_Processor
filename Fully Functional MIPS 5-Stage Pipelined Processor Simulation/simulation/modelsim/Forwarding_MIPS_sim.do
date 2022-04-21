onerror {resume}
quietly set dataset_list [list sim MIPS_PROCESSOR_SIM1 MIPS_PROCESSOR_SIM]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate sim:/testbench_mips_processor/uut/Instruction_Program
add wave -noupdate sim:/testbench_mips_processor/uut/RESET
add wave -noupdate sim:/testbench_mips_processor/uut/Stall
add wave -noupdate sim:/testbench_mips_processor/uut/CLK
add wave -noupdate -expand -group {PC Handling} -expand -group {IF Stage} -radix unsigned sim:/testbench_mips_processor/uut/PC
add wave -noupdate -expand -group {PC Handling} -expand -group {IF Stage} -radix unsigned sim:/testbench_mips_processor/uut/IF_PC_add4
add wave -noupdate -expand -group {PC Handling} -expand -group {IF Stage} -radix unsigned sim:/testbench_mips_processor/uut/PC_next
add wave -noupdate -expand -group {PC Handling} -expand -group {ID Stage} -radix unsigned sim:/testbench_mips_processor/uut/ID_PC_add4
add wave -noupdate -expand -group {PC Handling} -expand -group {EX Stage} -radix decimal sim:/testbench_mips_processor/uut/Constant_Shifted
add wave -noupdate -expand -group {PC Handling} -expand -group {EX Stage} -radix unsigned sim:/testbench_mips_processor/uut/EX_PC_branch
add wave -noupdate -expand -group {PC Handling} -expand -group {EX Stage} -radix unsigned sim:/testbench_mips_processor/uut/EX_PC_add4
add wave -noupdate -expand -group {PC Handling} -format Literal sim:/testbench_mips_processor/uut/PCSrc
add wave -noupdate -expand -group {Instruction Fetch Stage} sim:/testbench_mips_processor/uut/IF_Instruction_out
add wave -noupdate -expand -group {Instruction Decode Stage} sim:/testbench_mips_processor/uut/ID_Instruction_out
add wave -noupdate -expand -group {Instruction Decode Stage} -radix unsigned sim:/testbench_mips_processor/uut/ID_rs
add wave -noupdate -expand -group {Instruction Decode Stage} -radix unsigned sim:/testbench_mips_processor/uut/ID_rt
add wave -noupdate -expand -group {Instruction Decode Stage} -radix unsigned sim:/testbench_mips_processor/uut/ID_rd
add wave -noupdate -expand -group {Instruction Decode Stage} -radix decimal sim:/testbench_mips_processor/uut/ID_Constant_32bit
add wave -noupdate -expand -group {Instruction Decode Stage} -radix decimal sim:/testbench_mips_processor/uut/ID_Read_Reg1_Data
add wave -noupdate -expand -group {Instruction Decode Stage} -radix decimal sim:/testbench_mips_processor/uut/ID_Read_Reg2_Data
add wave -noupdate -expand -group {Instruction Decode Stage} -radix decimal sim:/testbench_mips_processor/uut/ID_Forwarded_Reg_Data1
add wave -noupdate -expand -group {Instruction Decode Stage} -radix decimal sim:/testbench_mips_processor/uut/ID_Forwarded_Reg_Data2
add wave -noupdate -expand -group {Instruction Decode Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/ID_RegDst
add wave -noupdate -expand -group {Instruction Decode Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/ID_ALUsrc
add wave -noupdate -expand -group {Instruction Decode Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/ID_MemtoReg
add wave -noupdate -expand -group {Instruction Decode Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/ID_MemRead
add wave -noupdate -expand -group {Instruction Decode Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/ID_MemWrite
add wave -noupdate -expand -group {Instruction Decode Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/ID_Branch
add wave -noupdate -expand -group {Instruction Decode Stage} -expand -group {Control Signals} sim:/testbench_mips_processor/uut/ID_ALUop
add wave -noupdate -expand -group {Instruction Decode Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/ID_RegWrite
add wave -noupdate -expand -group {Execute Stage} -radix decimal sim:/testbench_mips_processor/uut/EX_Read_Reg1_Data
add wave -noupdate -expand -group {Execute Stage} -radix decimal sim:/testbench_mips_processor/uut/EX_Read_Reg2_Data
add wave -noupdate -expand -group {Execute Stage} -radix decimal sim:/testbench_mips_processor/uut/EX_Constant_32bit
add wave -noupdate -expand -group {Execute Stage} -radix decimal sim:/testbench_mips_processor/uut/ALU_Input_Top
add wave -noupdate -expand -group {Execute Stage} -radix decimal sim:/testbench_mips_processor/uut/ALU_Input_Bottom
add wave -noupdate -expand -group {Execute Stage} -radix decimal sim:/testbench_mips_processor/uut/EX_Forward_Bottom_Data
add wave -noupdate -expand -group {Execute Stage} -radix decimal sim:/testbench_mips_processor/uut/EX_ALU_Result
add wave -noupdate -expand -group {Execute Stage} -format Literal sim:/testbench_mips_processor/uut/EX_ALU_Zero
add wave -noupdate -expand -group {Execute Stage} -radix unsigned sim:/testbench_mips_processor/uut/EX_rs
add wave -noupdate -expand -group {Execute Stage} -radix unsigned sim:/testbench_mips_processor/uut/EX_rt
add wave -noupdate -expand -group {Execute Stage} -radix unsigned sim:/testbench_mips_processor/uut/EX_rd
add wave -noupdate -expand -group {Execute Stage} -radix unsigned sim:/testbench_mips_processor/uut/EX_Shamt
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} sim:/testbench_mips_processor/uut/Forward_Top
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} sim:/testbench_mips_processor/uut/Forward_Bottom
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/EX_RegDst
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/EX_ALUsrc
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/EX_MemtoReg
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/EX_MemRead
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/EX_MemWrite
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/EX_Branch
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} sim:/testbench_mips_processor/uut/EX_ALUop
add wave -noupdate -expand -group {Execute Stage} -expand -group {Control Signals} sim:/testbench_mips_processor/uut/ALUctrl
add wave -noupdate -expand -group {Execute Stage} -expand -group {Pipelined Register Write} -radix unsigned sim:/testbench_mips_processor/uut/EX_Write_Register_Num
add wave -noupdate -expand -group {Execute Stage} -expand -group {Pipelined Register Write} -format Literal sim:/testbench_mips_processor/uut/EX_RegWrite
add wave -noupdate -expand -group {Memory Access Stage} -radix decimal sim:/testbench_mips_processor/uut/MA_Forward_Bottom_Data
add wave -noupdate -expand -group {Memory Access Stage} -radix decimal sim:/testbench_mips_processor/uut/MA_ALU_Result
add wave -noupdate -expand -group {Memory Access Stage} -radix decimal sim:/testbench_mips_processor/uut/MA_Mem_Data
add wave -noupdate -expand -group {Memory Access Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/MA_MemtoReg
add wave -noupdate -expand -group {Memory Access Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/MA_MemWrite
add wave -noupdate -expand -group {Memory Access Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/MA_MemRead
add wave -noupdate -expand -group {Memory Access Stage} -expand -group {Pipelined Register Writing} -format Literal sim:/testbench_mips_processor/uut/MA_RegWrite
add wave -noupdate -expand -group {Memory Access Stage} -expand -group {Pipelined Register Writing} -radix unsigned sim:/testbench_mips_processor/uut/MA_Write_Register_Num
add wave -noupdate -group {Write Back Stage} -radix decimal sim:/testbench_mips_processor/uut/WB_ALU_Result
add wave -noupdate -group {Write Back Stage} -radix decimal sim:/testbench_mips_processor/uut/WB_Mem_Data
add wave -noupdate -group {Write Back Stage} -radix decimal sim:/testbench_mips_processor/uut/Data_MemtoReg
add wave -noupdate -group {Write Back Stage} -expand -group {Control Signals} -format Literal sim:/testbench_mips_processor/uut/WB_MemtoReg
add wave -noupdate -group {Write Back Stage} -expand -group {Pipelined Register Write} -format Literal sim:/testbench_mips_processor/uut/WB_RegWrite
add wave -noupdate -group {Write Back Stage} -expand -group {Pipelined Register Write} -radix unsigned sim:/testbench_mips_processor/uut/WB_Write_Register_Num
add wave -noupdate -expand -group Memories -radix decimal -childformat {{/testbench_mips_processor/uut/Registers_Ports/Registers(31) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(30) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(29) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(28) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(27) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(26) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(25) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(24) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(23) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(22) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(21) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(20) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(19) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(18) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(17) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(16) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(15) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(14) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(13) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(12) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(11) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(10) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(9) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(8) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(7) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(6) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(5) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(4) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(3) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(2) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(1) -radix decimal} {/testbench_mips_processor/uut/Registers_Ports/Registers(0) -radix decimal}} -expand -subitemconfig {/testbench_mips_processor/uut/Registers_Ports/Registers(31) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(30) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(29) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(28) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(27) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(26) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(25) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(24) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(23) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(22) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(21) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(20) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(19) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(18) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(17) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(16) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(15) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(14) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(13) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(12) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(11) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(10) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(9) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(8) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(7) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(6) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(5) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(4) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(3) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(2) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(1) {-height 15 -radix decimal} /testbench_mips_processor/uut/Registers_Ports/Registers(0) {-height 15 -radix decimal}} sim:/testbench_mips_processor/uut/Registers_Ports/Registers
add wave -noupdate -expand -group Memories -radix decimal -childformat {{/testbench_mips_processor/uut/Data_Mem_Ports/DATA(8) -radix decimal} {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(7) -radix decimal} {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(6) -radix decimal} {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(5) -radix decimal} {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(4) -radix decimal} {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(3) -radix decimal} {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(2) -radix decimal} {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(1) -radix decimal} {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(0) -radix decimal}} -subitemconfig {/testbench_mips_processor/uut/Data_Mem_Ports/DATA(8) {-height 15 -radix decimal} /testbench_mips_processor/uut/Data_Mem_Ports/DATA(7) {-height 15 -radix decimal} /testbench_mips_processor/uut/Data_Mem_Ports/DATA(6) {-height 15 -radix decimal} /testbench_mips_processor/uut/Data_Mem_Ports/DATA(5) {-height 15 -radix decimal} /testbench_mips_processor/uut/Data_Mem_Ports/DATA(4) {-height 15 -radix decimal} /testbench_mips_processor/uut/Data_Mem_Ports/DATA(3) {-height 15 -radix decimal} /testbench_mips_processor/uut/Data_Mem_Ports/DATA(2) {-height 15 -radix decimal} /testbench_mips_processor/uut/Data_Mem_Ports/DATA(1) {-height 15 -radix decimal} /testbench_mips_processor/uut/Data_Mem_Ports/DATA(0) {-height 15 -radix decimal}} sim:/testbench_mips_processor/uut/Data_Mem_Ports/DATA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5406178 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 348
configure wave -valuecolwidth 196
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
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {21 us}
