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

-- DATE "03/30/2016 15:07:39"

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

ENTITY 	VGA_controller IS
    PORT (
	power : IN std_logic;
	master_clk : IN std_logic;
	data : IN std_logic;
	DAC_clk : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_hSync : OUT std_logic;
	VGA_vSync : OUT std_logic;
	blank_n : OUT std_logic
	);
END VGA_controller;

-- Design Ports Information
-- power	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DAC_clk	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_hSync	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_vSync	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blank_n	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- master_clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_power : std_logic;
SIGNAL ww_master_clk : std_logic;
SIGNAL ww_data : std_logic;
SIGNAL ww_DAC_clk : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_hSync : std_logic;
SIGNAL ww_VGA_vSync : std_logic;
SIGNAL ww_blank_n : std_logic;
SIGNAL \master_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divider1|VGA_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \power~input_o\ : std_logic;
SIGNAL \data~input_o\ : std_logic;
SIGNAL \DAC_clk~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \VGA_hSync~output_o\ : std_logic;
SIGNAL \VGA_vSync~output_o\ : std_logic;
SIGNAL \blank_n~output_o\ : std_logic;
SIGNAL \master_clk~input_o\ : std_logic;
SIGNAL \master_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \divider1|q~0_combout\ : std_logic;
SIGNAL \divider1|q~q\ : std_logic;
SIGNAL \divider1|VGA_clk~feeder_combout\ : std_logic;
SIGNAL \divider1|VGA_clk~q\ : std_logic;
SIGNAL \divider1|VGA_clk~clkctrl_outclk\ : std_logic;
SIGNAL \vga1|Add0~0_combout\ : std_logic;
SIGNAL \vga1|Equal0~0_combout\ : std_logic;
SIGNAL \vga1|Add0~1\ : std_logic;
SIGNAL \vga1|Add0~2_combout\ : std_logic;
SIGNAL \vga1|xPixel~1_combout\ : std_logic;
SIGNAL \vga1|Add0~3\ : std_logic;
SIGNAL \vga1|Add0~4_combout\ : std_logic;
SIGNAL \vga1|Add0~5\ : std_logic;
SIGNAL \vga1|Add0~7\ : std_logic;
SIGNAL \vga1|Add0~8_combout\ : std_logic;
SIGNAL \vga1|xPixel~4_combout\ : std_logic;
SIGNAL \vga1|Add0~9\ : std_logic;
SIGNAL \vga1|Add0~10_combout\ : std_logic;
SIGNAL \vga1|Add0~11\ : std_logic;
SIGNAL \vga1|Add0~12_combout\ : std_logic;
SIGNAL \vga1|Equal0~1_combout\ : std_logic;
SIGNAL \vga1|Add0~13\ : std_logic;
SIGNAL \vga1|Add0~14_combout\ : std_logic;
SIGNAL \vga1|Add0~15\ : std_logic;
SIGNAL \vga1|Add0~16_combout\ : std_logic;
SIGNAL \vga1|xPixel~2_combout\ : std_logic;
SIGNAL \vga1|Add0~17\ : std_logic;
SIGNAL \vga1|Add0~18_combout\ : std_logic;
SIGNAL \vga1|xPixel~3_combout\ : std_logic;
SIGNAL \vga1|Equal0~2_combout\ : std_logic;
SIGNAL \vga1|Equal0~3_combout\ : std_logic;
SIGNAL \vga1|Add0~6_combout\ : std_logic;
SIGNAL \vga1|xPixel~0_combout\ : std_logic;
SIGNAL \R~6_combout\ : std_logic;
SIGNAL \vga1|Add1~0_combout\ : std_logic;
SIGNAL \vga1|Equal0~4_combout\ : std_logic;
SIGNAL \vga1|Add1~1\ : std_logic;
SIGNAL \vga1|Add1~2_combout\ : std_logic;
SIGNAL \vga1|Add1~13\ : std_logic;
SIGNAL \vga1|Add1~14_combout\ : std_logic;
SIGNAL \vga1|Add1~15\ : std_logic;
SIGNAL \vga1|Add1~16_combout\ : std_logic;
SIGNAL \vga1|Add1~17\ : std_logic;
SIGNAL \vga1|Add1~18_combout\ : std_logic;
SIGNAL \vga1|yPixel~3_combout\ : std_logic;
SIGNAL \vga1|Equal1~1_combout\ : std_logic;
SIGNAL \vga1|Equal1~0_combout\ : std_logic;
SIGNAL \vga1|Equal1~2_combout\ : std_logic;
SIGNAL \vga1|yPixel~0_combout\ : std_logic;
SIGNAL \vga1|Add1~3\ : std_logic;
SIGNAL \vga1|Add1~4_combout\ : std_logic;
SIGNAL \vga1|yPixel~1_combout\ : std_logic;
SIGNAL \vga1|Add1~5\ : std_logic;
SIGNAL \vga1|Add1~6_combout\ : std_logic;
SIGNAL \vga1|yPixel~2_combout\ : std_logic;
SIGNAL \vga1|Add1~7\ : std_logic;
SIGNAL \vga1|Add1~8_combout\ : std_logic;
SIGNAL \vga1|Add1~9\ : std_logic;
SIGNAL \vga1|Add1~10_combout\ : std_logic;
SIGNAL \vga1|Add1~11\ : std_logic;
SIGNAL \vga1|Add1~12_combout\ : std_logic;
SIGNAL \vga1|LessThan1~0_combout\ : std_logic;
SIGNAL \vga1|display_area~0_combout\ : std_logic;
SIGNAL \vga1|display_area~1_combout\ : std_logic;
SIGNAL \vga1|display_area~q\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \R~1_combout\ : std_logic;
SIGNAL \R~3_combout\ : std_logic;
SIGNAL \R~2_combout\ : std_logic;
SIGNAL \R~4_combout\ : std_logic;
SIGNAL \R~5_combout\ : std_logic;
SIGNAL \R~7_combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \VGA_R[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \VGA_R[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \VGA_R[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \VGA_R[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \VGA_R[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \VGA_G[0]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[0]~reg0_q\ : std_logic;
SIGNAL \VGA_G[1]~reg0_q\ : std_logic;
SIGNAL \VGA_G[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[2]~reg0_q\ : std_logic;
SIGNAL \VGA_G[3]~reg0_q\ : std_logic;
SIGNAL \VGA_G[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[4]~reg0_q\ : std_logic;
SIGNAL \VGA_G[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[5]~reg0_q\ : std_logic;
SIGNAL \VGA_G[6]~reg0_q\ : std_logic;
SIGNAL \VGA_G[7]~reg0_q\ : std_logic;
SIGNAL \VGA_B[0]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[0]~reg0_q\ : std_logic;
SIGNAL \VGA_B[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[1]~reg0_q\ : std_logic;
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL \vga1|ph_sync~0_combout\ : std_logic;
SIGNAL \vga1|ph_sync~1_combout\ : std_logic;
SIGNAL \vga1|ph_sync~2_combout\ : std_logic;
SIGNAL \vga1|ph_sync~3_combout\ : std_logic;
SIGNAL \vga1|ph_sync~q\ : std_logic;
SIGNAL \vga1|pv_sync~0_combout\ : std_logic;
SIGNAL \vga1|pv_sync~1_combout\ : std_logic;
SIGNAL \vga1|pv_sync~q\ : std_logic;
SIGNAL \vga1|yPixel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga1|xPixel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga1|ALT_INV_pv_sync~q\ : std_logic;
SIGNAL \vga1|ALT_INV_ph_sync~q\ : std_logic;

BEGIN

ww_power <= power;
ww_master_clk <= master_clk;
ww_data <= data;
DAC_clk <= ww_DAC_clk;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_hSync <= ww_VGA_hSync;
VGA_vSync <= ww_VGA_vSync;
blank_n <= ww_blank_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\master_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_clk~input_o\);

\divider1|VGA_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divider1|VGA_clk~q\);
\vga1|ALT_INV_pv_sync~q\ <= NOT \vga1|pv_sync~q\;
\vga1|ALT_INV_ph_sync~q\ <= NOT \vga1|ph_sync~q\;

-- Location: IOOBUF_X47_Y73_N2
\DAC_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divider1|VGA_clk~q\,
	devoe => ww_devoe,
	o => \DAC_clk~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_hSync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga1|ALT_INV_ph_sync~q\,
	devoe => ww_devoe,
	o => \VGA_hSync~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_vSync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga1|ALT_INV_pv_sync~q\,
	devoe => ww_devoe,
	o => \VGA_vSync~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\blank_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga1|display_area~q\,
	devoe => ww_devoe,
	o => \blank_n~output_o\);

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

-- Location: LCCOMB_X56_Y72_N18
\divider1|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider1|q~0_combout\ = !\divider1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider1|q~q\,
	combout => \divider1|q~0_combout\);

-- Location: FF_X56_Y72_N19
\divider1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \divider1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider1|q~q\);

-- Location: LCCOMB_X56_Y72_N22
\divider1|VGA_clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider1|VGA_clk~feeder_combout\ = \divider1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divider1|q~q\,
	combout => \divider1|VGA_clk~feeder_combout\);

-- Location: FF_X56_Y72_N23
\divider1|VGA_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \divider1|VGA_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider1|VGA_clk~q\);

-- Location: CLKCTRL_G10
\divider1|VGA_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divider1|VGA_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divider1|VGA_clk~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y72_N10
\vga1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~0_combout\ = \vga1|xPixel\(0) $ (VCC)
-- \vga1|Add0~1\ = CARRY(\vga1|xPixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datad => VCC,
	combout => \vga1|Add0~0_combout\,
	cout => \vga1|Add0~1\);

-- Location: FF_X31_Y72_N11
\vga1|xPixel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(0));

-- Location: LCCOMB_X30_Y72_N14
\vga1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~0_combout\ = (\vga1|xPixel\(0) & \vga1|xPixel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(3),
	combout => \vga1|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y72_N12
\vga1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~2_combout\ = (\vga1|xPixel\(1) & (!\vga1|Add0~1\)) # (!\vga1|xPixel\(1) & ((\vga1|Add0~1\) # (GND)))
-- \vga1|Add0~3\ = CARRY((!\vga1|Add0~1\) # (!\vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datad => VCC,
	cin => \vga1|Add0~1\,
	combout => \vga1|Add0~2_combout\,
	cout => \vga1|Add0~3\);

-- Location: LCCOMB_X31_Y72_N4
\vga1|xPixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~1_combout\ = (\vga1|Add0~2_combout\ & (((!\vga1|Equal0~3_combout\) # (!\vga1|Equal0~1_combout\)) # (!\vga1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~0_combout\,
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|Equal0~3_combout\,
	datad => \vga1|Add0~2_combout\,
	combout => \vga1|xPixel~1_combout\);

-- Location: FF_X31_Y72_N5
\vga1|xPixel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|xPixel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(1));

-- Location: LCCOMB_X31_Y72_N14
\vga1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~4_combout\ = (\vga1|xPixel\(2) & (\vga1|Add0~3\ $ (GND))) # (!\vga1|xPixel\(2) & (!\vga1|Add0~3\ & VCC))
-- \vga1|Add0~5\ = CARRY((\vga1|xPixel\(2) & !\vga1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(2),
	datad => VCC,
	cin => \vga1|Add0~3\,
	combout => \vga1|Add0~4_combout\,
	cout => \vga1|Add0~5\);

-- Location: FF_X31_Y72_N15
\vga1|xPixel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(2));

-- Location: LCCOMB_X31_Y72_N16
\vga1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~6_combout\ = (\vga1|xPixel\(3) & (!\vga1|Add0~5\)) # (!\vga1|xPixel\(3) & ((\vga1|Add0~5\) # (GND)))
-- \vga1|Add0~7\ = CARRY((!\vga1|Add0~5\) # (!\vga1|xPixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datad => VCC,
	cin => \vga1|Add0~5\,
	combout => \vga1|Add0~6_combout\,
	cout => \vga1|Add0~7\);

-- Location: LCCOMB_X31_Y72_N18
\vga1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~8_combout\ = (\vga1|xPixel\(4) & (\vga1|Add0~7\ $ (GND))) # (!\vga1|xPixel\(4) & (!\vga1|Add0~7\ & VCC))
-- \vga1|Add0~9\ = CARRY((\vga1|xPixel\(4) & !\vga1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datad => VCC,
	cin => \vga1|Add0~7\,
	combout => \vga1|Add0~8_combout\,
	cout => \vga1|Add0~9\);

-- Location: LCCOMB_X31_Y72_N30
\vga1|xPixel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~4_combout\ = (\vga1|Add0~8_combout\ & (((!\vga1|Equal0~3_combout\) # (!\vga1|Equal0~1_combout\)) # (!\vga1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~0_combout\,
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|Equal0~3_combout\,
	datad => \vga1|Add0~8_combout\,
	combout => \vga1|xPixel~4_combout\);

-- Location: FF_X31_Y72_N31
\vga1|xPixel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|xPixel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(4));

-- Location: LCCOMB_X31_Y72_N20
\vga1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~10_combout\ = (\vga1|xPixel\(5) & (!\vga1|Add0~9\)) # (!\vga1|xPixel\(5) & ((\vga1|Add0~9\) # (GND)))
-- \vga1|Add0~11\ = CARRY((!\vga1|Add0~9\) # (!\vga1|xPixel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(5),
	datad => VCC,
	cin => \vga1|Add0~9\,
	combout => \vga1|Add0~10_combout\,
	cout => \vga1|Add0~11\);

-- Location: FF_X31_Y72_N21
\vga1|xPixel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(5));

-- Location: LCCOMB_X31_Y72_N22
\vga1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~12_combout\ = (\vga1|xPixel\(6) & (\vga1|Add0~11\ $ (GND))) # (!\vga1|xPixel\(6) & (!\vga1|Add0~11\ & VCC))
-- \vga1|Add0~13\ = CARRY((\vga1|xPixel\(6) & !\vga1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datad => VCC,
	cin => \vga1|Add0~11\,
	combout => \vga1|Add0~12_combout\,
	cout => \vga1|Add0~13\);

-- Location: FF_X31_Y72_N23
\vga1|xPixel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(6));

-- Location: LCCOMB_X32_Y72_N0
\vga1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~1_combout\ = (!\vga1|xPixel\(6) & !\vga1|xPixel\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(6),
	datad => \vga1|xPixel\(5),
	combout => \vga1|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y72_N24
\vga1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~14_combout\ = (\vga1|xPixel\(7) & (!\vga1|Add0~13\)) # (!\vga1|xPixel\(7) & ((\vga1|Add0~13\) # (GND)))
-- \vga1|Add0~15\ = CARRY((!\vga1|Add0~13\) # (!\vga1|xPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(7),
	datad => VCC,
	cin => \vga1|Add0~13\,
	combout => \vga1|Add0~14_combout\,
	cout => \vga1|Add0~15\);

-- Location: FF_X31_Y72_N25
\vga1|xPixel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(7));

-- Location: LCCOMB_X31_Y72_N26
\vga1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~16_combout\ = (\vga1|xPixel\(8) & (\vga1|Add0~15\ $ (GND))) # (!\vga1|xPixel\(8) & (!\vga1|Add0~15\ & VCC))
-- \vga1|Add0~17\ = CARRY((\vga1|xPixel\(8) & !\vga1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datad => VCC,
	cin => \vga1|Add0~15\,
	combout => \vga1|Add0~16_combout\,
	cout => \vga1|Add0~17\);

-- Location: LCCOMB_X31_Y72_N6
\vga1|xPixel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~2_combout\ = (\vga1|Add0~16_combout\ & (((!\vga1|Equal0~0_combout\) # (!\vga1|Equal0~1_combout\)) # (!\vga1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~3_combout\,
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|Add0~16_combout\,
	datad => \vga1|Equal0~0_combout\,
	combout => \vga1|xPixel~2_combout\);

-- Location: FF_X31_Y72_N7
\vga1|xPixel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|xPixel~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(8));

-- Location: LCCOMB_X31_Y72_N28
\vga1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~18_combout\ = \vga1|xPixel\(9) $ (\vga1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(9),
	cin => \vga1|Add0~17\,
	combout => \vga1|Add0~18_combout\);

-- Location: LCCOMB_X31_Y72_N8
\vga1|xPixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~3_combout\ = (\vga1|Add0~18_combout\ & (((!\vga1|Equal0~3_combout\) # (!\vga1|Equal0~1_combout\)) # (!\vga1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~0_combout\,
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|Equal0~3_combout\,
	datad => \vga1|Add0~18_combout\,
	combout => \vga1|xPixel~3_combout\);

-- Location: FF_X31_Y72_N9
\vga1|xPixel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|xPixel~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(9));

-- Location: LCCOMB_X31_Y72_N0
\vga1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~2_combout\ = (\vga1|xPixel\(4) & (!\vga1|xPixel\(1) & (!\vga1|xPixel\(2) & !\vga1|xPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(2),
	datad => \vga1|xPixel\(7),
	combout => \vga1|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y72_N2
\vga1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~3_combout\ = (\vga1|xPixel\(8) & (\vga1|xPixel\(9) & \vga1|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(9),
	datad => \vga1|Equal0~2_combout\,
	combout => \vga1|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y72_N16
\vga1|xPixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~0_combout\ = (\vga1|Add0~6_combout\ & (((!\vga1|Equal0~0_combout\) # (!\vga1|Equal0~1_combout\)) # (!\vga1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~3_combout\,
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|Equal0~0_combout\,
	datad => \vga1|Add0~6_combout\,
	combout => \vga1|xPixel~0_combout\);

-- Location: FF_X30_Y72_N17
\vga1|xPixel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|xPixel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(3));

-- Location: LCCOMB_X30_Y72_N26
\R~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~6_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(3)) # (!\vga1|xPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(3),
	datac => \vga1|xPixel\(2),
	datad => \vga1|xPixel\(1),
	combout => \R~6_combout\);

-- Location: LCCOMB_X32_Y72_N6
\vga1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~0_combout\ = \vga1|yPixel\(0) $ (VCC)
-- \vga1|Add1~1\ = CARRY(\vga1|yPixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datad => VCC,
	combout => \vga1|Add1~0_combout\,
	cout => \vga1|Add1~1\);

-- Location: LCCOMB_X32_Y72_N2
\vga1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~4_combout\ = (\vga1|xPixel\(0) & (\vga1|Equal0~1_combout\ & (\vga1|xPixel\(3) & \vga1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|xPixel\(3),
	datad => \vga1|Equal0~3_combout\,
	combout => \vga1|Equal0~4_combout\);

-- Location: FF_X32_Y72_N7
\vga1|yPixel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~0_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(0));

-- Location: LCCOMB_X32_Y72_N8
\vga1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~2_combout\ = (\vga1|yPixel\(1) & (!\vga1|Add1~1\)) # (!\vga1|yPixel\(1) & ((\vga1|Add1~1\) # (GND)))
-- \vga1|Add1~3\ = CARRY((!\vga1|Add1~1\) # (!\vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datad => VCC,
	cin => \vga1|Add1~1\,
	combout => \vga1|Add1~2_combout\,
	cout => \vga1|Add1~3\);

-- Location: LCCOMB_X32_Y72_N18
\vga1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~12_combout\ = (\vga1|yPixel\(6) & (\vga1|Add1~11\ $ (GND))) # (!\vga1|yPixel\(6) & (!\vga1|Add1~11\ & VCC))
-- \vga1|Add1~13\ = CARRY((\vga1|yPixel\(6) & !\vga1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(6),
	datad => VCC,
	cin => \vga1|Add1~11\,
	combout => \vga1|Add1~12_combout\,
	cout => \vga1|Add1~13\);

-- Location: LCCOMB_X32_Y72_N20
\vga1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~14_combout\ = (\vga1|yPixel\(7) & (!\vga1|Add1~13\)) # (!\vga1|yPixel\(7) & ((\vga1|Add1~13\) # (GND)))
-- \vga1|Add1~15\ = CARRY((!\vga1|Add1~13\) # (!\vga1|yPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(7),
	datad => VCC,
	cin => \vga1|Add1~13\,
	combout => \vga1|Add1~14_combout\,
	cout => \vga1|Add1~15\);

-- Location: FF_X32_Y72_N21
\vga1|yPixel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~14_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(7));

-- Location: LCCOMB_X32_Y72_N22
\vga1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~16_combout\ = (\vga1|yPixel\(8) & (\vga1|Add1~15\ $ (GND))) # (!\vga1|yPixel\(8) & (!\vga1|Add1~15\ & VCC))
-- \vga1|Add1~17\ = CARRY((\vga1|yPixel\(8) & !\vga1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datad => VCC,
	cin => \vga1|Add1~15\,
	combout => \vga1|Add1~16_combout\,
	cout => \vga1|Add1~17\);

-- Location: FF_X32_Y72_N23
\vga1|yPixel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~16_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(8));

-- Location: LCCOMB_X32_Y72_N24
\vga1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~18_combout\ = \vga1|Add1~17\ $ (\vga1|yPixel\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga1|yPixel\(9),
	cin => \vga1|Add1~17\,
	combout => \vga1|Add1~18_combout\);

-- Location: LCCOMB_X32_Y72_N4
\vga1|yPixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~3_combout\ = (!\vga1|Equal1~2_combout\ & \vga1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Equal1~2_combout\,
	datad => \vga1|Add1~18_combout\,
	combout => \vga1|yPixel~3_combout\);

-- Location: FF_X32_Y72_N5
\vga1|yPixel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~3_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(9));

-- Location: LCCOMB_X30_Y72_N30
\vga1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~1_combout\ = (!\vga1|yPixel\(7) & (!\vga1|yPixel\(1) & (\vga1|yPixel\(0) & \vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(0),
	datad => \vga1|yPixel\(2),
	combout => \vga1|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y72_N0
\vga1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~0_combout\ = (!\vga1|yPixel\(6) & (!\vga1|yPixel\(4) & (!\vga1|yPixel\(5) & \vga1|yPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(4),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(3),
	combout => \vga1|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y72_N20
\vga1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~2_combout\ = (!\vga1|yPixel\(8) & (\vga1|yPixel\(9) & (\vga1|Equal1~1_combout\ & \vga1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(9),
	datac => \vga1|Equal1~1_combout\,
	datad => \vga1|Equal1~0_combout\,
	combout => \vga1|Equal1~2_combout\);

-- Location: LCCOMB_X32_Y72_N30
\vga1|yPixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~0_combout\ = (\vga1|Add1~2_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add1~2_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~0_combout\);

-- Location: FF_X32_Y72_N31
\vga1|yPixel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~0_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(1));

-- Location: LCCOMB_X32_Y72_N10
\vga1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~4_combout\ = (\vga1|yPixel\(2) & (\vga1|Add1~3\ $ (GND))) # (!\vga1|yPixel\(2) & (!\vga1|Add1~3\ & VCC))
-- \vga1|Add1~5\ = CARRY((\vga1|yPixel\(2) & !\vga1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datad => VCC,
	cin => \vga1|Add1~3\,
	combout => \vga1|Add1~4_combout\,
	cout => \vga1|Add1~5\);

-- Location: LCCOMB_X32_Y72_N28
\vga1|yPixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~1_combout\ = (\vga1|Add1~4_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add1~4_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~1_combout\);

-- Location: FF_X32_Y72_N29
\vga1|yPixel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~1_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(2));

-- Location: LCCOMB_X32_Y72_N12
\vga1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~6_combout\ = (\vga1|yPixel\(3) & (!\vga1|Add1~5\)) # (!\vga1|yPixel\(3) & ((\vga1|Add1~5\) # (GND)))
-- \vga1|Add1~7\ = CARRY((!\vga1|Add1~5\) # (!\vga1|yPixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datad => VCC,
	cin => \vga1|Add1~5\,
	combout => \vga1|Add1~6_combout\,
	cout => \vga1|Add1~7\);

-- Location: LCCOMB_X32_Y72_N26
\vga1|yPixel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~2_combout\ = (\vga1|Add1~6_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add1~6_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~2_combout\);

-- Location: FF_X32_Y72_N27
\vga1|yPixel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~2_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(3));

-- Location: LCCOMB_X32_Y72_N14
\vga1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~8_combout\ = (\vga1|yPixel\(4) & (\vga1|Add1~7\ $ (GND))) # (!\vga1|yPixel\(4) & (!\vga1|Add1~7\ & VCC))
-- \vga1|Add1~9\ = CARRY((\vga1|yPixel\(4) & !\vga1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(4),
	datad => VCC,
	cin => \vga1|Add1~7\,
	combout => \vga1|Add1~8_combout\,
	cout => \vga1|Add1~9\);

-- Location: FF_X32_Y72_N15
\vga1|yPixel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~8_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(4));

-- Location: LCCOMB_X32_Y72_N16
\vga1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~10_combout\ = (\vga1|yPixel\(5) & (!\vga1|Add1~9\)) # (!\vga1|yPixel\(5) & ((\vga1|Add1~9\) # (GND)))
-- \vga1|Add1~11\ = CARRY((!\vga1|Add1~9\) # (!\vga1|yPixel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(5),
	datad => VCC,
	cin => \vga1|Add1~9\,
	combout => \vga1|Add1~10_combout\,
	cout => \vga1|Add1~11\);

-- Location: FF_X32_Y72_N17
\vga1|yPixel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~10_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(5));

-- Location: FF_X32_Y72_N19
\vga1|yPixel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~12_combout\,
	ena => \vga1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(6));

-- Location: LCCOMB_X33_Y72_N6
\vga1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|LessThan1~0_combout\ = (\vga1|yPixel\(6) & (\vga1|yPixel\(8) & (\vga1|yPixel\(5) & \vga1|yPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(8),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(7),
	combout => \vga1|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y72_N12
\vga1|display_area~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|display_area~0_combout\ = (!\vga1|yPixel\(9) & (((!\vga1|xPixel\(8) & !\vga1|xPixel\(7))) # (!\vga1|xPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(9),
	datac => \vga1|yPixel\(9),
	datad => \vga1|xPixel\(7),
	combout => \vga1|display_area~0_combout\);

-- Location: LCCOMB_X33_Y72_N4
\vga1|display_area~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|display_area~1_combout\ = (!\vga1|LessThan1~0_combout\ & \vga1|display_area~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|LessThan1~0_combout\,
	datad => \vga1|display_area~0_combout\,
	combout => \vga1|display_area~1_combout\);

-- Location: FF_X33_Y72_N5
\vga1|display_area\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|display_area~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|display_area~q\);

-- Location: LCCOMB_X33_Y72_N12
\R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~0_combout\ = (\vga1|display_area~q\ & ((\vga1|yPixel\(1)) # (!\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|display_area~q\,
	datab => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(2),
	combout => \R~0_combout\);

-- Location: LCCOMB_X33_Y72_N22
\R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~1_combout\ = (\vga1|display_area~q\ & \vga1|yPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|display_area~q\,
	datad => \vga1|yPixel\(2),
	combout => \R~1_combout\);

-- Location: LCCOMB_X33_Y72_N8
\R~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~3_combout\ = (\vga1|yPixel\(3) & (!\vga1|yPixel\(4) & (\R~1_combout\))) # (!\vga1|yPixel\(3) & (\vga1|yPixel\(4) & ((\R~1_combout\) # (\R~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \vga1|yPixel\(4),
	datac => \R~1_combout\,
	datad => \R~0_combout\,
	combout => \R~3_combout\);

-- Location: LCCOMB_X33_Y72_N18
\R~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~2_combout\ = (\vga1|yPixel\(3) & (!\vga1|yPixel\(4) & (!\R~1_combout\ & \R~0_combout\))) # (!\vga1|yPixel\(3) & (((\R~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \vga1|yPixel\(3),
	datac => \R~1_combout\,
	datad => \R~0_combout\,
	combout => \R~2_combout\);

-- Location: LCCOMB_X33_Y72_N30
\R~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~4_combout\ = (\R~3_combout\ & (\R~0_combout\ $ (\vga1|xPixel\(3) $ (!\R~2_combout\)))) # (!\R~3_combout\ & (!\R~0_combout\ & ((\R~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~0_combout\,
	datab => \vga1|xPixel\(3),
	datac => \R~3_combout\,
	datad => \R~2_combout\,
	combout => \R~4_combout\);

-- Location: LCCOMB_X33_Y72_N20
\R~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~5_combout\ = (\vga1|xPixel\(3) & (((\R~3_combout\)))) # (!\vga1|xPixel\(3) & (\R~2_combout\ & ((\R~0_combout\) # (\R~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~0_combout\,
	datab => \vga1|xPixel\(3),
	datac => \R~3_combout\,
	datad => \R~2_combout\,
	combout => \R~5_combout\);

-- Location: LCCOMB_X33_Y72_N10
\R~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~7_combout\ = (\R~6_combout\ & (!\vga1|xPixel\(2) & ((\R~4_combout\) # (\R~5_combout\)))) # (!\R~6_combout\ & (\R~4_combout\ $ (((!\vga1|xPixel\(2) & \R~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~6_combout\,
	datab => \vga1|xPixel\(2),
	datac => \R~4_combout\,
	datad => \R~5_combout\,
	combout => \R~7_combout\);

-- Location: LCCOMB_X34_Y72_N20
\VGA_R[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[0]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_R[0]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N21
\VGA_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_R[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[0]~reg0_q\);

-- Location: FF_X33_Y72_N13
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: LCCOMB_X34_Y72_N10
\VGA_R[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[2]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_R[2]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N11
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_R[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: LCCOMB_X34_Y72_N12
\VGA_R[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[3]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_R[3]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N13
\VGA_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_R[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[3]~reg0_q\);

-- Location: FF_X32_Y72_N25
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: LCCOMB_X34_Y72_N26
\VGA_R[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_R[5]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N27
\VGA_R[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_R[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[5]~reg0_q\);

-- Location: LCCOMB_X34_Y72_N4
\VGA_R[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_R[6]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N5
\VGA_R[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_R[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[6]~reg0_q\);

-- Location: LCCOMB_X33_Y72_N14
\VGA_R[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[7]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_R[7]~reg0feeder_combout\);

-- Location: FF_X33_Y72_N15
\VGA_R[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_R[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[7]~reg0_q\);

-- Location: LCCOMB_X33_Y72_N24
\VGA_G[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[0]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_G[0]~reg0feeder_combout\);

-- Location: FF_X33_Y72_N25
\VGA_G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_G[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[0]~reg0_q\);

-- Location: FF_X33_Y72_N11
\VGA_G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \R~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[1]~reg0_q\);

-- Location: LCCOMB_X33_Y72_N28
\VGA_G[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[2]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_G[2]~reg0feeder_combout\);

-- Location: FF_X33_Y72_N29
\VGA_G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_G[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[2]~reg0_q\);

-- Location: FF_X33_Y72_N23
\VGA_G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[3]~reg0_q\);

-- Location: LCCOMB_X33_Y72_N16
\VGA_G[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[4]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_G[4]~reg0feeder_combout\);

-- Location: FF_X33_Y72_N17
\VGA_G[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_G[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[4]~reg0_q\);

-- Location: LCCOMB_X33_Y72_N26
\VGA_G[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[5]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_G[5]~reg0feeder_combout\);

-- Location: FF_X33_Y72_N27
\VGA_G[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_G[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[5]~reg0_q\);

-- Location: FF_X32_Y72_N13
\VGA_G[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[6]~reg0_q\);

-- Location: FF_X32_Y72_N11
\VGA_G[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[7]~reg0_q\);

-- Location: LCCOMB_X34_Y72_N14
\VGA_B[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[0]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_B[0]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N15
\VGA_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_B[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[0]~reg0_q\);

-- Location: LCCOMB_X34_Y72_N0
\VGA_B[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[1]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_B[1]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N1
\VGA_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_B[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[1]~reg0_q\);

-- Location: FF_X32_Y72_N1
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: LCCOMB_X34_Y72_N30
\VGA_B[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[3]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_B[3]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N31
\VGA_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_B[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[3]~reg0_q\);

-- Location: LCCOMB_X33_Y72_N0
\VGA_B[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[4]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_B[4]~reg0feeder_combout\);

-- Location: FF_X33_Y72_N1
\VGA_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_B[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[4]~reg0_q\);

-- Location: LCCOMB_X34_Y72_N8
\VGA_B[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[5]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_B[5]~reg0feeder_combout\);

-- Location: FF_X34_Y72_N9
\VGA_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_B[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[5]~reg0_q\);

-- Location: FF_X32_Y72_N9
\VGA_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[6]~reg0_q\);

-- Location: LCCOMB_X33_Y72_N2
\VGA_B[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[7]~reg0feeder_combout\ = \R~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~7_combout\,
	combout => \VGA_B[7]~reg0feeder_combout\);

-- Location: FF_X33_Y72_N3
\VGA_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_B[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[7]~reg0_q\);

-- Location: LCCOMB_X30_Y72_N28
\vga1|ph_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~0_combout\ = (\vga1|xPixel\(7) & (\vga1|xPixel\(9) & !\vga1|xPixel\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(9),
	datad => \vga1|xPixel\(8),
	combout => \vga1|ph_sync~0_combout\);

-- Location: LCCOMB_X30_Y72_N18
\vga1|ph_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~1_combout\ = (\vga1|xPixel\(2) & ((\vga1|xPixel\(6)) # ((\vga1|xPixel\(1) & \vga1|xPixel\(0))))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(1) & (\vga1|xPixel\(0) & \vga1|xPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(6),
	combout => \vga1|ph_sync~1_combout\);

-- Location: LCCOMB_X30_Y72_N4
\vga1|ph_sync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~2_combout\ = (\vga1|xPixel\(4)) # ((\vga1|xPixel\(3) & \vga1|ph_sync~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(3),
	datac => \vga1|xPixel\(4),
	datad => \vga1|ph_sync~1_combout\,
	combout => \vga1|ph_sync~2_combout\);

-- Location: LCCOMB_X30_Y72_N24
\vga1|ph_sync~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~3_combout\ = (\vga1|ph_sync~0_combout\ & ((\vga1|xPixel\(5) & ((!\vga1|xPixel\(6)) # (!\vga1|ph_sync~2_combout\))) # (!\vga1|xPixel\(5) & ((\vga1|ph_sync~2_combout\) # (\vga1|xPixel\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|ph_sync~0_combout\,
	datac => \vga1|ph_sync~2_combout\,
	datad => \vga1|xPixel\(6),
	combout => \vga1|ph_sync~3_combout\);

-- Location: FF_X30_Y72_N25
\vga1|ph_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|ph_sync~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|ph_sync~q\);

-- Location: LCCOMB_X30_Y72_N22
\vga1|pv_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~0_combout\ = (\vga1|yPixel\(4)) # (((\vga1|yPixel\(2)) # (!\vga1|yPixel\(3))) # (!\vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(3),
	datad => \vga1|yPixel\(2),
	combout => \vga1|pv_sync~0_combout\);

-- Location: LCCOMB_X30_Y72_N2
\vga1|pv_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~1_combout\ = (!\vga1|yPixel\(9) & (!\vga1|pv_sync~0_combout\ & \vga1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(9),
	datac => \vga1|pv_sync~0_combout\,
	datad => \vga1|LessThan1~0_combout\,
	combout => \vga1|pv_sync~1_combout\);

-- Location: FF_X30_Y72_N3
\vga1|pv_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|pv_sync~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|pv_sync~q\);

-- Location: IOIBUF_X56_Y73_N15
\power~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_power,
	o => \power~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data,
	o => \data~input_o\);

ww_DAC_clk <= \DAC_clk~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_VGA_hSync <= \VGA_hSync~output_o\;

ww_VGA_vSync <= \VGA_vSync~output_o\;

ww_blank_n <= \blank_n~output_o\;
END structure;


