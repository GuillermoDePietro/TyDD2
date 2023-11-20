onerror {quit -f}
vlib work
vlog -work work ejercicioA.vo
vlog -work work ejercicioA.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ejercicioA_vlg_vec_tst
vcd file -direction ejercicioA.msim.vcd
vcd add -internal ejercicioA_vlg_vec_tst/*
vcd add -internal ejercicioA_vlg_vec_tst/i1/*
add wave /*
run -all
