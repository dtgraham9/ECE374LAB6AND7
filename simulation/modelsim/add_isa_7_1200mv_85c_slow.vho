-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/01/2019 00:22:49"

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
	current_pc : BUFFER std_logic_vector(3 DOWNTO 0);
	result : BUFFER std_logic_vector(3 DOWNTO 0)
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
SIGNAL \im1|output[17]~2_combout\ : std_logic;
SIGNAL \IF_ID_INSTR1|Q[17]~feeder_combout\ : std_logic;
SIGNAL \im1|output[18]~1_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|r5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \im1|output[13]~6_combout\ : std_logic;
SIGNAL \IF_ID_INSTR1|Q[13]~feeder_combout\ : std_logic;
SIGNAL \ID_EX_RD9|Q[2]~feeder_combout\ : std_logic;
SIGNAL \im1|output[12]~4_combout\ : std_logic;
SIGNAL \IF_ID_INSTR1|Q[12]~feeder_combout\ : std_logic;
SIGNAL \ID_EX_RD9|Q[1]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM_RD18|Q[1]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB_RD31|Q[1]~feeder_combout\ : std_logic;
SIGNAL \im1|output[11]~5_combout\ : std_logic;
SIGNAL \IF_ID_INSTR1|Q[11]~feeder_combout\ : std_logic;
SIGNAL \ID_EX_RD9|Q[0]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM_RD18|Q[0]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB_RD31|Q[0]~feeder_combout\ : std_logic;
SIGNAL \im1|output[0]~3_combout\ : std_logic;
SIGNAL \IF_ID_INSTR1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \ID_EX_RD9|Q[3]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB_RD31|Q[3]~feeder_combout\ : std_logic;
SIGNAL \ID_EX_REGWRITE12|Q~0_combout\ : std_logic;
SIGNAL \ID_EX_REGWRITE12|Q~q\ : std_logic;
SIGNAL \EX_MEM_REGWRITE16|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM_REGWRITE16|Q~q\ : std_logic;
SIGNAL \MEM_WB_REGWRITE27|Q~0_combout\ : std_logic;
SIGNAL \MEM_WB_REGWRITE27|Q~feeder_combout\ : std_logic;
SIGNAL \MEM_WB_REGWRITE27|Q~q\ : std_logic;
SIGNAL \rf1|m5|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m5|stage3|f~1_combout\ : std_logic;
SIGNAL \rf1|m9|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m13|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|r9|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m9|stage3|f~1_combout\ : std_logic;
SIGNAL \rf1|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \im1|output[19]~0_combout\ : std_logic;
SIGNAL \rf1|value1[0]~2_combout\ : std_logic;
SIGNAL \rf1|value1[0]~3_combout\ : std_logic;
SIGNAL \rf1|r11|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m11|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m6|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf1|m15|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf1|r7|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m3|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|value1[0]~0_combout\ : std_logic;
SIGNAL \rf1|value1[0]~1_combout\ : std_logic;
SIGNAL \rf1|value1[0]~4_combout\ : std_logic;
SIGNAL \rf1|r12|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m12|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf1|m12|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf1|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|m4|stage3|f~1_combout\ : std_logic;
SIGNAL \rf1|m8|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf1|r8|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m8|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf1|value1[0]~5_combout\ : std_logic;
SIGNAL \rf1|value1[0]~6_combout\ : std_logic;
SIGNAL \rf1|r10|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m10|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf1|r14|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|r6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m6|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf1|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \rf1|value1[0]~7_combout\ : std_logic;
SIGNAL \rf1|value1[0]~8_combout\ : std_logic;
SIGNAL \ID_EX_SRC14|Q[0]~0_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage1|s~0_combout\ : std_logic;
SIGNAL \EX_MEM_SUM19|Q[0]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB_SUM30|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf1|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|r9|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[1]~11_combout\ : std_logic;
SIGNAL \rf1|value1[1]~12_combout\ : std_logic;
SIGNAL \rf1|m7|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \rf1|r11|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|r7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[1]~9_combout\ : std_logic;
SIGNAL \rf1|value1[1]~10_combout\ : std_logic;
SIGNAL \rf1|value1[1]~13_combout\ : std_logic;
SIGNAL \ID_EX_SRC25|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|r14|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|r10|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|r2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[1]~16_combout\ : std_logic;
SIGNAL \rf1|value1[1]~17_combout\ : std_logic;
SIGNAL \rf1|r12|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|r8|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[1]~14_combout\ : std_logic;
SIGNAL \rf1|value1[1]~15_combout\ : std_logic;
SIGNAL \ID_EX_SRC14|Q[1]~1_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage2|s~0_combout\ : std_logic;
SIGNAL \MEM_WB_SUM30|Q[1]~feeder_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf1|r5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|m9|stage3|f[2]~2_combout\ : std_logic;
SIGNAL \rf1|r9|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[2]~20_combout\ : std_logic;
SIGNAL \rf1|value1[2]~21_combout\ : std_logic;
SIGNAL \rf1|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|r11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|r7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[2]~18_combout\ : std_logic;
SIGNAL \rf1|value1[2]~19_combout\ : std_logic;
SIGNAL \rf1|value1[2]~22_combout\ : std_logic;
SIGNAL \rf1|r12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|r8|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[2]~23_combout\ : std_logic;
SIGNAL \rf1|value1[2]~24_combout\ : std_logic;
SIGNAL \rf1|r10|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|r14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|r6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[2]~25_combout\ : std_logic;
SIGNAL \rf1|value1[2]~26_combout\ : std_logic;
SIGNAL \ID_EX_SRC14|Q[2]~2_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage3|s~0_combout\ : std_logic;
SIGNAL \MEM_WB_SUM30|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf1|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf1|r12|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|r8|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[3]~27_combout\ : std_logic;
SIGNAL \rf1|value1[3]~28_combout\ : std_logic;
SIGNAL \rf1|r10|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|r14|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|r6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[3]~29_combout\ : std_logic;
SIGNAL \rf1|value1[3]~30_combout\ : std_logic;
SIGNAL \ID_EX_SRC14|Q[3]~3_combout\ : std_logic;
SIGNAL \rf1|r11|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|r7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[3]~31_combout\ : std_logic;
SIGNAL \rf1|value1[3]~32_combout\ : std_logic;
SIGNAL \rf1|m13|stage3|f[3]~1_combout\ : std_logic;
SIGNAL \rf1|r9|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf1|value1[3]~33_combout\ : std_logic;
SIGNAL \rf1|value1[3]~34_combout\ : std_logic;
SIGNAL \rf1|value1[3]~35_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage4|s~0_combout\ : std_logic;
SIGNAL \alu1|adder_subtractor1|stage4|s~combout\ : std_logic;
SIGNAL \MEM_WB_SUM30|Q[3]~feeder_combout\ : std_logic;
SIGNAL \pc1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_SRC14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB_SUM30|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IF_ID_INSTR1|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_MEM_SUM19|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_SRC25|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf1|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB_RD31|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM_RD18|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX_RD9|Q\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: LCCOMB_X110_Y40_N6
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

-- Location: FF_X110_Y40_N7
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

-- Location: LCCOMB_X110_Y40_N8
\addpc1|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc1|stage2|s~combout\ = \pc1|Q\(1) $ (\pc1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc1|Q\(1),
	datad => \pc1|Q\(0),
	combout => \addpc1|stage2|s~combout\);

-- Location: FF_X110_Y40_N9
\pc1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc1|stage2|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|Q\(1));

