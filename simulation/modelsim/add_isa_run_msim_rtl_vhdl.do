transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/trin.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/regN.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/mux2to1.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/fulladd.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/dec2to4.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/components.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/reg1.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/alu.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/ripple_carry.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/register_file.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/mux4to1.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/instruction_memory.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/instruction_decode.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/dec4to16.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/add_isa.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/bitwiseOR.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/bitwiseAND.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/data_memory.vhd}
vcom -93 -work work {C:/Users/jeffd/OneDrive/Desktop/Spring19/ECE374/Lab6_7/andgate.vhd}

