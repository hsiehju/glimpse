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

-- DATE "04/14/2016 23:43:05"

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
	ssOut : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	spi_clk : OUT std_logic;
	byte_received : OUT std_logic;
	new_byte_out : OUT std_logic;
	new_byte_out1 : OUT std_logic;
	clk_out : OUT std_logic;
	ssOut1 : OUT std_logic_vector(6 DOWNTO 0);
	ssOut2 : OUT std_logic_vector(6 DOWNTO 0)
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
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_clk	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- byte_received	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_byte_out	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_byte_out1	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssOut2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_clk	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_spi_clk : std_logic;
SIGNAL ww_byte_received : std_logic;
SIGNAL ww_new_byte_out : std_logic;
SIGNAL ww_new_byte_out1 : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_ssOut1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssOut2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \master_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ssOut[0]~output_o\ : std_logic;
SIGNAL \ssOut[1]~output_o\ : std_logic;
SIGNAL \ssOut[2]~output_o\ : std_logic;
SIGNAL \ssOut[3]~output_o\ : std_logic;
SIGNAL \ssOut[4]~output_o\ : std_logic;
SIGNAL \ssOut[5]~output_o\ : std_logic;
SIGNAL \ssOut[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \spi_clk~output_o\ : std_logic;
SIGNAL \byte_received~output_o\ : std_logic;
SIGNAL \new_byte_out~output_o\ : std_logic;
SIGNAL \new_byte_out1~output_o\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \ssOut1[0]~output_o\ : std_logic;
SIGNAL \ssOut1[1]~output_o\ : std_logic;
SIGNAL \ssOut1[2]~output_o\ : std_logic;
SIGNAL \ssOut1[3]~output_o\ : std_logic;
SIGNAL \ssOut1[4]~output_o\ : std_logic;
SIGNAL \ssOut1[5]~output_o\ : std_logic;
SIGNAL \ssOut1[6]~output_o\ : std_logic;
SIGNAL \ssOut2[0]~output_o\ : std_logic;
SIGNAL \ssOut2[1]~output_o\ : std_logic;
SIGNAL \ssOut2[2]~output_o\ : std_logic;
SIGNAL \ssOut2[3]~output_o\ : std_logic;
SIGNAL \ssOut2[4]~output_o\ : std_logic;
SIGNAL \ssOut2[5]~output_o\ : std_logic;
SIGNAL \ssOut2[6]~output_o\ : std_logic;
SIGNAL \master_clk~input_o\ : std_logic;
SIGNAL \master_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \datain~input_o\ : std_logic;
SIGNAL \datainr[0]~feeder_combout\ : std_logic;
SIGNAL \datainr[1]~feeder_combout\ : std_logic;
SIGNAL \ss~input_o\ : std_logic;
SIGNAL \ss_rise[1]~feeder_combout\ : std_logic;
SIGNAL \s_clk~input_o\ : std_logic;
SIGNAL \s_clkr[0]~feeder_combout\ : std_logic;
SIGNAL \byte_builder[7]~0_combout\ : std_logic;
SIGNAL \ss_rise[2]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \byte_received~reg0_q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \byte_builder[4]~feeder_combout\ : std_logic;
SIGNAL \new_byte[7]~feeder_combout\ : std_logic;
SIGNAL \n3|WideOr3~3_combout\ : std_logic;
SIGNAL \n3|WideOr3~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \state.E~q\ : std_logic;
SIGNAL \n3|WideOr5~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state.A~q\ : std_logic;
SIGNAL \next_state.B~0_combout\ : std_logic;
SIGNAL \state.B~q\ : std_logic;
SIGNAL \next_state.C~0_combout\ : std_logic;
SIGNAL \state.000100~q\ : std_logic;
SIGNAL \next_state.D~0_combout\ : std_logic;
SIGNAL \state.D~q\ : std_logic;
SIGNAL \n1|WideOr6~4_combout\ : std_logic;
SIGNAL \n1|WideOr6~1_combout\ : std_logic;
SIGNAL \n1|WideOr6~0_combout\ : std_logic;
SIGNAL \n1|WideOr5~2_combout\ : std_logic;
SIGNAL \n1|WideOr6~2_combout\ : std_logic;
SIGNAL \n1|WideOr6~3_combout\ : std_logic;
SIGNAL \n1|WideOr6~5_combout\ : std_logic;
SIGNAL \n1|WideOr6~6_combout\ : std_logic;
SIGNAL \n1|WideOr5~7_combout\ : std_logic;
SIGNAL \n1|WideOr5~11_combout\ : std_logic;
SIGNAL \n1|WideOr5~9_combout\ : std_logic;
SIGNAL \n1|WideOr5~8_combout\ : std_logic;
SIGNAL \n1|WideOr5~3_combout\ : std_logic;
SIGNAL \n1|WideOr5~4_combout\ : std_logic;
SIGNAL \n1|WideOr5~5_combout\ : std_logic;
SIGNAL \n1|WideOr5~6_combout\ : std_logic;
SIGNAL \n1|WideOr5~10_combout\ : std_logic;
SIGNAL \n1|WideOr4~1_combout\ : std_logic;
SIGNAL \n1|WideOr4~0_combout\ : std_logic;
SIGNAL \n1|WideOr4~2_combout\ : std_logic;
SIGNAL \n1|WideOr4~3_combout\ : std_logic;
SIGNAL \n1|WideOr4~4_combout\ : std_logic;
SIGNAL \n1|WideOr3~0_combout\ : std_logic;
SIGNAL \n1|WideOr3~4_combout\ : std_logic;
SIGNAL \n1|WideOr3~5_combout\ : std_logic;
SIGNAL \n1|WideOr3~6_combout\ : std_logic;
SIGNAL \n1|WideOr3~2_combout\ : std_logic;
SIGNAL \n1|WideOr3~1_combout\ : std_logic;
SIGNAL \n1|WideOr3~3_combout\ : std_logic;
SIGNAL \n1|WideOr3~7_combout\ : std_logic;
SIGNAL \n1|WideOr2~3_combout\ : std_logic;
SIGNAL \n1|WideOr2~1_combout\ : std_logic;
SIGNAL \n1|WideOr2~0_combout\ : std_logic;
SIGNAL \n1|WideOr2~2_combout\ : std_logic;
SIGNAL \n1|WideOr2~4_combout\ : std_logic;
SIGNAL \n1|WideOr2~5_combout\ : std_logic;
SIGNAL \n1|WideOr1~1_combout\ : std_logic;
SIGNAL \n1|WideOr1~2_combout\ : std_logic;
SIGNAL \n1|WideOr1~0_combout\ : std_logic;
SIGNAL \n1|WideOr1~3_combout\ : std_logic;
SIGNAL \n1|WideOr1~4_combout\ : std_logic;
SIGNAL \n1|WideOr1~5_combout\ : std_logic;
SIGNAL \n1|WideOr0~0_combout\ : std_logic;
SIGNAL \n1|WideOr0~2_combout\ : std_logic;
SIGNAL \n1|WideOr0~1_combout\ : std_logic;
SIGNAL \n1|WideOr0~4_combout\ : std_logic;
SIGNAL \n1|WideOr0~3_combout\ : std_logic;
SIGNAL \n1|WideOr0~5_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \LEDG[3]~reg0_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \LEDG[4]~reg0_q\ : std_logic;
SIGNAL \LEDG[6]~0_combout\ : std_logic;
SIGNAL \LEDG[6]~reg0_q\ : std_logic;
SIGNAL \n3|WideOr6~5_combout\ : std_logic;
SIGNAL \n3|WideOr6~4_combout\ : std_logic;
SIGNAL \n3|WideOr6~1_combout\ : std_logic;
SIGNAL \n3|WideOr6~0_combout\ : std_logic;
SIGNAL \n3|WideOr6~2_combout\ : std_logic;
SIGNAL \n3|WideOr6~3_combout\ : std_logic;
SIGNAL \n3|WideOr6~6_combout\ : std_logic;
SIGNAL \n3|WideOr5~3_combout\ : std_logic;
SIGNAL \n3|WideOr5~1_combout\ : std_logic;
SIGNAL \n3|WideOr5~2_combout\ : std_logic;
SIGNAL \n3|WideOr5~4_combout\ : std_logic;
SIGNAL \n3|WideOr5~7_combout\ : std_logic;
SIGNAL \n3|WideOr5~5_combout\ : std_logic;
SIGNAL \n3|WideOr5~6_combout\ : std_logic;
SIGNAL \n3|WideOr5~8_combout\ : std_logic;
SIGNAL \n3|WideOr5~9_combout\ : std_logic;
SIGNAL \n3|WideOr4~1_combout\ : std_logic;
SIGNAL \n3|WideOr4~2_combout\ : std_logic;
SIGNAL \n3|WideOr4~3_combout\ : std_logic;
SIGNAL \n3|WideOr4~0_combout\ : std_logic;
SIGNAL \n3|WideOr4~4_combout\ : std_logic;
SIGNAL \n3|WideOr3~0_combout\ : std_logic;
SIGNAL \n3|WideOr3~1_combout\ : std_logic;
SIGNAL \n3|WideOr3~2_combout\ : std_logic;
SIGNAL \n3|WideOr3~5_combout\ : std_logic;
SIGNAL \n3|WideOr3~6_combout\ : std_logic;
SIGNAL \n3|WideOr3~7_combout\ : std_logic;
SIGNAL \n3|WideOr2~6_combout\ : std_logic;
SIGNAL \n3|WideOr2~2_combout\ : std_logic;
SIGNAL \n3|WideOr2~3_combout\ : std_logic;
SIGNAL \n3|WideOr2~4_combout\ : std_logic;
SIGNAL \n3|WideOr2~5_combout\ : std_logic;
SIGNAL \n3|WideOr1~4_combout\ : std_logic;
SIGNAL \n3|WideOr1~1_combout\ : std_logic;
SIGNAL \n3|WideOr1~2_combout\ : std_logic;
SIGNAL \n3|WideOr1~0_combout\ : std_logic;
SIGNAL \n3|WideOr1~3_combout\ : std_logic;
SIGNAL \n3|WideOr1~5_combout\ : std_logic;
SIGNAL \n3|WideOr0~1_combout\ : std_logic;
SIGNAL \n3|WideOr0~2_combout\ : std_logic;
SIGNAL \n3|WideOr0~4_combout\ : std_logic;
SIGNAL \n3|WideOr0~3_combout\ : std_logic;
SIGNAL \n3|WideOr0~0_combout\ : std_logic;
SIGNAL \n3|WideOr0~5_combout\ : std_logic;
SIGNAL \n2|WideOr6~1_combout\ : std_logic;
SIGNAL \n2|WideOr5~2_combout\ : std_logic;
SIGNAL \n2|WideOr6~0_combout\ : std_logic;
SIGNAL \n2|WideOr6~2_combout\ : std_logic;
SIGNAL \n2|WideOr6~3_combout\ : std_logic;
SIGNAL \n2|WideOr6~5_combout\ : std_logic;
SIGNAL \n2|WideOr6~4_combout\ : std_logic;
SIGNAL \n2|WideOr6~6_combout\ : std_logic;
SIGNAL \n2|WideOr5~4_combout\ : std_logic;
SIGNAL \n2|WideOr5~3_combout\ : std_logic;
SIGNAL \n2|WideOr5~5_combout\ : std_logic;
SIGNAL \n2|WideOr5~6_combout\ : std_logic;
SIGNAL \n2|WideOr5~9_combout\ : std_logic;
SIGNAL \n2|WideOr5~8_combout\ : std_logic;
SIGNAL \n2|WideOr5~7_combout\ : std_logic;
SIGNAL \n2|WideOr5~11_combout\ : std_logic;
SIGNAL \n2|WideOr5~10_combout\ : std_logic;
SIGNAL \n2|WideOr4~0_combout\ : std_logic;
SIGNAL \n2|WideOr4~1_combout\ : std_logic;
SIGNAL \n2|WideOr4~2_combout\ : std_logic;
SIGNAL \n2|WideOr4~3_combout\ : std_logic;
SIGNAL \n2|WideOr4~4_combout\ : std_logic;
SIGNAL \n2|WideOr3~6_combout\ : std_logic;
SIGNAL \n2|WideOr3~1_combout\ : std_logic;
SIGNAL \n2|WideOr3~2_combout\ : std_logic;
SIGNAL \n2|WideOr3~3_combout\ : std_logic;
SIGNAL \n2|WideOr3~0_combout\ : std_logic;
SIGNAL \n2|WideOr3~4_combout\ : std_logic;
SIGNAL \n2|WideOr3~5_combout\ : std_logic;
SIGNAL \n2|WideOr3~7_combout\ : std_logic;
SIGNAL \n2|WideOr2~4_combout\ : std_logic;
SIGNAL \n2|WideOr2~0_combout\ : std_logic;
SIGNAL \n2|WideOr2~1_combout\ : std_logic;
SIGNAL \n2|WideOr2~2_combout\ : std_logic;
SIGNAL \n2|WideOr2~3_combout\ : std_logic;
SIGNAL \n2|WideOr2~5_combout\ : std_logic;
SIGNAL \n2|WideOr1~2_combout\ : std_logic;
SIGNAL \n2|WideOr1~0_combout\ : std_logic;
SIGNAL \n2|WideOr1~1_combout\ : std_logic;
SIGNAL \n2|WideOr1~3_combout\ : std_logic;
SIGNAL \n2|WideOr1~4_combout\ : std_logic;
SIGNAL \n2|WideOr1~5_combout\ : std_logic;
SIGNAL \n2|WideOr0~0_combout\ : std_logic;
SIGNAL \n2|WideOr0~1_combout\ : std_logic;
SIGNAL \n2|WideOr0~2_combout\ : std_logic;
SIGNAL \n2|WideOr0~3_combout\ : std_logic;
SIGNAL \n2|WideOr0~4_combout\ : std_logic;
SIGNAL \n2|WideOr0~5_combout\ : std_logic;
SIGNAL s_clkr : std_logic_vector(2 DOWNTO 0);
SIGNAL datainr : std_logic_vector(1 DOWNTO 0);
SIGNAL ss_rise : std_logic_vector(2 DOWNTO 0);
SIGNAL byte_builder : std_logic_vector(7 DOWNTO 0);
SIGNAL new_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL char_to_add : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_master_clk <= master_clk;
ww_s_clk <= s_clk;
ww_ss <= ss;
ww_datain <= datain;
ssOut <= ww_ssOut;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
spi_clk <= ww_spi_clk;
byte_received <= ww_byte_received;
new_byte_out <= ww_new_byte_out;
new_byte_out1 <= ww_new_byte_out1;
clk_out <= ww_clk_out;
ssOut1 <= ww_ssOut1;
ssOut2 <= ww_ssOut2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\master_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_clk~input_o\);

