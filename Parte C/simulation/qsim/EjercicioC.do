onerror {quit -f}
vlib work
vlog -work work EjercicioC.vo
vlog -work work EjercicioC.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.EjercicioC_vlg_vec_tst
vcd file -direction EjercicioC.msim.vcd
vcd add -internal EjercicioC_vlg_vec_tst/*
vcd add -internal EjercicioC_vlg_vec_tst/i1/*
add wave /*
run -all