-- Location: LCCOMB_X110_Y40_N18
\addpc1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc1|stage3|s~combout\ = \pc1|Q\(2) $ (((\pc1|Q\(0) & \pc1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(0),
	datab => \pc1|Q\(1),
	datac => \pc1|Q\(2),
	combout => \addpc1|stage3|s~combout\);

-- Location: FF_X110_Y40_N19
\pc1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc1|stage3|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|Q\(2));

-- Location: LCCOMB_X110_Y40_N4
\addpc1|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc1|stage4|s~combout\ = \pc1|Q\(3) $ (((\pc1|Q\(0) & (\pc1|Q\(1) & \pc1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(0),
	datab => \pc1|Q\(1),
	datac => \pc1|Q\(3),
	datad => \pc1|Q\(2),
	combout => \addpc1|stage4|s~combout\);

-- Location: FF_X110_Y40_N5
\pc1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc1|stage4|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc1|Q\(3));

-- Location: LCCOMB_X110_Y40_N12
\im1|output[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[17]~2_combout\ = (\pc1|Q\(3)) # ((\pc1|Q\(0) & ((!\pc1|Q\(2)) # (!\pc1|Q\(1)))) # (!\pc1|Q\(0) & (\pc1|Q\(1) $ (!\pc1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(0),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(1),
	datad => \pc1|Q\(2),
	combout => \im1|output[17]~2_combout\);

-- Location: LCCOMB_X111_Y40_N22
\IF_ID_INSTR1|Q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_INSTR1|Q[17]~feeder_combout\ = \im1|output[17]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im1|output[17]~2_combout\,
	combout => \IF_ID_INSTR1|Q[17]~feeder_combout\);

-- Location: FF_X111_Y40_N23
\IF_ID_INSTR1|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_INSTR1|Q[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(17));

-- Location: LCCOMB_X111_Y37_N2
\im1|output[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[18]~1_combout\ = (\pc1|Q\(0) & (((\pc1|Q\(3)) # (!\pc1|Q\(1))))) # (!\pc1|Q\(0) & ((\pc1|Q\(2)) # (\pc1|Q\(3) $ (!\pc1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(2),
	datab => \pc1|Q\(0),
	datac => \pc1|Q\(3),
	datad => \pc1|Q\(1),
	combout => \im1|output[18]~1_combout\);

-- Location: FF_X111_Y37_N3
\IF_ID_INSTR1|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im1|output[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(18));

-- Location: LCCOMB_X111_Y40_N4
\rf1|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~0_combout\ = (!\reset~input_o\ & \MEM_WB_SUM30|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_SUM30|Q\(0),
	combout => \rf1|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X111_Y37_N12
\rf1|r5|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r5|Q[0]~feeder_combout\ = \rf1|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~0_combout\,
	combout => \rf1|r5|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y40_N16
\im1|output[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[13]~6_combout\ = (\pc1|Q\(2) & ((\pc1|Q\(3)) # (\pc1|Q\(0) $ (\pc1|Q\(1))))) # (!\pc1|Q\(2) & (\pc1|Q\(3) $ (((!\pc1|Q\(0) & !\pc1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(0),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(1),
	datad => \pc1|Q\(2),
	combout => \im1|output[13]~6_combout\);

-- Location: LCCOMB_X114_Y40_N20
\IF_ID_INSTR1|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_INSTR1|Q[13]~feeder_combout\ = \im1|output[13]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im1|output[13]~6_combout\,
	combout => \IF_ID_INSTR1|Q[13]~feeder_combout\);

-- Location: FF_X114_Y40_N21
\IF_ID_INSTR1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_INSTR1|Q[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(13));

-- Location: LCCOMB_X114_Y40_N26
\ID_EX_RD9|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_RD9|Q[2]~feeder_combout\ = \IF_ID_INSTR1|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID_INSTR1|Q\(13),
	combout => \ID_EX_RD9|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N27
\ID_EX_RD9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_RD9|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RD9|Q\(2));

-- Location: FF_X114_Y40_N9
\EX_MEM_RD18|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX_RD9|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RD18|Q\(2));

-- Location: FF_X113_Y37_N7
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

-- Location: LCCOMB_X110_Y40_N20
\im1|output[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[12]~4_combout\ = (\pc1|Q\(0) & ((\pc1|Q\(3)) # ((\pc1|Q\(1) & !\pc1|Q\(2))))) # (!\pc1|Q\(0) & ((\pc1|Q\(3) & ((\pc1|Q\(1)) # (\pc1|Q\(2)))) # (!\pc1|Q\(3) & (!\pc1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(0),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(1),
	datad => \pc1|Q\(2),
	combout => \im1|output[12]~4_combout\);

-- Location: LCCOMB_X114_Y40_N10
\IF_ID_INSTR1|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_INSTR1|Q[12]~feeder_combout\ = \im1|output[12]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im1|output[12]~4_combout\,
	combout => \IF_ID_INSTR1|Q[12]~feeder_combout\);

-- Location: FF_X114_Y40_N11
\IF_ID_INSTR1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_INSTR1|Q[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(12));

-- Location: LCCOMB_X114_Y40_N16
\ID_EX_RD9|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_RD9|Q[1]~feeder_combout\ = \IF_ID_INSTR1|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID_INSTR1|Q\(12),
	combout => \ID_EX_RD9|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N17
\ID_EX_RD9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_RD9|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RD9|Q\(1));

-- Location: LCCOMB_X114_Y40_N2
\EX_MEM_RD18|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM_RD18|Q[1]~feeder_combout\ = \ID_EX_RD9|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX_RD9|Q\(1),
	combout => \EX_MEM_RD18|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N3
\EX_MEM_RD18|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EX_MEM_RD18|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RD18|Q\(1));

-- Location: LCCOMB_X113_Y37_N4
\MEM_WB_RD31|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_RD31|Q[1]~feeder_combout\ = \EX_MEM_RD18|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_RD18|Q\(1),
	combout => \MEM_WB_RD31|Q[1]~feeder_combout\);

-- Location: FF_X113_Y37_N5
\MEM_WB_RD31|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_RD31|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RD31|Q\(1));

-- Location: LCCOMB_X110_Y40_N10
\im1|output[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[11]~5_combout\ = (\pc1|Q\(3)) # (!\pc1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc1|Q\(3),
	datad => \pc1|Q\(0),
	combout => \im1|output[11]~5_combout\);

-- Location: LCCOMB_X114_Y40_N28
\IF_ID_INSTR1|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_INSTR1|Q[11]~feeder_combout\ = \im1|output[11]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im1|output[11]~5_combout\,
	combout => \IF_ID_INSTR1|Q[11]~feeder_combout\);

-- Location: FF_X114_Y40_N29
\IF_ID_INSTR1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_INSTR1|Q[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(11));

-- Location: LCCOMB_X114_Y40_N22
\ID_EX_RD9|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_RD9|Q[0]~feeder_combout\ = \IF_ID_INSTR1|Q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID_INSTR1|Q\(11),
	combout => \ID_EX_RD9|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N23
\ID_EX_RD9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_RD9|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RD9|Q\(0));

-- Location: LCCOMB_X114_Y40_N30
\EX_MEM_RD18|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM_RD18|Q[0]~feeder_combout\ = \ID_EX_RD9|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX_RD9|Q\(0),
	combout => \EX_MEM_RD18|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N31
\EX_MEM_RD18|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EX_MEM_RD18|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RD18|Q\(0));

-- Location: LCCOMB_X113_Y37_N22
\MEM_WB_RD31|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_RD31|Q[0]~feeder_combout\ = \EX_MEM_RD18|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_RD18|Q\(0),
	combout => \MEM_WB_RD31|Q[0]~feeder_combout\);

-- Location: FF_X113_Y37_N23
\MEM_WB_RD31|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_RD31|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RD31|Q\(0));

-- Location: LCCOMB_X110_Y40_N26
\im1|output[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[0]~3_combout\ = \pc1|Q\(3) $ (((!\pc1|Q\(0) & (!\pc1|Q\(1) & !\pc1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(0),
	datab => \pc1|Q\(3),
	datac => \pc1|Q\(1),
	datad => \pc1|Q\(2),
	combout => \im1|output[0]~3_combout\);

-- Location: LCCOMB_X114_Y40_N24
\IF_ID_INSTR1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID_INSTR1|Q[0]~feeder_combout\ = \im1|output[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im1|output[0]~3_combout\,
	combout => \IF_ID_INSTR1|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N25
\IF_ID_INSTR1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID_INSTR1|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(0));

-- Location: LCCOMB_X114_Y40_N4
\ID_EX_RD9|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_RD9|Q[3]~feeder_combout\ = \IF_ID_INSTR1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID_INSTR1|Q\(0),
	combout => \ID_EX_RD9|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N5
\ID_EX_RD9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_RD9|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_RD9|Q\(3));

-- Location: FF_X114_Y40_N19
\EX_MEM_RD18|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX_RD9|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_RD18|Q\(3));

-- Location: LCCOMB_X113_Y37_N14
\MEM_WB_RD31|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_RD31|Q[3]~feeder_combout\ = \EX_MEM_RD18|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_RD18|Q\(3),
	combout => \MEM_WB_RD31|Q[3]~feeder_combout\);

-- Location: FF_X113_Y37_N15
\MEM_WB_RD31|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_RD31|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_RD31|Q\(3));

-- Location: LCCOMB_X114_Y40_N6
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

-- Location: FF_X114_Y40_N7
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

-- Location: LCCOMB_X114_Y40_N12
\EX_MEM_REGWRITE16|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM_REGWRITE16|Q~0_combout\ = (\ID_EX_REGWRITE12|Q~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX_REGWRITE12|Q~q\,
	datad => \reset~input_o\,
	combout => \EX_MEM_REGWRITE16|Q~0_combout\);

-- Location: FF_X114_Y40_N13
\EX_MEM_REGWRITE16|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EX_MEM_REGWRITE16|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_REGWRITE16|Q~q\);

-- Location: LCCOMB_X114_Y40_N18
\MEM_WB_REGWRITE27|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_REGWRITE27|Q~0_combout\ = (!\reset~input_o\ & \EX_MEM_REGWRITE16|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \EX_MEM_REGWRITE16|Q~q\,
	combout => \MEM_WB_REGWRITE27|Q~0_combout\);

-- Location: LCCOMB_X113_Y37_N28
\MEM_WB_REGWRITE27|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_REGWRITE27|Q~feeder_combout\ = \MEM_WB_REGWRITE27|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB_REGWRITE27|Q~0_combout\,
	combout => \MEM_WB_REGWRITE27|Q~feeder_combout\);

-- Location: FF_X113_Y37_N29
\MEM_WB_REGWRITE27|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_REGWRITE27|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_REGWRITE27|Q~q\);

