transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/kzarv/OneDrive/School/2022 Spring Semester/CPE 440 Senior Project/MIPS 5-Stage Pipelined Processor Simulation/ALU.vhd}
vcom -93 -work work {C:/Users/kzarv/OneDrive/School/2022 Spring Semester/CPE 440 Senior Project/MIPS 5-Stage Pipelined Processor Simulation/Registers.vhd}
vcom -93 -work work {C:/Users/kzarv/OneDrive/School/2022 Spring Semester/CPE 440 Senior Project/MIPS 5-Stage Pipelined Processor Simulation/Data Memory.vhd}
vcom -93 -work work {C:/Users/kzarv/OneDrive/School/2022 Spring Semester/CPE 440 Senior Project/MIPS 5-Stage Pipelined Processor Simulation/Instruction_Memory.vhd}
vcom -93 -work work {C:/Users/kzarv/OneDrive/School/2022 Spring Semester/CPE 440 Senior Project/MIPS 5-Stage Pipelined Processor Simulation/Control.vhd}
vcom -93 -work work {C:/Users/kzarv/OneDrive/School/2022 Spring Semester/CPE 440 Senior Project/MIPS 5-Stage Pipelined Processor Simulation/ALU_Control.vhd}
vcom -93 -work work {C:/Users/kzarv/OneDrive/School/2022 Spring Semester/CPE 440 Senior Project/MIPS 5-Stage Pipelined Processor Simulation/MIPS_Processor.vhd}