-- Location: IOOBUF_X69_Y73_N23
\ssOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n1|WideOr6~6_combout\,
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
	i => \n1|WideOr5~10_combout\,
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
	i => \n1|WideOr4~4_combout\,
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
	i => \n1|WideOr3~7_combout\,
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
	i => \n1|WideOr2~5_combout\,
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
	i => \n1|WideOr1~5_combout\,
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
	i => \n1|WideOr0~5_combout\,
	devoe => ww_devoe,
	o => \ssOut[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\spi_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_clk~input_o\,
	devoe => ww_devoe,
	o => \spi_clk~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\byte_received~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \byte_received~reg0_q\,
	devoe => ww_devoe,
	o => \byte_received~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\new_byte_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(0),
	devoe => ww_devoe,
	o => \new_byte_out~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\new_byte_out1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => new_byte(1),
	devoe => ww_devoe,
	o => \new_byte_out1~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\clk_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\ssOut1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n3|WideOr6~6_combout\,
	devoe => ww_devoe,
	o => \ssOut1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\ssOut1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n3|WideOr5~9_combout\,
	devoe => ww_devoe,
	o => \ssOut1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\ssOut1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n3|WideOr4~4_combout\,
	devoe => ww_devoe,
	o => \ssOut1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\ssOut1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n3|WideOr3~6_combout\,
	devoe => ww_devoe,
	o => \ssOut1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\ssOut1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n3|WideOr2~5_combout\,
	devoe => ww_devoe,
	o => \ssOut1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\ssOut1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n3|WideOr1~5_combout\,
	devoe => ww_devoe,
	o => \ssOut1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\ssOut1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n3|WideOr0~5_combout\,
	devoe => ww_devoe,
	o => \ssOut1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\ssOut2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n2|WideOr6~6_combout\,
	devoe => ww_devoe,
	o => \ssOut2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\ssOut2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n2|WideOr5~10_combout\,
	devoe => ww_devoe,
	o => \ssOut2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\ssOut2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n2|WideOr4~4_combout\,
	devoe => ww_devoe,
	o => \ssOut2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\ssOut2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n2|WideOr3~7_combout\,
	devoe => ww_devoe,
	o => \ssOut2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\ssOut2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n2|WideOr2~5_combout\,
	devoe => ww_devoe,
	o => \ssOut2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\ssOut2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n2|WideOr1~5_combout\,
	devoe => ww_devoe,
	o => \ssOut2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\ssOut2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n2|WideOr0~5_combout\,
	devoe => ww_devoe,
	o => \ssOut2[6]~output_o\);

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

-- Location: LCCOMB_X86_Y70_N4
\datainr[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datainr[0]~feeder_combout\ = \datain~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datain~input_o\,
	combout => \datainr[0]~feeder_combout\);

-- Location: FF_X86_Y70_N5
\datainr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \datainr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => datainr(0));

-- Location: LCCOMB_X86_Y70_N6
\datainr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \datainr[1]~feeder_combout\ = datainr(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => datainr(0),
	combout => \datainr[1]~feeder_combout\);

-- Location: FF_X86_Y70_N7
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

-- Location: FF_X87_Y66_N5
\ss_rise[0]\ : dffeas
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
	q => ss_rise(0));

-- Location: LCCOMB_X87_Y70_N24
\ss_rise[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_rise[1]~feeder_combout\ = ss_rise(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ss_rise(0),
	combout => \ss_rise[1]~feeder_combout\);

-- Location: FF_X87_Y70_N25
\ss_rise[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \ss_rise[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ss_rise(1));

-- Location: IOIBUF_X107_Y0_N1
\s_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_clk,
	o => \s_clk~input_o\);

-- Location: LCCOMB_X86_Y70_N26
\s_clkr[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_clkr[0]~feeder_combout\ = \s_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_clk~input_o\,
	combout => \s_clkr[0]~feeder_combout\);

-- Location: FF_X86_Y70_N27
\s_clkr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \s_clkr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_clkr(0));

-- Location: FF_X87_Y70_N3
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

-- Location: FF_X87_Y70_N31
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

-- Location: LCCOMB_X87_Y70_N30
\byte_builder[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder[7]~0_combout\ = (!ss_rise(1) & (!s_clkr(2) & s_clkr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ss_rise(1),
	datac => s_clkr(2),
	datad => s_clkr(1),
	combout => \byte_builder[7]~0_combout\);

-- Location: FF_X87_Y70_N23
\byte_builder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => datainr(1),
	sload => VCC,
	ena => \byte_builder[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(0));

-- Location: FF_X87_Y70_N27
\byte_builder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(0),
	sload => VCC,
	ena => \byte_builder[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(1));

-- Location: FF_X87_Y70_N13
\byte_builder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(1),
	sload => VCC,
	ena => \byte_builder[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(2));

-- Location: FF_X87_Y70_N7
\byte_builder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(2),
	sload => VCC,
	ena => \byte_builder[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(3));

-- Location: LCCOMB_X87_Y70_N28
\ss_rise[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ss_rise[2]~feeder_combout\ = ss_rise(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ss_rise(1),
	combout => \ss_rise[2]~feeder_combout\);

-- Location: FF_X87_Y70_N29
\ss_rise[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \ss_rise[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ss_rise(2));

-- Location: LCCOMB_X88_Y70_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (ss_rise(1) & !ss_rise(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ss_rise(1),
	datad => ss_rise(2),
	combout => \Equal1~0_combout\);

-- Location: FF_X88_Y70_N5
\byte_received~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \byte_received~reg0_q\);

-- Location: FF_X88_Y70_N13
\new_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(3),
	sload => VCC,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_byte(3));

-- Location: FF_X88_Y70_N11
\new_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(1),
	sload => VCC,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_byte(1));

-- Location: FF_X88_Y70_N7
\new_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(0),
	sload => VCC,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_byte(0));

-- Location: FF_X88_Y70_N21
\new_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(2),
	sload => VCC,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_byte(2));