-- Location: LCCOMB_X113_Y37_N8
\rf1|m5|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m5|stage3|f~0_combout\ = (\MEM_WB_RD31|Q\(0) & (!\MEM_WB_RD31|Q\(3) & \MEM_WB_REGWRITE27|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(0),
	datac => \MEM_WB_RD31|Q\(3),
	datad => \MEM_WB_REGWRITE27|Q~q\,
	combout => \rf1|m5|stage3|f~0_combout\);

-- Location: LCCOMB_X111_Y37_N24
\rf1|m5|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m5|stage3|f~1_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(2) & (!\MEM_WB_RD31|Q\(1) & \rf1|m5|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(2),
	datab => \reset~input_o\,
	datac => \MEM_WB_RD31|Q\(1),
	datad => \rf1|m5|stage3|f~0_combout\,
	combout => \rf1|m5|stage3|f~1_combout\);

-- Location: FF_X111_Y37_N13
\rf1|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r5|Q[0]~feeder_combout\,
	ena => \rf1|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r5|Q\(0));

-- Location: LCCOMB_X113_Y37_N16
\rf1|m9|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m9|stage3|f~0_combout\ = (\MEM_WB_RD31|Q\(0) & (\MEM_WB_REGWRITE27|Q~q\ & \MEM_WB_RD31|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(0),
	datab => \MEM_WB_REGWRITE27|Q~q\,
	datac => \MEM_WB_RD31|Q\(3),
	combout => \rf1|m9|stage3|f~0_combout\);

-- Location: LCCOMB_X110_Y37_N30
\rf1|m13|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m13|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(1) & (\MEM_WB_RD31|Q\(2) & \rf1|m9|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(1),
	datac => \MEM_WB_RD31|Q\(2),
	datad => \rf1|m9|stage3|f~0_combout\,
	combout => \rf1|m13|stage3|f~0_combout\);

-- Location: FF_X110_Y37_N27
\rf1|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf1|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r13|Q\(0));

-- Location: LCCOMB_X109_Y37_N28
\rf1|r9|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r9|Q[0]~feeder_combout\ = \rf1|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~0_combout\,
	combout => \rf1|r9|Q[0]~feeder_combout\);

-- Location: LCCOMB_X109_Y37_N16
\rf1|m9|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m9|stage3|f~1_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(1) & (!\MEM_WB_RD31|Q\(2) & \rf1|m9|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(1),
	datac => \MEM_WB_RD31|Q\(2),
	datad => \rf1|m9|stage3|f~0_combout\,
	combout => \rf1|m9|stage3|f~1_combout\);

-- Location: FF_X109_Y37_N29
\rf1|r9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r9|Q[0]~feeder_combout\,
	ena => \rf1|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r9|Q\(0));

-- Location: LCCOMB_X110_Y37_N28
\rf1|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m1|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(1) & (!\MEM_WB_RD31|Q\(2) & \rf1|m5|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(1),
	datac => \MEM_WB_RD31|Q\(2),
	datad => \rf1|m5|stage3|f~0_combout\,
	combout => \rf1|m1|stage3|f~0_combout\);

-- Location: FF_X110_Y37_N13
\rf1|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf1|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r1|Q\(0));

-- Location: LCCOMB_X111_Y37_N4
\im1|output[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im1|output[19]~0_combout\ = (\pc1|Q\(3)) # ((\pc1|Q\(2) & ((\pc1|Q\(0)) # (!\pc1|Q\(1)))) # (!\pc1|Q\(2) & ((\pc1|Q\(1)) # (!\pc1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc1|Q\(2),
	datab => \pc1|Q\(0),
	datac => \pc1|Q\(3),
	datad => \pc1|Q\(1),
	combout => \im1|output[19]~0_combout\);

-- Location: FF_X111_Y37_N5
\IF_ID_INSTR1|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im1|output[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID_INSTR1|Q\(19));

-- Location: LCCOMB_X110_Y37_N12
\rf1|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~2_combout\ = (\IF_ID_INSTR1|Q\(18) & (((\IF_ID_INSTR1|Q\(19))))) # (!\IF_ID_INSTR1|Q\(18) & ((\IF_ID_INSTR1|Q\(19) & (\rf1|r9|Q\(0))) # (!\IF_ID_INSTR1|Q\(19) & ((\rf1|r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r9|Q\(0),
	datac => \rf1|r1|Q\(0),
	datad => \IF_ID_INSTR1|Q\(19),
	combout => \rf1|value1[0]~2_combout\);

-- Location: LCCOMB_X110_Y37_N26
\rf1|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~3_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value1[0]~2_combout\ & ((\rf1|r13|Q\(0)))) # (!\rf1|value1[0]~2_combout\ & (\rf1|r5|Q\(0))))) # (!\IF_ID_INSTR1|Q\(18) & (((\rf1|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r5|Q\(0),
	datac => \rf1|r13|Q\(0),
	datad => \rf1|value1[0]~2_combout\,
	combout => \rf1|value1[0]~3_combout\);

-- Location: LCCOMB_X114_Y38_N4
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

-- Location: LCCOMB_X114_Y38_N12
\rf1|m11|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m11|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(1) & (\rf1|m9|stage3|f~0_combout\ & !\MEM_WB_RD31|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(1),
	datac => \rf1|m9|stage3|f~0_combout\,
	datad => \MEM_WB_RD31|Q\(2),
	combout => \rf1|m11|stage3|f~0_combout\);

-- Location: FF_X114_Y38_N5
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

-- Location: LCCOMB_X111_Y40_N10
\rf1|m6|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m6|stage3|f[0]~0_combout\ = (\reset~input_o\) # (\MEM_WB_SUM30|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_SUM30|Q\(0),
	combout => \rf1|m6|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X110_Y38_N30
\rf1|m15|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m15|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(2) & (\MEM_WB_RD31|Q\(1) & \rf1|m9|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(2),
	datac => \MEM_WB_RD31|Q\(1),
	datad => \rf1|m9|stage3|f~0_combout\,
	combout => \rf1|m15|stage3|f[0]~0_combout\);

-- Location: FF_X110_Y38_N23
\rf1|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m6|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf1|m15|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r15|Q\(0));

-- Location: LCCOMB_X114_Y38_N30
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

-- Location: LCCOMB_X114_Y38_N6
\rf1|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m7|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(1) & (\rf1|m5|stage3|f~0_combout\ & \MEM_WB_RD31|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(1),
	datac => \rf1|m5|stage3|f~0_combout\,
	datad => \MEM_WB_RD31|Q\(2),
	combout => \rf1|m7|stage3|f~0_combout\);

-- Location: FF_X114_Y38_N31
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

-- Location: LCCOMB_X110_Y38_N4
\rf1|m3|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m3|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(2) & (\MEM_WB_RD31|Q\(1) & \rf1|m5|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(2),
	datac => \MEM_WB_RD31|Q\(1),
	datad => \rf1|m5|stage3|f~0_combout\,
	combout => \rf1|m3|stage3|f~0_combout\);

-- Location: FF_X110_Y38_N29
\rf1|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf1|m3|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r3|Q\(0));

-- Location: LCCOMB_X110_Y38_N28
\rf1|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~0_combout\ = (\IF_ID_INSTR1|Q\(19) & (((\IF_ID_INSTR1|Q\(18))))) # (!\IF_ID_INSTR1|Q\(19) & ((\IF_ID_INSTR1|Q\(18) & (\rf1|r7|Q\(0))) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|r3|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r7|Q\(0),
	datac => \rf1|r3|Q\(0),
	datad => \IF_ID_INSTR1|Q\(18),
	combout => \rf1|value1[0]~0_combout\);

-- Location: LCCOMB_X110_Y38_N22
\rf1|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~1_combout\ = (\IF_ID_INSTR1|Q\(19) & ((\rf1|value1[0]~0_combout\ & ((\rf1|r15|Q\(0)))) # (!\rf1|value1[0]~0_combout\ & (\rf1|r11|Q\(0))))) # (!\IF_ID_INSTR1|Q\(19) & (((\rf1|value1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r11|Q\(0),
	datac => \rf1|r15|Q\(0),
	datad => \rf1|value1[0]~0_combout\,
	combout => \rf1|value1[0]~1_combout\);

-- Location: LCCOMB_X111_Y38_N26
\rf1|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~4_combout\ = (\IF_ID_INSTR1|Q\(17) & ((\rf1|value1[0]~1_combout\))) # (!\IF_ID_INSTR1|Q\(17) & (\rf1|value1[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(17),
	datac => \rf1|value1[0]~3_combout\,
	datad => \rf1|value1[0]~1_combout\,
	combout => \rf1|value1[0]~4_combout\);

-- Location: FF_X111_Y38_N27
\ID_EX_SRC25|Q[0]\ : dffeas
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
	q => \ID_EX_SRC25|Q\(0));

-- Location: LCCOMB_X112_Y40_N20
\rf1|r12|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r12|Q[0]~feeder_combout\ = \rf1|m6|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m6|stage3|f[0]~0_combout\,
	combout => \rf1|r12|Q[0]~feeder_combout\);

