-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/07/2019 19:54:14"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	add_isa IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	current_pc : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END add_isa;

-- Design Ports Information
-- current_pc[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF add_isa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_current_pc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL \current_pc[0]~output_o\ : std_logic;
SIGNAL \current_pc[1]~output_o\ : std_logic;
SIGNAL \current_pc[2]~output_o\ : std_logic;
SIGNAL \current_pc[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pc_mux1|f~0_combout\ : std_logic;
SIGNAL \addpc1|stage2|s~combout\ : std_logic;
SIGNAL \addpc1|stage3|s~combout\ : std_logic;
SIGNAL \addpc1|stage4|s~combout\ : std_logic;
SIGNAL \im1|output[16]~1_combout\ : std_logic;
SIGNAL \im1|stage_dec|s2|y[1]~0_combout\ : std_logic;
SIGNAL \rf1|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \im1|output[0]~0_combout\ : std_logic;
SIGNAL \ID_EX_REGDST37|Q~0_combout\ : std_logic;
SIGNAL \ID_EX_REGDST37|Q~q\ : std_logic;
SIGNAL \im1|output[18]~2_combout\ : std_logic;
SIGNAL \rtrdmux1|f[2]~1_combout\ : std_logic;
SIGNAL \im1|stage_dec|s2|y[2]~1_combout\ : std_logic;
SIGNAL \rtrdmux1|f[0]~0_combout\ : std_logic;
SIGNAL \ID_EX_REGWRITE12|Q~0_combout\ : std_logic;
SIGNAL \ID_EX_REGWRITE12|Q~q\ : std_logic;
SIGNAL \EX_MEM_REGWRITE16|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM_REGWRITE16|Q~q\ : std_logic;
SIGNAL \MEM_WB_REGWRITE27|Q~0_combout\ : std_logic;
SIGNAL \MEM_WB_REGWRITE27|Q~q\ : std_logic;
SIGNAL \rf1|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf1|m3|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m2|stage3|f~1_combout\ : std_logic;
SIGNAL \rf1|r14|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m14|stage3|f~1_combout\ : std_logic;
SIGNAL \rf1|value1[0]~0_combout\ : std_logic;
SIGNAL \rf1|m15|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|value1[0]~1_combout\ : std_logic;
SIGNAL \rf1|r13|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m13|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m13|stage3|f~1_combout\ : std_logic;
SIGNAL \rf1|r1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf1|m1|stage3|f[0]~2_combout\ : std_logic;
SIGNAL \rf1|r12|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m12|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf1|value1[0]~2_combout\ : std_logic;
SIGNAL \rf1|value1[0]~3_combout\ : std_logic;
SIGNAL \rf1|value1[0]~4_combout\ : std_logic;
SIGNAL \rf1|r11|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m11|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|r10|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m10|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|value2[0]~2_combout\ : std_logic;
SIGNAL \rf1|value2[0]~3_combout\ : std_logic;
SIGNAL \rf1|m6|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|value2[0]~0_combout\ : std_logic;
SIGNAL \rf1|r7|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|value2[0]~1_combout\ : std_logic;
SIGNAL \rf1|value2[0]~4_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A~6_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A~7_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_B[1]~0_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_B[1]~1_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A[0]~2_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A~3_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_B[0]~2_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_B[0]~3_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[0]~2_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[0]~3_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A[0]~12_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A~8_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A~9_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A[0]~4_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A[0]~5_combout\ : std_logic;
SIGNAL \aforwardingmux|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A[1]~10_combout\ : std_logic;
SIGNAL \aforwardingmux|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage1|s~0_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf1|r13|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[1]~7_combout\ : std_logic;
SIGNAL \rf1|value1[1]~8_combout\ : std_logic;
SIGNAL \rf1|r15|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|m2|stage3|f[1]~2_combout\ : std_logic;
SIGNAL \rf1|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|r14|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[1]~5_combout\ : std_logic;
SIGNAL \rf1|value1[1]~6_combout\ : std_logic;
SIGNAL \rf1|value1[1]~9_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_A[0]~11_combout\ : std_logic;
SIGNAL \aforwardingmux|stage3|f~3_combout\ : std_logic;
SIGNAL \rf1|r7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value2[1]~5_combout\ : std_logic;
SIGNAL \rf1|value2[1]~6_combout\ : std_logic;
SIGNAL \rf1|r10|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value2[1]~7_combout\ : std_logic;
SIGNAL \rf1|r11|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value2[1]~8_combout\ : std_logic;
SIGNAL \rf1|value2[1]~9_combout\ : std_logic;
SIGNAL \forwardingunit1|FORWARDING_B[1]~4_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[1]~4_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[1]~5_combout\ : std_logic;
SIGNAL \aforwardingmux|stage3|f~2_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage2|s~0_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf1|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|r14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[2]~10_combout\ : std_logic;
SIGNAL \rf1|value1[2]~11_combout\ : std_logic;
SIGNAL \rf1|r1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|r13|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|r12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[2]~12_combout\ : std_logic;
SIGNAL \rf1|value1[2]~13_combout\ : std_logic;
SIGNAL \rf1|value1[2]~14_combout\ : std_logic;
SIGNAL \aforwardingmux|stage3|f~5_combout\ : std_logic;
SIGNAL \aforwardingmux|stage3|f~4_combout\ : std_logic;
SIGNAL \rf1|m6|stage3|f[2]~1_combout\ : std_logic;
SIGNAL \rf1|value2[2]~10_combout\ : std_logic;
SIGNAL \rf1|r7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|value2[2]~11_combout\ : std_logic;
SIGNAL \rf1|r10|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|value2[2]~12_combout\ : std_logic;
SIGNAL \rf1|value2[2]~13_combout\ : std_logic;
SIGNAL \rf1|value2[2]~14_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[2]~6_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[2]~7_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage3|s~combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[3]~9_combout\ : std_logic;
SIGNAL \aforwardingmux|stage3|f[3]~6_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf1|r12|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[3]~17_combout\ : std_logic;
SIGNAL \rf1|value1[3]~18_combout\ : std_logic;
SIGNAL \rf1|r15|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|r3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|r14|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[3]~15_combout\ : std_logic;
SIGNAL \rf1|value1[3]~16_combout\ : std_logic;
SIGNAL \rf1|value1[3]~19_combout\ : std_logic;
SIGNAL \aforwardingmux|stage3|f[3]~7_combout\ : std_logic;
SIGNAL \rf1|r7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|value2[3]~15_combout\ : std_logic;
SIGNAL \rf1|value2[3]~16_combout\ : std_logic;
SIGNAL \rf1|r11|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|r10|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|value2[3]~17_combout\ : std_logic;
SIGNAL \rf1|value2[3]~18_combout\ : std_logic;
SIGNAL \rf1|value2[3]~19_combout\ : std_logic;
SIGNAL \bforwardingmux|stage3|f[3]~8_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage4|s~0_combout\ : std_logic;
SIGNAL \pc1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB_SUM30|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_SUM19|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_SRC14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_RD9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_RD18|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB_RD31|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_SRC25|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_RS34|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_RT33|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IF_ID_INSTR1|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rtrdmux1|f\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r11|Q\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
current_pc <= ww_current_pc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\current_pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc1|Q\(0),
	devoe => ww_devoe,
	o => \current_pc[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\current_pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc1|Q\(1),
	devoe => ww_devoe,
	o => \current_pc[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\current_pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc1|Q\(2),
	devoe => ww_devoe,
	o => \current_pc[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\current_pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc1|Q\(3),
	devoe => ww_devoe,
	o => \current_pc[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB_SUM30|Q\(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB_SUM30|Q\(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB_SUM30|Q\(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB_SUM30|Q\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X111_Y40_N28
\pc_mux1|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux1|f~0_combout\ = (!\pc1|Q\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc1|Q\(0),
	datad => \reset~input_o\,
	combout => \pc_mux1|f~0_combout\);

-- Location: FF_X111_Y40_N29
\pc1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|Q\(0));

-- Location: LCCOMB_X109_Y40_N4
\addpc1|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc1|stage2|s~combout\ = \pc1|Q\(0) $ (\pc1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc1|Q\(0),
	datad => \pc1|Q\(1),
	combout => \addpc1|stage2|s~combout\);

-- Location: FF_X110_Y40_N25
\pc1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \addpc1|stage2|s~combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|Q\(1));

-- Location: LCCOMB_X109_Y40_N6
\addpc1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc1|stage3|s~combout\ = \pc1|Q\(2) $ (((\pc1|Q\(0) & \pc1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(0),
	datac => \pc1|Q\(2),
	datad => \pc1|Q\(1),
	combout => \addpc1|stage3|s~combout\);

-- Location: FF_X110_Y40_N31
\pc1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \addpc1|stage3|s~combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|Q\(2));

-- Location: LCCOMB_X109_Y40_N16
\addpc1|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc1|stage4|s~combout\ = \pc1|Q\(3) $ (((\pc1|Q\(2) & (\pc1|Q\(0) & \pc1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(2),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(0),
	datad => \pc1|Q\(1),
	combout => \addpc1|stage4|s~combout\);

-- Location: FF_X110_Y40_N29
\pc1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \addpc1|stage4|s~combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|Q\(3));

-- Location: LCCOMB_X109_Y40_N20
\im1|output[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[16]~1_combout\ = (\pc1|Q\(3)) # ((\pc1|Q\(2)) # (!\pc1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(2),
	datad => \pc1|Q\(1),
	combout => \im1|output[16]~1_combout\);

-- Location: FF_X113_Y40_N7
\IF_ID_INSTR1|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \im1|output[16]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(16));

-- Location: LCCOMB_X109_Y40_N14
\im1|stage_dec|s2|y[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|stage_dec|s2|y[1]~0_combout\ = (\pc1|Q\(2)) # ((\pc1|Q\(3)) # ((\pc1|Q\(1)) # (!\pc1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(2),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(0),
	datad => \pc1|Q\(1),
	combout => \im1|stage_dec|s2|y[1]~0_combout\);

-- Location: FF_X111_Y40_N3
\IF_ID_INSTR1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \im1|stage_dec|s2|y[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(13));

-- Location: LCCOMB_X111_Y39_N26
\rf1|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m1|stage3|f[0]~0_combout\ = (\reset~input_o\) # (\MEM_WB_SUM30|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_SUM30|Q\(0),
	combout => \rf1|m1|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X109_Y40_N22
\im1|output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[0]~0_combout\ = (\pc1|Q\(2)) # ((\pc1|Q\(3)) # ((!\pc1|Q\(0) & !\pc1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(2),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(0),
	datad => \pc1|Q\(1),
	combout => \im1|output[0]~0_combout\);

-- Location: FF_X111_Y40_N5
\IF_ID_INSTR1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \im1|output[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(0));

-- Location: FF_X112_Y40_N23
\ID_EX_RD9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_INSTR1|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RD9|Q\(1));

-- Location: FF_X112_Y40_N27
\EX_MEM_RD18|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX_RD9|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RD18|Q\(3));

-- Location: FF_X112_Y40_N25
\MEM_WB_RD31|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_RD18|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RD31|Q\(3));

-- Location: LCCOMB_X113_Y40_N20
\ID_EX_REGDST37|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_REGDST37|Q~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \ID_EX_REGDST37|Q~0_combout\);

-- Location: FF_X113_Y40_N21
\ID_EX_REGDST37|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_REGDST37|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_REGDST37|Q~q\);

-- Location: FF_X112_Y40_N7
\ID_EX_RS34|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_INSTR1|Q\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RS34|Q\(0));

-- Location: LCCOMB_X109_Y40_N10
\im1|output[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[18]~2_combout\ = (\pc1|Q\(2)) # ((\pc1|Q\(3)) # (\pc1|Q\(0) $ (!\pc1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(2),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(0),
	datad => \pc1|Q\(1),
	combout => \im1|output[18]~2_combout\);

-- Location: FF_X113_Y40_N9
\IF_ID_INSTR1|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \im1|output[18]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(18));

-- Location: FF_X112_Y40_N11
\ID_EX_RT33|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_INSTR1|Q\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RT33|Q\(2));

