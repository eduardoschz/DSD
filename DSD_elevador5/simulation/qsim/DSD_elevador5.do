onerror {quit -f}
vlib work
vlog -work work DSD_elevador5.vo
vlog -work work DSD_elevador5.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ES201917EL_vlg_vec_tst
vcd file -direction DSD_elevador5.msim.vcd
vcd add -internal ES201917EL_vlg_vec_tst/*
vcd add -internal ES201917EL_vlg_vec_tst/i1/*
add wave /*
run -all