-- Location: LCCOMB_X113_Y37_N10
\rf1|m12|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m12|stage3|f[0]~0_combout\ = (!\MEM_WB_RD31|Q\(0) & (\MEM_WB_RD31|Q\(3) & \MEM_WB_REGWRITE27|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(0),
	datac => \MEM_WB_RD31|Q\(3),
	datad => \MEM_WB_REGWRITE27|Q~q\,
	combout => \rf1|m12|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X112_Y40_N12
\rf1|m12|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m12|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(2) & (\rf1|m12|stage3|f[0]~0_combout\ & !\MEM_WB_RD31|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(2),
	datab => \reset~input_o\,
	datac => \rf1|m12|stage3|f[0]~0_combout\,
	datad => \MEM_WB_RD31|Q\(1),
	combout => \rf1|m12|stage3|f[0]~1_combout\);

-- Location: FF_X112_Y40_N21
\rf1|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r12|Q[0]~feeder_combout\,
	ena => \rf1|m12|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r12|Q\(0));

-- Location: LCCOMB_X113_Y37_N26
\rf1|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m4|stage3|f~0_combout\ = (!\MEM_WB_RD31|Q\(0) & (\MEM_WB_REGWRITE27|Q~q\ & !\MEM_WB_RD31|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(0),
	datab => \MEM_WB_REGWRITE27|Q~q\,
	datac => \MEM_WB_RD31|Q\(3),
	combout => \rf1|m4|stage3|f~0_combout\);

-- Location: LCCOMB_X113_Y37_N24
\rf1|m4|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m4|stage3|f~1_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(1) & (\rf1|m4|stage3|f~0_combout\ & \MEM_WB_RD31|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(1),
	datac => \rf1|m4|stage3|f~0_combout\,
	datad => \MEM_WB_RD31|Q\(2),
	combout => \rf1|m4|stage3|f~1_combout\);

-- Location: FF_X112_Y37_N13
\rf1|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf1|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r4|Q\(0));

-- Location: LCCOMB_X113_Y37_N30
\rf1|m8|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m8|stage3|f[0]~0_combout\ = (!\MEM_WB_RD31|Q\(0) & (\MEM_WB_REGWRITE27|Q~q\ & (!\MEM_WB_RD31|Q\(1) & !\MEM_WB_RD31|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(0),
	datab => \MEM_WB_REGWRITE27|Q~q\,
	datac => \MEM_WB_RD31|Q\(1),
	datad => \MEM_WB_RD31|Q\(2),
	combout => \rf1|m8|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X113_Y37_N20
\rf1|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((\rf1|m8|stage3|f[0]~0_combout\ & !\MEM_WB_RD31|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|m8|stage3|f[0]~0_combout\,
	datab => \MEM_WB_RD31|Q\(3),
	datac => \reset~input_o\,
	combout => \rf1|m0|stage3|f~1_combout\);

-- Location: FF_X112_Y37_N3
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

-- Location: LCCOMB_X114_Y37_N8
\rf1|r8|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r8|Q[0]~feeder_combout\ = \rf1|m6|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m6|stage3|f[0]~0_combout\,
	combout => \rf1|r8|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y37_N28
\rf1|m8|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m8|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(3) & \rf1|m8|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(3),
	datac => \reset~input_o\,
	datad => \rf1|m8|stage3|f[0]~0_combout\,
	combout => \rf1|m8|stage3|f[0]~1_combout\);

-- Location: FF_X114_Y37_N9
\rf1|r8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r8|Q[0]~feeder_combout\,
	ena => \rf1|m8|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r8|Q\(0));

-- Location: LCCOMB_X112_Y37_N2
\rf1|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~5_combout\ = (\IF_ID_INSTR1|Q\(18) & (\IF_ID_INSTR1|Q\(19))) # (!\IF_ID_INSTR1|Q\(18) & ((\IF_ID_INSTR1|Q\(19) & ((\rf1|r8|Q\(0)))) # (!\IF_ID_INSTR1|Q\(19) & (\rf1|r0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \IF_ID_INSTR1|Q\(19),
	datac => \rf1|r0|Q\(0),
	datad => \rf1|r8|Q\(0),
	combout => \rf1|value1[0]~5_combout\);

-- Location: LCCOMB_X112_Y37_N12
\rf1|value1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~6_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value1[0]~5_combout\ & (\rf1|r12|Q\(0))) # (!\rf1|value1[0]~5_combout\ & ((\rf1|r4|Q\(0)))))) # (!\IF_ID_INSTR1|Q\(18) & (((\rf1|value1[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r12|Q\(0),
	datac => \rf1|r4|Q\(0),
	datad => \rf1|value1[0]~5_combout\,
	combout => \rf1|value1[0]~6_combout\);

-- Location: LCCOMB_X113_Y37_N0
\rf1|r10|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r10|Q[0]~feeder_combout\ = \rf1|m6|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m6|stage3|f[0]~0_combout\,
	combout => \rf1|r10|Q[0]~feeder_combout\);

-- Location: LCCOMB_X113_Y37_N6
\rf1|m10|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m10|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(1) & (!\MEM_WB_RD31|Q\(2) & \rf1|m12|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(1),
	datac => \MEM_WB_RD31|Q\(2),
	datad => \rf1|m12|stage3|f[0]~0_combout\,
	combout => \rf1|m10|stage3|f[0]~0_combout\);

-- Location: FF_X113_Y37_N1
\rf1|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r10|Q[0]~feeder_combout\,
	ena => \rf1|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r10|Q\(0));

-- Location: LCCOMB_X114_Y37_N10
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

-- Location: LCCOMB_X114_Y37_N2
\rf1|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m14|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(2) & (\MEM_WB_RD31|Q\(1) & \rf1|m12|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB_RD31|Q\(2),
	datab => \reset~input_o\,
	datac => \MEM_WB_RD31|Q\(1),
	datad => \rf1|m12|stage3|f[0]~0_combout\,
	combout => \rf1|m14|stage3|f~0_combout\);

-- Location: FF_X114_Y37_N11
\rf1|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r14|Q[0]~feeder_combout\,
	ena => \rf1|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r14|Q\(0));

-- Location: LCCOMB_X112_Y36_N16
\rf1|r6|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r6|Q[0]~feeder_combout\ = \rf1|m6|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m6|stage3|f[0]~0_combout\,
	combout => \rf1|r6|Q[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y36_N20
\rf1|m6|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m6|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB_RD31|Q\(2) & (\MEM_WB_RD31|Q\(1) & \rf1|m4|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(2),
	datac => \MEM_WB_RD31|Q\(1),
	datad => \rf1|m4|stage3|f~0_combout\,
	combout => \rf1|m6|stage3|f[0]~1_combout\);

-- Location: FF_X112_Y36_N17
\rf1|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r6|Q[0]~feeder_combout\,
	ena => \rf1|m6|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r6|Q\(0));

-- Location: LCCOMB_X112_Y36_N22
\rf1|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB_RD31|Q\(2) & (\MEM_WB_RD31|Q\(1) & \rf1|m4|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB_RD31|Q\(2),
	datac => \MEM_WB_RD31|Q\(1),
	datad => \rf1|m4|stage3|f~0_combout\,
	combout => \rf1|m2|stage3|f~0_combout\);

-- Location: FF_X112_Y36_N11
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
	ena => \rf1|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r2|Q\(0));

-- Location: LCCOMB_X112_Y36_N10
\rf1|value1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~7_combout\ = (\IF_ID_INSTR1|Q\(19) & (((\IF_ID_INSTR1|Q\(18))))) # (!\IF_ID_INSTR1|Q\(19) & ((\IF_ID_INSTR1|Q\(18) & (\rf1|r6|Q\(0))) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|r2|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r6|Q\(0),
	datac => \rf1|r2|Q\(0),
	datad => \IF_ID_INSTR1|Q\(18),
	combout => \rf1|value1[0]~7_combout\);

-- Location: LCCOMB_X112_Y36_N24
\rf1|value1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[0]~8_combout\ = (\IF_ID_INSTR1|Q\(19) & ((\rf1|value1[0]~7_combout\ & ((\rf1|r14|Q\(0)))) # (!\rf1|value1[0]~7_combout\ & (\rf1|r10|Q\(0))))) # (!\IF_ID_INSTR1|Q\(19) & (((\rf1|value1[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r10|Q\(0),
	datac => \rf1|r14|Q\(0),
	datad => \rf1|value1[0]~7_combout\,
	combout => \rf1|value1[0]~8_combout\);

-- Location: LCCOMB_X111_Y38_N28
\ID_EX_SRC14|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_SRC14|Q[0]~0_combout\ = (\IF_ID_INSTR1|Q\(17) & ((\rf1|value1[0]~8_combout\))) # (!\IF_ID_INSTR1|Q\(17) & (\rf1|value1[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(17),
	datab => \rf1|value1[0]~6_combout\,
	datad => \rf1|value1[0]~8_combout\,
	combout => \ID_EX_SRC14|Q[0]~0_combout\);

-- Location: FF_X111_Y38_N29
\ID_EX_SRC14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_SRC14|Q[0]~0_combout\,
	asdata => \rf1|value1[0]~4_combout\,
	sload => \IF_ID_INSTR1|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC14|Q\(0));

