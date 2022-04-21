onerror {exit -code 1}
vlib work
vcom -work work MIPS_Processor.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -sdfmax MIPS_Processor_vhd_vec_tst/i1=MIPS_Processor_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.MIPS_Processor_vhd_vec_tst
vcd file -direction MIPS_Processor.msim.vcd
vcd add -internal MIPS_Processor_vhd_vec_tst/*
vcd add -internal MIPS_Processor_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