-- Location: LCCOMB_X112_Y40_N18
\rtrdmux1|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtrdmux1|f[2]~1_combout\ = (\ID_EX_REGDST37|Q~q\ & (\ID_EX_RS34|Q\(0))) # (!\ID_EX_REGDST37|Q~q\ & ((\ID_EX_RT33|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_REGDST37|Q~q\,
	datac => \ID_EX_RS34|Q\(0),
	datad => \ID_EX_RT33|Q\(2),
	combout => \rtrdmux1|f[2]~1_combout\);

-- Location: FF_X112_Y40_N19
\EX_MEM_RD18|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rtrdmux1|f[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RD18|Q\(2));

-- Location: FF_X111_Y40_N15
\MEM_WB_RD31|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_RD18|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RD31|Q\(2));

-- Location: FF_X112_Y40_N21
\ID_EX_RS34|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_INSTR1|Q\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RS34|Q\(1));

-- Location: LCCOMB_X109_Y40_N24
\im1|stage_dec|s2|y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|stage_dec|s2|y[2]~1_combout\ = (\pc1|Q\(2)) # ((\pc1|Q\(3)) # ((\pc1|Q\(0)) # (!\pc1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(2),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(0),
	datad => \pc1|Q\(1),
	combout => \im1|stage_dec|s2|y[2]~1_combout\);

-- Location: FF_X109_Y40_N25
\IF_ID_INSTR1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im1|stage_dec|s2|y[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(11));

-- Location: FF_X112_Y40_N29
\ID_EX_RD9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID_INSTR1|Q\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RD9|Q\(0));

-- Location: LCCOMB_X112_Y40_N30
\rtrdmux1|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtrdmux1|f[0]~0_combout\ = (\ID_EX_REGDST37|Q~q\ & ((\ID_EX_RD9|Q\(0)))) # (!\ID_EX_REGDST37|Q~q\ & (\ID_EX_RS34|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_RS34|Q\(1),
	datac => \ID_EX_REGDST37|Q~q\,
	datad => \ID_EX_RD9|Q\(0),
	combout => \rtrdmux1|f[0]~0_combout\);

-- Location: FF_X112_Y40_N31
\EX_MEM_RD18|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rtrdmux1|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RD18|Q\(0));

-- Location: FF_X112_Y40_N1
\MEM_WB_RD31|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_RD18|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RD31|Q\(0));

-- Location: LCCOMB_X113_Y40_N28
\ID_EX_REGWRITE12|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_REGWRITE12|Q~0_combout\ = (!\IF_ID_INSTR1|Q\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_INSTR1|Q\(0),
	datad => \reset~input_o\,
	combout => \ID_EX_REGWRITE12|Q~0_combout\);

-- Location: FF_X113_Y40_N29
\ID_EX_REGWRITE12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_REGWRITE12|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_REGWRITE12|Q~q\);

-- Location: LCCOMB_X113_Y40_N10
\EX_MEM_REGWRITE16|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM_REGWRITE16|Q~0_combout\ = (!\reset~input_o\ & \ID_EX_REGWRITE12|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \ID_EX_REGWRITE12|Q~q\,
	combout => \EX_MEM_REGWRITE16|Q~0_combout\);

-- Location: FF_X112_Y40_N15
\EX_MEM_REGWRITE16|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_REGWRITE16|Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_REGWRITE16|Q~q\);

-- Location: LCCOMB_X113_Y40_N8
\MEM_WB_REGWRITE27|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_REGWRITE27|Q~0_combout\ = (!\reset~input_o\ & \EX_MEM_REGWRITE16|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \EX_MEM_REGWRITE16|Q~q\,
	combout => \MEM_WB_REGWRITE27|Q~0_combout\);

-- Location: FF_X112_Y40_N5
\MEM_WB_REGWRITE27|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MEM_WB_REGWRITE27|Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_REGWRITE27|Q~q\);

-- Location: LCCOMB_X112_Y40_N8
\rtrdmux1|f[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtrdmux1|f\(1) = (\ID_EX_RD9|Q\(1)) # (!\ID_EX_REGDST37|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_REGDST37|Q~q\,
	datac => \ID_EX_RD9|Q\(1),
	combout => \rtrdmux1|f\(1));

-- Location: FF_X112_Y40_N9
\EX_MEM_RD18|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rtrdmux1|f\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RD18|Q\(1));

-- Location: FF_X112_Y40_N17
\MEM_WB_RD31|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_RD18|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RD31|Q\(1));