-- Location: LCCOMB_X111_Y38_N12
\alu1|adder_subtractor1|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage1|s~0_combout\ = \ID_EX_SRC25|Q\(0) $ (\ID_EX_SRC14|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX_SRC25|Q\(0),
	datad => \ID_EX_SRC14|Q\(0),
	combout => \alu1|adder_subtractor1|stage1|s~0_combout\);

-- Location: LCCOMB_X111_Y40_N18
\EX_MEM_SUM19|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM_SUM19|Q[0]~feeder_combout\ = \alu1|adder_subtractor1|stage1|s~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alu1|adder_subtractor1|stage1|s~0_combout\,
	combout => \EX_MEM_SUM19|Q[0]~feeder_combout\);

-- Location: FF_X111_Y40_N19
\EX_MEM_SUM19|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \EX_MEM_SUM19|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_SUM19|Q\(0));

-- Location: LCCOMB_X111_Y40_N0
\MEM_WB_SUM30|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_SUM30|Q[0]~feeder_combout\ = \EX_MEM_SUM19|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_SUM19|Q\(0),
	combout => \MEM_WB_SUM30|Q[0]~feeder_combout\);

-- Location: FF_X111_Y40_N1
\MEM_WB_SUM30|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_SUM30|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_SUM30|Q\(0));

-- Location: LCCOMB_X111_Y40_N14
\rf1|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~2_combout\ = (\MEM_WB_SUM30|Q\(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB_SUM30|Q\(1),
	datad => \reset~input_o\,
	combout => \rf1|m0|stage3|f~2_combout\);

-- Location: LCCOMB_X111_Y37_N26
\rf1|r5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r5|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r5|Q[1]~feeder_combout\);

-- Location: FF_X111_Y37_N27
\rf1|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r5|Q[1]~feeder_combout\,
	ena => \rf1|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r5|Q\(1));

-- Location: FF_X110_Y37_N3
\rf1|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf1|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r13|Q\(1));

-- Location: LCCOMB_X109_Y37_N18
\rf1|r9|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r9|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r9|Q[1]~feeder_combout\);

-- Location: FF_X109_Y37_N19
\rf1|r9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r9|Q[1]~feeder_combout\,
	ena => \rf1|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r9|Q\(1));

-- Location: FF_X110_Y37_N17
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
	ena => \rf1|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r1|Q\(1));

-- Location: LCCOMB_X110_Y37_N16
\rf1|value1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~11_combout\ = (\IF_ID_INSTR1|Q\(18) & (((\IF_ID_INSTR1|Q\(19))))) # (!\IF_ID_INSTR1|Q\(18) & ((\IF_ID_INSTR1|Q\(19) & (\rf1|r9|Q\(1))) # (!\IF_ID_INSTR1|Q\(19) & ((\rf1|r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r9|Q\(1),
	datac => \rf1|r1|Q\(1),
	datad => \IF_ID_INSTR1|Q\(19),
	combout => \rf1|value1[1]~11_combout\);

-- Location: LCCOMB_X110_Y37_N2
\rf1|value1[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~12_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value1[1]~11_combout\ & ((\rf1|r13|Q\(1)))) # (!\rf1|value1[1]~11_combout\ & (\rf1|r5|Q\(1))))) # (!\IF_ID_INSTR1|Q\(18) & (((\rf1|value1[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r5|Q\(1),
	datac => \rf1|r13|Q\(1),
	datad => \rf1|value1[1]~11_combout\,
	combout => \rf1|value1[1]~12_combout\);

-- Location: LCCOMB_X111_Y40_N12
\rf1|m7|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m7|stage3|f[1]~1_combout\ = (\MEM_WB_SUM30|Q\(1)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEM_WB_SUM30|Q\(1),
	datad => \reset~input_o\,
	combout => \rf1|m7|stage3|f[1]~1_combout\);

-- Location: LCCOMB_X114_Y38_N16
\rf1|r11|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r11|Q[1]~feeder_combout\ = \rf1|m7|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m7|stage3|f[1]~1_combout\,
	combout => \rf1|r11|Q[1]~feeder_combout\);

-- Location: FF_X114_Y38_N17
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

-- Location: FF_X110_Y38_N15
\rf1|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m7|stage3|f[1]~1_combout\,
	sload => VCC,
	ena => \rf1|m15|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r15|Q\(1));

-- Location: LCCOMB_X114_Y38_N18
\rf1|r7|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r7|Q[1]~feeder_combout\ = \rf1|m7|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m7|stage3|f[1]~1_combout\,
	combout => \rf1|r7|Q[1]~feeder_combout\);

-- Location: FF_X114_Y38_N19
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

-- Location: FF_X110_Y38_N13
\rf1|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf1|m3|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r3|Q\(1));

-- Location: LCCOMB_X110_Y38_N12
\rf1|value1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~9_combout\ = (\IF_ID_INSTR1|Q\(19) & (((\IF_ID_INSTR1|Q\(18))))) # (!\IF_ID_INSTR1|Q\(19) & ((\IF_ID_INSTR1|Q\(18) & (\rf1|r7|Q\(1))) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|r3|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r7|Q\(1),
	datac => \rf1|r3|Q\(1),
	datad => \IF_ID_INSTR1|Q\(18),
	combout => \rf1|value1[1]~9_combout\);

-- Location: LCCOMB_X110_Y38_N14
\rf1|value1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~10_combout\ = (\IF_ID_INSTR1|Q\(19) & ((\rf1|value1[1]~9_combout\ & ((\rf1|r15|Q\(1)))) # (!\rf1|value1[1]~9_combout\ & (\rf1|r11|Q\(1))))) # (!\IF_ID_INSTR1|Q\(19) & (((\rf1|value1[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r11|Q\(1),
	datac => \rf1|r15|Q\(1),
	datad => \rf1|value1[1]~9_combout\,
	combout => \rf1|value1[1]~10_combout\);

-- Location: LCCOMB_X111_Y38_N24
\rf1|value1[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~13_combout\ = (\IF_ID_INSTR1|Q\(17) & ((\rf1|value1[1]~10_combout\))) # (!\IF_ID_INSTR1|Q\(17) & (\rf1|value1[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(17),
	datac => \rf1|value1[1]~12_combout\,
	datad => \rf1|value1[1]~10_combout\,
	combout => \rf1|value1[1]~13_combout\);

-- Location: LCCOMB_X111_Y38_N30
\ID_EX_SRC25|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_SRC25|Q[1]~feeder_combout\ = \rf1|value1[1]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|value1[1]~13_combout\,
	combout => \ID_EX_SRC25|Q[1]~feeder_combout\);

-- Location: FF_X111_Y38_N31
\ID_EX_SRC25|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_SRC25|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC25|Q\(1));

-- Location: LCCOMB_X114_Y37_N14
\rf1|r14|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r14|Q[1]~feeder_combout\ = \rf1|m7|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m7|stage3|f[1]~1_combout\,
	combout => \rf1|r14|Q[1]~feeder_combout\);

-- Location: FF_X114_Y37_N15
\rf1|r14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r14|Q[1]~feeder_combout\,
	ena => \rf1|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r14|Q\(1));

-- Location: LCCOMB_X113_Y37_N18
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

-- Location: FF_X113_Y37_N19
\rf1|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r10|Q[1]~feeder_combout\,
	ena => \rf1|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r10|Q\(1));

-- Location: LCCOMB_X112_Y36_N4
\rf1|r2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r2|Q[1]~feeder_combout\ = \rf1|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~2_combout\,
	combout => \rf1|r2|Q[1]~feeder_combout\);

-- Location: FF_X112_Y36_N5
\rf1|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r2|Q[1]~feeder_combout\,
	ena => \rf1|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r2|Q\(1));

-- Location: FF_X112_Y36_N19
\rf1|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf1|m6|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r6|Q\(1));

-- Location: LCCOMB_X112_Y36_N18
\rf1|value1[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~16_combout\ = (\IF_ID_INSTR1|Q\(19) & (((\IF_ID_INSTR1|Q\(18))))) # (!\IF_ID_INSTR1|Q\(19) & ((\IF_ID_INSTR1|Q\(18) & ((\rf1|r6|Q\(1)))) # (!\IF_ID_INSTR1|Q\(18) & (\rf1|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r2|Q\(1),
	datac => \rf1|r6|Q\(1),
	datad => \IF_ID_INSTR1|Q\(18),
	combout => \rf1|value1[1]~16_combout\);

-- Location: LCCOMB_X112_Y36_N2
\rf1|value1[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~17_combout\ = (\IF_ID_INSTR1|Q\(19) & ((\rf1|value1[1]~16_combout\ & (\rf1|r14|Q\(1))) # (!\rf1|value1[1]~16_combout\ & ((\rf1|r10|Q\(1)))))) # (!\IF_ID_INSTR1|Q\(19) & (((\rf1|value1[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r14|Q\(1),
	datac => \rf1|r10|Q\(1),
	datad => \rf1|value1[1]~16_combout\,
	combout => \rf1|value1[1]~17_combout\);

-- Location: LCCOMB_X112_Y40_N14
\rf1|r12|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r12|Q[1]~feeder_combout\ = \rf1|m7|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m7|stage3|f[1]~1_combout\,
	combout => \rf1|r12|Q[1]~feeder_combout\);

-- Location: FF_X112_Y40_N15
\rf1|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r12|Q[1]~feeder_combout\,
	ena => \rf1|m12|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r12|Q\(1));

