transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Computer_Organization/course_design {C:/Computer_Organization/course_design/computer.v}
vlog -vlog01compat -work work +incdir+C:/Computer_Organization/course_design {C:/Computer_Organization/course_design/cpu.v}
vlog -vlog01compat -work work +incdir+C:/Computer_Organization/course_design {C:/Computer_Organization/course_design/mif2.v}

vlog -vlog01compat -work work +incdir+C:/Computer_Organization/course_design/simulation/qsim {C:/Computer_Organization/course_design/simulation/qsim/course_design_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  computer_vlg_tst

add wave *
view structure
view signals
run -all
