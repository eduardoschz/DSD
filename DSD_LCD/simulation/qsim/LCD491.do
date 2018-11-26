onerror {quit -f}
vlib work
vlog -work work LCD491.vo
vlog -work work LCD491.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lcd_vlg_vec_tst
vcd file -direction LCD491.msim.vcd
vcd add -internal lcd_vlg_vec_tst/*
vcd add -internal lcd_vlg_vec_tst/i1/*
add wave /*
run -all