-- Location: FF_X112_Y37_N1
\rf1|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf1|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r4|Q\(1));

-- Location: FF_X112_Y37_N11
\rf1|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf1|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r0|Q\(1));

-- Location: LCCOMB_X114_Y37_N12
\rf1|r8|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r8|Q[1]~feeder_combout\ = \rf1|m7|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m7|stage3|f[1]~1_combout\,
	combout => \rf1|r8|Q[1]~feeder_combout\);

-- Location: FF_X114_Y37_N13
\rf1|r8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r8|Q[1]~feeder_combout\,
	ena => \rf1|m8|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r8|Q\(1));

-- Location: LCCOMB_X112_Y37_N10
\rf1|value1[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~14_combout\ = (\IF_ID_INSTR1|Q\(18) & (\IF_ID_INSTR1|Q\(19))) # (!\IF_ID_INSTR1|Q\(18) & ((\IF_ID_INSTR1|Q\(19) & ((\rf1|r8|Q\(1)))) # (!\IF_ID_INSTR1|Q\(19) & (\rf1|r0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \IF_ID_INSTR1|Q\(19),
	datac => \rf1|r0|Q\(1),
	datad => \rf1|r8|Q\(1),
	combout => \rf1|value1[1]~14_combout\);

-- Location: LCCOMB_X112_Y37_N0
\rf1|value1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[1]~15_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value1[1]~14_combout\ & (\rf1|r12|Q\(1))) # (!\rf1|value1[1]~14_combout\ & ((\rf1|r4|Q\(1)))))) # (!\IF_ID_INSTR1|Q\(18) & (((\rf1|value1[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r12|Q\(1),
	datac => \rf1|r4|Q\(1),
	datad => \rf1|value1[1]~14_combout\,
	combout => \rf1|value1[1]~15_combout\);

-- Location: LCCOMB_X111_Y38_N18
\ID_EX_SRC14|Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_SRC14|Q[1]~1_combout\ = (\IF_ID_INSTR1|Q\(17) & (\rf1|value1[1]~17_combout\)) # (!\IF_ID_INSTR1|Q\(17) & ((\rf1|value1[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(17),
	datab => \rf1|value1[1]~17_combout\,
	datad => \rf1|value1[1]~15_combout\,
	combout => \ID_EX_SRC14|Q[1]~1_combout\);

-- Location: FF_X111_Y38_N19
\ID_EX_SRC14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_SRC14|Q[1]~1_combout\,
	asdata => \rf1|value1[1]~13_combout\,
	sload => \IF_ID_INSTR1|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC14|Q\(1));

-- Location: LCCOMB_X111_Y38_N16
\alu1|adder_subtractor1|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage2|s~0_combout\ = \ID_EX_SRC25|Q\(1) $ (\ID_EX_SRC14|Q\(1) $ (((\ID_EX_SRC14|Q\(0) & \ID_EX_SRC25|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC25|Q\(1),
	datab => \ID_EX_SRC14|Q\(0),
	datac => \ID_EX_SRC25|Q\(0),
	datad => \ID_EX_SRC14|Q\(1),
	combout => \alu1|adder_subtractor1|stage2|s~0_combout\);

-- Location: FF_X111_Y38_N17
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

-- Location: LCCOMB_X111_Y40_N30
\MEM_WB_SUM30|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_SUM30|Q[1]~feeder_combout\ = \EX_MEM_SUM19|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_SUM19|Q\(1),
	combout => \MEM_WB_SUM30|Q[1]~feeder_combout\);

-- Location: FF_X111_Y40_N31
\MEM_WB_SUM30|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_SUM30|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_SUM30|Q\(1));

-- Location: LCCOMB_X111_Y38_N22
\alu1|adder_subtractor1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage2|Cout~0_combout\ = (\ID_EX_SRC25|Q\(1) & ((\ID_EX_SRC14|Q\(1)) # ((\ID_EX_SRC14|Q\(0) & \ID_EX_SRC25|Q\(0))))) # (!\ID_EX_SRC25|Q\(1) & (\ID_EX_SRC14|Q\(0) & (\ID_EX_SRC25|Q\(0) & \ID_EX_SRC14|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC25|Q\(1),
	datab => \ID_EX_SRC14|Q\(0),
	datac => \ID_EX_SRC25|Q\(0),
	datad => \ID_EX_SRC14|Q\(1),
	combout => \alu1|adder_subtractor1|stage2|Cout~0_combout\);

-- Location: LCCOMB_X111_Y40_N26
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

-- Location: LCCOMB_X111_Y37_N28
\rf1|r5|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r5|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r5|Q[2]~feeder_combout\);

-- Location: FF_X111_Y37_N29
\rf1|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r5|Q[2]~feeder_combout\,
	ena => \rf1|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r5|Q\(2));

-- Location: FF_X110_Y37_N11
\rf1|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf1|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r13|Q\(2));

-- Location: LCCOMB_X111_Y40_N28
\rf1|m9|stage3|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m9|stage3|f[2]~2_combout\ = (\reset~input_o\) # (\MEM_WB_SUM30|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB_SUM30|Q\(2),
	combout => \rf1|m9|stage3|f[2]~2_combout\);

-- Location: LCCOMB_X109_Y37_N24
\rf1|r9|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r9|Q[2]~feeder_combout\ = \rf1|m9|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m9|stage3|f[2]~2_combout\,
	combout => \rf1|r9|Q[2]~feeder_combout\);

-- Location: FF_X109_Y37_N25
\rf1|r9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r9|Q[2]~feeder_combout\,
	ena => \rf1|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r9|Q\(2));

-- Location: FF_X110_Y37_N25
\rf1|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf1|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r1|Q\(2));

-- Location: LCCOMB_X110_Y37_N24
\rf1|value1[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~20_combout\ = (\IF_ID_INSTR1|Q\(18) & (((\IF_ID_INSTR1|Q\(19))))) # (!\IF_ID_INSTR1|Q\(18) & ((\IF_ID_INSTR1|Q\(19) & (\rf1|r9|Q\(2))) # (!\IF_ID_INSTR1|Q\(19) & ((\rf1|r1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r9|Q\(2),
	datac => \rf1|r1|Q\(2),
	datad => \IF_ID_INSTR1|Q\(19),
	combout => \rf1|value1[2]~20_combout\);

-- Location: LCCOMB_X110_Y37_N10
\rf1|value1[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~21_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value1[2]~20_combout\ & ((\rf1|r13|Q\(2)))) # (!\rf1|value1[2]~20_combout\ & (\rf1|r5|Q\(2))))) # (!\IF_ID_INSTR1|Q\(18) & (((\rf1|value1[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r5|Q\(2),
	datac => \rf1|r13|Q\(2),
	datad => \rf1|value1[2]~20_combout\,
	combout => \rf1|value1[2]~21_combout\);

-- Location: LCCOMB_X110_Y38_N10
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

-- Location: FF_X110_Y38_N11
\rf1|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r15|Q[2]~feeder_combout\,
	ena => \rf1|m15|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r15|Q\(2));

-- Location: LCCOMB_X114_Y38_N24
\rf1|r11|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r11|Q[2]~feeder_combout\ = \rf1|m9|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m9|stage3|f[2]~2_combout\,
	combout => \rf1|r11|Q[2]~feeder_combout\);

-- Location: FF_X114_Y38_N25
\rf1|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r11|Q[2]~feeder_combout\,
	ena => \rf1|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r11|Q\(2));

-- Location: LCCOMB_X114_Y38_N26
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

-- Location: FF_X114_Y38_N27
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

-- Location: FF_X110_Y38_N21
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
	ena => \rf1|m3|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r3|Q\(2));

-- Location: LCCOMB_X110_Y38_N20
\rf1|value1[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~18_combout\ = (\IF_ID_INSTR1|Q\(19) & (((\IF_ID_INSTR1|Q\(18))))) # (!\IF_ID_INSTR1|Q\(19) & ((\IF_ID_INSTR1|Q\(18) & (\rf1|r7|Q\(2))) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|r3|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r7|Q\(2),
	datac => \rf1|r3|Q\(2),
	datad => \IF_ID_INSTR1|Q\(18),
	combout => \rf1|value1[2]~18_combout\);

-- Location: LCCOMB_X111_Y38_N6
\rf1|value1[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~19_combout\ = (\IF_ID_INSTR1|Q\(19) & ((\rf1|value1[2]~18_combout\ & (\rf1|r15|Q\(2))) # (!\rf1|value1[2]~18_combout\ & ((\rf1|r11|Q\(2)))))) # (!\IF_ID_INSTR1|Q\(19) & (((\rf1|value1[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r15|Q\(2),
	datac => \rf1|r11|Q\(2),
	datad => \rf1|value1[2]~18_combout\,
	combout => \rf1|value1[2]~19_combout\);

-- Location: LCCOMB_X111_Y38_N8
\rf1|value1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~22_combout\ = (\IF_ID_INSTR1|Q\(17) & ((\rf1|value1[2]~19_combout\))) # (!\IF_ID_INSTR1|Q\(17) & (\rf1|value1[2]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(17),
	datac => \rf1|value1[2]~21_combout\,
	datad => \rf1|value1[2]~19_combout\,
	combout => \rf1|value1[2]~22_combout\);

-- Location: FF_X111_Y38_N9
\ID_EX_SRC25|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value1[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC25|Q\(2));

-- Location: LCCOMB_X112_Y40_N28
\rf1|r12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r12|Q[2]~feeder_combout\ = \rf1|m9|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m9|stage3|f[2]~2_combout\,
	combout => \rf1|r12|Q[2]~feeder_combout\);

