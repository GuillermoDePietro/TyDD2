-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/19/2023 21:39:54"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sum IS
    PORT (
	in_a : IN std_logic;
	in_b : IN std_logic;
	in_c : IN std_logic;
	clk : IN std_logic;
	o_s : OUT std_logic;
	o_ca : OUT std_logic
	);
END sum;

-- Design Ports Information
-- o_s	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ca	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_c	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sum IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_a : std_logic;
SIGNAL ww_in_b : std_logic;
SIGNAL ww_in_c : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_o_s : std_logic;
SIGNAL ww_o_ca : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D3|Q~q\ : std_logic;
SIGNAL \in_c~input_o\ : std_logic;
SIGNAL \o_s~output_o\ : std_logic;
SIGNAL \o_ca~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_b~input_o\ : std_logic;
SIGNAL \D2|Q~feeder_combout\ : std_logic;
SIGNAL \D2|Q~q\ : std_logic;
SIGNAL \in_a~input_o\ : std_logic;
SIGNAL \D1|Q~feeder_combout\ : std_logic;
SIGNAL \D1|Q~q\ : std_logic;
SIGNAL \s~0_combout\ : std_logic;
SIGNAL \D4|Q~q\ : std_logic;
SIGNAL \ca~0_combout\ : std_logic;
SIGNAL \D5|Q~q\ : std_logic;

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_c <= in_c;
ww_clk <= clk;
o_s <= ww_o_s;
o_ca <= ww_o_ca;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X84_Y1_N13
\D3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_c~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|Q~q\);

-- Location: IOIBUF_X81_Y0_N22
\in_c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_c,
	o => \in_c~input_o\);

-- Location: IOOBUF_X85_Y0_N23
\o_s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Q~q\,
	devoe => ww_devoe,
	o => \o_s~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\o_ca~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D5|Q~q\,
	devoe => ww_devoe,
	o => \o_ca~output_o\);

-- Location: IOIBUF_X58_Y0_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X85_Y0_N8
\in_b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b,
	o => \in_b~input_o\);

-- Location: LCCOMB_X84_Y1_N10
\D2|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2|Q~feeder_combout\ = \in_b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_b~input_o\,
	combout => \D2|Q~feeder_combout\);

-- Location: FF_X84_Y1_N11
\D2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D2|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|Q~q\);

-- Location: IOIBUF_X56_Y0_N22
\in_a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a,
	o => \in_a~input_o\);

-- Location: LCCOMB_X84_Y1_N28
\D1|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1|Q~feeder_combout\ = \in_a~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_a~input_o\,
	combout => \D1|Q~feeder_combout\);

-- Location: FF_X84_Y1_N29
\D1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D1|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|Q~q\);

-- Location: LCCOMB_X84_Y1_N24
\s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s~0_combout\ = \D3|Q~q\ $ (\D2|Q~q\ $ (\D1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Q~q\,
	datac => \D2|Q~q\,
	datad => \D1|Q~q\,
	combout => \s~0_combout\);

-- Location: FF_X84_Y1_N25
\D4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D4|Q~q\);

-- Location: LCCOMB_X84_Y1_N18
\ca~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ca~0_combout\ = (\D3|Q~q\ & ((\D1|Q~q\) # (\D2|Q~q\))) # (!\D3|Q~q\ & (\D1|Q~q\ & \D2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3|Q~q\,
	datab => \D1|Q~q\,
	datad => \D2|Q~q\,
	combout => \ca~0_combout\);

-- Location: FF_X84_Y1_N19
\D5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ca~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D5|Q~q\);

ww_o_s <= \o_s~output_o\;

ww_o_ca <= \o_ca~output_o\;
END structure;


