-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.1 Build 150 06/03/2015 SJ Full Version"

-- DATE "04/10/2016 23:21:28"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mirror_spi_driver IS
    PORT (
	master_clk : IN std_logic;
	s_clk : IN std_logic;
	ss : IN std_logic;
	datain : IN std_logic;
	ssOut : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mirror_spi_driver;

-- Design Ports Information
-- ssOut[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_clk	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mirror_spi_driver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_master_clk : std_logic;
SIGNAL ww_s_clk : std_logic;
SIGNAL ww_ss : std_logic;
SIGNAL ww_datain : std_logic;
SIGNAL ww_ssOut : std_logic_vector(6 DOWNTO 0);
SIGNAL \master_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ssOut[0]~output_o\ : std_logic;
SIGNAL \ssOut[1]~output_o\ : std_logic;
SIGNAL \ssOut[2]~output_o\ : std_logic;
SIGNAL \ssOut[3]~output_o\ : std_logic;
SIGNAL \ssOut[4]~output_o\ : std_logic;
SIGNAL \ssOut[5]~output_o\ : std_logic;
SIGNAL \ssOut[6]~output_o\ : std_logic;
SIGNAL \master_clk~input_o\ : std_logic;
SIGNAL \master_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ss~input_o\ : std_logic;
SIGNAL \datain~input_o\ : std_logic;
SIGNAL \datainr[1]~feeder_combout\ : std_logic;
SIGNAL \byte_builder~0_combout\ : std_logic;
SIGNAL \s_clk~input_o\ : std_logic;
SIGNAL \byte_builder[7]~1_combout\ : std_logic;
SIGNAL \byte_builder~7_combout\ : std_logic;
SIGNAL \byte_builder~6_combout\ : std_logic;
SIGNAL \byte_builder~8_combout\ : std_logic;
SIGNAL \byte_builder~2_combout\ : std_logic;
SIGNAL \WideOr14~2_combout\ : std_logic;
SIGNAL \WideOr14~1_combout\ : std_logic;
SIGNAL \byte_builder~3_combout\ : std_logic;
SIGNAL \byte_builder~5_combout\ : std_logic;
SIGNAL \byte_builder~4_combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr14~3_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr14~4_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~1clkctrl_outclk\ : std_logic;
SIGNAL \ssOut[0]$latch~combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr12~1_combout\ : std_logic;
SIGNAL \WideOr12~2_combout\ : std_logic;
SIGNAL \WideOr12~3_combout\ : std_logic;
SIGNAL \ssOut[1]$latch~combout\ : std_logic;
SIGNAL \WideOr10~3_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr10~1_combout\ : std_logic;
SIGNAL \WideOr10~2_combout\ : std_logic;
SIGNAL \WideOr10~4_combout\ : std_logic;
SIGNAL \ssOut[2]$latch~combout\ : std_logic;
SIGNAL \WideOr8~1_combout\ : std_logic;
SIGNAL \WideOr8~2_combout\ : std_logic;
SIGNAL \WideOr8~3_combout\ : std_logic;
SIGNAL \WideOr8~4_combout\ : std_logic;
SIGNAL \ssOut[3]$latch~combout\ : std_logic;
SIGNAL \WideOr6~2_combout\ : std_logic;
SIGNAL \WideOr6~3_combout\ : std_logic;
SIGNAL \WideOr6~4_combout\ : std_logic;
SIGNAL \WideOr6~5_combout\ : std_logic;
SIGNAL \ssOut[4]$latch~combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~3_combout\ : std_logic;
SIGNAL \ssOut[5]$latch~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~2_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~3_combout\ : std_logic;
SIGNAL \ssOut[6]$latch~combout\ : std_logic;
SIGNAL s_clkr : std_logic_vector(2 DOWNTO 0);
SIGNAL ssr : std_logic_vector(2 DOWNTO 0);
SIGNAL datainr : std_logic_vector(1 DOWNTO 0);
SIGNAL byte_builder : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_master_clk <= master_clk;
ww_s_clk <= s_clk;
ww_ss <= ss;
ww_datain <= datain;
ssOut <= ww_ssOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\master_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_clk~input_o\);

\WideOr0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \WideOr0~1_combout\);