-- Location: FF_X112_Y40_N29
\rf1|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r12|Q[2]~feeder_combout\,
	ena => \rf1|m12|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r12|Q\(2));

-- Location: FF_X112_Y37_N29
\rf1|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf1|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r4|Q\(2));

-- Location: FF_X112_Y37_N7
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

-- Location: LCCOMB_X114_Y37_N24
\rf1|r8|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r8|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r8|Q[2]~feeder_combout\);

-- Location: FF_X114_Y37_N25
\rf1|r8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r8|Q[2]~feeder_combout\,
	ena => \rf1|m8|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r8|Q\(2));

-- Location: LCCOMB_X112_Y37_N6
\rf1|value1[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~23_combout\ = (\IF_ID_INSTR1|Q\(18) & (\IF_ID_INSTR1|Q\(19))) # (!\IF_ID_INSTR1|Q\(18) & ((\IF_ID_INSTR1|Q\(19) & ((\rf1|r8|Q\(2)))) # (!\IF_ID_INSTR1|Q\(19) & (\rf1|r0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \IF_ID_INSTR1|Q\(19),
	datac => \rf1|r0|Q\(2),
	datad => \rf1|r8|Q\(2),
	combout => \rf1|value1[2]~23_combout\);

-- Location: LCCOMB_X112_Y37_N28
\rf1|value1[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~24_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value1[2]~23_combout\ & (\rf1|r12|Q\(2))) # (!\rf1|value1[2]~23_combout\ & ((\rf1|r4|Q\(2)))))) # (!\IF_ID_INSTR1|Q\(18) & (((\rf1|value1[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r12|Q\(2),
	datac => \rf1|r4|Q\(2),
	datad => \rf1|value1[2]~23_combout\,
	combout => \rf1|value1[2]~24_combout\);

-- Location: LCCOMB_X113_Y37_N12
\rf1|r10|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r10|Q[2]~feeder_combout\ = \rf1|m9|stage3|f[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m9|stage3|f[2]~2_combout\,
	combout => \rf1|r10|Q[2]~feeder_combout\);

-- Location: FF_X113_Y37_N13
\rf1|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r10|Q[2]~feeder_combout\,
	ena => \rf1|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r10|Q\(2));

-- Location: LCCOMB_X114_Y37_N18
\rf1|r14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r14|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r14|Q[2]~feeder_combout\);

-- Location: FF_X114_Y37_N19
\rf1|r14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r14|Q[2]~feeder_combout\,
	ena => \rf1|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r14|Q\(2));

-- Location: LCCOMB_X112_Y36_N28
\rf1|r6|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r6|Q[2]~feeder_combout\ = \rf1|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~3_combout\,
	combout => \rf1|r6|Q[2]~feeder_combout\);

-- Location: FF_X112_Y36_N29
\rf1|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r6|Q[2]~feeder_combout\,
	ena => \rf1|m6|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r6|Q\(2));

-- Location: FF_X112_Y36_N7
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
	ena => \rf1|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r2|Q\(2));

-- Location: LCCOMB_X112_Y36_N6
\rf1|value1[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~25_combout\ = (\IF_ID_INSTR1|Q\(19) & (((\IF_ID_INSTR1|Q\(18))))) # (!\IF_ID_INSTR1|Q\(19) & ((\IF_ID_INSTR1|Q\(18) & (\rf1|r6|Q\(2))) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|r2|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r6|Q\(2),
	datac => \rf1|r2|Q\(2),
	datad => \IF_ID_INSTR1|Q\(18),
	combout => \rf1|value1[2]~25_combout\);

-- Location: LCCOMB_X111_Y38_N20
\rf1|value1[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[2]~26_combout\ = (\IF_ID_INSTR1|Q\(19) & ((\rf1|value1[2]~25_combout\ & ((\rf1|r14|Q\(2)))) # (!\rf1|value1[2]~25_combout\ & (\rf1|r10|Q\(2))))) # (!\IF_ID_INSTR1|Q\(19) & (((\rf1|value1[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r10|Q\(2),
	datab => \IF_ID_INSTR1|Q\(19),
	datac => \rf1|r14|Q\(2),
	datad => \rf1|value1[2]~25_combout\,
	combout => \rf1|value1[2]~26_combout\);

-- Location: LCCOMB_X111_Y38_N0
\ID_EX_SRC14|Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_SRC14|Q[2]~2_combout\ = (\IF_ID_INSTR1|Q\(17) & ((\rf1|value1[2]~26_combout\))) # (!\IF_ID_INSTR1|Q\(17) & (\rf1|value1[2]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(17),
	datab => \rf1|value1[2]~24_combout\,
	datad => \rf1|value1[2]~26_combout\,
	combout => \ID_EX_SRC14|Q[2]~2_combout\);

-- Location: FF_X111_Y38_N1
\ID_EX_SRC14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_SRC14|Q[2]~2_combout\,
	asdata => \rf1|value1[2]~22_combout\,
	sload => \IF_ID_INSTR1|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC14|Q\(2));

-- Location: LCCOMB_X111_Y40_N24
\alu1|adder_subtractor1|stage3|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage3|s~0_combout\ = \alu1|adder_subtractor1|stage2|Cout~0_combout\ $ (\ID_EX_SRC25|Q\(2) $ (\ID_EX_SRC14|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder_subtractor1|stage2|Cout~0_combout\,
	datac => \ID_EX_SRC25|Q\(2),
	datad => \ID_EX_SRC14|Q\(2),
	combout => \alu1|adder_subtractor1|stage3|s~0_combout\);

-- Location: FF_X111_Y40_N25
\EX_MEM_SUM19|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu1|adder_subtractor1|stage3|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_SUM19|Q\(2));

-- Location: LCCOMB_X111_Y40_N20
\MEM_WB_SUM30|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_SUM30|Q[2]~feeder_combout\ = \EX_MEM_SUM19|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM_SUM19|Q\(2),
	combout => \MEM_WB_SUM30|Q[2]~feeder_combout\);

-- Location: FF_X111_Y40_N21
\MEM_WB_SUM30|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_SUM30|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB_SUM30|Q\(2));

-- Location: LCCOMB_X114_Y40_N8
\rf1|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m0|stage3|f~4_combout\ = (!\reset~input_o\ & \MEM_WB_SUM30|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \MEM_WB_SUM30|Q\(3),
	combout => \rf1|m0|stage3|f~4_combout\);

-- Location: LCCOMB_X112_Y40_N6
\rf1|r12|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r12|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r12|Q[3]~feeder_combout\);

-- Location: FF_X112_Y40_N7
\rf1|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r12|Q[3]~feeder_combout\,
	ena => \rf1|m12|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r12|Q\(3));

-- Location: FF_X112_Y37_N21
\rf1|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r4|Q\(3));

-- Location: FF_X112_Y37_N19
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

-- Location: LCCOMB_X114_Y37_N20
\rf1|r8|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r8|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r8|Q[3]~feeder_combout\);

-- Location: FF_X114_Y37_N21
\rf1|r8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r8|Q[3]~feeder_combout\,
	ena => \rf1|m8|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r8|Q\(3));

-- Location: LCCOMB_X112_Y37_N18
\rf1|value1[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~27_combout\ = (\IF_ID_INSTR1|Q\(18) & (\IF_ID_INSTR1|Q\(19))) # (!\IF_ID_INSTR1|Q\(18) & ((\IF_ID_INSTR1|Q\(19) & ((\rf1|r8|Q\(3)))) # (!\IF_ID_INSTR1|Q\(19) & (\rf1|r0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \IF_ID_INSTR1|Q\(19),
	datac => \rf1|r0|Q\(3),
	datad => \rf1|r8|Q\(3),
	combout => \rf1|value1[3]~27_combout\);

-- Location: LCCOMB_X112_Y37_N20
\rf1|value1[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~28_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value1[3]~27_combout\ & (\rf1|r12|Q\(3))) # (!\rf1|value1[3]~27_combout\ & ((\rf1|r4|Q\(3)))))) # (!\IF_ID_INSTR1|Q\(18) & (((\rf1|value1[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r12|Q\(3),
	datac => \rf1|r4|Q\(3),
	datad => \rf1|value1[3]~27_combout\,
	combout => \rf1|value1[3]~28_combout\);

-- Location: LCCOMB_X113_Y37_N2
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

-- Location: FF_X113_Y37_N3
\rf1|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r10|Q[3]~feeder_combout\,
	ena => \rf1|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r10|Q\(3));

-- Location: LCCOMB_X114_Y37_N22
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

