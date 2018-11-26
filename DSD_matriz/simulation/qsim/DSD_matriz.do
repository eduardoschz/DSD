onerror {quit -f}
vlib work
vlog -work work DSD_matriz.vo
vlog -work work DSD_matriz.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.matrix_vlg_vec_tst
vcd file -direction DSD_matriz.msim.vcd
vcd add -internal matrix_vlg_vec_tst/*
vcd add -internal matrix_vlg_vec_tst/i1/*
add wave /*
run -all