-- Location: LCCOMB_X88_Y70_N6
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (new_byte(1) & (new_byte(0) & new_byte(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => new_byte(1),
	datac => new_byte(0),
	datad => new_byte(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X87_Y70_N4
\byte_builder[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_builder[4]~feeder_combout\ = byte_builder(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => byte_builder(3),
	combout => \byte_builder[4]~feeder_combout\);

-- Location: FF_X87_Y70_N5
\byte_builder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \byte_builder[4]~feeder_combout\,
	ena => \byte_builder[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(4));

-- Location: FF_X87_Y70_N21
\byte_builder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(4),
	sload => VCC,
	ena => \byte_builder[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(5));

-- Location: FF_X88_Y70_N25
\new_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(5),
	sload => VCC,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_byte(5));

-- Location: FF_X88_Y70_N1
\new_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(4),
	sload => VCC,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_byte(4));

-- Location: FF_X87_Y70_N17
\byte_builder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(5),
	sload => VCC,
	ena => \byte_builder[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(6));

-- Location: FF_X87_Y70_N19
\byte_builder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(6),
	sload => VCC,
	ena => \byte_builder[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_builder(7));

-- Location: LCCOMB_X88_Y70_N30
\new_byte[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \new_byte[7]~feeder_combout\ = byte_builder(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => byte_builder(7),
	combout => \new_byte[7]~feeder_combout\);

-- Location: FF_X88_Y70_N31
\new_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \new_byte[7]~feeder_combout\,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_byte(7));

-- Location: LCCOMB_X88_Y70_N0
\n3|WideOr3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr3~3_combout\ = (new_byte(5) & (new_byte(4) & new_byte(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(5),
	datac => new_byte(4),
	datad => new_byte(7),
	combout => \n3|WideOr3~3_combout\);

-- Location: FF_X88_Y70_N3
\new_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => byte_builder(6),
	sload => VCC,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_byte(6));

-- Location: LCCOMB_X88_Y70_N2
\n3|WideOr3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr3~4_combout\ = (\n3|WideOr3~3_combout\ & (new_byte(3) & (new_byte(6) & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr3~3_combout\,
	datab => new_byte(3),
	datac => new_byte(6),
	datad => \LessThan1~0_combout\,
	combout => \n3|WideOr3~4_combout\);

-- Location: LCCOMB_X88_Y70_N10
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!new_byte(7) & !new_byte(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(7),
	datad => new_byte(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X88_Y70_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\ & (((!new_byte(4) & !new_byte(3))) # (!new_byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(5),
	datab => new_byte(4),
	datac => new_byte(3),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X88_Y70_N19
\state.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \state.D~q\,
	sload => VCC,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.E~q\);

-- Location: LCCOMB_X88_Y70_N24
\n3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~0_combout\ = (!new_byte(7) & (!new_byte(6) & (!new_byte(5) & !new_byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(7),
	datab => new_byte(6),
	datac => new_byte(5),
	datad => new_byte(4),
	combout => \n3|WideOr5~0_combout\);

-- Location: LCCOMB_X88_Y70_N28
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.000100~q\ & (((\LessThan1~0_combout\ & new_byte(3))) # (!\n3|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => new_byte(3),
	datac => \state.000100~q\,
	datad => \n3|WideOr5~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X88_Y70_N18
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state.E~q\) # ((\Selector0~0_combout\) # ((!\LessThan0~1_combout\ & \state.B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \state.B~q\,
	datac => \state.E~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X88_Y70_N22
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~1_combout\ & ((\n3|WideOr3~4_combout\) # (\state.A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n3|WideOr3~4_combout\,
	datac => \state.A~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X88_Y70_N23
\state.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.A~q\);

-- Location: LCCOMB_X88_Y70_N26
\next_state.B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.B~0_combout\ = (\n3|WideOr3~4_combout\ & !\state.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \n3|WideOr3~4_combout\,
	datad => \state.A~q\,
	combout => \next_state.B~0_combout\);

-- Location: FF_X88_Y70_N27
\state.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \next_state.B~0_combout\,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.B~q\);

-- Location: LCCOMB_X88_Y70_N8
\next_state.C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.C~0_combout\ = (\state.B~q\ & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.B~q\,
	datad => \LessThan0~1_combout\,
	combout => \next_state.C~0_combout\);

-- Location: FF_X88_Y70_N9
\state.000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \next_state.C~0_combout\,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.000100~q\);

-- Location: LCCOMB_X88_Y70_N16
\next_state.D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.D~0_combout\ = (\state.000100~q\ & (\n3|WideOr5~0_combout\ & ((!new_byte(3)) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \state.000100~q\,
	datac => new_byte(3),
	datad => \n3|WideOr5~0_combout\,
	combout => \next_state.D~0_combout\);

-- Location: FF_X88_Y70_N17
\state.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \next_state.D~0_combout\,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.D~q\);

-- Location: FF_X89_Y70_N7
\char_to_add[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => new_byte(3),
	sload => VCC,
	ena => \state.D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_to_add(3));

-- Location: FF_X89_Y70_N15
\char_to_add[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => new_byte(1),
	sload => VCC,
	ena => \state.D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_to_add(1));

-- Location: FF_X89_Y70_N1
\char_to_add[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => new_byte(4),
	sload => VCC,
	ena => \state.D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_to_add(4));

-- Location: FF_X89_Y70_N29
\char_to_add[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => new_byte(2),
	sload => VCC,
	ena => \state.D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_to_add(2));

-- Location: LCCOMB_X90_Y70_N30
\n1|WideOr6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr6~4_combout\ = (char_to_add(3) & (((!char_to_add(4))))) # (!char_to_add(3) & ((char_to_add(1) & ((char_to_add(4)) # (!char_to_add(2)))) # (!char_to_add(1) & ((char_to_add(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(3),
	datab => char_to_add(1),
	datac => char_to_add(4),
	datad => char_to_add(2),
	combout => \n1|WideOr6~4_combout\);

-- Location: LCCOMB_X90_Y70_N6
\n1|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr6~1_combout\ = (char_to_add(3) & ((char_to_add(1) & (!char_to_add(4) & char_to_add(2))) # (!char_to_add(1) & ((!char_to_add(2)))))) # (!char_to_add(3) & (!char_to_add(1) & (char_to_add(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(3),
	datab => char_to_add(1),
	datac => char_to_add(4),
	datad => char_to_add(2),
	combout => \n1|WideOr6~1_combout\);

-- Location: FF_X89_Y70_N17
\char_to_add[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => new_byte(0),
	sload => VCC,
	ena => \state.D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_to_add(0));

-- Location: LCCOMB_X90_Y70_N28
\n1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr6~0_combout\ = (!char_to_add(3) & ((char_to_add(1) & ((!char_to_add(0)))) # (!char_to_add(1) & (char_to_add(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(3),
	datab => char_to_add(2),
	datac => char_to_add(0),
	datad => char_to_add(1),
	combout => \n1|WideOr6~0_combout\);

-- Location: FF_X89_Y70_N23
\char_to_add[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => new_byte(7),
	sload => VCC,
	ena => \state.D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_to_add(7));

-- Location: FF_X89_Y70_N27
\char_to_add[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => new_byte(6),
	sload => VCC,
	ena => \state.D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_to_add(6));

-- Location: FF_X89_Y70_N13
\char_to_add[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => new_byte(5),
	sload => VCC,
	ena => \state.D~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_to_add(5));

-- Location: LCCOMB_X90_Y70_N14
\n1|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~2_combout\ = (!char_to_add(4) & (!char_to_add(7) & (!char_to_add(6) & !char_to_add(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(4),
	datab => char_to_add(7),
	datac => char_to_add(6),
	datad => char_to_add(5),
	combout => \n1|WideOr5~2_combout\);

-- Location: LCCOMB_X90_Y70_N16
\n1|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr6~2_combout\ = (char_to_add(6) & (!char_to_add(7) & (char_to_add(0) & char_to_add(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(6),
	datab => char_to_add(7),
	datac => char_to_add(0),
	datad => char_to_add(5),
	combout => \n1|WideOr6~2_combout\);

-- Location: LCCOMB_X90_Y70_N24
\n1|WideOr6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr6~3_combout\ = (\n1|WideOr6~1_combout\ & ((\n1|WideOr6~2_combout\) # ((\n1|WideOr6~0_combout\ & \n1|WideOr5~2_combout\)))) # (!\n1|WideOr6~1_combout\ & (\n1|WideOr6~0_combout\ & (\n1|WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr6~1_combout\,
	datab => \n1|WideOr6~0_combout\,
	datac => \n1|WideOr5~2_combout\,
	datad => \n1|WideOr6~2_combout\,
	combout => \n1|WideOr6~3_combout\);

-- Location: LCCOMB_X89_Y70_N20
\n1|WideOr6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr6~5_combout\ = (char_to_add(6) & (char_to_add(5) & !char_to_add(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(6),
	datac => char_to_add(5),
	datad => char_to_add(7),
	combout => \n1|WideOr6~5_combout\);

-- Location: LCCOMB_X90_Y70_N12
\n1|WideOr6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr6~6_combout\ = (\n1|WideOr6~3_combout\) # ((\n1|WideOr6~4_combout\ & (!char_to_add(0) & \n1|WideOr6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr6~4_combout\,
	datab => \n1|WideOr6~3_combout\,
	datac => char_to_add(0),
	datad => \n1|WideOr6~5_combout\,
	combout => \n1|WideOr6~6_combout\);

-- Location: LCCOMB_X90_Y70_N2
\n1|WideOr5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~7_combout\ = (char_to_add(5) & (char_to_add(2) & (char_to_add(6) & char_to_add(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(5),
	datab => char_to_add(2),
	datac => char_to_add(6),
	datad => char_to_add(3),
	combout => \n1|WideOr5~7_combout\);

-- Location: LCCOMB_X90_Y70_N26
\n1|WideOr5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~11_combout\ = (char_to_add(4) & (char_to_add(7) & (char_to_add(1) & \n1|WideOr5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(4),
	datab => char_to_add(7),
	datac => char_to_add(1),
	datad => \n1|WideOr5~7_combout\,
	combout => \n1|WideOr5~11_combout\);

-- Location: LCCOMB_X90_Y70_N4
\n1|WideOr5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~9_combout\ = (!char_to_add(4) & (!char_to_add(7) & (char_to_add(6) & char_to_add(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(4),
	datab => char_to_add(7),
	datac => char_to_add(6),
	datad => char_to_add(5),
	combout => \n1|WideOr5~9_combout\);

-- Location: LCCOMB_X91_Y70_N30
\n1|WideOr5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~8_combout\ = (char_to_add(3) & ((char_to_add(1) & ((char_to_add(2)) # (char_to_add(0)))) # (!char_to_add(1) & ((!char_to_add(0)))))) # (!char_to_add(3) & (char_to_add(1) $ (((char_to_add(2) & char_to_add(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr5~8_combout\);

-- Location: LCCOMB_X91_Y70_N8
\n1|WideOr5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~3_combout\ = (char_to_add(2) & (!char_to_add(1) & (!char_to_add(3)))) # (!char_to_add(2) & ((char_to_add(0) & ((!char_to_add(3)))) # (!char_to_add(0) & (char_to_add(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr5~3_combout\);

-- Location: LCCOMB_X89_Y70_N10
\n1|WideOr5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~4_combout\ = (char_to_add(6) & (char_to_add(5) & (char_to_add(4) & !char_to_add(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(6),
	datab => char_to_add(5),
	datac => char_to_add(4),
	datad => char_to_add(7),
	combout => \n1|WideOr5~4_combout\);

-- Location: LCCOMB_X91_Y70_N6
\n1|WideOr5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~5_combout\ = (!char_to_add(3) & ((char_to_add(1) & ((!char_to_add(0)))) # (!char_to_add(1) & (!char_to_add(2) & char_to_add(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr5~5_combout\);

-- Location: LCCOMB_X91_Y70_N12
\n1|WideOr5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~6_combout\ = (\n1|WideOr5~2_combout\ & ((\n1|WideOr5~5_combout\) # ((\n1|WideOr5~3_combout\ & \n1|WideOr5~4_combout\)))) # (!\n1|WideOr5~2_combout\ & (\n1|WideOr5~3_combout\ & (\n1|WideOr5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr5~2_combout\,
	datab => \n1|WideOr5~3_combout\,
	datac => \n1|WideOr5~4_combout\,
	datad => \n1|WideOr5~5_combout\,
	combout => \n1|WideOr5~6_combout\);

-- Location: LCCOMB_X91_Y70_N20
\n1|WideOr5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr5~10_combout\ = (\n1|WideOr5~11_combout\) # ((\n1|WideOr5~6_combout\) # ((\n1|WideOr5~9_combout\ & \n1|WideOr5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr5~11_combout\,
	datab => \n1|WideOr5~9_combout\,
	datac => \n1|WideOr5~8_combout\,
	datad => \n1|WideOr5~6_combout\,
	combout => \n1|WideOr5~10_combout\);

-- Location: LCCOMB_X90_Y70_N18
\n1|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr4~1_combout\ = (char_to_add(1) & (char_to_add(0) $ (char_to_add(4) $ (char_to_add(2))))) # (!char_to_add(1) & ((char_to_add(0) & (!char_to_add(4) & char_to_add(2))) # (!char_to_add(0) & (char_to_add(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(0),
	datab => char_to_add(4),
	datac => char_to_add(1),
	datad => char_to_add(2),
	combout => \n1|WideOr4~1_combout\);

-- Location: LCCOMB_X91_Y70_N26
\n1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr4~0_combout\ = (char_to_add(0) & (!char_to_add(1) & (!char_to_add(3) & \n1|WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(0),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => \n1|WideOr5~2_combout\,
	combout => \n1|WideOr4~0_combout\);

-- Location: LCCOMB_X90_Y70_N20
\n1|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr4~2_combout\ = (\n1|WideOr4~0_combout\) # ((!char_to_add(3) & (\n1|WideOr6~5_combout\ & \n1|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(3),
	datab => \n1|WideOr6~5_combout\,
	datac => \n1|WideOr4~1_combout\,
	datad => \n1|WideOr4~0_combout\,
	combout => \n1|WideOr4~2_combout\);

-- Location: LCCOMB_X90_Y70_N22
\n1|WideOr4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr4~3_combout\ = (char_to_add(4) & (((char_to_add(1) & char_to_add(7))))) # (!char_to_add(4) & (!char_to_add(0) & (!char_to_add(1) & !char_to_add(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(0),
	datab => char_to_add(4),
	datac => char_to_add(1),
	datad => char_to_add(7),
	combout => \n1|WideOr4~3_combout\);

-- Location: LCCOMB_X90_Y70_N8
\n1|WideOr4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr4~4_combout\ = (\n1|WideOr4~2_combout\) # ((\n1|WideOr4~3_combout\ & \n1|WideOr5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n1|WideOr4~2_combout\,
	datac => \n1|WideOr4~3_combout\,
	datad => \n1|WideOr5~7_combout\,
	combout => \n1|WideOr4~4_combout\);

-- Location: LCCOMB_X89_Y70_N22
\n1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr3~0_combout\ = (char_to_add(4) & char_to_add(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char_to_add(4),
	datad => char_to_add(1),
	combout => \n1|WideOr3~0_combout\);

-- Location: LCCOMB_X89_Y70_N8
\n1|WideOr3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr3~4_combout\ = (char_to_add(0) & (char_to_add(5) & (\n1|WideOr3~0_combout\ & char_to_add(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(0),
	datab => char_to_add(5),
	datac => \n1|WideOr3~0_combout\,
	datad => char_to_add(2),
	combout => \n1|WideOr3~4_combout\);

-- Location: LCCOMB_X90_Y70_N10
\n1|WideOr3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr3~5_combout\ = (char_to_add(3) & (char_to_add(7) & (char_to_add(6) & \n1|WideOr3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(3),
	datab => char_to_add(7),
	datac => char_to_add(6),
	datad => \n1|WideOr3~4_combout\,
	combout => \n1|WideOr3~5_combout\);

-- Location: LCCOMB_X91_Y70_N2
\n1|WideOr3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr3~6_combout\ = (char_to_add(2) & ((char_to_add(1) & ((!char_to_add(0)))) # (!char_to_add(1) & (char_to_add(3) & char_to_add(0))))) # (!char_to_add(2) & (!char_to_add(1) & ((char_to_add(3)) # (char_to_add(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr3~6_combout\);

-- Location: LCCOMB_X91_Y70_N14
\n1|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr3~2_combout\ = (char_to_add(3)) # ((char_to_add(0)) # ((char_to_add(2) & !char_to_add(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr3~2_combout\);

-- Location: LCCOMB_X91_Y70_N24
\n1|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr3~1_combout\ = (!char_to_add(3) & (char_to_add(2) $ (((char_to_add(1) & !char_to_add(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr3~1_combout\);

-- Location: LCCOMB_X91_Y70_N16
\n1|WideOr3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr3~3_combout\ = (\n1|WideOr5~2_combout\ & ((\n1|WideOr3~1_combout\) # ((!\n1|WideOr3~2_combout\ & \n1|WideOr5~4_combout\)))) # (!\n1|WideOr5~2_combout\ & (!\n1|WideOr3~2_combout\ & (\n1|WideOr5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr5~2_combout\,
	datab => \n1|WideOr3~2_combout\,
	datac => \n1|WideOr5~4_combout\,
	datad => \n1|WideOr3~1_combout\,
	combout => \n1|WideOr3~3_combout\);

-- Location: LCCOMB_X91_Y70_N4
\n1|WideOr3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr3~7_combout\ = (\n1|WideOr3~5_combout\) # ((\n1|WideOr3~3_combout\) # ((\n1|WideOr3~6_combout\ & \n1|WideOr5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr3~5_combout\,
	datab => \n1|WideOr3~6_combout\,
	datac => \n1|WideOr5~9_combout\,
	datad => \n1|WideOr3~3_combout\,
	combout => \n1|WideOr3~7_combout\);

-- Location: LCCOMB_X90_Y70_N0
\n1|WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr2~3_combout\ = (!char_to_add(3) & (!char_to_add(7) & (!char_to_add(6) & \n1|WideOr3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(3),
	datab => char_to_add(7),
	datac => char_to_add(6),
	datad => \n1|WideOr3~4_combout\,
	combout => \n1|WideOr2~3_combout\);

-- Location: LCCOMB_X91_Y70_N0
\n1|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr2~1_combout\ = (!char_to_add(3) & (char_to_add(1) $ (((char_to_add(2) & !char_to_add(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr2~1_combout\);

-- Location: LCCOMB_X91_Y70_N10
\n1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr2~0_combout\ = (char_to_add(3) & (char_to_add(0) & ((!char_to_add(1)) # (!char_to_add(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr2~0_combout\);

-- Location: LCCOMB_X91_Y70_N18
\n1|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr2~2_combout\ = (\n1|WideOr5~2_combout\ & ((\n1|WideOr2~1_combout\) # ((\n1|WideOr5~9_combout\ & \n1|WideOr2~0_combout\)))) # (!\n1|WideOr5~2_combout\ & (((\n1|WideOr5~9_combout\ & \n1|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr5~2_combout\,
	datab => \n1|WideOr2~1_combout\,
	datac => \n1|WideOr5~9_combout\,
	datad => \n1|WideOr2~0_combout\,
	combout => \n1|WideOr2~2_combout\);

-- Location: LCCOMB_X91_Y70_N28
\n1|WideOr2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr2~4_combout\ = (char_to_add(2) & (char_to_add(1) & (!char_to_add(3) & !char_to_add(0)))) # (!char_to_add(2) & (char_to_add(3) $ (((char_to_add(1) & char_to_add(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(2),
	datab => char_to_add(1),
	datac => char_to_add(3),
	datad => char_to_add(0),
	combout => \n1|WideOr2~4_combout\);

-- Location: LCCOMB_X91_Y70_N22
\n1|WideOr2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr2~5_combout\ = (\n1|WideOr2~3_combout\) # ((\n1|WideOr2~2_combout\) # ((\n1|WideOr5~4_combout\ & \n1|WideOr2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr2~3_combout\,
	datab => \n1|WideOr2~2_combout\,
	datac => \n1|WideOr5~4_combout\,
	datad => \n1|WideOr2~4_combout\,
	combout => \n1|WideOr2~5_combout\);

-- Location: LCCOMB_X89_Y70_N4
\n1|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr1~1_combout\ = (char_to_add(6) & (!char_to_add(7) & (char_to_add(5) & char_to_add(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(6),
	datab => char_to_add(7),
	datac => char_to_add(5),
	datad => char_to_add(2),
	combout => \n1|WideOr1~1_combout\);

-- Location: LCCOMB_X89_Y70_N14
\n1|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr1~2_combout\ = (char_to_add(4) & ((char_to_add(3)) # ((!char_to_add(0) & !char_to_add(1))))) # (!char_to_add(4) & (char_to_add(3) $ (((char_to_add(0)) # (char_to_add(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(0),
	datab => char_to_add(4),
	datac => char_to_add(1),
	datad => char_to_add(3),
	combout => \n1|WideOr1~2_combout\);

-- Location: LCCOMB_X89_Y70_N2
\n1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr1~0_combout\ = (!char_to_add(3) & (char_to_add(0) & ((char_to_add(2)) # (char_to_add(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(3),
	datab => char_to_add(2),
	datac => char_to_add(0),
	datad => char_to_add(1),
	combout => \n1|WideOr1~0_combout\);

-- Location: LCCOMB_X89_Y70_N30
\n1|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr1~3_combout\ = (\n1|WideOr5~2_combout\ & ((\n1|WideOr1~0_combout\) # ((\n1|WideOr1~1_combout\ & !\n1|WideOr1~2_combout\)))) # (!\n1|WideOr5~2_combout\ & (\n1|WideOr1~1_combout\ & (!\n1|WideOr1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr5~2_combout\,
	datab => \n1|WideOr1~1_combout\,
	datac => \n1|WideOr1~2_combout\,
	datad => \n1|WideOr1~0_combout\,
	combout => \n1|WideOr1~3_combout\);

-- Location: LCCOMB_X89_Y70_N0
\n1|WideOr1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr1~4_combout\ = (char_to_add(4) & (!char_to_add(0) & (char_to_add(3) $ (char_to_add(1))))) # (!char_to_add(4) & (char_to_add(3) & (char_to_add(0) $ (char_to_add(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(0),
	datab => char_to_add(3),
	datac => char_to_add(4),
	datad => char_to_add(1),
	combout => \n1|WideOr1~4_combout\);

-- Location: LCCOMB_X89_Y70_N24
\n1|WideOr1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr1~5_combout\ = (\n1|WideOr1~3_combout\) # ((\n1|WideOr6~5_combout\ & (!char_to_add(2) & \n1|WideOr1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr6~5_combout\,
	datab => char_to_add(2),
	datac => \n1|WideOr1~3_combout\,
	datad => \n1|WideOr1~4_combout\,
	combout => \n1|WideOr1~5_combout\);

-- Location: LCCOMB_X89_Y70_N12
\n1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr0~0_combout\ = (char_to_add(4) & (!char_to_add(6))) # (!char_to_add(4) & ((char_to_add(7) & (!char_to_add(6))) # (!char_to_add(7) & ((char_to_add(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(6),
	datab => char_to_add(4),
	datac => char_to_add(5),
	datad => char_to_add(7),
	combout => \n1|WideOr0~0_combout\);

-- Location: LCCOMB_X89_Y70_N6
\n1|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr0~2_combout\ = (char_to_add(2) & (char_to_add(3) $ (((char_to_add(0)) # (char_to_add(1)))))) # (!char_to_add(2) & (!char_to_add(0) & (char_to_add(3) & char_to_add(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(0),
	datab => char_to_add(2),
	datac => char_to_add(3),
	datad => char_to_add(1),
	combout => \n1|WideOr0~2_combout\);

-- Location: LCCOMB_X89_Y70_N28
\n1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr0~1_combout\ = (char_to_add(0) & (char_to_add(3) $ (((char_to_add(1)))))) # (!char_to_add(0) & ((char_to_add(3)) # ((char_to_add(2) & !char_to_add(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_to_add(0),
	datab => char_to_add(3),
	datac => char_to_add(2),
	datad => char_to_add(1),
	combout => \n1|WideOr0~1_combout\);

-- Location: LCCOMB_X89_Y70_N16
\n1|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr0~4_combout\ = (\n1|WideOr0~1_combout\ & (\n1|WideOr0~2_combout\ $ ((char_to_add(0))))) # (!\n1|WideOr0~1_combout\ & (\n1|WideOr0~2_combout\ & ((\n1|WideOr5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr0~2_combout\,
	datab => \n1|WideOr0~1_combout\,
	datac => char_to_add(0),
	datad => \n1|WideOr5~4_combout\,
	combout => \n1|WideOr0~4_combout\);

-- Location: LCCOMB_X89_Y70_N18
\n1|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr0~3_combout\ = (char_to_add(0) & (!\n1|WideOr0~1_combout\ & ((\n1|WideOr5~4_combout\) # (!\n1|WideOr0~2_combout\)))) # (!char_to_add(0) & ((\n1|WideOr0~1_combout\ $ (\n1|WideOr0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr5~4_combout\,
	datab => \n1|WideOr0~1_combout\,
	datac => char_to_add(0),
	datad => \n1|WideOr0~2_combout\,
	combout => \n1|WideOr0~3_combout\);

-- Location: LCCOMB_X89_Y70_N26
\n1|WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n1|WideOr0~5_combout\ = (\n1|WideOr0~4_combout\ & ((\n1|WideOr0~3_combout\) # ((\n1|WideOr0~0_combout\ & char_to_add(6))))) # (!\n1|WideOr0~4_combout\ & (!\n1|WideOr0~0_combout\ & (!char_to_add(6) & !\n1|WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1|WideOr0~0_combout\,
	datab => \n1|WideOr0~4_combout\,
	datac => char_to_add(6),
	datad => \n1|WideOr0~3_combout\,
	combout => \n1|WideOr0~5_combout\);

-- Location: LCCOMB_X87_Y70_N8
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ((!\state.B~q\ & \LEDG[0]~reg0_q\)) # (!\state.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.B~q\,
	datac => \LEDG[0]~reg0_q\,
	datad => \state.A~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X87_Y70_N9
\LEDG[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[0]~reg0_q\);

-- Location: LCCOMB_X87_Y70_N14
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.B~q\) # ((\LEDG[1]~reg0_q\ & ((\state.D~q\) # (\state.E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.B~q\,
	datab => \state.D~q\,
	datac => \LEDG[1]~reg0_q\,
	datad => \state.E~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X87_Y70_N15
\LEDG[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[1]~reg0_q\);

-- Location: LCCOMB_X87_Y70_N0
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.000100~q\) # ((\LEDG[2]~reg0_q\ & ((\state.B~q\) # (\state.E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.B~q\,
	datab => \state.000100~q\,
	datac => \LEDG[2]~reg0_q\,
	datad => \state.E~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X87_Y70_N1
\LEDG[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[2]~reg0_q\);

-- Location: LCCOMB_X87_Y70_N10
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.D~q\) # ((\LEDG[3]~reg0_q\ & ((\state.B~q\) # (\state.000100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.B~q\,
	datab => \state.000100~q\,
	datac => \LEDG[3]~reg0_q\,
	datad => \state.D~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X87_Y70_N11
\LEDG[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[3]~reg0_q\);

-- Location: LCCOMB_X86_Y70_N8
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.E~q\) # ((\LEDG[4]~reg0_q\ & \state.A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.E~q\,
	datac => \LEDG[4]~reg0_q\,
	datad => \state.A~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X86_Y70_N9
\LEDG[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[4]~reg0_q\);

-- Location: LCCOMB_X88_Y70_N14
\LEDG[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[6]~0_combout\ = !\LEDG[6]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LEDG[6]~reg0_q\,
	combout => \LEDG[6]~0_combout\);

-- Location: FF_X88_Y70_N15
\LEDG[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \LEDG[6]~0_combout\,
	ena => \byte_received~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[6]~reg0_q\);

-- Location: LCCOMB_X90_Y69_N30
\n3|WideOr6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr6~5_combout\ = (new_byte(6) & (!new_byte(7) & new_byte(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(6),
	datac => new_byte(7),
	datad => new_byte(5),
	combout => \n3|WideOr6~5_combout\);

-- Location: LCCOMB_X90_Y69_N24
\n3|WideOr6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr6~4_combout\ = (new_byte(3) & (((!new_byte(4))))) # (!new_byte(3) & ((new_byte(1) & ((new_byte(4)) # (!new_byte(2)))) # (!new_byte(1) & (new_byte(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(1),
	datac => new_byte(2),
	datad => new_byte(4),
	combout => \n3|WideOr6~4_combout\);

-- Location: LCCOMB_X90_Y69_N6
\n3|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr6~1_combout\ = (new_byte(3) & ((new_byte(1) & (new_byte(2) & !new_byte(4))) # (!new_byte(1) & (!new_byte(2))))) # (!new_byte(3) & (!new_byte(1) & ((new_byte(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(1),
	datac => new_byte(2),
	datad => new_byte(4),
	combout => \n3|WideOr6~1_combout\);

-- Location: LCCOMB_X90_Y69_N20
\n3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr6~0_combout\ = (!new_byte(3) & ((new_byte(1) & (!new_byte(0))) # (!new_byte(1) & ((new_byte(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(0),
	datab => new_byte(2),
	datac => new_byte(3),
	datad => new_byte(1),
	combout => \n3|WideOr6~0_combout\);

-- Location: LCCOMB_X90_Y69_N28
\n3|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr6~2_combout\ = (new_byte(0) & (!new_byte(7) & (new_byte(6) & new_byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(0),
	datab => new_byte(7),
	datac => new_byte(6),
	datad => new_byte(5),
	combout => \n3|WideOr6~2_combout\);

-- Location: LCCOMB_X90_Y69_N22
\n3|WideOr6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr6~3_combout\ = (\n3|WideOr6~1_combout\ & ((\n3|WideOr6~2_combout\) # ((\n3|WideOr6~0_combout\ & \n3|WideOr5~0_combout\)))) # (!\n3|WideOr6~1_combout\ & (\n3|WideOr6~0_combout\ & (\n3|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr6~1_combout\,
	datab => \n3|WideOr6~0_combout\,
	datac => \n3|WideOr5~0_combout\,
	datad => \n3|WideOr6~2_combout\,
	combout => \n3|WideOr6~3_combout\);

-- Location: LCCOMB_X90_Y69_N4
\n3|WideOr6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr6~6_combout\ = (\n3|WideOr6~3_combout\) # ((\n3|WideOr6~5_combout\ & (\n3|WideOr6~4_combout\ & !new_byte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr6~5_combout\,
	datab => \n3|WideOr6~4_combout\,
	datac => \n3|WideOr6~3_combout\,
	datad => new_byte(0),
	combout => \n3|WideOr6~6_combout\);

-- Location: LCCOMB_X88_Y69_N22
\n3|WideOr5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~3_combout\ = (!new_byte(3) & ((new_byte(0) & (!new_byte(2) & !new_byte(1))) # (!new_byte(0) & ((new_byte(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(2),
	datac => new_byte(0),
	datad => new_byte(1),
	combout => \n3|WideOr5~3_combout\);

-- Location: LCCOMB_X88_Y69_N20
\n3|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~1_combout\ = (new_byte(2) & (!new_byte(3) & ((!new_byte(1))))) # (!new_byte(2) & ((new_byte(0) & (!new_byte(3))) # (!new_byte(0) & ((new_byte(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(2),
	datac => new_byte(0),
	datad => new_byte(1),
	combout => \n3|WideOr5~1_combout\);

-- Location: LCCOMB_X89_Y69_N28
\n3|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~2_combout\ = (new_byte(5) & (!new_byte(7) & (new_byte(6) & new_byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(5),
	datab => new_byte(7),
	datac => new_byte(6),
	datad => new_byte(4),
	combout => \n3|WideOr5~2_combout\);

-- Location: LCCOMB_X88_Y69_N8
\n3|WideOr5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~4_combout\ = (\n3|WideOr5~3_combout\ & ((\n3|WideOr5~0_combout\) # ((\n3|WideOr5~1_combout\ & \n3|WideOr5~2_combout\)))) # (!\n3|WideOr5~3_combout\ & (\n3|WideOr5~1_combout\ & ((\n3|WideOr5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr5~3_combout\,
	datab => \n3|WideOr5~1_combout\,
	datac => \n3|WideOr5~0_combout\,
	datad => \n3|WideOr5~2_combout\,
	combout => \n3|WideOr5~4_combout\);

-- Location: LCCOMB_X89_Y69_N16
\n3|WideOr5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~7_combout\ = (new_byte(0) & (new_byte(1) $ (((!new_byte(3) & new_byte(2)))))) # (!new_byte(0) & ((new_byte(1) & ((new_byte(2)) # (!new_byte(3)))) # (!new_byte(1) & (new_byte(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(0),
	datab => new_byte(1),
	datac => new_byte(3),
	datad => new_byte(2),
	combout => \n3|WideOr5~7_combout\);

-- Location: LCCOMB_X90_Y69_N26
\n3|WideOr5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~5_combout\ = (new_byte(3) & (new_byte(2) & (new_byte(6) & new_byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(2),
	datac => new_byte(6),
	datad => new_byte(5),
	combout => \n3|WideOr5~5_combout\);

-- Location: LCCOMB_X89_Y69_N14
\n3|WideOr5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~6_combout\ = (new_byte(7) & (new_byte(1) & (\n3|WideOr5~5_combout\ & new_byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(7),
	datab => new_byte(1),
	datac => \n3|WideOr5~5_combout\,
	datad => new_byte(4),
	combout => \n3|WideOr5~6_combout\);

-- Location: LCCOMB_X89_Y69_N6
\n3|WideOr5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~8_combout\ = (new_byte(5) & (!new_byte(7) & (new_byte(6) & !new_byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(5),
	datab => new_byte(7),
	datac => new_byte(6),
	datad => new_byte(4),
	combout => \n3|WideOr5~8_combout\);

-- Location: LCCOMB_X89_Y69_N8
\n3|WideOr5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr5~9_combout\ = (\n3|WideOr5~4_combout\) # ((\n3|WideOr5~6_combout\) # ((\n3|WideOr5~7_combout\ & \n3|WideOr5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr5~4_combout\,
	datab => \n3|WideOr5~7_combout\,
	datac => \n3|WideOr5~6_combout\,
	datad => \n3|WideOr5~8_combout\,
	combout => \n3|WideOr5~9_combout\);

-- Location: LCCOMB_X90_Y69_N2
\n3|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr4~1_combout\ = (new_byte(1) & (new_byte(0) $ (new_byte(2) $ (new_byte(4))))) # (!new_byte(1) & ((new_byte(0) & (new_byte(2) & !new_byte(4))) # (!new_byte(0) & ((new_byte(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(0),
	datab => new_byte(1),
	datac => new_byte(2),
	datad => new_byte(4),
	combout => \n3|WideOr4~1_combout\);

-- Location: LCCOMB_X90_Y69_N0
\n3|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr4~2_combout\ = (!new_byte(3) & (\n3|WideOr6~5_combout\ & \n3|WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datac => \n3|WideOr6~5_combout\,
	datad => \n3|WideOr4~1_combout\,
	combout => \n3|WideOr4~2_combout\);

-- Location: LCCOMB_X90_Y69_N14
\n3|WideOr4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr4~3_combout\ = (new_byte(1) & (new_byte(7) & ((new_byte(4))))) # (!new_byte(1) & (!new_byte(7) & (!new_byte(0) & !new_byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(1),
	datab => new_byte(7),
	datac => new_byte(0),
	datad => new_byte(4),
	combout => \n3|WideOr4~3_combout\);

-- Location: LCCOMB_X90_Y69_N16
\n3|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr4~0_combout\ = (!new_byte(3) & (new_byte(0) & (\n3|WideOr5~0_combout\ & !new_byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(0),
	datac => \n3|WideOr5~0_combout\,
	datad => new_byte(1),
	combout => \n3|WideOr4~0_combout\);

-- Location: LCCOMB_X90_Y69_N12
\n3|WideOr4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr4~4_combout\ = (\n3|WideOr4~2_combout\) # ((\n3|WideOr4~0_combout\) # ((\n3|WideOr5~5_combout\ & \n3|WideOr4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr5~5_combout\,
	datab => \n3|WideOr4~2_combout\,
	datac => \n3|WideOr4~3_combout\,
	datad => \n3|WideOr4~0_combout\,
	combout => \n3|WideOr4~4_combout\);

-- Location: LCCOMB_X88_Y69_N10
\n3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr3~0_combout\ = (!new_byte(3) & (new_byte(2) $ (((!new_byte(0) & new_byte(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(2),
	datac => new_byte(0),
	datad => new_byte(1),
	combout => \n3|WideOr3~0_combout\);

-- Location: LCCOMB_X88_Y69_N4
\n3|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr3~1_combout\ = (new_byte(3)) # ((new_byte(0)) # ((new_byte(2) & !new_byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(2),
	datac => new_byte(0),
	datad => new_byte(1),
	combout => \n3|WideOr3~1_combout\);

-- Location: LCCOMB_X88_Y69_N26
\n3|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr3~2_combout\ = (\n3|WideOr3~0_combout\ & ((\n3|WideOr5~0_combout\) # ((!\n3|WideOr3~1_combout\ & \n3|WideOr5~2_combout\)))) # (!\n3|WideOr3~0_combout\ & (!\n3|WideOr3~1_combout\ & ((\n3|WideOr5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr3~0_combout\,
	datab => \n3|WideOr3~1_combout\,
	datac => \n3|WideOr5~0_combout\,
	datad => \n3|WideOr5~2_combout\,
	combout => \n3|WideOr3~2_combout\);

-- Location: LCCOMB_X88_Y69_N28
\n3|WideOr3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr3~5_combout\ = (new_byte(2) & ((new_byte(0) & (new_byte(3) & !new_byte(1))) # (!new_byte(0) & ((new_byte(1)))))) # (!new_byte(2) & (!new_byte(1) & ((new_byte(3)) # (new_byte(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(2),
	datac => new_byte(0),
	datad => new_byte(1),
	combout => \n3|WideOr3~5_combout\);

-- Location: LCCOMB_X88_Y69_N6
\n3|WideOr3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr3~6_combout\ = (\n3|WideOr3~4_combout\) # ((\n3|WideOr3~2_combout\) # ((\n3|WideOr5~8_combout\ & \n3|WideOr3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr5~8_combout\,
	datab => \n3|WideOr3~4_combout\,
	datac => \n3|WideOr3~2_combout\,
	datad => \n3|WideOr3~5_combout\,
	combout => \n3|WideOr3~6_combout\);

-- Location: LCCOMB_X88_Y70_N20
\n3|WideOr3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr3~7_combout\ = (new_byte(4) & (\LessThan1~0_combout\ & new_byte(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(4),
	datab => \LessThan1~0_combout\,
	datad => new_byte(5),
	combout => \n3|WideOr3~7_combout\);

-- Location: LCCOMB_X89_Y69_N26
\n3|WideOr2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr2~6_combout\ = (!new_byte(3) & (\n3|WideOr3~7_combout\ & (!new_byte(6) & !new_byte(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => \n3|WideOr3~7_combout\,
	datac => new_byte(6),
	datad => new_byte(7),
	combout => \n3|WideOr2~6_combout\);

-- Location: LCCOMB_X89_Y69_N10
\n3|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr2~2_combout\ = (new_byte(3) & (new_byte(0) & ((!new_byte(2)) # (!new_byte(1))))) # (!new_byte(3) & (new_byte(1) $ (((!new_byte(0) & new_byte(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(0),
	datab => new_byte(1),
	datac => new_byte(3),
	datad => new_byte(2),
	combout => \n3|WideOr2~2_combout\);

-- Location: LCCOMB_X89_Y69_N20
\n3|WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr2~3_combout\ = (\n3|WideOr2~2_combout\ & ((new_byte(3) & ((\n3|WideOr5~8_combout\))) # (!new_byte(3) & (\n3|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr2~2_combout\,
	datab => \n3|WideOr5~0_combout\,
	datac => new_byte(3),
	datad => \n3|WideOr5~8_combout\,
	combout => \n3|WideOr2~3_combout\);

-- Location: LCCOMB_X89_Y69_N30
\n3|WideOr2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr2~4_combout\ = (new_byte(3) & (!new_byte(2) & ((!new_byte(1)) # (!new_byte(0))))) # (!new_byte(3) & (new_byte(1) & (new_byte(0) $ (new_byte(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(0),
	datab => new_byte(1),
	datac => new_byte(3),
	datad => new_byte(2),
	combout => \n3|WideOr2~4_combout\);

-- Location: LCCOMB_X89_Y69_N0
\n3|WideOr2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr2~5_combout\ = (\n3|WideOr2~6_combout\) # ((\n3|WideOr2~3_combout\) # ((\n3|WideOr2~4_combout\ & \n3|WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr2~6_combout\,
	datab => \n3|WideOr2~3_combout\,
	datac => \n3|WideOr2~4_combout\,
	datad => \n3|WideOr5~2_combout\,
	combout => \n3|WideOr2~5_combout\);

-- Location: LCCOMB_X90_Y69_N10
\n3|WideOr1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr1~4_combout\ = (new_byte(4) & (!new_byte(0) & (new_byte(3) $ (new_byte(1))))) # (!new_byte(4) & (new_byte(3) & (new_byte(0) $ (new_byte(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(0),
	datac => new_byte(4),
	datad => new_byte(1),
	combout => \n3|WideOr1~4_combout\);

-- Location: LCCOMB_X89_Y69_N12
\n3|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr1~1_combout\ = (!new_byte(7) & (new_byte(6) & (new_byte(5) & new_byte(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(7),
	datab => new_byte(6),
	datac => new_byte(5),
	datad => new_byte(2),
	combout => \n3|WideOr1~1_combout\);

-- Location: LCCOMB_X89_Y69_N22
\n3|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr1~2_combout\ = (new_byte(4) & ((new_byte(3)) # ((!new_byte(0) & !new_byte(1))))) # (!new_byte(4) & (new_byte(3) $ (((new_byte(0)) # (new_byte(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(4),
	datab => new_byte(0),
	datac => new_byte(3),
	datad => new_byte(1),
	combout => \n3|WideOr1~2_combout\);

-- Location: LCCOMB_X89_Y69_N2
\n3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr1~0_combout\ = (new_byte(0) & (!new_byte(3) & ((new_byte(1)) # (new_byte(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(0),
	datab => new_byte(1),
	datac => new_byte(3),
	datad => new_byte(2),
	combout => \n3|WideOr1~0_combout\);

-- Location: LCCOMB_X89_Y69_N24
\n3|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr1~3_combout\ = (\n3|WideOr1~1_combout\ & (((\n3|WideOr5~0_combout\ & \n3|WideOr1~0_combout\)) # (!\n3|WideOr1~2_combout\))) # (!\n3|WideOr1~1_combout\ & (\n3|WideOr5~0_combout\ & ((\n3|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr1~1_combout\,
	datab => \n3|WideOr5~0_combout\,
	datac => \n3|WideOr1~2_combout\,
	datad => \n3|WideOr1~0_combout\,
	combout => \n3|WideOr1~3_combout\);

-- Location: LCCOMB_X90_Y69_N8
\n3|WideOr1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr1~5_combout\ = (\n3|WideOr1~3_combout\) # ((\n3|WideOr1~4_combout\ & (!new_byte(2) & \n3|WideOr6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr1~4_combout\,
	datab => new_byte(2),
	datac => \n3|WideOr6~5_combout\,
	datad => \n3|WideOr1~3_combout\,
	combout => \n3|WideOr1~5_combout\);

-- Location: LCCOMB_X88_Y69_N12
\n3|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr0~1_combout\ = (new_byte(0) & (new_byte(3) $ (((new_byte(1)))))) # (!new_byte(0) & ((new_byte(3)) # ((new_byte(2) & !new_byte(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(2),
	datac => new_byte(0),
	datad => new_byte(1),
	combout => \n3|WideOr0~1_combout\);

-- Location: LCCOMB_X88_Y69_N18
\n3|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr0~2_combout\ = (new_byte(3) & (!new_byte(0) & (new_byte(2) $ (new_byte(1))))) # (!new_byte(3) & (new_byte(2) & ((new_byte(0)) # (new_byte(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(3),
	datab => new_byte(2),
	datac => new_byte(0),
	datad => new_byte(1),
	combout => \n3|WideOr0~2_combout\);

-- Location: LCCOMB_X88_Y69_N14
\n3|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr0~4_combout\ = (\n3|WideOr0~1_combout\ & (\n3|WideOr0~2_combout\ $ ((new_byte(0))))) # (!\n3|WideOr0~1_combout\ & (\n3|WideOr0~2_combout\ & ((\n3|WideOr5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr0~1_combout\,
	datab => \n3|WideOr0~2_combout\,
	datac => new_byte(0),
	datad => \n3|WideOr5~2_combout\,
	combout => \n3|WideOr0~4_combout\);

-- Location: LCCOMB_X88_Y69_N24
\n3|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr0~3_combout\ = (\n3|WideOr0~2_combout\ & (!\n3|WideOr0~1_combout\ & ((\n3|WideOr5~2_combout\) # (!new_byte(0))))) # (!\n3|WideOr0~2_combout\ & (\n3|WideOr0~1_combout\ $ ((new_byte(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr0~1_combout\,
	datab => \n3|WideOr0~2_combout\,
	datac => new_byte(0),
	datad => \n3|WideOr5~2_combout\,
	combout => \n3|WideOr0~3_combout\);

-- Location: LCCOMB_X89_Y69_N18
\n3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr0~0_combout\ = (new_byte(7) & (!new_byte(5))) # (!new_byte(7) & ((new_byte(4) & (!new_byte(5))) # (!new_byte(4) & ((new_byte(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_byte(5),
	datab => new_byte(7),
	datac => new_byte(6),
	datad => new_byte(4),
	combout => \n3|WideOr0~0_combout\);

-- Location: LCCOMB_X89_Y69_N4
\n3|WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n3|WideOr0~5_combout\ = (\n3|WideOr0~4_combout\ & ((\n3|WideOr0~3_combout\) # ((new_byte(5) & \n3|WideOr0~0_combout\)))) # (!\n3|WideOr0~4_combout\ & (!\n3|WideOr0~3_combout\ & (!new_byte(5) & !\n3|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3|WideOr0~4_combout\,
	datab => \n3|WideOr0~3_combout\,
	datac => new_byte(5),
	datad => \n3|WideOr0~0_combout\,
	combout => \n3|WideOr0~5_combout\);

-- Location: LCCOMB_X85_Y70_N10
\n2|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr6~1_combout\ = (byte_builder(4) & (!byte_builder(1) & ((!byte_builder(2)) # (!byte_builder(3))))) # (!byte_builder(4) & (byte_builder(3) & (byte_builder(1) $ (!byte_builder(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(4),
	datab => byte_builder(1),
	datac => byte_builder(3),
	datad => byte_builder(2),
	combout => \n2|WideOr6~1_combout\);

-- Location: LCCOMB_X85_Y70_N28
\n2|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~2_combout\ = (!byte_builder(6) & (!byte_builder(5) & (!byte_builder(7) & !byte_builder(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(6),
	datab => byte_builder(5),
	datac => byte_builder(7),
	datad => byte_builder(4),
	combout => \n2|WideOr5~2_combout\);

-- Location: LCCOMB_X85_Y70_N8
\n2|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr6~0_combout\ = (!byte_builder(3) & ((byte_builder(1) & ((!byte_builder(0)))) # (!byte_builder(1) & (byte_builder(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(2),
	datab => byte_builder(0),
	datac => byte_builder(3),
	datad => byte_builder(1),
	combout => \n2|WideOr6~0_combout\);

-- Location: LCCOMB_X86_Y70_N18
\n2|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr6~2_combout\ = (!byte_builder(7) & (byte_builder(6) & (byte_builder(5) & byte_builder(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(7),
	datab => byte_builder(6),
	datac => byte_builder(5),
	datad => byte_builder(0),
	combout => \n2|WideOr6~2_combout\);

-- Location: LCCOMB_X85_Y70_N30
\n2|WideOr6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr6~3_combout\ = (\n2|WideOr6~1_combout\ & ((\n2|WideOr6~2_combout\) # ((\n2|WideOr5~2_combout\ & \n2|WideOr6~0_combout\)))) # (!\n2|WideOr6~1_combout\ & (\n2|WideOr5~2_combout\ & (\n2|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr6~1_combout\,
	datab => \n2|WideOr5~2_combout\,
	datac => \n2|WideOr6~0_combout\,
	datad => \n2|WideOr6~2_combout\,
	combout => \n2|WideOr6~3_combout\);

-- Location: LCCOMB_X86_Y70_N28
\n2|WideOr6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr6~5_combout\ = (byte_builder(5) & (!byte_builder(7) & byte_builder(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(5),
	datac => byte_builder(7),
	datad => byte_builder(6),
	combout => \n2|WideOr6~5_combout\);

-- Location: LCCOMB_X85_Y70_N0
\n2|WideOr6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr6~4_combout\ = (byte_builder(3) & (!byte_builder(4))) # (!byte_builder(3) & ((byte_builder(1) & ((byte_builder(4)) # (!byte_builder(2)))) # (!byte_builder(1) & ((byte_builder(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(4),
	datab => byte_builder(1),
	datac => byte_builder(3),
	datad => byte_builder(2),
	combout => \n2|WideOr6~4_combout\);

-- Location: LCCOMB_X86_Y70_N30
\n2|WideOr6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr6~6_combout\ = (\n2|WideOr6~3_combout\) # ((\n2|WideOr6~5_combout\ & (\n2|WideOr6~4_combout\ & !byte_builder(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr6~3_combout\,
	datab => \n2|WideOr6~5_combout\,
	datac => \n2|WideOr6~4_combout\,
	datad => byte_builder(0),
	combout => \n2|WideOr6~6_combout\);

-- Location: LCCOMB_X85_Y70_N6
\n2|WideOr5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~4_combout\ = (byte_builder(6) & (byte_builder(5) & (!byte_builder(7) & byte_builder(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(6),
	datab => byte_builder(5),
	datac => byte_builder(7),
	datad => byte_builder(4),
	combout => \n2|WideOr5~4_combout\);

-- Location: LCCOMB_X84_Y70_N24
\n2|WideOr5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~3_combout\ = (byte_builder(2) & (((!byte_builder(1) & !byte_builder(3))))) # (!byte_builder(2) & ((byte_builder(0) & ((!byte_builder(3)))) # (!byte_builder(0) & (byte_builder(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr5~3_combout\);

-- Location: LCCOMB_X84_Y70_N26
\n2|WideOr5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~5_combout\ = (!byte_builder(3) & ((byte_builder(0) & (!byte_builder(1) & !byte_builder(2))) # (!byte_builder(0) & (byte_builder(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr5~5_combout\);

-- Location: LCCOMB_X84_Y70_N12
\n2|WideOr5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~6_combout\ = (\n2|WideOr5~4_combout\ & ((\n2|WideOr5~3_combout\) # ((\n2|WideOr5~5_combout\ & \n2|WideOr5~2_combout\)))) # (!\n2|WideOr5~4_combout\ & (((\n2|WideOr5~5_combout\ & \n2|WideOr5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr5~4_combout\,
	datab => \n2|WideOr5~3_combout\,
	datac => \n2|WideOr5~5_combout\,
	datad => \n2|WideOr5~2_combout\,
	combout => \n2|WideOr5~6_combout\);

-- Location: LCCOMB_X85_Y70_N18
\n2|WideOr5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~9_combout\ = (byte_builder(6) & (byte_builder(5) & (!byte_builder(7) & !byte_builder(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(6),
	datab => byte_builder(5),
	datac => byte_builder(7),
	datad => byte_builder(4),
	combout => \n2|WideOr5~9_combout\);

-- Location: LCCOMB_X84_Y70_N30
\n2|WideOr5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~8_combout\ = (byte_builder(0) & (byte_builder(1) $ (((byte_builder(2) & !byte_builder(3)))))) # (!byte_builder(0) & ((byte_builder(1) & ((byte_builder(2)) # (!byte_builder(3)))) # (!byte_builder(1) & ((byte_builder(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr5~8_combout\);

-- Location: LCCOMB_X87_Y70_N16
\n2|WideOr5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~7_combout\ = (byte_builder(5) & (byte_builder(2) & (byte_builder(6) & byte_builder(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(5),
	datab => byte_builder(2),
	datac => byte_builder(6),
	datad => byte_builder(3),
	combout => \n2|WideOr5~7_combout\);

-- Location: LCCOMB_X87_Y70_N18
\n2|WideOr5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~11_combout\ = (byte_builder(1) & (byte_builder(4) & (byte_builder(7) & \n2|WideOr5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(4),
	datac => byte_builder(7),
	datad => \n2|WideOr5~7_combout\,
	combout => \n2|WideOr5~11_combout\);

-- Location: LCCOMB_X84_Y70_N28
\n2|WideOr5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr5~10_combout\ = (\n2|WideOr5~6_combout\) # ((\n2|WideOr5~11_combout\) # ((\n2|WideOr5~9_combout\ & \n2|WideOr5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr5~6_combout\,
	datab => \n2|WideOr5~9_combout\,
	datac => \n2|WideOr5~8_combout\,
	datad => \n2|WideOr5~11_combout\,
	combout => \n2|WideOr5~10_combout\);

-- Location: LCCOMB_X84_Y70_N18
\n2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr4~0_combout\ = (!byte_builder(3) & (\n2|WideOr5~2_combout\ & (byte_builder(0) & !byte_builder(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(3),
	datab => \n2|WideOr5~2_combout\,
	datac => byte_builder(0),
	datad => byte_builder(1),
	combout => \n2|WideOr4~0_combout\);

-- Location: LCCOMB_X87_Y70_N12
\n2|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr4~1_combout\ = (byte_builder(1) & (byte_builder(4) $ (byte_builder(2) $ (byte_builder(0))))) # (!byte_builder(1) & ((byte_builder(4) & ((!byte_builder(0)))) # (!byte_builder(4) & (byte_builder(2) & byte_builder(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(4),
	datac => byte_builder(2),
	datad => byte_builder(0),
	combout => \n2|WideOr4~1_combout\);

-- Location: LCCOMB_X87_Y70_N6
\n2|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr4~2_combout\ = (\n2|WideOr4~0_combout\) # ((\n2|WideOr6~5_combout\ & (!byte_builder(3) & \n2|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr4~0_combout\,
	datab => \n2|WideOr6~5_combout\,
	datac => byte_builder(3),
	datad => \n2|WideOr4~1_combout\,
	combout => \n2|WideOr4~2_combout\);

-- Location: LCCOMB_X87_Y70_N22
\n2|WideOr4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr4~3_combout\ = (byte_builder(1) & (byte_builder(4) & ((byte_builder(7))))) # (!byte_builder(1) & (!byte_builder(4) & (!byte_builder(0) & !byte_builder(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(1),
	datab => byte_builder(4),
	datac => byte_builder(0),
	datad => byte_builder(7),
	combout => \n2|WideOr4~3_combout\);

-- Location: LCCOMB_X87_Y70_N2
\n2|WideOr4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr4~4_combout\ = (\n2|WideOr4~2_combout\) # ((\n2|WideOr4~3_combout\ & \n2|WideOr5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr4~2_combout\,
	datab => \n2|WideOr4~3_combout\,
	datad => \n2|WideOr5~7_combout\,
	combout => \n2|WideOr4~4_combout\);

-- Location: LCCOMB_X84_Y70_N6
\n2|WideOr3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr3~6_combout\ = (byte_builder(0) & (!byte_builder(1) & ((byte_builder(3)) # (!byte_builder(2))))) # (!byte_builder(0) & ((byte_builder(1) & (byte_builder(2))) # (!byte_builder(1) & (!byte_builder(2) & byte_builder(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr3~6_combout\);

-- Location: LCCOMB_X84_Y70_N16
\n2|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr3~1_combout\ = (!byte_builder(3) & (byte_builder(2) $ (((!byte_builder(0) & byte_builder(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr3~1_combout\);

-- Location: LCCOMB_X84_Y70_N14
\n2|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr3~2_combout\ = (byte_builder(0)) # ((byte_builder(3)) # ((!byte_builder(1) & byte_builder(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr3~2_combout\);

-- Location: LCCOMB_X84_Y70_N4
\n2|WideOr3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr3~3_combout\ = (\n2|WideOr5~4_combout\ & (((\n2|WideOr3~1_combout\ & \n2|WideOr5~2_combout\)) # (!\n2|WideOr3~2_combout\))) # (!\n2|WideOr5~4_combout\ & (\n2|WideOr3~1_combout\ & ((\n2|WideOr5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr5~4_combout\,
	datab => \n2|WideOr3~1_combout\,
	datac => \n2|WideOr3~2_combout\,
	datad => \n2|WideOr5~2_combout\,
	combout => \n2|WideOr3~3_combout\);

-- Location: LCCOMB_X85_Y70_N24
\n2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr3~0_combout\ = (byte_builder(4) & byte_builder(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(4),
	datad => byte_builder(1),
	combout => \n2|WideOr3~0_combout\);

-- Location: LCCOMB_X85_Y70_N4
\n2|WideOr3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr3~4_combout\ = (byte_builder(2) & (byte_builder(5) & (\n2|WideOr3~0_combout\ & byte_builder(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(2),
	datab => byte_builder(5),
	datac => \n2|WideOr3~0_combout\,
	datad => byte_builder(0),
	combout => \n2|WideOr3~4_combout\);

-- Location: LCCOMB_X85_Y70_N26
\n2|WideOr3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr3~5_combout\ = (byte_builder(7) & (\n2|WideOr3~4_combout\ & (byte_builder(3) & byte_builder(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(7),
	datab => \n2|WideOr3~4_combout\,
	datac => byte_builder(3),
	datad => byte_builder(6),
	combout => \n2|WideOr3~5_combout\);

-- Location: LCCOMB_X84_Y70_N20
\n2|WideOr3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr3~7_combout\ = (\n2|WideOr3~3_combout\) # ((\n2|WideOr3~5_combout\) # ((\n2|WideOr3~6_combout\ & \n2|WideOr5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr3~6_combout\,
	datab => \n2|WideOr5~9_combout\,
	datac => \n2|WideOr3~3_combout\,
	datad => \n2|WideOr3~5_combout\,
	combout => \n2|WideOr3~7_combout\);

-- Location: LCCOMB_X84_Y70_N0
\n2|WideOr2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr2~4_combout\ = (byte_builder(2) & (!byte_builder(0) & (byte_builder(1) & !byte_builder(3)))) # (!byte_builder(2) & (byte_builder(3) $ (((byte_builder(0) & byte_builder(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr2~4_combout\);

-- Location: LCCOMB_X84_Y70_N10
\n2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr2~0_combout\ = (byte_builder(0) & (byte_builder(3) & ((!byte_builder(2)) # (!byte_builder(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr2~0_combout\);

-- Location: LCCOMB_X84_Y70_N8
\n2|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr2~1_combout\ = (!byte_builder(3) & (byte_builder(1) $ (((!byte_builder(0) & byte_builder(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(1),
	datac => byte_builder(2),
	datad => byte_builder(3),
	combout => \n2|WideOr2~1_combout\);

-- Location: LCCOMB_X84_Y70_N22
\n2|WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr2~2_combout\ = (\n2|WideOr2~0_combout\ & ((\n2|WideOr5~9_combout\) # ((\n2|WideOr2~1_combout\ & \n2|WideOr5~2_combout\)))) # (!\n2|WideOr2~0_combout\ & (((\n2|WideOr2~1_combout\ & \n2|WideOr5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr2~0_combout\,
	datab => \n2|WideOr5~9_combout\,
	datac => \n2|WideOr2~1_combout\,
	datad => \n2|WideOr5~2_combout\,
	combout => \n2|WideOr2~2_combout\);

-- Location: LCCOMB_X85_Y70_N16
\n2|WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr2~3_combout\ = (!byte_builder(7) & (\n2|WideOr3~4_combout\ & (!byte_builder(3) & !byte_builder(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(7),
	datab => \n2|WideOr3~4_combout\,
	datac => byte_builder(3),
	datad => byte_builder(6),
	combout => \n2|WideOr2~3_combout\);

-- Location: LCCOMB_X84_Y70_N2
\n2|WideOr2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr2~5_combout\ = (\n2|WideOr2~2_combout\) # ((\n2|WideOr2~3_combout\) # ((\n2|WideOr5~4_combout\ & \n2|WideOr2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr5~4_combout\,
	datab => \n2|WideOr2~4_combout\,
	datac => \n2|WideOr2~2_combout\,
	datad => \n2|WideOr2~3_combout\,
	combout => \n2|WideOr2~5_combout\);

-- Location: LCCOMB_X85_Y70_N12
\n2|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr1~2_combout\ = (byte_builder(4) & ((byte_builder(3)) # ((!byte_builder(0) & !byte_builder(1))))) # (!byte_builder(4) & (byte_builder(3) $ (((byte_builder(0)) # (byte_builder(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(4),
	datab => byte_builder(0),
	datac => byte_builder(3),
	datad => byte_builder(1),
	combout => \n2|WideOr1~2_combout\);

-- Location: LCCOMB_X85_Y70_N22
\n2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr1~0_combout\ = (byte_builder(0) & (!byte_builder(3) & ((byte_builder(2)) # (byte_builder(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(2),
	datab => byte_builder(0),
	datac => byte_builder(3),
	datad => byte_builder(1),
	combout => \n2|WideOr1~0_combout\);

-- Location: LCCOMB_X86_Y70_N24
\n2|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr1~1_combout\ = (!byte_builder(7) & (byte_builder(2) & (byte_builder(5) & byte_builder(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(7),
	datab => byte_builder(2),
	datac => byte_builder(5),
	datad => byte_builder(6),
	combout => \n2|WideOr1~1_combout\);

-- Location: LCCOMB_X85_Y70_N2
\n2|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr1~3_combout\ = (\n2|WideOr1~2_combout\ & (\n2|WideOr5~2_combout\ & (\n2|WideOr1~0_combout\))) # (!\n2|WideOr1~2_combout\ & ((\n2|WideOr1~1_combout\) # ((\n2|WideOr5~2_combout\ & \n2|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr1~2_combout\,
	datab => \n2|WideOr5~2_combout\,
	datac => \n2|WideOr1~0_combout\,
	datad => \n2|WideOr1~1_combout\,
	combout => \n2|WideOr1~3_combout\);

-- Location: LCCOMB_X85_Y70_N20
\n2|WideOr1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr1~4_combout\ = (byte_builder(4) & (!byte_builder(0) & (byte_builder(3) $ (byte_builder(1))))) # (!byte_builder(4) & (byte_builder(3) & (byte_builder(0) $ (byte_builder(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(4),
	datab => byte_builder(0),
	datac => byte_builder(3),
	datad => byte_builder(1),
	combout => \n2|WideOr1~4_combout\);

-- Location: LCCOMB_X86_Y70_N14
\n2|WideOr1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr1~5_combout\ = (\n2|WideOr1~3_combout\) # ((\n2|WideOr1~4_combout\ & (!byte_builder(2) & \n2|WideOr6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr1~3_combout\,
	datab => \n2|WideOr1~4_combout\,
	datac => byte_builder(2),
	datad => \n2|WideOr6~5_combout\,
	combout => \n2|WideOr1~5_combout\);

-- Location: LCCOMB_X87_Y70_N20
\n2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr0~0_combout\ = (byte_builder(4) & (!byte_builder(6))) # (!byte_builder(4) & ((byte_builder(7) & (!byte_builder(6))) # (!byte_builder(7) & ((byte_builder(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(6),
	datab => byte_builder(4),
	datac => byte_builder(5),
	datad => byte_builder(7),
	combout => \n2|WideOr0~0_combout\);

-- Location: LCCOMB_X85_Y70_N14
\n2|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr0~1_combout\ = (byte_builder(0) & ((byte_builder(3) $ (byte_builder(1))))) # (!byte_builder(0) & ((byte_builder(3)) # ((byte_builder(2) & !byte_builder(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(2),
	datab => byte_builder(0),
	datac => byte_builder(3),
	datad => byte_builder(1),
	combout => \n2|WideOr0~1_combout\);

-- Location: LCCOMB_X87_Y70_N26
\n2|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr0~2_combout\ = (byte_builder(2) & (byte_builder(3) $ (((byte_builder(0)) # (byte_builder(1)))))) # (!byte_builder(2) & (!byte_builder(0) & (byte_builder(1) & byte_builder(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_builder(0),
	datab => byte_builder(2),
	datac => byte_builder(1),
	datad => byte_builder(3),
	combout => \n2|WideOr0~2_combout\);

-- Location: LCCOMB_X86_Y70_N0
\n2|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr0~3_combout\ = (\n2|WideOr0~2_combout\ & (!\n2|WideOr0~1_combout\ & ((\n2|WideOr5~4_combout\) # (!byte_builder(0))))) # (!\n2|WideOr0~2_combout\ & (\n2|WideOr0~1_combout\ $ (((byte_builder(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr0~1_combout\,
	datab => \n2|WideOr0~2_combout\,
	datac => \n2|WideOr5~4_combout\,
	datad => byte_builder(0),
	combout => \n2|WideOr0~3_combout\);

-- Location: LCCOMB_X86_Y70_N22
\n2|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr0~4_combout\ = (\n2|WideOr0~1_combout\ & (\n2|WideOr0~2_combout\ $ (((byte_builder(0)))))) # (!\n2|WideOr0~1_combout\ & (\n2|WideOr0~2_combout\ & (\n2|WideOr5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr0~1_combout\,
	datab => \n2|WideOr0~2_combout\,
	datac => \n2|WideOr5~4_combout\,
	datad => byte_builder(0),
	combout => \n2|WideOr0~4_combout\);

-- Location: LCCOMB_X86_Y70_N12
\n2|WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n2|WideOr0~5_combout\ = (\n2|WideOr0~3_combout\ & (((\n2|WideOr0~4_combout\)))) # (!\n2|WideOr0~3_combout\ & ((\n2|WideOr0~0_combout\ & (\n2|WideOr0~4_combout\ & byte_builder(6))) # (!\n2|WideOr0~0_combout\ & (!\n2|WideOr0~4_combout\ & 
-- !byte_builder(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2|WideOr0~0_combout\,
	datab => \n2|WideOr0~3_combout\,
	datac => \n2|WideOr0~4_combout\,
	datad => byte_builder(6),
	combout => \n2|WideOr0~5_combout\);

ww_ssOut(0) <= \ssOut[0]~output_o\;

ww_ssOut(1) <= \ssOut[1]~output_o\;

ww_ssOut(2) <= \ssOut[2]~output_o\;

ww_ssOut(3) <= \ssOut[3]~output_o\;

ww_ssOut(4) <= \ssOut[4]~output_o\;

ww_ssOut(5) <= \ssOut[5]~output_o\;

ww_ssOut(6) <= \ssOut[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_spi_clk <= \spi_clk~output_o\;

ww_byte_received <= \byte_received~output_o\;

ww_new_byte_out <= \new_byte_out~output_o\;

ww_new_byte_out1 <= \new_byte_out1~output_o\;

ww_clk_out <= \clk_out~output_o\;

ww_ssOut1(0) <= \ssOut1[0]~output_o\;

ww_ssOut1(1) <= \ssOut1[1]~output_o\;

ww_ssOut1(2) <= \ssOut1[2]~output_o\;

ww_ssOut1(3) <= \ssOut1[3]~output_o\;

ww_ssOut1(4) <= \ssOut1[4]~output_o\;

ww_ssOut1(5) <= \ssOut1[5]~output_o\;

ww_ssOut1(6) <= \ssOut1[6]~output_o\;

ww_ssOut2(0) <= \ssOut2[0]~output_o\;

ww_ssOut2(1) <= \ssOut2[1]~output_o\;

ww_ssOut2(2) <= \ssOut2[2]~output_o\;

ww_ssOut2(3) <= \ssOut2[3]~output_o\;

ww_ssOut2(4) <= \ssOut2[4]~output_o\;

ww_ssOut2(5) <= \ssOut2[5]~output_o\;

ww_ssOut2(6) <= \ssOut2[6]~output_o\;
END structure;