-- Location: FF_X114_Y37_N23
\rf1|r14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r14|Q[3]~feeder_combout\,
	ena => \rf1|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r14|Q\(3));

-- Location: LCCOMB_X112_Y36_N0
\rf1|r6|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r6|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r6|Q[3]~feeder_combout\);

-- Location: FF_X112_Y36_N1
\rf1|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r6|Q[3]~feeder_combout\,
	ena => \rf1|m6|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r6|Q\(3));

-- Location: FF_X112_Y36_N27
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
	ena => \rf1|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r2|Q\(3));

-- Location: LCCOMB_X112_Y36_N26
\rf1|value1[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~29_combout\ = (\IF_ID_INSTR1|Q\(19) & (((\IF_ID_INSTR1|Q\(18))))) # (!\IF_ID_INSTR1|Q\(19) & ((\IF_ID_INSTR1|Q\(18) & (\rf1|r6|Q\(3))) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|r2|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r6|Q\(3),
	datac => \rf1|r2|Q\(3),
	datad => \IF_ID_INSTR1|Q\(18),
	combout => \rf1|value1[3]~29_combout\);

-- Location: LCCOMB_X111_Y38_N2
\rf1|value1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~30_combout\ = (\IF_ID_INSTR1|Q\(19) & ((\rf1|value1[3]~29_combout\ & ((\rf1|r14|Q\(3)))) # (!\rf1|value1[3]~29_combout\ & (\rf1|r10|Q\(3))))) # (!\IF_ID_INSTR1|Q\(19) & (((\rf1|value1[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r10|Q\(3),
	datab => \IF_ID_INSTR1|Q\(19),
	datac => \rf1|r14|Q\(3),
	datad => \rf1|value1[3]~29_combout\,
	combout => \rf1|value1[3]~30_combout\);

-- Location: LCCOMB_X111_Y38_N10
\ID_EX_SRC14|Q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX_SRC14|Q[3]~3_combout\ = (\IF_ID_INSTR1|Q\(17) & ((\rf1|value1[3]~30_combout\))) # (!\IF_ID_INSTR1|Q\(17) & (\rf1|value1[3]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(17),
	datab => \rf1|value1[3]~28_combout\,
	datad => \rf1|value1[3]~30_combout\,
	combout => \ID_EX_SRC14|Q[3]~3_combout\);

-- Location: LCCOMB_X114_Y38_N0
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

-- Location: FF_X114_Y38_N1
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

-- Location: FF_X110_Y38_N7
\rf1|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m15|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r15|Q\(3));

-- Location: LCCOMB_X114_Y38_N14
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

-- Location: FF_X114_Y38_N15
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

-- Location: FF_X110_Y38_N25
\rf1|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m3|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r3|Q\(3));

-- Location: LCCOMB_X110_Y38_N24
\rf1|value1[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~31_combout\ = (\IF_ID_INSTR1|Q\(19) & (((\IF_ID_INSTR1|Q\(18))))) # (!\IF_ID_INSTR1|Q\(19) & ((\IF_ID_INSTR1|Q\(18) & (\rf1|r7|Q\(3))) # (!\IF_ID_INSTR1|Q\(18) & ((\rf1|r3|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r7|Q\(3),
	datac => \rf1|r3|Q\(3),
	datad => \IF_ID_INSTR1|Q\(18),
	combout => \rf1|value1[3]~31_combout\);

-- Location: LCCOMB_X110_Y38_N6
\rf1|value1[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~32_combout\ = (\IF_ID_INSTR1|Q\(19) & ((\rf1|value1[3]~31_combout\ & ((\rf1|r15|Q\(3)))) # (!\rf1|value1[3]~31_combout\ & (\rf1|r11|Q\(3))))) # (!\IF_ID_INSTR1|Q\(19) & (((\rf1|value1[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(19),
	datab => \rf1|r11|Q\(3),
	datac => \rf1|r15|Q\(3),
	datad => \rf1|value1[3]~31_combout\,
	combout => \rf1|value1[3]~32_combout\);

-- Location: LCCOMB_X110_Y37_N6
\rf1|m13|stage3|f[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|m13|stage3|f[3]~1_combout\ = (\reset~input_o\) # (\MEM_WB_SUM30|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB_SUM30|Q\(3),
	combout => \rf1|m13|stage3|f[3]~1_combout\);

-- Location: FF_X110_Y37_N7
\rf1|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|m13|stage3|f[3]~1_combout\,
	ena => \rf1|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r13|Q\(3));

-- Location: FF_X111_Y37_N31
\rf1|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf1|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf1|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r5|Q\(3));

-- Location: LCCOMB_X109_Y37_N6
\rf1|r9|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|r9|Q[3]~feeder_combout\ = \rf1|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf1|m0|stage3|f~4_combout\,
	combout => \rf1|r9|Q[3]~feeder_combout\);

-- Location: FF_X109_Y37_N7
\rf1|r9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|r9|Q[3]~feeder_combout\,
	ena => \rf1|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r9|Q\(3));

-- Location: FF_X110_Y37_N21
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
	ena => \rf1|m1|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf1|r1|Q\(3));

-- Location: LCCOMB_X110_Y37_N20
\rf1|value1[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~33_combout\ = (\IF_ID_INSTR1|Q\(18) & (((\IF_ID_INSTR1|Q\(19))))) # (!\IF_ID_INSTR1|Q\(18) & ((\IF_ID_INSTR1|Q\(19) & (\rf1|r9|Q\(3))) # (!\IF_ID_INSTR1|Q\(19) & ((\rf1|r1|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(18),
	datab => \rf1|r9|Q\(3),
	datac => \rf1|r1|Q\(3),
	datad => \IF_ID_INSTR1|Q\(19),
	combout => \rf1|value1[3]~33_combout\);

-- Location: LCCOMB_X111_Y37_N30
\rf1|value1[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~34_combout\ = (\IF_ID_INSTR1|Q\(18) & ((\rf1|value1[3]~33_combout\ & (\rf1|r13|Q\(3))) # (!\rf1|value1[3]~33_combout\ & ((\rf1|r5|Q\(3)))))) # (!\IF_ID_INSTR1|Q\(18) & (((\rf1|value1[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf1|r13|Q\(3),
	datab => \IF_ID_INSTR1|Q\(18),
	datac => \rf1|r5|Q\(3),
	datad => \rf1|value1[3]~33_combout\,
	combout => \rf1|value1[3]~34_combout\);

-- Location: LCCOMB_X111_Y38_N4
\rf1|value1[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf1|value1[3]~35_combout\ = (\IF_ID_INSTR1|Q\(17) & (\rf1|value1[3]~32_combout\)) # (!\IF_ID_INSTR1|Q\(17) & ((\rf1|value1[3]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID_INSTR1|Q\(17),
	datac => \rf1|value1[3]~32_combout\,
	datad => \rf1|value1[3]~34_combout\,
	combout => \rf1|value1[3]~35_combout\);

-- Location: FF_X111_Y38_N11
\ID_EX_SRC14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX_SRC14|Q[3]~3_combout\,
	asdata => \rf1|value1[3]~35_combout\,
	sload => \IF_ID_INSTR1|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC14|Q\(3));

-- Location: FF_X111_Y38_N5
\ID_EX_SRC25|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf1|value1[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX_SRC25|Q\(3));

-- Location: LCCOMB_X111_Y38_N14
\alu1|adder_subtractor1|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage4|s~0_combout\ = \ID_EX_SRC25|Q\(3) $ (((\ID_EX_SRC25|Q\(2) & ((\alu1|adder_subtractor1|stage2|Cout~0_combout\) # (\ID_EX_SRC14|Q\(2)))) # (!\ID_EX_SRC25|Q\(2) & (\alu1|adder_subtractor1|stage2|Cout~0_combout\ & 
-- \ID_EX_SRC14|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX_SRC25|Q\(2),
	datab => \ID_EX_SRC25|Q\(3),
	datac => \alu1|adder_subtractor1|stage2|Cout~0_combout\,
	datad => \ID_EX_SRC14|Q\(2),
	combout => \alu1|adder_subtractor1|stage4|s~0_combout\);

-- Location: LCCOMB_X114_Y40_N14
\alu1|adder_subtractor1|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder_subtractor1|stage4|s~combout\ = \ID_EX_SRC14|Q\(3) $ (\alu1|adder_subtractor1|stage4|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX_SRC14|Q\(3),
	datad => \alu1|adder_subtractor1|stage4|s~0_combout\,
	combout => \alu1|adder_subtractor1|stage4|s~combout\);

-- Location: FF_X114_Y40_N15
\EX_MEM_SUM19|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu1|adder_subtractor1|stage4|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM_SUM19|Q\(3));

-- Location: LCCOMB_X114_Y40_N0
\MEM_WB_SUM30|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB_SUM30|Q[3]~feeder_combout\ = \EX_MEM_SUM19|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EX_MEM_SUM19|Q\(3),
	combout => \MEM_WB_SUM30|Q[3]~feeder_combout\);

-- Location: FF_X114_Y40_N1
\MEM_WB_SUM30|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MEM_WB_SUM30|Q[3]~feeder_combout\,
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


