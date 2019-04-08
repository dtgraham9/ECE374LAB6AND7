transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/trin.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/regN.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/mux2to1.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/fulladd.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/dec2to4.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/components.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/reg1.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/alu.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/ripple_carry.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/register_file.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/mux4to1.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/instruction_memory.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/instruction_decode.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/dec4to16.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/add_isa.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/bitwiseOR.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/bitwiseAND.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/data_memory.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/andgate.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Documents/GitHub/ECE374/forwardingUnit.vhd}

