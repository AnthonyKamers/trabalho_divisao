transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho_Divisao/BO/mux2para1.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho_Divisao/BO/registrador.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho_Divisao/BO/subtrator.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho_Divisao/BO/somador.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho_Divisao/BO/bo.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho_Divisao/BO/comparador.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho_Divisao/BC/bc.vhd}
vcom -93 -work work {C:/Users/antho/Desktop/Anthony/UFSC/2020.1/SD/Prática/Trabalho_Divisao/divisao.vhd}