-- Location: LCCOMB_X112_Y40_N20
\rf1|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m3|stage3|f[0]~0_combout\ = (\MEM_WB_RD31|Q\(0) & (\MEM_WB_REGWRITE27|Q~q\ & \MEM_WB_RD31|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(0),
	datab => \MEM_WB_REGWRITE27|Q~q\,
	datad => \MEM_WB_RD31|Q\(1),
	combout => \rf1|m3|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y40_N12
\rf1|m3|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m3|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(3) & (!\MEM_WB_RD31|Q\(2) & \rf1|m3|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(3),
	datab => \reset~input_o\,
	datac => \MEM_WB_RD31|Q\(2),
	datad => \rf1|m3|stage3|f[0]~0_combout\,
	combout => \rf1|m3|stage3|f[0]~1_combout\);

-- Location: FF_X114_Y40_N9
\rf1|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf1|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r3|Q\(0));

-- Location: LCCOMB_X111_Y39_N28
\rf1|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~0_combout\ = (!\reset~input_o\ & \MEM_WB_SUM30|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_SUM30|Q\(0),
	combout => \rf1|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y40_N26
\rf1|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m2|stage3|f~0_combout\ = (\MEM_WB_RD31|Q\(1) & (!\MEM_WB_RD31|Q\(2) & (\MEM_WB_REGWRITE27|Q~q\ & !\MEM_WB_RD31|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(1),
	datab => \MEM_WB_RD31|Q\(2),
	datac => \MEM_WB_REGWRITE27|Q~q\,
	datad => \MEM_WB_RD31|Q\(0),
	combout => \rf1|m2|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y40_N22
\rf1|m2|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m2|stage3|f~1_combout\ = (\reset~input_o\) # ((\rf1|m2|stage3|f~0_combout\ & !\MEM_WB_RD31|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|m2|stage3|f~0_combout\,
	datab => \MEM_WB_RD31|Q\(3),
	datad => \reset~input_o\,
	combout => \rf1|m2|stage3|f~1_combout\);

-- Location: FF_X113_Y40_N31
\rf1|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf1|m2|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r2|Q\(0));

-- Location: LCCOMB_X112_Y39_N28
\rf1|r14|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r14|Q[0]~feeder_combout\ = \rf1|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~0_combout\,
	combout => \rf1|r14|Q[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y39_N18
\rf1|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m14|stage3|f~0_combout\ = (!\MEM_WB_RD31|Q\(0) & (\MEM_WB_RD31|Q\(1) & (\MEM_WB_RD31|Q\(2) & \MEM_WB_REGWRITE27|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(0),
	datab => \MEM_WB_RD31|Q\(1),
	datac => \MEM_WB_RD31|Q\(2),
	datad => \MEM_WB_REGWRITE27|Q~q\,
	combout => \rf1|m14|stage3|f~0_combout\);

-- Location: LCCOMB_X112_Y39_N4
\rf1|m14|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m14|stage3|f~1_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(3) & \rf1|m14|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_RD31|Q\(3),
	datac => \reset~input_o\,
	datad => \rf1|m14|stage3|f~0_combout\,
	combout => \rf1|m14|stage3|f~1_combout\);

-- Location: FF_X112_Y39_N29
\rf1|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r14|Q[0]~feeder_combout\,
	ena => \rf1|m14|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r14|Q\(0));

-- Location: LCCOMB_X113_Y40_N30
\rf1|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~0_combout\ = (\IF_ID_INSTR1|Q\(13) & (\IF_ID_INSTR1|Q\(0))) # (!\IF_ID_INSTR1|Q\(13) & ((\IF_ID_INSTR1|Q\(0) & ((\rf1|r14|Q\(0)))) # (!\IF_ID_INSTR1|Q\(0) & (\rf1|r2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \IF_ID_INSTR1|Q\(0),
	datac => \rf1|r2|Q\(0),
	datad => \rf1|r14|Q\(0),
	combout => \rf1|value1[0]~0_combout\);

-- Location: LCCOMB_X112_Y39_N10
\rf1|m15|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m15|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(2) & (\MEM_WB_RD31|Q\(3) & \rf1|m3|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(2),
	datab => \MEM_WB_RD31|Q\(3),
	datac => \reset~input_o\,
	datad => \rf1|m3|stage3|f[0]~0_combout\,
	combout => \rf1|m15|stage3|f~0_combout\);

-- Location: FF_X112_Y40_N13
\rf1|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf1|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r15|Q\(0));

-- Location: LCCOMB_X113_Y40_N4
\rf1|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~1_combout\ = (\IF_ID_INSTR1|Q\(13) & ((\rf1|value1[0]~0_combout\ & ((\rf1|r15|Q\(0)))) # (!\rf1|value1[0]~0_combout\ & (\rf1|r3|Q\(0))))) # (!\IF_ID_INSTR1|Q\(13) & (((\rf1|value1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r3|Q\(0),
	datac => \rf1|value1[0]~0_combout\,
	datad => \rf1|r15|Q\(0),
	combout => \rf1|value1[0]~1_combout\);

-- Location: LCCOMB_X111_Y39_N22
\rf1|r13|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r13|Q[0]~feeder_combout\ = \rf1|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~0_combout\,
	combout => \rf1|r13|Q[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y39_N30
\rf1|m13|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m13|stage3|f~0_combout\ = (\MEM_WB_RD31|Q\(2) & (!\MEM_WB_RD31|Q\(1) & (\MEM_WB_REGWRITE27|Q~q\ & \MEM_WB_RD31|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(2),
	datab => \MEM_WB_RD31|Q\(1),
	datac => \MEM_WB_REGWRITE27|Q~q\,
	datad => \MEM_WB_RD31|Q\(3),
	combout => \rf1|m13|stage3|f~0_combout\);

-- Location: LCCOMB_X111_Y39_N20
\rf1|m13|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m13|stage3|f~1_combout\ = (\reset~input_o\) # ((\rf1|m13|stage3|f~0_combout\ & \MEM_WB_RD31|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \rf1|m13|stage3|f~0_combout\,
	datad => \MEM_WB_RD31|Q\(0),
	combout => \rf1|m13|stage3|f~1_combout\);

-- Location: FF_X111_Y39_N23
\rf1|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r13|Q[0]~feeder_combout\,
	ena => \rf1|m13|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r13|Q\(0));

-- Location: LCCOMB_X111_Y39_N12
\rf1|r1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r1|Q[0]~feeder_combout\ = \rf1|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m1|stage3|f[0]~0_combout\,
	combout => \rf1|r1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X111_Y39_N4
\rf1|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m1|stage3|f[0]~1_combout\ = (!\MEM_WB_RD31|Q\(2) & (!\MEM_WB_RD31|Q\(1) & (\MEM_WB_REGWRITE27|Q~q\ & !\MEM_WB_RD31|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(2),
	datab => \MEM_WB_RD31|Q\(1),
	datac => \MEM_WB_REGWRITE27|Q~q\,
	datad => \MEM_WB_RD31|Q\(3),
	combout => \rf1|m1|stage3|f[0]~1_combout\);

-- Location: LCCOMB_X111_Y39_N8
\rf1|m1|stage3|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m1|stage3|f[0]~2_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(0) & \rf1|m1|stage3|f[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(0),
	datad => \rf1|m1|stage3|f[0]~1_combout\,
	combout => \rf1|m1|stage3|f[0]~2_combout\);

-- Location: FF_X111_Y39_N13
\rf1|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r1|Q[0]~feeder_combout\,
	ena => \rf1|m1|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r1|Q\(0));

-- Location: LCCOMB_X110_Y39_N28
\rf1|r12|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r12|Q[0]~feeder_combout\ = \rf1|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~0_combout\,
	combout => \rf1|r12|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y39_N24
\rf1|m12|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m12|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(0) & \rf1|m13|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \MEM_WB_RD31|Q\(0),
	datad => \rf1|m13|stage3|f~0_combout\,
	combout => \rf1|m12|stage3|f~0_combout\);

-- Location: FF_X110_Y39_N29
\rf1|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r12|Q[0]~feeder_combout\,
	ena => \rf1|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r12|Q\(0));

-- Location: LCCOMB_X110_Y39_N6
\rf1|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(0) & \rf1|m1|stage3|f[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \MEM_WB_RD31|Q\(0),
	datad => \rf1|m1|stage3|f[0]~1_combout\,
	combout => \rf1|m0|stage3|f~1_combout\);

-- Location: FF_X110_Y39_N3
\rf1|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf1|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r0|Q\(0));

-- Location: LCCOMB_X110_Y39_N2
\rf1|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~2_combout\ = (\IF_ID_INSTR1|Q\(13) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(13) & ((\IF_ID_INSTR1|Q\(0) & (\rf1|r12|Q\(0))) # (!\IF_ID_INSTR1|Q\(0) & ((\rf1|r0|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r12|Q\(0),
	datac => \rf1|r0|Q\(0),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value1[0]~2_combout\);

-- Location: LCCOMB_X110_Y39_N0
\rf1|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~3_combout\ = (\IF_ID_INSTR1|Q\(13) & ((\rf1|value1[0]~2_combout\ & (\rf1|r13|Q\(0))) # (!\rf1|value1[0]~2_combout\ & ((\rf1|r1|Q\(0)))))) # (!\IF_ID_INSTR1|Q\(13) & (((\rf1|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r13|Q\(0),
	datac => \rf1|r1|Q\(0),
	datad => \rf1|value1[0]~2_combout\,
	combout => \rf1|value1[0]~3_combout\);

-- Location: LCCOMB_X113_Y40_N16
\rf1|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~4_combout\ = (\IF_ID_INSTR1|Q\(16) & (\rf1|value1[0]~1_combout\)) # (!\IF_ID_INSTR1|Q\(16) & ((\rf1|value1[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_INSTR1|Q\(16),
	datac => \rf1|value1[0]~1_combout\,
	datad => \rf1|value1[0]~3_combout\,
	combout => \rf1|value1[0]~4_combout\);

-- Location: FF_X113_Y40_N17
\ID_EX_SRC14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value1[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC14|Q\(0));

-- Location: LCCOMB_X114_Y40_N10
\rf1|r11|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r11|Q[0]~feeder_combout\ = \rf1|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~0_combout\,
	combout => \rf1|r11|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y40_N14
\rf1|m11|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m11|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(3) & (!\MEM_WB_RD31|Q\(2) & \rf1|m3|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(3),
	datab => \reset~input_o\,
	datac => \MEM_WB_RD31|Q\(2),
	datad => \rf1|m3|stage3|f[0]~0_combout\,
	combout => \rf1|m11|stage3|f~0_combout\);

-- Location: FF_X114_Y40_N11
\rf1|r11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r11|Q[0]~feeder_combout\,
	ena => \rf1|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r11|Q\(0));

-- Location: LCCOMB_X114_Y39_N6
\rf1|r10|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r10|Q[0]~feeder_combout\ = \rf1|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~0_combout\,
	combout => \rf1|r10|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y39_N10
\rf1|m10|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m10|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(3) & \rf1|m2|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(3),
	datad => \rf1|m2|stage3|f~0_combout\,
	combout => \rf1|m10|stage3|f~0_combout\);

-- Location: FF_X114_Y39_N7
\rf1|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r10|Q[0]~feeder_combout\,
	ena => \rf1|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r10|Q\(0));

-- Location: LCCOMB_X113_Y39_N8
\rf1|value2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[0]~2_combout\ = (\IF_ID_INSTR1|Q\(16) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(16) & ((\IF_ID_INSTR1|Q\(0) & ((\rf1|r10|Q\(0)))) # (!\IF_ID_INSTR1|Q\(0) & (\rf1|r2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r2|Q\(0),
	datab => \IF_ID_INSTR1|Q\(16),
	datac => \IF_ID_INSTR1|Q\(0),
	datad => \rf1|r10|Q\(0),
	combout => \rf1|value2[0]~2_combout\);

-- Location: LCCOMB_X114_Y40_N8
\rf1|value2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[0]~3_combout\ = (\IF_ID_INSTR1|Q\(16) & ((\rf1|value2[0]~2_combout\ & (\rf1|r11|Q\(0))) # (!\rf1|value2[0]~2_combout\ & ((\rf1|r3|Q\(0)))))) # (!\IF_ID_INSTR1|Q\(16) & (((\rf1|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r11|Q\(0),
	datab => \IF_ID_INSTR1|Q\(16),
	datac => \rf1|r3|Q\(0),
	datad => \rf1|value2[0]~2_combout\,
	combout => \rf1|value2[0]~3_combout\);

-- Location: LCCOMB_X112_Y39_N12
\rf1|m6|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m6|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(3) & \rf1|m14|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_RD31|Q\(3),
	datac => \reset~input_o\,
	datad => \rf1|m14|stage3|f~0_combout\,
	combout => \rf1|m6|stage3|f~0_combout\);

-- Location: FF_X112_Y39_N15
\rf1|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf1|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r6|Q\(0));

-- Location: LCCOMB_X112_Y39_N14
\rf1|value2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[0]~0_combout\ = (\IF_ID_INSTR1|Q\(16) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(16) & ((\IF_ID_INSTR1|Q\(0) & (\rf1|r14|Q\(0))) # (!\IF_ID_INSTR1|Q\(0) & ((\rf1|r6|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(16),
	datab => \rf1|r14|Q\(0),
	datac => \rf1|r6|Q\(0),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value2[0]~0_combout\);

-- Location: LCCOMB_X114_Y39_N0
\rf1|r7|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r7|Q[0]~feeder_combout\ = \rf1|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~0_combout\,
	combout => \rf1|r7|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y39_N28
\rf1|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m7|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(2) & (!\MEM_WB_RD31|Q\(3) & \rf1|m3|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(2),
	datac => \MEM_WB_RD31|Q\(3),
	datad => \rf1|m3|stage3|f[0]~0_combout\,
	combout => \rf1|m7|stage3|f~0_combout\);

-- Location: FF_X114_Y39_N1
\rf1|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r7|Q[0]~feeder_combout\,
	ena => \rf1|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r7|Q\(0));

-- Location: LCCOMB_X113_Y40_N6
\rf1|value2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[0]~1_combout\ = (\rf1|value2[0]~0_combout\ & (((\rf1|r15|Q\(0)) # (!\IF_ID_INSTR1|Q\(16))))) # (!\rf1|value2[0]~0_combout\ & (\rf1|r7|Q\(0) & (\IF_ID_INSTR1|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|value2[0]~0_combout\,
	datab => \rf1|r7|Q\(0),
	datac => \IF_ID_INSTR1|Q\(16),
	datad => \rf1|r15|Q\(0),
	combout => \rf1|value2[0]~1_combout\);

-- Location: LCCOMB_X113_Y40_N2
\rf1|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[0]~4_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value2[0]~1_combout\))) # (!\IF_ID_INSTR1|Q\(18) & (\rf1|value2[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_INSTR1|Q\(18),
	datac => \rf1|value2[0]~3_combout\,
	datad => \rf1|value2[0]~1_combout\,
	combout => \rf1|value2[0]~4_combout\);

-- Location: FF_X113_Y40_N3
\ID_EX_SRC25|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC25|Q\(0));

-- Location: LCCOMB_X112_Y40_N12
\forwardingunit1|FORWARDING_A~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A~6_combout\ = (\EX_MEM_RD18|Q\(0)) # (\EX_MEM_RD18|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_RD18|Q\(0),
	datad => \EX_MEM_RD18|Q\(2),
	combout => \forwardingunit1|FORWARDING_A~6_combout\);

