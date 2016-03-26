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

-- DATE "03/25/2016 20:39:10"

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
	DAC_clk : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_hSync : BUFFER std_logic;
	VGA_vSync : BUFFER std_logic;
	blank_n : BUFFER std_logic
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
SIGNAL \vga1|Add1~0_combout\ : std_logic;
SIGNAL \vga1|Add0~0_combout\ : std_logic;
SIGNAL \vga1|Add0~1\ : std_logic;
SIGNAL \vga1|Add0~2_combout\ : std_logic;
SIGNAL \vga1|xPixel~1_combout\ : std_logic;
SIGNAL \vga1|Add0~3\ : std_logic;
SIGNAL \vga1|Add0~4_combout\ : std_logic;
SIGNAL \vga1|Add0~5\ : std_logic;
SIGNAL \vga1|Add0~6_combout\ : std_logic;
SIGNAL \vga1|xPixel~4_combout\ : std_logic;
SIGNAL \vga1|Add0~7\ : std_logic;
SIGNAL \vga1|Add0~8_combout\ : std_logic;
SIGNAL \vga1|xPixel~3_combout\ : std_logic;
SIGNAL \vga1|Add0~9\ : std_logic;
SIGNAL \vga1|Add0~10_combout\ : std_logic;
SIGNAL \vga1|Add0~11\ : std_logic;
SIGNAL \vga1|Add0~12_combout\ : std_logic;
SIGNAL \vga1|Add0~13\ : std_logic;
SIGNAL \vga1|Add0~14_combout\ : std_logic;
SIGNAL \vga1|Add0~15\ : std_logic;
SIGNAL \vga1|Add0~16_combout\ : std_logic;
SIGNAL \vga1|xPixel~2_combout\ : std_logic;
SIGNAL \vga1|Equal0~0_combout\ : std_logic;
SIGNAL \vga1|Equal0~1_combout\ : std_logic;
SIGNAL \vga1|Add0~17\ : std_logic;
SIGNAL \vga1|Add0~18_combout\ : std_logic;
SIGNAL \vga1|xPixel~0_combout\ : std_logic;
SIGNAL \vga1|Equal0~2_combout\ : std_logic;
SIGNAL \vga1|Add1~1\ : std_logic;
SIGNAL \vga1|Add1~2_combout\ : std_logic;
SIGNAL \vga1|Add1~17\ : std_logic;
SIGNAL \vga1|Add1~18_combout\ : std_logic;
SIGNAL \vga1|yPixel~0_combout\ : std_logic;
SIGNAL \vga1|Equal1~0_combout\ : std_logic;
SIGNAL \vga1|Equal1~1_combout\ : std_logic;
SIGNAL \vga1|Equal1~2_combout\ : std_logic;
SIGNAL \vga1|yPixel~2_combout\ : std_logic;
SIGNAL \vga1|Add1~3\ : std_logic;
SIGNAL \vga1|Add1~4_combout\ : std_logic;
SIGNAL \vga1|yPixel~1_combout\ : std_logic;
SIGNAL \vga1|Add1~5\ : std_logic;
SIGNAL \vga1|Add1~6_combout\ : std_logic;
SIGNAL \vga1|yPixel~3_combout\ : std_logic;
SIGNAL \vga1|Add1~7\ : std_logic;
SIGNAL \vga1|Add1~8_combout\ : std_logic;
SIGNAL \vga1|Add1~9\ : std_logic;
SIGNAL \vga1|Add1~10_combout\ : std_logic;
SIGNAL \vga1|Add1~11\ : std_logic;
SIGNAL \vga1|Add1~12_combout\ : std_logic;
SIGNAL \vga1|Add1~13\ : std_logic;
SIGNAL \vga1|Add1~14_combout\ : std_logic;
SIGNAL \vga1|Add1~15\ : std_logic;
SIGNAL \vga1|Add1~16_combout\ : std_logic;
SIGNAL \vga1|pv_sync~1_combout\ : std_logic;
SIGNAL \vga1|display_area~0_combout\ : std_logic;
SIGNAL \vga1|display_area~1_combout\ : std_logic;
SIGNAL \vga1|display_area~q\ : std_logic;
SIGNAL \R~4_combout\ : std_logic;
SIGNAL \letter1|mask~1_combout\ : std_logic;
SIGNAL \R~6_combout\ : std_logic;
SIGNAL \letter2|mask~3_combout\ : std_logic;
SIGNAL \letter2|Equal27~0_combout\ : std_logic;
SIGNAL \letter2|Equal13~0_combout\ : std_logic;
SIGNAL \letter2|Equal27~1_combout\ : std_logic;
SIGNAL \R~48_combout\ : std_logic;
SIGNAL \letter2|Equal13~1_combout\ : std_logic;
SIGNAL \letter2|Equal13~2_combout\ : std_logic;
SIGNAL \letter2|mask~4_combout\ : std_logic;
SIGNAL \R~39_combout\ : std_logic;
SIGNAL \letter2|Equal25~3_combout\ : std_logic;
SIGNAL \letter2|Equal29~0_combout\ : std_logic;
SIGNAL \R~46_combout\ : std_logic;
SIGNAL \R~47_combout\ : std_logic;
SIGNAL \letter2|Equal15~0_combout\ : std_logic;
SIGNAL \R~14_combout\ : std_logic;
SIGNAL \R~23_combout\ : std_logic;
SIGNAL \R~24_combout\ : std_logic;
SIGNAL \R~44_combout\ : std_logic;
SIGNAL \R~43_combout\ : std_logic;
SIGNAL \R~45_combout\ : std_logic;
SIGNAL \R~49_combout\ : std_logic;
SIGNAL \R~60_combout\ : std_logic;
SIGNAL \R~61_combout\ : std_logic;
SIGNAL \R~58_combout\ : std_logic;
SIGNAL \letter1|Equal25~0_combout\ : std_logic;
SIGNAL \R~57_combout\ : std_logic;
SIGNAL \R~64_combout\ : std_logic;
SIGNAL \R~59_combout\ : std_logic;
SIGNAL \R~9_combout\ : std_logic;
SIGNAL \R~30_combout\ : std_logic;
SIGNAL \R~50_combout\ : std_logic;
SIGNAL \R~51_combout\ : std_logic;
SIGNAL \letter2|mask~5_combout\ : std_logic;
SIGNAL \R~52_combout\ : std_logic;
SIGNAL \R~12_combout\ : std_logic;
SIGNAL \R~53_combout\ : std_logic;
SIGNAL \letter2|mask~6_combout\ : std_logic;
SIGNAL \R~54_combout\ : std_logic;
SIGNAL \letter2|Equal25~2_combout\ : std_logic;
SIGNAL \R~55_combout\ : std_logic;
SIGNAL \R~63_combout\ : std_logic;
SIGNAL \R~56_combout\ : std_logic;
SIGNAL \R~62_combout\ : std_logic;
SIGNAL \R~22_combout\ : std_logic;
SIGNAL \R~28_combout\ : std_logic;
SIGNAL \R~29_combout\ : std_logic;
SIGNAL \R~31_combout\ : std_logic;
SIGNAL \R~32_combout\ : std_logic;
SIGNAL \R~26_combout\ : std_logic;
SIGNAL \R~25_combout\ : std_logic;
SIGNAL \R~27_combout\ : std_logic;
SIGNAL \R~33_combout\ : std_logic;
SIGNAL \R~34_combout\ : std_logic;
SIGNAL \R~35_combout\ : std_logic;
SIGNAL \R~36_combout\ : std_logic;
SIGNAL \R~40_combout\ : std_logic;
SIGNAL \R~37_combout\ : std_logic;
SIGNAL \R~38_combout\ : std_logic;
SIGNAL \R~41_combout\ : std_logic;
SIGNAL \R~18_combout\ : std_logic;
SIGNAL \R~19_combout\ : std_logic;
SIGNAL \R~20_combout\ : std_logic;
SIGNAL \R~5_combout\ : std_logic;
SIGNAL \letter2|mask~2_combout\ : std_logic;
SIGNAL \letter2|mask~0_combout\ : std_logic;
SIGNAL \letter2|mask~1_combout\ : std_logic;
SIGNAL \R~13_combout\ : std_logic;
SIGNAL \R~15_combout\ : std_logic;
SIGNAL \letter1|mask~0_combout\ : std_logic;
SIGNAL \R~16_combout\ : std_logic;
SIGNAL \R~7_combout\ : std_logic;
SIGNAL \R~8_combout\ : std_logic;
SIGNAL \R~10_combout\ : std_logic;
SIGNAL \R~11_combout\ : std_logic;
SIGNAL \R~17_combout\ : std_logic;
SIGNAL \R~21_combout\ : std_logic;
SIGNAL \R~42_combout\ : std_logic;
SIGNAL \R~combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \VGA_R[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \VGA_R[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \VGA_R[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \VGA_R[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \VGA_R[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \VGA_R[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \VGA_G[0]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[0]~reg0_q\ : std_logic;
SIGNAL \VGA_G[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[1]~reg0_q\ : std_logic;
SIGNAL \VGA_G[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[2]~reg0_q\ : std_logic;
SIGNAL \VGA_G[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[3]~reg0_q\ : std_logic;
SIGNAL \VGA_G[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[4]~reg0_q\ : std_logic;
SIGNAL \VGA_G[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[5]~reg0_q\ : std_logic;
SIGNAL \VGA_G[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[6]~reg0_q\ : std_logic;
SIGNAL \VGA_G[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[7]~reg0_q\ : std_logic;
SIGNAL \VGA_B[0]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[0]~reg0_q\ : std_logic;
SIGNAL \VGA_B[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[1]~reg0_q\ : std_logic;
SIGNAL \VGA_B[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL \vga1|ph_sync~1_combout\ : std_logic;
SIGNAL \vga1|ph_sync~2_combout\ : std_logic;
SIGNAL \vga1|ph_sync~0_combout\ : std_logic;
SIGNAL \vga1|ph_sync~3_combout\ : std_logic;
SIGNAL \vga1|ph_sync~q\ : std_logic;
SIGNAL \vga1|pv_sync~0_combout\ : std_logic;
SIGNAL \vga1|pv_sync~2_combout\ : std_logic;
SIGNAL \vga1|pv_sync~q\ : std_logic;
SIGNAL \vga1|xPixel\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga1|yPixel\ : std_logic_vector(9 DOWNTO 0);
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

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X30_Y72_N10
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

-- Location: LCCOMB_X24_Y72_N6
\vga1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~0_combout\ = \vga1|xPixel\(0) $ (VCC)
-- \vga1|Add0~1\ = CARRY(\vga1|xPixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datad => VCC,
	combout => \vga1|Add0~0_combout\,
	cout => \vga1|Add0~1\);

-- Location: FF_X24_Y72_N7
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

-- Location: LCCOMB_X24_Y72_N8
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

-- Location: LCCOMB_X23_Y72_N4
\vga1|xPixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~1_combout\ = (\vga1|Add0~2_combout\ & !\vga1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add0~2_combout\,
	datad => \vga1|Equal0~2_combout\,
	combout => \vga1|xPixel~1_combout\);

-- Location: FF_X23_Y72_N5
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

-- Location: LCCOMB_X24_Y72_N10
\vga1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~4_combout\ = (\vga1|xPixel\(2) & (\vga1|Add0~3\ $ (GND))) # (!\vga1|xPixel\(2) & (!\vga1|Add0~3\ & VCC))
-- \vga1|Add0~5\ = CARRY((\vga1|xPixel\(2) & !\vga1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datad => VCC,
	cin => \vga1|Add0~3\,
	combout => \vga1|Add0~4_combout\,
	cout => \vga1|Add0~5\);

-- Location: FF_X24_Y72_N11
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

-- Location: LCCOMB_X24_Y72_N12
\vga1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~6_combout\ = (\vga1|xPixel\(3) & (!\vga1|Add0~5\)) # (!\vga1|xPixel\(3) & ((\vga1|Add0~5\) # (GND)))
-- \vga1|Add0~7\ = CARRY((!\vga1|Add0~5\) # (!\vga1|xPixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(3),
	datad => VCC,
	cin => \vga1|Add0~5\,
	combout => \vga1|Add0~6_combout\,
	cout => \vga1|Add0~7\);

-- Location: LCCOMB_X25_Y72_N16
\vga1|xPixel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~4_combout\ = (!\vga1|Equal0~2_combout\ & \vga1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Equal0~2_combout\,
	datad => \vga1|Add0~6_combout\,
	combout => \vga1|xPixel~4_combout\);

-- Location: FF_X26_Y72_N31
\vga1|xPixel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \vga1|xPixel~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(3));

-- Location: LCCOMB_X24_Y72_N14
\vga1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~8_combout\ = (\vga1|xPixel\(4) & (\vga1|Add0~7\ $ (GND))) # (!\vga1|xPixel\(4) & (!\vga1|Add0~7\ & VCC))
-- \vga1|Add0~9\ = CARRY((\vga1|xPixel\(4) & !\vga1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(4),
	datad => VCC,
	cin => \vga1|Add0~7\,
	combout => \vga1|Add0~8_combout\,
	cout => \vga1|Add0~9\);

-- Location: LCCOMB_X24_Y72_N4
\vga1|xPixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~3_combout\ = (\vga1|Add0~8_combout\ & !\vga1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add0~8_combout\,
	datad => \vga1|Equal0~2_combout\,
	combout => \vga1|xPixel~3_combout\);

-- Location: FF_X24_Y72_N5
\vga1|xPixel[4]\ : dffeas
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
	q => \vga1|xPixel\(4));

-- Location: LCCOMB_X24_Y72_N16
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

-- Location: FF_X24_Y72_N17
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

-- Location: LCCOMB_X24_Y72_N18
\vga1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~12_combout\ = (\vga1|xPixel\(6) & (\vga1|Add0~11\ $ (GND))) # (!\vga1|xPixel\(6) & (!\vga1|Add0~11\ & VCC))
-- \vga1|Add0~13\ = CARRY((\vga1|xPixel\(6) & !\vga1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(6),
	datad => VCC,
	cin => \vga1|Add0~11\,
	combout => \vga1|Add0~12_combout\,
	cout => \vga1|Add0~13\);

-- Location: FF_X24_Y72_N19
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

-- Location: LCCOMB_X24_Y72_N20
\vga1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~14_combout\ = (\vga1|xPixel\(7) & (!\vga1|Add0~13\)) # (!\vga1|xPixel\(7) & ((\vga1|Add0~13\) # (GND)))
-- \vga1|Add0~15\ = CARRY((!\vga1|Add0~13\) # (!\vga1|xPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datad => VCC,
	cin => \vga1|Add0~13\,
	combout => \vga1|Add0~14_combout\,
	cout => \vga1|Add0~15\);

-- Location: FF_X24_Y72_N21
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

-- Location: LCCOMB_X24_Y72_N22
\vga1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~16_combout\ = (\vga1|xPixel\(8) & (\vga1|Add0~15\ $ (GND))) # (!\vga1|xPixel\(8) & (!\vga1|Add0~15\ & VCC))
-- \vga1|Add0~17\ = CARRY((\vga1|xPixel\(8) & !\vga1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(8),
	datad => VCC,
	cin => \vga1|Add0~15\,
	combout => \vga1|Add0~16_combout\,
	cout => \vga1|Add0~17\);

-- Location: LCCOMB_X24_Y72_N28
\vga1|xPixel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~2_combout\ = (\vga1|Add0~16_combout\ & !\vga1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add0~16_combout\,
	datad => \vga1|Equal0~2_combout\,
	combout => \vga1|xPixel~2_combout\);

-- Location: FF_X24_Y72_N29
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

-- Location: LCCOMB_X25_Y72_N8
\vga1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~0_combout\ = (!\vga1|xPixel\(5) & (!\vga1|xPixel\(6) & (\vga1|xPixel\(4) & \vga1|xPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(4),
	datad => \vga1|xPixel\(8),
	combout => \vga1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y72_N22
\vga1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~1_combout\ = (\vga1|xPixel\(3) & (!\vga1|xPixel\(1) & (!\vga1|xPixel\(2) & \vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(2),
	datad => \vga1|xPixel\(0),
	combout => \vga1|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y72_N24
\vga1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~18_combout\ = \vga1|xPixel\(9) $ (\vga1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	cin => \vga1|Add0~17\,
	combout => \vga1|Add0~18_combout\);

-- Location: LCCOMB_X23_Y72_N12
\vga1|xPixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~0_combout\ = (!\vga1|Equal0~2_combout\ & \vga1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Equal0~2_combout\,
	datad => \vga1|Add0~18_combout\,
	combout => \vga1|xPixel~0_combout\);

-- Location: FF_X23_Y72_N13
\vga1|xPixel[9]\ : dffeas
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
	q => \vga1|xPixel\(9));

-- Location: LCCOMB_X23_Y72_N20
\vga1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~2_combout\ = (\vga1|Equal0~0_combout\ & (!\vga1|xPixel\(7) & (\vga1|Equal0~1_combout\ & \vga1|xPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~0_combout\,
	datab => \vga1|xPixel\(7),
	datac => \vga1|Equal0~1_combout\,
	datad => \vga1|xPixel\(9),
	combout => \vga1|Equal0~2_combout\);

-- Location: FF_X30_Y72_N11
\vga1|yPixel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~0_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(0));

-- Location: LCCOMB_X30_Y72_N12
\vga1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~2_combout\ = (\vga1|yPixel\(1) & (!\vga1|Add1~1\)) # (!\vga1|yPixel\(1) & ((\vga1|Add1~1\) # (GND)))
-- \vga1|Add1~3\ = CARRY((!\vga1|Add1~1\) # (!\vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datad => VCC,
	cin => \vga1|Add1~1\,
	combout => \vga1|Add1~2_combout\,
	cout => \vga1|Add1~3\);

-- Location: LCCOMB_X30_Y72_N26
\vga1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~16_combout\ = (\vga1|yPixel\(8) & (\vga1|Add1~15\ $ (GND))) # (!\vga1|yPixel\(8) & (!\vga1|Add1~15\ & VCC))
-- \vga1|Add1~17\ = CARRY((\vga1|yPixel\(8) & !\vga1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(8),
	datad => VCC,
	cin => \vga1|Add1~15\,
	combout => \vga1|Add1~16_combout\,
	cout => \vga1|Add1~17\);

-- Location: LCCOMB_X30_Y72_N28
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

-- Location: LCCOMB_X29_Y72_N26
\vga1|yPixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~0_combout\ = (\vga1|Add1~18_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Add1~18_combout\,
	datac => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~0_combout\);

-- Location: FF_X29_Y72_N27
\vga1|yPixel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~0_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(9));

-- Location: LCCOMB_X28_Y72_N30
\vga1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~0_combout\ = (!\vga1|yPixel\(5) & (\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & \vga1|yPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(5),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(0),
	combout => \vga1|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y72_N6
\vga1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~1_combout\ = (\vga1|yPixel\(3) & (!\vga1|yPixel\(4) & (!\vga1|yPixel\(7) & !\vga1|yPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \vga1|yPixel\(4),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(6),
	combout => \vga1|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y72_N4
\vga1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~2_combout\ = (!\vga1|yPixel\(8) & (\vga1|yPixel\(9) & (\vga1|Equal1~0_combout\ & \vga1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(9),
	datac => \vga1|Equal1~0_combout\,
	datad => \vga1|Equal1~1_combout\,
	combout => \vga1|Equal1~2_combout\);

-- Location: LCCOMB_X31_Y72_N12
\vga1|yPixel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~2_combout\ = (\vga1|Add1~2_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add1~2_combout\,
	datac => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~2_combout\);

-- Location: FF_X31_Y72_N13
\vga1|yPixel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~2_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(1));

-- Location: LCCOMB_X30_Y72_N14
\vga1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~4_combout\ = (\vga1|yPixel\(2) & (\vga1|Add1~3\ $ (GND))) # (!\vga1|yPixel\(2) & (!\vga1|Add1~3\ & VCC))
-- \vga1|Add1~5\ = CARRY((\vga1|yPixel\(2) & !\vga1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datad => VCC,
	cin => \vga1|Add1~3\,
	combout => \vga1|Add1~4_combout\,
	cout => \vga1|Add1~5\);

-- Location: LCCOMB_X30_Y72_N6
\vga1|yPixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~1_combout\ = (\vga1|Add1~4_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add1~4_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~1_combout\);

-- Location: FF_X29_Y72_N13
\vga1|yPixel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \vga1|yPixel~1_combout\,
	sload => VCC,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(2));

-- Location: LCCOMB_X30_Y72_N16
\vga1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~6_combout\ = (\vga1|yPixel\(3) & (!\vga1|Add1~5\)) # (!\vga1|yPixel\(3) & ((\vga1|Add1~5\) # (GND)))
-- \vga1|Add1~7\ = CARRY((!\vga1|Add1~5\) # (!\vga1|yPixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(3),
	datad => VCC,
	cin => \vga1|Add1~5\,
	combout => \vga1|Add1~6_combout\,
	cout => \vga1|Add1~7\);

-- Location: LCCOMB_X30_Y72_N0
\vga1|yPixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~3_combout\ = (\vga1|Add1~6_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Add1~6_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~3_combout\);

-- Location: FF_X30_Y72_N1
\vga1|yPixel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~3_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(3));

-- Location: LCCOMB_X30_Y72_N18
\vga1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~8_combout\ = (\vga1|yPixel\(4) & (\vga1|Add1~7\ $ (GND))) # (!\vga1|yPixel\(4) & (!\vga1|Add1~7\ & VCC))
-- \vga1|Add1~9\ = CARRY((\vga1|yPixel\(4) & !\vga1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datad => VCC,
	cin => \vga1|Add1~7\,
	combout => \vga1|Add1~8_combout\,
	cout => \vga1|Add1~9\);

-- Location: FF_X30_Y72_N19
\vga1|yPixel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~8_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(4));

-- Location: LCCOMB_X30_Y72_N20
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

-- Location: FF_X30_Y72_N21
\vga1|yPixel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~10_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(5));

-- Location: LCCOMB_X30_Y72_N22
\vga1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~12_combout\ = (\vga1|yPixel\(6) & (\vga1|Add1~11\ $ (GND))) # (!\vga1|yPixel\(6) & (!\vga1|Add1~11\ & VCC))
-- \vga1|Add1~13\ = CARRY((\vga1|yPixel\(6) & !\vga1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datad => VCC,
	cin => \vga1|Add1~11\,
	combout => \vga1|Add1~12_combout\,
	cout => \vga1|Add1~13\);

-- Location: FF_X30_Y72_N23
\vga1|yPixel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~12_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(6));

-- Location: LCCOMB_X30_Y72_N24
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

-- Location: FF_X29_Y72_N9
\vga1|yPixel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \vga1|Add1~14_combout\,
	sload => VCC,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(7));

-- Location: FF_X30_Y72_N27
\vga1|yPixel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~16_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(8));

-- Location: LCCOMB_X31_Y72_N0
\vga1|pv_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~1_combout\ = (\vga1|yPixel\(8) & (\vga1|yPixel\(6) & (\vga1|yPixel\(7) & \vga1|yPixel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(5),
	combout => \vga1|pv_sync~1_combout\);

-- Location: LCCOMB_X32_Y72_N28
\vga1|display_area~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|display_area~0_combout\ = (!\vga1|yPixel\(9) & (((!\vga1|xPixel\(7) & !\vga1|xPixel\(8))) # (!\vga1|xPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(9),
	datad => \vga1|yPixel\(9),
	combout => \vga1|display_area~0_combout\);

-- Location: LCCOMB_X32_Y72_N20
\vga1|display_area~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|display_area~1_combout\ = (!\vga1|pv_sync~1_combout\ & \vga1|display_area~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|pv_sync~1_combout\,
	datad => \vga1|display_area~0_combout\,
	combout => \vga1|display_area~1_combout\);

-- Location: FF_X32_Y72_N21
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

-- Location: LCCOMB_X23_Y72_N18
\R~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~4_combout\ = (\vga1|xPixel\(7) & !\vga1|xPixel\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(9),
	combout => \R~4_combout\);

-- Location: LCCOMB_X23_Y72_N24
\letter1|mask~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter1|mask~1_combout\ = (!\vga1|xPixel\(0) & (\vga1|xPixel\(1) & (!\vga1|xPixel\(2) & \R~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(2),
	datad => \R~4_combout\,
	combout => \letter1|mask~1_combout\);

-- Location: LCCOMB_X24_Y72_N26
\R~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~6_combout\ = (!\vga1|xPixel\(6) & \vga1|xPixel\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(6),
	datad => \vga1|xPixel\(8),
	combout => \R~6_combout\);

-- Location: LCCOMB_X25_Y72_N4
\letter2|mask~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|mask~3_combout\ = (!\vga1|xPixel\(3) & (!\vga1|xPixel\(4) & (\R~6_combout\ & \vga1|xPixel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \vga1|xPixel\(4),
	datac => \R~6_combout\,
	datad => \vga1|xPixel\(5),
	combout => \letter2|mask~3_combout\);

-- Location: LCCOMB_X30_Y72_N2
\letter2|Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal27~0_combout\ = (\vga1|yPixel\(8) & (!\vga1|yPixel\(3) & (!\vga1|yPixel\(6) & \vga1|yPixel\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(3),
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(4),
	combout => \letter2|Equal27~0_combout\);

-- Location: LCCOMB_X29_Y72_N6
\letter2|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal13~0_combout\ = (!\vga1|yPixel\(9) & (\vga1|yPixel\(7) & (!\vga1|yPixel\(5) & !\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(9),
	datab => \vga1|yPixel\(7),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(2),
	combout => \letter2|Equal13~0_combout\);

-- Location: LCCOMB_X31_Y72_N28
\letter2|Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal27~1_combout\ = (\vga1|yPixel\(0) & (\vga1|yPixel\(1) & (\letter2|Equal27~0_combout\ & \letter2|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \letter2|Equal27~0_combout\,
	datad => \letter2|Equal13~0_combout\,
	combout => \letter2|Equal27~1_combout\);

-- Location: LCCOMB_X26_Y72_N30
\R~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~48_combout\ = (\letter1|mask~1_combout\ & (\letter2|mask~3_combout\ & ((\letter2|Equal27~1_combout\)))) # (!\letter1|mask~1_combout\ & (((\vga1|xPixel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter1|mask~1_combout\,
	datab => \letter2|mask~3_combout\,
	datac => \vga1|xPixel\(3),
	datad => \letter2|Equal27~1_combout\,
	combout => \R~48_combout\);

-- Location: LCCOMB_X25_Y72_N12
\letter2|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal13~1_combout\ = (\vga1|yPixel\(4) & (\vga1|yPixel\(3) & (\vga1|yPixel\(8) & !\vga1|yPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \vga1|yPixel\(3),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(6),
	combout => \letter2|Equal13~1_combout\);

-- Location: LCCOMB_X25_Y72_N18
\letter2|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal13~2_combout\ = (\vga1|yPixel\(1) & (!\vga1|yPixel\(0) & (\letter2|Equal13~0_combout\ & \letter2|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(0),
	datac => \letter2|Equal13~0_combout\,
	datad => \letter2|Equal13~1_combout\,
	combout => \letter2|Equal13~2_combout\);

-- Location: LCCOMB_X23_Y72_N16
\letter2|mask~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|mask~4_combout\ = (!\vga1|xPixel\(0) & (!\vga1|xPixel\(1) & (\vga1|xPixel\(2) & \R~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(2),
	datad => \R~4_combout\,
	combout => \letter2|mask~4_combout\);

-- Location: LCCOMB_X25_Y72_N10
\R~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~39_combout\ = (\vga1|yPixel\(2) & (!\vga1|yPixel\(9) & (!\vga1|yPixel\(5) & \vga1|yPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(9),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(7),
	combout => \R~39_combout\);

-- Location: LCCOMB_X25_Y72_N6
\letter2|Equal25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal25~3_combout\ = (\R~39_combout\ & (!\vga1|yPixel\(1) & (!\vga1|yPixel\(0) & \letter2|Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~39_combout\,
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(0),
	datad => \letter2|Equal27~0_combout\,
	combout => \letter2|Equal25~3_combout\);

-- Location: LCCOMB_X25_Y72_N24
\letter2|Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal29~0_combout\ = (\vga1|yPixel\(1) & (!\vga1|yPixel\(0) & (\letter2|Equal13~0_combout\ & \letter2|Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(0),
	datac => \letter2|Equal13~0_combout\,
	datad => \letter2|Equal27~0_combout\,
	combout => \letter2|Equal29~0_combout\);

-- Location: LCCOMB_X26_Y72_N10
\R~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~46_combout\ = (\letter1|mask~1_combout\ & ((\letter2|Equal29~0_combout\) # ((\letter2|mask~4_combout\ & \letter2|Equal25~3_combout\)))) # (!\letter1|mask~1_combout\ & (\letter2|mask~4_combout\ & (\letter2|Equal25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter1|mask~1_combout\,
	datab => \letter2|mask~4_combout\,
	datac => \letter2|Equal25~3_combout\,
	datad => \letter2|Equal29~0_combout\,
	combout => \R~46_combout\);

-- Location: LCCOMB_X26_Y72_N4
\R~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~47_combout\ = (\vga1|Equal0~0_combout\ & ((\vga1|xPixel\(3) & (\letter2|Equal13~2_combout\)) # (!\vga1|xPixel\(3) & ((\R~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \vga1|Equal0~0_combout\,
	datac => \letter2|Equal13~2_combout\,
	datad => \R~46_combout\,
	combout => \R~47_combout\);

-- Location: LCCOMB_X29_Y72_N22
\letter2|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal15~0_combout\ = (!\vga1|yPixel\(1) & (\vga1|yPixel\(0) & \letter2|Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(0),
	datad => \letter2|Equal13~0_combout\,
	combout => \letter2|Equal15~0_combout\);

-- Location: LCCOMB_X30_Y72_N30
\R~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~14_combout\ = (\vga1|yPixel\(6) & !\vga1|yPixel\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(8),
	combout => \R~14_combout\);

-- Location: LCCOMB_X29_Y72_N2
\R~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~23_combout\ = (!\vga1|xPixel\(8) & \vga1|xPixel\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(8),
	datad => \vga1|xPixel\(6),
	combout => \R~23_combout\);

-- Location: LCCOMB_X29_Y72_N0
\R~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~24_combout\ = (!\vga1|xPixel\(3) & (!\vga1|yPixel\(3) & (\R~14_combout\ & \R~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \vga1|yPixel\(3),
	datac => \R~14_combout\,
	datad => \R~23_combout\,
	combout => \R~24_combout\);

-- Location: LCCOMB_X29_Y72_N28
\R~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~44_combout\ = (!\vga1|xPixel\(5) & (\vga1|yPixel\(4) & (\vga1|xPixel\(4) & \R~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|yPixel\(4),
	datac => \vga1|xPixel\(4),
	datad => \R~24_combout\,
	combout => \R~44_combout\);

-- Location: LCCOMB_X23_Y72_N26
\R~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~43_combout\ = (!\vga1|yPixel\(0) & (\vga1|yPixel\(1) & (\letter2|Equal13~0_combout\ & \letter1|mask~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \letter2|Equal13~0_combout\,
	datad => \letter1|mask~1_combout\,
	combout => \R~43_combout\);

-- Location: LCCOMB_X26_Y72_N24
\R~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~45_combout\ = (\R~44_combout\ & ((\R~43_combout\) # ((\letter2|mask~4_combout\ & \letter2|Equal15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter2|mask~4_combout\,
	datab => \letter2|Equal15~0_combout\,
	datac => \R~44_combout\,
	datad => \R~43_combout\,
	combout => \R~45_combout\);

-- Location: LCCOMB_X26_Y72_N6
\R~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~49_combout\ = (\R~45_combout\) # ((\R~48_combout\ & (\letter1|mask~1_combout\)) # (!\R~48_combout\ & ((\R~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~48_combout\,
	datab => \letter1|mask~1_combout\,
	datac => \R~47_combout\,
	datad => \R~45_combout\,
	combout => \R~49_combout\);

-- Location: LCCOMB_X23_Y72_N28
\R~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~60_combout\ = (\vga1|xPixel\(7) & (\vga1|xPixel\(1) & (\vga1|yPixel\(1) & !\vga1|xPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \vga1|xPixel\(9),
	combout => \R~60_combout\);

-- Location: LCCOMB_X23_Y72_N10
\R~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~61_combout\ = (!\vga1|xPixel\(5) & (\vga1|xPixel\(2) & (\R~39_combout\ & \R~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(2),
	datac => \R~39_combout\,
	datad => \R~60_combout\,
	combout => \R~61_combout\);

-- Location: LCCOMB_X31_Y72_N8
\R~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~58_combout\ = (\vga1|xPixel\(4) & (\vga1|yPixel\(0) $ (\vga1|xPixel\(3) $ (!\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(3),
	datac => \vga1|xPixel\(4),
	datad => \vga1|xPixel\(0),
	combout => \R~58_combout\);

-- Location: LCCOMB_X30_Y72_N4
\letter1|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter1|Equal25~0_combout\ = (!\vga1|yPixel\(8) & (!\vga1|yPixel\(4) & (\vga1|yPixel\(6) & \vga1|yPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(4),
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(3),
	combout => \letter1|Equal25~0_combout\);

-- Location: LCCOMB_X31_Y72_N2
\R~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~57_combout\ = (\vga1|xPixel\(3) & (!\vga1|xPixel\(4) & (\vga1|yPixel\(0) $ (!\vga1|xPixel\(0))))) # (!\vga1|xPixel\(3) & (\vga1|xPixel\(4) & (\vga1|yPixel\(0) $ (\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(3),
	datac => \vga1|xPixel\(4),
	datad => \vga1|xPixel\(0),
	combout => \R~57_combout\);

-- Location: LCCOMB_X31_Y72_N18
\R~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~64_combout\ = (\vga1|xPixel\(6) & (!\vga1|xPixel\(8) & (\letter1|Equal25~0_combout\ & \R~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(8),
	datac => \letter1|Equal25~0_combout\,
	datad => \R~57_combout\,
	combout => \R~64_combout\);

-- Location: LCCOMB_X31_Y72_N22
\R~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~59_combout\ = (\R~64_combout\) # ((\letter2|Equal27~0_combout\ & (\R~6_combout\ & \R~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter2|Equal27~0_combout\,
	datab => \R~6_combout\,
	datac => \R~58_combout\,
	datad => \R~64_combout\,
	combout => \R~59_combout\);

-- Location: LCCOMB_X24_Y72_N0
\R~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~9_combout\ = (!\vga1|xPixel\(8) & (!\vga1|xPixel\(5) & (\vga1|xPixel\(6) & \vga1|xPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(6),
	datad => \vga1|xPixel\(3),
	combout => \R~9_combout\);

-- Location: LCCOMB_X29_Y72_N4
\R~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~30_combout\ = (!\vga1|yPixel\(9) & (\vga1|yPixel\(7) & (!\vga1|yPixel\(5) & \vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(9),
	datab => \vga1|yPixel\(7),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(2),
	combout => \R~30_combout\);

-- Location: LCCOMB_X29_Y72_N10
\R~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~50_combout\ = (\vga1|yPixel\(0) & (\letter2|Equal13~0_combout\ & ((\vga1|xPixel\(4))))) # (!\vga1|yPixel\(0) & (((\R~30_combout\ & !\vga1|xPixel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter2|Equal13~0_combout\,
	datab => \vga1|yPixel\(0),
	datac => \R~30_combout\,
	datad => \vga1|xPixel\(4),
	combout => \R~50_combout\);

-- Location: LCCOMB_X29_Y72_N16
\R~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~51_combout\ = (!\vga1|yPixel\(1) & (\letter1|Equal25~0_combout\ & \R~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \letter1|Equal25~0_combout\,
	datad => \R~50_combout\,
	combout => \R~51_combout\);

-- Location: LCCOMB_X25_Y72_N14
\letter2|mask~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|mask~5_combout\ = (\vga1|xPixel\(3) & (\vga1|Equal0~0_combout\ & (\letter2|Equal15~0_combout\ & \letter2|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \vga1|Equal0~0_combout\,
	datac => \letter2|Equal15~0_combout\,
	datad => \letter2|Equal13~1_combout\,
	combout => \letter2|mask~5_combout\);

-- Location: LCCOMB_X26_Y72_N8
\R~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~52_combout\ = (\letter2|mask~4_combout\ & ((\letter2|mask~5_combout\) # ((\R~9_combout\ & \R~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~9_combout\,
	datab => \letter2|mask~4_combout\,
	datac => \R~51_combout\,
	datad => \letter2|mask~5_combout\,
	combout => \R~52_combout\);

-- Location: LCCOMB_X28_Y72_N14
\R~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~12_combout\ = (\vga1|xPixel\(8) & (!\vga1|yPixel\(6) & (!\vga1|xPixel\(6) & \vga1|yPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|yPixel\(6),
	datac => \vga1|xPixel\(6),
	datad => \vga1|yPixel\(8),
	combout => \R~12_combout\);

-- Location: LCCOMB_X29_Y72_N30
\R~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~53_combout\ = (\R~24_combout\) # ((\R~12_combout\ & (\vga1|xPixel\(3) & \vga1|yPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~12_combout\,
	datab => \vga1|xPixel\(3),
	datac => \vga1|yPixel\(3),
	datad => \R~24_combout\,
	combout => \R~53_combout\);

-- Location: LCCOMB_X26_Y72_N14
\letter2|mask~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|mask~6_combout\ = (\letter2|Equal27~0_combout\ & (\letter2|mask~3_combout\ & (\letter2|mask~4_combout\ & \letter2|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter2|Equal27~0_combout\,
	datab => \letter2|mask~3_combout\,
	datac => \letter2|mask~4_combout\,
	datad => \letter2|Equal15~0_combout\,
	combout => \letter2|mask~6_combout\);

-- Location: LCCOMB_X23_Y72_N8
\R~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~54_combout\ = (\vga1|xPixel\(4) & (!\vga1|xPixel\(5) & \vga1|yPixel\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(5),
	datad => \vga1|yPixel\(4),
	combout => \R~54_combout\);

-- Location: LCCOMB_X28_Y72_N12
\letter2|Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|Equal25~2_combout\ = (!\vga1|yPixel\(1) & !\vga1|yPixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(0),
	combout => \letter2|Equal25~2_combout\);

-- Location: LCCOMB_X23_Y72_N6
\R~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~55_combout\ = (\R~54_combout\ & (\letter2|Equal25~2_combout\ & (\vga1|xPixel\(0) $ (!\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(2),
	datac => \R~54_combout\,
	datad => \letter2|Equal25~2_combout\,
	combout => \R~55_combout\);

-- Location: LCCOMB_X23_Y72_N30
\R~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~63_combout\ = (!\vga1|xPixel\(9) & (!\vga1|xPixel\(1) & (\vga1|xPixel\(7) & \letter2|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(7),
	datad => \letter2|Equal13~0_combout\,
	combout => \R~63_combout\);

-- Location: LCCOMB_X26_Y72_N20
\R~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~56_combout\ = (\letter2|mask~6_combout\) # ((\R~53_combout\ & (\R~55_combout\ & \R~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~53_combout\,
	datab => \letter2|mask~6_combout\,
	datac => \R~55_combout\,
	datad => \R~63_combout\,
	combout => \R~56_combout\);

-- Location: LCCOMB_X26_Y72_N26
\R~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~62_combout\ = (\R~52_combout\) # ((\R~56_combout\) # ((\R~61_combout\ & \R~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~61_combout\,
	datab => \R~59_combout\,
	datac => \R~52_combout\,
	datad => \R~56_combout\,
	combout => \R~62_combout\);

-- Location: LCCOMB_X23_Y72_N14
\R~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~22_combout\ = (!\vga1|xPixel\(9) & (!\vga1|xPixel\(2) & (\vga1|xPixel\(7) & \vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(2),
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(0),
	combout => \R~22_combout\);

-- Location: LCCOMB_X29_Y72_N12
\R~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~28_combout\ = (\vga1|yPixel\(1) & (\vga1|yPixel\(0) $ (\vga1|xPixel\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(0),
	datad => \vga1|xPixel\(4),
	combout => \R~28_combout\);

-- Location: LCCOMB_X29_Y72_N14
\R~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~29_combout\ = (\vga1|xPixel\(1) & (\letter1|Equal25~0_combout\ & (\letter2|Equal13~0_combout\ & \R~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \letter1|Equal25~0_combout\,
	datac => \letter2|Equal13~0_combout\,
	datad => \R~28_combout\,
	combout => \R~29_combout\);

-- Location: LCCOMB_X29_Y72_N18
\R~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~31_combout\ = (\vga1|yPixel\(0) & (\letter2|Equal13~0_combout\ & ((!\vga1|xPixel\(4))))) # (!\vga1|yPixel\(0) & (((\R~30_combout\ & \vga1|xPixel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter2|Equal13~0_combout\,
	datab => \vga1|yPixel\(0),
	datac => \R~30_combout\,
	datad => \vga1|xPixel\(4),
	combout => \R~31_combout\);

-- Location: LCCOMB_X29_Y72_N20
\R~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~32_combout\ = (!\vga1|xPixel\(1) & (!\vga1|yPixel\(1) & (\letter1|Equal25~0_combout\ & \R~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \letter1|Equal25~0_combout\,
	datad => \R~31_combout\,
	combout => \R~32_combout\);

-- Location: LCCOMB_X29_Y72_N8
\R~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~26_combout\ = (!\vga1|xPixel\(5) & (\vga1|yPixel\(4) & \vga1|xPixel\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|yPixel\(4),
	datad => \vga1|xPixel\(4),
	combout => \R~26_combout\);

-- Location: LCCOMB_X30_Y72_N8
\R~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~25_combout\ = (\vga1|yPixel\(0) & (!\vga1|yPixel\(1) & !\vga1|xPixel\(1))) # (!\vga1|yPixel\(0) & (\vga1|yPixel\(1) & \vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \vga1|xPixel\(1),
	combout => \R~25_combout\);

-- Location: LCCOMB_X29_Y72_N24
\R~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~27_combout\ = (\R~26_combout\ & (\letter2|Equal13~0_combout\ & (\R~25_combout\ & \R~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~26_combout\,
	datab => \letter2|Equal13~0_combout\,
	datac => \R~25_combout\,
	datad => \R~24_combout\,
	combout => \R~27_combout\);

-- Location: LCCOMB_X28_Y72_N4
\R~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~33_combout\ = (\R~27_combout\) # ((\R~9_combout\ & ((\R~29_combout\) # (\R~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~9_combout\,
	datab => \R~29_combout\,
	datac => \R~32_combout\,
	datad => \R~27_combout\,
	combout => \R~33_combout\);

-- Location: LCCOMB_X25_Y72_N2
\R~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~34_combout\ = (\vga1|xPixel\(3)) # (\vga1|xPixel\(1) $ (\vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(1),
	combout => \R~34_combout\);

-- Location: LCCOMB_X25_Y72_N0
\R~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~35_combout\ = (!\vga1|xPixel\(5) & (\vga1|yPixel\(0) & (\R~6_combout\ & !\R~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|yPixel\(0),
	datac => \R~6_combout\,
	datad => \R~34_combout\,
	combout => \R~35_combout\);

-- Location: LCCOMB_X25_Y72_N30
\R~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~36_combout\ = (\letter2|Equal13~0_combout\ & (\vga1|xPixel\(4) & (\letter2|Equal27~0_combout\ & \R~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter2|Equal13~0_combout\,
	datab => \vga1|xPixel\(4),
	datac => \letter2|Equal27~0_combout\,
	datad => \R~35_combout\,
	combout => \R~36_combout\);

-- Location: LCCOMB_X25_Y72_N22
\R~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~40_combout\ = (\vga1|xPixel\(1) & (\letter2|Equal29~0_combout\)) # (!\vga1|xPixel\(1) & ((\letter2|Equal25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \letter2|Equal29~0_combout\,
	datac => \vga1|xPixel\(1),
	datad => \letter2|Equal25~3_combout\,
	combout => \R~40_combout\);

-- Location: LCCOMB_X25_Y72_N26
\R~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~37_combout\ = (\vga1|xPixel\(3) & (\vga1|Equal0~0_combout\ & ((\vga1|xPixel\(1)) # (\letter2|Equal13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \vga1|Equal0~0_combout\,
	datac => \vga1|xPixel\(1),
	datad => \letter2|Equal13~1_combout\,
	combout => \R~37_combout\);

-- Location: LCCOMB_X25_Y72_N28
\R~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~38_combout\ = (\R~37_combout\ & ((\vga1|xPixel\(1) & ((\letter2|Equal13~2_combout\))) # (!\vga1|xPixel\(1) & (\letter2|Equal15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~37_combout\,
	datab => \letter2|Equal15~0_combout\,
	datac => \vga1|xPixel\(1),
	datad => \letter2|Equal13~2_combout\,
	combout => \R~38_combout\);

-- Location: LCCOMB_X25_Y72_N20
\R~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~41_combout\ = (\R~36_combout\) # ((\R~38_combout\) # ((\letter2|mask~3_combout\ & \R~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~36_combout\,
	datab => \letter2|mask~3_combout\,
	datac => \R~40_combout\,
	datad => \R~38_combout\,
	combout => \R~41_combout\);

-- Location: LCCOMB_X31_Y72_N30
\R~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~18_combout\ = (\vga1|yPixel\(1) & (!\vga1|yPixel\(2) & !\vga1|yPixel\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \vga1|yPixel\(9),
	combout => \R~18_combout\);

-- Location: LCCOMB_X31_Y72_N24
\R~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~19_combout\ = (\vga1|yPixel\(5)) # (\vga1|yPixel\(0) $ (\vga1|xPixel\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|yPixel\(5),
	datac => \vga1|xPixel\(4),
	combout => \R~19_combout\);

-- Location: LCCOMB_X31_Y72_N14
\R~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~20_combout\ = (\R~18_combout\ & (\letter1|Equal25~0_combout\ & (\vga1|yPixel\(7) & !\R~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~18_combout\,
	datab => \letter1|Equal25~0_combout\,
	datac => \vga1|yPixel\(7),
	datad => \R~19_combout\,
	combout => \R~20_combout\);

-- Location: LCCOMB_X23_Y72_N2
\R~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~5_combout\ = (\vga1|yPixel\(7) & (!\vga1|xPixel\(1) & (!\vga1|yPixel\(9) & \R~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(9),
	datad => \R~4_combout\,
	combout => \R~5_combout\);

-- Location: LCCOMB_X28_Y72_N28
\letter2|mask~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|mask~2_combout\ = (\vga1|xPixel\(0) & (\vga1|xPixel\(5) & (!\vga1|xPixel\(4) & \vga1|xPixel\(2)))) # (!\vga1|xPixel\(0) & (!\vga1|xPixel\(5) & (\vga1|xPixel\(4) & !\vga1|xPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(4),
	datad => \vga1|xPixel\(2),
	combout => \letter2|mask~2_combout\);

-- Location: LCCOMB_X28_Y72_N16
\letter2|mask~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|mask~0_combout\ = (\vga1|yPixel\(5) & (((!\vga1|yPixel\(1) & !\vga1|yPixel\(0))) # (!\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(0),
	combout => \letter2|mask~0_combout\);

-- Location: LCCOMB_X28_Y72_N10
\letter2|mask~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter2|mask~1_combout\ = (\vga1|yPixel\(4) & (!\vga1|yPixel\(5))) # (!\vga1|yPixel\(4) & (((!\vga1|yPixel\(3) & \letter2|mask~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(5),
	datab => \vga1|yPixel\(4),
	datac => \vga1|yPixel\(3),
	datad => \letter2|mask~0_combout\,
	combout => \letter2|mask~1_combout\);

-- Location: LCCOMB_X28_Y72_N24
\R~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~13_combout\ = (!\vga1|xPixel\(3) & (\letter2|mask~2_combout\ & (\R~12_combout\ & \letter2|mask~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \letter2|mask~2_combout\,
	datac => \R~12_combout\,
	datad => \letter2|mask~1_combout\,
	combout => \R~13_combout\);

-- Location: LCCOMB_X28_Y72_N20
\R~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~15_combout\ = (!\vga1|yPixel\(5) & ((\vga1|xPixel\(2) & (\vga1|xPixel\(4) & \vga1|xPixel\(0))) # (!\vga1|xPixel\(2) & (!\vga1|xPixel\(4) & !\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(4),
	datac => \vga1|yPixel\(5),
	datad => \vga1|xPixel\(0),
	combout => \R~15_combout\);

-- Location: LCCOMB_X28_Y72_N6
\letter1|mask~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letter1|mask~0_combout\ = (\vga1|yPixel\(3) & ((\letter2|Equal25~2_combout\) # ((!\vga1|yPixel\(4)) # (!\vga1|yPixel\(2))))) # (!\vga1|yPixel\(3) & (((\vga1|yPixel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letter2|Equal25~2_combout\,
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(3),
	datad => \vga1|yPixel\(4),
	combout => \letter1|mask~0_combout\);

-- Location: LCCOMB_X28_Y72_N26
\R~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~16_combout\ = (\R~9_combout\ & (\R~15_combout\ & (\R~14_combout\ & \letter1|mask~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~9_combout\,
	datab => \R~15_combout\,
	datac => \R~14_combout\,
	datad => \letter1|mask~0_combout\,
	combout => \R~16_combout\);

-- Location: LCCOMB_X24_Y72_N30
\R~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~7_combout\ = (\vga1|xPixel\(0) & (!\vga1|xPixel\(5) & (\vga1|xPixel\(4) & \vga1|xPixel\(2)))) # (!\vga1|xPixel\(0) & (\vga1|xPixel\(5) & (!\vga1|xPixel\(4) & !\vga1|xPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(4),
	datad => \vga1|xPixel\(2),
	combout => \R~7_combout\);

-- Location: LCCOMB_X28_Y72_N8
\R~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~8_combout\ = (\R~6_combout\ & (\letter2|Equal27~0_combout\ & (\R~7_combout\ & !\vga1|xPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~6_combout\,
	datab => \letter2|Equal27~0_combout\,
	datac => \R~7_combout\,
	datad => \vga1|xPixel\(3),
	combout => \R~8_combout\);

-- Location: LCCOMB_X24_Y72_N2
\R~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~10_combout\ = (\R~9_combout\ & ((\vga1|xPixel\(2) & (!\vga1|xPixel\(4) & \vga1|xPixel\(0))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(4) & !\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(0),
	datad => \R~9_combout\,
	combout => \R~10_combout\);

-- Location: LCCOMB_X28_Y72_N18
\R~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~11_combout\ = (\vga1|Equal1~0_combout\ & ((\R~8_combout\) # ((\letter1|Equal25~0_combout\ & \R~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal1~0_combout\,
	datab => \letter1|Equal25~0_combout\,
	datac => \R~8_combout\,
	datad => \R~10_combout\,
	combout => \R~11_combout\);

-- Location: LCCOMB_X28_Y72_N0
\R~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~17_combout\ = (\R~5_combout\ & ((\R~13_combout\) # ((\R~16_combout\) # (\R~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~5_combout\,
	datab => \R~13_combout\,
	datac => \R~16_combout\,
	datad => \R~11_combout\,
	combout => \R~17_combout\);

-- Location: LCCOMB_X28_Y72_N2
\R~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~21_combout\ = (\R~17_combout\) # ((\R~9_combout\ & (\letter1|mask~1_combout\ & \R~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~9_combout\,
	datab => \letter1|mask~1_combout\,
	datac => \R~20_combout\,
	datad => \R~17_combout\,
	combout => \R~21_combout\);

-- Location: LCCOMB_X28_Y72_N22
\R~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~42_combout\ = (\R~21_combout\) # ((\R~22_combout\ & ((\R~33_combout\) # (\R~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~22_combout\,
	datab => \R~33_combout\,
	datac => \R~41_combout\,
	datad => \R~21_combout\,
	combout => \R~42_combout\);

-- Location: LCCOMB_X27_Y72_N6
R : cycloneive_lcell_comb
-- Equation(s):
-- \R~combout\ = (\vga1|display_area~q\ & ((\R~49_combout\) # ((\R~62_combout\) # (\R~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|display_area~q\,
	datab => \R~49_combout\,
	datac => \R~62_combout\,
	datad => \R~42_combout\,
	combout => \R~combout\);

-- Location: LCCOMB_X26_Y72_N28
\VGA_R[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[0]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_R[0]~reg0feeder_combout\);

-- Location: FF_X26_Y72_N29
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

-- Location: LCCOMB_X26_Y72_N2
\VGA_R[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[1]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_R[1]~reg0feeder_combout\);

-- Location: FF_X26_Y72_N3
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_R[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: FF_X28_Y72_N13
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: LCCOMB_X26_Y72_N0
\VGA_R[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[3]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_R[3]~reg0feeder_combout\);

-- Location: FF_X26_Y72_N1
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

-- Location: LCCOMB_X26_Y72_N22
\VGA_R[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[4]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_R[4]~reg0feeder_combout\);

-- Location: FF_X26_Y72_N23
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_R[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: LCCOMB_X26_Y72_N12
\VGA_R[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_R[5]~reg0feeder_combout\);

-- Location: FF_X26_Y72_N13
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

-- Location: LCCOMB_X26_Y72_N18
\VGA_R[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_R[6]~reg0feeder_combout\);

-- Location: FF_X26_Y72_N19
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

-- Location: LCCOMB_X26_Y72_N16
\VGA_R[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[7]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_R[7]~reg0feeder_combout\);

-- Location: FF_X26_Y72_N17
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

-- Location: LCCOMB_X27_Y72_N28
\VGA_G[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[0]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_G[0]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N29
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

-- Location: LCCOMB_X27_Y72_N26
\VGA_G[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[1]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_G[1]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N27
\VGA_G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_G[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[1]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N24
\VGA_G[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[2]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_G[2]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N25
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

-- Location: LCCOMB_X27_Y72_N2
\VGA_G[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[3]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_G[3]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N3
\VGA_G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_G[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[3]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N4
\VGA_G[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[4]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_G[4]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N5
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

-- Location: LCCOMB_X27_Y72_N18
\VGA_G[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[5]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_G[5]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N19
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

-- Location: LCCOMB_X27_Y72_N16
\VGA_G[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[6]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_G[6]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N17
\VGA_G[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_G[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[6]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N22
\VGA_G[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[7]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_G[7]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N23
\VGA_G[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_G[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[7]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N0
\VGA_B[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[0]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_B[0]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N1
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

-- Location: LCCOMB_X27_Y72_N14
\VGA_B[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[1]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_B[1]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N15
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

-- Location: LCCOMB_X27_Y72_N8
\VGA_B[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[2]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_B[2]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N9
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_B[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N30
\VGA_B[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[3]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_B[3]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N31
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

-- Location: LCCOMB_X27_Y72_N20
\VGA_B[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[4]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_B[4]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N21
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

-- Location: LCCOMB_X27_Y72_N10
\VGA_B[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[5]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_B[5]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N11
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

-- Location: LCCOMB_X27_Y72_N12
\VGA_B[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[6]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~combout\,
	combout => \VGA_B[6]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N13
\VGA_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \VGA_B[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[6]~reg0_q\);

-- Location: FF_X27_Y72_N7
\VGA_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[7]~reg0_q\);

-- Location: LCCOMB_X23_Y72_N0
\vga1|ph_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~1_combout\ = (\vga1|xPixel\(2) & ((\vga1|xPixel\(5)) # ((\vga1|xPixel\(0) & \vga1|xPixel\(1))))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(0) & (\vga1|xPixel\(5) & \vga1|xPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(2),
	datac => \vga1|xPixel\(5),
	datad => \vga1|xPixel\(1),
	combout => \vga1|ph_sync~1_combout\);

-- Location: LCCOMB_X31_Y72_N20
\vga1|ph_sync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~2_combout\ = (\vga1|xPixel\(4)) # ((\vga1|ph_sync~1_combout\ & \vga1|xPixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datac => \vga1|ph_sync~1_combout\,
	datad => \vga1|xPixel\(3),
	combout => \vga1|ph_sync~2_combout\);

-- Location: LCCOMB_X32_Y72_N26
\vga1|ph_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~0_combout\ = (\vga1|xPixel\(9) & (!\vga1|xPixel\(8) & \vga1|xPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(8),
	datad => \vga1|xPixel\(7),
	combout => \vga1|ph_sync~0_combout\);

-- Location: LCCOMB_X31_Y72_N16
\vga1|ph_sync~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~3_combout\ = (\vga1|ph_sync~0_combout\ & ((\vga1|xPixel\(5) & ((!\vga1|xPixel\(6)) # (!\vga1|ph_sync~2_combout\))) # (!\vga1|xPixel\(5) & ((\vga1|ph_sync~2_combout\) # (\vga1|xPixel\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|ph_sync~2_combout\,
	datac => \vga1|xPixel\(6),
	datad => \vga1|ph_sync~0_combout\,
	combout => \vga1|ph_sync~3_combout\);

-- Location: FF_X31_Y72_N17
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

-- Location: LCCOMB_X31_Y72_N26
\vga1|pv_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~0_combout\ = ((\vga1|yPixel\(4)) # ((\vga1|yPixel\(2)) # (!\vga1|yPixel\(1)))) # (!\vga1|yPixel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \vga1|yPixel\(4),
	datac => \vga1|yPixel\(2),
	datad => \vga1|yPixel\(1),
	combout => \vga1|pv_sync~0_combout\);

-- Location: LCCOMB_X31_Y72_N10
\vga1|pv_sync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~2_combout\ = (!\vga1|yPixel\(9) & (!\vga1|pv_sync~0_combout\ & \vga1|pv_sync~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(9),
	datac => \vga1|pv_sync~0_combout\,
	datad => \vga1|pv_sync~1_combout\,
	combout => \vga1|pv_sync~2_combout\);

-- Location: FF_X31_Y72_N11
\vga1|pv_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|pv_sync~2_combout\,
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


