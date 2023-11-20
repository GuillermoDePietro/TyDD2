transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Leo/Desktop/Guia\ fpga/Parte\ C {C:/Users/Leo/Desktop/Guia fpga/Parte C/EjercicioC.v}
vcom -93 -work work {C:/Users/Leo/Desktop/Guia fpga/Parte B/D_FF.vhd}
vcom -93 -work work {C:/Users/Leo/Desktop/Guia fpga/Parte C/sumador.vhd}

vcom -93 -work work {C:/Users/Leo/Desktop/Guia fpga/Parte C/tb_ejC.vhd}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  tb_ejC

add wave *
view structure
view signals
run -all