-- Location: LCCOMB_X112_Y40_N24
\forwardingunit1|FORWARDING_A~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A~7_combout\ = (\EX_MEM_REGWRITE16|Q~q\ & ((\EX_MEM_RD18|Q\(1)) # ((\EX_MEM_RD18|Q\(3)) # (\forwardingunit1|FORWARDING_A~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_RD18|Q\(1),
	datab => \EX_MEM_REGWRITE16|Q~q\,
	datac => \EX_MEM_RD18|Q\(3),
	datad => \forwardingunit1|FORWARDING_A~6_combout\,
	combout => \forwardingunit1|FORWARDING_A~7_combout\);

-- Location: LCCOMB_X112_Y40_N22
\forwardingunit1|FORWARDING_B[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_B[1]~0_combout\ = (\EX_MEM_RD18|Q\(0) & (\ID_EX_RS34|Q\(1) & (\ID_EX_RD9|Q\(1) $ (!\EX_MEM_RD18|Q\(3))))) # (!\EX_MEM_RD18|Q\(0) & (!\ID_EX_RS34|Q\(1) & (\ID_EX_RD9|Q\(1) $ (!\EX_MEM_RD18|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_RD18|Q\(0),
	datab => \ID_EX_RS34|Q\(1),
	datac => \ID_EX_RD9|Q\(1),
	datad => \EX_MEM_RD18|Q\(3),
	combout => \forwardingunit1|FORWARDING_B[1]~0_combout\);

-- Location: LCCOMB_X112_Y40_N10
\forwardingunit1|FORWARDING_B[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_B[1]~1_combout\ = (\EX_MEM_RD18|Q\(1) & (\forwardingunit1|FORWARDING_B[1]~0_combout\ & (\EX_MEM_RD18|Q\(2) $ (!\ID_EX_RT33|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_RD18|Q\(1),
	datab => \EX_MEM_RD18|Q\(2),
	datac => \ID_EX_RT33|Q\(2),
	datad => \forwardingunit1|FORWARDING_B[1]~0_combout\,
	combout => \forwardingunit1|FORWARDING_B[1]~1_combout\);

-- Location: LCCOMB_X112_Y40_N26
\forwardingunit1|FORWARDING_A[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A[0]~2_combout\ = (\MEM_WB_REGWRITE27|Q~q\ & (\ID_EX_RD9|Q\(1) $ (!\MEM_WB_RD31|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_REGWRITE27|Q~q\,
	datac => \ID_EX_RD9|Q\(1),
	datad => \MEM_WB_RD31|Q\(3),
	combout => \forwardingunit1|FORWARDING_A[0]~2_combout\);

-- Location: LCCOMB_X112_Y40_N0
\forwardingunit1|FORWARDING_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A~3_combout\ = (!\MEM_WB_RD31|Q\(1) & (!\MEM_WB_RD31|Q\(3) & (!\MEM_WB_RD31|Q\(0) & !\MEM_WB_RD31|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(1),
	datab => \MEM_WB_RD31|Q\(3),
	datac => \MEM_WB_RD31|Q\(0),
	datad => \MEM_WB_RD31|Q\(2),
	combout => \forwardingunit1|FORWARDING_A~3_combout\);

-- Location: LCCOMB_X112_Y40_N2
\forwardingunit1|FORWARDING_B[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_B[0]~2_combout\ = (\ID_EX_RT33|Q\(2) & (\MEM_WB_RD31|Q\(2) & (\ID_EX_RS34|Q\(1) $ (!\MEM_WB_RD31|Q\(0))))) # (!\ID_EX_RT33|Q\(2) & (!\MEM_WB_RD31|Q\(2) & (\ID_EX_RS34|Q\(1) $ (!\MEM_WB_RD31|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_RT33|Q\(2),
	datab => \ID_EX_RS34|Q\(1),
	datac => \MEM_WB_RD31|Q\(0),
	datad => \MEM_WB_RD31|Q\(2),
	combout => \forwardingunit1|FORWARDING_B[0]~2_combout\);

-- Location: LCCOMB_X112_Y40_N16
\forwardingunit1|FORWARDING_B[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_B[0]~3_combout\ = (\forwardingunit1|FORWARDING_A[0]~2_combout\ & (!\forwardingunit1|FORWARDING_A~3_combout\ & (\MEM_WB_RD31|Q\(1) & \forwardingunit1|FORWARDING_B[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forwardingunit1|FORWARDING_A[0]~2_combout\,
	datab => \forwardingunit1|FORWARDING_A~3_combout\,
	datac => \MEM_WB_RD31|Q\(1),
	datad => \forwardingunit1|FORWARDING_B[0]~2_combout\,
	combout => \forwardingunit1|FORWARDING_B[0]~3_combout\);

-- Location: LCCOMB_X112_Y40_N14
\bforwardingmux|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[0]~0_combout\ = (\forwardingunit1|FORWARDING_A~7_combout\ & (\forwardingunit1|FORWARDING_B[1]~1_combout\)) # (!\forwardingunit1|FORWARDING_A~7_combout\ & ((\forwardingunit1|FORWARDING_B[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forwardingunit1|FORWARDING_A~7_combout\,
	datab => \forwardingunit1|FORWARDING_B[1]~1_combout\,
	datad => \forwardingunit1|FORWARDING_B[0]~3_combout\,
	combout => \bforwardingmux|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X111_Y40_N22
\bforwardingmux|stage3|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[0]~2_combout\ = (\MEM_WB_SUM30|Q\(0) & (((\forwardingunit1|FORWARDING_B[0]~3_combout\) # (!\forwardingunit1|FORWARDING_B[1]~1_combout\)) # (!\forwardingunit1|FORWARDING_A~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forwardingunit1|FORWARDING_A~7_combout\,
	datab => \forwardingunit1|FORWARDING_B[1]~1_combout\,
	datac => \MEM_WB_SUM30|Q\(0),
	datad => \forwardingunit1|FORWARDING_B[0]~3_combout\,
	combout => \bforwardingmux|stage3|f[0]~2_combout\);

-- Location: LCCOMB_X111_Y40_N0
\bforwardingmux|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[0]~1_combout\ = (\EX_MEM_SUM19|Q\(0) & (\forwardingunit1|FORWARDING_B[1]~1_combout\ & (\forwardingunit1|FORWARDING_A~7_combout\ & !\forwardingunit1|FORWARDING_B[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_SUM19|Q\(0),
	datab => \forwardingunit1|FORWARDING_B[1]~1_combout\,
	datac => \forwardingunit1|FORWARDING_A~7_combout\,
	datad => \forwardingunit1|FORWARDING_B[0]~3_combout\,
	combout => \bforwardingmux|stage3|f[0]~1_combout\);

-- Location: LCCOMB_X111_Y40_N20
\bforwardingmux|stage3|f[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[0]~3_combout\ = (\bforwardingmux|stage3|f[0]~0_combout\ & (((\bforwardingmux|stage3|f[0]~2_combout\) # (\bforwardingmux|stage3|f[0]~1_combout\)))) # (!\bforwardingmux|stage3|f[0]~0_combout\ & (\ID_EX_SRC25|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC25|Q\(0),
	datab => \bforwardingmux|stage3|f[0]~0_combout\,
	datac => \bforwardingmux|stage3|f[0]~2_combout\,
	datad => \bforwardingmux|stage3|f[0]~1_combout\,
	combout => \bforwardingmux|stage3|f[0]~3_combout\);

-- Location: LCCOMB_X112_Y40_N4
\forwardingunit1|FORWARDING_A[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A[0]~12_combout\ = (\MEM_WB_REGWRITE27|Q~q\ & (!\forwardingunit1|FORWARDING_A~3_combout\ & (\MEM_WB_RD31|Q\(3) $ (!\ID_EX_RD9|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(3),
	datab => \ID_EX_RD9|Q\(1),
	datac => \MEM_WB_REGWRITE27|Q~q\,
	datad => \forwardingunit1|FORWARDING_A~3_combout\,
	combout => \forwardingunit1|FORWARDING_A[0]~12_combout\);

-- Location: LCCOMB_X112_Y40_N6
\forwardingunit1|FORWARDING_A~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A~8_combout\ = (\EX_MEM_RD18|Q\(0) & (\ID_EX_RS34|Q\(0) & (\EX_MEM_RD18|Q\(1) $ (!\ID_EX_RS34|Q\(1))))) # (!\EX_MEM_RD18|Q\(0) & (!\ID_EX_RS34|Q\(0) & (\EX_MEM_RD18|Q\(1) $ (!\ID_EX_RS34|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_RD18|Q\(0),
	datab => \EX_MEM_RD18|Q\(1),
	datac => \ID_EX_RS34|Q\(0),
	datad => \ID_EX_RS34|Q\(1),
	combout => \forwardingunit1|FORWARDING_A~8_combout\);

-- Location: LCCOMB_X111_Y40_N8
\forwardingunit1|FORWARDING_A~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A~9_combout\ = (\forwardingunit1|FORWARDING_A~8_combout\ & ((\EX_MEM_RD18|Q\(2) & (\ID_EX_RD9|Q\(1) & \EX_MEM_RD18|Q\(3))) # (!\EX_MEM_RD18|Q\(2) & (!\ID_EX_RD9|Q\(1) & !\EX_MEM_RD18|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_RD18|Q\(2),
	datab => \ID_EX_RD9|Q\(1),
	datac => \EX_MEM_RD18|Q\(3),
	datad => \forwardingunit1|FORWARDING_A~8_combout\,
	combout => \forwardingunit1|FORWARDING_A~9_combout\);

-- Location: LCCOMB_X111_Y40_N14
\forwardingunit1|FORWARDING_A[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A[0]~4_combout\ = (\ID_EX_RS34|Q\(1) & (\MEM_WB_RD31|Q\(1) & (\MEM_WB_RD31|Q\(2) $ (!\ID_EX_RD9|Q\(1))))) # (!\ID_EX_RS34|Q\(1) & (!\MEM_WB_RD31|Q\(1) & (\MEM_WB_RD31|Q\(2) $ (!\ID_EX_RD9|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_RS34|Q\(1),
	datab => \MEM_WB_RD31|Q\(1),
	datac => \MEM_WB_RD31|Q\(2),
	datad => \ID_EX_RD9|Q\(1),
	combout => \forwardingunit1|FORWARDING_A[0]~4_combout\);

-- Location: LCCOMB_X110_Y40_N22
\forwardingunit1|FORWARDING_A[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A[0]~5_combout\ = (\forwardingunit1|FORWARDING_A[0]~4_combout\ & (\ID_EX_RS34|Q\(0) $ (!\MEM_WB_RD31|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX_RS34|Q\(0),
	datac => \forwardingunit1|FORWARDING_A[0]~4_combout\,
	datad => \MEM_WB_RD31|Q\(0),
	combout => \forwardingunit1|FORWARDING_A[0]~5_combout\);

-- Location: LCCOMB_X110_Y40_N4
\aforwardingmux|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aforwardingmux|stage3|f[0]~0_combout\ = (\forwardingunit1|FORWARDING_A~7_combout\ & (((!\forwardingunit1|FORWARDING_A~9_combout\)))) # (!\forwardingunit1|FORWARDING_A~7_combout\ & (((!\forwardingunit1|FORWARDING_A[0]~5_combout\)) # 
-- (!\forwardingunit1|FORWARDING_A[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forwardingunit1|FORWARDING_A[0]~12_combout\,
	datab => \forwardingunit1|FORWARDING_A~9_combout\,
	datac => \forwardingunit1|FORWARDING_A[0]~5_combout\,
	datad => \forwardingunit1|FORWARDING_A~7_combout\,
	combout => \aforwardingmux|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X110_Y40_N2
\forwardingunit1|FORWARDING_A[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A[1]~10_combout\ = (\forwardingunit1|FORWARDING_A~7_combout\ & (\forwardingunit1|FORWARDING_A~9_combout\ & ((!\forwardingunit1|FORWARDING_A[0]~12_combout\) # (!\forwardingunit1|FORWARDING_A[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forwardingunit1|FORWARDING_A~7_combout\,
	datab => \forwardingunit1|FORWARDING_A~9_combout\,
	datac => \forwardingunit1|FORWARDING_A[0]~5_combout\,
	datad => \forwardingunit1|FORWARDING_A[0]~12_combout\,
	combout => \forwardingunit1|FORWARDING_A[1]~10_combout\);

-- Location: LCCOMB_X110_Y40_N20
\aforwardingmux|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aforwardingmux|stage3|f[0]~1_combout\ = (\forwardingunit1|FORWARDING_A[1]~10_combout\ & ((\EX_MEM_SUM19|Q\(0)))) # (!\forwardingunit1|FORWARDING_A[1]~10_combout\ & (\MEM_WB_SUM30|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_SUM30|Q\(0),
	datac => \EX_MEM_SUM19|Q\(0),
	datad => \forwardingunit1|FORWARDING_A[1]~10_combout\,
	combout => \aforwardingmux|stage3|f[0]~1_combout\);

-- Location: LCCOMB_X111_Y40_N26
\alu1|adder_subtractor1|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage1|s~0_combout\ = \bforwardingmux|stage3|f[0]~3_combout\ $ (((\aforwardingmux|stage3|f[0]~0_combout\ & (\ID_EX_SRC14|Q\(0))) # (!\aforwardingmux|stage3|f[0]~0_combout\ & ((\aforwardingmux|stage3|f[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC14|Q\(0),
	datab => \bforwardingmux|stage3|f[0]~3_combout\,
	datac => \aforwardingmux|stage3|f[0]~0_combout\,
	datad => \aforwardingmux|stage3|f[0]~1_combout\,
	combout => \alu1|adder_subtractor1|stage1|s~0_combout\);

-- Location: FF_X111_Y40_N27
\EX_MEM_SUM19|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu1|adder_subtractor1|stage1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_SUM19|Q\(0));

-- Location: FF_X111_Y40_N23
\MEM_WB_SUM30|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_SUM19|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_SUM30|Q\(0));

-- Location: LCCOMB_X114_Y40_N24
\rf1|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~2_combout\ = (!\reset~input_o\ & \MEM_WB_SUM30|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \MEM_WB_SUM30|Q\(1),
	combout => \rf1|m0|stage3|f~2_combout\);

-- Location: LCCOMB_X111_Y39_N18
\rf1|r13|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r13|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r13|Q[1]~feeder_combout\);

-- Location: FF_X111_Y39_N19
\rf1|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r13|Q[1]~feeder_combout\,
	ena => \rf1|m13|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r13|Q\(1));

-- Location: FF_X111_Y39_N9
\rf1|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf1|m1|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r1|Q\(1));

-- Location: LCCOMB_X109_Y39_N18
\rf1|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r0|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r0|Q[1]~feeder_combout\);

-- Location: FF_X109_Y39_N19
\rf1|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r0|Q[1]~feeder_combout\,
	ena => \rf1|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r0|Q\(1));

-- Location: FF_X109_Y39_N29
\rf1|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf1|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r12|Q\(1));

-- Location: LCCOMB_X109_Y39_N28
\rf1|value1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~7_combout\ = (\IF_ID_INSTR1|Q\(13) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(13) & ((\IF_ID_INSTR1|Q\(0) & ((\rf1|r12|Q\(1)))) # (!\IF_ID_INSTR1|Q\(0) & (\rf1|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r0|Q\(1),
	datac => \rf1|r12|Q\(1),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value1[1]~7_combout\);

-- Location: LCCOMB_X110_Y39_N26
\rf1|value1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~8_combout\ = (\IF_ID_INSTR1|Q\(13) & ((\rf1|value1[1]~7_combout\ & (\rf1|r13|Q\(1))) # (!\rf1|value1[1]~7_combout\ & ((\rf1|r1|Q\(1)))))) # (!\IF_ID_INSTR1|Q\(13) & (((\rf1|value1[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r13|Q\(1),
	datac => \rf1|r1|Q\(1),
	datad => \rf1|value1[1]~7_combout\,
	combout => \rf1|value1[1]~8_combout\);

-- Location: LCCOMB_X113_Y39_N22
\rf1|r15|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r15|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r15|Q[1]~feeder_combout\);

-- Location: FF_X113_Y39_N23
\rf1|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r15|Q[1]~feeder_combout\,
	ena => \rf1|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r15|Q\(1));

-- Location: LCCOMB_X114_Y40_N30
\rf1|m2|stage3|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m2|stage3|f[1]~2_combout\ = (\reset~input_o\) # (\MEM_WB_SUM30|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \MEM_WB_SUM30|Q\(1),
	combout => \rf1|m2|stage3|f[1]~2_combout\);

-- Location: LCCOMB_X114_Y40_N0
\rf1|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r3|Q[1]~feeder_combout\ = \rf1|m2|stage3|f[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m2|stage3|f[1]~2_combout\,
	combout => \rf1|r3|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N1
\rf1|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r3|Q[1]~feeder_combout\,
	ena => \rf1|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r3|Q\(1));

-- Location: FF_X113_Y40_N23
\rf1|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m2|stage3|f[1]~2_combout\,
	sload => VCC,
	ena => \rf1|m2|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r2|Q\(1));

-- Location: LCCOMB_X112_Y39_N24
\rf1|r14|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r14|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r14|Q[1]~feeder_combout\);

-- Location: FF_X112_Y39_N25
\rf1|r14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r14|Q[1]~feeder_combout\,
	ena => \rf1|m14|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r14|Q\(1));

-- Location: LCCOMB_X113_Y39_N26
\rf1|value1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~5_combout\ = (\IF_ID_INSTR1|Q\(13) & (\IF_ID_INSTR1|Q\(0))) # (!\IF_ID_INSTR1|Q\(13) & ((\IF_ID_INSTR1|Q\(0) & ((\rf1|r14|Q\(1)))) # (!\IF_ID_INSTR1|Q\(0) & (\rf1|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \IF_ID_INSTR1|Q\(0),
	datac => \rf1|r2|Q\(1),
	datad => \rf1|r14|Q\(1),
	combout => \rf1|value1[1]~5_combout\);

-- Location: LCCOMB_X113_Y39_N20
\rf1|value1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~6_combout\ = (\rf1|value1[1]~5_combout\ & ((\rf1|r15|Q\(1)) # ((!\IF_ID_INSTR1|Q\(13))))) # (!\rf1|value1[1]~5_combout\ & (((\rf1|r3|Q\(1) & \IF_ID_INSTR1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r15|Q\(1),
	datab => \rf1|r3|Q\(1),
	datac => \rf1|value1[1]~5_combout\,
	datad => \IF_ID_INSTR1|Q\(13),
	combout => \rf1|value1[1]~6_combout\);

-- Location: LCCOMB_X113_Y39_N12
\rf1|value1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~9_combout\ = (\IF_ID_INSTR1|Q\(16) & ((\rf1|value1[1]~6_combout\))) # (!\IF_ID_INSTR1|Q\(16) & (\rf1|value1[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(16),
	datac => \rf1|value1[1]~8_combout\,
	datad => \rf1|value1[1]~6_combout\,
	combout => \rf1|value1[1]~9_combout\);

-- Location: FF_X113_Y39_N13
\ID_EX_SRC14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value1[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC14|Q\(1));

-- Location: LCCOMB_X110_Y40_N10
\forwardingunit1|FORWARDING_A[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_A[0]~11_combout\ = (\forwardingunit1|FORWARDING_A[0]~12_combout\ & (\forwardingunit1|FORWARDING_A[0]~5_combout\ & ((\forwardingunit1|FORWARDING_A~9_combout\) # (!\forwardingunit1|FORWARDING_A~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forwardingunit1|FORWARDING_A[0]~12_combout\,
	datab => \forwardingunit1|FORWARDING_A~9_combout\,
	datac => \forwardingunit1|FORWARDING_A[0]~5_combout\,
	datad => \forwardingunit1|FORWARDING_A~7_combout\,
	combout => \forwardingunit1|FORWARDING_A[0]~11_combout\);

-- Location: LCCOMB_X110_Y40_N8
\aforwardingmux|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \aforwardingmux|stage3|f~3_combout\ = (!\forwardingunit1|FORWARDING_A[1]~10_combout\ & ((\forwardingunit1|FORWARDING_A[0]~11_combout\ & ((\MEM_WB_SUM30|Q\(1)))) # (!\forwardingunit1|FORWARDING_A[0]~11_combout\ & (\ID_EX_SRC14|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC14|Q\(1),
	datab => \forwardingunit1|FORWARDING_A[1]~10_combout\,
	datac => \MEM_WB_SUM30|Q\(1),
	datad => \forwardingunit1|FORWARDING_A[0]~11_combout\,
	combout => \aforwardingmux|stage3|f~3_combout\);

-- Location: LCCOMB_X114_Y39_N8
\rf1|r7|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r7|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r7|Q[1]~feeder_combout\);

-- Location: FF_X114_Y39_N9
\rf1|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r7|Q[1]~feeder_combout\,
	ena => \rf1|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r7|Q\(1));

-- Location: FF_X112_Y39_N23
\rf1|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m2|stage3|f[1]~2_combout\,
	sload => VCC,
	ena => \rf1|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r6|Q\(1));

-- Location: LCCOMB_X112_Y39_N22
\rf1|value2[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[1]~5_combout\ = (\IF_ID_INSTR1|Q\(16) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(16) & ((\IF_ID_INSTR1|Q\(0) & (\rf1|r14|Q\(1))) # (!\IF_ID_INSTR1|Q\(0) & ((\rf1|r6|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(16),
	datab => \rf1|r14|Q\(1),
	datac => \rf1|r6|Q\(1),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value2[1]~5_combout\);

-- Location: LCCOMB_X113_Y39_N0
\rf1|value2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[1]~6_combout\ = (\IF_ID_INSTR1|Q\(16) & ((\rf1|value2[1]~5_combout\ & (\rf1|r15|Q\(1))) # (!\rf1|value2[1]~5_combout\ & ((\rf1|r7|Q\(1)))))) # (!\IF_ID_INSTR1|Q\(16) & (((\rf1|value2[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r15|Q\(1),
	datab => \rf1|r7|Q\(1),
	datac => \IF_ID_INSTR1|Q\(16),
	datad => \rf1|value2[1]~5_combout\,
	combout => \rf1|value2[1]~6_combout\);

-- Location: LCCOMB_X114_Y39_N22
\rf1|r10|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r10|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r10|Q[1]~feeder_combout\);

-- Location: FF_X114_Y39_N23
\rf1|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r10|Q[1]~feeder_combout\,
	ena => \rf1|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r10|Q\(1));

-- Location: LCCOMB_X114_Y40_N26
\rf1|value2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[1]~7_combout\ = (\IF_ID_INSTR1|Q\(0) & (((\IF_ID_INSTR1|Q\(16)) # (\rf1|r10|Q\(1))))) # (!\IF_ID_INSTR1|Q\(0) & (\rf1|r2|Q\(1) & (!\IF_ID_INSTR1|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(0),
	datab => \rf1|r2|Q\(1),
	datac => \IF_ID_INSTR1|Q\(16),
	datad => \rf1|r10|Q\(1),
	combout => \rf1|value2[1]~7_combout\);

-- Location: LCCOMB_X114_Y40_N16
\rf1|r11|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r11|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r11|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N17
\rf1|r11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r11|Q[1]~feeder_combout\,
	ena => \rf1|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r11|Q\(1));

-- Location: LCCOMB_X114_Y40_N22
\rf1|value2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[1]~8_combout\ = (\rf1|value2[1]~7_combout\ & ((\rf1|r11|Q\(1)) # ((!\IF_ID_INSTR1|Q\(16))))) # (!\rf1|value2[1]~7_combout\ & (((\IF_ID_INSTR1|Q\(16) & \rf1|r3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|value2[1]~7_combout\,
	datab => \rf1|r11|Q\(1),
	datac => \IF_ID_INSTR1|Q\(16),
	datad => \rf1|r3|Q\(1),
	combout => \rf1|value2[1]~8_combout\);

-- Location: LCCOMB_X113_Y40_N0
\rf1|value2[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[1]~9_combout\ = (\IF_ID_INSTR1|Q\(18) & (\rf1|value2[1]~6_combout\)) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|value2[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_INSTR1|Q\(18),
	datac => \rf1|value2[1]~6_combout\,
	datad => \rf1|value2[1]~8_combout\,
	combout => \rf1|value2[1]~9_combout\);

-- Location: FF_X113_Y40_N1
\ID_EX_SRC25|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value2[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC25|Q\(1));

-- Location: LCCOMB_X112_Y40_N28
\forwardingunit1|FORWARDING_B[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \forwardingunit1|FORWARDING_B[1]~4_combout\ = (\forwardingunit1|FORWARDING_A~7_combout\ & (!\forwardingunit1|FORWARDING_B[0]~3_combout\ & \forwardingunit1|FORWARDING_B[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \forwardingunit1|FORWARDING_A~7_combout\,
	datab => \forwardingunit1|FORWARDING_B[0]~3_combout\,
	datad => \forwardingunit1|FORWARDING_B[1]~1_combout\,
	combout => \forwardingunit1|FORWARDING_B[1]~4_combout\);

-- Location: LCCOMB_X111_Y40_N24
\bforwardingmux|stage3|f[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[1]~4_combout\ = (\bforwardingmux|stage3|f[0]~0_combout\ & ((\forwardingunit1|FORWARDING_B[1]~4_combout\ & (\EX_MEM_SUM19|Q\(1))) # (!\forwardingunit1|FORWARDING_B[1]~4_combout\ & ((\MEM_WB_SUM30|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_SUM19|Q\(1),
	datab => \bforwardingmux|stage3|f[0]~0_combout\,
	datac => \MEM_WB_SUM30|Q\(1),
	datad => \forwardingunit1|FORWARDING_B[1]~4_combout\,
	combout => \bforwardingmux|stage3|f[1]~4_combout\);

-- Location: LCCOMB_X111_Y40_N18
\bforwardingmux|stage3|f[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[1]~5_combout\ = (\bforwardingmux|stage3|f[1]~4_combout\) # ((\ID_EX_SRC25|Q\(1) & !\bforwardingmux|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC25|Q\(1),
	datab => \bforwardingmux|stage3|f[0]~0_combout\,
	datad => \bforwardingmux|stage3|f[1]~4_combout\,
	combout => \bforwardingmux|stage3|f[1]~5_combout\);

-- Location: LCCOMB_X110_Y40_N16
\aforwardingmux|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aforwardingmux|stage3|f~2_combout\ = (\EX_MEM_SUM19|Q\(1) & \forwardingunit1|FORWARDING_A[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EX_MEM_SUM19|Q\(1),
	datad => \forwardingunit1|FORWARDING_A[1]~10_combout\,
	combout => \aforwardingmux|stage3|f~2_combout\);

-- Location: LCCOMB_X110_Y40_N14
\alu1|adder_subtractor1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage1|Cout~0_combout\ = (\bforwardingmux|stage3|f[0]~3_combout\ & ((\aforwardingmux|stage3|f[0]~0_combout\ & (\ID_EX_SRC14|Q\(0))) # (!\aforwardingmux|stage3|f[0]~0_combout\ & ((\aforwardingmux|stage3|f[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC14|Q\(0),
	datab => \aforwardingmux|stage3|f[0]~0_combout\,
	datac => \bforwardingmux|stage3|f[0]~3_combout\,
	datad => \aforwardingmux|stage3|f[0]~1_combout\,
	combout => \alu1|adder_subtractor1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X111_Y40_N30
\alu1|adder_subtractor1|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage2|s~0_combout\ = \bforwardingmux|stage3|f[1]~5_combout\ $ (\alu1|adder_subtractor1|stage1|Cout~0_combout\ $ (((\aforwardingmux|stage3|f~3_combout\) # (\aforwardingmux|stage3|f~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aforwardingmux|stage3|f~3_combout\,
	datab => \bforwardingmux|stage3|f[1]~5_combout\,
	datac => \aforwardingmux|stage3|f~2_combout\,
	datad => \alu1|adder_subtractor1|stage1|Cout~0_combout\,
	combout => \alu1|adder_subtractor1|stage2|s~0_combout\);

-- Location: FF_X111_Y40_N31
\EX_MEM_SUM19|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu1|adder_subtractor1|stage2|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_SUM19|Q\(1));

-- Location: FF_X111_Y40_N25
\MEM_WB_SUM30|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_SUM19|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_SUM30|Q\(1));

-- Location: LCCOMB_X111_Y40_N4
\rf1|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \MEM_WB_SUM30|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_SUM30|Q\(2),
	combout => \rf1|m0|stage3|f~3_combout\);

-- Location: LCCOMB_X113_Y39_N30
\rf1|r15|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r15|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r15|Q[2]~feeder_combout\);

-- Location: FF_X113_Y39_N31
\rf1|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r15|Q[2]~feeder_combout\,
	ena => \rf1|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r15|Q\(2));

-- Location: FF_X114_Y40_N5
\rf1|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf1|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r3|Q\(2));

-- Location: LCCOMB_X112_Y39_N20
\rf1|r14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r14|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r14|Q[2]~feeder_combout\);

-- Location: FF_X112_Y39_N21
\rf1|r14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r14|Q[2]~feeder_combout\,
	ena => \rf1|m14|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r14|Q\(2));

-- Location: FF_X113_Y40_N25
\rf1|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf1|m2|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r2|Q\(2));

-- Location: LCCOMB_X113_Y40_N24
\rf1|value1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~10_combout\ = (\IF_ID_INSTR1|Q\(13) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(13) & ((\IF_ID_INSTR1|Q\(0) & (\rf1|r14|Q\(2))) # (!\IF_ID_INSTR1|Q\(0) & ((\rf1|r2|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r14|Q\(2),
	datab => \IF_ID_INSTR1|Q\(13),
	datac => \rf1|r2|Q\(2),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value1[2]~10_combout\);

-- Location: LCCOMB_X114_Y40_N4
\rf1|value1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~11_combout\ = (\IF_ID_INSTR1|Q\(13) & ((\rf1|value1[2]~10_combout\ & (\rf1|r15|Q\(2))) # (!\rf1|value1[2]~10_combout\ & ((\rf1|r3|Q\(2)))))) # (!\IF_ID_INSTR1|Q\(13) & (((\rf1|value1[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r15|Q\(2),
	datab => \IF_ID_INSTR1|Q\(13),
	datac => \rf1|r3|Q\(2),
	datad => \rf1|value1[2]~10_combout\,
	combout => \rf1|value1[2]~11_combout\);

-- Location: LCCOMB_X111_Y39_N24
\rf1|r1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r1|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r1|Q[2]~feeder_combout\);

-- Location: FF_X111_Y39_N25
\rf1|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r1|Q[2]~feeder_combout\,
	ena => \rf1|m1|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r1|Q\(2));

-- Location: LCCOMB_X111_Y39_N10
\rf1|r13|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r13|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r13|Q[2]~feeder_combout\);

-- Location: FF_X111_Y39_N11
\rf1|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r13|Q[2]~feeder_combout\,
	ena => \rf1|m13|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r13|Q\(2));

-- Location: LCCOMB_X110_Y39_N16
\rf1|r12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r12|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r12|Q[2]~feeder_combout\);

-- Location: FF_X110_Y39_N17
\rf1|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r12|Q[2]~feeder_combout\,
	ena => \rf1|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r12|Q\(2));

-- Location: FF_X110_Y39_N19
\rf1|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf1|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r0|Q\(2));

-- Location: LCCOMB_X110_Y39_N18
\rf1|value1[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~12_combout\ = (\IF_ID_INSTR1|Q\(13) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(13) & ((\IF_ID_INSTR1|Q\(0) & (\rf1|r12|Q\(2))) # (!\IF_ID_INSTR1|Q\(0) & ((\rf1|r0|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r12|Q\(2),
	datac => \rf1|r0|Q\(2),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value1[2]~12_combout\);

-- Location: LCCOMB_X110_Y39_N4
\rf1|value1[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~13_combout\ = (\IF_ID_INSTR1|Q\(13) & ((\rf1|value1[2]~12_combout\ & ((\rf1|r13|Q\(2)))) # (!\rf1|value1[2]~12_combout\ & (\rf1|r1|Q\(2))))) # (!\IF_ID_INSTR1|Q\(13) & (((\rf1|value1[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r1|Q\(2),
	datac => \rf1|r13|Q\(2),
	datad => \rf1|value1[2]~12_combout\,
	combout => \rf1|value1[2]~13_combout\);

-- Location: LCCOMB_X113_Y40_N12
\rf1|value1[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~14_combout\ = (\IF_ID_INSTR1|Q\(16) & (\rf1|value1[2]~11_combout\)) # (!\IF_ID_INSTR1|Q\(16) & ((\rf1|value1[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|value1[2]~11_combout\,
	datab => \IF_ID_INSTR1|Q\(16),
	datad => \rf1|value1[2]~13_combout\,
	combout => \rf1|value1[2]~14_combout\);

-- Location: FF_X113_Y40_N13
\ID_EX_SRC14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value1[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC14|Q\(2));

-- Location: LCCOMB_X110_Y40_N12
\aforwardingmux|stage3|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aforwardingmux|stage3|f~5_combout\ = (!\forwardingunit1|FORWARDING_A[1]~10_combout\ & ((\forwardingunit1|FORWARDING_A[0]~11_combout\ & ((\MEM_WB_SUM30|Q\(2)))) # (!\forwardingunit1|FORWARDING_A[0]~11_combout\ & (\ID_EX_SRC14|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC14|Q\(2),
	datab => \MEM_WB_SUM30|Q\(2),
	datac => \forwardingunit1|FORWARDING_A[0]~11_combout\,
	datad => \forwardingunit1|FORWARDING_A[1]~10_combout\,
	combout => \aforwardingmux|stage3|f~5_combout\);

-- Location: LCCOMB_X110_Y40_N24
\aforwardingmux|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aforwardingmux|stage3|f~4_combout\ = (\EX_MEM_SUM19|Q\(2) & \forwardingunit1|FORWARDING_A[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EX_MEM_SUM19|Q\(2),
	datad => \forwardingunit1|FORWARDING_A[1]~10_combout\,
	combout => \aforwardingmux|stage3|f~4_combout\);

-- Location: LCCOMB_X112_Y39_N30
\rf1|m6|stage3|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m6|stage3|f[2]~1_combout\ = (\MEM_WB_SUM30|Q\(2)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB_SUM30|Q\(2),
	datac => \reset~input_o\,
	combout => \rf1|m6|stage3|f[2]~1_combout\);

-- Location: FF_X112_Y39_N31
\rf1|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|m6|stage3|f[2]~1_combout\,
	ena => \rf1|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r6|Q\(2));

-- Location: LCCOMB_X112_Y39_N16
\rf1|value2[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[2]~10_combout\ = (\IF_ID_INSTR1|Q\(16) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(16) & ((\IF_ID_INSTR1|Q\(0) & ((\rf1|r14|Q\(2)))) # (!\IF_ID_INSTR1|Q\(0) & (\rf1|r6|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r6|Q\(2),
	datab => \rf1|r14|Q\(2),
	datac => \IF_ID_INSTR1|Q\(16),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value2[2]~10_combout\);

-- Location: LCCOMB_X114_Y39_N24
\rf1|r7|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r7|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r7|Q[2]~feeder_combout\);

-- Location: FF_X114_Y39_N25
\rf1|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r7|Q[2]~feeder_combout\,
	ena => \rf1|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r7|Q\(2));

-- Location: LCCOMB_X113_Y39_N16
\rf1|value2[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[2]~11_combout\ = (\IF_ID_INSTR1|Q\(16) & ((\rf1|value2[2]~10_combout\ & (\rf1|r15|Q\(2))) # (!\rf1|value2[2]~10_combout\ & ((\rf1|r7|Q\(2)))))) # (!\IF_ID_INSTR1|Q\(16) & (((\rf1|value2[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(16),
	datab => \rf1|r15|Q\(2),
	datac => \rf1|value2[2]~10_combout\,
	datad => \rf1|r7|Q\(2),
	combout => \rf1|value2[2]~11_combout\);

-- Location: FF_X114_Y40_N3
\rf1|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf1|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r11|Q\(2));

-- Location: LCCOMB_X114_Y39_N2
\rf1|r10|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r10|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r10|Q[2]~feeder_combout\);

-- Location: FF_X114_Y39_N3
\rf1|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r10|Q[2]~feeder_combout\,
	ena => \rf1|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r10|Q\(2));

-- Location: LCCOMB_X113_Y39_N2
\rf1|value2[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[2]~12_combout\ = (\IF_ID_INSTR1|Q\(16) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(16) & ((\IF_ID_INSTR1|Q\(0) & (\rf1|r10|Q\(2))) # (!\IF_ID_INSTR1|Q\(0) & ((\rf1|r2|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r10|Q\(2),
	datab => \IF_ID_INSTR1|Q\(16),
	datac => \IF_ID_INSTR1|Q\(0),
	datad => \rf1|r2|Q\(2),
	combout => \rf1|value2[2]~12_combout\);

-- Location: LCCOMB_X114_Y40_N2
\rf1|value2[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[2]~13_combout\ = (\IF_ID_INSTR1|Q\(16) & ((\rf1|value2[2]~12_combout\ & ((\rf1|r11|Q\(2)))) # (!\rf1|value2[2]~12_combout\ & (\rf1|r3|Q\(2))))) # (!\IF_ID_INSTR1|Q\(16) & (((\rf1|value2[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(16),
	datab => \rf1|r3|Q\(2),
	datac => \rf1|r11|Q\(2),
	datad => \rf1|value2[2]~12_combout\,
	combout => \rf1|value2[2]~13_combout\);

-- Location: LCCOMB_X113_Y40_N14
\rf1|value2[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[2]~14_combout\ = (\IF_ID_INSTR1|Q\(18) & (\rf1|value2[2]~11_combout\)) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|value2[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_INSTR1|Q\(18),
	datac => \rf1|value2[2]~11_combout\,
	datad => \rf1|value2[2]~13_combout\,
	combout => \rf1|value2[2]~14_combout\);

-- Location: FF_X113_Y40_N15
\ID_EX_SRC25|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value2[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC25|Q\(2));

-- Location: LCCOMB_X111_Y40_N16
\bforwardingmux|stage3|f[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[2]~6_combout\ = (\bforwardingmux|stage3|f[0]~0_combout\ & ((\forwardingunit1|FORWARDING_B[1]~4_combout\ & (\EX_MEM_SUM19|Q\(2))) # (!\forwardingunit1|FORWARDING_B[1]~4_combout\ & ((\MEM_WB_SUM30|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_SUM19|Q\(2),
	datab => \bforwardingmux|stage3|f[0]~0_combout\,
	datac => \MEM_WB_SUM30|Q\(2),
	datad => \forwardingunit1|FORWARDING_B[1]~4_combout\,
	combout => \bforwardingmux|stage3|f[2]~6_combout\);

-- Location: LCCOMB_X111_Y40_N12
\bforwardingmux|stage3|f[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[2]~7_combout\ = (\bforwardingmux|stage3|f[2]~6_combout\) # ((\ID_EX_SRC25|Q\(2) & !\bforwardingmux|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC25|Q\(2),
	datab => \bforwardingmux|stage3|f[0]~0_combout\,
	datad => \bforwardingmux|stage3|f[2]~6_combout\,
	combout => \bforwardingmux|stage3|f[2]~7_combout\);

-- Location: LCCOMB_X110_Y40_N6
\alu1|adder_subtractor1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage2|Cout~0_combout\ = (\alu1|adder_subtractor1|stage1|Cout~0_combout\ & ((\aforwardingmux|stage3|f~2_combout\) # ((\aforwardingmux|stage3|f~3_combout\) # (\bforwardingmux|stage3|f[1]~5_combout\)))) # 
-- (!\alu1|adder_subtractor1|stage1|Cout~0_combout\ & (\bforwardingmux|stage3|f[1]~5_combout\ & ((\aforwardingmux|stage3|f~2_combout\) # (\aforwardingmux|stage3|f~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aforwardingmux|stage3|f~2_combout\,
	datab => \aforwardingmux|stage3|f~3_combout\,
	datac => \alu1|adder_subtractor1|stage1|Cout~0_combout\,
	datad => \bforwardingmux|stage3|f[1]~5_combout\,
	combout => \alu1|adder_subtractor1|stage2|Cout~0_combout\);

-- Location: LCCOMB_X110_Y40_N26
\alu1|adder_subtractor1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage3|s~combout\ = \bforwardingmux|stage3|f[2]~7_combout\ $ (\alu1|adder_subtractor1|stage2|Cout~0_combout\ $ (((\aforwardingmux|stage3|f~5_combout\) # (\aforwardingmux|stage3|f~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aforwardingmux|stage3|f~5_combout\,
	datab => \aforwardingmux|stage3|f~4_combout\,
	datac => \bforwardingmux|stage3|f[2]~7_combout\,
	datad => \alu1|adder_subtractor1|stage2|Cout~0_combout\,
	combout => \alu1|adder_subtractor1|stage3|s~combout\);

-- Location: FF_X110_Y40_N27
\EX_MEM_SUM19|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu1|adder_subtractor1|stage3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_SUM19|Q\(2));

-- Location: FF_X111_Y40_N17
\MEM_WB_SUM30|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_SUM19|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_SUM30|Q\(2));

-- Location: LCCOMB_X111_Y40_N6
\bforwardingmux|stage3|f[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[3]~9_combout\ = (\bforwardingmux|stage3|f[0]~0_combout\ & ((\forwardingunit1|FORWARDING_B[1]~4_combout\ & (\EX_MEM_SUM19|Q\(3))) # (!\forwardingunit1|FORWARDING_B[1]~4_combout\ & ((\MEM_WB_SUM30|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM_SUM19|Q\(3),
	datab => \forwardingunit1|FORWARDING_B[1]~4_combout\,
	datac => \bforwardingmux|stage3|f[0]~0_combout\,
	datad => \MEM_WB_SUM30|Q\(3),
	combout => \bforwardingmux|stage3|f[3]~9_combout\);

-- Location: LCCOMB_X110_Y40_N30
\aforwardingmux|stage3|f[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aforwardingmux|stage3|f[3]~6_combout\ = (\forwardingunit1|FORWARDING_A[1]~10_combout\ & ((\EX_MEM_SUM19|Q\(3)))) # (!\forwardingunit1|FORWARDING_A[1]~10_combout\ & (\MEM_WB_SUM30|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_SUM30|Q\(3),
	datab => \EX_MEM_SUM19|Q\(3),
	datad => \forwardingunit1|FORWARDING_A[1]~10_combout\,
	combout => \aforwardingmux|stage3|f[3]~6_combout\);

-- Location: LCCOMB_X111_Y40_N2
\rf1|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~4_combout\ = (!\reset~input_o\ & \MEM_WB_SUM30|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_SUM30|Q\(3),
	combout => \rf1|m0|stage3|f~4_combout\);

-- Location: FF_X111_Y39_N29
\rf1|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m1|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r1|Q\(3));

-- Location: FF_X111_Y40_N19
\rf1|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m13|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r13|Q\(3));

-- Location: LCCOMB_X109_Y39_N16
\rf1|r12|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r12|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r12|Q[3]~feeder_combout\);

-- Location: FF_X109_Y39_N17
\rf1|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r12|Q[3]~feeder_combout\,
	ena => \rf1|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r12|Q\(3));

-- Location: FF_X109_Y39_N15
\rf1|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r0|Q\(3));

-- Location: LCCOMB_X109_Y39_N14
\rf1|value1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~17_combout\ = (\IF_ID_INSTR1|Q\(13) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(13) & ((\IF_ID_INSTR1|Q\(0) & (\rf1|r12|Q\(3))) # (!\IF_ID_INSTR1|Q\(0) & ((\rf1|r0|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r12|Q\(3),
	datac => \rf1|r0|Q\(3),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value1[3]~17_combout\);

-- Location: LCCOMB_X110_Y39_N22
\rf1|value1[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~18_combout\ = (\IF_ID_INSTR1|Q\(13) & ((\rf1|value1[3]~17_combout\ & ((\rf1|r13|Q\(3)))) # (!\rf1|value1[3]~17_combout\ & (\rf1|r1|Q\(3))))) # (!\IF_ID_INSTR1|Q\(13) & (((\rf1|value1[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r1|Q\(3),
	datab => \rf1|r13|Q\(3),
	datac => \IF_ID_INSTR1|Q\(13),
	datad => \rf1|value1[3]~17_combout\,
	combout => \rf1|value1[3]~18_combout\);

-- Location: LCCOMB_X113_Y39_N14
\rf1|r15|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r15|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r15|Q[3]~feeder_combout\);

-- Location: FF_X113_Y39_N15
\rf1|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r15|Q[3]~feeder_combout\,
	ena => \rf1|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r15|Q\(3));

-- Location: LCCOMB_X114_Y40_N20
\rf1|r3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r3|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r3|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N21
\rf1|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r3|Q[3]~feeder_combout\,
	ena => \rf1|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r3|Q\(3));

-- Location: LCCOMB_X112_Y39_N2
\rf1|r14|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r14|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r14|Q[3]~feeder_combout\);

-- Location: FF_X112_Y39_N3
\rf1|r14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r14|Q[3]~feeder_combout\,
	ena => \rf1|m14|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r14|Q\(3));

-- Location: FF_X113_Y40_N11
\rf1|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m2|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r2|Q\(3));

-- Location: LCCOMB_X113_Y39_N24
\rf1|value1[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~15_combout\ = (\IF_ID_INSTR1|Q\(0) & ((\rf1|r14|Q\(3)) # ((\IF_ID_INSTR1|Q\(13))))) # (!\IF_ID_INSTR1|Q\(0) & (((\rf1|r2|Q\(3) & !\IF_ID_INSTR1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r14|Q\(3),
	datab => \rf1|r2|Q\(3),
	datac => \IF_ID_INSTR1|Q\(0),
	datad => \IF_ID_INSTR1|Q\(13),
	combout => \rf1|value1[3]~15_combout\);

-- Location: LCCOMB_X113_Y39_N28
\rf1|value1[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~16_combout\ = (\IF_ID_INSTR1|Q\(13) & ((\rf1|value1[3]~15_combout\ & (\rf1|r15|Q\(3))) # (!\rf1|value1[3]~15_combout\ & ((\rf1|r3|Q\(3)))))) # (!\IF_ID_INSTR1|Q\(13) & (((\rf1|value1[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(13),
	datab => \rf1|r15|Q\(3),
	datac => \rf1|r3|Q\(3),
	datad => \rf1|value1[3]~15_combout\,
	combout => \rf1|value1[3]~16_combout\);

-- Location: LCCOMB_X113_Y39_N10
\rf1|value1[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~19_combout\ = (\IF_ID_INSTR1|Q\(16) & ((\rf1|value1[3]~16_combout\))) # (!\IF_ID_INSTR1|Q\(16) & (\rf1|value1[3]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(16),
	datac => \rf1|value1[3]~18_combout\,
	datad => \rf1|value1[3]~16_combout\,
	combout => \rf1|value1[3]~19_combout\);

-- Location: FF_X113_Y39_N11
\ID_EX_SRC14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value1[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC14|Q\(3));

-- Location: LCCOMB_X110_Y40_N28
\aforwardingmux|stage3|f[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aforwardingmux|stage3|f[3]~7_combout\ = (\aforwardingmux|stage3|f[0]~0_combout\ & ((\ID_EX_SRC14|Q\(3)))) # (!\aforwardingmux|stage3|f[0]~0_combout\ & (\aforwardingmux|stage3|f[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aforwardingmux|stage3|f[3]~6_combout\,
	datab => \aforwardingmux|stage3|f[0]~0_combout\,
	datad => \ID_EX_SRC14|Q\(3),
	combout => \aforwardingmux|stage3|f[3]~7_combout\);

-- Location: LCCOMB_X114_Y39_N4
\rf1|r7|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r7|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r7|Q[3]~feeder_combout\);

-- Location: FF_X114_Y39_N5
\rf1|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r7|Q[3]~feeder_combout\,
	ena => \rf1|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r7|Q\(3));

-- Location: FF_X112_Y39_N9
\rf1|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m6|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r6|Q\(3));

-- Location: LCCOMB_X112_Y39_N8
\rf1|value2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[3]~15_combout\ = (\IF_ID_INSTR1|Q\(16) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(16) & ((\IF_ID_INSTR1|Q\(0) & (\rf1|r14|Q\(3))) # (!\IF_ID_INSTR1|Q\(0) & ((\rf1|r6|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(16),
	datab => \rf1|r14|Q\(3),
	datac => \rf1|r6|Q\(3),
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \rf1|value2[3]~15_combout\);

-- Location: LCCOMB_X113_Y39_N6
\rf1|value2[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[3]~16_combout\ = (\IF_ID_INSTR1|Q\(16) & ((\rf1|value2[3]~15_combout\ & ((\rf1|r15|Q\(3)))) # (!\rf1|value2[3]~15_combout\ & (\rf1|r7|Q\(3))))) # (!\IF_ID_INSTR1|Q\(16) & (((\rf1|value2[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r7|Q\(3),
	datab => \rf1|r15|Q\(3),
	datac => \IF_ID_INSTR1|Q\(16),
	datad => \rf1|value2[3]~15_combout\,
	combout => \rf1|value2[3]~16_combout\);

-- Location: LCCOMB_X114_Y40_N28
\rf1|r11|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r11|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r11|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N29
\rf1|r11|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r11|Q[3]~feeder_combout\,
	ena => \rf1|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r11|Q\(3));

-- Location: LCCOMB_X114_Y39_N14
\rf1|r10|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r10|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r10|Q[3]~feeder_combout\);

-- Location: FF_X114_Y39_N15
\rf1|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r10|Q[3]~feeder_combout\,
	ena => \rf1|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r10|Q\(3));

-- Location: LCCOMB_X114_Y40_N18
\rf1|value2[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[3]~17_combout\ = (\IF_ID_INSTR1|Q\(16) & (((\IF_ID_INSTR1|Q\(0))))) # (!\IF_ID_INSTR1|Q\(16) & ((\IF_ID_INSTR1|Q\(0) & ((\rf1|r10|Q\(3)))) # (!\IF_ID_INSTR1|Q\(0) & (\rf1|r2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r2|Q\(3),
	datab => \IF_ID_INSTR1|Q\(16),
	datac => \IF_ID_INSTR1|Q\(0),
	datad => \rf1|r10|Q\(3),
	combout => \rf1|value2[3]~17_combout\);

-- Location: LCCOMB_X114_Y40_N6
\rf1|value2[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[3]~18_combout\ = (\IF_ID_INSTR1|Q\(16) & ((\rf1|value2[3]~17_combout\ & ((\rf1|r11|Q\(3)))) # (!\rf1|value2[3]~17_combout\ & (\rf1|r3|Q\(3))))) # (!\IF_ID_INSTR1|Q\(16) & (((\rf1|value2[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r3|Q\(3),
	datab => \rf1|r11|Q\(3),
	datac => \IF_ID_INSTR1|Q\(16),
	datad => \rf1|value2[3]~17_combout\,
	combout => \rf1|value2[3]~18_combout\);

-- Location: LCCOMB_X113_Y40_N18
\rf1|value2[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value2[3]~19_combout\ = (\IF_ID_INSTR1|Q\(18) & (\rf1|value2[3]~16_combout\)) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|value2[3]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID_INSTR1|Q\(18),
	datac => \rf1|value2[3]~16_combout\,
	datad => \rf1|value2[3]~18_combout\,
	combout => \rf1|value2[3]~19_combout\);

-- Location: FF_X113_Y40_N19
\ID_EX_SRC25|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value2[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC25|Q\(3));

-- Location: LCCOMB_X111_Y40_N10
\bforwardingmux|stage3|f[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bforwardingmux|stage3|f[3]~8_combout\ = (\ID_EX_SRC25|Q\(3) & ((\forwardingunit1|FORWARDING_A~7_combout\ & ((!\forwardingunit1|FORWARDING_B[1]~1_combout\))) # (!\forwardingunit1|FORWARDING_A~7_combout\ & (!\forwardingunit1|FORWARDING_B[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC25|Q\(3),
	datab => \forwardingunit1|FORWARDING_B[0]~3_combout\,
	datac => \forwardingunit1|FORWARDING_B[1]~1_combout\,
	datad => \forwardingunit1|FORWARDING_A~7_combout\,
	combout => \bforwardingmux|stage3|f[3]~8_combout\);

-- Location: LCCOMB_X110_Y40_N18
\alu1|adder_subtractor1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage3|Cout~0_combout\ = (\bforwardingmux|stage3|f[2]~7_combout\ & ((\aforwardingmux|stage3|f~5_combout\) # ((\aforwardingmux|stage3|f~4_combout\) # (\alu1|adder_subtractor1|stage2|Cout~0_combout\)))) # 
-- (!\bforwardingmux|stage3|f[2]~7_combout\ & (\alu1|adder_subtractor1|stage2|Cout~0_combout\ & ((\aforwardingmux|stage3|f~5_combout\) # (\aforwardingmux|stage3|f~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aforwardingmux|stage3|f~5_combout\,
	datab => \aforwardingmux|stage3|f~4_combout\,
	datac => \bforwardingmux|stage3|f[2]~7_combout\,
	datad => \alu1|adder_subtractor1|stage2|Cout~0_combout\,
	combout => \alu1|adder_subtractor1|stage3|Cout~0_combout\);

-- Location: LCCOMB_X110_Y40_N0
\alu1|adder_subtractor1|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage4|s~0_combout\ = \aforwardingmux|stage3|f[3]~7_combout\ $ (\alu1|adder_subtractor1|stage3|Cout~0_combout\ $ (((\bforwardingmux|stage3|f[3]~9_combout\) # (\bforwardingmux|stage3|f[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bforwardingmux|stage3|f[3]~9_combout\,
	datab => \aforwardingmux|stage3|f[3]~7_combout\,
	datac => \bforwardingmux|stage3|f[3]~8_combout\,
	datad => \alu1|adder_subtractor1|stage3|Cout~0_combout\,
	combout => \alu1|adder_subtractor1|stage4|s~0_combout\);

-- Location: FF_X110_Y40_N1
\EX_MEM_SUM19|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu1|adder_subtractor1|stage4|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_SUM19|Q\(3));

-- Location: FF_X111_Y40_N13
\MEM_WB_SUM30|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM_SUM19|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_SUM30|Q\(3));

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