-- Location: IOOBUF_X69_Y73_N23
\ssOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssOut[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ssOut[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\ssOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssOut[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ssOut[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\ssOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssOut[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ssOut[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\ssOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssOut[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ssOut[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\ssOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssOut[4]$latch~combout\,
	devoe => ww_devoe,
	o => \ssOut[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\ssOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssOut[5]$latch~combout\,
	devoe => ww_devoe,
	o => \ssOut[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\ssOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssOut[6]$latch~combout\,
	devoe => ww_devoe,
	o => \ssOut[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\master_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_master_clk,
	o => \master_clk~input_o\);

-- Location: CLKCTRL_G4
\master_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \master_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \master_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X109_Y0_N8
\ss~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ss,
	o => \ss~input_o\);

-- Location: FF_X98_Y66_N9
\ssr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \ss~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ssr(0));

-- Location: FF_X98_Y66_N25
\ssr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => ssr(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ssr(1));

-- Location: IOIBUF_X60_Y0_N22
\datain~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain,
	o => \datain~input_o\);

-- Location: FF_X94_Y66_N19
\datainr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \datain~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datainr(0));

-- Location: LCCOMB_X94_Y66_N24
\datainr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datainr[1]~feeder_combout\ = datainr(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => datainr(0),
	combout => \datainr[1]~feeder_combout\);

-- Location: FF_X94_Y66_N25
\datainr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \datainr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datainr(1));

-- Location: LCCOMB_X98_Y66_N14
\byte_builder~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder~0_combout\ = (!ssr(1) & datainr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ssr(1),
	datad => datainr(1),
	combout => \byte_builder~0_combout\);

-- Location: IOIBUF_X98_Y73_N15
\s_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_clk,
	o => \s_clk~input_o\);

-- Location: FF_X98_Y66_N27
\s_clkr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \s_clk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clkr(0));

-- Location: FF_X98_Y66_N31
\s_clkr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => s_clkr(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clkr(1));

-- Location: FF_X98_Y66_N17
\s_clkr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => s_clkr(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clkr(2));

-- Location: LCCOMB_X98_Y66_N26
\byte_builder[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder[7]~1_combout\ = (ssr(1)) # ((s_clkr(1) & !s_clkr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_clkr(1),
	datab => s_clkr(2),
	datad => ssr(1),
	combout => \byte_builder[7]~1_combout\);

-- Location: FF_X98_Y66_N15
\byte_builder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \byte_builder~0_combout\,
	ena => \byte_builder[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(0));

-- Location: LCCOMB_X98_Y66_N6
\byte_builder~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder~7_combout\ = (byte_builder(0) & !ssr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_builder(0),
	datad => ssr(1),
	combout => \byte_builder~7_combout\);

-- Location: FF_X98_Y66_N7
\byte_builder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \byte_builder~7_combout\,
	ena => \byte_builder[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(1));

-- Location: LCCOMB_X97_Y66_N30
\byte_builder~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder~6_combout\ = (!ssr(1) & byte_builder(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ssr(1),
	datad => byte_builder(1),
	combout => \byte_builder~6_combout\);

-- Location: FF_X97_Y66_N31
\byte_builder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~input_o\,
	d => \byte_builder~6_combout\,
	ena => \byte_builder[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(2));

-- Location: LCCOMB_X97_Y66_N12
\byte_builder~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder~8_combout\ = (!ssr(1) & byte_builder(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ssr(1),
	datad => byte_builder(2),
	combout => \byte_builder~8_combout\);

-- Location: FF_X97_Y66_N13
\byte_builder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~input_o\,
	d => \byte_builder~8_combout\,
	ena => \byte_builder[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(3));

-- Location: LCCOMB_X97_Y66_N16
\byte_builder~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder~2_combout\ = (byte_builder(3) & !ssr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(3),
	datad => ssr(1),
	combout => \byte_builder~2_combout\);

-- Location: FF_X97_Y66_N17
\byte_builder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~input_o\,
	d => \byte_builder~2_combout\,
	ena => \byte_builder[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(4));

-- Location: LCCOMB_X96_Y66_N14
\WideOr14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr14~2_combout\ = (byte_builder(1) & (byte_builder(4) & (byte_builder(2) $ (byte_builder(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(4),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \WideOr14~2_combout\);

-- Location: LCCOMB_X96_Y66_N0
\WideOr14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr14~1_combout\ = (byte_builder(3) & ((byte_builder(1) & ((!byte_builder(2)))) # (!byte_builder(1) & (!byte_builder(4) & byte_builder(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(4),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \WideOr14~1_combout\);

-- Location: LCCOMB_X97_Y66_N2
\byte_builder~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder~3_combout\ = (byte_builder(4) & !ssr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_builder(4),
	datad => ssr(1),
	combout => \byte_builder~3_combout\);

-- Location: FF_X97_Y66_N3
\byte_builder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~input_o\,
	d => \byte_builder~3_combout\,
	ena => \byte_builder[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(5));

-- Location: LCCOMB_X97_Y66_N8
\byte_builder~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder~5_combout\ = (byte_builder(5) & !ssr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_builder(5),
	datad => ssr(1),
	combout => \byte_builder~5_combout\);

-- Location: FF_X97_Y66_N9
\byte_builder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~input_o\,
	d => \byte_builder~5_combout\,
	ena => \byte_builder[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(6));

-- Location: LCCOMB_X97_Y66_N10
\byte_builder~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder~4_combout\ = (!ssr(1) & byte_builder(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ssr(1),
	datad => byte_builder(6),
	combout => \byte_builder~4_combout\);

-- Location: FF_X97_Y66_N11
\byte_builder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~input_o\,
	d => \byte_builder~4_combout\,
	ena => \byte_builder[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(7));

-- Location: LCCOMB_X97_Y66_N6
\WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (byte_builder(6) & (!byte_builder(4))) # (!byte_builder(6) & ((byte_builder(7) & (!byte_builder(4))) # (!byte_builder(7) & ((byte_builder(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(4),
	datab => byte_builder(5),
	datac => byte_builder(6),
	datad => byte_builder(7),
	combout => \WideOr14~0_combout\);

-- Location: LCCOMB_X96_Y66_N12
\WideOr14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr14~3_combout\ = (\WideOr14~2_combout\ & (\WideOr14~0_combout\ & (byte_builder(0) $ (\WideOr14~1_combout\)))) # (!\WideOr14~2_combout\ & (byte_builder(0) & (\WideOr14~1_combout\ & !\WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => \WideOr14~2_combout\,
	datac => \WideOr14~1_combout\,
	datad => \WideOr14~0_combout\,
	combout => \WideOr14~3_combout\);

-- Location: LCCOMB_X97_Y66_N26
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (byte_builder(3) & (((!byte_builder(4)) # (!byte_builder(2))))) # (!byte_builder(3) & (byte_builder(1) & (byte_builder(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(3),
	datac => byte_builder(2),
	datad => byte_builder(4),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X97_Y66_N24
\WideOr14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr14~4_combout\ = (!byte_builder(6) & !byte_builder(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_builder(6),
	datad => byte_builder(7),
	combout => \WideOr14~4_combout\);

-- Location: LCCOMB_X97_Y66_N22
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\WideOr0~0_combout\ & (\WideOr14~4_combout\ & (byte_builder(5) $ (!byte_builder(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => byte_builder(5),
	datac => \WideOr14~4_combout\,
	datad => byte_builder(4),
	combout => \WideOr0~1_combout\);

-- Location: CLKCTRL_G14
\WideOr0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr0~1clkctrl_outclk\);

-- Location: LCCOMB_X96_Y66_N28
\ssOut[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssOut[0]$latch~combout\ = (GLOBAL(\WideOr0~1clkctrl_outclk\) & (\WideOr14~3_combout\)) # (!GLOBAL(\WideOr0~1clkctrl_outclk\) & ((\ssOut[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~3_combout\,
	datac => \WideOr0~1clkctrl_outclk\,
	datad => \ssOut[0]$latch~combout\,
	combout => \ssOut[0]$latch~combout\);

-- Location: LCCOMB_X98_Y66_N0
\WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (byte_builder(1) & ((byte_builder(0)) # (byte_builder(4) $ (byte_builder(5))))) # (!byte_builder(1) & ((byte_builder(4) $ (byte_builder(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(0),
	datac => byte_builder(4),
	datad => byte_builder(5),
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X98_Y66_N22
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (!byte_builder(1) & (byte_builder(0) & (!byte_builder(4) & !byte_builder(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(0),
	datac => byte_builder(4),
	datad => byte_builder(5),
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X98_Y66_N2
\WideOr12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~1_combout\ = (byte_builder(1) & ((byte_builder(4) & ((byte_builder(5)))) # (!byte_builder(4) & (byte_builder(0) & !byte_builder(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(0),
	datac => byte_builder(4),
	datad => byte_builder(5),
	combout => \WideOr12~1_combout\);

-- Location: LCCOMB_X98_Y66_N10
\WideOr12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~2_combout\ = (byte_builder(3) & (!\WideOr8~0_combout\ & ((byte_builder(2))))) # (!byte_builder(3) & (((!byte_builder(2)) # (!\WideOr12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~0_combout\,
	datab => byte_builder(3),
	datac => \WideOr12~1_combout\,
	datad => byte_builder(2),
	combout => \WideOr12~2_combout\);

-- Location: LCCOMB_X98_Y66_N18
\WideOr12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~3_combout\ = (\WideOr12~2_combout\) # (((\WideOr12~0_combout\ & !byte_builder(2))) # (!\WideOr14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr12~0_combout\,
	datab => byte_builder(2),
	datac => \WideOr12~2_combout\,
	datad => \WideOr14~4_combout\,
	combout => \WideOr12~3_combout\);

-- Location: LCCOMB_X98_Y66_N16
\ssOut[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssOut[1]$latch~combout\ = (GLOBAL(\WideOr0~1clkctrl_outclk\) & (\WideOr12~3_combout\)) # (!GLOBAL(\WideOr0~1clkctrl_outclk\) & ((\ssOut[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr12~3_combout\,
	datab => \ssOut[1]$latch~combout\,
	datad => \WideOr0~1clkctrl_outclk\,
	combout => \ssOut[1]$latch~combout\);

-- Location: LCCOMB_X96_Y66_N10
\WideOr10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~3_combout\ = (!byte_builder(2) & (!byte_builder(1) & (byte_builder(4) & byte_builder(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(2),
	datab => byte_builder(1),
	datac => byte_builder(4),
	datad => byte_builder(5),
	combout => \WideOr10~3_combout\);

-- Location: LCCOMB_X96_Y66_N18
\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (byte_builder(3) & (!byte_builder(0) & (!byte_builder(6) & !byte_builder(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(3),
	datab => byte_builder(0),
	datac => byte_builder(6),
	datad => byte_builder(7),
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X96_Y66_N24
\WideOr10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~1_combout\ = (byte_builder(2) & (!byte_builder(5) & ((byte_builder(1)) # (!byte_builder(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(5),
	combout => \WideOr10~1_combout\);

-- Location: LCCOMB_X97_Y66_N28
\WideOr10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~2_combout\ = (!byte_builder(6) & (byte_builder(3) & (!byte_builder(4) & !byte_builder(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(6),
	datab => byte_builder(3),
	datac => byte_builder(4),
	datad => byte_builder(7),
	combout => \WideOr10~2_combout\);

-- Location: LCCOMB_X96_Y66_N8
\WideOr10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~4_combout\ = (\WideOr10~3_combout\ & ((\WideOr10~0_combout\) # ((\WideOr10~1_combout\ & \WideOr10~2_combout\)))) # (!\WideOr10~3_combout\ & (((\WideOr10~1_combout\ & \WideOr10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~3_combout\,
	datab => \WideOr10~0_combout\,
	datac => \WideOr10~1_combout\,
	datad => \WideOr10~2_combout\,
	combout => \WideOr10~4_combout\);

-- Location: LCCOMB_X96_Y66_N2
\ssOut[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssOut[2]$latch~combout\ = (GLOBAL(\WideOr0~1clkctrl_outclk\) & (\WideOr10~4_combout\)) # (!GLOBAL(\WideOr0~1clkctrl_outclk\) & ((\ssOut[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr10~4_combout\,
	datac => \WideOr0~1clkctrl_outclk\,
	datad => \ssOut[2]$latch~combout\,
	combout => \ssOut[2]$latch~combout\);

-- Location: LCCOMB_X98_Y66_N8
\WideOr8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~1_combout\ = (\WideOr8~0_combout\ & (!byte_builder(7) & !byte_builder(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~0_combout\,
	datab => byte_builder(7),
	datad => byte_builder(6),
	combout => \WideOr8~1_combout\);

-- Location: LCCOMB_X97_Y66_N20
\WideOr8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~2_combout\ = (byte_builder(1) & (\WideOr14~4_combout\ & (byte_builder(4) $ (!byte_builder(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(4),
	datac => byte_builder(5),
	datad => \WideOr14~4_combout\,
	combout => \WideOr8~2_combout\);

-- Location: LCCOMB_X97_Y66_N18
\WideOr8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~3_combout\ = (byte_builder(2) & (byte_builder(0) & ((\WideOr8~2_combout\)))) # (!byte_builder(2) & ((\WideOr8~1_combout\) # ((!byte_builder(0) & \WideOr8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => \WideOr8~1_combout\,
	datac => byte_builder(2),
	datad => \WideOr8~2_combout\,
	combout => \WideOr8~3_combout\);

-- Location: LCCOMB_X97_Y66_N4
\WideOr8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~4_combout\ = (\WideOr8~3_combout\ & ((byte_builder(2) & ((!byte_builder(3)) # (!byte_builder(5)))) # (!byte_builder(2) & ((byte_builder(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~3_combout\,
	datab => byte_builder(5),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \WideOr8~4_combout\);

-- Location: LCCOMB_X97_Y66_N14
\ssOut[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssOut[3]$latch~combout\ = (GLOBAL(\WideOr0~1clkctrl_outclk\) & (\WideOr8~4_combout\)) # (!GLOBAL(\WideOr0~1clkctrl_outclk\) & ((\ssOut[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr8~4_combout\,
	datac => \ssOut[3]$latch~combout\,
	datad => \WideOr0~1clkctrl_outclk\,
	combout => \ssOut[3]$latch~combout\);

-- Location: LCCOMB_X98_Y66_N12
\WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~2_combout\ = (byte_builder(0)) # ((byte_builder(3) & ((byte_builder(2)))) # (!byte_builder(3) & ((!byte_builder(2)) # (!byte_builder(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(3),
	datab => byte_builder(0),
	datac => byte_builder(1),
	datad => byte_builder(2),
	combout => \WideOr6~2_combout\);

-- Location: LCCOMB_X98_Y66_N24
\WideOr6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~3_combout\ = ((!byte_builder(1) & !byte_builder(2))) # (!byte_builder(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(2),
	datad => byte_builder(3),
	combout => \WideOr6~3_combout\);

-- Location: LCCOMB_X98_Y66_N28
\WideOr6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~4_combout\ = (byte_builder(4) & ((\WideOr6~2_combout\) # ((!byte_builder(5))))) # (!byte_builder(4) & ((byte_builder(5)) # ((\WideOr6~2_combout\ & \WideOr6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(4),
	datab => \WideOr6~2_combout\,
	datac => \WideOr6~3_combout\,
	datad => byte_builder(5),
	combout => \WideOr6~4_combout\);

-- Location: LCCOMB_X98_Y66_N30
\WideOr6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~5_combout\ = (byte_builder(6)) # ((byte_builder(7)) # (\WideOr6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(6),
	datab => byte_builder(7),
	datad => \WideOr6~4_combout\,
	combout => \WideOr6~5_combout\);

-- Location: LCCOMB_X98_Y66_N4
\ssOut[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssOut[4]$latch~combout\ = (GLOBAL(\WideOr0~1clkctrl_outclk\) & ((\WideOr6~5_combout\))) # (!GLOBAL(\WideOr0~1clkctrl_outclk\) & (\ssOut[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssOut[4]$latch~combout\,
	datac => \WideOr6~5_combout\,
	datad => \WideOr0~1clkctrl_outclk\,
	combout => \ssOut[4]$latch~combout\);

-- Location: LCCOMB_X99_Y66_N4
\WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (byte_builder(2) & (byte_builder(0) & (byte_builder(1) & !byte_builder(3)))) # (!byte_builder(2) & (byte_builder(3) & ((!byte_builder(1)) # (!byte_builder(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X99_Y66_N18
\WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (byte_builder(0) & (byte_builder(2) & (byte_builder(1) $ (byte_builder(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X98_Y66_N20
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!byte_builder(6) & (!byte_builder(7) & (byte_builder(4) $ (!byte_builder(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(6),
	datab => byte_builder(7),
	datac => byte_builder(4),
	datad => byte_builder(5),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X99_Y66_N16
\WideOr4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~3_combout\ = (\WideOr4~0_combout\ & ((byte_builder(5) & (\WideOr4~1_combout\)) # (!byte_builder(5) & ((\WideOr4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(5),
	datab => \WideOr4~1_combout\,
	datac => \WideOr4~2_combout\,
	datad => \WideOr4~0_combout\,
	combout => \WideOr4~3_combout\);

-- Location: LCCOMB_X99_Y66_N14
\ssOut[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssOut[5]$latch~combout\ = (GLOBAL(\WideOr0~1clkctrl_outclk\) & ((\WideOr4~3_combout\))) # (!GLOBAL(\WideOr0~1clkctrl_outclk\) & (\ssOut[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ssOut[5]$latch~combout\,
	datac => \WideOr4~3_combout\,
	datad => \WideOr0~1clkctrl_outclk\,
	combout => \ssOut[5]$latch~combout\);

-- Location: LCCOMB_X96_Y66_N22
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!byte_builder(3) & ((byte_builder(4) & ((byte_builder(5)))) # (!byte_builder(4) & (byte_builder(0) & !byte_builder(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(4),
	datab => byte_builder(0),
	datac => byte_builder(5),
	datad => byte_builder(3),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X96_Y66_N16
\WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~2_combout\ = (byte_builder(1) & (byte_builder(4) & (!byte_builder(2) & byte_builder(5)))) # (!byte_builder(1) & (!byte_builder(4) & (byte_builder(2) & !byte_builder(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(4),
	datac => byte_builder(2),
	datad => byte_builder(5),
	combout => \WideOr2~2_combout\);

-- Location: LCCOMB_X97_Y66_N0
\WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (byte_builder(2) & (!byte_builder(6) & (byte_builder(1) & !byte_builder(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(2),
	datab => byte_builder(6),
	datac => byte_builder(1),
	datad => byte_builder(7),
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X96_Y66_N6
\WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~3_combout\ = (\WideOr2~0_combout\ & ((\WideOr2~1_combout\) # ((\WideOr2~2_combout\ & \WideOr10~0_combout\)))) # (!\WideOr2~0_combout\ & (\WideOr2~2_combout\ & ((\WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \WideOr2~2_combout\,
	datac => \WideOr2~1_combout\,
	datad => \WideOr10~0_combout\,
	combout => \WideOr2~3_combout\);

-- Location: LCCOMB_X96_Y66_N20
\ssOut[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssOut[6]$latch~combout\ = (GLOBAL(\WideOr0~1clkctrl_outclk\) & (\WideOr2~3_combout\)) # (!GLOBAL(\WideOr0~1clkctrl_outclk\) & ((\ssOut[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr2~3_combout\,
	datac => \WideOr0~1clkctrl_outclk\,
	datad => \ssOut[6]$latch~combout\,
	combout => \ssOut[6]$latch~combout\);

ww_ssOut(0) <= \ssOut[0]~output_o\;

ww_ssOut(1) <= \ssOut[1]~output_o\;

ww_ssOut(2) <= \ssOut[2]~output_o\;

ww_ssOut(3) <= \ssOut[3]~output_o\;

ww_ssOut(4) <= \ssOut[4]~output_o\;

ww_ssOut(5) <= \ssOut[5]~output_o\;

ww_ssOut(6) <= \ssOut[6]~output_o\;
END structure;


