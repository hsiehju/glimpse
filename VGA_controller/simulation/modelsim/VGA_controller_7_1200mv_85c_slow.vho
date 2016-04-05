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

-- DATE "04/05/2016 17:02:09"

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
SIGNAL \vga1|Add0~1\ : std_logic;
SIGNAL \vga1|Add0~2_combout\ : std_logic;
SIGNAL \vga1|xPixel~0_combout\ : std_logic;
SIGNAL \vga1|Add0~3\ : std_logic;
SIGNAL \vga1|Add0~4_combout\ : std_logic;
SIGNAL \vga1|Add0~5\ : std_logic;
SIGNAL \vga1|Add0~7\ : std_logic;
SIGNAL \vga1|Add0~8_combout\ : std_logic;
SIGNAL \vga1|xPixel~1_combout\ : std_logic;
SIGNAL \vga1|Add0~9\ : std_logic;
SIGNAL \vga1|Add0~10_combout\ : std_logic;
SIGNAL \vga1|Add0~11\ : std_logic;
SIGNAL \vga1|Add0~12_combout\ : std_logic;
SIGNAL \vga1|Add0~13\ : std_logic;
SIGNAL \vga1|Add0~14_combout\ : std_logic;
SIGNAL \vga1|Add0~15\ : std_logic;
SIGNAL \vga1|Add0~16_combout\ : std_logic;
SIGNAL \vga1|xPixel~2_combout\ : std_logic;
SIGNAL \vga1|Add0~17\ : std_logic;
SIGNAL \vga1|Add0~18_combout\ : std_logic;
SIGNAL \vga1|xPixel~3_combout\ : std_logic;
SIGNAL \vga1|Equal0~1_combout\ : std_logic;
SIGNAL \vga1|Equal0~2_combout\ : std_logic;
SIGNAL \vga1|Equal0~3_combout\ : std_logic;
SIGNAL \vga1|Add0~6_combout\ : std_logic;
SIGNAL \vga1|xPixel~4_combout\ : std_logic;
SIGNAL \Mux323~3_combout\ : std_logic;
SIGNAL \vga1|Add1~0_combout\ : std_logic;
SIGNAL \vga1|Add1~1\ : std_logic;
SIGNAL \vga1|Add1~2_combout\ : std_logic;
SIGNAL \vga1|Equal1~1_combout\ : std_logic;
SIGNAL \vga1|Equal1~0_combout\ : std_logic;
SIGNAL \vga1|Add1~17\ : std_logic;
SIGNAL \vga1|Add1~18_combout\ : std_logic;
SIGNAL \vga1|yPixel~3_combout\ : std_logic;
SIGNAL \vga1|Equal1~2_combout\ : std_logic;
SIGNAL \vga1|yPixel~1_combout\ : std_logic;
SIGNAL \vga1|Add1~3\ : std_logic;
SIGNAL \vga1|Add1~4_combout\ : std_logic;
SIGNAL \vga1|yPixel~0_combout\ : std_logic;
SIGNAL \vga1|Add1~5\ : std_logic;
SIGNAL \vga1|Add1~6_combout\ : std_logic;
SIGNAL \vga1|yPixel~2_combout\ : std_logic;
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
SIGNAL \vga1|LessThan1~0_combout\ : std_logic;
SIGNAL \vga1|display_area~0_combout\ : std_logic;
SIGNAL \vga1|display_area~q\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux320~3_combout\ : std_logic;
SIGNAL \Mux320~4_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux323~4_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux323~15_combout\ : std_logic;
SIGNAL \Mux145~0_combout\ : std_logic;
SIGNAL \Mux323~7_combout\ : std_logic;
SIGNAL \Mux322~9_combout\ : std_logic;
SIGNAL \Mux322~10_combout\ : std_logic;
SIGNAL \Mux323~8_combout\ : std_logic;
SIGNAL \Mux233~0_combout\ : std_logic;
SIGNAL \Mux234~0_combout\ : std_logic;
SIGNAL \Mux323~5_combout\ : std_logic;
SIGNAL \Mux323~6_combout\ : std_logic;
SIGNAL \Mux322~12_combout\ : std_logic;
SIGNAL \Mux322~13_combout\ : std_logic;
SIGNAL \Mux137~0_combout\ : std_logic;
SIGNAL \Mux322~14_combout\ : std_logic;
SIGNAL \Mux323~9_combout\ : std_logic;
SIGNAL \Mux323~2_combout\ : std_logic;
SIGNAL \Mux323~10_combout\ : std_logic;
SIGNAL \Mux323~11_combout\ : std_logic;
SIGNAL \Mux137~1_combout\ : std_logic;
SIGNAL \Mux322~0_combout\ : std_logic;
SIGNAL \Mux322~1_combout\ : std_logic;
SIGNAL \Mux322~17_combout\ : std_logic;
SIGNAL \Mux323~12_combout\ : std_logic;
SIGNAL \Mux323~13_combout\ : std_logic;
SIGNAL \Mux323~14_combout\ : std_logic;
SIGNAL \Mux320~2_combout\ : std_logic;
SIGNAL \Mux327~6_combout\ : std_logic;
SIGNAL \Mux327~7_combout\ : std_logic;
SIGNAL \Mux327~8_combout\ : std_logic;
SIGNAL \Mux327~9_combout\ : std_logic;
SIGNAL \Mux321~2_combout\ : std_logic;
SIGNAL \Mux327~0_combout\ : std_logic;
SIGNAL \Mux327~2_combout\ : std_logic;
SIGNAL \Mux327~1_combout\ : std_logic;
SIGNAL \Mux327~3_combout\ : std_logic;
SIGNAL \Mux327~4_combout\ : std_logic;
SIGNAL \Mux327~5_combout\ : std_logic;
SIGNAL \Mux327~12_combout\ : std_logic;
SIGNAL \Mux327~13_combout\ : std_logic;
SIGNAL \Mux327~10_combout\ : std_logic;
SIGNAL \Mux324~3_combout\ : std_logic;
SIGNAL \Mux327~11_combout\ : std_logic;
SIGNAL \Mux327~14_combout\ : std_logic;
SIGNAL \Mux327~15_combout\ : std_logic;
SIGNAL \Mux325~10_combout\ : std_logic;
SIGNAL \Mux325~17_combout\ : std_logic;
SIGNAL \Mux325~14_combout\ : std_logic;
SIGNAL \Mux325~11_combout\ : std_logic;
SIGNAL \Mux325~12_combout\ : std_logic;
SIGNAL \Mux325~13_combout\ : std_logic;
SIGNAL \Mux325~15_combout\ : std_logic;
SIGNAL \Mux325~16_combout\ : std_logic;
SIGNAL \Mux321~3_combout\ : std_logic;
SIGNAL \Mux325~8_combout\ : std_logic;
SIGNAL \Mux325~6_combout\ : std_logic;
SIGNAL \Mux325~4_combout\ : std_logic;
SIGNAL \Mux325~5_combout\ : std_logic;
SIGNAL \Mux325~7_combout\ : std_logic;
SIGNAL \Mux325~9_combout\ : std_logic;
SIGNAL \Mux325~18_combout\ : std_logic;
SIGNAL \library1|Mux0~559_combout\ : std_logic;
SIGNAL \library1|Mux0~560_combout\ : std_logic;
SIGNAL \library1|Mux0~564_combout\ : std_logic;
SIGNAL \library1|Mux0~565_combout\ : std_logic;
SIGNAL \Mux321~4_combout\ : std_logic;
SIGNAL \Mux321~5_combout\ : std_logic;
SIGNAL \Mux321~6_combout\ : std_logic;
SIGNAL \Mux321~7_combout\ : std_logic;
SIGNAL \Mux241~0_combout\ : std_logic;
SIGNAL \Mux321~12_combout\ : std_logic;
SIGNAL \Mux321~13_combout\ : std_logic;
SIGNAL \Mux321~10_combout\ : std_logic;
SIGNAL \Mux321~8_combout\ : std_logic;
SIGNAL \Mux321~9_combout\ : std_logic;
SIGNAL \Mux321~11_combout\ : std_logic;
SIGNAL \Mux321~14_combout\ : std_logic;
SIGNAL \Mux321~15_combout\ : std_logic;
SIGNAL \Mux321~16_combout\ : std_logic;
SIGNAL \Mux322~2_combout\ : std_logic;
SIGNAL \Mux322~3_combout\ : std_logic;
SIGNAL \Mux322~4_combout\ : std_logic;
SIGNAL \Mux322~5_combout\ : std_logic;
SIGNAL \Mux322~6_combout\ : std_logic;
SIGNAL \Mux322~7_combout\ : std_logic;
SIGNAL \Mux322~8_combout\ : std_logic;
SIGNAL \Mux322~11_combout\ : std_logic;
SIGNAL \Mux322~15_combout\ : std_logic;
SIGNAL \Mux322~16_combout\ : std_logic;
SIGNAL \library1|Mux0~561_combout\ : std_logic;
SIGNAL \library1|Mux0~562_combout\ : std_logic;
SIGNAL \library1|Mux0~563_combout\ : std_logic;
SIGNAL \library1|Mux0~566_combout\ : std_logic;
SIGNAL \library1|Mux0~580_combout\ : std_logic;
SIGNAL \library1|Mux0~578_combout\ : std_logic;
SIGNAL \library1|Mux0~579_combout\ : std_logic;
SIGNAL \library1|Mux0~581_combout\ : std_logic;
SIGNAL \library1|Mux0~1173_combout\ : std_logic;
SIGNAL \library1|Mux0~582_combout\ : std_logic;
SIGNAL \library1|Mux0~1174_combout\ : std_logic;
SIGNAL \Mux324~2_combout\ : std_logic;
SIGNAL \Mux324~4_combout\ : std_logic;
SIGNAL \Mux324~5_combout\ : std_logic;
SIGNAL \Mux324~6_combout\ : std_logic;
SIGNAL \Mux324~10_combout\ : std_logic;
SIGNAL \Mux324~11_combout\ : std_logic;
SIGNAL \Mux324~12_combout\ : std_logic;
SIGNAL \Mux324~13_combout\ : std_logic;
SIGNAL \Mux324~7_combout\ : std_logic;
SIGNAL \Mux324~8_combout\ : std_logic;
SIGNAL \Mux324~9_combout\ : std_logic;
SIGNAL \Mux324~14_combout\ : std_logic;
SIGNAL \Mux324~15_combout\ : std_logic;
SIGNAL \library1|Mux0~574_combout\ : std_logic;
SIGNAL \library1|Mux0~575_combout\ : std_logic;
SIGNAL \library1|Mux0~572_combout\ : std_logic;
SIGNAL \library1|Mux0~573_combout\ : std_logic;
SIGNAL \library1|Mux0~576_combout\ : std_logic;
SIGNAL \library1|Mux0~570_combout\ : std_logic;
SIGNAL \library1|Mux0~293_combout\ : std_logic;
SIGNAL \library1|Mux0~567_combout\ : std_logic;
SIGNAL \library1|Mux0~250_combout\ : std_logic;
SIGNAL \library1|Mux0~568_combout\ : std_logic;
SIGNAL \library1|Mux0~569_combout\ : std_logic;
SIGNAL \library1|Mux0~571_combout\ : std_logic;
SIGNAL \library1|Mux0~577_combout\ : std_logic;
SIGNAL \library1|Mux0~583_combout\ : std_logic;
SIGNAL \library1|Mux0~699_combout\ : std_logic;
SIGNAL \library1|Mux0~697_combout\ : std_logic;
SIGNAL \library1|Mux0~698_combout\ : std_logic;
SIGNAL \library1|Mux0~700_combout\ : std_logic;
SIGNAL \library1|Mux0~701_combout\ : std_logic;
SIGNAL \library1|Mux0~175_combout\ : std_logic;
SIGNAL \library1|Mux0~702_combout\ : std_logic;
SIGNAL \library1|Mux0~703_combout\ : std_logic;
SIGNAL \library1|Mux0~715_combout\ : std_logic;
SIGNAL \library1|Mux0~721_combout\ : std_logic;
SIGNAL \library1|Mux0~718_combout\ : std_logic;
SIGNAL \library1|Mux0~719_combout\ : std_logic;
SIGNAL \library1|Mux0~716_combout\ : std_logic;
SIGNAL \library1|Mux0~717_combout\ : std_logic;
SIGNAL \library1|Mux0~1125_combout\ : std_logic;
SIGNAL \library1|Mux0~720_combout\ : std_logic;
SIGNAL \library1|Mux0~1163_combout\ : std_logic;
SIGNAL \library1|Mux0~1164_combout\ : std_logic;
SIGNAL \library1|Mux0~706_combout\ : std_logic;
SIGNAL \library1|Mux0~707_combout\ : std_logic;
SIGNAL \library1|Mux0~704_combout\ : std_logic;
SIGNAL \library1|Mux0~705_combout\ : std_logic;
SIGNAL \library1|Mux0~1124_combout\ : std_logic;
SIGNAL \library1|Mux0~708_combout\ : std_logic;
SIGNAL \library1|Mux0~709_combout\ : std_logic;
SIGNAL \library1|Mux0~711_combout\ : std_logic;
SIGNAL \library1|Mux0~712_combout\ : std_logic;
SIGNAL \library1|Mux0~710_combout\ : std_logic;
SIGNAL \library1|Mux0~713_combout\ : std_logic;
SIGNAL \library1|Mux0~714_combout\ : std_logic;
SIGNAL \library1|Mux0~722_combout\ : std_logic;
SIGNAL \library1|Mux0~632_combout\ : std_logic;
SIGNAL \library1|Mux0~310_combout\ : std_logic;
SIGNAL \library1|Mux0~624_combout\ : std_logic;
SIGNAL \library1|Mux0~625_combout\ : std_logic;
SIGNAL \library1|Mux0~360_combout\ : std_logic;
SIGNAL \library1|Mux0~629_combout\ : std_logic;
SIGNAL \library1|Mux0~630_combout\ : std_logic;
SIGNAL \library1|Mux0~626_combout\ : std_logic;
SIGNAL \library1|Mux0~627_combout\ : std_logic;
SIGNAL \library1|Mux0~1167_combout\ : std_logic;
SIGNAL \library1|Mux0~1168_combout\ : std_logic;
SIGNAL \library1|Mux0~628_combout\ : std_logic;
SIGNAL \library1|Mux0~631_combout\ : std_logic;
SIGNAL \library1|Mux0~633_combout\ : std_logic;
SIGNAL \library1|Mux0~592_combout\ : std_logic;
SIGNAL \library1|Mux0~593_combout\ : std_logic;
SIGNAL \library1|Mux0~586_combout\ : std_logic;
SIGNAL \library1|Mux0~587_combout\ : std_logic;
SIGNAL \library1|Mux0~1121_combout\ : std_logic;
SIGNAL \library1|Mux0~589_combout\ : std_logic;
SIGNAL \library1|Mux0~588_combout\ : std_logic;
SIGNAL \library1|Mux0~590_combout\ : std_logic;
SIGNAL \library1|Mux0~591_combout\ : std_logic;
SIGNAL \library1|Mux0~584_combout\ : std_logic;
SIGNAL \library1|Mux0~585_combout\ : std_logic;
SIGNAL \library1|Mux0~594_combout\ : std_logic;
SIGNAL \library1|Mux0~610_combout\ : std_logic;
SIGNAL \library1|Mux0~611_combout\ : std_logic;
SIGNAL \library1|Mux0~612_combout\ : std_logic;
SIGNAL \library1|Mux0~613_combout\ : std_logic;
SIGNAL \library1|Mux0~614_combout\ : std_logic;
SIGNAL \library1|Mux0~619_combout\ : std_logic;
SIGNAL \library1|Mux0~615_combout\ : std_logic;
SIGNAL \library1|Mux0~616_combout\ : std_logic;
SIGNAL \library1|Mux0~617_combout\ : std_logic;
SIGNAL \library1|Mux0~618_combout\ : std_logic;
SIGNAL \library1|Mux0~620_combout\ : std_logic;
SIGNAL \library1|Mux0~621_combout\ : std_logic;
SIGNAL \library1|Mux0~622_combout\ : std_logic;
SIGNAL \library1|Mux0~1169_combout\ : std_logic;
SIGNAL \library1|Mux0~603_combout\ : std_logic;
SIGNAL \library1|Mux0~605_combout\ : std_logic;
SIGNAL \library1|Mux0~604_combout\ : std_logic;
SIGNAL \library1|Mux0~606_combout\ : std_logic;
SIGNAL \library1|Mux0~601_combout\ : std_logic;
SIGNAL \library1|Mux0~602_combout\ : std_logic;
SIGNAL \library1|Mux0~607_combout\ : std_logic;
SIGNAL \library1|Mux0~608_combout\ : std_logic;
SIGNAL \library1|Mux0~596_combout\ : std_logic;
SIGNAL \library1|Mux0~595_combout\ : std_logic;
SIGNAL \library1|Mux0~597_combout\ : std_logic;
SIGNAL \library1|Mux0~1171_combout\ : std_logic;
SIGNAL \library1|Mux0~1172_combout\ : std_logic;
SIGNAL \library1|Mux0~599_combout\ : std_logic;
SIGNAL \library1|Mux0~598_combout\ : std_logic;
SIGNAL \library1|Mux0~1122_combout\ : std_logic;
SIGNAL \library1|Mux0~600_combout\ : std_logic;
SIGNAL \library1|Mux0~609_combout\ : std_logic;
SIGNAL \library1|Mux0~1170_combout\ : std_logic;
SIGNAL \library1|Mux0~623_combout\ : std_logic;
SIGNAL \library1|Mux0~634_combout\ : std_logic;
SIGNAL \library1|Mux0~645_combout\ : std_logic;
SIGNAL \library1|Mux0~1123_combout\ : std_logic;
SIGNAL \library1|Mux0~650_combout\ : std_logic;
SIGNAL \library1|Mux0~651_combout\ : std_logic;
SIGNAL \library1|Mux0~646_combout\ : std_logic;
SIGNAL \library1|Mux0~647_combout\ : std_logic;
SIGNAL \library1|Mux0~648_combout\ : std_logic;
SIGNAL \library1|Mux0~649_combout\ : std_logic;
SIGNAL \library1|Mux0~652_combout\ : std_logic;
SIGNAL \library1|Mux0~635_combout\ : std_logic;
SIGNAL \library1|Mux0~636_combout\ : std_logic;
SIGNAL \library1|Mux0~637_combout\ : std_logic;
SIGNAL \library1|Mux0~638_combout\ : std_logic;
SIGNAL \library1|Mux0~511_combout\ : std_logic;
SIGNAL \library1|Mux0~639_combout\ : std_logic;
SIGNAL \library1|Mux0~640_combout\ : std_logic;
SIGNAL \library1|Mux0~642_combout\ : std_logic;
SIGNAL \library1|Mux0~641_combout\ : std_logic;
SIGNAL \library1|Mux0~72_combout\ : std_logic;
SIGNAL \library1|Mux0~643_combout\ : std_logic;
SIGNAL \library1|Mux0~644_combout\ : std_logic;
SIGNAL \library1|Mux0~653_combout\ : std_logic;
SIGNAL \library1|Mux0~654_combout\ : std_logic;
SIGNAL \library1|Mux0~657_combout\ : std_logic;
SIGNAL \library1|Mux0~658_combout\ : std_logic;
SIGNAL \library1|Mux0~655_combout\ : std_logic;
SIGNAL \library1|Mux0~656_combout\ : std_logic;
SIGNAL \library1|Mux0~659_combout\ : std_logic;
SIGNAL \library1|Mux0~93_combout\ : std_logic;
SIGNAL \library1|Mux0~660_combout\ : std_logic;
SIGNAL \library1|Mux0~661_combout\ : std_logic;
SIGNAL \library1|Mux0~662_combout\ : std_logic;
SIGNAL \library1|Mux0~685_combout\ : std_logic;
SIGNAL \library1|Mux0~686_combout\ : std_logic;
SIGNAL \library1|Mux0~672_combout\ : std_logic;
SIGNAL \library1|Mux0~687_combout\ : std_logic;
SIGNAL \library1|Mux0~690_combout\ : std_logic;
SIGNAL \library1|Mux0~688_combout\ : std_logic;
SIGNAL \library1|Mux0~689_combout\ : std_logic;
SIGNAL \library1|Mux0~691_combout\ : std_logic;
SIGNAL \library1|Mux0~692_combout\ : std_logic;
SIGNAL \library1|Mux0~693_combout\ : std_logic;
SIGNAL \library1|Mux0~682_combout\ : std_logic;
SIGNAL \library1|Mux0~679_combout\ : std_logic;
SIGNAL \library1|Mux0~680_combout\ : std_logic;
SIGNAL \library1|Mux0~681_combout\ : std_logic;
SIGNAL \library1|Mux0~677_combout\ : std_logic;
SIGNAL \library1|Mux0~674_combout\ : std_logic;
SIGNAL \library1|Mux0~675_combout\ : std_logic;
SIGNAL \library1|Mux0~676_combout\ : std_logic;
SIGNAL \library1|Mux0~678_combout\ : std_logic;
SIGNAL \library1|Mux0~683_combout\ : std_logic;
SIGNAL \library1|Mux0~663_combout\ : std_logic;
SIGNAL \library1|Mux0~664_combout\ : std_logic;
SIGNAL \library1|Mux0~665_combout\ : std_logic;
SIGNAL \library1|Mux0~1165_combout\ : std_logic;
SIGNAL \library1|Mux0~1166_combout\ : std_logic;
SIGNAL \library1|Mux0~666_combout\ : std_logic;
SIGNAL \library1|Mux0~667_combout\ : std_logic;
SIGNAL \library1|Mux0~668_combout\ : std_logic;
SIGNAL \library1|Mux0~669_combout\ : std_logic;
SIGNAL \library1|Mux0~670_combout\ : std_logic;
SIGNAL \library1|Mux0~671_combout\ : std_logic;
SIGNAL \library1|Mux0~673_combout\ : std_logic;
SIGNAL \library1|Mux0~684_combout\ : std_logic;
SIGNAL \library1|Mux0~694_combout\ : std_logic;
SIGNAL \library1|Mux0~695_combout\ : std_logic;
SIGNAL \library1|Mux0~696_combout\ : std_logic;
SIGNAL \library1|Mux0~723_combout\ : std_logic;
SIGNAL \library1|Mux0~1036_combout\ : std_logic;
SIGNAL \library1|Mux0~1141_combout\ : std_logic;
SIGNAL \library1|Mux0~1142_combout\ : std_logic;
SIGNAL \library1|Mux0~1037_combout\ : std_logic;
SIGNAL \library1|Mux0~1038_combout\ : std_logic;
SIGNAL \library1|Mux0~1139_combout\ : std_logic;
SIGNAL \library1|Mux0~1140_combout\ : std_logic;
SIGNAL \library1|Mux0~1070_combout\ : std_logic;
SIGNAL \library1|Mux0~1071_combout\ : std_logic;
SIGNAL \library1|Mux0~1073_combout\ : std_logic;
SIGNAL \library1|Mux0~1072_combout\ : std_logic;
SIGNAL \library1|Mux0~1074_combout\ : std_logic;
SIGNAL \library1|Mux0~1065_combout\ : std_logic;
SIGNAL \library1|Mux0~1061_combout\ : std_logic;
SIGNAL \library1|Mux0~1062_combout\ : std_logic;
SIGNAL \library1|Mux0~1063_combout\ : std_logic;
SIGNAL \library1|Mux0~1064_combout\ : std_logic;
SIGNAL \library1|Mux0~1066_combout\ : std_logic;
SIGNAL \library1|Mux0~1067_combout\ : std_logic;
SIGNAL \library1|Mux0~1068_combout\ : std_logic;
SIGNAL \library1|Mux0~1137_combout\ : std_logic;
SIGNAL \library1|Mux0~1138_combout\ : std_logic;
SIGNAL \library1|Mux0~1069_combout\ : std_logic;
SIGNAL \library1|Mux0~1075_combout\ : std_logic;
SIGNAL \library1|Mux0~1094_combout\ : std_logic;
SIGNAL \library1|Mux0~1095_combout\ : std_logic;
SIGNAL \library1|Mux0~1101_combout\ : std_logic;
SIGNAL \library1|Mux0~419_combout\ : std_logic;
SIGNAL \library1|Mux0~1102_combout\ : std_logic;
SIGNAL \library1|Mux0~1098_combout\ : std_logic;
SIGNAL \library1|Mux0~1099_combout\ : std_logic;
SIGNAL \library1|Mux0~1096_combout\ : std_logic;
SIGNAL \library1|Mux0~1097_combout\ : std_logic;
SIGNAL \library1|Mux0~1100_combout\ : std_logic;
SIGNAL \library1|Mux0~1103_combout\ : std_logic;
SIGNAL \library1|Mux0~1092_combout\ : std_logic;
SIGNAL \library1|Mux0~1090_combout\ : std_logic;
SIGNAL \library1|Mux0~1089_combout\ : std_logic;
SIGNAL \library1|Mux0~1091_combout\ : std_logic;
SIGNAL \library1|Mux0~1136_combout\ : std_logic;
SIGNAL \library1|Mux0~1087_combout\ : std_logic;
SIGNAL \library1|Mux0~1082_combout\ : std_logic;
SIGNAL \library1|Mux0~1083_combout\ : std_logic;
SIGNAL \library1|Mux0~1084_combout\ : std_logic;
SIGNAL \library1|Mux0~1085_combout\ : std_logic;
SIGNAL \library1|Mux0~1086_combout\ : std_logic;
SIGNAL \library1|Mux0~1088_combout\ : std_logic;
SIGNAL \library1|Mux0~1093_combout\ : std_logic;
SIGNAL \library1|Mux0~1076_combout\ : std_logic;
SIGNAL \library1|Mux0~1080_combout\ : std_logic;
SIGNAL \library1|Mux0~1077_combout\ : std_logic;
SIGNAL \library1|Mux0~1078_combout\ : std_logic;
SIGNAL \library1|Mux0~1079_combout\ : std_logic;
SIGNAL \library1|Mux0~1081_combout\ : std_logic;
SIGNAL \library1|Mux0~1104_combout\ : std_logic;
SIGNAL \library1|Mux0~1105_combout\ : std_logic;
SIGNAL \library1|Mux0~860_combout\ : std_logic;
SIGNAL \library1|Mux0~1059_combout\ : std_logic;
SIGNAL \library1|Mux0~1135_combout\ : std_logic;
SIGNAL \library1|Mux0~1039_combout\ : std_logic;
SIGNAL \library1|Mux0~1040_combout\ : std_logic;
SIGNAL \library1|Mux0~1041_combout\ : std_logic;
SIGNAL \library1|Mux0~1042_combout\ : std_logic;
SIGNAL \library1|Mux0~306_combout\ : std_logic;
SIGNAL \library1|Mux0~1043_combout\ : std_logic;
SIGNAL \library1|Mux0~1044_combout\ : std_logic;
SIGNAL \library1|Mux0~1045_combout\ : std_logic;
SIGNAL \library1|Mux0~1055_combout\ : std_logic;
SIGNAL \library1|Mux0~1056_combout\ : std_logic;
SIGNAL \library1|Mux0~1046_combout\ : std_logic;
SIGNAL \library1|Mux0~1012_combout\ : std_logic;
SIGNAL \library1|Mux0~1047_combout\ : std_logic;
SIGNAL \library1|Mux0~1052_combout\ : std_logic;
SIGNAL \library1|Mux0~1053_combout\ : std_logic;
SIGNAL \library1|Mux0~1048_combout\ : std_logic;
SIGNAL \library1|Mux0~1049_combout\ : std_logic;
SIGNAL \library1|Mux0~1050_combout\ : std_logic;
SIGNAL \library1|Mux0~1051_combout\ : std_logic;
SIGNAL \library1|Mux0~1054_combout\ : std_logic;
SIGNAL \library1|Mux0~1057_combout\ : std_logic;
SIGNAL \library1|Mux0~1058_combout\ : std_logic;
SIGNAL \library1|Mux0~1060_combout\ : std_logic;
SIGNAL \library1|Mux0~1106_combout\ : std_logic;
SIGNAL \library1|Mux0~1107_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux326~2_combout\ : std_logic;
SIGNAL \Mux326~3_combout\ : std_logic;
SIGNAL \Mux326~4_combout\ : std_logic;
SIGNAL \Mux326~5_combout\ : std_logic;
SIGNAL \Mux326~6_combout\ : std_logic;
SIGNAL \Mux326~15_combout\ : std_logic;
SIGNAL \Mux326~16_combout\ : std_logic;
SIGNAL \Mux326~17_combout\ : std_logic;
SIGNAL \Mux326~18_combout\ : std_logic;
SIGNAL \Mux326~11_combout\ : std_logic;
SIGNAL \Mux326~12_combout\ : std_logic;
SIGNAL \Mux326~13_combout\ : std_logic;
SIGNAL \Mux254~0_combout\ : std_logic;
SIGNAL \Mux326~7_combout\ : std_logic;
SIGNAL \Mux326~9_combout\ : std_logic;
SIGNAL \Mux326~8_combout\ : std_logic;
SIGNAL \Mux326~10_combout\ : std_logic;
SIGNAL \Mux326~14_combout\ : std_logic;
SIGNAL \Mux326~19_combout\ : std_logic;
SIGNAL \Mux326~20_combout\ : std_logic;
SIGNAL \library1|Mux0~961_combout\ : std_logic;
SIGNAL \library1|Mux0~959_combout\ : std_logic;
SIGNAL \library1|Mux0~957_combout\ : std_logic;
SIGNAL \library1|Mux0~1133_combout\ : std_logic;
SIGNAL \library1|Mux0~958_combout\ : std_logic;
SIGNAL \library1|Mux0~960_combout\ : std_logic;
SIGNAL \library1|Mux0~962_combout\ : std_logic;
SIGNAL \library1|Mux0~907_combout\ : std_logic;
SIGNAL \library1|Mux0~905_combout\ : std_logic;
SIGNAL \library1|Mux0~904_combout\ : std_logic;
SIGNAL \library1|Mux0~906_combout\ : std_logic;
SIGNAL \library1|Mux0~908_combout\ : std_logic;
SIGNAL \library1|Mux0~500_combout\ : std_logic;
SIGNAL \library1|Mux0~914_combout\ : std_logic;
SIGNAL \library1|Mux0~915_combout\ : std_logic;
SIGNAL \library1|Mux0~916_combout\ : std_logic;
SIGNAL \library1|Mux0~917_combout\ : std_logic;
SIGNAL \library1|Mux0~911_combout\ : std_logic;
SIGNAL \library1|Mux0~912_combout\ : std_logic;
SIGNAL \library1|Mux0~909_combout\ : std_logic;
SIGNAL \library1|Mux0~1131_combout\ : std_logic;
SIGNAL \library1|Mux0~910_combout\ : std_logic;
SIGNAL \library1|Mux0~913_combout\ : std_logic;
SIGNAL \library1|Mux0~918_combout\ : std_logic;
SIGNAL \library1|Mux0~922_combout\ : std_logic;
SIGNAL \library1|Mux0~1132_combout\ : std_logic;
SIGNAL \library1|Mux0~923_combout\ : std_logic;
SIGNAL \library1|Mux0~919_combout\ : std_logic;
SIGNAL \library1|Mux0~920_combout\ : std_logic;
SIGNAL \library1|Mux0~921_combout\ : std_logic;
SIGNAL \library1|Mux0~924_combout\ : std_logic;
SIGNAL \library1|Mux0~925_combout\ : std_logic;
SIGNAL \library1|Mux0~930_combout\ : std_logic;
SIGNAL \library1|Mux0~931_combout\ : std_logic;
SIGNAL \library1|Mux0~926_combout\ : std_logic;
SIGNAL \library1|Mux0~927_combout\ : std_logic;
SIGNAL \library1|Mux0~928_combout\ : std_logic;
SIGNAL \library1|Mux0~929_combout\ : std_logic;
SIGNAL \library1|Mux0~932_combout\ : std_logic;
SIGNAL \library1|Mux0~933_combout\ : std_logic;
SIGNAL \library1|Mux0~934_combout\ : std_logic;
SIGNAL \library1|Mux0~935_combout\ : std_logic;
SIGNAL \library1|Mux0~936_combout\ : std_logic;
SIGNAL \library1|Mux0~1147_combout\ : std_logic;
SIGNAL \library1|Mux0~1148_combout\ : std_logic;
SIGNAL \library1|Mux0~937_combout\ : std_logic;
SIGNAL \library1|Mux0~151_combout\ : std_logic;
SIGNAL \library1|Mux0~953_combout\ : std_logic;
SIGNAL \library1|Mux0~949_combout\ : std_logic;
SIGNAL \library1|Mux0~950_combout\ : std_logic;
SIGNAL \library1|Mux0~951_combout\ : std_logic;
SIGNAL \library1|Mux0~952_combout\ : std_logic;
SIGNAL \library1|Mux0~954_combout\ : std_logic;
SIGNAL \library1|Mux0~938_combout\ : std_logic;
SIGNAL \library1|Mux0~939_combout\ : std_logic;
SIGNAL \library1|Mux0~941_combout\ : std_logic;
SIGNAL \library1|Mux0~940_combout\ : std_logic;
SIGNAL \library1|Mux0~942_combout\ : std_logic;
SIGNAL \library1|Mux0~943_combout\ : std_logic;
SIGNAL \library1|Mux0~944_combout\ : std_logic;
SIGNAL \library1|Mux0~945_combout\ : std_logic;
SIGNAL \library1|Mux0~946_combout\ : std_logic;
SIGNAL \library1|Mux0~947_combout\ : std_logic;
SIGNAL \library1|Mux0~948_combout\ : std_logic;
SIGNAL \library1|Mux0~955_combout\ : std_logic;
SIGNAL \library1|Mux0~956_combout\ : std_logic;
SIGNAL \library1|Mux0~963_combout\ : std_logic;
SIGNAL \library1|Mux0~1028_combout\ : std_logic;
SIGNAL \library1|Mux0~1029_combout\ : std_logic;
SIGNAL \library1|Mux0~1026_combout\ : std_logic;
SIGNAL \library1|Mux0~1027_combout\ : std_logic;
SIGNAL \library1|Mux0~1030_combout\ : std_logic;
SIGNAL \library1|Mux0~1031_combout\ : std_logic;
SIGNAL \library1|Mux0~1032_combout\ : std_logic;
SIGNAL \library1|Mux0~1024_combout\ : std_logic;
SIGNAL \library1|Mux0~1017_combout\ : std_logic;
SIGNAL \library1|Mux0~1018_combout\ : std_logic;
SIGNAL \library1|Mux0~1019_combout\ : std_logic;
SIGNAL \library1|Mux0~1020_combout\ : std_logic;
SIGNAL \library1|Mux0~1021_combout\ : std_logic;
SIGNAL \library1|Mux0~1022_combout\ : std_logic;
SIGNAL \library1|Mux0~1023_combout\ : std_logic;
SIGNAL \library1|Mux0~1134_combout\ : std_logic;
SIGNAL \library1|Mux0~999_combout\ : std_logic;
SIGNAL \library1|Mux0~1000_combout\ : std_logic;
SIGNAL \library1|Mux0~996_combout\ : std_logic;
SIGNAL \library1|Mux0~995_combout\ : std_logic;
SIGNAL \library1|Mux0~997_combout\ : std_logic;
SIGNAL \library1|Mux0~998_combout\ : std_logic;
SIGNAL \library1|Mux0~1001_combout\ : std_logic;
SIGNAL \library1|Mux0~1002_combout\ : std_logic;
SIGNAL \library1|Mux0~1003_combout\ : std_logic;
SIGNAL \library1|Mux0~1004_combout\ : std_logic;
SIGNAL \library1|Mux0~1005_combout\ : std_logic;
SIGNAL \library1|Mux0~1006_combout\ : std_logic;
SIGNAL \library1|Mux0~1007_combout\ : std_logic;
SIGNAL \library1|Mux0~1143_combout\ : std_logic;
SIGNAL \library1|Mux0~1144_combout\ : std_logic;
SIGNAL \library1|Mux0~1008_combout\ : std_logic;
SIGNAL \library1|Mux0~400_combout\ : std_logic;
SIGNAL \library1|Mux0~1009_combout\ : std_logic;
SIGNAL \library1|Mux0~1010_combout\ : std_logic;
SIGNAL \library1|Mux0~1011_combout\ : std_logic;
SIGNAL \library1|Mux0~1013_combout\ : std_logic;
SIGNAL \library1|Mux0~1014_combout\ : std_logic;
SIGNAL \library1|Mux0~1015_combout\ : std_logic;
SIGNAL \library1|Mux0~1016_combout\ : std_logic;
SIGNAL \library1|Mux0~1025_combout\ : std_logic;
SIGNAL \library1|Mux0~1033_combout\ : std_logic;
SIGNAL \library1|Mux0~965_combout\ : std_logic;
SIGNAL \library1|Mux0~964_combout\ : std_logic;
SIGNAL \library1|Mux0~966_combout\ : std_logic;
SIGNAL \library1|Mux0~967_combout\ : std_logic;
SIGNAL \library1|Mux0~968_combout\ : std_logic;
SIGNAL \library1|Mux0~969_combout\ : std_logic;
SIGNAL \library1|Mux0~991_combout\ : std_logic;
SIGNAL \library1|Mux0~990_combout\ : std_logic;
SIGNAL \library1|Mux0~1145_combout\ : std_logic;
SIGNAL \library1|Mux0~1146_combout\ : std_logic;
SIGNAL \library1|Mux0~979_combout\ : std_logic;
SIGNAL \library1|Mux0~978_combout\ : std_logic;
SIGNAL \library1|Mux0~980_combout\ : std_logic;
SIGNAL \library1|Mux0~981_combout\ : std_logic;
SIGNAL \library1|Mux0~982_combout\ : std_logic;
SIGNAL \library1|Mux0~983_combout\ : std_logic;
SIGNAL \library1|Mux0~984_combout\ : std_logic;
SIGNAL \library1|Mux0~986_combout\ : std_logic;
SIGNAL \library1|Mux0~985_combout\ : std_logic;
SIGNAL \library1|Mux0~987_combout\ : std_logic;
SIGNAL \library1|Mux0~988_combout\ : std_logic;
SIGNAL \library1|Mux0~989_combout\ : std_logic;
SIGNAL \library1|Mux0~970_combout\ : std_logic;
SIGNAL \library1|Mux0~975_combout\ : std_logic;
SIGNAL \library1|Mux0~976_combout\ : std_logic;
SIGNAL \library1|Mux0~973_combout\ : std_logic;
SIGNAL \library1|Mux0~971_combout\ : std_logic;
SIGNAL \library1|Mux0~972_combout\ : std_logic;
SIGNAL \library1|Mux0~974_combout\ : std_logic;
SIGNAL \library1|Mux0~977_combout\ : std_logic;
SIGNAL \library1|Mux0~992_combout\ : std_logic;
SIGNAL \library1|Mux0~993_combout\ : std_logic;
SIGNAL \library1|Mux0~994_combout\ : std_logic;
SIGNAL \library1|Mux0~1034_combout\ : std_logic;
SIGNAL \library1|Mux0~803_combout\ : std_logic;
SIGNAL \library1|Mux0~804_combout\ : std_logic;
SIGNAL \library1|Mux0~800_combout\ : std_logic;
SIGNAL \library1|Mux0~801_combout\ : std_logic;
SIGNAL \library1|Mux0~802_combout\ : std_logic;
SIGNAL \library1|Mux0~1126_combout\ : std_logic;
SIGNAL \library1|Mux0~781_combout\ : std_logic;
SIGNAL \library1|Mux0~777_combout\ : std_logic;
SIGNAL \library1|Mux0~778_combout\ : std_logic;
SIGNAL \library1|Mux0~779_combout\ : std_logic;
SIGNAL \library1|Mux0~780_combout\ : std_logic;
SIGNAL \library1|Mux0~782_combout\ : std_logic;
SIGNAL \library1|Mux0~793_combout\ : std_logic;
SIGNAL \library1|Mux0~794_combout\ : std_logic;
SIGNAL \library1|Mux0~795_combout\ : std_logic;
SIGNAL \library1|Mux0~796_combout\ : std_logic;
SIGNAL \library1|Mux0~791_combout\ : std_logic;
SIGNAL \library1|Mux0~790_combout\ : std_logic;
SIGNAL \library1|Mux0~792_combout\ : std_logic;
SIGNAL \library1|Mux0~797_combout\ : std_logic;
SIGNAL \library1|Mux0~798_combout\ : std_logic;
SIGNAL \library1|Mux0~783_combout\ : std_logic;
SIGNAL \library1|Mux0~785_combout\ : std_logic;
SIGNAL \library1|Mux0~784_combout\ : std_logic;
SIGNAL \library1|Mux0~786_combout\ : std_logic;
SIGNAL \library1|Mux0~787_combout\ : std_logic;
SIGNAL \library1|Mux0~788_combout\ : std_logic;
SIGNAL \library1|Mux0~789_combout\ : std_logic;
SIGNAL \library1|Mux0~799_combout\ : std_logic;
SIGNAL \library1|Mux0~805_combout\ : std_logic;
SIGNAL \library1|Mux0~832_combout\ : std_logic;
SIGNAL \library1|Mux0~835_combout\ : std_logic;
SIGNAL \library1|Mux0~833_combout\ : std_logic;
SIGNAL \library1|Mux0~834_combout\ : std_logic;
SIGNAL \library1|Mux0~836_combout\ : std_logic;
SIGNAL \library1|Mux0~847_combout\ : std_logic;
SIGNAL \library1|Mux0~848_combout\ : std_logic;
SIGNAL \library1|Mux0~849_combout\ : std_logic;
SIGNAL \library1|Mux0~844_combout\ : std_logic;
SIGNAL \library1|Mux0~845_combout\ : std_logic;
SIGNAL \library1|Mux0~1128_combout\ : std_logic;
SIGNAL \library1|Mux0~842_combout\ : std_logic;
SIGNAL \library1|Mux0~838_combout\ : std_logic;
SIGNAL \library1|Mux0~839_combout\ : std_logic;
SIGNAL \library1|Mux0~840_combout\ : std_logic;
SIGNAL \library1|Mux0~841_combout\ : std_logic;
SIGNAL \library1|Mux0~837_combout\ : std_logic;
SIGNAL \library1|Mux0~1127_combout\ : std_logic;
SIGNAL \library1|Mux0~843_combout\ : std_logic;
SIGNAL \library1|Mux0~846_combout\ : std_logic;
SIGNAL \library1|Mux0~850_combout\ : std_logic;
SIGNAL \library1|Mux0~814_combout\ : std_logic;
SIGNAL \library1|Mux0~815_combout\ : std_logic;
SIGNAL \library1|Mux0~818_combout\ : std_logic;
SIGNAL \library1|Mux0~816_combout\ : std_logic;
SIGNAL \library1|Mux0~817_combout\ : std_logic;
SIGNAL \library1|Mux0~819_combout\ : std_logic;
SIGNAL \library1|Mux0~820_combout\ : std_logic;
SIGNAL \library1|Mux0~821_combout\ : std_logic;
SIGNAL \library1|Mux0~822_combout\ : std_logic;
SIGNAL \library1|Mux0~829_combout\ : std_logic;
SIGNAL \library1|Mux0~823_combout\ : std_logic;
SIGNAL \library1|Mux0~824_combout\ : std_logic;
SIGNAL \library1|Mux0~825_combout\ : std_logic;
SIGNAL \library1|Mux0~826_combout\ : std_logic;
SIGNAL \library1|Mux0~827_combout\ : std_logic;
SIGNAL \library1|Mux0~828_combout\ : std_logic;
SIGNAL \library1|Mux0~830_combout\ : std_logic;
SIGNAL \library1|Mux0~810_combout\ : std_logic;
SIGNAL \library1|Mux0~811_combout\ : std_logic;
SIGNAL \library1|Mux0~812_combout\ : std_logic;
SIGNAL \library1|Mux0~809_combout\ : std_logic;
SIGNAL \library1|Mux0~806_combout\ : std_logic;
SIGNAL \library1|Mux0~807_combout\ : std_logic;
SIGNAL \library1|Mux0~808_combout\ : std_logic;
SIGNAL \library1|Mux0~813_combout\ : std_logic;
SIGNAL \library1|Mux0~831_combout\ : std_logic;
SIGNAL \library1|Mux0~851_combout\ : std_logic;
SIGNAL \library1|Mux0~852_combout\ : std_logic;
SIGNAL \library1|Mux0~853_combout\ : std_logic;
SIGNAL \library1|Mux0~854_combout\ : std_logic;
SIGNAL \library1|Mux0~857_combout\ : std_logic;
SIGNAL \library1|Mux0~855_combout\ : std_logic;
SIGNAL \library1|Mux0~856_combout\ : std_logic;
SIGNAL \library1|Mux0~858_combout\ : std_logic;
SIGNAL \library1|Mux0~900_combout\ : std_logic;
SIGNAL \library1|Mux0~901_combout\ : std_logic;
SIGNAL \library1|Mux0~898_combout\ : std_logic;
SIGNAL \library1|Mux0~896_combout\ : std_logic;
SIGNAL \library1|Mux0~897_combout\ : std_logic;
SIGNAL \library1|Mux0~899_combout\ : std_logic;
SIGNAL \library1|Mux0~1130_combout\ : std_logic;
SIGNAL \library1|Mux0~872_combout\ : std_logic;
SIGNAL \library1|Mux0~870_combout\ : std_logic;
SIGNAL \library1|Mux0~871_combout\ : std_logic;
SIGNAL \library1|Mux0~873_combout\ : std_logic;
SIGNAL \library1|Mux0~892_combout\ : std_logic;
SIGNAL \library1|Mux0~890_combout\ : std_logic;
SIGNAL \library1|Mux0~889_combout\ : std_logic;
SIGNAL \library1|Mux0~891_combout\ : std_logic;
SIGNAL \library1|Mux0~893_combout\ : std_logic;
SIGNAL \library1|Mux0~886_combout\ : std_logic;
SIGNAL \library1|Mux0~880_combout\ : std_logic;
SIGNAL \library1|Mux0~881_combout\ : std_logic;
SIGNAL \library1|Mux0~882_combout\ : std_logic;
SIGNAL \library1|Mux0~883_combout\ : std_logic;
SIGNAL \library1|Mux0~884_combout\ : std_logic;
SIGNAL \library1|Mux0~885_combout\ : std_logic;
SIGNAL \library1|Mux0~887_combout\ : std_logic;
SIGNAL \library1|Mux0~878_combout\ : std_logic;
SIGNAL \library1|Mux0~876_combout\ : std_logic;
SIGNAL \library1|Mux0~875_combout\ : std_logic;
SIGNAL \library1|Mux0~877_combout\ : std_logic;
SIGNAL \library1|Mux0~874_combout\ : std_logic;
SIGNAL \library1|Mux0~879_combout\ : std_logic;
SIGNAL \library1|Mux0~888_combout\ : std_logic;
SIGNAL \library1|Mux0~894_combout\ : std_logic;
SIGNAL \library1|Mux0~859_combout\ : std_logic;
SIGNAL \library1|Mux0~1149_combout\ : std_logic;
SIGNAL \library1|Mux0~861_combout\ : std_logic;
SIGNAL \library1|Mux0~862_combout\ : std_logic;
SIGNAL \library1|Mux0~863_combout\ : std_logic;
SIGNAL \library1|Mux0~1129_combout\ : std_logic;
SIGNAL \library1|Mux0~866_combout\ : std_logic;
SIGNAL \library1|Mux0~867_combout\ : std_logic;
SIGNAL \library1|Mux0~864_combout\ : std_logic;
SIGNAL \library1|Mux0~865_combout\ : std_logic;
SIGNAL \library1|Mux0~868_combout\ : std_logic;
SIGNAL \library1|Mux0~869_combout\ : std_logic;
SIGNAL \library1|Mux0~1150_combout\ : std_logic;
SIGNAL \library1|Mux0~895_combout\ : std_logic;
SIGNAL \library1|Mux0~902_combout\ : std_logic;
SIGNAL \library1|Mux0~1155_combout\ : std_logic;
SIGNAL \library1|Mux0~1156_combout\ : std_logic;
SIGNAL \library1|Mux0~1153_combout\ : std_logic;
SIGNAL \library1|Mux0~1154_combout\ : std_logic;
SIGNAL \library1|Mux0~770_combout\ : std_logic;
SIGNAL \library1|Mux0~769_combout\ : std_logic;
SIGNAL \library1|Mux0~771_combout\ : std_logic;
SIGNAL \library1|Mux0~772_combout\ : std_logic;
SIGNAL \library1|Mux0~773_combout\ : std_logic;
SIGNAL \library1|Mux0~510_combout\ : std_logic;
SIGNAL \library1|Mux0~1151_combout\ : std_logic;
SIGNAL \library1|Mux0~1152_combout\ : std_logic;
SIGNAL \library1|Mux0~774_combout\ : std_logic;
SIGNAL \library1|Mux0~775_combout\ : std_logic;
SIGNAL \library1|Mux0~1161_combout\ : std_logic;
SIGNAL \library1|Mux0~1162_combout\ : std_logic;
SIGNAL \library1|Mux0~1159_combout\ : std_logic;
SIGNAL \library1|Mux0~1160_combout\ : std_logic;
SIGNAL \library1|Mux0~749_combout\ : std_logic;
SIGNAL \library1|Mux0~747_combout\ : std_logic;
SIGNAL \library1|Mux0~748_combout\ : std_logic;
SIGNAL \library1|Mux0~750_combout\ : std_logic;
SIGNAL \library1|Mux0~743_combout\ : std_logic;
SIGNAL \library1|Mux0~742_combout\ : std_logic;
SIGNAL \library1|Mux0~744_combout\ : std_logic;
SIGNAL \library1|Mux0~745_combout\ : std_logic;
SIGNAL \library1|Mux0~746_combout\ : std_logic;
SIGNAL \library1|Mux0~751_combout\ : std_logic;
SIGNAL \library1|Mux0~752_combout\ : std_logic;
SIGNAL \library1|Mux0~765_combout\ : std_logic;
SIGNAL \library1|Mux0~766_combout\ : std_logic;
SIGNAL \library1|Mux0~753_combout\ : std_logic;
SIGNAL \library1|Mux0~754_combout\ : std_logic;
SIGNAL \library1|Mux0~756_combout\ : std_logic;
SIGNAL \library1|Mux0~757_combout\ : std_logic;
SIGNAL \library1|Mux0~755_combout\ : std_logic;
SIGNAL \library1|Mux0~1157_combout\ : std_logic;
SIGNAL \library1|Mux0~758_combout\ : std_logic;
SIGNAL \library1|Mux0~1158_combout\ : std_logic;
SIGNAL \library1|Mux0~761_combout\ : std_logic;
SIGNAL \library1|Mux0~762_combout\ : std_logic;
SIGNAL \library1|Mux0~759_combout\ : std_logic;
SIGNAL \library1|Mux0~760_combout\ : std_logic;
SIGNAL \library1|Mux0~763_combout\ : std_logic;
SIGNAL \library1|Mux0~764_combout\ : std_logic;
SIGNAL \library1|Mux0~767_combout\ : std_logic;
SIGNAL \library1|Mux0~768_combout\ : std_logic;
SIGNAL \library1|Mux0~739_combout\ : std_logic;
SIGNAL \library1|Mux0~740_combout\ : std_logic;
SIGNAL \library1|Mux0~724_combout\ : std_logic;
SIGNAL \library1|Mux0~726_combout\ : std_logic;
SIGNAL \library1|Mux0~725_combout\ : std_logic;
SIGNAL \library1|Mux0~727_combout\ : std_logic;
SIGNAL \library1|Mux0~731_combout\ : std_logic;
SIGNAL \library1|Mux0~728_combout\ : std_logic;
SIGNAL \library1|Mux0~729_combout\ : std_logic;
SIGNAL \library1|Mux0~730_combout\ : std_logic;
SIGNAL \library1|Mux0~732_combout\ : std_logic;
SIGNAL \library1|Mux0~733_combout\ : std_logic;
SIGNAL \library1|Mux0~736_combout\ : std_logic;
SIGNAL \library1|Mux0~734_combout\ : std_logic;
SIGNAL \library1|Mux0~735_combout\ : std_logic;
SIGNAL \library1|Mux0~737_combout\ : std_logic;
SIGNAL \library1|Mux0~738_combout\ : std_logic;
SIGNAL \library1|Mux0~741_combout\ : std_logic;
SIGNAL \library1|Mux0~776_combout\ : std_logic;
SIGNAL \library1|Mux0~903_combout\ : std_logic;
SIGNAL \library1|Mux0~1035_combout\ : std_logic;
SIGNAL \library1|Mux0~1108_combout\ : std_logic;
SIGNAL \library1|Mux0~554_combout\ : std_logic;
SIGNAL \library1|Mux0~555_combout\ : std_logic;
SIGNAL \library1|Mux0~255_combout\ : std_logic;
SIGNAL \library1|Mux0~544_combout\ : std_logic;
SIGNAL \library1|Mux0~543_combout\ : std_logic;
SIGNAL \library1|Mux0~545_combout\ : std_logic;
SIGNAL \library1|Mux0~550_combout\ : std_logic;
SIGNAL \library1|Mux0~551_combout\ : std_logic;
SIGNAL \library1|Mux0~548_combout\ : std_logic;
SIGNAL \library1|Mux0~549_combout\ : std_logic;
SIGNAL \library1|Mux0~546_combout\ : std_logic;
SIGNAL \library1|Mux0~547_combout\ : std_logic;
SIGNAL \library1|Mux0~552_combout\ : std_logic;
SIGNAL \library1|Mux0~553_combout\ : std_logic;
SIGNAL \library1|Mux0~556_combout\ : std_logic;
SIGNAL \library1|Mux0~491_combout\ : std_logic;
SIGNAL \library1|Mux0~492_combout\ : std_logic;
SIGNAL \library1|Mux0~1116_combout\ : std_logic;
SIGNAL \library1|Mux0~494_combout\ : std_logic;
SIGNAL \library1|Mux0~493_combout\ : std_logic;
SIGNAL \library1|Mux0~495_combout\ : std_logic;
SIGNAL \library1|Mux0~496_combout\ : std_logic;
SIGNAL \library1|Mux0~497_combout\ : std_logic;
SIGNAL \library1|Mux0~1179_combout\ : std_logic;
SIGNAL \library1|Mux0~1180_combout\ : std_logic;
SIGNAL \library1|Mux0~498_combout\ : std_logic;
SIGNAL \library1|Mux0~499_combout\ : std_logic;
SIGNAL \library1|Mux0~502_combout\ : std_logic;
SIGNAL \library1|Mux0~501_combout\ : std_logic;
SIGNAL \library1|Mux0~503_combout\ : std_logic;
SIGNAL \library1|Mux0~505_combout\ : std_logic;
SIGNAL \library1|Mux0~504_combout\ : std_logic;
SIGNAL \library1|Mux0~506_combout\ : std_logic;
SIGNAL \library1|Mux0~507_combout\ : std_logic;
SIGNAL \library1|Mux0~508_combout\ : std_logic;
SIGNAL \library1|Mux0~1177_combout\ : std_logic;
SIGNAL \library1|Mux0~1178_combout\ : std_logic;
SIGNAL \library1|Mux0~509_combout\ : std_logic;
SIGNAL \library1|Mux0~512_combout\ : std_logic;
SIGNAL \library1|Mux0~513_combout\ : std_logic;
SIGNAL \library1|Mux0~514_combout\ : std_logic;
SIGNAL \library1|Mux0~515_combout\ : std_logic;
SIGNAL \library1|Mux0~516_combout\ : std_logic;
SIGNAL \library1|Mux0~517_combout\ : std_logic;
SIGNAL \library1|Mux0~518_combout\ : std_logic;
SIGNAL \library1|Mux0~519_combout\ : std_logic;
SIGNAL \library1|Mux0~520_combout\ : std_logic;
SIGNAL \library1|Mux0~521_combout\ : std_logic;
SIGNAL \library1|Mux0~1117_combout\ : std_logic;
SIGNAL \library1|Mux0~537_combout\ : std_logic;
SIGNAL \library1|Mux0~1120_combout\ : std_logic;
SIGNAL \library1|Mux0~538_combout\ : std_logic;
SIGNAL \library1|Mux0~539_combout\ : std_logic;
SIGNAL \library1|Mux0~1118_combout\ : std_logic;
SIGNAL \library1|Mux0~522_combout\ : std_logic;
SIGNAL \library1|Mux0~523_combout\ : std_logic;
SIGNAL \library1|Mux0~534_combout\ : std_logic;
SIGNAL \library1|Mux0~1175_combout\ : std_logic;
SIGNAL \library1|Mux0~1176_combout\ : std_logic;
SIGNAL \library1|Mux0~535_combout\ : std_logic;
SIGNAL \library1|Mux0~524_combout\ : std_logic;
SIGNAL \library1|Mux0~532_combout\ : std_logic;
SIGNAL \library1|Mux0~529_combout\ : std_logic;
SIGNAL \library1|Mux0~1119_combout\ : std_logic;
SIGNAL \library1|Mux0~530_combout\ : std_logic;
SIGNAL \library1|Mux0~525_combout\ : std_logic;
SIGNAL \library1|Mux0~526_combout\ : std_logic;
SIGNAL \library1|Mux0~527_combout\ : std_logic;
SIGNAL \library1|Mux0~528_combout\ : std_logic;
SIGNAL \library1|Mux0~531_combout\ : std_logic;
SIGNAL \library1|Mux0~533_combout\ : std_logic;
SIGNAL \library1|Mux0~536_combout\ : std_logic;
SIGNAL \library1|Mux0~540_combout\ : std_logic;
SIGNAL \library1|Mux0~541_combout\ : std_logic;
SIGNAL \library1|Mux0~542_combout\ : std_logic;
SIGNAL \library1|Mux0~557_combout\ : std_logic;
SIGNAL \library1|Mux0~208_combout\ : std_logic;
SIGNAL \library1|Mux0~96_combout\ : std_logic;
SIGNAL \library1|Mux0~205_combout\ : std_logic;
SIGNAL \library1|Mux0~203_combout\ : std_logic;
SIGNAL \library1|Mux0~204_combout\ : std_logic;
SIGNAL \library1|Mux0~206_combout\ : std_logic;
SIGNAL \library1|Mux0~207_combout\ : std_logic;
SIGNAL \library1|Mux0~209_combout\ : std_logic;
SIGNAL \library1|Mux0~210_combout\ : std_logic;
SIGNAL \library1|Mux0~68_combout\ : std_logic;
SIGNAL \library1|Mux0~69_combout\ : std_logic;
SIGNAL \library1|Mux0~70_combout\ : std_logic;
SIGNAL \library1|Mux0~71_combout\ : std_logic;
SIGNAL \library1|Mux0~1211_combout\ : std_logic;
SIGNAL \library1|Mux0~1212_combout\ : std_logic;
SIGNAL \library1|Mux0~73_combout\ : std_logic;
SIGNAL \library1|Mux0~80_combout\ : std_logic;
SIGNAL \library1|Mux0~81_combout\ : std_logic;
SIGNAL \library1|Mux0~82_combout\ : std_logic;
SIGNAL \library1|Mux0~83_combout\ : std_logic;
SIGNAL \library1|Mux0~1207_combout\ : std_logic;
SIGNAL \library1|Mux0~1208_combout\ : std_logic;
SIGNAL \library1|Mux0~76_combout\ : std_logic;
SIGNAL \library1|Mux0~74_combout\ : std_logic;
SIGNAL \library1|Mux0~75_combout\ : std_logic;
SIGNAL \library1|Mux0~1209_combout\ : std_logic;
SIGNAL \library1|Mux0~1210_combout\ : std_logic;
SIGNAL \library1|Mux0~77_combout\ : std_logic;
SIGNAL \library1|Mux0~78_combout\ : std_logic;
SIGNAL \library1|Mux0~79_combout\ : std_logic;
SIGNAL \library1|Mux0~84_combout\ : std_logic;
SIGNAL \library1|Mux0~86_combout\ : std_logic;
SIGNAL \library1|Mux0~87_combout\ : std_logic;
SIGNAL \library1|Mux0~88_combout\ : std_logic;
SIGNAL \library1|Mux0~89_combout\ : std_logic;
SIGNAL \library1|Mux0~90_combout\ : std_logic;
SIGNAL \library1|Mux0~85_combout\ : std_logic;
SIGNAL \library1|Mux0~91_combout\ : std_logic;
SIGNAL \library1|Mux0~92_combout\ : std_logic;
SIGNAL \library1|Mux0~94_combout\ : std_logic;
SIGNAL \library1|Mux0~95_combout\ : std_logic;
SIGNAL \library1|Mux0~97_combout\ : std_logic;
SIGNAL \library1|Mux0~104_combout\ : std_logic;
SIGNAL \library1|Mux0~105_combout\ : std_logic;
SIGNAL \library1|Mux0~106_combout\ : std_logic;
SIGNAL \library1|Mux0~109_combout\ : std_logic;
SIGNAL \library1|Mux0~107_combout\ : std_logic;
SIGNAL \library1|Mux0~108_combout\ : std_logic;
SIGNAL \library1|Mux0~110_combout\ : std_logic;
SIGNAL \library1|Mux0~111_combout\ : std_logic;
SIGNAL \library1|Mux0~115_combout\ : std_logic;
SIGNAL \library1|Mux0~114_combout\ : std_logic;
SIGNAL \library1|Mux0~116_combout\ : std_logic;
SIGNAL \library1|Mux0~117_combout\ : std_logic;
SIGNAL \library1|Mux0~118_combout\ : std_logic;
SIGNAL \library1|Mux0~112_combout\ : std_logic;
SIGNAL \library1|Mux0~113_combout\ : std_logic;
SIGNAL \library1|Mux0~119_combout\ : std_logic;
SIGNAL \library1|Mux0~120_combout\ : std_logic;
SIGNAL \library1|Mux0~126_combout\ : std_logic;
SIGNAL \library1|Mux0~121_combout\ : std_logic;
SIGNAL \library1|Mux0~124_combout\ : std_logic;
SIGNAL \library1|Mux0~122_combout\ : std_logic;
SIGNAL \library1|Mux0~123_combout\ : std_logic;
SIGNAL \library1|Mux0~125_combout\ : std_logic;
SIGNAL \library1|Mux0~127_combout\ : std_logic;
SIGNAL \library1|Mux0~101_combout\ : std_logic;
SIGNAL \library1|Mux0~102_combout\ : std_logic;
SIGNAL \library1|Mux0~98_combout\ : std_logic;
SIGNAL \library1|Mux0~99_combout\ : std_logic;
SIGNAL \library1|Mux0~100_combout\ : std_logic;
SIGNAL \library1|Mux0~103_combout\ : std_logic;
SIGNAL \library1|Mux0~128_combout\ : std_logic;
SIGNAL \library1|Mux0~129_combout\ : std_logic;
SIGNAL \library1|Mux0~130_combout\ : std_logic;
SIGNAL \library1|Mux0~158_combout\ : std_logic;
SIGNAL \library1|Mux0~159_combout\ : std_logic;
SIGNAL \library1|Mux0~160_combout\ : std_logic;
SIGNAL \library1|Mux0~138_combout\ : std_logic;
SIGNAL \library1|Mux0~139_combout\ : std_logic;
SIGNAL \library1|Mux0~136_combout\ : std_logic;
SIGNAL \library1|Mux0~135_combout\ : std_logic;
SIGNAL \library1|Mux0~137_combout\ : std_logic;
SIGNAL \library1|Mux0~140_combout\ : std_logic;
SIGNAL \library1|Mux0~133_combout\ : std_logic;
SIGNAL \library1|Mux0~131_combout\ : std_logic;
SIGNAL \library1|Mux0~132_combout\ : std_logic;
SIGNAL \library1|Mux0~134_combout\ : std_logic;
SIGNAL \library1|Mux0~141_combout\ : std_logic;
SIGNAL \library1|Mux0~142_combout\ : std_logic;
SIGNAL \library1|Mux0~143_combout\ : std_logic;
SIGNAL \library1|Mux0~155_combout\ : std_logic;
SIGNAL \library1|Mux0~144_combout\ : std_logic;
SIGNAL \library1|Mux0~152_combout\ : std_logic;
SIGNAL \library1|Mux0~150_combout\ : std_logic;
SIGNAL \library1|Mux0~153_combout\ : std_logic;
SIGNAL \library1|Mux0~147_combout\ : std_logic;
SIGNAL \library1|Mux0~148_combout\ : std_logic;
SIGNAL \library1|Mux0~145_combout\ : std_logic;
SIGNAL \library1|Mux0~146_combout\ : std_logic;
SIGNAL \library1|Mux0~149_combout\ : std_logic;
SIGNAL \library1|Mux0~154_combout\ : std_logic;
SIGNAL \library1|Mux0~156_combout\ : std_logic;
SIGNAL \library1|Mux0~157_combout\ : std_logic;
SIGNAL \library1|Mux0~161_combout\ : std_logic;
SIGNAL \library1|Mux0~163_combout\ : std_logic;
SIGNAL \library1|Mux0~162_combout\ : std_logic;
SIGNAL \library1|Mux0~164_combout\ : std_logic;
SIGNAL \library1|Mux0~197_combout\ : std_logic;
SIGNAL \library1|Mux0~198_combout\ : std_logic;
SIGNAL \library1|Mux0~196_combout\ : std_logic;
SIGNAL \library1|Mux0~199_combout\ : std_logic;
SIGNAL \library1|Mux0~183_combout\ : std_logic;
SIGNAL \library1|Mux0~187_combout\ : std_logic;
SIGNAL \library1|Mux0~184_combout\ : std_logic;
SIGNAL \library1|Mux0~185_combout\ : std_logic;
SIGNAL \library1|Mux0~186_combout\ : std_logic;
SIGNAL \library1|Mux0~188_combout\ : std_logic;
SIGNAL \library1|Mux0~190_combout\ : std_logic;
SIGNAL \library1|Mux0~189_combout\ : std_logic;
SIGNAL \library1|Mux0~192_combout\ : std_logic;
SIGNAL \library1|Mux0~191_combout\ : std_logic;
SIGNAL \library1|Mux0~193_combout\ : std_logic;
SIGNAL \library1|Mux0~194_combout\ : std_logic;
SIGNAL \library1|Mux0~179_combout\ : std_logic;
SIGNAL \library1|Mux0~180_combout\ : std_logic;
SIGNAL \library1|Mux0~178_combout\ : std_logic;
SIGNAL \library1|Mux0~181_combout\ : std_logic;
SIGNAL \library1|Mux0~165_combout\ : std_logic;
SIGNAL \library1|Mux0~166_combout\ : std_logic;
SIGNAL \library1|Mux0~167_combout\ : std_logic;
SIGNAL \library1|Mux0~170_combout\ : std_logic;
SIGNAL \library1|Mux0~168_combout\ : std_logic;
SIGNAL \library1|Mux0~169_combout\ : std_logic;
SIGNAL \library1|Mux0~171_combout\ : std_logic;
SIGNAL \library1|Mux0~173_combout\ : std_logic;
SIGNAL \library1|Mux0~172_combout\ : std_logic;
SIGNAL \library1|Mux0~174_combout\ : std_logic;
SIGNAL \library1|Mux0~176_combout\ : std_logic;
SIGNAL \library1|Mux0~177_combout\ : std_logic;
SIGNAL \library1|Mux0~182_combout\ : std_logic;
SIGNAL \library1|Mux0~195_combout\ : std_logic;
SIGNAL \library1|Mux0~200_combout\ : std_logic;
SIGNAL \library1|Mux0~201_combout\ : std_logic;
SIGNAL \library1|Mux0~202_combout\ : std_logic;
SIGNAL \library1|Mux0~211_combout\ : std_logic;
SIGNAL \library1|Mux0~294_combout\ : std_logic;
SIGNAL \library1|Mux0~295_combout\ : std_logic;
SIGNAL \library1|Mux0~296_combout\ : std_logic;
SIGNAL \library1|Mux0~297_combout\ : std_logic;
SIGNAL \library1|Mux0~298_combout\ : std_logic;
SIGNAL \library1|Mux0~299_combout\ : std_logic;
SIGNAL \library1|Mux0~285_combout\ : std_logic;
SIGNAL \library1|Mux0~282_combout\ : std_logic;
SIGNAL \library1|Mux0~283_combout\ : std_logic;
SIGNAL \library1|Mux0~284_combout\ : std_logic;
SIGNAL \library1|Mux0~286_combout\ : std_logic;
SIGNAL \library1|Mux0~289_combout\ : std_logic;
SIGNAL \library1|Mux0~287_combout\ : std_logic;
SIGNAL \library1|Mux0~288_combout\ : std_logic;
SIGNAL \library1|Mux0~290_combout\ : std_logic;
SIGNAL \library1|Mux0~291_combout\ : std_logic;
SIGNAL \library1|Mux0~292_combout\ : std_logic;
SIGNAL \library1|Mux0~300_combout\ : std_logic;
SIGNAL \library1|Mux0~271_combout\ : std_logic;
SIGNAL \library1|Mux0~272_combout\ : std_logic;
SIGNAL \library1|Mux0~269_combout\ : std_logic;
SIGNAL \library1|Mux0~270_combout\ : std_logic;
SIGNAL \library1|Mux0~273_combout\ : std_logic;
SIGNAL \library1|Mux0~266_combout\ : std_logic;
SIGNAL \library1|Mux0~267_combout\ : std_logic;
SIGNAL \library1|Mux0~268_combout\ : std_logic;
SIGNAL \library1|Mux0~1110_combout\ : std_logic;
SIGNAL \library1|Mux0~1197_combout\ : std_logic;
SIGNAL \library1|Mux0~1198_combout\ : std_logic;
SIGNAL \library1|Mux0~277_combout\ : std_logic;
SIGNAL \library1|Mux0~274_combout\ : std_logic;
SIGNAL \library1|Mux0~275_combout\ : std_logic;
SIGNAL \library1|Mux0~276_combout\ : std_logic;
SIGNAL \library1|Mux0~278_combout\ : std_logic;
SIGNAL \library1|Mux0~279_combout\ : std_logic;
SIGNAL \library1|Mux0~280_combout\ : std_logic;
SIGNAL \library1|Mux0~263_combout\ : std_logic;
SIGNAL \library1|Mux0~264_combout\ : std_logic;
SIGNAL \library1|Mux0~260_combout\ : std_logic;
SIGNAL \library1|Mux0~257_combout\ : std_logic;
SIGNAL \library1|Mux0~258_combout\ : std_logic;
SIGNAL \library1|Mux0~259_combout\ : std_logic;
SIGNAL \library1|Mux0~256_combout\ : std_logic;
SIGNAL \library1|Mux0~261_combout\ : std_logic;
SIGNAL \library1|Mux0~262_combout\ : std_logic;
SIGNAL \library1|Mux0~265_combout\ : std_logic;
SIGNAL \library1|Mux0~281_combout\ : std_logic;
SIGNAL \library1|Mux0~218_combout\ : std_logic;
SIGNAL \library1|Mux0~217_combout\ : std_logic;
SIGNAL \library1|Mux0~219_combout\ : std_logic;
SIGNAL \library1|Mux0~223_combout\ : std_logic;
SIGNAL \library1|Mux0~224_combout\ : std_logic;
SIGNAL \library1|Mux0~1205_combout\ : std_logic;
SIGNAL \library1|Mux0~1206_combout\ : std_logic;
SIGNAL \library1|Mux0~220_combout\ : std_logic;
SIGNAL \library1|Mux0~221_combout\ : std_logic;
SIGNAL \library1|Mux0~222_combout\ : std_logic;
SIGNAL \library1|Mux0~225_combout\ : std_logic;
SIGNAL \library1|Mux0~215_combout\ : std_logic;
SIGNAL \library1|Mux0~212_combout\ : std_logic;
SIGNAL \library1|Mux0~213_combout\ : std_logic;
SIGNAL \library1|Mux0~214_combout\ : std_logic;
SIGNAL \library1|Mux0~216_combout\ : std_logic;
SIGNAL \library1|Mux0~1109_combout\ : std_logic;
SIGNAL \library1|Mux0~251_combout\ : std_logic;
SIGNAL \library1|Mux0~248_combout\ : std_logic;
SIGNAL \library1|Mux0~247_combout\ : std_logic;
SIGNAL \library1|Mux0~249_combout\ : std_logic;
SIGNAL \library1|Mux0~252_combout\ : std_logic;
SIGNAL \library1|Mux0~227_combout\ : std_logic;
SIGNAL \library1|Mux0~226_combout\ : std_logic;
SIGNAL \library1|Mux0~1203_combout\ : std_logic;
SIGNAL \library1|Mux0~1204_combout\ : std_logic;
SIGNAL \library1|Mux0~231_combout\ : std_logic;
SIGNAL \library1|Mux0~232_combout\ : std_logic;
SIGNAL \library1|Mux0~234_combout\ : std_logic;
SIGNAL \library1|Mux0~233_combout\ : std_logic;
SIGNAL \library1|Mux0~235_combout\ : std_logic;
SIGNAL \library1|Mux0~229_combout\ : std_logic;
SIGNAL \library1|Mux0~228_combout\ : std_logic;
SIGNAL \library1|Mux0~230_combout\ : std_logic;
SIGNAL \library1|Mux0~236_combout\ : std_logic;
SIGNAL \library1|Mux0~237_combout\ : std_logic;
SIGNAL \library1|Mux0~238_combout\ : std_logic;
SIGNAL \library1|Mux0~1199_combout\ : std_logic;
SIGNAL \library1|Mux0~1200_combout\ : std_logic;
SIGNAL \library1|Mux0~1201_combout\ : std_logic;
SIGNAL \library1|Mux0~1202_combout\ : std_logic;
SIGNAL \library1|Mux0~240_combout\ : std_logic;
SIGNAL \library1|Mux0~241_combout\ : std_logic;
SIGNAL \library1|Mux0~242_combout\ : std_logic;
SIGNAL \library1|Mux0~239_combout\ : std_logic;
SIGNAL \library1|Mux0~243_combout\ : std_logic;
SIGNAL \library1|Mux0~244_combout\ : std_logic;
SIGNAL \library1|Mux0~245_combout\ : std_logic;
SIGNAL \library1|Mux0~246_combout\ : std_logic;
SIGNAL \library1|Mux0~253_combout\ : std_logic;
SIGNAL \library1|Mux0~254_combout\ : std_logic;
SIGNAL \library1|Mux0~301_combout\ : std_logic;
SIGNAL \library1|Mux0~395_combout\ : std_logic;
SIGNAL \library1|Mux0~396_combout\ : std_logic;
SIGNAL \library1|Mux0~1112_combout\ : std_logic;
SIGNAL \library1|Mux0~397_combout\ : std_logic;
SIGNAL \library1|Mux0~398_combout\ : std_logic;
SIGNAL \library1|Mux0~399_combout\ : std_logic;
SIGNAL \library1|Mux0~401_combout\ : std_logic;
SIGNAL \library1|Mux0~361_combout\ : std_logic;
SIGNAL \library1|Mux0~369_combout\ : std_logic;
SIGNAL \library1|Mux0~366_combout\ : std_logic;
SIGNAL \library1|Mux0~364_combout\ : std_logic;
SIGNAL \library1|Mux0~348_combout\ : std_logic;
SIGNAL \library1|Mux0~365_combout\ : std_logic;
SIGNAL \library1|Mux0~367_combout\ : std_logic;
SIGNAL \library1|Mux0~362_combout\ : std_logic;
SIGNAL \library1|Mux0~363_combout\ : std_logic;
SIGNAL \library1|Mux0~368_combout\ : std_logic;
SIGNAL \library1|Mux0~370_combout\ : std_logic;
SIGNAL \library1|Mux0~391_combout\ : std_logic;
SIGNAL \library1|Mux0~392_combout\ : std_logic;
SIGNAL \library1|Mux0~1187_combout\ : std_logic;
SIGNAL \library1|Mux0~1188_combout\ : std_logic;
SIGNAL \library1|Mux0~1189_combout\ : std_logic;
SIGNAL \library1|Mux0~1190_combout\ : std_logic;
SIGNAL \library1|Mux0~389_combout\ : std_logic;
SIGNAL \library1|Mux0~385_combout\ : std_logic;
SIGNAL \library1|Mux0~386_combout\ : std_logic;
SIGNAL \library1|Mux0~387_combout\ : std_logic;
SIGNAL \library1|Mux0~388_combout\ : std_logic;
SIGNAL \library1|Mux0~390_combout\ : std_logic;
SIGNAL \library1|Mux0~393_combout\ : std_logic;
SIGNAL \library1|Mux0~376_combout\ : std_logic;
SIGNAL \library1|Mux0~377_combout\ : std_logic;
SIGNAL \library1|Mux0~371_combout\ : std_logic;
SIGNAL \library1|Mux0~372_combout\ : std_logic;
SIGNAL \library1|Mux0~374_combout\ : std_logic;
SIGNAL \library1|Mux0~373_combout\ : std_logic;
SIGNAL \library1|Mux0~375_combout\ : std_logic;
SIGNAL \library1|Mux0~380_combout\ : std_logic;
SIGNAL \library1|Mux0~381_combout\ : std_logic;
SIGNAL \library1|Mux0~382_combout\ : std_logic;
SIGNAL \library1|Mux0~378_combout\ : std_logic;
SIGNAL \library1|Mux0~379_combout\ : std_logic;
SIGNAL \library1|Mux0~383_combout\ : std_logic;
SIGNAL \library1|Mux0~384_combout\ : std_logic;
SIGNAL \library1|Mux0~394_combout\ : std_logic;
SIGNAL \library1|Mux0~402_combout\ : std_logic;
SIGNAL \library1|Mux0~410_combout\ : std_logic;
SIGNAL \library1|Mux0~415_combout\ : std_logic;
SIGNAL \library1|Mux0~416_combout\ : std_logic;
SIGNAL \library1|Mux0~413_combout\ : std_logic;
SIGNAL \library1|Mux0~411_combout\ : std_logic;
SIGNAL \library1|Mux0~412_combout\ : std_logic;
SIGNAL \library1|Mux0~414_combout\ : std_logic;
SIGNAL \library1|Mux0~417_combout\ : std_logic;
SIGNAL \library1|Mux0~404_combout\ : std_logic;
SIGNAL \library1|Mux0~403_combout\ : std_logic;
SIGNAL \library1|Mux0~405_combout\ : std_logic;
SIGNAL \library1|Mux0~1113_combout\ : std_logic;
SIGNAL \library1|Mux0~406_combout\ : std_logic;
SIGNAL \library1|Mux0~407_combout\ : std_logic;
SIGNAL \library1|Mux0~408_combout\ : std_logic;
SIGNAL \library1|Mux0~409_combout\ : std_logic;
SIGNAL \library1|Mux0~418_combout\ : std_logic;
SIGNAL \library1|Mux0~420_combout\ : std_logic;
SIGNAL \library1|Mux0~421_combout\ : std_logic;
SIGNAL \library1|Mux0~422_combout\ : std_logic;
SIGNAL \library1|Mux0~357_combout\ : std_logic;
SIGNAL \library1|Mux0~355_combout\ : std_logic;
SIGNAL \library1|Mux0~354_combout\ : std_logic;
SIGNAL \library1|Mux0~356_combout\ : std_logic;
SIGNAL \library1|Mux0~358_combout\ : std_logic;
SIGNAL \library1|Mux0~315_combout\ : std_logic;
SIGNAL \library1|Mux0~316_combout\ : std_logic;
SIGNAL \library1|Mux0~317_combout\ : std_logic;
SIGNAL \library1|Mux0~302_combout\ : std_logic;
SIGNAL \library1|Mux0~313_combout\ : std_logic;
SIGNAL \library1|Mux0~309_combout\ : std_logic;
SIGNAL \library1|Mux0~311_combout\ : std_logic;
SIGNAL \library1|Mux0~307_combout\ : std_logic;
SIGNAL \library1|Mux0~304_combout\ : std_logic;
SIGNAL \library1|Mux0~303_combout\ : std_logic;
SIGNAL \library1|Mux0~305_combout\ : std_logic;
SIGNAL \library1|Mux0~308_combout\ : std_logic;
SIGNAL \library1|Mux0~312_combout\ : std_logic;
SIGNAL \library1|Mux0~314_combout\ : std_logic;
SIGNAL \library1|Mux0~319_combout\ : std_logic;
SIGNAL \library1|Mux0~320_combout\ : std_logic;
SIGNAL \library1|Mux0~318_combout\ : std_logic;
SIGNAL \library1|Mux0~321_combout\ : std_logic;
SIGNAL \library1|Mux0~322_combout\ : std_logic;
SIGNAL \library1|Mux0~351_combout\ : std_logic;
SIGNAL \library1|Mux0~341_combout\ : std_logic;
SIGNAL \library1|Mux0~343_combout\ : std_logic;
SIGNAL \library1|Mux0~342_combout\ : std_logic;
SIGNAL \library1|Mux0~344_combout\ : std_logic;
SIGNAL \library1|Mux0~345_combout\ : std_logic;
SIGNAL \library1|Mux0~346_combout\ : std_logic;
SIGNAL \library1|Mux0~1191_combout\ : std_logic;
SIGNAL \library1|Mux0~1192_combout\ : std_logic;
SIGNAL \library1|Mux0~347_combout\ : std_logic;
SIGNAL \library1|Mux0~349_combout\ : std_logic;
SIGNAL \library1|Mux0~350_combout\ : std_logic;
SIGNAL \library1|Mux0~340_combout\ : std_logic;
SIGNAL \library1|Mux0~352_combout\ : std_logic;
SIGNAL \library1|Mux0~1193_combout\ : std_logic;
SIGNAL \library1|Mux0~1194_combout\ : std_logic;
SIGNAL \library1|Mux0~323_combout\ : std_logic;
SIGNAL \library1|Mux0~1111_combout\ : std_logic;
SIGNAL \library1|Mux0~334_combout\ : std_logic;
SIGNAL \library1|Mux0~335_combout\ : std_logic;
SIGNAL \library1|Mux0~336_combout\ : std_logic;
SIGNAL \library1|Mux0~337_combout\ : std_logic;
SIGNAL \library1|Mux0~332_combout\ : std_logic;
SIGNAL \library1|Mux0~324_combout\ : std_logic;
SIGNAL \library1|Mux0~325_combout\ : std_logic;
SIGNAL \library1|Mux0~1195_combout\ : std_logic;
SIGNAL \library1|Mux0~1196_combout\ : std_logic;
SIGNAL \library1|Mux0~326_combout\ : std_logic;
SIGNAL \library1|Mux0~327_combout\ : std_logic;
SIGNAL \library1|Mux0~328_combout\ : std_logic;
SIGNAL \library1|Mux0~329_combout\ : std_logic;
SIGNAL \library1|Mux0~330_combout\ : std_logic;
SIGNAL \library1|Mux0~331_combout\ : std_logic;
SIGNAL \library1|Mux0~333_combout\ : std_logic;
SIGNAL \library1|Mux0~338_combout\ : std_logic;
SIGNAL \library1|Mux0~339_combout\ : std_logic;
SIGNAL \library1|Mux0~353_combout\ : std_logic;
SIGNAL \library1|Mux0~359_combout\ : std_logic;
SIGNAL \library1|Mux0~486_combout\ : std_logic;
SIGNAL \library1|Mux0~483_combout\ : std_logic;
SIGNAL \library1|Mux0~484_combout\ : std_logic;
SIGNAL \library1|Mux0~485_combout\ : std_logic;
SIGNAL \library1|Mux0~487_combout\ : std_logic;
SIGNAL \library1|Mux0~1185_combout\ : std_logic;
SIGNAL \library1|Mux0~1186_combout\ : std_logic;
SIGNAL \library1|Mux0~439_combout\ : std_logic;
SIGNAL \library1|Mux0~437_combout\ : std_logic;
SIGNAL \library1|Mux0~438_combout\ : std_logic;
SIGNAL \library1|Mux0~440_combout\ : std_logic;
SIGNAL \library1|Mux0~434_combout\ : std_logic;
SIGNAL \library1|Mux0~435_combout\ : std_logic;
SIGNAL \library1|Mux0~432_combout\ : std_logic;
SIGNAL \library1|Mux0~433_combout\ : std_logic;
SIGNAL \library1|Mux0~1183_combout\ : std_logic;
SIGNAL \library1|Mux0~1184_combout\ : std_logic;
SIGNAL \library1|Mux0~436_combout\ : std_logic;
SIGNAL \library1|Mux0~441_combout\ : std_logic;
SIGNAL \library1|Mux0~430_combout\ : std_logic;
SIGNAL \library1|Mux0~423_combout\ : std_logic;
SIGNAL \library1|Mux0~427_combout\ : std_logic;
SIGNAL \library1|Mux0~428_combout\ : std_logic;
SIGNAL \library1|Mux0~424_combout\ : std_logic;
SIGNAL \library1|Mux0~425_combout\ : std_logic;
SIGNAL \library1|Mux0~426_combout\ : std_logic;
SIGNAL \library1|Mux0~429_combout\ : std_logic;
SIGNAL \library1|Mux0~431_combout\ : std_logic;
SIGNAL \library1|Mux0~442_combout\ : std_logic;
SIGNAL \library1|Mux0~470_combout\ : std_logic;
SIGNAL \library1|Mux0~480_combout\ : std_logic;
SIGNAL \library1|Mux0~471_combout\ : std_logic;
SIGNAL \library1|Mux0~475_combout\ : std_logic;
SIGNAL \library1|Mux0~472_combout\ : std_logic;
SIGNAL \library1|Mux0~473_combout\ : std_logic;
SIGNAL \library1|Mux0~474_combout\ : std_logic;
SIGNAL \library1|Mux0~476_combout\ : std_logic;
SIGNAL \library1|Mux0~477_combout\ : std_logic;
SIGNAL \library1|Mux0~478_combout\ : std_logic;
SIGNAL \library1|Mux0~1181_combout\ : std_logic;
SIGNAL \library1|Mux0~1182_combout\ : std_logic;
SIGNAL \library1|Mux0~479_combout\ : std_logic;
SIGNAL \library1|Mux0~481_combout\ : std_logic;
SIGNAL \library1|Mux0~467_combout\ : std_logic;
SIGNAL \library1|Mux0~1114_combout\ : std_logic;
SIGNAL \library1|Mux0~1115_combout\ : std_logic;
SIGNAL \library1|Mux0~468_combout\ : std_logic;
SIGNAL \library1|Mux0~443_combout\ : std_logic;
SIGNAL \library1|Mux0~444_combout\ : std_logic;
SIGNAL \library1|Mux0~445_combout\ : std_logic;
SIGNAL \library1|Mux0~446_combout\ : std_logic;
SIGNAL \library1|Mux0~447_combout\ : std_logic;
SIGNAL \library1|Mux0~448_combout\ : std_logic;
SIGNAL \library1|Mux0~449_combout\ : std_logic;
SIGNAL \library1|Mux0~450_combout\ : std_logic;
SIGNAL \library1|Mux0~454_combout\ : std_logic;
SIGNAL \library1|Mux0~451_combout\ : std_logic;
SIGNAL \library1|Mux0~452_combout\ : std_logic;
SIGNAL \library1|Mux0~453_combout\ : std_logic;
SIGNAL \library1|Mux0~455_combout\ : std_logic;
SIGNAL \library1|Mux0~457_combout\ : std_logic;
SIGNAL \library1|Mux0~456_combout\ : std_logic;
SIGNAL \library1|Mux0~458_combout\ : std_logic;
SIGNAL \library1|Mux0~463_combout\ : std_logic;
SIGNAL \library1|Mux0~464_combout\ : std_logic;
SIGNAL \library1|Mux0~459_combout\ : std_logic;
SIGNAL \library1|Mux0~460_combout\ : std_logic;
SIGNAL \library1|Mux0~461_combout\ : std_logic;
SIGNAL \library1|Mux0~462_combout\ : std_logic;
SIGNAL \library1|Mux0~465_combout\ : std_logic;
SIGNAL \library1|Mux0~466_combout\ : std_logic;
SIGNAL \library1|Mux0~469_combout\ : std_logic;
SIGNAL \library1|Mux0~482_combout\ : std_logic;
SIGNAL \library1|Mux0~488_combout\ : std_logic;
SIGNAL \library1|Mux0~489_combout\ : std_logic;
SIGNAL \library1|Mux0~490_combout\ : std_logic;
SIGNAL \library1|Mux0~558_combout\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
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
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL \vga1|Equal0~0_combout\ : std_logic;
SIGNAL \vga1|ph_sync~3_combout\ : std_logic;
SIGNAL \vga1|ph_sync~0_combout\ : std_logic;
SIGNAL \vga1|ph_sync~1_combout\ : std_logic;
SIGNAL \vga1|ph_sync~2_combout\ : std_logic;
SIGNAL \vga1|ph_sync~4_combout\ : std_logic;
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

-- Location: LCCOMB_X1_Y36_N18
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

-- Location: FF_X1_Y36_N19
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

-- Location: LCCOMB_X1_Y36_N20
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

-- Location: FF_X1_Y36_N21
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

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X39_Y55_N10
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

-- Location: FF_X39_Y55_N1
\vga1|xPixel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \vga1|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(0));

-- Location: LCCOMB_X39_Y55_N12
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

-- Location: LCCOMB_X39_Y55_N4
\vga1|xPixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~0_combout\ = (!\vga1|Equal0~3_combout\ & \vga1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~3_combout\,
	datad => \vga1|Add0~2_combout\,
	combout => \vga1|xPixel~0_combout\);

-- Location: FF_X39_Y55_N5
\vga1|xPixel[1]\ : dffeas
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
	q => \vga1|xPixel\(1));

-- Location: LCCOMB_X39_Y55_N14
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

-- Location: FF_X39_Y55_N15
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

-- Location: LCCOMB_X39_Y55_N16
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

-- Location: LCCOMB_X39_Y55_N18
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

-- Location: LCCOMB_X45_Y55_N14
\vga1|xPixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~1_combout\ = (!\vga1|Equal0~3_combout\ & \vga1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Equal0~3_combout\,
	datad => \vga1|Add0~8_combout\,
	combout => \vga1|xPixel~1_combout\);

-- Location: FF_X42_Y55_N17
\vga1|xPixel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \vga1|xPixel~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(4));

-- Location: LCCOMB_X39_Y55_N20
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

-- Location: FF_X39_Y55_N21
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

-- Location: LCCOMB_X39_Y55_N22
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

-- Location: FF_X39_Y55_N23
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

-- Location: LCCOMB_X39_Y55_N24
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

-- Location: FF_X39_Y55_N25
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

-- Location: LCCOMB_X39_Y55_N26
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

-- Location: LCCOMB_X45_Y55_N0
\vga1|xPixel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~2_combout\ = (!\vga1|Equal0~3_combout\ & \vga1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Equal0~3_combout\,
	datad => \vga1|Add0~16_combout\,
	combout => \vga1|xPixel~2_combout\);

-- Location: FF_X41_Y55_N1
\vga1|xPixel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \vga1|xPixel~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|xPixel\(8));

-- Location: LCCOMB_X39_Y55_N28
\vga1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~18_combout\ = \vga1|Add0~17\ $ (\vga1|xPixel\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga1|xPixel\(9),
	cin => \vga1|Add0~17\,
	combout => \vga1|Add0~18_combout\);

-- Location: LCCOMB_X36_Y55_N14
\vga1|xPixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~3_combout\ = (!\vga1|Equal0~3_combout\ & \vga1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Equal0~3_combout\,
	datac => \vga1|Add0~18_combout\,
	combout => \vga1|xPixel~3_combout\);

-- Location: FF_X36_Y55_N15
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

-- Location: LCCOMB_X36_Y55_N0
\vga1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~1_combout\ = (!\vga1|xPixel\(6) & (!\vga1|xPixel\(5) & (\vga1|xPixel\(9) & !\vga1|xPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(9),
	datad => \vga1|xPixel\(7),
	combout => \vga1|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y55_N26
\vga1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~2_combout\ = (!\vga1|xPixel\(2) & (!\vga1|xPixel\(1) & (\vga1|xPixel\(3) & \vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(3),
	datad => \vga1|xPixel\(0),
	combout => \vga1|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y55_N16
\vga1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~3_combout\ = (\vga1|xPixel\(4) & (\vga1|Equal0~1_combout\ & (\vga1|Equal0~2_combout\ & \vga1|xPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|Equal0~2_combout\,
	datad => \vga1|xPixel\(8),
	combout => \vga1|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y55_N10
\vga1|xPixel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~4_combout\ = (!\vga1|Equal0~3_combout\ & \vga1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Equal0~3_combout\,
	datac => \vga1|Add0~6_combout\,
	combout => \vga1|xPixel~4_combout\);

-- Location: FF_X36_Y55_N5
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

-- Location: LCCOMB_X39_Y55_N0
\Mux323~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~3_combout\ = (!\vga1|xPixel\(8) & !\vga1|xPixel\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(8),
	datad => \vga1|xPixel\(7),
	combout => \Mux323~3_combout\);

-- Location: LCCOMB_X43_Y55_N6
\vga1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~0_combout\ = \vga1|yPixel\(0) $ (VCC)
-- \vga1|Add1~1\ = CARRY(\vga1|yPixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(0),
	datad => VCC,
	combout => \vga1|Add1~0_combout\,
	cout => \vga1|Add1~1\);

-- Location: FF_X39_Y55_N31
\vga1|yPixel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \vga1|Add1~0_combout\,
	sload => VCC,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(0));

-- Location: LCCOMB_X43_Y55_N8
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

-- Location: LCCOMB_X43_Y57_N26
\vga1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~1_combout\ = (!\vga1|yPixel\(4) & (\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & \vga1|yPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(3),
	combout => \vga1|Equal1~1_combout\);

-- Location: LCCOMB_X43_Y57_N4
\vga1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~0_combout\ = (!\vga1|yPixel\(8) & (!\vga1|yPixel\(5) & (!\vga1|yPixel\(6) & !\vga1|yPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(7),
	combout => \vga1|Equal1~0_combout\);

-- Location: LCCOMB_X43_Y55_N22
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

-- Location: LCCOMB_X43_Y55_N24
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

-- Location: LCCOMB_X43_Y57_N14
\vga1|yPixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~3_combout\ = (\vga1|Add1~18_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Add1~18_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~3_combout\);

-- Location: FF_X43_Y57_N15
\vga1|yPixel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~3_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(9));

-- Location: LCCOMB_X43_Y57_N24
\vga1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~2_combout\ = (\vga1|Equal1~1_combout\ & (\vga1|Equal1~0_combout\ & (\vga1|yPixel\(9) & \vga1|yPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal1~1_combout\,
	datab => \vga1|Equal1~0_combout\,
	datac => \vga1|yPixel\(9),
	datad => \vga1|yPixel\(0),
	combout => \vga1|Equal1~2_combout\);

-- Location: LCCOMB_X43_Y57_N8
\vga1|yPixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~1_combout\ = (\vga1|Add1~2_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add1~2_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~1_combout\);

-- Location: FF_X43_Y57_N9
\vga1|yPixel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~1_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(1));

-- Location: LCCOMB_X43_Y55_N10
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

-- Location: LCCOMB_X38_Y57_N8
\vga1|yPixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~0_combout\ = (\vga1|Add1~4_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add1~4_combout\,
	datac => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~0_combout\);

-- Location: FF_X38_Y57_N9
\vga1|yPixel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~0_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(2));

-- Location: LCCOMB_X43_Y55_N12
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

-- Location: LCCOMB_X43_Y57_N10
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

-- Location: FF_X43_Y57_N11
\vga1|yPixel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~2_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(3));

-- Location: LCCOMB_X43_Y55_N14
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

-- Location: FF_X43_Y55_N15
\vga1|yPixel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~8_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(4));

-- Location: LCCOMB_X43_Y55_N16
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

-- Location: FF_X43_Y55_N17
\vga1|yPixel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~10_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(5));

-- Location: LCCOMB_X43_Y55_N18
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

-- Location: FF_X43_Y55_N19
\vga1|yPixel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~12_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(6));

-- Location: LCCOMB_X43_Y55_N20
\vga1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~14_combout\ = (\vga1|yPixel\(7) & (!\vga1|Add1~13\)) # (!\vga1|yPixel\(7) & ((\vga1|Add1~13\) # (GND)))
-- \vga1|Add1~15\ = CARRY((!\vga1|Add1~13\) # (!\vga1|yPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datad => VCC,
	cin => \vga1|Add1~13\,
	combout => \vga1|Add1~14_combout\,
	cout => \vga1|Add1~15\);

-- Location: FF_X43_Y55_N21
\vga1|yPixel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~14_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(7));

-- Location: FF_X43_Y55_N23
\vga1|yPixel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~16_combout\,
	ena => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(8));

-- Location: LCCOMB_X43_Y57_N30
\vga1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|LessThan1~0_combout\ = (\vga1|yPixel\(8) & (\vga1|yPixel\(5) & (\vga1|yPixel\(6) & \vga1|yPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(7),
	combout => \vga1|LessThan1~0_combout\);

-- Location: LCCOMB_X43_Y57_N22
\vga1|display_area~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|display_area~0_combout\ = (!\vga1|LessThan1~0_combout\ & (!\vga1|yPixel\(9) & ((\Mux323~3_combout\) # (!\vga1|xPixel\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~3_combout\,
	datab => \vga1|xPixel\(9),
	datac => \vga1|LessThan1~0_combout\,
	datad => \vga1|yPixel\(9),
	combout => \vga1|display_area~0_combout\);

-- Location: FF_X43_Y57_N23
\vga1|display_area\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|display_area~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|display_area~q\);

-- Location: LCCOMB_X40_Y55_N2
\Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (!\vga1|yPixel\(6) & (!\vga1|yPixel\(8) & \vga1|yPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(7),
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X36_Y55_N10
\Mux320~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux320~3_combout\ = (\vga1|xPixel\(6) & ((\vga1|xPixel\(8)) # ((!\vga1|xPixel\(5) & !\vga1|xPixel\(4))))) # (!\vga1|xPixel\(6) & (\vga1|xPixel\(5) & ((\vga1|xPixel\(4)) # (\vga1|xPixel\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(4),
	datad => \vga1|xPixel\(8),
	combout => \Mux320~3_combout\);

-- Location: LCCOMB_X36_Y55_N30
\Mux320~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux320~4_combout\ = (\Mux64~0_combout\ & (\vga1|xPixel\(7) & (!\vga1|xPixel\(9) & \Mux320~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux64~0_combout\,
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(9),
	datad => \Mux320~3_combout\,
	combout => \Mux320~4_combout\);

-- Location: LCCOMB_X43_Y55_N26
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (!\vga1|yPixel\(8) & (!\vga1|yPixel\(7) & (\vga1|yPixel\(5) $ (\vga1|yPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(6),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X39_Y55_N8
\Mux323~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~4_combout\ = (\Mux323~3_combout\ & ((\vga1|xPixel\(6) & (\Mux64~0_combout\)) # (!\vga1|xPixel\(6) & ((\Mux49~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux64~0_combout\,
	datab => \Mux323~3_combout\,
	datac => \vga1|xPixel\(6),
	datad => \Mux49~0_combout\,
	combout => \Mux323~4_combout\);

-- Location: LCCOMB_X43_Y55_N2
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!\vga1|yPixel\(8) & (\vga1|yPixel\(6) $ (((\vga1|yPixel\(5)) # (\vga1|yPixel\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(6),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X41_Y55_N30
\Mux323~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~15_combout\ = (!\vga1|xPixel\(7) & (\Mux33~0_combout\ & (!\vga1|xPixel\(6) & !\vga1|xPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \Mux33~0_combout\,
	datac => \vga1|xPixel\(6),
	datad => \vga1|xPixel\(8),
	combout => \Mux323~15_combout\);

-- Location: LCCOMB_X43_Y55_N28
\Mux145~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~0_combout\ = (\vga1|yPixel\(6) & (\vga1|yPixel\(8) & \vga1|yPixel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(5),
	combout => \Mux145~0_combout\);

-- Location: LCCOMB_X42_Y55_N10
\Mux323~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~7_combout\ = (\Mux145~0_combout\ & ((\vga1|xPixel\(4)) # (\vga1|xPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(8),
	datad => \Mux145~0_combout\,
	combout => \Mux323~7_combout\);

-- Location: LCCOMB_X42_Y55_N28
\Mux322~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~9_combout\ = (\vga1|xPixel\(4) & ((\vga1|yPixel\(6)))) # (!\vga1|xPixel\(4) & (!\vga1|yPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datac => \vga1|xPixel\(4),
	datad => \vga1|yPixel\(6),
	combout => \Mux322~9_combout\);

-- Location: LCCOMB_X41_Y55_N28
\Mux322~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~10_combout\ = (\vga1|xPixel\(8) & (\vga1|yPixel\(5) & (\vga1|yPixel\(8) & \Mux322~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \Mux322~9_combout\,
	combout => \Mux322~10_combout\);

-- Location: LCCOMB_X41_Y55_N26
\Mux323~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~8_combout\ = (\vga1|xPixel\(6) & ((\vga1|xPixel\(7)) # ((\Mux323~7_combout\)))) # (!\vga1|xPixel\(6) & (!\vga1|xPixel\(7) & ((\Mux322~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(7),
	datac => \Mux323~7_combout\,
	datad => \Mux322~10_combout\,
	combout => \Mux323~8_combout\);

-- Location: LCCOMB_X43_Y55_N4
\Mux233~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux233~0_combout\ = (!\vga1|yPixel\(6) & ((\vga1|yPixel\(8) & (\vga1|yPixel\(5) & !\vga1|yPixel\(7))) # (!\vga1|yPixel\(8) & ((\vga1|yPixel\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(7),
	combout => \Mux233~0_combout\);

-- Location: LCCOMB_X43_Y55_N30
\Mux234~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux234~0_combout\ = (\vga1|yPixel\(8) & (\vga1|yPixel\(5) & (!\vga1|yPixel\(7) & \vga1|yPixel\(6)))) # (!\vga1|yPixel\(8) & (((\vga1|yPixel\(7) & !\vga1|yPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(6),
	combout => \Mux234~0_combout\);

-- Location: LCCOMB_X41_Y55_N6
\Mux323~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~5_combout\ = (!\vga1|xPixel\(8) & ((\vga1|xPixel\(4) & (\Mux233~0_combout\)) # (!\vga1|xPixel\(4) & ((\Mux234~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(4),
	datac => \Mux233~0_combout\,
	datad => \Mux234~0_combout\,
	combout => \Mux323~5_combout\);

-- Location: LCCOMB_X41_Y55_N8
\Mux323~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~6_combout\ = (\Mux323~5_combout\) # ((\vga1|xPixel\(8) & \Mux33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datac => \Mux33~0_combout\,
	datad => \Mux323~5_combout\,
	combout => \Mux323~6_combout\);

-- Location: LCCOMB_X42_Y55_N30
\Mux322~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~12_combout\ = (\vga1|xPixel\(8) & (!\vga1|yPixel\(7) & ((!\vga1|yPixel\(8))))) # (!\vga1|xPixel\(8) & (((\vga1|xPixel\(4) & \vga1|yPixel\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(4),
	datad => \vga1|yPixel\(8),
	combout => \Mux322~12_combout\);

-- Location: LCCOMB_X42_Y55_N8
\Mux322~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~13_combout\ = (\Mux322~12_combout\ & ((\vga1|yPixel\(8) & (\vga1|yPixel\(5) & \vga1|yPixel\(6))) # (!\vga1|yPixel\(8) & (\vga1|yPixel\(5) $ (\vga1|yPixel\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \Mux322~12_combout\,
	datad => \vga1|yPixel\(6),
	combout => \Mux322~13_combout\);

-- Location: LCCOMB_X38_Y55_N16
\Mux137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~0_combout\ = (\vga1|yPixel\(8) & (\vga1|yPixel\(5) & !\vga1|yPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(7),
	combout => \Mux137~0_combout\);

-- Location: LCCOMB_X41_Y55_N12
\Mux322~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~14_combout\ = (\Mux322~13_combout\) # ((!\vga1|xPixel\(8) & (!\vga1|xPixel\(4) & \Mux137~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(4),
	datac => \Mux322~13_combout\,
	datad => \Mux137~0_combout\,
	combout => \Mux322~14_combout\);

-- Location: LCCOMB_X41_Y55_N4
\Mux323~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~9_combout\ = (\Mux323~8_combout\ & (((\Mux322~14_combout\)) # (!\vga1|xPixel\(7)))) # (!\Mux323~8_combout\ & (\vga1|xPixel\(7) & (\Mux323~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~8_combout\,
	datab => \vga1|xPixel\(7),
	datac => \Mux323~6_combout\,
	datad => \Mux322~14_combout\,
	combout => \Mux323~9_combout\);

-- Location: LCCOMB_X40_Y55_N16
\Mux323~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~2_combout\ = (\vga1|xPixel\(6) & \Mux49~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(6),
	datad => \Mux49~0_combout\,
	combout => \Mux323~2_combout\);

-- Location: LCCOMB_X40_Y55_N12
\Mux323~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~10_combout\ = (\vga1|xPixel\(4) & (!\vga1|xPixel\(6) & ((\Mux64~0_combout\)))) # (!\vga1|xPixel\(4) & ((\vga1|xPixel\(6) & ((\Mux64~0_combout\))) # (!\vga1|xPixel\(6) & (\Mux145~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(6),
	datac => \Mux145~0_combout\,
	datad => \Mux64~0_combout\,
	combout => \Mux323~10_combout\);

-- Location: LCCOMB_X41_Y55_N22
\Mux323~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~11_combout\ = (\vga1|xPixel\(7) & ((\vga1|xPixel\(8) & (\Mux323~2_combout\)) # (!\vga1|xPixel\(8) & ((\Mux323~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(7),
	datac => \Mux323~2_combout\,
	datad => \Mux323~10_combout\,
	combout => \Mux323~11_combout\);

-- Location: LCCOMB_X43_Y55_N0
\Mux137~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~1_combout\ = (\vga1|yPixel\(8) & (!\vga1|yPixel\(6) & (!\vga1|yPixel\(7) & \vga1|yPixel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(5),
	combout => \Mux137~1_combout\);

-- Location: LCCOMB_X42_Y55_N18
\Mux322~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~0_combout\ = (\vga1|xPixel\(6) & ((!\vga1|yPixel\(7)))) # (!\vga1|xPixel\(6) & (\vga1|yPixel\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(7),
	datad => \vga1|xPixel\(6),
	combout => \Mux322~0_combout\);

-- Location: LCCOMB_X42_Y55_N0
\Mux322~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~1_combout\ = (!\vga1|xPixel\(4) & (\vga1|yPixel\(5) & (\vga1|yPixel\(8) & \Mux322~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \Mux322~0_combout\,
	combout => \Mux322~1_combout\);

-- Location: LCCOMB_X42_Y55_N24
\Mux322~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~17_combout\ = (!\vga1|xPixel\(7) & ((\Mux322~1_combout\) # ((\vga1|xPixel\(4) & \Mux137~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(7),
	datac => \Mux137~1_combout\,
	datad => \Mux322~1_combout\,
	combout => \Mux322~17_combout\);

-- Location: LCCOMB_X41_Y55_N24
\Mux323~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~12_combout\ = (\Mux323~11_combout\) # ((\vga1|xPixel\(8) & \Mux322~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datac => \Mux323~11_combout\,
	datad => \Mux322~17_combout\,
	combout => \Mux323~12_combout\);

-- Location: LCCOMB_X41_Y55_N18
\Mux323~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~13_combout\ = (\vga1|xPixel\(9) & (\vga1|xPixel\(5))) # (!\vga1|xPixel\(9) & ((\vga1|xPixel\(5) & (\Mux323~9_combout\)) # (!\vga1|xPixel\(5) & ((\Mux323~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(5),
	datac => \Mux323~9_combout\,
	datad => \Mux323~12_combout\,
	combout => \Mux323~13_combout\);

-- Location: LCCOMB_X41_Y55_N20
\Mux323~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~14_combout\ = (\vga1|xPixel\(9) & ((\Mux323~13_combout\ & ((\Mux323~15_combout\))) # (!\Mux323~13_combout\ & (\Mux323~4_combout\)))) # (!\vga1|xPixel\(9) & (((\Mux323~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \Mux323~4_combout\,
	datac => \Mux323~15_combout\,
	datad => \Mux323~13_combout\,
	combout => \Mux323~14_combout\);

-- Location: LCCOMB_X36_Y55_N28
\Mux320~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux320~2_combout\ = (!\vga1|xPixel\(9) & \vga1|xPixel\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(9),
	datad => \vga1|xPixel\(7),
	combout => \Mux320~2_combout\);

-- Location: LCCOMB_X38_Y55_N20
\Mux327~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~6_combout\ = (\vga1|yPixel\(8) & ((\vga1|yPixel\(7)) # ((\vga1|yPixel\(6) & \vga1|yPixel\(5))))) # (!\vga1|yPixel\(8) & (\vga1|yPixel\(7) & (\vga1|yPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(7),
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(5),
	combout => \Mux327~6_combout\);

-- Location: LCCOMB_X38_Y55_N6
\Mux327~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~7_combout\ = (\vga1|xPixel\(5) & (\vga1|xPixel\(6))) # (!\vga1|xPixel\(5) & ((\vga1|yPixel\(7) & ((!\Mux327~6_combout\))) # (!\vga1|yPixel\(7) & (!\vga1|xPixel\(6) & \Mux327~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(6),
	datac => \vga1|yPixel\(7),
	datad => \Mux327~6_combout\,
	combout => \Mux327~7_combout\);

-- Location: LCCOMB_X38_Y55_N24
\Mux327~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~8_combout\ = (\vga1|xPixel\(5) & ((\Mux327~7_combout\ & (\Mux137~1_combout\)) # (!\Mux327~7_combout\ & ((\Mux233~0_combout\))))) # (!\vga1|xPixel\(5) & (((\Mux327~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \Mux137~1_combout\,
	datac => \Mux233~0_combout\,
	datad => \Mux327~7_combout\,
	combout => \Mux327~8_combout\);

-- Location: LCCOMB_X38_Y55_N22
\Mux327~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~9_combout\ = (!\vga1|xPixel\(4) & (\Mux320~2_combout\ & (!\vga1|xPixel\(8) & \Mux327~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \Mux320~2_combout\,
	datac => \vga1|xPixel\(8),
	datad => \Mux327~8_combout\,
	combout => \Mux327~9_combout\);

-- Location: LCCOMB_X36_Y55_N4
\Mux321~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~2_combout\ = (!\vga1|xPixel\(9) & \vga1|xPixel\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(9),
	datad => \vga1|xPixel\(8),
	combout => \Mux321~2_combout\);

-- Location: LCCOMB_X38_Y55_N30
\Mux327~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~0_combout\ = (\vga1|xPixel\(6) & (\Mux145~0_combout\ & (!\vga1|xPixel\(9)))) # (!\vga1|xPixel\(6) & (((\vga1|xPixel\(9) & \Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux145~0_combout\,
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(9),
	datad => \Mux33~0_combout\,
	combout => \Mux327~0_combout\);

-- Location: LCCOMB_X39_Y55_N6
\Mux327~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~2_combout\ = (!\vga1|yPixel\(6) & ((\vga1|yPixel\(7) & (\vga1|xPixel\(4))) # (!\vga1|yPixel\(7) & (!\vga1|xPixel\(4) & \vga1|yPixel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(7),
	datac => \vga1|xPixel\(4),
	datad => \vga1|yPixel\(5),
	combout => \Mux327~2_combout\);

-- Location: LCCOMB_X38_Y55_N4
\Mux327~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~1_combout\ = (\vga1|xPixel\(9) & ((!\vga1|yPixel\(8)) # (!\vga1|xPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(9),
	datad => \vga1|yPixel\(8),
	combout => \Mux327~1_combout\);

-- Location: LCCOMB_X38_Y55_N18
\Mux327~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~3_combout\ = (\Mux327~1_combout\ & ((\vga1|xPixel\(6) & (\Mux327~2_combout\)) # (!\vga1|xPixel\(6) & ((\Mux49~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~2_combout\,
	datab => \vga1|xPixel\(6),
	datac => \Mux327~1_combout\,
	datad => \Mux49~0_combout\,
	combout => \Mux327~3_combout\);

-- Location: LCCOMB_X38_Y55_N28
\Mux327~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~4_combout\ = (\vga1|xPixel\(5) & (\vga1|xPixel\(4))) # (!\vga1|xPixel\(5) & (\Mux327~3_combout\ & ((\vga1|xPixel\(4)) # (\vga1|xPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(5),
	datad => \Mux327~3_combout\,
	combout => \Mux327~4_combout\);

-- Location: LCCOMB_X38_Y55_N26
\Mux327~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~5_combout\ = (\Mux323~3_combout\ & (\Mux327~4_combout\ & ((\Mux327~0_combout\) # (!\vga1|xPixel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \Mux323~3_combout\,
	datac => \Mux327~0_combout\,
	datad => \Mux327~4_combout\,
	combout => \Mux327~5_combout\);

-- Location: LCCOMB_X38_Y55_N12
\Mux327~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~12_combout\ = (\vga1|xPixel\(7) & (\Mux33~0_combout\ & (\vga1|xPixel\(8) $ (!\vga1|xPixel\(4))))) # (!\vga1|xPixel\(7) & (((\vga1|xPixel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(8),
	datad => \vga1|xPixel\(4),
	combout => \Mux327~12_combout\);

-- Location: LCCOMB_X38_Y55_N14
\Mux327~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~13_combout\ = (\Mux327~12_combout\ & ((\vga1|xPixel\(6) & (\vga1|xPixel\(7))) # (!\vga1|xPixel\(6) & ((\vga1|xPixel\(5)))))) # (!\Mux327~12_combout\ & (!\vga1|xPixel\(7) & (\vga1|xPixel\(5) & \vga1|xPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~12_combout\,
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(5),
	datad => \vga1|xPixel\(6),
	combout => \Mux327~13_combout\);

-- Location: LCCOMB_X38_Y55_N8
\Mux327~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~10_combout\ = (\vga1|xPixel\(6) & ((\Mux137~0_combout\))) # (!\vga1|xPixel\(6) & (\Mux145~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(6),
	datac => \Mux145~0_combout\,
	datad => \Mux137~0_combout\,
	combout => \Mux327~10_combout\);

-- Location: LCCOMB_X40_Y55_N14
\Mux324~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~3_combout\ = (\vga1|xPixel\(4) & (!\vga1|xPixel\(6) & (\Mux137~1_combout\))) # (!\vga1|xPixel\(4) & (((\Mux137~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(6),
	datac => \Mux137~1_combout\,
	datad => \Mux137~0_combout\,
	combout => \Mux324~3_combout\);

-- Location: LCCOMB_X38_Y55_N10
\Mux327~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~11_combout\ = (\vga1|xPixel\(5) & (\Mux327~10_combout\)) # (!\vga1|xPixel\(5) & ((\Mux324~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datac => \Mux327~10_combout\,
	datad => \Mux324~3_combout\,
	combout => \Mux327~11_combout\);

-- Location: LCCOMB_X38_Y55_N0
\Mux327~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~14_combout\ = (\vga1|xPixel\(7) & (\Mux327~13_combout\)) # (!\vga1|xPixel\(7) & (!\Mux327~13_combout\ & \Mux327~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(7),
	datac => \Mux327~13_combout\,
	datad => \Mux327~11_combout\,
	combout => \Mux327~14_combout\);

-- Location: LCCOMB_X38_Y55_N2
\Mux327~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~15_combout\ = (\Mux327~9_combout\) # ((\Mux327~5_combout\) # ((\Mux321~2_combout\ & \Mux327~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~9_combout\,
	datab => \Mux321~2_combout\,
	datac => \Mux327~5_combout\,
	datad => \Mux327~14_combout\,
	combout => \Mux327~15_combout\);

-- Location: LCCOMB_X39_Y57_N18
\Mux325~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~10_combout\ = (\vga1|xPixel\(4) & (\vga1|yPixel\(8) & (\vga1|yPixel\(5) & !\vga1|yPixel\(7)))) # (!\vga1|xPixel\(4) & (!\vga1|yPixel\(8) & ((\vga1|yPixel\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|yPixel\(8),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(7),
	combout => \Mux325~10_combout\);

-- Location: LCCOMB_X39_Y57_N8
\Mux325~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~17_combout\ = (!\vga1|yPixel\(6) & (!\vga1|xPixel\(6) & (!\vga1|xPixel\(5) & \Mux325~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(5),
	datad => \Mux325~10_combout\,
	combout => \Mux325~17_combout\);

-- Location: LCCOMB_X39_Y57_N2
\Mux325~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~14_combout\ = (\vga1|xPixel\(4) & \vga1|xPixel\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(4),
	datad => \vga1|xPixel\(6),
	combout => \Mux325~14_combout\);

-- Location: LCCOMB_X39_Y57_N4
\Mux325~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~11_combout\ = (\vga1|yPixel\(7) & (((!\vga1|yPixel\(8) & !\vga1|xPixel\(9))))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(5) & (\vga1|yPixel\(8) $ (\vga1|xPixel\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(5),
	datab => \vga1|yPixel\(7),
	datac => \vga1|yPixel\(8),
	datad => \vga1|xPixel\(9),
	combout => \Mux325~11_combout\);

-- Location: LCCOMB_X39_Y57_N30
\Mux325~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~12_combout\ = (!\vga1|yPixel\(6) & (\Mux325~11_combout\ & (\vga1|xPixel\(5) $ (\vga1|xPixel\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|xPixel\(5),
	datac => \Mux325~11_combout\,
	datad => \vga1|xPixel\(9),
	combout => \Mux325~12_combout\);

-- Location: LCCOMB_X39_Y57_N24
\Mux325~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~13_combout\ = (\vga1|xPixel\(5) & ((\Mux145~0_combout\))) # (!\vga1|xPixel\(5) & (\Mux137~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(5),
	datac => \Mux137~0_combout\,
	datad => \Mux145~0_combout\,
	combout => \Mux325~13_combout\);

-- Location: LCCOMB_X39_Y57_N16
\Mux325~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~15_combout\ = (\Mux325~14_combout\ & ((\vga1|xPixel\(7) & ((\Mux325~13_combout\))) # (!\vga1|xPixel\(7) & (\Mux325~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \Mux325~14_combout\,
	datac => \Mux325~12_combout\,
	datad => \Mux325~13_combout\,
	combout => \Mux325~15_combout\);

-- Location: LCCOMB_X39_Y57_N22
\Mux325~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~16_combout\ = (\vga1|xPixel\(7) & (!\vga1|xPixel\(9) & ((\Mux325~17_combout\) # (\Mux325~15_combout\)))) # (!\vga1|xPixel\(7) & (((\Mux325~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(9),
	datac => \Mux325~17_combout\,
	datad => \Mux325~15_combout\,
	combout => \Mux325~16_combout\);

-- Location: LCCOMB_X39_Y57_N28
\Mux321~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~3_combout\ = (\vga1|xPixel\(5) & \Mux49~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(5),
	datad => \Mux49~0_combout\,
	combout => \Mux321~3_combout\);

-- Location: LCCOMB_X39_Y57_N14
\Mux325~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~8_combout\ = (!\vga1|yPixel\(6) & (!\vga1|xPixel\(5) & (!\vga1|yPixel\(8) & \vga1|yPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|xPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(7),
	combout => \Mux325~8_combout\);

-- Location: LCCOMB_X39_Y57_N26
\Mux325~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~6_combout\ = (\vga1|xPixel\(4) & ((\vga1|xPixel\(5) & (\Mux145~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux137~1_combout\))))) # (!\vga1|xPixel\(4) & (((\Mux145~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(5),
	datac => \Mux145~0_combout\,
	datad => \Mux137~1_combout\,
	combout => \Mux325~6_combout\);

-- Location: LCCOMB_X39_Y57_N6
\Mux325~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~4_combout\ = (\vga1|xPixel\(5) & ((!\vga1|yPixel\(6)) # (!\vga1|xPixel\(4)))) # (!\vga1|xPixel\(5) & (\vga1|xPixel\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(4),
	datad => \vga1|yPixel\(6),
	combout => \Mux325~4_combout\);

-- Location: LCCOMB_X39_Y57_N20
\Mux325~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~5_combout\ = (\Mux325~4_combout\ & (((\Mux137~0_combout\)))) # (!\Mux325~4_combout\ & (!\vga1|xPixel\(5) & (\Mux145~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \Mux145~0_combout\,
	datac => \Mux137~0_combout\,
	datad => \Mux325~4_combout\,
	combout => \Mux325~5_combout\);

-- Location: LCCOMB_X39_Y57_N0
\Mux325~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~7_combout\ = (\vga1|xPixel\(7) & (\vga1|xPixel\(6))) # (!\vga1|xPixel\(7) & ((\vga1|xPixel\(6) & ((\Mux325~5_combout\))) # (!\vga1|xPixel\(6) & (\Mux325~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(6),
	datac => \Mux325~6_combout\,
	datad => \Mux325~5_combout\,
	combout => \Mux325~7_combout\);

-- Location: LCCOMB_X39_Y57_N12
\Mux325~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~9_combout\ = (\vga1|xPixel\(7) & ((\Mux325~7_combout\ & ((\Mux325~8_combout\))) # (!\Mux325~7_combout\ & (\Mux321~3_combout\)))) # (!\vga1|xPixel\(7) & (((\Mux325~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \Mux321~3_combout\,
	datac => \Mux325~8_combout\,
	datad => \Mux325~7_combout\,
	combout => \Mux325~9_combout\);

-- Location: LCCOMB_X39_Y57_N10
\Mux325~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~18_combout\ = (\vga1|xPixel\(8) & (!\vga1|xPixel\(9) & ((\Mux325~9_combout\)))) # (!\vga1|xPixel\(8) & (((\Mux325~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(9),
	datac => \Mux325~16_combout\,
	datad => \Mux325~9_combout\,
	combout => \Mux325~18_combout\);

-- Location: LCCOMB_X33_Y61_N0
\library1|Mux0~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~559_combout\ = (\Mux327~15_combout\ & ((\vga1|xPixel\(1)) # ((!\Mux325~18_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~559_combout\);

-- Location: LCCOMB_X33_Y61_N26
\library1|Mux0~560\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~560_combout\ = (\Mux323~14_combout\ & ((\vga1|yPixel\(2) & ((!\library1|Mux0~559_combout\))) # (!\vga1|yPixel\(2) & (!\Mux327~15_combout\)))) # (!\Mux323~14_combout\ & (((\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~559_combout\,
	combout => \library1|Mux0~560_combout\);

-- Location: LCCOMB_X33_Y61_N2
\library1|Mux0~564\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~564_combout\ = (!\vga1|yPixel\(2) & \Mux327~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~564_combout\);

-- Location: LCCOMB_X33_Y61_N28
\library1|Mux0~565\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~565_combout\ = (!\vga1|xPixel\(1) & (!\Mux323~14_combout\ & (!\Mux325~18_combout\ & \library1|Mux0~564_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~564_combout\,
	combout => \library1|Mux0~565_combout\);

-- Location: LCCOMB_X45_Y55_N22
\Mux321~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~4_combout\ = (\vga1|xPixel\(5) & (!\vga1|xPixel\(4) & ((\Mux137~1_combout\)))) # (!\vga1|xPixel\(5) & (\vga1|xPixel\(4) & (\Mux145~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(4),
	datac => \Mux145~0_combout\,
	datad => \Mux137~1_combout\,
	combout => \Mux321~4_combout\);

-- Location: LCCOMB_X45_Y55_N28
\Mux321~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~5_combout\ = (!\vga1|xPixel\(4) & (!\vga1|xPixel\(5) & \Mux137~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(5),
	datad => \Mux137~1_combout\,
	combout => \Mux321~5_combout\);

-- Location: LCCOMB_X45_Y55_N30
\Mux321~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~6_combout\ = (\vga1|xPixel\(6) & ((\vga1|xPixel\(7)) # ((\Mux321~4_combout\)))) # (!\vga1|xPixel\(6) & (!\vga1|xPixel\(7) & ((\Mux321~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(7),
	datac => \Mux321~4_combout\,
	datad => \Mux321~5_combout\,
	combout => \Mux321~6_combout\);

-- Location: LCCOMB_X45_Y55_N8
\Mux321~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~7_combout\ = (\vga1|xPixel\(7) & (\Mux49~0_combout\ & ((\vga1|xPixel\(5)) # (\Mux321~6_combout\)))) # (!\vga1|xPixel\(7) & (((\Mux321~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(5),
	datac => \Mux321~6_combout\,
	datad => \Mux49~0_combout\,
	combout => \Mux321~7_combout\);

-- Location: LCCOMB_X45_Y55_N16
\Mux241~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux241~0_combout\ = (\vga1|yPixel\(7) & (((!\vga1|yPixel\(8) & !\vga1|yPixel\(6))))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(5) & (\vga1|yPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(6),
	combout => \Mux241~0_combout\);

-- Location: LCCOMB_X45_Y55_N2
\Mux321~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~12_combout\ = (\vga1|xPixel\(4) & ((\vga1|xPixel\(5) & (\Mux145~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux241~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(4),
	datac => \Mux145~0_combout\,
	datad => \Mux241~0_combout\,
	combout => \Mux321~12_combout\);

-- Location: LCCOMB_X45_Y55_N12
\Mux321~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~13_combout\ = (!\vga1|xPixel\(6) & ((\Mux321~12_combout\) # ((\Mux233~0_combout\ & !\vga1|xPixel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux233~0_combout\,
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(6),
	datad => \Mux321~12_combout\,
	combout => \Mux321~13_combout\);

-- Location: LCCOMB_X45_Y55_N26
\Mux321~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~10_combout\ = (!\vga1|xPixel\(6) & ((\vga1|xPixel\(5) & (\Mux33~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux49~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(5),
	datac => \Mux33~0_combout\,
	datad => \Mux49~0_combout\,
	combout => \Mux321~10_combout\);

-- Location: LCCOMB_X45_Y55_N10
\Mux321~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~8_combout\ = (!\vga1|yPixel\(8) & ((\vga1|xPixel\(5) & (\vga1|xPixel\(4) & !\vga1|xPixel\(9))) # (!\vga1|xPixel\(5) & ((\vga1|xPixel\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(5),
	datad => \vga1|xPixel\(9),
	combout => \Mux321~8_combout\);

-- Location: LCCOMB_X45_Y55_N24
\Mux321~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~9_combout\ = (\vga1|yPixel\(7) & (!\vga1|yPixel\(6) & (\vga1|xPixel\(6) & \Mux321~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|yPixel\(6),
	datac => \vga1|xPixel\(6),
	datad => \Mux321~8_combout\,
	combout => \Mux321~9_combout\);

-- Location: LCCOMB_X45_Y55_N4
\Mux321~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~11_combout\ = (!\vga1|xPixel\(7) & ((\Mux321~9_combout\) # ((\vga1|xPixel\(9) & \Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(7),
	datac => \Mux321~10_combout\,
	datad => \Mux321~9_combout\,
	combout => \Mux321~11_combout\);

-- Location: LCCOMB_X45_Y55_N18
\Mux321~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~14_combout\ = (!\vga1|xPixel\(5) & (\vga1|xPixel\(4) & (\vga1|xPixel\(6) & \Mux137~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(6),
	datad => \Mux137~0_combout\,
	combout => \Mux321~14_combout\);

-- Location: LCCOMB_X45_Y55_N20
\Mux321~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~15_combout\ = (\Mux321~11_combout\) # ((\Mux320~2_combout\ & ((\Mux321~13_combout\) # (\Mux321~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~13_combout\,
	datab => \Mux320~2_combout\,
	datac => \Mux321~11_combout\,
	datad => \Mux321~14_combout\,
	combout => \Mux321~15_combout\);

-- Location: LCCOMB_X45_Y55_N6
\Mux321~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~16_combout\ = (\vga1|xPixel\(8) & (!\vga1|xPixel\(9) & (\Mux321~7_combout\))) # (!\vga1|xPixel\(8) & (((\Mux321~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(8),
	datac => \Mux321~7_combout\,
	datad => \Mux321~15_combout\,
	combout => \Mux321~16_combout\);

-- Location: LCCOMB_X42_Y55_N2
\Mux322~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~2_combout\ = (\vga1|xPixel\(7) & ((\vga1|xPixel\(8)) # ((!\vga1|xPixel\(6) & !\vga1|xPixel\(9))))) # (!\vga1|xPixel\(7) & (\vga1|xPixel\(9) & ((\vga1|xPixel\(8)) # (\vga1|xPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(6),
	datad => \vga1|xPixel\(9),
	combout => \Mux322~2_combout\);

-- Location: LCCOMB_X42_Y55_N4
\Mux322~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~3_combout\ = (\vga1|yPixel\(8) & (\vga1|xPixel\(4) & (\vga1|yPixel\(5) & !\vga1|yPixel\(6)))) # (!\vga1|yPixel\(8) & (((\vga1|yPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(6),
	combout => \Mux322~3_combout\);

-- Location: LCCOMB_X42_Y55_N26
\Mux322~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~4_combout\ = (\vga1|yPixel\(7) & (!\vga1|yPixel\(8) & (!\Mux322~3_combout\ & \Mux322~2_combout\))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(8) & (\Mux322~3_combout\ & !\Mux322~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|yPixel\(8),
	datac => \Mux322~3_combout\,
	datad => \Mux322~2_combout\,
	combout => \Mux322~4_combout\);

-- Location: LCCOMB_X42_Y55_N12
\Mux322~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~5_combout\ = (\vga1|xPixel\(8) & (!\Mux322~2_combout\ & ((\Mux322~4_combout\) # (\Mux322~1_combout\)))) # (!\vga1|xPixel\(8) & (\Mux322~2_combout\ & (\Mux322~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \Mux322~2_combout\,
	datac => \Mux322~4_combout\,
	datad => \Mux322~1_combout\,
	combout => \Mux322~5_combout\);

-- Location: LCCOMB_X42_Y55_N22
\Mux322~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~6_combout\ = (\vga1|yPixel\(7) & (!\vga1|xPixel\(4) & (!\vga1|yPixel\(8) & !\vga1|yPixel\(6)))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(8) & (\vga1|xPixel\(4) $ (\vga1|yPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|yPixel\(7),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(6),
	combout => \Mux322~6_combout\);

-- Location: LCCOMB_X41_Y55_N0
\Mux322~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~7_combout\ = (!\vga1|xPixel\(8) & (\Mux322~6_combout\ & ((\vga1|yPixel\(5)) # (!\vga1|yPixel\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datac => \vga1|xPixel\(8),
	datad => \Mux322~6_combout\,
	combout => \Mux322~7_combout\);

-- Location: LCCOMB_X41_Y55_N2
\Mux322~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~8_combout\ = (\vga1|xPixel\(8) & (((\Mux145~0_combout\)))) # (!\vga1|xPixel\(8) & (\vga1|xPixel\(4) & ((\Mux241~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(4),
	datac => \Mux145~0_combout\,
	datad => \Mux241~0_combout\,
	combout => \Mux322~8_combout\);

-- Location: LCCOMB_X41_Y55_N14
\Mux322~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~11_combout\ = (\vga1|xPixel\(6) & (((\vga1|xPixel\(7)) # (\Mux322~8_combout\)))) # (!\vga1|xPixel\(6) & (\Mux322~10_combout\ & (!\vga1|xPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \Mux322~10_combout\,
	datac => \vga1|xPixel\(7),
	datad => \Mux322~8_combout\,
	combout => \Mux322~11_combout\);

-- Location: LCCOMB_X41_Y55_N10
\Mux322~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~15_combout\ = (\vga1|xPixel\(7) & ((\Mux322~11_combout\ & ((\Mux322~14_combout\))) # (!\Mux322~11_combout\ & (\Mux322~7_combout\)))) # (!\vga1|xPixel\(7) & (((\Mux322~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \Mux322~7_combout\,
	datac => \Mux322~11_combout\,
	datad => \Mux322~14_combout\,
	combout => \Mux322~15_combout\);

-- Location: LCCOMB_X41_Y55_N16
\Mux322~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~16_combout\ = (\vga1|xPixel\(5) & (!\vga1|xPixel\(9) & ((\Mux322~15_combout\)))) # (!\vga1|xPixel\(5) & (((\Mux322~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(5),
	datac => \Mux322~5_combout\,
	datad => \Mux322~15_combout\,
	combout => \Mux322~16_combout\);

-- Location: LCCOMB_X33_Y61_N4
\library1|Mux0~561\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~561_combout\ = (\Mux327~15_combout\ & ((!\Mux323~14_combout\) # (!\Mux325~18_combout\))) # (!\Mux327~15_combout\ & ((\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~561_combout\);

-- Location: LCCOMB_X33_Y61_N6
\library1|Mux0~562\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~562_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(2) & (\Mux323~14_combout\)) # (!\vga1|yPixel\(2) & ((!\Mux325~18_combout\))))) # (!\Mux327~15_combout\ & (((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~562_combout\);

-- Location: LCCOMB_X33_Y61_N12
\library1|Mux0~563\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~563_combout\ = (\Mux322~16_combout\ & ((\Mux321~16_combout\) # ((\library1|Mux0~561_combout\)))) # (!\Mux322~16_combout\ & (!\Mux321~16_combout\ & ((\library1|Mux0~562_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~561_combout\,
	datad => \library1|Mux0~562_combout\,
	combout => \library1|Mux0~563_combout\);

-- Location: LCCOMB_X33_Y61_N22
\library1|Mux0~566\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~566_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~563_combout\ & ((\library1|Mux0~565_combout\))) # (!\library1|Mux0~563_combout\ & (\library1|Mux0~560_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~563_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~560_combout\,
	datab => \library1|Mux0~565_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~563_combout\,
	combout => \library1|Mux0~566_combout\);

-- Location: LCCOMB_X34_Y63_N22
\library1|Mux0~580\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~580_combout\ = (\Mux323~14_combout\ & ((\Mux327~15_combout\ & ((!\vga1|yPixel\(2)))) # (!\Mux327~15_combout\ & (!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~580_combout\);

-- Location: LCCOMB_X34_Y63_N14
\library1|Mux0~578\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~578_combout\ = (\Mux322~16_combout\ & ((\vga1|xPixel\(1) & ((\vga1|yPixel\(1)) # (\vga1|yPixel\(2)))) # (!\vga1|xPixel\(1) & (\vga1|yPixel\(1) & \vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~578_combout\);

-- Location: LCCOMB_X34_Y63_N12
\library1|Mux0~579\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~579_combout\ = (\Mux327~15_combout\ & ((\Mux323~14_combout\ & (!\Mux322~16_combout\)) # (!\Mux323~14_combout\ & ((!\library1|Mux0~578_combout\))))) # (!\Mux327~15_combout\ & (\Mux322~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~578_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~579_combout\);

-- Location: LCCOMB_X34_Y63_N20
\library1|Mux0~581\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~581_combout\ = (\Mux325~18_combout\ & ((\Mux321~16_combout\) # ((\library1|Mux0~579_combout\)))) # (!\Mux325~18_combout\ & (!\Mux321~16_combout\ & (\library1|Mux0~580_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~580_combout\,
	datad => \library1|Mux0~579_combout\,
	combout => \library1|Mux0~581_combout\);

-- Location: LCCOMB_X34_Y63_N30
\library1|Mux0~1173\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1173_combout\ = (\Mux321~16_combout\ & (!\vga1|xPixel\(1) & (\Mux327~15_combout\ & !\library1|Mux0~581_combout\))) # (!\Mux321~16_combout\ & (((\library1|Mux0~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux321~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~581_combout\,
	combout => \library1|Mux0~1173_combout\);

-- Location: LCCOMB_X34_Y63_N18
\library1|Mux0~582\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~582_combout\ = (\Mux327~15_combout\ & (((\vga1|xPixel\(1) & \vga1|yPixel\(2))) # (!\Mux323~14_combout\))) # (!\Mux327~15_combout\ & (((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~582_combout\);

-- Location: LCCOMB_X34_Y63_N4
\library1|Mux0~1174\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1174_combout\ = (\library1|Mux0~1173_combout\ & (((\library1|Mux0~581_combout\)) # (!\Mux322~16_combout\))) # (!\library1|Mux0~1173_combout\ & (!\Mux322~16_combout\ & (!\library1|Mux0~582_combout\ & \library1|Mux0~581_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1173_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~582_combout\,
	datad => \library1|Mux0~581_combout\,
	combout => \library1|Mux0~1174_combout\);

-- Location: LCCOMB_X40_Y55_N20
\Mux324~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~2_combout\ = (\Mux33~0_combout\ & \vga1|xPixel\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~0_combout\,
	datad => \vga1|xPixel\(6),
	combout => \Mux324~2_combout\);

-- Location: LCCOMB_X40_Y55_N28
\Mux324~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~4_combout\ = (\vga1|xPixel\(4) & (((\Mux145~0_combout\)))) # (!\vga1|xPixel\(4) & (!\vga1|xPixel\(6) & (\Mux241~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(6),
	datac => \Mux241~0_combout\,
	datad => \Mux145~0_combout\,
	combout => \Mux324~4_combout\);

-- Location: LCCOMB_X40_Y55_N18
\Mux324~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~5_combout\ = (\vga1|xPixel\(5) & ((\vga1|xPixel\(8)) # ((\Mux324~3_combout\)))) # (!\vga1|xPixel\(5) & (!\vga1|xPixel\(8) & ((\Mux324~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(8),
	datac => \Mux324~3_combout\,
	datad => \Mux324~4_combout\,
	combout => \Mux324~5_combout\);

-- Location: LCCOMB_X40_Y55_N22
\Mux324~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~6_combout\ = (\vga1|xPixel\(8) & ((\Mux324~5_combout\ & (\Mux323~2_combout\)) # (!\Mux324~5_combout\ & ((\Mux324~2_combout\))))) # (!\vga1|xPixel\(8) & (((\Mux324~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~2_combout\,
	datab => \Mux324~2_combout\,
	datac => \vga1|xPixel\(8),
	datad => \Mux324~5_combout\,
	combout => \Mux324~6_combout\);

-- Location: LCCOMB_X40_Y55_N4
\Mux324~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~10_combout\ = (\vga1|xPixel\(4) & (!\vga1|yPixel\(6) & (!\vga1|yPixel\(8) & !\vga1|xPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(8),
	datad => \vga1|xPixel\(9),
	combout => \Mux324~10_combout\);

-- Location: LCCOMB_X40_Y55_N26
\Mux324~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~11_combout\ = (\vga1|yPixel\(7) & (\vga1|xPixel\(5) & (\Mux324~10_combout\ & \vga1|xPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|xPixel\(5),
	datac => \Mux324~10_combout\,
	datad => \vga1|xPixel\(6),
	combout => \Mux324~11_combout\);

-- Location: LCCOMB_X40_Y55_N24
\Mux324~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~12_combout\ = (\vga1|yPixel\(7) & (((\vga1|xPixel\(5) & !\vga1|xPixel\(6))))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(5) & (!\vga1|xPixel\(5) & \vga1|xPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|yPixel\(5),
	datac => \vga1|xPixel\(5),
	datad => \vga1|xPixel\(6),
	combout => \Mux324~12_combout\);

-- Location: LCCOMB_X40_Y55_N30
\Mux324~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~13_combout\ = (!\vga1|yPixel\(8) & (!\vga1|yPixel\(6) & (\vga1|xPixel\(9) & \Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(6),
	datac => \vga1|xPixel\(9),
	datad => \Mux324~12_combout\,
	combout => \Mux324~13_combout\);

-- Location: LCCOMB_X40_Y55_N8
\Mux324~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~7_combout\ = (\vga1|xPixel\(4) & ((\vga1|xPixel\(5) & (\Mux137~1_combout\)) # (!\vga1|xPixel\(5) & ((\Mux145~0_combout\))))) # (!\vga1|xPixel\(4) & (((\Mux137~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(5),
	datac => \Mux137~1_combout\,
	datad => \Mux145~0_combout\,
	combout => \Mux324~7_combout\);

-- Location: LCCOMB_X39_Y55_N2
\Mux324~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~8_combout\ = (\vga1|xPixel\(5) & (\Mux137~1_combout\ & ((!\vga1|xPixel\(4))))) # (!\vga1|xPixel\(5) & ((\vga1|xPixel\(4) & (\Mux137~1_combout\)) # (!\vga1|xPixel\(4) & ((\Mux137~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux137~1_combout\,
	datab => \vga1|xPixel\(5),
	datac => \Mux137~0_combout\,
	datad => \vga1|xPixel\(4),
	combout => \Mux324~8_combout\);

-- Location: LCCOMB_X40_Y55_N6
\Mux324~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~9_combout\ = (\Mux321~2_combout\ & ((\vga1|xPixel\(6) & (\Mux324~7_combout\)) # (!\vga1|xPixel\(6) & ((\Mux324~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \Mux324~7_combout\,
	datac => \Mux321~2_combout\,
	datad => \Mux324~8_combout\,
	combout => \Mux324~9_combout\);

-- Location: LCCOMB_X40_Y55_N0
\Mux324~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~14_combout\ = (\Mux324~9_combout\) # ((!\vga1|xPixel\(8) & ((\Mux324~11_combout\) # (\Mux324~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~11_combout\,
	datab => \vga1|xPixel\(8),
	datac => \Mux324~13_combout\,
	datad => \Mux324~9_combout\,
	combout => \Mux324~14_combout\);

-- Location: LCCOMB_X40_Y55_N10
\Mux324~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~15_combout\ = (\vga1|xPixel\(7) & (!\vga1|xPixel\(9) & (\Mux324~6_combout\))) # (!\vga1|xPixel\(7) & (((\Mux324~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(7),
	datac => \Mux324~6_combout\,
	datad => \Mux324~14_combout\,
	combout => \Mux324~15_combout\);

-- Location: LCCOMB_X38_Y59_N8
\library1|Mux0~574\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~574_combout\ = (\Mux323~14_combout\ & ((!\Mux325~18_combout\))) # (!\Mux323~14_combout\ & (\vga1|yPixel\(1) & \Mux325~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~574_combout\);

-- Location: LCCOMB_X38_Y59_N18
\library1|Mux0~575\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~575_combout\ = (\Mux325~18_combout\ & (!\Mux322~16_combout\ & (!\library1|Mux0~574_combout\ & \Mux327~15_combout\))) # (!\Mux325~18_combout\ & ((\library1|Mux0~574_combout\ & ((!\Mux327~15_combout\))) # (!\library1|Mux0~574_combout\ & 
-- (\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~574_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~575_combout\);

-- Location: LCCOMB_X38_Y59_N28
\library1|Mux0~572\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~572_combout\ = (\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # (!\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|xPixel\(1),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~572_combout\);

-- Location: LCCOMB_X38_Y59_N2
\library1|Mux0~573\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~573_combout\ = (\Mux322~16_combout\ & ((\Mux327~15_combout\) # ((!\Mux323~14_combout\)))) # (!\Mux322~16_combout\ & ((\library1|Mux0~572_combout\ & (\Mux327~15_combout\)) # (!\library1|Mux0~572_combout\ & ((\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~572_combout\,
	combout => \library1|Mux0~573_combout\);

-- Location: LCCOMB_X38_Y59_N12
\library1|Mux0~576\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~576_combout\ = (\Mux321~16_combout\ & ((\vga1|yPixel\(2) & (\library1|Mux0~575_combout\)) # (!\vga1|yPixel\(2) & ((\library1|Mux0~573_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~575_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~573_combout\,
	combout => \library1|Mux0~576_combout\);

-- Location: LCCOMB_X34_Y63_N8
\library1|Mux0~570\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~570_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(2) & ((!\Mux325~18_combout\))) # (!\vga1|yPixel\(2) & (\Mux323~14_combout\)))) # (!\Mux327~15_combout\ & (\Mux323~14_combout\ $ (((\Mux325~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux327~15_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~570_combout\);

-- Location: LCCOMB_X34_Y63_N16
\library1|Mux0~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~293_combout\ = (\Mux322~16_combout\ & !\Mux321~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux322~16_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~293_combout\);

-- Location: LCCOMB_X34_Y63_N26
\library1|Mux0~567\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~567_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(1) & ((!\vga1|yPixel\(2)))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(1) & \vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~567_combout\);

-- Location: LCCOMB_X42_Y60_N22
\library1|Mux0~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~250_combout\ = (\Mux321~16_combout\ & !\Mux322~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux321~16_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~250_combout\);

-- Location: LCCOMB_X34_Y63_N24
\library1|Mux0~568\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~568_combout\ = (\Mux327~15_combout\ & (!\vga1|yPixel\(2) & ((\library1|Mux0~250_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~567_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~567_combout\,
	datad => \library1|Mux0~250_combout\,
	combout => \library1|Mux0~568_combout\);

-- Location: LCCOMB_X34_Y63_N10
\library1|Mux0~569\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~569_combout\ = (\Mux323~14_combout\ & (\library1|Mux0~568_combout\ & ((\library1|Mux0~293_combout\) # (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \library1|Mux0~293_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~568_combout\,
	combout => \library1|Mux0~569_combout\);

-- Location: LCCOMB_X34_Y63_N6
\library1|Mux0~571\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~571_combout\ = (\library1|Mux0~569_combout\) # ((\Mux321~16_combout\ & (!\library1|Mux0~570_combout\ & \Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~570_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~569_combout\,
	combout => \library1|Mux0~571_combout\);

-- Location: LCCOMB_X34_Y63_N28
\library1|Mux0~577\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~577_combout\ = (\Mux320~4_combout\ & (\Mux324~15_combout\)) # (!\Mux320~4_combout\ & ((\Mux324~15_combout\ & ((\library1|Mux0~571_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~576_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~576_combout\,
	datad => \library1|Mux0~571_combout\,
	combout => \library1|Mux0~577_combout\);

-- Location: LCCOMB_X34_Y63_N0
\library1|Mux0~583\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~583_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~577_combout\ & ((\library1|Mux0~1174_combout\))) # (!\library1|Mux0~577_combout\ & (\library1|Mux0~566_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~577_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~566_combout\,
	datac => \library1|Mux0~1174_combout\,
	datad => \library1|Mux0~577_combout\,
	combout => \library1|Mux0~583_combout\);

-- Location: LCCOMB_X39_Y63_N4
\library1|Mux0~699\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~699_combout\ = (\Mux323~14_combout\ & (\vga1|xPixel\(1) $ ((!\Mux327~15_combout\)))) # (!\Mux323~14_combout\ & (((\Mux327~15_combout\ & \vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~699_combout\);

-- Location: LCCOMB_X38_Y63_N24
\library1|Mux0~697\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~697_combout\ = (\Mux322~16_combout\ & (\vga1|yPixel\(2) & !\Mux327~15_combout\)) # (!\Mux322~16_combout\ & ((\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~697_combout\);

-- Location: LCCOMB_X38_Y63_N10
\library1|Mux0~698\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~698_combout\ = (\Mux323~14_combout\ & (!\Mux322~16_combout\ & (\vga1|xPixel\(1) $ (!\library1|Mux0~697_combout\)))) # (!\Mux323~14_combout\ & (((\vga1|xPixel\(1) & \library1|Mux0~697_combout\)) # (!\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~697_combout\,
	combout => \library1|Mux0~698_combout\);

-- Location: LCCOMB_X39_Y63_N22
\library1|Mux0~700\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~700_combout\ = (\Mux325~18_combout\ & (!\Mux322~16_combout\ & (\library1|Mux0~699_combout\))) # (!\Mux325~18_combout\ & (((\library1|Mux0~698_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~699_combout\,
	datad => \library1|Mux0~698_combout\,
	combout => \library1|Mux0~700_combout\);

-- Location: LCCOMB_X40_Y63_N16
\library1|Mux0~701\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~701_combout\ = (\Mux323~14_combout\ & (!\Mux322~16_combout\ & ((!\Mux325~18_combout\) # (!\vga1|yPixel\(2))))) # (!\Mux323~14_combout\ & (((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~701_combout\);

-- Location: LCCOMB_X40_Y60_N28
\library1|Mux0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~175_combout\ = (!\Mux325~18_combout\ & !\Mux323~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~175_combout\);

-- Location: LCCOMB_X39_Y63_N24
\library1|Mux0~702\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~702_combout\ = (\Mux327~15_combout\ & (((!\library1|Mux0~701_combout\)))) # (!\Mux327~15_combout\ & (((!\library1|Mux0~175_combout\)) # (!\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~701_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~175_combout\,
	combout => \library1|Mux0~702_combout\);

-- Location: LCCOMB_X39_Y63_N10
\library1|Mux0~703\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~703_combout\ = (\Mux321~16_combout\ & (\library1|Mux0~700_combout\)) # (!\Mux321~16_combout\ & ((\library1|Mux0~702_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~700_combout\,
	datad => \library1|Mux0~702_combout\,
	combout => \library1|Mux0~703_combout\);

-- Location: LCCOMB_X40_Y63_N14
\library1|Mux0~715\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~715_combout\ = (\Mux322~16_combout\) # ((\Mux323~14_combout\ & ((\vga1|yPixel\(2)) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~16_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~715_combout\);

-- Location: LCCOMB_X40_Y63_N30
\library1|Mux0~721\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~721_combout\ = (\Mux322~16_combout\) # ((\Mux323~14_combout\ & ((\vga1|xPixel\(1)) # (\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~16_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~721_combout\);

-- Location: LCCOMB_X40_Y63_N8
\library1|Mux0~718\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~718_combout\ = (\vga1|xPixel\(1) & (\Mux322~16_combout\ & ((\vga1|yPixel\(2)) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~718_combout\);

-- Location: LCCOMB_X40_Y63_N10
\library1|Mux0~719\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~719_combout\ = ((\Mux323~14_combout\ & (\Mux322~16_combout\)) # (!\Mux323~14_combout\ & ((!\library1|Mux0~718_combout\)))) # (!\Mux325~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~718_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~719_combout\);

-- Location: LCCOMB_X40_Y63_N12
\library1|Mux0~716\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~716_combout\ = (\vga1|yPixel\(2) & ((\vga1|xPixel\(1)))) # (!\vga1|yPixel\(2) & (\vga1|yPixel\(1) & !\vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~716_combout\);

-- Location: LCCOMB_X40_Y63_N18
\library1|Mux0~717\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~717_combout\ = (\Mux325~18_combout\ & ((\Mux323~14_combout\) # (\library1|Mux0~716_combout\ $ (!\vga1|yPixel\(2))))) # (!\Mux325~18_combout\ & (((!\vga1|yPixel\(2) & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~716_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~717_combout\);

-- Location: LCCOMB_X40_Y63_N2
\library1|Mux0~1125\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1125_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~717_combout\))) # (!\Mux322~16_combout\ & (!\Mux325~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~717_combout\,
	combout => \library1|Mux0~1125_combout\);

-- Location: LCCOMB_X40_Y63_N20
\library1|Mux0~720\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~720_combout\ = (\Mux321~16_combout\ & (((\Mux327~15_combout\)))) # (!\Mux321~16_combout\ & ((\Mux327~15_combout\ & ((\library1|Mux0~1125_combout\))) # (!\Mux327~15_combout\ & (\library1|Mux0~719_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~719_combout\,
	datab => \Mux321~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~1125_combout\,
	combout => \library1|Mux0~720_combout\);

-- Location: LCCOMB_X40_Y63_N26
\library1|Mux0~1163\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1163_combout\ = (\Mux321~16_combout\ & (\Mux325~18_combout\ & ((!\library1|Mux0~720_combout\) # (!\library1|Mux0~721_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~720_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~721_combout\,
	datad => \library1|Mux0~720_combout\,
	combout => \library1|Mux0~1163_combout\);

-- Location: LCCOMB_X40_Y63_N0
\library1|Mux0~1164\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1164_combout\ = (\library1|Mux0~1163_combout\ & ((\library1|Mux0~720_combout\) # (!\library1|Mux0~715_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \library1|Mux0~715_combout\,
	datac => \library1|Mux0~1163_combout\,
	datad => \library1|Mux0~720_combout\,
	combout => \library1|Mux0~1164_combout\);

-- Location: LCCOMB_X40_Y61_N16
\library1|Mux0~706\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~706_combout\ = (\vga1|yPixel\(2) & !\vga1|yPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|yPixel\(2),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~706_combout\);

-- Location: LCCOMB_X39_Y63_N8
\library1|Mux0~707\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~707_combout\ = (\Mux322~16_combout\ & (!\Mux321~16_combout\ & (!\Mux327~15_combout\ & \library1|Mux0~706_combout\))) # (!\Mux322~16_combout\ & (\Mux321~16_combout\ & (\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux321~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~706_combout\,
	combout => \library1|Mux0~707_combout\);

-- Location: LCCOMB_X39_Y61_N24
\library1|Mux0~704\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~704_combout\ = (\Mux325~18_combout\ & (!\Mux323~14_combout\ & ((\vga1|yPixel\(2)) # (!\Mux327~15_combout\)))) # (!\Mux325~18_combout\ & (((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~704_combout\);

-- Location: LCCOMB_X39_Y61_N6
\library1|Mux0~705\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~705_combout\ = (\Mux321~16_combout\ & (\Mux322~16_combout\ & !\library1|Mux0~704_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~704_combout\,
	combout => \library1|Mux0~705_combout\);

-- Location: LCCOMB_X39_Y63_N14
\library1|Mux0~1124\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1124_combout\ = (\library1|Mux0~705_combout\) # ((\Mux323~14_combout\ & (\Mux325~18_combout\ & \library1|Mux0~707_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~707_combout\,
	datad => \library1|Mux0~705_combout\,
	combout => \library1|Mux0~1124_combout\);

-- Location: LCCOMB_X38_Y63_N12
\library1|Mux0~708\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~708_combout\ = ((\Mux327~15_combout\) # (!\Mux325~18_combout\)) # (!\vga1|yPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~708_combout\);

-- Location: LCCOMB_X38_Y63_N22
\library1|Mux0~709\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~709_combout\ = (\Mux321~16_combout\ & (\Mux322~16_combout\ & \library1|Mux0~708_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~708_combout\,
	combout => \library1|Mux0~709_combout\);

-- Location: LCCOMB_X38_Y63_N2
\library1|Mux0~711\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~711_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(2) & ((!\vga1|yPixel\(1)))) # (!\vga1|yPixel\(2) & (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~711_combout\);

-- Location: LCCOMB_X38_Y63_N8
\library1|Mux0~712\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~712_combout\ = (\Mux321~16_combout\ & ((\Mux323~14_combout\ & (!\Mux325~18_combout\)) # (!\Mux323~14_combout\ & (\Mux325~18_combout\ & \library1|Mux0~711_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~711_combout\,
	combout => \library1|Mux0~712_combout\);

-- Location: LCCOMB_X38_Y63_N20
\library1|Mux0~710\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~710_combout\ = (!\Mux321~16_combout\ & (!\vga1|yPixel\(1) & (\library1|Mux0~175_combout\ & \library1|Mux0~564_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~175_combout\,
	datad => \library1|Mux0~564_combout\,
	combout => \library1|Mux0~710_combout\);

-- Location: LCCOMB_X38_Y63_N14
\library1|Mux0~713\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~713_combout\ = (\library1|Mux0~709_combout\) # ((!\Mux322~16_combout\ & ((\library1|Mux0~712_combout\) # (\library1|Mux0~710_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~709_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~712_combout\,
	datad => \library1|Mux0~710_combout\,
	combout => \library1|Mux0~713_combout\);

-- Location: LCCOMB_X39_Y63_N6
\library1|Mux0~714\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~714_combout\ = (\Mux320~4_combout\ & (\Mux324~15_combout\)) # (!\Mux320~4_combout\ & ((\Mux324~15_combout\ & (\library1|Mux0~1124_combout\)) # (!\Mux324~15_combout\ & ((\library1|Mux0~713_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~1124_combout\,
	datad => \library1|Mux0~713_combout\,
	combout => \library1|Mux0~714_combout\);

-- Location: LCCOMB_X39_Y63_N28
\library1|Mux0~722\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~722_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~714_combout\ & ((\library1|Mux0~1164_combout\))) # (!\library1|Mux0~714_combout\ & (\library1|Mux0~703_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~714_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~703_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~1164_combout\,
	datad => \library1|Mux0~714_combout\,
	combout => \library1|Mux0~722_combout\);

-- Location: LCCOMB_X35_Y57_N22
\library1|Mux0~632\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~632_combout\ = (\Mux320~4_combout\) # (\Mux325~18_combout\ $ (((\Mux323~14_combout\) # (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~632_combout\);

-- Location: LCCOMB_X36_Y56_N8
\library1|Mux0~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~310_combout\ = (\vga1|yPixel\(2) & (!\vga1|xPixel\(1) & \vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~310_combout\);

-- Location: LCCOMB_X35_Y57_N6
\library1|Mux0~624\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~624_combout\ = (\vga1|xPixel\(1) & (!\vga1|yPixel\(2) & ((\Mux323~14_combout\) # (!\vga1|yPixel\(1))))) # (!\vga1|xPixel\(1) & (((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~624_combout\);

-- Location: LCCOMB_X35_Y57_N28
\library1|Mux0~625\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~625_combout\ = (\Mux320~4_combout\ & (((\library1|Mux0~624_combout\)))) # (!\Mux320~4_combout\ & (((\Mux323~14_combout\)) # (!\library1|Mux0~310_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~310_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~624_combout\,
	combout => \library1|Mux0~625_combout\);

-- Location: LCCOMB_X35_Y57_N20
\library1|Mux0~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~360_combout\ = (!\vga1|xPixel\(1) & !\vga1|yPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~360_combout\);

-- Location: LCCOMB_X34_Y57_N0
\library1|Mux0~629\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~629_combout\ = \vga1|yPixel\(2) $ (((\vga1|xPixel\(1)) # ((\vga1|xPixel\(0)) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~629_combout\);

-- Location: LCCOMB_X35_Y57_N26
\library1|Mux0~630\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~630_combout\ = (\Mux320~4_combout\ & (((!\Mux323~14_combout\)) # (!\library1|Mux0~360_combout\))) # (!\Mux320~4_combout\ & (((\library1|Mux0~629_combout\) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~360_combout\,
	datac => \library1|Mux0~629_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~630_combout\);

-- Location: LCCOMB_X38_Y57_N26
\library1|Mux0~626\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~626_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & ((\vga1|xPixel\(1)) # (\vga1|xPixel\(0))))) # (!\vga1|yPixel\(2) & (((\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(1),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~626_combout\);

-- Location: LCCOMB_X35_Y57_N30
\library1|Mux0~627\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~627_combout\ = (\vga1|yPixel\(2) & ((\Mux320~4_combout\) # ((!\library1|Mux0~626_combout\ & !\Mux323~14_combout\)))) # (!\vga1|yPixel\(2) & ((\library1|Mux0~626_combout\ & (!\Mux323~14_combout\)) # (!\library1|Mux0~626_combout\ & 
-- ((\Mux320~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~626_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~627_combout\);

-- Location: LCCOMB_X35_Y57_N12
\library1|Mux0~1167\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1167_combout\ = (\Mux320~4_combout\ & ((\vga1|xPixel\(1) & ((\Mux323~14_combout\))) # (!\vga1|xPixel\(1) & (!\vga1|yPixel\(2))))) # (!\Mux320~4_combout\ & (!\vga1|yPixel\(2) & ((!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux320~4_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1167_combout\);

-- Location: LCCOMB_X35_Y57_N18
\library1|Mux0~1168\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1168_combout\ = (\Mux320~4_combout\ & (\library1|Mux0~1167_combout\ & ((\Mux323~14_combout\) # (!\vga1|yPixel\(1))))) # (!\Mux320~4_combout\ & (!\Mux323~14_combout\ & (\vga1|yPixel\(1) $ (\library1|Mux0~1167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1167_combout\,
	combout => \library1|Mux0~1168_combout\);

-- Location: LCCOMB_X35_Y57_N16
\library1|Mux0~628\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~628_combout\ = (\Mux327~15_combout\ & (\Mux325~18_combout\)) # (!\Mux327~15_combout\ & ((\Mux325~18_combout\ & (\library1|Mux0~627_combout\)) # (!\Mux325~18_combout\ & ((\library1|Mux0~1168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~627_combout\,
	datad => \library1|Mux0~1168_combout\,
	combout => \library1|Mux0~628_combout\);

-- Location: LCCOMB_X35_Y57_N24
\library1|Mux0~631\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~631_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~628_combout\ & ((\library1|Mux0~630_combout\))) # (!\library1|Mux0~628_combout\ & (\library1|Mux0~625_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~628_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~625_combout\,
	datac => \library1|Mux0~630_combout\,
	datad => \library1|Mux0~628_combout\,
	combout => \library1|Mux0~631_combout\);

-- Location: LCCOMB_X35_Y57_N0
\library1|Mux0~633\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~633_combout\ = (\Mux322~16_combout\ & (!\library1|Mux0~632_combout\)) # (!\Mux322~16_combout\ & ((\library1|Mux0~631_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \library1|Mux0~632_combout\,
	datad => \library1|Mux0~631_combout\,
	combout => \library1|Mux0~633_combout\);

-- Location: LCCOMB_X38_Y62_N2
\library1|Mux0~592\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~592_combout\ = (\Mux323~14_combout\ & (\vga1|xPixel\(1) $ (((\Mux327~15_combout\))))) # (!\Mux323~14_combout\ & (((\vga1|yPixel\(2) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~592_combout\);

-- Location: LCCOMB_X38_Y62_N8
\library1|Mux0~593\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~593_combout\ = (\Mux322~16_combout\) # (\library1|Mux0~592_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~592_combout\,
	combout => \library1|Mux0~593_combout\);

-- Location: LCCOMB_X39_Y61_N8
\library1|Mux0~586\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~586_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1)) # (\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~586_combout\);

-- Location: LCCOMB_X39_Y61_N18
\library1|Mux0~587\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~587_combout\ = (\library1|Mux0~586_combout\ & (\Mux323~14_combout\ $ (((!\Mux327~15_combout\))))) # (!\library1|Mux0~586_combout\ & ((\Mux323~14_combout\) # ((\vga1|xPixel\(1) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~586_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~587_combout\);

-- Location: LCCOMB_X39_Y61_N22
\library1|Mux0~1121\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1121_combout\ = (\Mux322~16_combout\ & ((\Mux323~14_combout\) # ((!\Mux327~15_combout\)))) # (!\Mux322~16_combout\ & ((\Mux327~15_combout\ $ (\library1|Mux0~587_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~587_combout\,
	combout => \library1|Mux0~1121_combout\);

-- Location: LCCOMB_X39_Y61_N30
\library1|Mux0~589\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~589_combout\ = (!\Mux322~16_combout\ & ((\vga1|xPixel\(1) & ((!\Mux327~15_combout\))) # (!\vga1|xPixel\(1) & (!\vga1|yPixel\(1) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~589_combout\);

-- Location: LCCOMB_X39_Y61_N12
\library1|Mux0~588\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~588_combout\ = (\vga1|xPixel\(1) & (!\Mux327~15_combout\ & ((\vga1|yPixel\(1)) # (\Mux322~16_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux322~16_combout\ $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~588_combout\);

-- Location: LCCOMB_X39_Y61_N28
\library1|Mux0~590\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~590_combout\ = (\Mux323~14_combout\) # ((\vga1|yPixel\(2) & (!\library1|Mux0~589_combout\)) # (!\vga1|yPixel\(2) & ((!\library1|Mux0~588_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~589_combout\,
	datad => \library1|Mux0~588_combout\,
	combout => \library1|Mux0~590_combout\);

-- Location: LCCOMB_X39_Y61_N14
\library1|Mux0~591\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~591_combout\ = (\Mux320~4_combout\ & (\Mux325~18_combout\)) # (!\Mux320~4_combout\ & ((\Mux325~18_combout\ & (\library1|Mux0~1121_combout\)) # (!\Mux325~18_combout\ & ((\library1|Mux0~590_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~1121_combout\,
	datad => \library1|Mux0~590_combout\,
	combout => \library1|Mux0~591_combout\);

-- Location: LCCOMB_X38_Y63_N30
\library1|Mux0~584\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~584_combout\ = (\vga1|xPixel\(1) & ((\vga1|yPixel\(2)) # (!\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \Mux322~16_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~584_combout\);

-- Location: LCCOMB_X38_Y62_N16
\library1|Mux0~585\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~585_combout\ = (\Mux323~14_combout\ & (!\Mux322~16_combout\ & (\library1|Mux0~584_combout\ $ (!\Mux327~15_combout\)))) # (!\Mux323~14_combout\ & (((!\library1|Mux0~584_combout\ & \Mux327~15_combout\)) # (!\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~584_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~585_combout\);

-- Location: LCCOMB_X38_Y62_N26
\library1|Mux0~594\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~594_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~591_combout\ & (!\library1|Mux0~593_combout\)) # (!\library1|Mux0~591_combout\ & ((\library1|Mux0~585_combout\))))) # (!\Mux320~4_combout\ & (((\library1|Mux0~591_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~593_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~591_combout\,
	datad => \library1|Mux0~585_combout\,
	combout => \library1|Mux0~594_combout\);

-- Location: LCCOMB_X38_Y56_N14
\library1|Mux0~610\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~610_combout\ = (\vga1|yPixel\(2) & ((\Mux327~15_combout\ & (!\vga1|yPixel\(1))) # (!\Mux327~15_combout\ & ((\Mux325~18_combout\))))) # (!\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((\Mux327~15_combout\))) # (!\vga1|yPixel\(1) & 
-- (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~610_combout\);

-- Location: LCCOMB_X38_Y56_N28
\library1|Mux0~611\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~611_combout\ = (\vga1|yPixel\(1) & ((\Mux327~15_combout\ & (\vga1|yPixel\(2))) # (!\Mux327~15_combout\ & ((\Mux325~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~611_combout\);

-- Location: LCCOMB_X38_Y56_N22
\library1|Mux0~612\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~612_combout\ = (\vga1|xPixel\(1) & ((\Mux327~15_combout\ $ (!\library1|Mux0~610_combout\)) # (!\library1|Mux0~611_combout\))) # (!\vga1|xPixel\(1) & (!\Mux327~15_combout\ & (\library1|Mux0~610_combout\ $ (\library1|Mux0~611_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~610_combout\,
	datad => \library1|Mux0~611_combout\,
	combout => \library1|Mux0~612_combout\);

-- Location: LCCOMB_X38_Y56_N12
\library1|Mux0~613\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~613_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~610_combout\ $ (\library1|Mux0~611_combout\)) # (!\vga1|xPixel\(1)))) # (!\Mux327~15_combout\ & ((\library1|Mux0~610_combout\ & (!\vga1|xPixel\(1))) # (!\library1|Mux0~610_combout\ & 
-- ((\library1|Mux0~611_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~610_combout\,
	datad => \library1|Mux0~611_combout\,
	combout => \library1|Mux0~613_combout\);

-- Location: LCCOMB_X38_Y56_N30
\library1|Mux0~614\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~614_combout\ = (\Mux323~14_combout\ & ((!\library1|Mux0~613_combout\))) # (!\Mux323~14_combout\ & (!\library1|Mux0~612_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~612_combout\,
	datad => \library1|Mux0~613_combout\,
	combout => \library1|Mux0~614_combout\);

-- Location: LCCOMB_X38_Y56_N8
\library1|Mux0~619\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~619_combout\ = (\vga1|yPixel\(2) & (((\vga1|yPixel\(1) & \Mux325~18_combout\)) # (!\Mux327~15_combout\))) # (!\vga1|yPixel\(2) & ((\Mux327~15_combout\) # (\vga1|yPixel\(1) $ (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~619_combout\);

-- Location: LCCOMB_X38_Y56_N4
\library1|Mux0~615\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~615_combout\ = (\vga1|yPixel\(2) & (\Mux327~15_combout\ & ((\vga1|yPixel\(1)) # (!\Mux325~18_combout\)))) # (!\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & (!\Mux325~18_combout\ & \Mux327~15_combout\)) # (!\vga1|yPixel\(1) & (\Mux325~18_combout\ 
-- & !\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~615_combout\);

-- Location: LCCOMB_X38_Y56_N26
\library1|Mux0~616\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~616_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & (\Mux325~18_combout\ $ (!\Mux327~15_combout\)))) # (!\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & (!\Mux325~18_combout\ & \Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~616_combout\);

-- Location: LCCOMB_X38_Y56_N20
\library1|Mux0~617\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~617_combout\ = (\Mux325~18_combout\ & (\vga1|yPixel\(2) $ (((!\Mux327~15_combout\) # (!\vga1|yPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~617_combout\);

-- Location: LCCOMB_X38_Y56_N18
\library1|Mux0~618\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~618_combout\ = (\vga1|xPixel\(1) & (\Mux323~14_combout\)) # (!\vga1|xPixel\(1) & ((\Mux323~14_combout\ & (\library1|Mux0~616_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~617_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~616_combout\,
	datad => \library1|Mux0~617_combout\,
	combout => \library1|Mux0~618_combout\);

-- Location: LCCOMB_X38_Y56_N2
\library1|Mux0~620\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~620_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~618_combout\ & (\library1|Mux0~619_combout\)) # (!\library1|Mux0~618_combout\ & ((\library1|Mux0~615_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~618_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~619_combout\,
	datac => \library1|Mux0~615_combout\,
	datad => \library1|Mux0~618_combout\,
	combout => \library1|Mux0~620_combout\);

-- Location: LCCOMB_X38_Y56_N24
\library1|Mux0~621\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~621_combout\ = (\Mux320~4_combout\ & (\Mux322~16_combout\)) # (!\Mux320~4_combout\ & ((\Mux322~16_combout\ & (\library1|Mux0~614_combout\)) # (!\Mux322~16_combout\ & ((\library1|Mux0~620_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~614_combout\,
	datad => \library1|Mux0~620_combout\,
	combout => \library1|Mux0~621_combout\);

-- Location: LCCOMB_X38_Y56_N6
\library1|Mux0~622\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~622_combout\ = (\Mux320~4_combout\ & ((\Mux327~15_combout\ & ((\library1|Mux0~175_combout\) # (\library1|Mux0~621_combout\))) # (!\Mux327~15_combout\ & ((!\library1|Mux0~621_combout\) # (!\library1|Mux0~175_combout\))))) # 
-- (!\Mux320~4_combout\ & (((\library1|Mux0~621_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~175_combout\,
	datad => \library1|Mux0~621_combout\,
	combout => \library1|Mux0~622_combout\);

-- Location: LCCOMB_X38_Y58_N10
\library1|Mux0~1169\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1169_combout\ = ((\Mux322~16_combout\ & ((\Mux325~18_combout\) # (\Mux323~14_combout\))) # (!\Mux322~16_combout\ & (!\Mux325~18_combout\))) # (!\Mux320~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux320~4_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1169_combout\);

-- Location: LCCOMB_X42_Y61_N12
\library1|Mux0~603\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~603_combout\ = (\vga1|xPixel\(1) & ((\vga1|yPixel\(0)))) # (!\vga1|xPixel\(1) & (\vga1|xPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \vga1|yPixel\(0),
	combout => \library1|Mux0~603_combout\);

-- Location: LCCOMB_X42_Y61_N8
\library1|Mux0~605\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~605_combout\ = (\Mux325~18_combout\ & (!\Mux323~14_combout\ & ((\library1|Mux0~603_combout\) # (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~603_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~605_combout\);

-- Location: LCCOMB_X42_Y61_N10
\library1|Mux0~604\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~604_combout\ = (\Mux325~18_combout\ & (!\Mux323~14_combout\ & (\library1|Mux0~603_combout\ $ (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~603_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~604_combout\);

-- Location: LCCOMB_X42_Y61_N18
\library1|Mux0~606\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~606_combout\ = (\vga1|yPixel\(2) & (((\library1|Mux0~605_combout\)) # (!\vga1|yPixel\(1)))) # (!\vga1|yPixel\(2) & (\library1|Mux0~604_combout\ & (\vga1|yPixel\(1) $ (!\library1|Mux0~605_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~605_combout\,
	datad => \library1|Mux0~604_combout\,
	combout => \library1|Mux0~606_combout\);

-- Location: LCCOMB_X42_Y61_N24
\library1|Mux0~601\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~601_combout\ = (\Mux325~18_combout\ & ((!\Mux322~16_combout\) # (!\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~601_combout\);

-- Location: LCCOMB_X42_Y61_N26
\library1|Mux0~602\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~602_combout\ = (\Mux323~14_combout\ & (!\vga1|xPixel\(1) & (!\Mux322~16_combout\))) # (!\Mux323~14_combout\ & (\library1|Mux0~601_combout\ & ((!\Mux322~16_combout\) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~601_combout\,
	combout => \library1|Mux0~602_combout\);

-- Location: LCCOMB_X42_Y61_N28
\library1|Mux0~607\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~607_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~605_combout\) # (\library1|Mux0~604_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~605_combout\,
	datad => \library1|Mux0~604_combout\,
	combout => \library1|Mux0~607_combout\);

-- Location: LCCOMB_X42_Y61_N30
\library1|Mux0~608\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~608_combout\ = (\library1|Mux0~606_combout\ & ((\library1|Mux0~607_combout\ & (!\Mux322~16_combout\)) # (!\library1|Mux0~607_combout\ & ((\library1|Mux0~602_combout\))))) # (!\library1|Mux0~606_combout\ & (((\library1|Mux0~607_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~606_combout\,
	datac => \library1|Mux0~602_combout\,
	datad => \library1|Mux0~607_combout\,
	combout => \library1|Mux0~608_combout\);

-- Location: LCCOMB_X38_Y62_N14
\library1|Mux0~596\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~596_combout\ = (\vga1|yPixel\(1) & (\Mux325~18_combout\ $ (((\vga1|yPixel\(2)) # (\vga1|xPixel\(0)))))) # (!\vga1|yPixel\(1) & ((\Mux325~18_combout\ & (!\vga1|yPixel\(2))) # (!\Mux325~18_combout\ & ((\vga1|xPixel\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~596_combout\);

-- Location: LCCOMB_X38_Y62_N20
\library1|Mux0~595\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~595_combout\ = (\Mux325~18_combout\) # ((\vga1|yPixel\(2) & \vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~595_combout\);

-- Location: LCCOMB_X38_Y62_N24
\library1|Mux0~597\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~597_combout\ = (\vga1|xPixel\(1) & (\Mux323~14_combout\)) # (!\vga1|xPixel\(1) & ((\Mux323~14_combout\ & ((\library1|Mux0~595_combout\))) # (!\Mux323~14_combout\ & (\library1|Mux0~596_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~596_combout\,
	datad => \library1|Mux0~595_combout\,
	combout => \library1|Mux0~597_combout\);

-- Location: LCCOMB_X38_Y62_N4
\library1|Mux0~1171\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1171_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~597_combout\) # ((!\vga1|yPixel\(1) & !\vga1|yPixel\(2))))) # (!\Mux325~18_combout\ & (((\vga1|yPixel\(1) & \vga1|yPixel\(2))) # (!\library1|Mux0~597_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~597_combout\,
	combout => \library1|Mux0~1171_combout\);

-- Location: LCCOMB_X38_Y62_N30
\library1|Mux0~1172\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1172_combout\ = (\Mux325~18_combout\ & (\library1|Mux0~1171_combout\ & (\vga1|xPixel\(1) $ (\library1|Mux0~597_combout\)))) # (!\Mux325~18_combout\ & ((\vga1|xPixel\(1) & (\library1|Mux0~1171_combout\)) # (!\vga1|xPixel\(1) & 
-- ((\library1|Mux0~597_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~1171_combout\,
	datad => \library1|Mux0~597_combout\,
	combout => \library1|Mux0~1172_combout\);

-- Location: LCCOMB_X38_Y62_N22
\library1|Mux0~599\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~599_combout\ = (\Mux325~18_combout\ & (((\vga1|yPixel\(1) & !\Mux323~14_combout\)))) # (!\Mux325~18_combout\ & ((\vga1|xPixel\(1) & (\vga1|yPixel\(1))) # (!\vga1|xPixel\(1) & ((\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~599_combout\);

-- Location: LCCOMB_X39_Y58_N16
\library1|Mux0~598\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~598_combout\ = (\Mux323~14_combout\ & !\Mux325~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~598_combout\);

-- Location: LCCOMB_X38_Y62_N12
\library1|Mux0~1122\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1122_combout\ = (\vga1|yPixel\(2) & (((\library1|Mux0~599_combout\)))) # (!\vga1|yPixel\(2) & (!\vga1|xPixel\(1) & ((\library1|Mux0~598_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~599_combout\,
	datad => \library1|Mux0~598_combout\,
	combout => \library1|Mux0~1122_combout\);

-- Location: LCCOMB_X38_Y62_N28
\library1|Mux0~600\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~600_combout\ = (\Mux322~16_combout\ & (\library1|Mux0~1172_combout\)) # (!\Mux322~16_combout\ & ((\library1|Mux0~1122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \library1|Mux0~1172_combout\,
	datad => \library1|Mux0~1122_combout\,
	combout => \library1|Mux0~600_combout\);

-- Location: LCCOMB_X38_Y62_N10
\library1|Mux0~609\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~609_combout\ = (\Mux327~15_combout\ & ((\Mux320~4_combout\) # ((\library1|Mux0~600_combout\)))) # (!\Mux327~15_combout\ & (!\Mux320~4_combout\ & (\library1|Mux0~608_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~608_combout\,
	datad => \library1|Mux0~600_combout\,
	combout => \library1|Mux0~609_combout\);

-- Location: LCCOMB_X38_Y62_N18
\library1|Mux0~1170\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1170_combout\ = (\library1|Mux0~609_combout\ & (((\library1|Mux0~1169_combout\)))) # (!\library1|Mux0~609_combout\ & (\Mux320~4_combout\ & ((\library1|Mux0~1169_combout\) # (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~1169_combout\,
	datad => \library1|Mux0~609_combout\,
	combout => \library1|Mux0~1170_combout\);

-- Location: LCCOMB_X38_Y62_N0
\library1|Mux0~623\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~623_combout\ = (\Mux321~16_combout\ & (\Mux324~15_combout\)) # (!\Mux321~16_combout\ & ((\Mux324~15_combout\ & ((\library1|Mux0~1170_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~622_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~622_combout\,
	datad => \library1|Mux0~1170_combout\,
	combout => \library1|Mux0~623_combout\);

-- Location: LCCOMB_X38_Y62_N6
\library1|Mux0~634\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~634_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~623_combout\ & (\library1|Mux0~633_combout\)) # (!\library1|Mux0~623_combout\ & ((\library1|Mux0~594_combout\))))) # (!\Mux321~16_combout\ & (((\library1|Mux0~623_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~633_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~594_combout\,
	datad => \library1|Mux0~623_combout\,
	combout => \library1|Mux0~634_combout\);

-- Location: LCCOMB_X40_Y57_N2
\library1|Mux0~645\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~645_combout\ = (\Mux321~16_combout\ & (((\vga1|xPixel\(1) & !\vga1|yPixel\(2))) # (!\Mux324~15_combout\))) # (!\Mux321~16_combout\ & (((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~645_combout\);

-- Location: LCCOMB_X40_Y57_N30
\library1|Mux0~1123\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1123_combout\ = (\Mux322~16_combout\ & (!\Mux324~15_combout\ & (!\Mux321~16_combout\))) # (!\Mux322~16_combout\ & (((\library1|Mux0~645_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~645_combout\,
	combout => \library1|Mux0~1123_combout\);

-- Location: LCCOMB_X40_Y57_N0
\library1|Mux0~650\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~650_combout\ = (\vga1|yPixel\(2) & !\vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|yPixel\(2),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~650_combout\);

-- Location: LCCOMB_X40_Y57_N14
\library1|Mux0~651\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~651_combout\ = (\Mux322~16_combout\ & (((\Mux321~16_combout\)))) # (!\Mux322~16_combout\ & (\Mux324~15_combout\ & ((\library1|Mux0~650_combout\) # (!\Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~650_combout\,
	combout => \library1|Mux0~651_combout\);

-- Location: LCCOMB_X40_Y57_N8
\library1|Mux0~646\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~646_combout\ = (\Mux324~15_combout\ & ((\Mux321~16_combout\ $ (!\Mux322~16_combout\)))) # (!\Mux324~15_combout\ & ((\Mux322~16_combout\) # ((\vga1|yPixel\(2) & \Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~646_combout\);

-- Location: LCCOMB_X40_Y57_N10
\library1|Mux0~647\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~647_combout\ = (!\vga1|yPixel\(1) & ((\Mux322~16_combout\ & (!\vga1|xPixel\(1) & !\Mux324~15_combout\)) # (!\Mux322~16_combout\ & ((\Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~16_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~647_combout\);

-- Location: LCCOMB_X40_Y57_N16
\library1|Mux0~648\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~648_combout\ = (!\vga1|yPixel\(2) & (\Mux321~16_combout\ & \library1|Mux0~647_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~647_combout\,
	combout => \library1|Mux0~648_combout\);

-- Location: LCCOMB_X40_Y57_N18
\library1|Mux0~649\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~649_combout\ = (\Mux325~18_combout\ & ((\Mux323~14_combout\) # ((!\library1|Mux0~646_combout\)))) # (!\Mux325~18_combout\ & (!\Mux323~14_combout\ & ((\library1|Mux0~648_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~646_combout\,
	datad => \library1|Mux0~648_combout\,
	combout => \library1|Mux0~649_combout\);

-- Location: LCCOMB_X40_Y57_N12
\library1|Mux0~652\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~652_combout\ = (\Mux323~14_combout\ & ((\library1|Mux0~649_combout\ & ((!\library1|Mux0~651_combout\))) # (!\library1|Mux0~649_combout\ & (\library1|Mux0~1123_combout\)))) # (!\Mux323~14_combout\ & (((\library1|Mux0~649_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1123_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~651_combout\,
	datad => \library1|Mux0~649_combout\,
	combout => \library1|Mux0~652_combout\);

-- Location: LCCOMB_X40_Y56_N0
\library1|Mux0~635\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~635_combout\ = (\Mux324~15_combout\ & (!\Mux322~16_combout\ & (\Mux323~14_combout\ $ (!\vga1|xPixel\(1))))) # (!\Mux324~15_combout\ & (!\Mux323~14_combout\ & (\vga1|xPixel\(1) & \Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux323~14_combout\,
	datac => \vga1|xPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~635_combout\);

-- Location: LCCOMB_X40_Y56_N2
\library1|Mux0~636\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~636_combout\ = (!\Mux325~18_combout\ & \library1|Mux0~635_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~18_combout\,
	datad => \library1|Mux0~635_combout\,
	combout => \library1|Mux0~636_combout\);

-- Location: LCCOMB_X40_Y56_N4
\library1|Mux0~637\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~637_combout\ = (\Mux325~18_combout\ & ((\Mux322~16_combout\ & ((!\Mux323~14_combout\))) # (!\Mux322~16_combout\ & (\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (!\Mux324~15_combout\ & ((\Mux322~16_combout\) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~637_combout\);

-- Location: LCCOMB_X40_Y56_N14
\library1|Mux0~638\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~638_combout\ = (\Mux323~14_combout\) # ((\Mux325~18_combout\ & ((\vga1|yPixel\(1)) # (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~638_combout\);

-- Location: LCCOMB_X40_Y56_N18
\library1|Mux0~511\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~511_combout\ = \Mux323~14_combout\ $ (\Mux322~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux323~14_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~511_combout\);

-- Location: LCCOMB_X40_Y56_N12
\library1|Mux0~639\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~639_combout\ = (\library1|Mux0~511_combout\ & ((\Mux324~15_combout\ & (\Mux325~18_combout\ & \library1|Mux0~638_combout\)) # (!\Mux324~15_combout\ & (!\Mux325~18_combout\ & !\library1|Mux0~638_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~638_combout\,
	datad => \library1|Mux0~511_combout\,
	combout => \library1|Mux0~639_combout\);

-- Location: LCCOMB_X40_Y56_N22
\library1|Mux0~640\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~640_combout\ = (\Mux321~16_combout\ & (((\vga1|yPixel\(2))))) # (!\Mux321~16_combout\ & ((\vga1|yPixel\(2) & (\library1|Mux0~637_combout\)) # (!\vga1|yPixel\(2) & ((\library1|Mux0~639_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~637_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~639_combout\,
	combout => \library1|Mux0~640_combout\);

-- Location: LCCOMB_X40_Y56_N8
\library1|Mux0~642\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~642_combout\ = (\Mux322~16_combout\ & (((!\Mux324~15_combout\ & !\Mux323~14_combout\)))) # (!\Mux322~16_combout\ & (\Mux324~15_combout\ & ((\Mux323~14_combout\) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~642_combout\);

-- Location: LCCOMB_X39_Y59_N20
\library1|Mux0~641\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~641_combout\ = (\Mux323~14_combout\ & \vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux323~14_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~641_combout\);

-- Location: LCCOMB_X40_Y56_N20
\library1|Mux0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~72_combout\ = (!\Mux322~16_combout\ & (\Mux324~15_combout\ & \Mux325~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~72_combout\);

-- Location: LCCOMB_X40_Y56_N10
\library1|Mux0~643\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~643_combout\ = (\Mux325~18_combout\ & (((\library1|Mux0~641_combout\ & \library1|Mux0~72_combout\)))) # (!\Mux325~18_combout\ & ((\library1|Mux0~642_combout\) # ((\library1|Mux0~641_combout\ & \library1|Mux0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~642_combout\,
	datac => \library1|Mux0~641_combout\,
	datad => \library1|Mux0~72_combout\,
	combout => \library1|Mux0~643_combout\);

-- Location: LCCOMB_X40_Y56_N16
\library1|Mux0~644\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~644_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~640_combout\ & ((\library1|Mux0~643_combout\))) # (!\library1|Mux0~640_combout\ & (\library1|Mux0~636_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~640_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~636_combout\,
	datac => \library1|Mux0~640_combout\,
	datad => \library1|Mux0~643_combout\,
	combout => \library1|Mux0~644_combout\);

-- Location: LCCOMB_X36_Y60_N4
\library1|Mux0~653\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~653_combout\ = (\Mux320~4_combout\ & ((\Mux327~15_combout\ & ((\library1|Mux0~644_combout\))) # (!\Mux327~15_combout\ & (\library1|Mux0~652_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~652_combout\,
	datad => \library1|Mux0~644_combout\,
	combout => \library1|Mux0~653_combout\);

-- Location: LCCOMB_X40_Y57_N6
\library1|Mux0~654\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~654_combout\ = (\Mux323~14_combout\ & ((\Mux321~16_combout\ & ((\vga1|yPixel\(2)))) # (!\Mux321~16_combout\ & (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~654_combout\);

-- Location: LCCOMB_X41_Y60_N16
\library1|Mux0~657\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~657_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1)) # (!\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~657_combout\);

-- Location: LCCOMB_X41_Y60_N26
\library1|Mux0~658\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~658_combout\ = (\Mux324~15_combout\ & ((\Mux323~14_combout\ & (!\Mux321~16_combout\ & !\library1|Mux0~657_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~657_combout\))))) # (!\Mux324~15_combout\ & (((\Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~657_combout\,
	combout => \library1|Mux0~658_combout\);

-- Location: LCCOMB_X41_Y60_N12
\library1|Mux0~655\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~655_combout\ = (\Mux321~16_combout\ & (((!\Mux324~15_combout\)))) # (!\Mux321~16_combout\ & (!\vga1|yPixel\(1) & (!\vga1|yPixel\(2) & \Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~655_combout\);

-- Location: LCCOMB_X41_Y60_N10
\library1|Mux0~656\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~656_combout\ = (\Mux323~14_combout\ & (\Mux324~15_combout\ $ ((\Mux321~16_combout\)))) # (!\Mux323~14_combout\ & (((!\library1|Mux0~655_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~655_combout\,
	combout => \library1|Mux0~656_combout\);

-- Location: LCCOMB_X41_Y60_N24
\library1|Mux0~659\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~659_combout\ = (\Mux322~16_combout\ & ((\Mux327~15_combout\) # ((\library1|Mux0~656_combout\)))) # (!\Mux322~16_combout\ & (!\Mux327~15_combout\ & (\library1|Mux0~658_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~658_combout\,
	datad => \library1|Mux0~656_combout\,
	combout => \library1|Mux0~659_combout\);

-- Location: LCCOMB_X41_Y59_N4
\library1|Mux0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~93_combout\ = (\vga1|yPixel\(1) & \vga1|yPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~93_combout\);

-- Location: LCCOMB_X39_Y56_N24
\library1|Mux0~660\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~660_combout\ = (\Mux324~15_combout\ & (!\Mux323~14_combout\ & ((\Mux321~16_combout\) # (!\vga1|xPixel\(0))))) # (!\Mux324~15_combout\ & (((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux323~14_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~660_combout\);

-- Location: LCCOMB_X39_Y56_N22
\library1|Mux0~661\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~661_combout\ = (\library1|Mux0~93_combout\ & (((\library1|Mux0~660_combout\)))) # (!\library1|Mux0~93_combout\ & (\Mux324~15_combout\ $ ((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \library1|Mux0~93_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~660_combout\,
	combout => \library1|Mux0~661_combout\);

-- Location: LCCOMB_X36_Y60_N22
\library1|Mux0~662\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~662_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~659_combout\ & ((!\library1|Mux0~661_combout\))) # (!\library1|Mux0~659_combout\ & (\library1|Mux0~654_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~659_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~654_combout\,
	datac => \library1|Mux0~659_combout\,
	datad => \library1|Mux0~661_combout\,
	combout => \library1|Mux0~662_combout\);

-- Location: LCCOMB_X39_Y60_N28
\library1|Mux0~685\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~685_combout\ = (\Mux327~15_combout\ & (\vga1|yPixel\(2) $ (((\vga1|yPixel\(1) & \vga1|xPixel\(0)))))) # (!\Mux327~15_combout\ & (!\vga1|yPixel\(2) & ((\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~685_combout\);

-- Location: LCCOMB_X39_Y60_N26
\library1|Mux0~686\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~686_combout\ = (\Mux322~16_combout\ & (!\Mux327~15_combout\ & (!\Mux324~15_combout\))) # (!\Mux322~16_combout\ & ((\Mux327~15_combout\ $ (!\library1|Mux0~685_combout\)) # (!\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~685_combout\,
	combout => \library1|Mux0~686_combout\);

-- Location: LCCOMB_X39_Y60_N12
\library1|Mux0~672\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~672_combout\ = (\Mux324~15_combout\ & (\Mux322~16_combout\ & (\vga1|yPixel\(2) $ (\Mux327~15_combout\)))) # (!\Mux324~15_combout\ & ((\Mux322~16_combout\ $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~672_combout\);

-- Location: LCCOMB_X36_Y60_N26
\library1|Mux0~687\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~687_combout\ = (\Mux322~16_combout\ & (((\Mux324~15_combout\)))) # (!\Mux322~16_combout\ & ((\Mux327~15_combout\) # ((!\library1|Mux0~93_combout\ & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~93_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~687_combout\);

-- Location: LCCOMB_X39_Y60_N8
\library1|Mux0~690\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~690_combout\ = (\Mux322~16_combout\) # ((\Mux327~15_combout\) # (\vga1|yPixel\(2) $ (\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~690_combout\);

-- Location: LCCOMB_X39_Y60_N16
\library1|Mux0~688\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~688_combout\ = (\vga1|yPixel\(2) & (!\vga1|xPixel\(0) & ((\Mux327~15_combout\)))) # (!\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((\Mux327~15_combout\))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~688_combout\);

-- Location: LCCOMB_X39_Y60_N2
\library1|Mux0~689\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~689_combout\ = (\Mux322~16_combout\ & ((\Mux327~15_combout\ & ((\library1|Mux0~688_combout\))) # (!\Mux327~15_combout\ & (\Mux324~15_combout\ & !\library1|Mux0~688_combout\)))) # (!\Mux322~16_combout\ & (((\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~688_combout\,
	combout => \library1|Mux0~689_combout\);

-- Location: LCCOMB_X39_Y60_N6
\library1|Mux0~691\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~691_combout\ = (\library1|Mux0~689_combout\) # ((!\Mux324~15_combout\ & \library1|Mux0~690_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~690_combout\,
	datad => \library1|Mux0~689_combout\,
	combout => \library1|Mux0~691_combout\);

-- Location: LCCOMB_X36_Y60_N16
\library1|Mux0~692\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~692_combout\ = (\Mux321~16_combout\ & (\Mux323~14_combout\)) # (!\Mux321~16_combout\ & ((\Mux323~14_combout\ & (\library1|Mux0~687_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~691_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~687_combout\,
	datad => \library1|Mux0~691_combout\,
	combout => \library1|Mux0~692_combout\);

-- Location: LCCOMB_X36_Y60_N14
\library1|Mux0~693\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~693_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~692_combout\ & ((\library1|Mux0~672_combout\))) # (!\library1|Mux0~692_combout\ & (\library1|Mux0~686_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~692_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~686_combout\,
	datac => \library1|Mux0~672_combout\,
	datad => \library1|Mux0~692_combout\,
	combout => \library1|Mux0~693_combout\);

-- Location: LCCOMB_X36_Y60_N8
\library1|Mux0~682\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~682_combout\ = (!\Mux324~15_combout\ & (\library1|Mux0~93_combout\ & (!\Mux323~14_combout\ & \Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \library1|Mux0~93_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~682_combout\);

-- Location: LCCOMB_X39_Y59_N26
\library1|Mux0~679\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~679_combout\ = (\Mux323~14_combout\ & (((!\vga1|yPixel\(2))) # (!\vga1|yPixel\(1)))) # (!\Mux323~14_combout\ & (!\Mux327~15_combout\ & (\vga1|yPixel\(1) $ (\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~679_combout\);

-- Location: LCCOMB_X39_Y59_N24
\library1|Mux0~680\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~680_combout\ = (\vga1|yPixel\(1) & (\Mux323~14_combout\ & (\vga1|yPixel\(2) $ (!\Mux327~15_combout\)))) # (!\vga1|yPixel\(1) & (!\Mux327~15_combout\ & (\vga1|yPixel\(2) $ (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~680_combout\);

-- Location: LCCOMB_X39_Y59_N2
\library1|Mux0~681\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~681_combout\ = (\Mux324~15_combout\ & ((\Mux322~16_combout\ & (\library1|Mux0~679_combout\)) # (!\Mux322~16_combout\ & ((\library1|Mux0~680_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~679_combout\,
	datad => \library1|Mux0~680_combout\,
	combout => \library1|Mux0~681_combout\);

-- Location: LCCOMB_X36_Y60_N12
\library1|Mux0~677\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~677_combout\ = (\Mux324~15_combout\ & ((!\Mux327~15_combout\))) # (!\Mux324~15_combout\ & (\Mux322~16_combout\ & \Mux327~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~677_combout\);

-- Location: LCCOMB_X39_Y60_N22
\library1|Mux0~674\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~674_combout\ = (\Mux327~15_combout\ & (!\Mux324~15_combout\ & ((\Mux322~16_combout\)))) # (!\Mux327~15_combout\ & (\Mux324~15_combout\ $ (((\vga1|yPixel\(1) & !\Mux322~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~674_combout\);

-- Location: LCCOMB_X36_Y60_N0
\library1|Mux0~675\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~675_combout\ = (\Mux324~15_combout\ & ((!\Mux327~15_combout\) # (!\Mux322~16_combout\))) # (!\Mux324~15_combout\ & ((\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~675_combout\);

-- Location: LCCOMB_X36_Y60_N2
\library1|Mux0~676\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~676_combout\ = (\vga1|yPixel\(2) & (((\Mux323~14_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux323~14_combout\ & ((!\library1|Mux0~675_combout\))) # (!\Mux323~14_combout\ & (\Mux322~16_combout\ & \library1|Mux0~675_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~675_combout\,
	combout => \library1|Mux0~676_combout\);

-- Location: LCCOMB_X36_Y60_N18
\library1|Mux0~678\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~678_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~676_combout\ & (!\library1|Mux0~677_combout\)) # (!\library1|Mux0~676_combout\ & ((\library1|Mux0~674_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~676_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~677_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~674_combout\,
	datad => \library1|Mux0~676_combout\,
	combout => \library1|Mux0~678_combout\);

-- Location: LCCOMB_X36_Y60_N30
\library1|Mux0~683\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~683_combout\ = (\Mux321~16_combout\ & (((\library1|Mux0~678_combout\)))) # (!\Mux321~16_combout\ & ((\library1|Mux0~682_combout\) # ((\library1|Mux0~681_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~682_combout\,
	datac => \library1|Mux0~681_combout\,
	datad => \library1|Mux0~678_combout\,
	combout => \library1|Mux0~683_combout\);

-- Location: LCCOMB_X39_Y60_N24
\library1|Mux0~663\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~663_combout\ = (\Mux324~15_combout\ & ((\vga1|xPixel\(0) & ((\Mux327~15_combout\))) # (!\vga1|xPixel\(0) & (\vga1|yPixel\(1))))) # (!\Mux324~15_combout\ & (((\vga1|yPixel\(1) & !\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~663_combout\);

-- Location: LCCOMB_X39_Y60_N10
\library1|Mux0~664\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~664_combout\ = (!\Mux322~16_combout\ & (\Mux327~15_combout\ $ (((!\library1|Mux0~663_combout\) # (!\vga1|yPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~663_combout\,
	combout => \library1|Mux0~664_combout\);

-- Location: LCCOMB_X39_Y60_N4
\library1|Mux0~665\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~665_combout\ = (\library1|Mux0~664_combout\) # ((!\Mux324~15_combout\ & (\Mux322~16_combout\ & !\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~664_combout\,
	combout => \library1|Mux0~665_combout\);

-- Location: LCCOMB_X38_Y56_N16
\library1|Mux0~1165\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1165_combout\ = (\Mux327~15_combout\ & (\Mux322~16_combout\ $ (((!\vga1|yPixel\(1)) # (!\vga1|yPixel\(2)))))) # (!\Mux327~15_combout\ & (((!\vga1|yPixel\(1) & \Mux322~16_combout\)) # (!\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~1165_combout\);

-- Location: LCCOMB_X38_Y56_N10
\library1|Mux0~1166\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1166_combout\ = (\Mux324~15_combout\ & ((\library1|Mux0~1165_combout\) # ((!\Mux322~16_combout\ & \Mux327~15_combout\)))) # (!\Mux324~15_combout\ & (!\Mux322~16_combout\ & (\Mux327~15_combout\ & \library1|Mux0~1165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~1165_combout\,
	combout => \library1|Mux0~1166_combout\);

-- Location: LCCOMB_X39_Y60_N30
\library1|Mux0~666\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~666_combout\ = (\vga1|yPixel\(1) & (\Mux327~15_combout\ $ (((!\Mux324~15_combout\) # (!\vga1|xPixel\(0)))))) # (!\vga1|yPixel\(1) & (\Mux324~15_combout\ & ((\Mux327~15_combout\) # (!\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~666_combout\);

-- Location: LCCOMB_X39_Y60_N0
\library1|Mux0~667\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~667_combout\ = (\Mux324~15_combout\ & ((\Mux327~15_combout\ & (\vga1|yPixel\(1))) # (!\Mux327~15_combout\ & ((\vga1|xPixel\(0)))))) # (!\Mux324~15_combout\ & (\vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~667_combout\);

-- Location: LCCOMB_X39_Y60_N14
\library1|Mux0~668\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~668_combout\ = (\Mux327~15_combout\ & (\library1|Mux0~666_combout\ & (\vga1|yPixel\(2) $ (\library1|Mux0~667_combout\)))) # (!\Mux327~15_combout\ & (\vga1|yPixel\(2) & ((!\library1|Mux0~667_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~666_combout\,
	datad => \library1|Mux0~667_combout\,
	combout => \library1|Mux0~668_combout\);

-- Location: LCCOMB_X39_Y60_N20
\library1|Mux0~669\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~669_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(2) & (!\library1|Mux0~666_combout\ & !\library1|Mux0~667_combout\)) # (!\vga1|yPixel\(2) & ((!\library1|Mux0~667_combout\) # (!\library1|Mux0~666_combout\))))) # (!\Mux327~15_combout\ & 
-- (\vga1|yPixel\(2) & (\library1|Mux0~666_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~666_combout\,
	datad => \library1|Mux0~667_combout\,
	combout => \library1|Mux0~669_combout\);

-- Location: LCCOMB_X39_Y60_N18
\library1|Mux0~670\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~670_combout\ = \library1|Mux0~669_combout\ $ (((\Mux322~16_combout\) # (\library1|Mux0~668_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \library1|Mux0~668_combout\,
	datad => \library1|Mux0~669_combout\,
	combout => \library1|Mux0~670_combout\);

-- Location: LCCOMB_X36_Y60_N24
\library1|Mux0~671\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~671_combout\ = (\Mux321~16_combout\ & (\Mux323~14_combout\)) # (!\Mux321~16_combout\ & ((\Mux323~14_combout\ & (\library1|Mux0~1166_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~670_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~1166_combout\,
	datad => \library1|Mux0~670_combout\,
	combout => \library1|Mux0~671_combout\);

-- Location: LCCOMB_X36_Y60_N6
\library1|Mux0~673\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~673_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~671_combout\ & (\library1|Mux0~672_combout\)) # (!\library1|Mux0~671_combout\ & ((\library1|Mux0~665_combout\))))) # (!\Mux321~16_combout\ & (((\library1|Mux0~671_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~672_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~665_combout\,
	datad => \library1|Mux0~671_combout\,
	combout => \library1|Mux0~673_combout\);

-- Location: LCCOMB_X36_Y60_N28
\library1|Mux0~684\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~684_combout\ = (\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # ((\library1|Mux0~673_combout\)))) # (!\Mux325~18_combout\ & (!\vga1|xPixel\(1) & (\library1|Mux0~683_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~683_combout\,
	datad => \library1|Mux0~673_combout\,
	combout => \library1|Mux0~684_combout\);

-- Location: LCCOMB_X36_Y60_N20
\library1|Mux0~694\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~694_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~684_combout\ & ((\library1|Mux0~693_combout\))) # (!\library1|Mux0~684_combout\ & (\library1|Mux0~662_combout\)))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~684_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~662_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~693_combout\,
	datad => \library1|Mux0~684_combout\,
	combout => \library1|Mux0~694_combout\);

-- Location: LCCOMB_X36_Y60_N10
\library1|Mux0~695\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~695_combout\ = (\library1|Mux0~653_combout\) # ((!\Mux320~4_combout\ & \library1|Mux0~694_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datac => \library1|Mux0~653_combout\,
	datad => \library1|Mux0~694_combout\,
	combout => \library1|Mux0~695_combout\);

-- Location: LCCOMB_X35_Y62_N12
\library1|Mux0~696\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~696_combout\ = (\vga1|yPixel\(3) & (\vga1|xPixel\(2))) # (!\vga1|yPixel\(3) & ((\vga1|xPixel\(2) & (\library1|Mux0~634_combout\)) # (!\vga1|xPixel\(2) & ((\library1|Mux0~695_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~634_combout\,
	datad => \library1|Mux0~695_combout\,
	combout => \library1|Mux0~696_combout\);

-- Location: LCCOMB_X35_Y62_N10
\library1|Mux0~723\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~723_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~696_combout\ & ((\library1|Mux0~722_combout\))) # (!\library1|Mux0~696_combout\ & (\library1|Mux0~583_combout\)))) # (!\vga1|yPixel\(3) & (((\library1|Mux0~696_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \library1|Mux0~583_combout\,
	datac => \library1|Mux0~722_combout\,
	datad => \library1|Mux0~696_combout\,
	combout => \library1|Mux0~723_combout\);

-- Location: LCCOMB_X38_Y58_N6
\library1|Mux0~1036\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1036_combout\ = (\vga1|yPixel\(2) & (((\vga1|xPixel\(2) & !\vga1|yPixel\(1))))) # (!\vga1|yPixel\(2) & (\vga1|xPixel\(1) $ ((\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(2),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~1036_combout\);

-- Location: LCCOMB_X38_Y58_N18
\library1|Mux0~1141\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1141_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(3) & (!\Mux320~4_combout\ & \library1|Mux0~1036_combout\)) # (!\vga1|yPixel\(3) & (\Mux320~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \Mux320~4_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~1036_combout\,
	combout => \library1|Mux0~1141_combout\);

-- Location: LCCOMB_X38_Y58_N12
\library1|Mux0~1142\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1142_combout\ = (\Mux327~15_combout\ & (\Mux322~16_combout\ & \library1|Mux0~1141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~1141_combout\,
	combout => \library1|Mux0~1142_combout\);

-- Location: LCCOMB_X35_Y56_N20
\library1|Mux0~1037\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1037_combout\ = (\Mux323~14_combout\ & (\Mux324~15_combout\ & (!\Mux321~16_combout\ & \Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1037_combout\);

-- Location: LCCOMB_X34_Y58_N4
\library1|Mux0~1038\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1038_combout\ = (\Mux321~16_combout\ & (!\Mux322~16_combout\ & !\Mux323~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1038_combout\);

-- Location: LCCOMB_X34_Y58_N12
\library1|Mux0~1139\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1139_combout\ = (\vga1|xPixel\(1) & ((\Mux325~18_combout\ & ((!\Mux324~15_combout\) # (!\Mux327~15_combout\))) # (!\Mux325~18_combout\ & ((\Mux324~15_combout\))))) # (!\vga1|xPixel\(1) & (!\Mux327~15_combout\ & (\Mux325~18_combout\ $ 
-- (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux327~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1139_combout\);

-- Location: LCCOMB_X34_Y58_N18
\library1|Mux0~1140\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1140_combout\ = (\vga1|xPixel\(2) & ((\Mux324~15_combout\ & (\Mux325~18_combout\ $ (!\library1|Mux0~1139_combout\))) # (!\Mux324~15_combout\ & (\Mux325~18_combout\ & !\library1|Mux0~1139_combout\)))) # (!\vga1|xPixel\(2) & 
-- (\library1|Mux0~1139_combout\ & (\Mux324~15_combout\ $ (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~1139_combout\,
	combout => \library1|Mux0~1140_combout\);

-- Location: LCCOMB_X33_Y57_N4
\library1|Mux0~1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1070_combout\ = (\Mux325~18_combout\ & (\Mux324~15_combout\ $ (((\Mux327~15_combout\) # (!\vga1|xPixel\(2)))))) # (!\Mux325~18_combout\ & (\Mux324~15_combout\ & (\vga1|xPixel\(2) $ (!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~1070_combout\);

-- Location: LCCOMB_X33_Y57_N2
\library1|Mux0~1071\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1071_combout\ = (\Mux327~15_combout\ & ((\vga1|xPixel\(2)) # (\Mux324~15_combout\ $ (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~1071_combout\);

-- Location: LCCOMB_X33_Y57_N14
\library1|Mux0~1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1073_combout\ = (\vga1|xPixel\(2) & (\library1|Mux0~1070_combout\ & (\vga1|xPixel\(1) $ (\library1|Mux0~1071_combout\)))) # (!\vga1|xPixel\(2) & ((\library1|Mux0~1071_combout\ & (\vga1|xPixel\(1))) # (!\library1|Mux0~1071_combout\ & 
-- ((\library1|Mux0~1070_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~1070_combout\,
	datad => \library1|Mux0~1071_combout\,
	combout => \library1|Mux0~1073_combout\);

-- Location: LCCOMB_X33_Y57_N28
\library1|Mux0~1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1072_combout\ = (\library1|Mux0~1070_combout\ & ((\vga1|xPixel\(2)) # ((\vga1|xPixel\(1))))) # (!\library1|Mux0~1070_combout\ & (\vga1|xPixel\(2) $ (((\library1|Mux0~1071_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~1070_combout\,
	datad => \library1|Mux0~1071_combout\,
	combout => \library1|Mux0~1072_combout\);

-- Location: LCCOMB_X33_Y57_N24
\library1|Mux0~1074\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1074_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~1072_combout\))) # (!\vga1|yPixel\(1) & (\library1|Mux0~1073_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~1073_combout\,
	datad => \library1|Mux0~1072_combout\,
	combout => \library1|Mux0~1074_combout\);

-- Location: LCCOMB_X33_Y57_N12
\library1|Mux0~1065\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1065_combout\ = (\vga1|xPixel\(2) & (((\Mux325~18_combout\) # (\Mux324~15_combout\)) # (!\vga1|xPixel\(1)))) # (!\vga1|xPixel\(2) & ((\vga1|xPixel\(1)) # (\Mux325~18_combout\ $ (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1065_combout\);

-- Location: LCCOMB_X33_Y57_N20
\library1|Mux0~1061\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1061_combout\ = \vga1|xPixel\(2) $ (((\vga1|xPixel\(1) & ((\Mux325~18_combout\) # (\Mux324~15_combout\))) # (!\vga1|xPixel\(1) & (\Mux325~18_combout\ & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1061_combout\);

-- Location: LCCOMB_X33_Y57_N26
\library1|Mux0~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1062_combout\ = \Mux324~15_combout\ $ (((!\vga1|xPixel\(2) & \Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1062_combout\);

-- Location: LCCOMB_X33_Y57_N16
\library1|Mux0~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1063_combout\ = (\vga1|xPixel\(2) & (\Mux324~15_combout\ & (\vga1|xPixel\(1) $ (!\Mux325~18_combout\)))) # (!\vga1|xPixel\(2) & ((\Mux325~18_combout\ & ((!\Mux324~15_combout\))) # (!\Mux325~18_combout\ & (\vga1|xPixel\(1) & 
-- \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1063_combout\);

-- Location: LCCOMB_X33_Y57_N22
\library1|Mux0~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1064_combout\ = (\vga1|yPixel\(1) & ((\Mux327~15_combout\) # ((\library1|Mux0~1062_combout\)))) # (!\vga1|yPixel\(1) & (!\Mux327~15_combout\ & ((\library1|Mux0~1063_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~1062_combout\,
	datad => \library1|Mux0~1063_combout\,
	combout => \library1|Mux0~1064_combout\);

-- Location: LCCOMB_X33_Y57_N10
\library1|Mux0~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1066_combout\ = (\library1|Mux0~1064_combout\ & ((\library1|Mux0~1065_combout\) # ((!\Mux327~15_combout\)))) # (!\library1|Mux0~1064_combout\ & (((\library1|Mux0~1061_combout\ & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1065_combout\,
	datab => \library1|Mux0~1061_combout\,
	datac => \library1|Mux0~1064_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~1066_combout\);

-- Location: LCCOMB_X33_Y57_N8
\library1|Mux0~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1067_combout\ = (\vga1|xPixel\(2) & (!\Mux324~15_combout\ & ((!\Mux325~18_combout\) # (!\vga1|xPixel\(1))))) # (!\vga1|xPixel\(2) & ((\Mux324~15_combout\ & ((\Mux325~18_combout\))) # (!\Mux324~15_combout\ & (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1067_combout\);

-- Location: LCCOMB_X33_Y57_N18
\library1|Mux0~1068\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1068_combout\ = (\vga1|xPixel\(2) & (\vga1|xPixel\(1) $ (((\Mux324~15_combout\))))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(1) & (\Mux325~18_combout\ $ (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1068_combout\);

-- Location: LCCOMB_X33_Y57_N30
\library1|Mux0~1137\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1137_combout\ = (\Mux327~15_combout\ & (\library1|Mux0~1068_combout\ & ((\Mux325~18_combout\) # (\vga1|yPixel\(1))))) # (!\Mux327~15_combout\ & ((\Mux325~18_combout\) # ((!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~1068_combout\,
	combout => \library1|Mux0~1137_combout\);

-- Location: LCCOMB_X33_Y57_N0
\library1|Mux0~1138\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1138_combout\ = (\library1|Mux0~1067_combout\ & (\library1|Mux0~1137_combout\ $ (((\Mux325~18_combout\ & !\library1|Mux0~1068_combout\))))) # (!\library1|Mux0~1067_combout\ & ((\Mux325~18_combout\ & (\library1|Mux0~1137_combout\ & 
-- !\library1|Mux0~1068_combout\)) # (!\Mux325~18_combout\ & ((\library1|Mux0~1068_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~1067_combout\,
	datac => \library1|Mux0~1137_combout\,
	datad => \library1|Mux0~1068_combout\,
	combout => \library1|Mux0~1138_combout\);

-- Location: LCCOMB_X34_Y58_N2
\library1|Mux0~1069\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1069_combout\ = (\vga1|yPixel\(2) & ((\Mux322~16_combout\) # ((\library1|Mux0~1066_combout\)))) # (!\vga1|yPixel\(2) & (!\Mux322~16_combout\ & ((\library1|Mux0~1138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~1066_combout\,
	datad => \library1|Mux0~1138_combout\,
	combout => \library1|Mux0~1069_combout\);

-- Location: LCCOMB_X34_Y58_N8
\library1|Mux0~1075\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1075_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~1069_combout\ & ((\library1|Mux0~1074_combout\))) # (!\library1|Mux0~1069_combout\ & (\library1|Mux0~1140_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~1069_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~1140_combout\,
	datac => \library1|Mux0~1074_combout\,
	datad => \library1|Mux0~1069_combout\,
	combout => \library1|Mux0~1075_combout\);

-- Location: LCCOMB_X35_Y54_N22
\library1|Mux0~1094\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1094_combout\ = (\vga1|yPixel\(1) & ((\vga1|xPixel\(1)) # ((\vga1|xPixel\(0))))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(1) & ((!\vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \vga1|yPixel\(0),
	combout => \library1|Mux0~1094_combout\);

-- Location: LCCOMB_X35_Y54_N12
\library1|Mux0~1095\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1095_combout\ = (\Mux324~15_combout\ & (\vga1|yPixel\(1) $ (((!\library1|Mux0~1094_combout\ & \Mux327~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~1094_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~1095_combout\);

-- Location: LCCOMB_X34_Y55_N26
\library1|Mux0~1101\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1101_combout\ = (\vga1|xPixel\(1) & (((!\Mux327~15_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux327~15_combout\ & ((!\Mux324~15_combout\))) # (!\Mux327~15_combout\ & (\vga1|xPixel\(0) & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1101_combout\);

-- Location: LCCOMB_X34_Y55_N12
\library1|Mux0~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~419_combout\ = (\Mux327~15_combout\ & !\Mux324~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~419_combout\);

-- Location: LCCOMB_X34_Y55_N24
\library1|Mux0~1102\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1102_combout\ = (\vga1|yPixel\(1) & (((!\library1|Mux0~419_combout\)) # (!\vga1|xPixel\(1)))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~1101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~1101_combout\,
	datad => \library1|Mux0~419_combout\,
	combout => \library1|Mux0~1102_combout\);

-- Location: LCCOMB_X35_Y54_N26
\library1|Mux0~1098\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1098_combout\ = (!\vga1|xPixel\(0) & (!\vga1|xPixel\(1) & (\vga1|yPixel\(1) & \vga1|yPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(0),
	combout => \library1|Mux0~1098_combout\);

-- Location: LCCOMB_X35_Y54_N4
\library1|Mux0~1099\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1099_combout\ = (\library1|Mux0~1098_combout\ & (\Mux327~15_combout\ & \Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1098_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1099_combout\);

-- Location: LCCOMB_X35_Y54_N18
\library1|Mux0~1096\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1096_combout\ = (\vga1|xPixel\(1)) # ((\vga1|xPixel\(0) & \Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1096_combout\);

-- Location: LCCOMB_X35_Y54_N20
\library1|Mux0~1097\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1097_combout\ = (\Mux327~15_combout\ & (!\library1|Mux0~1096_combout\ & ((!\Mux324~15_combout\) # (!\vga1|yPixel\(1))))) # (!\Mux327~15_combout\ & (\library1|Mux0~1096_combout\ & ((\vga1|yPixel\(1)) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~1096_combout\,
	combout => \library1|Mux0~1097_combout\);

-- Location: LCCOMB_X35_Y54_N2
\library1|Mux0~1100\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1100_combout\ = (\vga1|yPixel\(2) & (\Mux325~18_combout\)) # (!\vga1|yPixel\(2) & ((\Mux325~18_combout\ & ((\library1|Mux0~1097_combout\))) # (!\Mux325~18_combout\ & (\library1|Mux0~1099_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~1099_combout\,
	datad => \library1|Mux0~1097_combout\,
	combout => \library1|Mux0~1100_combout\);

-- Location: LCCOMB_X35_Y54_N28
\library1|Mux0~1103\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1103_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~1100_combout\ & ((\library1|Mux0~1102_combout\))) # (!\library1|Mux0~1100_combout\ & (\library1|Mux0~1095_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~1100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1095_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~1102_combout\,
	datad => \library1|Mux0~1100_combout\,
	combout => \library1|Mux0~1103_combout\);

-- Location: LCCOMB_X42_Y58_N8
\library1|Mux0~1092\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1092_combout\ = (\Mux325~18_combout\ & (!\Mux324~15_combout\ & ((\vga1|yPixel\(1)) # (\vga1|xPixel\(1))))) # (!\Mux325~18_combout\ & (((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1092_combout\);

-- Location: LCCOMB_X42_Y58_N4
\library1|Mux0~1090\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1090_combout\ = (\vga1|yPixel\(1) & (\vga1|xPixel\(1) & ((\Mux325~18_combout\) # (\Mux324~15_combout\)))) # (!\vga1|yPixel\(1) & (((!\Mux325~18_combout\ & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1090_combout\);

-- Location: LCCOMB_X42_Y58_N6
\library1|Mux0~1089\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1089_combout\ = (\Mux325~18_combout\ & (((!\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (\Mux324~15_combout\ & ((\vga1|xPixel\(1)) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1089_combout\);

-- Location: LCCOMB_X42_Y58_N2
\library1|Mux0~1091\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1091_combout\ = (\vga1|yPixel\(2) & ((\Mux327~15_combout\ & ((\library1|Mux0~1089_combout\))) # (!\Mux327~15_combout\ & (\library1|Mux0~1090_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~1090_combout\,
	datad => \library1|Mux0~1089_combout\,
	combout => \library1|Mux0~1091_combout\);

-- Location: LCCOMB_X42_Y58_N22
\library1|Mux0~1136\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1136_combout\ = (\library1|Mux0~1091_combout\) # ((!\vga1|yPixel\(2) & (\Mux327~15_combout\ & \library1|Mux0~1092_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~1092_combout\,
	datad => \library1|Mux0~1091_combout\,
	combout => \library1|Mux0~1136_combout\);

-- Location: LCCOMB_X35_Y54_N10
\library1|Mux0~1087\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1087_combout\ = \vga1|xPixel\(1) $ (\Mux325~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1087_combout\);

-- Location: LCCOMB_X35_Y54_N8
\library1|Mux0~1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1082_combout\ = (\vga1|yPixel\(1) & ((\vga1|yPixel\(2)) # ((!\vga1|xPixel\(0) & !\vga1|xPixel\(1))))) # (!\vga1|yPixel\(1) & (\vga1|yPixel\(2) $ (((\vga1|xPixel\(0) & \vga1|xPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~1082_combout\);

-- Location: LCCOMB_X35_Y54_N14
\library1|Mux0~1083\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1083_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & (\vga1|xPixel\(0) & \vga1|xPixel\(1)))) # (!\vga1|yPixel\(2) & ((\vga1|xPixel\(0) $ (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~1083_combout\);

-- Location: LCCOMB_X35_Y54_N16
\library1|Mux0~1084\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1084_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~1083_combout\))) # (!\Mux325~18_combout\ & (\library1|Mux0~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \library1|Mux0~310_combout\,
	datac => \library1|Mux0~1083_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1084_combout\);

-- Location: LCCOMB_X35_Y54_N30
\library1|Mux0~1085\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1085_combout\ = (\library1|Mux0~1082_combout\ & (\Mux325~18_combout\ $ (((!\Mux327~15_combout\ & !\library1|Mux0~1084_combout\))))) # (!\library1|Mux0~1082_combout\ & ((\library1|Mux0~1084_combout\ & ((\Mux327~15_combout\))) # 
-- (!\library1|Mux0~1084_combout\ & (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~1082_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~1084_combout\,
	combout => \library1|Mux0~1085_combout\);

-- Location: LCCOMB_X35_Y54_N0
\library1|Mux0~1086\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1086_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~93_combout\ $ (!\Mux327~15_combout\)))) # (!\Mux325~18_combout\ & (((\Mux327~15_combout\)) # (!\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~93_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~1086_combout\);

-- Location: LCCOMB_X35_Y54_N24
\library1|Mux0~1088\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1088_combout\ = (\Mux324~15_combout\ & (((\library1|Mux0~1085_combout\)))) # (!\Mux324~15_combout\ & (((\library1|Mux0~1086_combout\)) # (!\library1|Mux0~1087_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1087_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~1085_combout\,
	datad => \library1|Mux0~1086_combout\,
	combout => \library1|Mux0~1088_combout\);

-- Location: LCCOMB_X34_Y58_N14
\library1|Mux0~1093\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1093_combout\ = (\vga1|xPixel\(2) & (\Mux322~16_combout\)) # (!\vga1|xPixel\(2) & ((\Mux322~16_combout\ & ((\library1|Mux0~1088_combout\))) # (!\Mux322~16_combout\ & (\library1|Mux0~1136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~1136_combout\,
	datad => \library1|Mux0~1088_combout\,
	combout => \library1|Mux0~1093_combout\);

-- Location: LCCOMB_X35_Y61_N4
\library1|Mux0~1076\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1076_combout\ = (\vga1|xPixel\(1) & (\Mux325~18_combout\ & (\Mux324~15_combout\ $ (!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1076_combout\);

-- Location: LCCOMB_X35_Y61_N8
\library1|Mux0~1080\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1080_combout\ = (\Mux324~15_combout\ & (((!\Mux325~18_combout\) # (!\Mux327~15_combout\)))) # (!\Mux324~15_combout\ & ((\Mux325~18_combout\) # ((\vga1|xPixel\(1) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1080_combout\);

-- Location: LCCOMB_X35_Y61_N22
\library1|Mux0~1077\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1077_combout\ = (\vga1|xPixel\(1) & ((\Mux324~15_combout\ & (\Mux327~15_combout\ & \Mux325~18_combout\)) # (!\Mux324~15_combout\ & (\Mux327~15_combout\ $ (\Mux325~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1077_combout\);

-- Location: LCCOMB_X35_Y61_N20
\library1|Mux0~1078\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1078_combout\ = (!\Mux324~15_combout\ & (\Mux325~18_combout\ & (\vga1|xPixel\(1) $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1078_combout\);

-- Location: LCCOMB_X35_Y61_N10
\library1|Mux0~1079\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1079_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1)) # ((\library1|Mux0~1077_combout\)))) # (!\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & ((\library1|Mux0~1078_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~1077_combout\,
	datad => \library1|Mux0~1078_combout\,
	combout => \library1|Mux0~1079_combout\);

-- Location: LCCOMB_X35_Y61_N6
\library1|Mux0~1081\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1081_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~1079_combout\ & ((\library1|Mux0~1080_combout\))) # (!\library1|Mux0~1079_combout\ & (\library1|Mux0~1076_combout\)))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~1079_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~1076_combout\,
	datac => \library1|Mux0~1080_combout\,
	datad => \library1|Mux0~1079_combout\,
	combout => \library1|Mux0~1081_combout\);

-- Location: LCCOMB_X34_Y58_N0
\library1|Mux0~1104\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1104_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~1093_combout\ & (\library1|Mux0~1103_combout\)) # (!\library1|Mux0~1093_combout\ & ((\library1|Mux0~1081_combout\))))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~1093_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~1103_combout\,
	datac => \library1|Mux0~1093_combout\,
	datad => \library1|Mux0~1081_combout\,
	combout => \library1|Mux0~1104_combout\);

-- Location: LCCOMB_X34_Y58_N22
\library1|Mux0~1105\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1105_combout\ = (!\vga1|yPixel\(3) & ((\Mux323~14_combout\ & (\library1|Mux0~1075_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~1104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~1075_combout\,
	datad => \library1|Mux0~1104_combout\,
	combout => \library1|Mux0~1105_combout\);

-- Location: LCCOMB_X34_Y57_N10
\library1|Mux0~860\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~860_combout\ = (\Mux325~18_combout\ & !\Mux327~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~860_combout\);

-- Location: LCCOMB_X34_Y58_N10
\library1|Mux0~1059\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1059_combout\ = (\library1|Mux0~860_combout\ & ((\Mux324~15_combout\) # ((\vga1|xPixel\(2) & \vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~860_combout\,
	combout => \library1|Mux0~1059_combout\);

-- Location: LCCOMB_X39_Y54_N12
\library1|Mux0~1135\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1135_combout\ = (!\vga1|yPixel\(1) & (\Mux324~15_combout\ & !\vga1|yPixel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~1135_combout\);

-- Location: LCCOMB_X39_Y54_N4
\library1|Mux0~1039\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1039_combout\ = (\Mux324~15_combout\ & (\vga1|yPixel\(2) $ (((\vga1|xPixel\(0) & !\vga1|yPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~1039_combout\);

-- Location: LCCOMB_X39_Y54_N18
\library1|Mux0~1040\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1040_combout\ = (\vga1|yPixel\(1) & ((\vga1|yPixel\(2)) # ((\vga1|xPixel\(0) & \Mux324~15_combout\)))) # (!\vga1|yPixel\(1) & (((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~1040_combout\);

-- Location: LCCOMB_X39_Y54_N20
\library1|Mux0~1041\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1041_combout\ = (\vga1|xPixel\(1) & (((\Mux325~18_combout\)))) # (!\vga1|xPixel\(1) & (\library1|Mux0~1040_combout\ & (\vga1|yPixel\(2) $ (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~1040_combout\,
	combout => \library1|Mux0~1041_combout\);

-- Location: LCCOMB_X39_Y54_N22
\library1|Mux0~1042\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1042_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~1041_combout\ & (!\library1|Mux0~1135_combout\)) # (!\library1|Mux0~1041_combout\ & ((!\library1|Mux0~1039_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~1041_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1135_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~1039_combout\,
	datad => \library1|Mux0~1041_combout\,
	combout => \library1|Mux0~1042_combout\);

-- Location: LCCOMB_X38_Y56_N0
\library1|Mux0~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~306_combout\ = (\vga1|xPixel\(0) & \vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~306_combout\);

-- Location: LCCOMB_X33_Y58_N28
\library1|Mux0~1043\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1043_combout\ = (\library1|Mux0~93_combout\ & (((\Mux325~18_combout\) # (\Mux324~15_combout\)))) # (!\library1|Mux0~93_combout\ & (\library1|Mux0~306_combout\ & (!\Mux325~18_combout\ & !\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~93_combout\,
	datab => \library1|Mux0~306_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1043_combout\);

-- Location: LCCOMB_X33_Y58_N14
\library1|Mux0~1044\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1044_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~93_combout\ & ((\library1|Mux0~1043_combout\) # (!\vga1|xPixel\(0)))) # (!\library1|Mux0~93_combout\ & ((!\library1|Mux0~1043_combout\))))) # (!\vga1|xPixel\(1) & 
-- (((!\library1|Mux0~1043_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~93_combout\,
	datad => \library1|Mux0~1043_combout\,
	combout => \library1|Mux0~1044_combout\);

-- Location: LCCOMB_X34_Y58_N30
\library1|Mux0~1045\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1045_combout\ = (!\vga1|xPixel\(2) & ((\Mux327~15_combout\ & (\library1|Mux0~1042_combout\)) # (!\Mux327~15_combout\ & ((\library1|Mux0~1044_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~1042_combout\,
	datad => \library1|Mux0~1044_combout\,
	combout => \library1|Mux0~1045_combout\);

-- Location: LCCOMB_X34_Y55_N0
\library1|Mux0~1055\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1055_combout\ = (\vga1|xPixel\(1) & (((\Mux324~15_combout\) # (!\Mux327~15_combout\)))) # (!\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (\Mux327~15_combout\ $ (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1055_combout\);

-- Location: LCCOMB_X34_Y55_N14
\library1|Mux0~1056\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1056_combout\ = (\Mux325~18_combout\) # (\library1|Mux0~1055_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~1055_combout\,
	combout => \library1|Mux0~1056_combout\);

-- Location: LCCOMB_X34_Y55_N30
\library1|Mux0~1046\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1046_combout\ = (\Mux325~18_combout\ & (\Mux327~15_combout\)) # (!\Mux325~18_combout\ & ((\vga1|xPixel\(0) & ((!\Mux324~15_combout\))) # (!\vga1|xPixel\(0) & (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~1046_combout\);

-- Location: LCCOMB_X34_Y57_N2
\library1|Mux0~1012\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1012_combout\ = (\vga1|xPixel\(1) & (!\Mux325~18_combout\ & !\Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1012_combout\);

-- Location: LCCOMB_X34_Y55_N8
\library1|Mux0~1047\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1047_combout\ = (\Mux327~15_combout\ & (!\vga1|xPixel\(1) & (\library1|Mux0~1046_combout\))) # (!\Mux327~15_combout\ & ((\library1|Mux0~1012_combout\) # ((!\vga1|xPixel\(1) & \library1|Mux0~1046_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~1046_combout\,
	datad => \library1|Mux0~1012_combout\,
	combout => \library1|Mux0~1047_combout\);

-- Location: LCCOMB_X34_Y55_N6
\library1|Mux0~1052\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1052_combout\ = (\vga1|xPixel\(1)) # ((!\Mux327~15_combout\ & \vga1|xPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~1052_combout\);

-- Location: LCCOMB_X34_Y55_N4
\library1|Mux0~1053\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1053_combout\ = (\Mux327~15_combout\ & ((\Mux324~15_combout\ & (\Mux325~18_combout\)) # (!\Mux324~15_combout\ & ((!\library1|Mux0~1052_combout\))))) # (!\Mux327~15_combout\ & (!\Mux324~15_combout\ & (!\Mux325~18_combout\ & 
-- \library1|Mux0~1052_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~1052_combout\,
	combout => \library1|Mux0~1053_combout\);

-- Location: LCCOMB_X34_Y55_N22
\library1|Mux0~1048\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1048_combout\ = (!\Mux324~15_combout\ & ((\vga1|xPixel\(1) & ((!\Mux327~15_combout\))) # (!\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (\Mux327~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1048_combout\);

-- Location: LCCOMB_X34_Y55_N20
\library1|Mux0~1049\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1049_combout\ = (\Mux327~15_combout\ & \Mux324~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1049_combout\);

-- Location: LCCOMB_X34_Y55_N2
\library1|Mux0~1050\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1050_combout\ = (\Mux325~18_combout\ & (((\vga1|xPixel\(1))))) # (!\Mux325~18_combout\ & (\library1|Mux0~1049_combout\ & ((\vga1|yPixel\(0)) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~1049_combout\,
	combout => \library1|Mux0~1050_combout\);

-- Location: LCCOMB_X34_Y55_N28
\library1|Mux0~1051\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1051_combout\ = (\Mux325~18_combout\ & (\library1|Mux0~419_combout\ & ((!\library1|Mux0~1050_combout\)))) # (!\Mux325~18_combout\ & (((\library1|Mux0~1048_combout\) # (\library1|Mux0~1050_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~419_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~1048_combout\,
	datad => \library1|Mux0~1050_combout\,
	combout => \library1|Mux0~1051_combout\);

-- Location: LCCOMB_X34_Y55_N18
\library1|Mux0~1054\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1054_combout\ = (\vga1|yPixel\(1) & (\vga1|yPixel\(2))) # (!\vga1|yPixel\(1) & ((\vga1|yPixel\(2) & ((\library1|Mux0~1051_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~1053_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~1053_combout\,
	datad => \library1|Mux0~1051_combout\,
	combout => \library1|Mux0~1054_combout\);

-- Location: LCCOMB_X34_Y55_N16
\library1|Mux0~1057\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1057_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~1054_combout\ & (\library1|Mux0~1056_combout\)) # (!\library1|Mux0~1054_combout\ & ((\library1|Mux0~1047_combout\))))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~1054_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~1056_combout\,
	datac => \library1|Mux0~1047_combout\,
	datad => \library1|Mux0~1054_combout\,
	combout => \library1|Mux0~1057_combout\);

-- Location: LCCOMB_X34_Y58_N28
\library1|Mux0~1058\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1058_combout\ = (!\vga1|yPixel\(3) & ((\library1|Mux0~1045_combout\) # ((\vga1|xPixel\(2) & \library1|Mux0~1057_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~1045_combout\,
	datad => \library1|Mux0~1057_combout\,
	combout => \library1|Mux0~1058_combout\);

-- Location: LCCOMB_X34_Y58_N20
\library1|Mux0~1060\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1060_combout\ = (\library1|Mux0~1058_combout\) # ((\library1|Mux0~1059_combout\ & (\library1|Mux0~706_combout\ & \vga1|yPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1059_combout\,
	datab => \library1|Mux0~706_combout\,
	datac => \vga1|yPixel\(3),
	datad => \library1|Mux0~1058_combout\,
	combout => \library1|Mux0~1060_combout\);

-- Location: LCCOMB_X34_Y58_N24
\library1|Mux0~1106\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1106_combout\ = (\Mux321~16_combout\ & (\library1|Mux0~1038_combout\ & ((\library1|Mux0~1060_combout\)))) # (!\Mux321~16_combout\ & ((\library1|Mux0~1105_combout\) # ((\library1|Mux0~1038_combout\ & \library1|Mux0~1060_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~1038_combout\,
	datac => \library1|Mux0~1105_combout\,
	datad => \library1|Mux0~1060_combout\,
	combout => \library1|Mux0~1106_combout\);

-- Location: LCCOMB_X34_Y58_N26
\library1|Mux0~1107\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1107_combout\ = (\library1|Mux0~1142_combout\ & ((\library1|Mux0~1037_combout\) # ((!\Mux320~4_combout\ & \library1|Mux0~1106_combout\)))) # (!\library1|Mux0~1142_combout\ & (((!\Mux320~4_combout\ & \library1|Mux0~1106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1142_combout\,
	datab => \library1|Mux0~1037_combout\,
	datac => \Mux320~4_combout\,
	datad => \library1|Mux0~1106_combout\,
	combout => \library1|Mux0~1107_combout\);

-- Location: LCCOMB_X42_Y55_N6
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (!\vga1|yPixel\(8) & ((\vga1|yPixel\(5) & (!\vga1|yPixel\(6) & \vga1|yPixel\(7))) # (!\vga1|yPixel\(5) & (\vga1|yPixel\(6) & !\vga1|yPixel\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(5),
	datab => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(8),
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X43_Y57_N20
\Mux326~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~2_combout\ = (\vga1|yPixel\(5) & ((\vga1|xPixel\(5) & (!\vga1|yPixel\(7) & !\vga1|yPixel\(6))) # (!\vga1|xPixel\(5) & ((\vga1|yPixel\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|yPixel\(7),
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(5),
	combout => \Mux326~2_combout\);

-- Location: LCCOMB_X42_Y57_N8
\Mux326~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~3_combout\ = (\vga1|xPixel\(4) & (((\Mux137~0_combout\)))) # (!\vga1|xPixel\(4) & (\Mux326~2_combout\ & (\vga1|yPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~2_combout\,
	datab => \vga1|yPixel\(8),
	datac => \vga1|xPixel\(4),
	datad => \Mux137~0_combout\,
	combout => \Mux326~3_combout\);

-- Location: LCCOMB_X42_Y57_N10
\Mux326~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~4_combout\ = (\vga1|xPixel\(5) & ((\vga1|xPixel\(4) & (\Mux145~0_combout\)) # (!\vga1|xPixel\(4) & ((\Mux137~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux145~0_combout\,
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(5),
	datad => \Mux137~0_combout\,
	combout => \Mux326~4_combout\);

-- Location: LCCOMB_X42_Y57_N0
\Mux326~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~5_combout\ = (\vga1|xPixel\(6) & ((\vga1|xPixel\(7)) # ((\Mux326~3_combout\)))) # (!\vga1|xPixel\(6) & (!\vga1|xPixel\(7) & ((\Mux326~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(7),
	datac => \Mux326~3_combout\,
	datad => \Mux326~4_combout\,
	combout => \Mux326~5_combout\);

-- Location: LCCOMB_X42_Y57_N14
\Mux326~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~6_combout\ = (\vga1|xPixel\(7) & (\Mux38~0_combout\ & ((\vga1|xPixel\(5)) # (\Mux326~5_combout\)))) # (!\vga1|xPixel\(7) & (((\Mux326~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(7),
	datac => \Mux38~0_combout\,
	datad => \Mux326~5_combout\,
	combout => \Mux326~6_combout\);

-- Location: LCCOMB_X39_Y55_N30
\Mux326~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~15_combout\ = (\vga1|xPixel\(5) & ((!\vga1|yPixel\(5)))) # (!\vga1|xPixel\(5) & (\vga1|xPixel\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(5),
	datad => \vga1|yPixel\(5),
	combout => \Mux326~15_combout\);

-- Location: LCCOMB_X42_Y55_N16
\Mux326~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~16_combout\ = (\vga1|yPixel\(7) & ((\vga1|yPixel\(5)) # ((\vga1|yPixel\(6))))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(5) & ((\vga1|xPixel\(4)) # (\vga1|yPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|yPixel\(5),
	datac => \vga1|xPixel\(4),
	datad => \vga1|yPixel\(6),
	combout => \Mux326~16_combout\);

-- Location: LCCOMB_X42_Y55_N20
\Mux326~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~17_combout\ = (!\vga1|yPixel\(8) & ((\Mux326~15_combout\ & (\Mux326~16_combout\ & !\vga1|yPixel\(6))) # (!\Mux326~15_combout\ & (!\Mux326~16_combout\ & \vga1|yPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~15_combout\,
	datab => \Mux326~16_combout\,
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(8),
	combout => \Mux326~17_combout\);

-- Location: LCCOMB_X42_Y55_N14
\Mux326~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~18_combout\ = (\Mux326~17_combout\) # ((\Mux38~0_combout\ & (!\vga1|xPixel\(6) & \vga1|xPixel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~0_combout\,
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(5),
	datad => \Mux326~17_combout\,
	combout => \Mux326~18_combout\);

-- Location: LCCOMB_X42_Y57_N2
\Mux326~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~11_combout\ = (\vga1|yPixel\(8) & (!\vga1|yPixel\(7) & (\vga1|yPixel\(6) $ (\vga1|xPixel\(5))))) # (!\vga1|yPixel\(8) & (!\vga1|yPixel\(6) & ((\vga1|yPixel\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(8),
	datac => \vga1|xPixel\(5),
	datad => \vga1|yPixel\(7),
	combout => \Mux326~11_combout\);

-- Location: LCCOMB_X42_Y57_N20
\Mux326~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~12_combout\ = (\vga1|xPixel\(4) & ((\vga1|xPixel\(6)) # (\vga1|yPixel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(4),
	datad => \vga1|yPixel\(5),
	combout => \Mux326~12_combout\);

-- Location: LCCOMB_X42_Y57_N26
\Mux326~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~13_combout\ = (\Mux326~12_combout\ & ((\vga1|xPixel\(6) & (\Mux145~0_combout\)) # (!\vga1|xPixel\(6) & ((\Mux326~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux145~0_combout\,
	datab => \vga1|xPixel\(6),
	datac => \Mux326~11_combout\,
	datad => \Mux326~12_combout\,
	combout => \Mux326~13_combout\);

-- Location: LCCOMB_X42_Y57_N4
\Mux254~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux254~0_combout\ = (\vga1|yPixel\(5) & ((\vga1|yPixel\(8) & ((!\vga1|yPixel\(7)))) # (!\vga1|yPixel\(8) & (!\vga1|yPixel\(6) & \vga1|yPixel\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(7),
	combout => \Mux254~0_combout\);

-- Location: LCCOMB_X42_Y57_N18
\Mux326~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~7_combout\ = (\vga1|xPixel\(5) & (!\vga1|xPixel\(7) & (\Mux254~0_combout\ & \Mux325~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(7),
	datac => \Mux254~0_combout\,
	datad => \Mux325~14_combout\,
	combout => \Mux326~7_combout\);

-- Location: LCCOMB_X42_Y57_N30
\Mux326~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~9_combout\ = (\Mux64~0_combout\ & (\vga1|yPixel\(5) & (\vga1|xPixel\(5) $ (\vga1|xPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(6),
	datac => \Mux64~0_combout\,
	datad => \vga1|yPixel\(5),
	combout => \Mux326~9_combout\);

-- Location: LCCOMB_X42_Y57_N24
\Mux326~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~8_combout\ = (\vga1|xPixel\(5) & (\vga1|xPixel\(6) & ((\Mux137~0_combout\)))) # (!\vga1|xPixel\(5) & (!\vga1|xPixel\(6) & (\Mux254~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(6),
	datac => \Mux254~0_combout\,
	datad => \Mux137~0_combout\,
	combout => \Mux326~8_combout\);

-- Location: LCCOMB_X42_Y57_N28
\Mux326~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~10_combout\ = (!\vga1|xPixel\(4) & ((\Mux326~9_combout\) # (\Mux326~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(4),
	datac => \Mux326~9_combout\,
	datad => \Mux326~8_combout\,
	combout => \Mux326~10_combout\);

-- Location: LCCOMB_X42_Y57_N16
\Mux326~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~14_combout\ = (\Mux326~7_combout\) # ((\vga1|xPixel\(7) & ((\Mux326~13_combout\) # (\Mux326~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~13_combout\,
	datab => \Mux326~7_combout\,
	datac => \vga1|xPixel\(7),
	datad => \Mux326~10_combout\,
	combout => \Mux326~14_combout\);

-- Location: LCCOMB_X42_Y57_N6
\Mux326~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~19_combout\ = (\vga1|xPixel\(9) & (!\vga1|xPixel\(7) & (\Mux326~18_combout\))) # (!\vga1|xPixel\(9) & (((\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(7),
	datac => \Mux326~18_combout\,
	datad => \Mux326~14_combout\,
	combout => \Mux326~19_combout\);

-- Location: LCCOMB_X42_Y57_N22
\Mux326~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~20_combout\ = (\vga1|xPixel\(8) & (!\vga1|xPixel\(9) & (\Mux326~6_combout\))) # (!\vga1|xPixel\(8) & (((\Mux326~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(8),
	datac => \Mux326~6_combout\,
	datad => \Mux326~19_combout\,
	combout => \Mux326~20_combout\);

-- Location: LCCOMB_X43_Y59_N22
\library1|Mux0~961\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~961_combout\ = (\Mux322~16_combout\ & (((!\Mux323~14_combout\ & !\Mux325~18_combout\)))) # (!\Mux322~16_combout\ & (!\vga1|yPixel\(2) & ((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~961_combout\);

-- Location: LCCOMB_X43_Y59_N30
\library1|Mux0~959\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~959_combout\ = (\vga1|yPixel\(2) & (!\Mux322~16_combout\ & \Mux325~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \Mux322~16_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~959_combout\);

-- Location: LCCOMB_X43_Y59_N14
\library1|Mux0~957\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~957_combout\ = (\vga1|yPixel\(2) & (((\Mux325~18_combout\) # (!\Mux322~16_combout\)))) # (!\vga1|yPixel\(2) & (\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # (!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~957_combout\);

-- Location: LCCOMB_X43_Y59_N20
\library1|Mux0~1133\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1133_combout\ = (\Mux325~18_combout\ & (((!\vga1|yPixel\(2) & \vga1|xPixel\(1))) # (!\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1133_combout\);

-- Location: LCCOMB_X43_Y59_N12
\library1|Mux0~958\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~958_combout\ = (\Mux327~15_combout\ & (\Mux323~14_combout\)) # (!\Mux327~15_combout\ & ((\Mux323~14_combout\ $ (!\Mux322~16_combout\)) # (!\library1|Mux0~1133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~1133_combout\,
	combout => \library1|Mux0~958_combout\);

-- Location: LCCOMB_X43_Y59_N16
\library1|Mux0~960\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~960_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~958_combout\ & (!\library1|Mux0~959_combout\)) # (!\library1|Mux0~958_combout\ & ((\library1|Mux0~957_combout\))))) # (!\Mux327~15_combout\ & (((\library1|Mux0~958_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~959_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~957_combout\,
	datad => \library1|Mux0~958_combout\,
	combout => \library1|Mux0~960_combout\);

-- Location: LCCOMB_X43_Y59_N24
\library1|Mux0~962\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~962_combout\ = (\Mux324~15_combout\ & (((\library1|Mux0~960_combout\)))) # (!\Mux324~15_combout\ & ((\Mux327~15_combout\) # ((!\library1|Mux0~961_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~961_combout\,
	datad => \library1|Mux0~960_combout\,
	combout => \library1|Mux0~962_combout\);

-- Location: LCCOMB_X33_Y59_N26
\library1|Mux0~907\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~907_combout\ = (\Mux324~15_combout\ & (!\vga1|yPixel\(1))) # (!\Mux324~15_combout\ & ((\vga1|xPixel\(1)) # ((\vga1|yPixel\(1) & !\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~907_combout\);

-- Location: LCCOMB_X33_Y59_N30
\library1|Mux0~905\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~905_combout\ = (\vga1|xPixel\(1) & ((\vga1|yPixel\(1) & (!\Mux324~15_combout\ & \Mux323~14_combout\)) # (!\vga1|yPixel\(1) & (\Mux324~15_combout\ & !\Mux323~14_combout\)))) # (!\vga1|xPixel\(1) & (((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~905_combout\);

-- Location: LCCOMB_X33_Y59_N20
\library1|Mux0~904\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~904_combout\ = (\Mux323~14_combout\ & (((!\vga1|yPixel\(1) & !\Mux324~15_combout\)) # (!\vga1|xPixel\(1)))) # (!\Mux323~14_combout\ & (\vga1|yPixel\(1) & ((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~904_combout\);

-- Location: LCCOMB_X33_Y59_N24
\library1|Mux0~906\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~906_combout\ = (!\Mux325~18_combout\ & ((\vga1|yPixel\(2) & ((\library1|Mux0~904_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~905_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~905_combout\,
	datad => \library1|Mux0~904_combout\,
	combout => \library1|Mux0~906_combout\);

-- Location: LCCOMB_X33_Y59_N4
\library1|Mux0~908\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~908_combout\ = (\library1|Mux0~906_combout\) # ((\vga1|yPixel\(2) & (\Mux325~18_combout\ & \library1|Mux0~907_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~907_combout\,
	datad => \library1|Mux0~906_combout\,
	combout => \library1|Mux0~908_combout\);

-- Location: LCCOMB_X39_Y58_N22
\library1|Mux0~500\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~500_combout\ = (!\vga1|yPixel\(1) & (\vga1|yPixel\(2) & (\Mux324~15_combout\ & !\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~500_combout\);

-- Location: LCCOMB_X39_Y58_N6
\library1|Mux0~914\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~914_combout\ = (\vga1|xPixel\(1) & (!\vga1|yPixel\(2) & (!\Mux324~15_combout\ & \Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~914_combout\);

-- Location: LCCOMB_X39_Y58_N0
\library1|Mux0~915\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~915_combout\ = (!\Mux325~18_combout\ & ((\library1|Mux0~914_combout\) # ((!\vga1|xPixel\(1) & \library1|Mux0~500_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~500_combout\,
	datad => \library1|Mux0~914_combout\,
	combout => \library1|Mux0~915_combout\);

-- Location: LCCOMB_X41_Y59_N12
\library1|Mux0~916\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~916_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(1)) # ((\Mux323~14_combout\ & !\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (!\Mux323~14_combout\ & (\Mux324~15_combout\ & !\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~916_combout\);

-- Location: LCCOMB_X36_Y59_N30
\library1|Mux0~917\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~917_combout\ = (\library1|Mux0~915_combout\) # ((\vga1|xPixel\(1) & (\vga1|yPixel\(2) & \library1|Mux0~916_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~915_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~916_combout\,
	combout => \library1|Mux0~917_combout\);

-- Location: LCCOMB_X38_Y57_N6
\library1|Mux0~911\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~911_combout\ = (\vga1|yPixel\(2) & ((\vga1|xPixel\(1)) # ((\vga1|yPixel\(0) & \vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~911_combout\);

-- Location: LCCOMB_X38_Y57_N4
\library1|Mux0~912\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~912_combout\ = (\vga1|yPixel\(1) & ((\Mux323~14_combout\ & ((!\vga1|yPixel\(2)))) # (!\Mux323~14_combout\ & (\library1|Mux0~911_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~911_combout\,
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~912_combout\);

-- Location: LCCOMB_X39_Y59_N0
\library1|Mux0~909\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~909_combout\ = (\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & (!\Mux323~14_combout\))) # (!\vga1|yPixel\(2) & (\vga1|yPixel\(1) & ((\Mux323~14_combout\) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~909_combout\);

-- Location: LCCOMB_X39_Y59_N4
\library1|Mux0~1131\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1131_combout\ = (!\vga1|yPixel\(2) & (!\Mux323~14_combout\ & \vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~1131_combout\);

-- Location: LCCOMB_X39_Y59_N18
\library1|Mux0~910\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~910_combout\ = (\Mux325~18_combout\ & ((\Mux324~15_combout\) # ((\library1|Mux0~641_combout\)))) # (!\Mux325~18_combout\ & (!\Mux324~15_combout\ & (!\library1|Mux0~1131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~1131_combout\,
	datad => \library1|Mux0~641_combout\,
	combout => \library1|Mux0~910_combout\);

-- Location: LCCOMB_X36_Y59_N28
\library1|Mux0~913\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~913_combout\ = (\Mux324~15_combout\ & ((\library1|Mux0~910_combout\ & (\library1|Mux0~912_combout\)) # (!\library1|Mux0~910_combout\ & ((\library1|Mux0~909_combout\))))) # (!\Mux324~15_combout\ & (((\library1|Mux0~910_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~912_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~909_combout\,
	datad => \library1|Mux0~910_combout\,
	combout => \library1|Mux0~913_combout\);

-- Location: LCCOMB_X36_Y59_N8
\library1|Mux0~918\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~918_combout\ = (\Mux327~15_combout\ & (\Mux322~16_combout\)) # (!\Mux327~15_combout\ & ((\Mux322~16_combout\ & ((\library1|Mux0~913_combout\))) # (!\Mux322~16_combout\ & (\library1|Mux0~917_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~917_combout\,
	datad => \library1|Mux0~913_combout\,
	combout => \library1|Mux0~918_combout\);

-- Location: LCCOMB_X33_Y59_N8
\library1|Mux0~922\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~922_combout\ = (\Mux325~18_combout\ & (((\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(1) & ((!\vga1|yPixel\(2)) # (!\Mux324~15_combout\))) # (!\vga1|yPixel\(1) & ((\vga1|yPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~922_combout\);

-- Location: LCCOMB_X33_Y59_N18
\library1|Mux0~1132\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1132_combout\ = (\vga1|xPixel\(0) & (((\vga1|yPixel\(1)) # (\vga1|yPixel\(2))) # (!\Mux325~18_combout\))) # (!\vga1|xPixel\(0) & (\Mux325~18_combout\ & ((!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux325~18_combout\,
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~1132_combout\);

-- Location: LCCOMB_X33_Y59_N22
\library1|Mux0~923\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~923_combout\ = (\Mux323~14_combout\ & (\library1|Mux0~922_combout\)) # (!\Mux323~14_combout\ & (((\library1|Mux0~1132_combout\) # (!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \library1|Mux0~922_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~1132_combout\,
	combout => \library1|Mux0~923_combout\);

-- Location: LCCOMB_X33_Y59_N2
\library1|Mux0~919\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~919_combout\ = (\vga1|yPixel\(2) & ((\Mux325~18_combout\ & (!\vga1|yPixel\(1) & !\Mux323~14_combout\)) # (!\Mux325~18_combout\ & ((\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~919_combout\);

-- Location: LCCOMB_X33_Y59_N0
\library1|Mux0~920\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~920_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(1) & ((\Mux323~14_combout\))) # (!\vga1|yPixel\(1) & (!\vga1|yPixel\(2))))) # (!\Mux325~18_combout\ & (\Mux323~14_combout\ & ((\vga1|yPixel\(2)) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~920_combout\);

-- Location: LCCOMB_X33_Y59_N6
\library1|Mux0~921\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~921_combout\ = (\vga1|xPixel\(1) & ((\Mux324~15_combout\ & ((!\library1|Mux0~920_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~919_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~919_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~920_combout\,
	combout => \library1|Mux0~921_combout\);

-- Location: LCCOMB_X33_Y59_N16
\library1|Mux0~924\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~924_combout\ = (\library1|Mux0~921_combout\) # ((!\vga1|xPixel\(1) & \library1|Mux0~923_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~923_combout\,
	datad => \library1|Mux0~921_combout\,
	combout => \library1|Mux0~924_combout\);

-- Location: LCCOMB_X36_Y59_N26
\library1|Mux0~925\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~925_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~918_combout\ & ((\library1|Mux0~924_combout\))) # (!\library1|Mux0~918_combout\ & (\library1|Mux0~908_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~918_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~908_combout\,
	datac => \library1|Mux0~918_combout\,
	datad => \library1|Mux0~924_combout\,
	combout => \library1|Mux0~925_combout\);

-- Location: LCCOMB_X38_Y59_N30
\library1|Mux0~930\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~930_combout\ = (\Mux322~16_combout\ & (\vga1|yPixel\(1) & (!\Mux323~14_combout\ & \vga1|xPixel\(1)))) # (!\Mux322~16_combout\ & (((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~930_combout\);

-- Location: LCCOMB_X38_Y59_N4
\library1|Mux0~931\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~931_combout\ = (\Mux325~18_combout\ & ((\Mux327~15_combout\ & ((\library1|Mux0~930_combout\))) # (!\Mux327~15_combout\ & (\Mux322~16_combout\)))) # (!\Mux325~18_combout\ & (!\Mux322~16_combout\ & (\library1|Mux0~930_combout\ $ 
-- (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~930_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~931_combout\);

-- Location: LCCOMB_X38_Y59_N22
\library1|Mux0~926\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~926_combout\ = (\Mux322~16_combout\ & ((\Mux323~14_combout\ & ((!\Mux327~15_combout\))) # (!\Mux323~14_combout\ & (!\Mux325~18_combout\ & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~926_combout\);

-- Location: LCCOMB_X38_Y59_N20
\library1|Mux0~927\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~927_combout\ = (\Mux323~14_combout\ & ((\Mux325~18_combout\ & ((!\Mux327~15_combout\))) # (!\Mux325~18_combout\ & (!\Mux322~16_combout\ & \Mux327~15_combout\)))) # (!\Mux323~14_combout\ & (((\Mux322~16_combout\ & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~927_combout\);

-- Location: LCCOMB_X38_Y59_N10
\library1|Mux0~928\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~928_combout\ = (\Mux322~16_combout\ & (\Mux325~18_combout\ $ (\Mux323~14_combout\ $ (!\Mux327~15_combout\)))) # (!\Mux322~16_combout\ & (\Mux325~18_combout\ & ((!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~928_combout\);

-- Location: LCCOMB_X38_Y59_N0
\library1|Mux0~929\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~929_combout\ = (\vga1|yPixel\(2) & (((\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\ & (!\library1|Mux0~927_combout\)) # (!\Mux324~15_combout\ & ((!\library1|Mux0~928_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~927_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~928_combout\,
	combout => \library1|Mux0~929_combout\);

-- Location: LCCOMB_X38_Y59_N14
\library1|Mux0~932\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~932_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~929_combout\ & (\library1|Mux0~931_combout\)) # (!\library1|Mux0~929_combout\ & ((\library1|Mux0~926_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~929_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~931_combout\,
	datac => \library1|Mux0~926_combout\,
	datad => \library1|Mux0~929_combout\,
	combout => \library1|Mux0~932_combout\);

-- Location: LCCOMB_X35_Y59_N0
\library1|Mux0~933\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~933_combout\ = (\Mux323~14_combout\ & (((\vga1|yPixel\(1) & \vga1|yPixel\(2))) # (!\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~933_combout\);

-- Location: LCCOMB_X38_Y57_N10
\library1|Mux0~934\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~934_combout\ = (\vga1|xPixel\(0)) # (\vga1|yPixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(0),
	combout => \library1|Mux0~934_combout\);

-- Location: LCCOMB_X38_Y57_N16
\library1|Mux0~935\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~935_combout\ = (\vga1|yPixel\(1) & (((!\Mux327~15_combout\)))) # (!\vga1|yPixel\(1) & (!\Mux323~14_combout\ & ((!\Mux327~15_combout\) # (!\library1|Mux0~934_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~934_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~935_combout\);

-- Location: LCCOMB_X38_Y57_N2
\library1|Mux0~936\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~936_combout\ = (\vga1|yPixel\(2) & (\Mux323~14_combout\)) # (!\vga1|yPixel\(2) & ((\library1|Mux0~935_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~935_combout\,
	combout => \library1|Mux0~936_combout\);

-- Location: LCCOMB_X39_Y59_N10
\library1|Mux0~1147\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1147_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(1) & ((\vga1|yPixel\(2)) # (!\Mux323~14_combout\))) # (!\vga1|yPixel\(1) & (!\Mux323~14_combout\ & \vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~1147_combout\);

-- Location: LCCOMB_X36_Y59_N6
\library1|Mux0~1148\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1148_combout\ = (\Mux324~15_combout\ & ((\Mux323~14_combout\) # ((\Mux322~16_combout\) # (\library1|Mux0~1147_combout\)))) # (!\Mux324~15_combout\ & (\Mux323~14_combout\ & (!\Mux322~16_combout\ & \library1|Mux0~1147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~1147_combout\,
	combout => \library1|Mux0~1148_combout\);

-- Location: LCCOMB_X36_Y59_N12
\library1|Mux0~937\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~937_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~1148_combout\ & ((\library1|Mux0~936_combout\))) # (!\library1|Mux0~1148_combout\ & (!\library1|Mux0~933_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~1148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~933_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~936_combout\,
	datad => \library1|Mux0~1148_combout\,
	combout => \library1|Mux0~937_combout\);

-- Location: LCCOMB_X41_Y59_N16
\library1|Mux0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~151_combout\ = (!\vga1|yPixel\(1) & !\vga1|yPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~151_combout\);

-- Location: LCCOMB_X41_Y59_N0
\library1|Mux0~953\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~953_combout\ = (!\Mux322~16_combout\ & (\Mux323~14_combout\ & ((\library1|Mux0~151_combout\) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~151_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~953_combout\);

-- Location: LCCOMB_X41_Y59_N24
\library1|Mux0~949\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~949_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # ((!\vga1|xPixel\(0) & \vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~949_combout\);

-- Location: LCCOMB_X41_Y59_N14
\library1|Mux0~950\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~950_combout\ = ((\Mux323~14_combout\ & (\Mux324~15_combout\)) # (!\Mux323~14_combout\ & ((!\library1|Mux0~949_combout\)))) # (!\Mux322~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~949_combout\,
	combout => \library1|Mux0~950_combout\);

-- Location: LCCOMB_X41_Y59_N28
\library1|Mux0~951\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~951_combout\ = (\Mux323~14_combout\ & (!\vga1|yPixel\(1) & ((!\vga1|yPixel\(2))))) # (!\Mux323~14_combout\ & (((\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~951_combout\);

-- Location: LCCOMB_X41_Y59_N18
\library1|Mux0~952\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~952_combout\ = (\Mux322~16_combout\ & ((\Mux324~15_combout\ & ((!\library1|Mux0~951_combout\))) # (!\Mux324~15_combout\ & (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~951_combout\,
	combout => \library1|Mux0~952_combout\);

-- Location: LCCOMB_X41_Y59_N30
\library1|Mux0~954\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~954_combout\ = (\Mux327~15_combout\ & (((\library1|Mux0~950_combout\)))) # (!\Mux327~15_combout\ & ((\library1|Mux0~953_combout\) # ((\library1|Mux0~952_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~953_combout\,
	datac => \library1|Mux0~950_combout\,
	datad => \library1|Mux0~952_combout\,
	combout => \library1|Mux0~954_combout\);

-- Location: LCCOMB_X36_Y56_N2
\library1|Mux0~938\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~938_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # ((!\vga1|yPixel\(1) & \vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~938_combout\);

-- Location: LCCOMB_X41_Y59_N22
\library1|Mux0~939\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~939_combout\ = (\vga1|yPixel\(2) & (((!\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\ & (\vga1|xPixel\(0) & !\vga1|yPixel\(1))) # (!\Mux324~15_combout\ & ((\vga1|yPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~939_combout\);

-- Location: LCCOMB_X36_Y59_N4
\library1|Mux0~941\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~941_combout\ = (\Mux323~14_combout\ & (\Mux322~16_combout\ $ (((\library1|Mux0~939_combout\) # (\Mux327~15_combout\))))) # (!\Mux323~14_combout\ & (\Mux327~15_combout\ & ((\library1|Mux0~939_combout\) # (!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~939_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~941_combout\);

-- Location: LCCOMB_X36_Y59_N2
\library1|Mux0~940\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~940_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~939_combout\ & (!\Mux323~14_combout\)) # (!\library1|Mux0~939_combout\ & ((!\Mux327~15_combout\))))) # (!\Mux322~16_combout\ & (\Mux323~14_combout\ & ((!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~939_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~940_combout\);

-- Location: LCCOMB_X36_Y59_N14
\library1|Mux0~942\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~942_combout\ = (\library1|Mux0~941_combout\ & ((\library1|Mux0~940_combout\ & (\library1|Mux0~938_combout\)) # (!\library1|Mux0~940_combout\ & ((!\library1|Mux0~500_combout\))))) # (!\library1|Mux0~941_combout\ & 
-- (((\library1|Mux0~940_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~938_combout\,
	datab => \library1|Mux0~500_combout\,
	datac => \library1|Mux0~941_combout\,
	datad => \library1|Mux0~940_combout\,
	combout => \library1|Mux0~942_combout\);

-- Location: LCCOMB_X35_Y59_N26
\library1|Mux0~943\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~943_combout\ = (\Mux322~16_combout\ & ((\vga1|yPixel\(1) & (!\vga1|yPixel\(2))) # (!\vga1|yPixel\(1) & ((\Mux327~15_combout\))))) # (!\Mux322~16_combout\ & (((!\vga1|yPixel\(2) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~943_combout\);

-- Location: LCCOMB_X36_Y59_N0
\library1|Mux0~944\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~944_combout\ = (\vga1|yPixel\(2) & (((!\Mux322~16_combout\ & \Mux327~15_combout\)))) # (!\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & (\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~944_combout\);

-- Location: LCCOMB_X36_Y59_N22
\library1|Mux0~945\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~945_combout\ = (\Mux323~14_combout\ & (((!\library1|Mux0~943_combout\ & !\library1|Mux0~944_combout\)))) # (!\Mux323~14_combout\ & (\library1|Mux0~944_combout\ & ((!\library1|Mux0~943_combout\) # (!\vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~943_combout\,
	datad => \library1|Mux0~944_combout\,
	combout => \library1|Mux0~945_combout\);

-- Location: LCCOMB_X33_Y61_N14
\library1|Mux0~946\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~946_combout\ = (\Mux322~16_combout\ & \Mux323~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~946_combout\);

-- Location: LCCOMB_X36_Y59_N16
\library1|Mux0~947\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~947_combout\ = (\Mux324~15_combout\ & (\library1|Mux0~945_combout\)) # (!\Mux324~15_combout\ & (((\library1|Mux0~946_combout\ & \library1|Mux0~564_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~945_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~946_combout\,
	datad => \library1|Mux0~564_combout\,
	combout => \library1|Mux0~947_combout\);

-- Location: LCCOMB_X36_Y59_N18
\library1|Mux0~948\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~948_combout\ = (\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # ((\library1|Mux0~942_combout\)))) # (!\Mux325~18_combout\ & (!\vga1|xPixel\(1) & ((\library1|Mux0~947_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~942_combout\,
	datad => \library1|Mux0~947_combout\,
	combout => \library1|Mux0~948_combout\);

-- Location: LCCOMB_X36_Y59_N24
\library1|Mux0~955\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~955_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~948_combout\ & ((\library1|Mux0~954_combout\))) # (!\library1|Mux0~948_combout\ & (\library1|Mux0~937_combout\)))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~948_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~937_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~954_combout\,
	datad => \library1|Mux0~948_combout\,
	combout => \library1|Mux0~955_combout\);

-- Location: LCCOMB_X36_Y59_N10
\library1|Mux0~956\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~956_combout\ = (\vga1|xPixel\(2) & (\Mux320~4_combout\)) # (!\vga1|xPixel\(2) & ((\Mux320~4_combout\ & (\library1|Mux0~932_combout\)) # (!\Mux320~4_combout\ & ((\library1|Mux0~955_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~932_combout\,
	datad => \library1|Mux0~955_combout\,
	combout => \library1|Mux0~956_combout\);

-- Location: LCCOMB_X36_Y59_N20
\library1|Mux0~963\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~963_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~956_combout\ & (\library1|Mux0~962_combout\)) # (!\library1|Mux0~956_combout\ & ((\library1|Mux0~925_combout\))))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~956_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~962_combout\,
	datac => \library1|Mux0~925_combout\,
	datad => \library1|Mux0~956_combout\,
	combout => \library1|Mux0~963_combout\);

-- Location: LCCOMB_X33_Y58_N6
\library1|Mux0~1028\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1028_combout\ = (\vga1|xPixel\(2) & (\vga1|yPixel\(2) & (!\Mux325~18_combout\ & !\Mux327~15_combout\))) # (!\vga1|xPixel\(2) & (\Mux327~15_combout\ & (\vga1|yPixel\(2) $ (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~1028_combout\);

-- Location: LCCOMB_X33_Y58_N8
\library1|Mux0~1029\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1029_combout\ = (\Mux325~18_combout\ & (\Mux323~14_combout\ $ (!\library1|Mux0~1028_combout\))) # (!\Mux325~18_combout\ & (!\Mux323~14_combout\ & \library1|Mux0~1028_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1028_combout\,
	combout => \library1|Mux0~1029_combout\);

-- Location: LCCOMB_X33_Y58_N10
\library1|Mux0~1026\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1026_combout\ = (\vga1|yPixel\(2) & (\Mux327~15_combout\ $ (((\Mux325~18_combout\) # (\Mux323~14_combout\))))) # (!\vga1|yPixel\(2) & ((\Mux327~15_combout\) # ((\Mux325~18_combout\ & !\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~1026_combout\);

-- Location: LCCOMB_X33_Y58_N16
\library1|Mux0~1027\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1027_combout\ = (!\Mux324~15_combout\ & ((\library1|Mux0~1026_combout\) # ((\vga1|xPixel\(2) & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1026_combout\,
	combout => \library1|Mux0~1027_combout\);

-- Location: LCCOMB_X33_Y58_N18
\library1|Mux0~1030\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1030_combout\ = (!\Mux320~4_combout\ & ((\library1|Mux0~1027_combout\) # ((\Mux324~15_combout\ & \library1|Mux0~1029_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~1029_combout\,
	datad => \library1|Mux0~1027_combout\,
	combout => \library1|Mux0~1030_combout\);

-- Location: LCCOMB_X34_Y58_N16
\library1|Mux0~1031\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1031_combout\ = (\vga1|yPixel\(2) & (\Mux327~15_combout\ $ (((\vga1|xPixel\(2) & \vga1|xPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~1031_combout\);

-- Location: LCCOMB_X34_Y58_N6
\library1|Mux0~1032\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1032_combout\ = (!\Mux324~15_combout\ & (\Mux320~4_combout\ & (\library1|Mux0~175_combout\ & !\library1|Mux0~1031_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~175_combout\,
	datad => \library1|Mux0~1031_combout\,
	combout => \library1|Mux0~1032_combout\);

-- Location: LCCOMB_X39_Y58_N12
\library1|Mux0~1024\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1024_combout\ = (\Mux320~4_combout\) # ((!\vga1|xPixel\(1) & (\vga1|yPixel\(2) & !\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~1024_combout\);

-- Location: LCCOMB_X39_Y58_N30
\library1|Mux0~1017\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1017_combout\ = (\Mux323~14_combout\ & (((\Mux324~15_combout\)))) # (!\Mux323~14_combout\ & (\vga1|yPixel\(1) & (\vga1|yPixel\(2) $ (!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1017_combout\);

-- Location: LCCOMB_X39_Y58_N4
\library1|Mux0~1018\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1018_combout\ = (\vga1|xPixel\(1) & ((\Mux320~4_combout\) # ((\library1|Mux0~1017_combout\) # (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~1017_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1018_combout\);

-- Location: LCCOMB_X39_Y58_N18
\library1|Mux0~1019\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1019_combout\ = (\Mux323~14_combout\) # ((\vga1|yPixel\(1) & (\vga1|yPixel\(2) & \Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1019_combout\);

-- Location: LCCOMB_X39_Y58_N8
\library1|Mux0~1020\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1020_combout\ = (!\Mux325~18_combout\ & ((\Mux320~4_combout\ & ((!\library1|Mux0~1019_combout\))) # (!\Mux320~4_combout\ & (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux320~4_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1019_combout\,
	combout => \library1|Mux0~1020_combout\);

-- Location: LCCOMB_X39_Y58_N14
\library1|Mux0~1021\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1021_combout\ = (\Mux323~14_combout\) # ((\vga1|yPixel\(2) & ((\vga1|yPixel\(1)) # (!\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(0),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1021_combout\);

-- Location: LCCOMB_X39_Y58_N20
\library1|Mux0~1022\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1022_combout\ = (!\Mux320~4_combout\ & (((!\vga1|xPixel\(1) & \library1|Mux0~1021_combout\)) # (!\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~1021_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1022_combout\);

-- Location: LCCOMB_X39_Y58_N2
\library1|Mux0~1023\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1023_combout\ = (\library1|Mux0~1018_combout\) # ((\library1|Mux0~1020_combout\) # ((\Mux324~15_combout\ & \library1|Mux0~1022_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \library1|Mux0~1018_combout\,
	datac => \library1|Mux0~1020_combout\,
	datad => \library1|Mux0~1022_combout\,
	combout => \library1|Mux0~1023_combout\);

-- Location: LCCOMB_X39_Y58_N26
\library1|Mux0~1134\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1134_combout\ = (\library1|Mux0~1023_combout\) # ((\library1|Mux0~1024_combout\ & (!\Mux323~14_combout\ & \Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1024_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~1023_combout\,
	combout => \library1|Mux0~1134_combout\);

-- Location: LCCOMB_X36_Y54_N16
\library1|Mux0~999\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~999_combout\ = (\vga1|yPixel\(1) & ((!\Mux325~18_combout\) # (!\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~999_combout\);

-- Location: LCCOMB_X36_Y54_N6
\library1|Mux0~1000\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1000_combout\ = (\Mux324~15_combout\ & ((\Mux323~14_combout\) # ((!\Mux325~18_combout\ & \library1|Mux0~999_combout\)))) # (!\Mux324~15_combout\ & (((!\Mux323~14_combout\ & \library1|Mux0~999_combout\)) # (!\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~999_combout\,
	combout => \library1|Mux0~1000_combout\);

-- Location: LCCOMB_X43_Y58_N14
\library1|Mux0~996\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~996_combout\ = (\vga1|yPixel\(1) & ((\Mux324~15_combout\ & ((!\vga1|yPixel\(2)))) # (!\Mux324~15_combout\ & ((\Mux320~4_combout\) # (\vga1|yPixel\(2)))))) # (!\vga1|yPixel\(1) & (\Mux320~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~996_combout\);

-- Location: LCCOMB_X43_Y58_N24
\library1|Mux0~995\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~995_combout\ = (\Mux320~4_combout\) # ((\vga1|yPixel\(1) & (!\Mux324~15_combout\ & !\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~995_combout\);

-- Location: LCCOMB_X43_Y58_N16
\library1|Mux0~997\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~997_combout\ = (\Mux323~14_combout\ & (\Mux325~18_combout\)) # (!\Mux323~14_combout\ & ((\Mux325~18_combout\ & ((\library1|Mux0~995_combout\))) # (!\Mux325~18_combout\ & (\library1|Mux0~996_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~996_combout\,
	datad => \library1|Mux0~995_combout\,
	combout => \library1|Mux0~997_combout\);

-- Location: LCCOMB_X43_Y58_N26
\library1|Mux0~998\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~998_combout\ = (\Mux323~14_combout\ & (!\Mux320~4_combout\ & ((\Mux324~15_combout\) # (!\library1|Mux0~997_combout\)))) # (!\Mux323~14_combout\ & (((\library1|Mux0~997_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~997_combout\,
	combout => \library1|Mux0~998_combout\);

-- Location: LCCOMB_X35_Y58_N8
\library1|Mux0~1001\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1001_combout\ = (\vga1|xPixel\(1) & (((\library1|Mux0~998_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux320~4_combout\) # ((\library1|Mux0~1000_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~1000_combout\,
	datad => \library1|Mux0~998_combout\,
	combout => \library1|Mux0~1001_combout\);

-- Location: LCCOMB_X35_Y58_N22
\library1|Mux0~1002\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1002_combout\ = (\vga1|xPixel\(0) & ((\vga1|xPixel\(1)) # ((!\vga1|yPixel\(1) & \Mux324~15_combout\)))) # (!\vga1|xPixel\(0) & (\vga1|xPixel\(1) & ((!\Mux324~15_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1002_combout\);

-- Location: LCCOMB_X35_Y58_N4
\library1|Mux0~1003\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1003_combout\ = (\Mux325~18_combout\ & ((\Mux323~14_combout\ & (!\Mux324~15_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~1002_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~1002_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1003_combout\);

-- Location: LCCOMB_X36_Y56_N20
\library1|Mux0~1004\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1004_combout\ = (\Mux325~18_combout\ & (((!\Mux324~15_combout\) # (!\vga1|xPixel\(1))) # (!\vga1|xPixel\(0)))) # (!\Mux325~18_combout\ & (((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1004_combout\);

-- Location: LCCOMB_X36_Y56_N14
\library1|Mux0~1005\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1005_combout\ = (\Mux323~14_combout\) # ((\vga1|yPixel\(1) & \library1|Mux0~1004_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1004_combout\,
	combout => \library1|Mux0~1005_combout\);

-- Location: LCCOMB_X35_Y58_N10
\library1|Mux0~1006\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1006_combout\ = (\Mux320~4_combout\ & (\vga1|yPixel\(2))) # (!\Mux320~4_combout\ & ((\vga1|yPixel\(2) & (\library1|Mux0~1003_combout\)) # (!\vga1|yPixel\(2) & ((\library1|Mux0~1005_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~1003_combout\,
	datad => \library1|Mux0~1005_combout\,
	combout => \library1|Mux0~1006_combout\);

-- Location: LCCOMB_X35_Y58_N0
\library1|Mux0~1007\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1007_combout\ = (\Mux325~18_combout\) # ((\Mux323~14_combout\) # ((\vga1|yPixel\(1) & \vga1|xPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1007_combout\);

-- Location: LCCOMB_X35_Y58_N16
\library1|Mux0~1143\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1143_combout\ = (\library1|Mux0~1006_combout\ & (((\Mux324~15_combout\)))) # (!\library1|Mux0~1006_combout\ & (!\Mux323~14_combout\ & ((!\Mux324~15_combout\) # (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~1006_combout\,
	combout => \library1|Mux0~1143_combout\);

-- Location: LCCOMB_X35_Y58_N30
\library1|Mux0~1144\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1144_combout\ = (\Mux320~4_combout\ & (\library1|Mux0~1143_combout\ & ((!\library1|Mux0~1007_combout\) # (!\library1|Mux0~1006_combout\)))) # (!\Mux320~4_combout\ & (\library1|Mux0~1006_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1006_combout\,
	datab => \library1|Mux0~1007_combout\,
	datac => \Mux320~4_combout\,
	datad => \library1|Mux0~1143_combout\,
	combout => \library1|Mux0~1144_combout\);

-- Location: LCCOMB_X35_Y58_N14
\library1|Mux0~1008\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1008_combout\ = (\Mux325~18_combout\ & (!\Mux323~14_combout\ & !\Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1008_combout\);

-- Location: LCCOMB_X43_Y59_N2
\library1|Mux0~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~400_combout\ = (!\Mux325~18_combout\ & (!\Mux323~14_combout\ & !\Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~400_combout\);

-- Location: LCCOMB_X35_Y58_N20
\library1|Mux0~1009\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1009_combout\ = (\Mux325~18_combout\ & (((\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # ((!\vga1|yPixel\(1) & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \vga1|xPixel\(1),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1009_combout\);

-- Location: LCCOMB_X35_Y58_N6
\library1|Mux0~1010\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1010_combout\ = (\library1|Mux0~1009_combout\ & (((\Mux323~14_combout\) # (!\library1|Mux0~306_combout\)) # (!\Mux325~18_combout\))) # (!\library1|Mux0~1009_combout\ & (\Mux325~18_combout\ $ (((\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~306_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1009_combout\,
	combout => \library1|Mux0~1010_combout\);

-- Location: LCCOMB_X36_Y57_N10
\library1|Mux0~1011\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1011_combout\ = (\vga1|xPixel\(1) & (((!\Mux324~15_combout\) # (!\Mux325~18_combout\)) # (!\vga1|xPixel\(0)))) # (!\vga1|xPixel\(1) & (((\Mux325~18_combout\ & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1011_combout\);

-- Location: LCCOMB_X35_Y58_N28
\library1|Mux0~1013\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1013_combout\ = (!\Mux323~14_combout\ & ((\vga1|yPixel\(1) & (\library1|Mux0~1011_combout\)) # (!\vga1|yPixel\(1) & ((\library1|Mux0~1012_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~1011_combout\,
	datad => \library1|Mux0~1012_combout\,
	combout => \library1|Mux0~1013_combout\);

-- Location: LCCOMB_X35_Y58_N2
\library1|Mux0~1014\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1014_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~1010_combout\) # ((\Mux320~4_combout\)))) # (!\vga1|yPixel\(2) & (((!\Mux320~4_combout\ & \library1|Mux0~1013_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1010_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux320~4_combout\,
	datad => \library1|Mux0~1013_combout\,
	combout => \library1|Mux0~1014_combout\);

-- Location: LCCOMB_X35_Y58_N24
\library1|Mux0~1015\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1015_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~1014_combout\ & ((!\library1|Mux0~400_combout\))) # (!\library1|Mux0~1014_combout\ & (!\library1|Mux0~1008_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~1014_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~1008_combout\,
	datac => \library1|Mux0~400_combout\,
	datad => \library1|Mux0~1014_combout\,
	combout => \library1|Mux0~1015_combout\);

-- Location: LCCOMB_X35_Y58_N18
\library1|Mux0~1016\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1016_combout\ = (\Mux327~15_combout\ & ((\vga1|xPixel\(2)) # ((\library1|Mux0~1144_combout\)))) # (!\Mux327~15_combout\ & (!\vga1|xPixel\(2) & ((\library1|Mux0~1015_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~1144_combout\,
	datad => \library1|Mux0~1015_combout\,
	combout => \library1|Mux0~1016_combout\);

-- Location: LCCOMB_X35_Y58_N12
\library1|Mux0~1025\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1025_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~1016_combout\ & (\library1|Mux0~1134_combout\)) # (!\library1|Mux0~1016_combout\ & ((\library1|Mux0~1001_combout\))))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~1016_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1134_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~1001_combout\,
	datad => \library1|Mux0~1016_combout\,
	combout => \library1|Mux0~1025_combout\);

-- Location: LCCOMB_X35_Y58_N26
\library1|Mux0~1033\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1033_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~1030_combout\) # ((\library1|Mux0~1032_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~1025_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~1030_combout\,
	datac => \library1|Mux0~1032_combout\,
	datad => \library1|Mux0~1025_combout\,
	combout => \library1|Mux0~1033_combout\);

-- Location: LCCOMB_X39_Y59_N22
\library1|Mux0~965\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~965_combout\ = (\vga1|xPixel\(1) & ((\Mux327~15_combout\ $ (\vga1|xPixel\(2))))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(1) & ((\Mux327~15_combout\) # (!\vga1|xPixel\(2)))) # (!\vga1|yPixel\(1) & (\Mux327~15_combout\ & !\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~965_combout\);

-- Location: LCCOMB_X39_Y59_N8
\library1|Mux0~964\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~964_combout\ = (\Mux327~15_combout\ & (\vga1|xPixel\(2) & ((\vga1|xPixel\(1)) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~964_combout\);

-- Location: LCCOMB_X39_Y59_N12
\library1|Mux0~966\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~966_combout\ = (\library1|Mux0~175_combout\ & ((\Mux324~15_combout\ & ((\library1|Mux0~964_combout\))) # (!\Mux324~15_combout\ & (!\library1|Mux0~965_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~965_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~964_combout\,
	datad => \library1|Mux0~175_combout\,
	combout => \library1|Mux0~966_combout\);

-- Location: LCCOMB_X39_Y59_N30
\library1|Mux0~967\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~967_combout\ = (\vga1|yPixel\(2) & (!\Mux320~4_combout\ & (!\Mux322~16_combout\ & \library1|Mux0~966_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux320~4_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~966_combout\,
	combout => \library1|Mux0~967_combout\);

-- Location: LCCOMB_X33_Y61_N20
\library1|Mux0~968\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~968_combout\ = (\Mux325~18_combout\ & !\Mux324~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~968_combout\);

-- Location: LCCOMB_X33_Y61_N30
\library1|Mux0~969\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~969_combout\ = (\vga1|xPixel\(2) & (\library1|Mux0~968_combout\ & (\library1|Mux0~946_combout\ & \library1|Mux0~564_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~968_combout\,
	datac => \library1|Mux0~946_combout\,
	datad => \library1|Mux0~564_combout\,
	combout => \library1|Mux0~969_combout\);

-- Location: LCCOMB_X34_Y59_N6
\library1|Mux0~991\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~991_combout\ = (\Mux322~16_combout\ & (((!\Mux327~15_combout\ & \Mux325~18_combout\)) # (!\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~991_combout\);

-- Location: LCCOMB_X33_Y62_N8
\library1|Mux0~990\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~990_combout\ = (\Mux324~15_combout\ & ((\Mux322~16_combout\ & (\Mux325~18_combout\)) # (!\Mux322~16_combout\ & ((!\Mux327~15_combout\) # (!\Mux325~18_combout\))))) # (!\Mux324~15_combout\ & (\Mux322~16_combout\ & ((\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~990_combout\);

-- Location: LCCOMB_X33_Y62_N12
\library1|Mux0~1145\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1145_combout\ = (\library1|Mux0~991_combout\ & ((\vga1|xPixel\(1) & ((!\library1|Mux0~990_combout\))) # (!\vga1|xPixel\(1) & (!\Mux325~18_combout\)))) # (!\library1|Mux0~991_combout\ & ((\library1|Mux0~990_combout\ & (\vga1|xPixel\(1))) # 
-- (!\library1|Mux0~990_combout\ & ((\Mux325~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~990_combout\,
	datad => \library1|Mux0~991_combout\,
	combout => \library1|Mux0~1145_combout\);

-- Location: LCCOMB_X33_Y62_N10
\library1|Mux0~1146\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1146_combout\ = (\library1|Mux0~1145_combout\ & (\vga1|xPixel\(2) $ (((\library1|Mux0~990_combout\) # (!\library1|Mux0~991_combout\))))) # (!\library1|Mux0~1145_combout\ & (!\library1|Mux0~991_combout\ & (\vga1|xPixel\(2) & 
-- \library1|Mux0~990_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~991_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~990_combout\,
	datad => \library1|Mux0~1145_combout\,
	combout => \library1|Mux0~1146_combout\);

-- Location: LCCOMB_X33_Y58_N22
\library1|Mux0~979\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~979_combout\ = (\Mux322~16_combout\ & ((\vga1|xPixel\(2)) # (\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datac => \Mux322~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~979_combout\);

-- Location: LCCOMB_X33_Y58_N20
\library1|Mux0~978\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~978_combout\ = (\vga1|xPixel\(2) & ((\vga1|xPixel\(1)) # ((!\Mux322~16_combout\)))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(1) & (!\Mux322~16_combout\ & !\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~978_combout\);

-- Location: LCCOMB_X33_Y58_N12
\library1|Mux0~980\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~980_combout\ = (\Mux325~18_combout\ & (\Mux324~15_combout\ & ((!\library1|Mux0~978_combout\) # (!\library1|Mux0~979_combout\)))) # (!\Mux325~18_combout\ & (\library1|Mux0~979_combout\ $ (((\Mux324~15_combout\ & 
-- !\library1|Mux0~978_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~979_combout\,
	datad => \library1|Mux0~978_combout\,
	combout => \library1|Mux0~980_combout\);

-- Location: LCCOMB_X33_Y58_N26
\library1|Mux0~981\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~981_combout\ = (\Mux324~15_combout\ & (((!\library1|Mux0~979_combout\ & \library1|Mux0~978_combout\)))) # (!\Mux324~15_combout\ & ((\Mux325~18_combout\ & ((\library1|Mux0~978_combout\))) # (!\Mux325~18_combout\ & 
-- (\library1|Mux0~979_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~979_combout\,
	datad => \library1|Mux0~978_combout\,
	combout => \library1|Mux0~981_combout\);

-- Location: LCCOMB_X33_Y62_N14
\library1|Mux0~982\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~982_combout\ = \library1|Mux0~981_combout\ $ (((\Mux327~15_combout\ & \library1|Mux0~980_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datac => \library1|Mux0~980_combout\,
	datad => \library1|Mux0~981_combout\,
	combout => \library1|Mux0~982_combout\);

-- Location: LCCOMB_X33_Y62_N0
\library1|Mux0~983\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~983_combout\ = (\Mux325~18_combout\ & ((\vga1|xPixel\(2)) # ((\vga1|xPixel\(1)) # (!\Mux327~15_combout\)))) # (!\Mux325~18_combout\ & (!\Mux327~15_combout\ & ((\vga1|xPixel\(2)) # (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~983_combout\);

-- Location: LCCOMB_X33_Y62_N30
\library1|Mux0~984\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~984_combout\ = (!\Mux322~16_combout\ & (\library1|Mux0~983_combout\ & ((\Mux327~15_combout\) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~983_combout\,
	combout => \library1|Mux0~984_combout\);

-- Location: LCCOMB_X33_Y62_N4
\library1|Mux0~986\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~986_combout\ = (\vga1|xPixel\(2) & ((\Mux324~15_combout\ $ (!\Mux325~18_combout\)))) # (!\vga1|xPixel\(2) & (\library1|Mux0~306_combout\ & (\Mux324~15_combout\ & \Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~306_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~986_combout\);

-- Location: LCCOMB_X33_Y58_N24
\library1|Mux0~985\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~985_combout\ = (\vga1|xPixel\(2) & (((\Mux325~18_combout\ & \Mux324~15_combout\)))) # (!\vga1|xPixel\(2) & ((\Mux325~18_combout\ & ((\library1|Mux0~306_combout\) # (!\Mux324~15_combout\))) # (!\Mux325~18_combout\ & 
-- ((\Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~306_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~985_combout\);

-- Location: LCCOMB_X33_Y62_N2
\library1|Mux0~987\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~987_combout\ = (\Mux327~15_combout\ & (((\library1|Mux0~986_combout\ & \library1|Mux0~985_combout\)))) # (!\Mux327~15_combout\ & ((\vga1|xPixel\(1) & (\library1|Mux0~986_combout\)) # (!\vga1|xPixel\(1) & ((\library1|Mux0~985_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~986_combout\,
	datad => \library1|Mux0~985_combout\,
	combout => \library1|Mux0~987_combout\);

-- Location: LCCOMB_X33_Y62_N16
\library1|Mux0~988\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~988_combout\ = (\library1|Mux0~984_combout\) # ((\Mux322~16_combout\ & !\library1|Mux0~987_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~984_combout\,
	datad => \library1|Mux0~987_combout\,
	combout => \library1|Mux0~988_combout\);

-- Location: LCCOMB_X33_Y62_N26
\library1|Mux0~989\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~989_combout\ = (\vga1|yPixel\(1) & (\Mux323~14_combout\)) # (!\vga1|yPixel\(1) & ((\Mux323~14_combout\ & (\library1|Mux0~982_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~988_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~982_combout\,
	datad => \library1|Mux0~988_combout\,
	combout => \library1|Mux0~989_combout\);

-- Location: LCCOMB_X34_Y62_N10
\library1|Mux0~970\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~970_combout\ = (!\Mux325~18_combout\ & (\vga1|xPixel\(1) & (\Mux327~15_combout\ & \Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~970_combout\);

-- Location: LCCOMB_X33_Y55_N28
\library1|Mux0~975\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~975_combout\ = (\vga1|xPixel\(1) & (((!\Mux324~15_combout\)))) # (!\vga1|xPixel\(1) & (!\vga1|xPixel\(0) & (\vga1|yPixel\(0) & \Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(0),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~975_combout\);

-- Location: LCCOMB_X33_Y55_N2
\library1|Mux0~976\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~976_combout\ = (\library1|Mux0~975_combout\) # ((\Mux324~15_combout\ & ((\Mux325~18_combout\) # (!\Mux327~15_combout\))) # (!\Mux324~15_combout\ & (!\Mux327~15_combout\ & \Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux327~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~975_combout\,
	combout => \library1|Mux0~976_combout\);

-- Location: LCCOMB_X34_Y62_N12
\library1|Mux0~973\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~973_combout\ = (\Mux327~15_combout\ & (\Mux325~18_combout\)) # (!\Mux327~15_combout\ & ((\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~973_combout\);

-- Location: LCCOMB_X38_Y57_N0
\library1|Mux0~971\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~971_combout\ = (\vga1|xPixel\(0) & ((\Mux325~18_combout\) # ((\vga1|yPixel\(0) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~971_combout\);

-- Location: LCCOMB_X33_Y62_N24
\library1|Mux0~972\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~972_combout\ = (\vga1|xPixel\(1) & (((!\library1|Mux0~971_combout\)) # (!\Mux324~15_combout\))) # (!\vga1|xPixel\(1) & ((\Mux324~15_combout\) # ((\library1|Mux0~860_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~971_combout\,
	datad => \library1|Mux0~860_combout\,
	combout => \library1|Mux0~972_combout\);

-- Location: LCCOMB_X33_Y62_N18
\library1|Mux0~974\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~974_combout\ = (\vga1|xPixel\(2) & (\Mux322~16_combout\)) # (!\vga1|xPixel\(2) & ((\Mux322~16_combout\ & ((\library1|Mux0~972_combout\))) # (!\Mux322~16_combout\ & (\library1|Mux0~973_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~973_combout\,
	datad => \library1|Mux0~972_combout\,
	combout => \library1|Mux0~974_combout\);

-- Location: LCCOMB_X33_Y62_N20
\library1|Mux0~977\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~977_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~974_combout\ & ((!\library1|Mux0~976_combout\))) # (!\library1|Mux0~974_combout\ & (\library1|Mux0~970_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~974_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~970_combout\,
	datac => \library1|Mux0~976_combout\,
	datad => \library1|Mux0~974_combout\,
	combout => \library1|Mux0~977_combout\);

-- Location: LCCOMB_X33_Y62_N6
\library1|Mux0~992\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~992_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~989_combout\ & (\library1|Mux0~1146_combout\)) # (!\library1|Mux0~989_combout\ & ((\library1|Mux0~977_combout\))))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~989_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1146_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~989_combout\,
	datad => \library1|Mux0~977_combout\,
	combout => \library1|Mux0~992_combout\);

-- Location: LCCOMB_X33_Y62_N28
\library1|Mux0~993\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~993_combout\ = (!\Mux320~4_combout\ & ((\library1|Mux0~969_combout\) # ((\vga1|yPixel\(2) & \library1|Mux0~992_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~969_combout\,
	datad => \library1|Mux0~992_combout\,
	combout => \library1|Mux0~993_combout\);

-- Location: LCCOMB_X33_Y62_N22
\library1|Mux0~994\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~994_combout\ = (\Mux321~16_combout\ & ((\vga1|yPixel\(3)) # ((\library1|Mux0~967_combout\)))) # (!\Mux321~16_combout\ & (!\vga1|yPixel\(3) & ((\library1|Mux0~993_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~967_combout\,
	datad => \library1|Mux0~993_combout\,
	combout => \library1|Mux0~994_combout\);

-- Location: LCCOMB_X35_Y62_N26
\library1|Mux0~1034\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1034_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~994_combout\ & ((\library1|Mux0~1033_combout\))) # (!\library1|Mux0~994_combout\ & (\library1|Mux0~963_combout\)))) # (!\vga1|yPixel\(3) & (((\library1|Mux0~994_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~963_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~1033_combout\,
	datad => \library1|Mux0~994_combout\,
	combout => \library1|Mux0~1034_combout\);

-- Location: LCCOMB_X38_Y58_N16
\library1|Mux0~803\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~803_combout\ = (\Mux325~18_combout\ & (((!\Mux323~14_combout\)))) # (!\Mux325~18_combout\ & (\Mux323~14_combout\ & (\vga1|xPixel\(1) $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~803_combout\);

-- Location: LCCOMB_X38_Y58_N30
\library1|Mux0~804\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~804_combout\ = (\vga1|yPixel\(2) & (\Mux323~14_combout\ $ ((\Mux325~18_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~803_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~803_combout\,
	combout => \library1|Mux0~804_combout\);

-- Location: LCCOMB_X38_Y58_N14
\library1|Mux0~800\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~800_combout\ = (\Mux325~18_combout\ & ((\Mux322~16_combout\ & (\vga1|xPixel\(1) & !\Mux323~14_combout\)) # (!\Mux322~16_combout\ & ((\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~800_combout\);

-- Location: LCCOMB_X38_Y58_N28
\library1|Mux0~801\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~801_combout\ = (\Mux325~18_combout\ & (((!\vga1|xPixel\(1) & !\Mux323~14_combout\)) # (!\Mux322~16_combout\))) # (!\Mux325~18_combout\ & (((\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~801_combout\);

-- Location: LCCOMB_X38_Y58_N2
\library1|Mux0~802\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~802_combout\ = (!\Mux321~16_combout\ & ((\Mux327~15_combout\ & ((!\library1|Mux0~801_combout\))) # (!\Mux327~15_combout\ & (!\library1|Mux0~800_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~800_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~801_combout\,
	combout => \library1|Mux0~802_combout\);

-- Location: LCCOMB_X38_Y58_N8
\library1|Mux0~1126\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1126_combout\ = (\library1|Mux0~802_combout\) # ((!\Mux322~16_combout\ & (\Mux321~16_combout\ & \library1|Mux0~804_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~804_combout\,
	datad => \library1|Mux0~802_combout\,
	combout => \library1|Mux0~1126_combout\);

-- Location: LCCOMB_X39_Y63_N2
\library1|Mux0~781\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~781_combout\ = (!\Mux322~16_combout\ & (\Mux327~15_combout\ & (\Mux323~14_combout\ $ (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~781_combout\);

-- Location: LCCOMB_X39_Y63_N26
\library1|Mux0~777\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~777_combout\ = (!\vga1|xPixel\(1) & (\vga1|yPixel\(2) & (!\Mux327~15_combout\ & \library1|Mux0~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~175_combout\,
	combout => \library1|Mux0~777_combout\);

-- Location: LCCOMB_X39_Y63_N20
\library1|Mux0~778\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~778_combout\ = (\Mux323~14_combout\ & (\vga1|xPixel\(1))) # (!\Mux323~14_combout\ & ((\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~778_combout\);

-- Location: LCCOMB_X39_Y63_N18
\library1|Mux0~779\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~779_combout\ = (\Mux322~16_combout\ & (((\Mux327~15_combout\)))) # (!\Mux322~16_combout\ & ((\Mux327~15_combout\ & (\Mux323~14_combout\ & !\library1|Mux0~778_combout\)) # (!\Mux327~15_combout\ & ((\library1|Mux0~778_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~778_combout\,
	combout => \library1|Mux0~779_combout\);

-- Location: LCCOMB_X39_Y63_N0
\library1|Mux0~780\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~780_combout\ = (\vga1|yPixel\(2) & (!\Mux322~16_combout\)) # (!\vga1|yPixel\(2) & (!\library1|Mux0~779_combout\ & ((\library1|Mux0~175_combout\) # (!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~175_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~779_combout\,
	combout => \library1|Mux0~780_combout\);

-- Location: LCCOMB_X39_Y63_N16
\library1|Mux0~782\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~782_combout\ = (\Mux321~16_combout\ & (((\library1|Mux0~777_combout\) # (\library1|Mux0~780_combout\)))) # (!\Mux321~16_combout\ & (!\library1|Mux0~781_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~781_combout\,
	datac => \library1|Mux0~777_combout\,
	datad => \library1|Mux0~780_combout\,
	combout => \library1|Mux0~782_combout\);

-- Location: LCCOMB_X38_Y57_N28
\library1|Mux0~793\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~793_combout\ = (\vga1|xPixel\(1) & (((!\vga1|yPixel\(1))))) # (!\vga1|xPixel\(1) & (\vga1|yPixel\(0) & (\vga1|yPixel\(1) & !\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~793_combout\);

-- Location: LCCOMB_X38_Y57_N22
\library1|Mux0~794\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~794_combout\ = (\vga1|yPixel\(2) & (\Mux322~16_combout\ & ((\library1|Mux0~793_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~793_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~794_combout\);

-- Location: LCCOMB_X38_Y57_N20
\library1|Mux0~795\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~795_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~793_combout\ & ((\vga1|yPixel\(1)) # (!\Mux322~16_combout\))) # (!\library1|Mux0~793_combout\ & (\vga1|yPixel\(1) & !\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~793_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~795_combout\);

-- Location: LCCOMB_X38_Y57_N14
\library1|Mux0~796\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~796_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~794_combout\ & (!\Mux323~14_combout\ & !\library1|Mux0~795_combout\)) # (!\library1|Mux0~794_combout\ & ((\library1|Mux0~795_combout\))))) # (!\Mux325~18_combout\ & 
-- (\library1|Mux0~794_combout\ & (\Mux323~14_combout\ $ (\library1|Mux0~795_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~794_combout\,
	datad => \library1|Mux0~795_combout\,
	combout => \library1|Mux0~796_combout\);

-- Location: LCCOMB_X36_Y57_N12
\library1|Mux0~791\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~791_combout\ = (\Mux325~18_combout\ & (!\vga1|yPixel\(1) & ((!\Mux323~14_combout\) # (!\Mux322~16_combout\)))) # (!\Mux325~18_combout\ & (\vga1|yPixel\(1) & (\Mux322~16_combout\ & \Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~791_combout\);

-- Location: LCCOMB_X38_Y60_N26
\library1|Mux0~790\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~790_combout\ = (\vga1|yPixel\(1) & ((\Mux322~16_combout\) # (\Mux323~14_combout\))) # (!\vga1|yPixel\(1) & (\Mux322~16_combout\ & \Mux323~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~790_combout\);

-- Location: LCCOMB_X35_Y60_N10
\library1|Mux0~792\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~792_combout\ = (\library1|Mux0~790_combout\ & (!\vga1|xPixel\(1) & ((\vga1|yPixel\(2)) # (\library1|Mux0~791_combout\)))) # (!\library1|Mux0~790_combout\ & (\vga1|yPixel\(2) & ((\library1|Mux0~791_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~791_combout\,
	datad => \library1|Mux0~790_combout\,
	combout => \library1|Mux0~792_combout\);

-- Location: LCCOMB_X35_Y60_N4
\library1|Mux0~797\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~797_combout\ = (\Mux327~15_combout\ & ((\Mux321~16_combout\) # ((\library1|Mux0~792_combout\)))) # (!\Mux327~15_combout\ & (!\Mux321~16_combout\ & (\library1|Mux0~796_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~796_combout\,
	datad => \library1|Mux0~792_combout\,
	combout => \library1|Mux0~797_combout\);

-- Location: LCCOMB_X35_Y60_N30
\library1|Mux0~798\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~798_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~598_combout\) # ((\Mux322~16_combout\ & \library1|Mux0~797_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~797_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~797_combout\,
	datad => \library1|Mux0~598_combout\,
	combout => \library1|Mux0~798_combout\);

-- Location: LCCOMB_X38_Y60_N28
\library1|Mux0~783\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~783_combout\ = (\Mux322~16_combout\ & (\Mux325~18_combout\ $ (((!\Mux323~14_combout\))))) # (!\Mux322~16_combout\ & (\Mux323~14_combout\ & (\Mux325~18_combout\ $ (!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~783_combout\);

-- Location: LCCOMB_X36_Y57_N8
\library1|Mux0~785\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~785_combout\ = (\vga1|xPixel\(1) & (\Mux325~18_combout\ & (\vga1|yPixel\(1) $ (\Mux327~15_combout\)))) # (!\vga1|xPixel\(1) & (\Mux327~15_combout\ & (\vga1|yPixel\(1) $ (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~785_combout\);

-- Location: LCCOMB_X36_Y57_N18
\library1|Mux0~784\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~784_combout\ = (\vga1|xPixel\(1) & ((\Mux327~15_combout\) # (\vga1|yPixel\(1) $ (\Mux325~18_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux325~18_combout\ & (\vga1|yPixel\(1))) # (!\Mux325~18_combout\ & ((\Mux327~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~784_combout\);

-- Location: LCCOMB_X36_Y57_N22
\library1|Mux0~786\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~786_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~784_combout\ & ((!\library1|Mux0~785_combout\))) # (!\library1|Mux0~784_combout\ & (!\Mux323~14_combout\)))) # (!\vga1|yPixel\(1) & (\library1|Mux0~785_combout\ & 
-- ((!\library1|Mux0~784_combout\) # (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~785_combout\,
	datad => \library1|Mux0~784_combout\,
	combout => \library1|Mux0~786_combout\);

-- Location: LCCOMB_X36_Y57_N24
\library1|Mux0~787\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~787_combout\ = (\library1|Mux0~785_combout\ & (\vga1|yPixel\(1) $ ((!\Mux323~14_combout\)))) # (!\library1|Mux0~785_combout\ & (!\vga1|yPixel\(1) & (\Mux323~14_combout\ & \library1|Mux0~784_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~785_combout\,
	datad => \library1|Mux0~784_combout\,
	combout => \library1|Mux0~787_combout\);

-- Location: LCCOMB_X36_Y57_N26
\library1|Mux0~788\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~788_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~787_combout\))) # (!\Mux322~16_combout\ & (!\library1|Mux0~786_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \library1|Mux0~786_combout\,
	datad => \library1|Mux0~787_combout\,
	combout => \library1|Mux0~788_combout\);

-- Location: LCCOMB_X35_Y60_N20
\library1|Mux0~789\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~789_combout\ = (\Mux321~16_combout\ & (((\library1|Mux0~783_combout\)))) # (!\Mux321~16_combout\ & (\vga1|yPixel\(2) & ((\library1|Mux0~788_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~783_combout\,
	datad => \library1|Mux0~788_combout\,
	combout => \library1|Mux0~789_combout\);

-- Location: LCCOMB_X35_Y60_N16
\library1|Mux0~799\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~799_combout\ = (\Mux320~4_combout\ & (\Mux324~15_combout\)) # (!\Mux320~4_combout\ & ((\Mux324~15_combout\ & ((\library1|Mux0~789_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~798_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~798_combout\,
	datad => \library1|Mux0~789_combout\,
	combout => \library1|Mux0~799_combout\);

-- Location: LCCOMB_X35_Y60_N26
\library1|Mux0~805\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~805_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~799_combout\ & (\library1|Mux0~1126_combout\)) # (!\library1|Mux0~799_combout\ & ((\library1|Mux0~782_combout\))))) # (!\Mux320~4_combout\ & (((\library1|Mux0~799_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1126_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~782_combout\,
	datad => \library1|Mux0~799_combout\,
	combout => \library1|Mux0~805_combout\);

-- Location: LCCOMB_X38_Y60_N12
\library1|Mux0~832\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~832_combout\ = (\Mux322~16_combout\ & (\vga1|xPixel\(1) & (!\Mux325~18_combout\ & !\Mux323~14_combout\))) # (!\Mux322~16_combout\ & (((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~832_combout\);

-- Location: LCCOMB_X38_Y60_N22
\library1|Mux0~835\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~835_combout\ = (\Mux325~18_combout\ & (!\Mux322~16_combout\ & !\Mux323~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~835_combout\);

-- Location: LCCOMB_X38_Y60_N2
\library1|Mux0~833\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~833_combout\ = (\Mux322~16_combout\ & ((\Mux325~18_combout\ & ((\Mux324~15_combout\) # (\Mux323~14_combout\))) # (!\Mux325~18_combout\ & (!\Mux324~15_combout\)))) # (!\Mux322~16_combout\ & ((\Mux325~18_combout\ & (!\Mux324~15_combout\)) # 
-- (!\Mux325~18_combout\ & (\Mux324~15_combout\ & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~833_combout\);

-- Location: LCCOMB_X38_Y60_N16
\library1|Mux0~834\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~834_combout\ = (\Mux321~16_combout\ & (\Mux324~15_combout\)) # (!\Mux321~16_combout\ & ((\library1|Mux0~833_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~15_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~833_combout\,
	combout => \library1|Mux0~834_combout\);

-- Location: LCCOMB_X38_Y60_N24
\library1|Mux0~836\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~836_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~834_combout\ & ((\library1|Mux0~835_combout\))) # (!\library1|Mux0~834_combout\ & (\library1|Mux0~832_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~834_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~832_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~835_combout\,
	datad => \library1|Mux0~834_combout\,
	combout => \library1|Mux0~836_combout\);

-- Location: LCCOMB_X38_Y60_N30
\library1|Mux0~847\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~847_combout\ = (\Mux322~16_combout\ & (((!\Mux325~18_combout\ & !\Mux323~14_combout\)))) # (!\Mux322~16_combout\ & ((\Mux325~18_combout\) # ((\vga1|xPixel\(1) & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~847_combout\);

-- Location: LCCOMB_X38_Y60_N4
\library1|Mux0~848\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~848_combout\ = (!\Mux322~16_combout\ & ((\Mux325~18_combout\ & ((!\Mux323~14_combout\))) # (!\Mux325~18_combout\ & (\vga1|xPixel\(1) & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~848_combout\);

-- Location: LCCOMB_X38_Y60_N14
\library1|Mux0~849\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~849_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~834_combout\ & ((\library1|Mux0~848_combout\))) # (!\library1|Mux0~834_combout\ & (\library1|Mux0~847_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~834_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~847_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~848_combout\,
	datad => \library1|Mux0~834_combout\,
	combout => \library1|Mux0~849_combout\);

-- Location: LCCOMB_X38_Y60_N6
\library1|Mux0~844\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~844_combout\ = (\Mux324~15_combout\ & (\Mux322~16_combout\ & (\Mux325~18_combout\ $ (!\Mux323~14_combout\)))) # (!\Mux324~15_combout\ & (((!\Mux325~18_combout\ & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~844_combout\);

-- Location: LCCOMB_X38_Y60_N8
\library1|Mux0~845\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~845_combout\ = (\Mux321~16_combout\ & \library1|Mux0~844_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~844_combout\,
	combout => \library1|Mux0~845_combout\);

-- Location: LCCOMB_X42_Y60_N8
\library1|Mux0~1128\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1128_combout\ = (\vga1|xPixel\(1) & (((\vga1|xPixel\(0)) # (!\Mux322~16_combout\)))) # (!\vga1|xPixel\(1) & (\vga1|yPixel\(1) & ((!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~1128_combout\);

-- Location: LCCOMB_X42_Y60_N26
\library1|Mux0~842\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~842_combout\ = (\Mux321~16_combout\ & (\Mux322~16_combout\ & ((\Mux323~14_combout\)))) # (!\Mux321~16_combout\ & (!\Mux323~14_combout\ & (\Mux322~16_combout\ $ (\library1|Mux0~1128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~1128_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~842_combout\);

-- Location: LCCOMB_X38_Y60_N20
\library1|Mux0~838\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~838_combout\ = (\vga1|yPixel\(1) & (!\vga1|xPixel\(1))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(1) & \vga1|xPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~838_combout\);

-- Location: LCCOMB_X35_Y60_N22
\library1|Mux0~839\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~839_combout\ = (\Mux322~16_combout\ & ((\vga1|xPixel\(1) & ((\Mux325~18_combout\) # (!\library1|Mux0~838_combout\))) # (!\vga1|xPixel\(1) & ((\library1|Mux0~838_combout\) # (!\Mux325~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~838_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~839_combout\);

-- Location: LCCOMB_X35_Y60_N28
\library1|Mux0~840\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~840_combout\ = (\Mux321~16_combout\ & ((\Mux323~14_combout\))) # (!\Mux321~16_combout\ & (\library1|Mux0~839_combout\ & !\Mux323~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~839_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~840_combout\);

-- Location: LCCOMB_X35_Y60_N14
\library1|Mux0~841\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~841_combout\ = (\Mux324~15_combout\ & (((\Mux325~18_combout\)))) # (!\Mux324~15_combout\ & (\library1|Mux0~840_combout\ & ((!\Mux325~18_combout\) # (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~840_combout\,
	combout => \library1|Mux0~841_combout\);

-- Location: LCCOMB_X38_Y60_N10
\library1|Mux0~837\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~837_combout\ = (\Mux322~16_combout\) # ((\vga1|yPixel\(1) & (!\vga1|xPixel\(1) & !\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux321~16_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~837_combout\);

-- Location: LCCOMB_X35_Y60_N18
\library1|Mux0~1127\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1127_combout\ = (\Mux323~14_combout\ & (((\library1|Mux0~837_combout\)))) # (!\Mux323~14_combout\ & (!\Mux322~16_combout\ & (\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~837_combout\,
	combout => \library1|Mux0~1127_combout\);

-- Location: LCCOMB_X35_Y60_N24
\library1|Mux0~843\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~843_combout\ = (\Mux324~15_combout\ & ((\library1|Mux0~841_combout\ & (\library1|Mux0~842_combout\)) # (!\library1|Mux0~841_combout\ & ((!\library1|Mux0~1127_combout\))))) # (!\Mux324~15_combout\ & (((\library1|Mux0~841_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~842_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~841_combout\,
	datad => \library1|Mux0~1127_combout\,
	combout => \library1|Mux0~843_combout\);

-- Location: LCCOMB_X35_Y60_N6
\library1|Mux0~846\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~846_combout\ = (\vga1|yPixel\(2) & ((\Mux320~4_combout\) # ((\library1|Mux0~843_combout\)))) # (!\vga1|yPixel\(2) & (!\Mux320~4_combout\ & (\library1|Mux0~845_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~845_combout\,
	datad => \library1|Mux0~843_combout\,
	combout => \library1|Mux0~846_combout\);

-- Location: LCCOMB_X35_Y60_N8
\library1|Mux0~850\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~850_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~846_combout\ & ((\library1|Mux0~849_combout\))) # (!\library1|Mux0~846_combout\ & (\library1|Mux0~836_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~846_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~836_combout\,
	datac => \library1|Mux0~849_combout\,
	datad => \library1|Mux0~846_combout\,
	combout => \library1|Mux0~850_combout\);

-- Location: LCCOMB_X41_Y57_N24
\library1|Mux0~814\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~814_combout\ = (\vga1|xPixel\(1) & (\Mux323~14_combout\ & (\Mux325~18_combout\ $ (\Mux321~16_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux325~18_combout\ & (\Mux323~14_combout\)) # (!\Mux325~18_combout\ & ((\Mux321~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~814_combout\);

-- Location: LCCOMB_X41_Y57_N14
\library1|Mux0~815\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~815_combout\ = (\Mux320~4_combout\ & (!\Mux322~16_combout\ & \library1|Mux0~814_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux322~16_combout\,
	datad => \library1|Mux0~814_combout\,
	combout => \library1|Mux0~815_combout\);

-- Location: LCCOMB_X41_Y57_N12
\library1|Mux0~818\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~818_combout\ = (\Mux325~18_combout\ & (\Mux321~16_combout\ & ((!\vga1|xPixel\(1)) # (!\Mux320~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~818_combout\);

-- Location: LCCOMB_X41_Y57_N20
\library1|Mux0~816\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~816_combout\ = (\Mux325~18_combout\ & (((\Mux321~16_combout\)))) # (!\Mux325~18_combout\ & (\vga1|xPixel\(1) & (\vga1|yPixel\(1) & !\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~816_combout\);

-- Location: LCCOMB_X41_Y57_N6
\library1|Mux0~817\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~817_combout\ = (\library1|Mux0~816_combout\ & (!\Mux321~16_combout\ & (\Mux323~14_combout\ $ (\Mux320~4_combout\)))) # (!\library1|Mux0~816_combout\ & (!\Mux323~14_combout\ & (\Mux320~4_combout\ $ (\Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux320~4_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~816_combout\,
	combout => \library1|Mux0~817_combout\);

-- Location: LCCOMB_X41_Y57_N18
\library1|Mux0~819\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~819_combout\ = (\Mux322~16_combout\ & (((\library1|Mux0~817_combout\)))) # (!\Mux322~16_combout\ & (\library1|Mux0~818_combout\ & (\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~818_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~817_combout\,
	combout => \library1|Mux0~819_combout\);

-- Location: LCCOMB_X41_Y57_N0
\library1|Mux0~820\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~820_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # ((\library1|Mux0~815_combout\)))) # (!\Mux324~15_combout\ & (!\vga1|yPixel\(2) & ((\library1|Mux0~819_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~815_combout\,
	datad => \library1|Mux0~819_combout\,
	combout => \library1|Mux0~820_combout\);

-- Location: LCCOMB_X42_Y60_N2
\library1|Mux0~821\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~821_combout\ = (\Mux321~16_combout\ & (((!\Mux322~16_combout\)))) # (!\Mux321~16_combout\ & ((\vga1|yPixel\(1) & (!\vga1|xPixel\(1))) # (!\vga1|yPixel\(1) & ((\Mux322~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~821_combout\);

-- Location: LCCOMB_X42_Y60_N28
\library1|Mux0~822\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~822_combout\ = (\Mux320~4_combout\ & (\vga1|xPixel\(1) & (\library1|Mux0~250_combout\))) # (!\Mux320~4_combout\ & (((!\library1|Mux0~821_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~250_combout\,
	datad => \library1|Mux0~821_combout\,
	combout => \library1|Mux0~822_combout\);

-- Location: LCCOMB_X42_Y60_N30
\library1|Mux0~829\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~829_combout\ = (\Mux320~4_combout\ & (!\Mux322~16_combout\ & ((!\Mux321~16_combout\) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux321~16_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~829_combout\);

-- Location: LCCOMB_X42_Y60_N6
\library1|Mux0~823\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~823_combout\ = (\Mux321~16_combout\) # ((\vga1|yPixel\(1) & (\vga1|xPixel\(1) & \vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~823_combout\);

-- Location: LCCOMB_X42_Y60_N4
\library1|Mux0~824\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~824_combout\ = (\Mux322~16_combout\ & (!\Mux320~4_combout\ & !\library1|Mux0~823_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \Mux320~4_combout\,
	datad => \library1|Mux0~823_combout\,
	combout => \library1|Mux0~824_combout\);

-- Location: LCCOMB_X42_Y60_N14
\library1|Mux0~825\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~825_combout\ = (\vga1|xPixel\(1) & ((\Mux322~16_combout\ & ((!\vga1|xPixel\(0)))) # (!\Mux322~16_combout\ & (\vga1|yPixel\(1))))) # (!\vga1|xPixel\(1) & (((\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~825_combout\);

-- Location: LCCOMB_X42_Y60_N24
\library1|Mux0~826\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~826_combout\ = (!\Mux320~4_combout\ & (\library1|Mux0~825_combout\ & !\Mux321~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datac => \library1|Mux0~825_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~826_combout\);

-- Location: LCCOMB_X42_Y60_N18
\library1|Mux0~827\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~827_combout\ = (\library1|Mux0~826_combout\) # ((\Mux320~4_combout\ & (!\vga1|xPixel\(1) & \library1|Mux0~250_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~250_combout\,
	datad => \library1|Mux0~826_combout\,
	combout => \library1|Mux0~827_combout\);

-- Location: LCCOMB_X42_Y60_N20
\library1|Mux0~828\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~828_combout\ = (\Mux323~14_combout\ & (\Mux325~18_combout\)) # (!\Mux323~14_combout\ & ((\Mux325~18_combout\ & (\library1|Mux0~824_combout\)) # (!\Mux325~18_combout\ & ((\library1|Mux0~827_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~824_combout\,
	datad => \library1|Mux0~827_combout\,
	combout => \library1|Mux0~828_combout\);

-- Location: LCCOMB_X42_Y60_N16
\library1|Mux0~830\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~830_combout\ = (\Mux323~14_combout\ & ((\library1|Mux0~828_combout\ & ((\library1|Mux0~829_combout\))) # (!\library1|Mux0~828_combout\ & (\library1|Mux0~822_combout\)))) # (!\Mux323~14_combout\ & (((\library1|Mux0~828_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \library1|Mux0~822_combout\,
	datac => \library1|Mux0~829_combout\,
	datad => \library1|Mux0~828_combout\,
	combout => \library1|Mux0~830_combout\);

-- Location: LCCOMB_X40_Y60_N4
\library1|Mux0~810\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~810_combout\ = (\Mux325~18_combout\) # ((\Mux322~16_combout\) # ((\vga1|yPixel\(1) & \Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~810_combout\);

-- Location: LCCOMB_X40_Y60_N10
\library1|Mux0~811\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~811_combout\ = (\Mux325~18_combout\ & (\vga1|yPixel\(1) $ (((\Mux322~16_combout\) # (\Mux323~14_combout\))))) # (!\Mux325~18_combout\ & (((\Mux322~16_combout\ & !\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~811_combout\);

-- Location: LCCOMB_X40_Y60_N0
\library1|Mux0~812\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~812_combout\ = (!\Mux321~16_combout\ & ((\vga1|xPixel\(1) & (\library1|Mux0~810_combout\)) # (!\vga1|xPixel\(1) & ((\library1|Mux0~811_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~810_combout\,
	datad => \library1|Mux0~811_combout\,
	combout => \library1|Mux0~812_combout\);

-- Location: LCCOMB_X40_Y60_N26
\library1|Mux0~809\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~809_combout\ = (\Mux321~16_combout\ & ((\Mux325~18_combout\ & (!\Mux322~16_combout\ & \Mux323~14_combout\)) # (!\Mux325~18_combout\ & (\Mux322~16_combout\ & !\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~809_combout\);

-- Location: LCCOMB_X42_Y60_N12
\library1|Mux0~806\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~806_combout\ = (\vga1|yPixel\(1) & \vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~806_combout\);

-- Location: LCCOMB_X41_Y60_N18
\library1|Mux0~807\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~807_combout\ = (\Mux323~14_combout\ & (\library1|Mux0~250_combout\ & ((\library1|Mux0~806_combout\) # (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \library1|Mux0~806_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~250_combout\,
	combout => \library1|Mux0~807_combout\);

-- Location: LCCOMB_X40_Y60_N24
\library1|Mux0~808\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~808_combout\ = (\library1|Mux0~807_combout\) # ((!\Mux321~16_combout\ & (\library1|Mux0~175_combout\ & \Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~175_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~807_combout\,
	combout => \library1|Mux0~808_combout\);

-- Location: LCCOMB_X40_Y60_N18
\library1|Mux0~813\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~813_combout\ = (\Mux320~4_combout\ & (((\library1|Mux0~808_combout\)))) # (!\Mux320~4_combout\ & ((\library1|Mux0~812_combout\) # ((\library1|Mux0~809_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~812_combout\,
	datac => \library1|Mux0~809_combout\,
	datad => \library1|Mux0~808_combout\,
	combout => \library1|Mux0~813_combout\);

-- Location: LCCOMB_X35_Y60_N0
\library1|Mux0~831\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~831_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~820_combout\ & (\library1|Mux0~830_combout\)) # (!\library1|Mux0~820_combout\ & ((\library1|Mux0~813_combout\))))) # (!\vga1|yPixel\(2) & (\library1|Mux0~820_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~820_combout\,
	datac => \library1|Mux0~830_combout\,
	datad => \library1|Mux0~813_combout\,
	combout => \library1|Mux0~831_combout\);

-- Location: LCCOMB_X35_Y60_N2
\library1|Mux0~851\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~851_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~831_combout\))) # (!\Mux327~15_combout\ & (\library1|Mux0~850_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datac => \library1|Mux0~850_combout\,
	datad => \library1|Mux0~831_combout\,
	combout => \library1|Mux0~851_combout\);

-- Location: LCCOMB_X35_Y60_N12
\library1|Mux0~852\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~852_combout\ = (\vga1|xPixel\(2) & ((\vga1|yPixel\(3)) # ((\library1|Mux0~805_combout\)))) # (!\vga1|xPixel\(2) & (!\vga1|yPixel\(3) & ((\library1|Mux0~851_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~805_combout\,
	datad => \library1|Mux0~851_combout\,
	combout => \library1|Mux0~852_combout\);

-- Location: LCCOMB_X33_Y61_N24
\library1|Mux0~853\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~853_combout\ = (\Mux325~18_combout\) # ((!\vga1|yPixel\(2) & (\vga1|xPixel\(1) $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~853_combout\);

-- Location: LCCOMB_X33_Y61_N10
\library1|Mux0~854\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~854_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~853_combout\ & ((!\Mux322~16_combout\))) # (!\library1|Mux0~853_combout\ & (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~853_combout\,
	combout => \library1|Mux0~854_combout\);

-- Location: LCCOMB_X32_Y61_N6
\library1|Mux0~857\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~857_combout\ = (!\Mux325~18_combout\ & (\Mux323~14_combout\ & !\Mux322~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~857_combout\);

-- Location: LCCOMB_X33_Y61_N8
\library1|Mux0~855\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~855_combout\ = (\Mux322~16_combout\ & (\Mux327~15_combout\ & (!\Mux325~18_combout\ & !\Mux323~14_combout\))) # (!\Mux322~16_combout\ & ((\Mux327~15_combout\ & ((\Mux323~14_combout\))) # (!\Mux327~15_combout\ & (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux327~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~855_combout\);

-- Location: LCCOMB_X33_Y61_N18
\library1|Mux0~856\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~856_combout\ = (!\Mux321~16_combout\ & ((!\library1|Mux0~855_combout\) # (!\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \library1|Mux0~855_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~856_combout\);

-- Location: LCCOMB_X33_Y61_N16
\library1|Mux0~858\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~858_combout\ = (\library1|Mux0~854_combout\) # ((\library1|Mux0~856_combout\ & ((!\library1|Mux0~857_combout\) # (!\library1|Mux0~564_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~854_combout\,
	datab => \library1|Mux0~564_combout\,
	datac => \library1|Mux0~857_combout\,
	datad => \library1|Mux0~856_combout\,
	combout => \library1|Mux0~858_combout\);

-- Location: LCCOMB_X38_Y54_N20
\library1|Mux0~900\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~900_combout\ = \vga1|xPixel\(1) $ (\Mux327~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~900_combout\);

-- Location: LCCOMB_X38_Y54_N30
\library1|Mux0~901\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~901_combout\ = (\Mux325~18_combout\ & (((\vga1|yPixel\(2) & \library1|Mux0~900_combout\)) # (!\Mux323~14_combout\))) # (!\Mux325~18_combout\ & ((\Mux323~14_combout\ & ((!\library1|Mux0~900_combout\))) # (!\Mux323~14_combout\ & 
-- (\vga1|yPixel\(2) & \library1|Mux0~900_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~900_combout\,
	combout => \library1|Mux0~901_combout\);

-- Location: LCCOMB_X38_Y54_N8
\library1|Mux0~898\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~898_combout\ = (\Mux325~18_combout\ & (!\Mux323~14_combout\ & \Mux322~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~898_combout\);

-- Location: LCCOMB_X38_Y54_N12
\library1|Mux0~896\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~896_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(2)) # (\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~896_combout\);

-- Location: LCCOMB_X38_Y54_N6
\library1|Mux0~897\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~897_combout\ = (\Mux322~16_combout\ & (\library1|Mux0~896_combout\ & (\Mux325~18_combout\ $ (\Mux323~14_combout\)))) # (!\Mux322~16_combout\ & ((\Mux325~18_combout\ & (\Mux323~14_combout\ & !\library1|Mux0~896_combout\)) # 
-- (!\Mux325~18_combout\ & (!\Mux323~14_combout\ & \library1|Mux0~896_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~896_combout\,
	combout => \library1|Mux0~897_combout\);

-- Location: LCCOMB_X38_Y54_N10
\library1|Mux0~899\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~899_combout\ = (!\Mux321~16_combout\ & (\library1|Mux0~897_combout\ $ (((!\library1|Mux0~898_combout\) # (!\vga1|xPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~898_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~897_combout\,
	combout => \library1|Mux0~899_combout\);

-- Location: LCCOMB_X38_Y54_N0
\library1|Mux0~1130\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1130_combout\ = (\library1|Mux0~899_combout\) # ((\Mux321~16_combout\ & (!\Mux322~16_combout\ & \library1|Mux0~901_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~901_combout\,
	datad => \library1|Mux0~899_combout\,
	combout => \library1|Mux0~1130_combout\);

-- Location: LCCOMB_X38_Y61_N22
\library1|Mux0~872\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~872_combout\ = (\vga1|yPixel\(2) & (((\vga1|xPixel\(0)) # (\vga1|xPixel\(1))) # (!\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~872_combout\);

-- Location: LCCOMB_X38_Y61_N14
\library1|Mux0~870\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~870_combout\ = (\Mux322~16_combout\) # ((\vga1|yPixel\(1) & !\vga1|yPixel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~870_combout\);

-- Location: LCCOMB_X38_Y61_N0
\library1|Mux0~871\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~871_combout\ = (\Mux325~18_combout\ & ((\Mux323~14_combout\ & (\vga1|yPixel\(2))) # (!\Mux323~14_combout\ & ((\library1|Mux0~870_combout\))))) # (!\Mux325~18_combout\ & (((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~870_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~871_combout\);

-- Location: LCCOMB_X38_Y61_N12
\library1|Mux0~873\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~873_combout\ = (\library1|Mux0~871_combout\) # ((\library1|Mux0~872_combout\ & (!\Mux325~18_combout\ & !\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~872_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~871_combout\,
	combout => \library1|Mux0~873_combout\);

-- Location: LCCOMB_X38_Y61_N26
\library1|Mux0~892\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~892_combout\ = (\vga1|yPixel\(2) & \Mux323~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~892_combout\);

-- Location: LCCOMB_X38_Y58_N26
\library1|Mux0~890\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~890_combout\ = (\Mux323~14_combout\) # ((\vga1|xPixel\(1) & (\vga1|yPixel\(1) & !\vga1|yPixel\(2))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~890_combout\);

-- Location: LCCOMB_X38_Y58_N0
\library1|Mux0~889\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~889_combout\ = \vga1|yPixel\(2) $ (((\vga1|xPixel\(1) & (\vga1|yPixel\(1) & !\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~889_combout\);

-- Location: LCCOMB_X38_Y58_N20
\library1|Mux0~891\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~891_combout\ = (!\Mux322~16_combout\ & ((\Mux325~18_combout\ & ((\library1|Mux0~889_combout\))) # (!\Mux325~18_combout\ & (\library1|Mux0~890_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~890_combout\,
	datad => \library1|Mux0~889_combout\,
	combout => \library1|Mux0~891_combout\);

-- Location: LCCOMB_X34_Y61_N26
\library1|Mux0~893\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~893_combout\ = (\library1|Mux0~891_combout\) # ((\Mux322~16_combout\ & ((!\library1|Mux0~892_combout\) # (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~892_combout\,
	datad => \library1|Mux0~891_combout\,
	combout => \library1|Mux0~893_combout\);

-- Location: LCCOMB_X35_Y61_N2
\library1|Mux0~886\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~886_combout\ = \Mux325~18_combout\ $ (((\vga1|yPixel\(2)) # (\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~886_combout\);

-- Location: LCCOMB_X33_Y55_N8
\library1|Mux0~880\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~880_combout\ = (\vga1|xPixel\(1)) # ((!\vga1|yPixel\(0) & (\vga1|xPixel\(0) & \Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(0),
	datac => \vga1|xPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~880_combout\);

-- Location: LCCOMB_X33_Y55_N26
\library1|Mux0~881\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~881_combout\ = (\Mux322~16_combout\ & (!\Mux325~18_combout\ & ((\library1|Mux0~880_combout\) # (!\vga1|yPixel\(2))))) # (!\Mux322~16_combout\ & ((\Mux325~18_combout\ & ((\library1|Mux0~880_combout\))) # (!\Mux325~18_combout\ & 
-- (\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~880_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~881_combout\);

-- Location: LCCOMB_X38_Y57_N24
\library1|Mux0~882\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~882_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(0) & !\vga1|xPixel\(0))) # (!\vga1|yPixel\(2) & (!\vga1|yPixel\(0) & \vga1|xPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(0),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~882_combout\);

-- Location: LCCOMB_X34_Y57_N4
\library1|Mux0~883\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~883_combout\ = (\vga1|xPixel\(1) & (((!\Mux325~18_combout\ & !\vga1|yPixel\(2))))) # (!\vga1|xPixel\(1) & ((\Mux325~18_combout\ & ((\vga1|yPixel\(2)))) # (!\Mux325~18_combout\ & (\library1|Mux0~882_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~882_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~883_combout\);

-- Location: LCCOMB_X34_Y61_N22
\library1|Mux0~884\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~884_combout\ = (\Mux323~14_combout\ & (\Mux325~18_combout\ & (!\Mux322~16_combout\))) # (!\Mux323~14_combout\ & (!\library1|Mux0~883_combout\ & (\Mux325~18_combout\ $ (\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~883_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~884_combout\);

-- Location: LCCOMB_X34_Y61_N0
\library1|Mux0~885\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~885_combout\ = (\vga1|yPixel\(1) & (((\Mux323~14_combout\)))) # (!\vga1|yPixel\(1) & (\library1|Mux0~884_combout\ & ((\library1|Mux0~360_combout\) # (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~360_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~884_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~885_combout\);

-- Location: LCCOMB_X34_Y61_N30
\library1|Mux0~887\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~887_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~885_combout\ & (!\library1|Mux0~886_combout\)) # (!\library1|Mux0~885_combout\ & ((\library1|Mux0~881_combout\))))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~885_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~886_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~881_combout\,
	datad => \library1|Mux0~885_combout\,
	combout => \library1|Mux0~887_combout\);

-- Location: LCCOMB_X34_Y61_N2
\library1|Mux0~878\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~878_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & (!\Mux322~16_combout\ & !\Mux323~14_combout\)) # (!\vga1|yPixel\(1) & ((!\Mux323~14_combout\) # (!\Mux322~16_combout\))))) # (!\vga1|yPixel\(2) & (\vga1|yPixel\(1) & 
-- (\Mux322~16_combout\ & \Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~878_combout\);

-- Location: LCCOMB_X34_Y61_N14
\library1|Mux0~876\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~876_combout\ = (!\vga1|yPixel\(2) & ((\Mux323~14_combout\ & (!\vga1|yPixel\(1))) # (!\Mux323~14_combout\ & ((\Mux322~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~876_combout\);

-- Location: LCCOMB_X41_Y59_N10
\library1|Mux0~875\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~875_combout\ = (\Mux322~16_combout\) # ((\Mux323~14_combout\) # ((\vga1|yPixel\(1) & \vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~875_combout\);

-- Location: LCCOMB_X34_Y61_N4
\library1|Mux0~877\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~877_combout\ = (\vga1|xPixel\(1) & (\Mux325~18_combout\)) # (!\vga1|xPixel\(1) & ((\Mux325~18_combout\ & ((\library1|Mux0~875_combout\))) # (!\Mux325~18_combout\ & (\library1|Mux0~876_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~876_combout\,
	datad => \library1|Mux0~875_combout\,
	combout => \library1|Mux0~877_combout\);

-- Location: LCCOMB_X33_Y58_N30
\library1|Mux0~874\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~874_combout\ = (\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & (!\Mux323~14_combout\ & \Mux322~16_combout\))) # (!\vga1|yPixel\(2) & ((\Mux323~14_combout\ $ (\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~874_combout\);

-- Location: LCCOMB_X34_Y61_N28
\library1|Mux0~879\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~879_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~877_combout\ & (\library1|Mux0~878_combout\)) # (!\library1|Mux0~877_combout\ & ((\library1|Mux0~874_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~877_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~878_combout\,
	datac => \library1|Mux0~877_combout\,
	datad => \library1|Mux0~874_combout\,
	combout => \library1|Mux0~879_combout\);

-- Location: LCCOMB_X34_Y61_N16
\library1|Mux0~888\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~888_combout\ = (\Mux327~15_combout\ & ((\Mux321~16_combout\) # ((\library1|Mux0~879_combout\)))) # (!\Mux327~15_combout\ & (!\Mux321~16_combout\ & (\library1|Mux0~887_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~887_combout\,
	datad => \library1|Mux0~879_combout\,
	combout => \library1|Mux0~888_combout\);

-- Location: LCCOMB_X34_Y61_N8
\library1|Mux0~894\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~894_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~888_combout\ & ((\library1|Mux0~893_combout\))) # (!\library1|Mux0~888_combout\ & (\library1|Mux0~873_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~888_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~873_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~893_combout\,
	datad => \library1|Mux0~888_combout\,
	combout => \library1|Mux0~894_combout\);

-- Location: LCCOMB_X38_Y63_N16
\library1|Mux0~859\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~859_combout\ = (\vga1|yPixel\(1) & (\Mux327~15_combout\ & ((\vga1|xPixel\(1)) # (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~859_combout\);

-- Location: LCCOMB_X38_Y63_N6
\library1|Mux0~1149\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1149_combout\ = (\Mux322~16_combout\ & (!\Mux325~18_combout\ & (\Mux321~16_combout\))) # (!\Mux322~16_combout\ & (((\Mux325~18_combout\ & \Mux321~16_combout\)) # (!\library1|Mux0~859_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~859_combout\,
	combout => \library1|Mux0~1149_combout\);

-- Location: LCCOMB_X40_Y63_N4
\library1|Mux0~861\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~861_combout\ = (\vga1|yPixel\(2) & (\vga1|xPixel\(1))) # (!\vga1|yPixel\(2) & ((\Mux322~16_combout\ & ((\vga1|yPixel\(1)))) # (!\Mux322~16_combout\ & (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~861_combout\);

-- Location: LCCOMB_X40_Y63_N22
\library1|Mux0~862\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~862_combout\ = (\Mux322~16_combout\ & (((!\vga1|yPixel\(1))))) # (!\Mux322~16_combout\ & (\vga1|xPixel\(1) & ((\vga1|yPixel\(1)) # (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~862_combout\);

-- Location: LCCOMB_X40_Y63_N24
\library1|Mux0~863\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~863_combout\ = (\Mux327~15_combout\ & (((\library1|Mux0~706_combout\)) # (!\vga1|xPixel\(1)))) # (!\Mux327~15_combout\ & (((!\library1|Mux0~862_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~706_combout\,
	datac => \library1|Mux0~862_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~863_combout\);

-- Location: LCCOMB_X40_Y63_N28
\library1|Mux0~1129\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1129_combout\ = (\Mux325~18_combout\ & (\library1|Mux0~861_combout\ & (!\Mux327~15_combout\))) # (!\Mux325~18_combout\ & (((\library1|Mux0~863_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~861_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~863_combout\,
	combout => \library1|Mux0~1129_combout\);

-- Location: LCCOMB_X39_Y61_N10
\library1|Mux0~866\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~866_combout\ = (\vga1|xPixel\(1) & ((\Mux322~16_combout\ & ((!\Mux327~15_combout\) # (!\vga1|xPixel\(0)))) # (!\Mux322~16_combout\ & ((\Mux327~15_combout\))))) # (!\vga1|xPixel\(1) & (\Mux322~16_combout\ & ((\vga1|xPixel\(0)) # 
-- (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~866_combout\);

-- Location: LCCOMB_X39_Y61_N16
\library1|Mux0~867\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~867_combout\ = (\Mux322~16_combout\ & (\vga1|yPixel\(1) & (\vga1|yPixel\(2) $ (!\library1|Mux0~866_combout\)))) # (!\Mux322~16_combout\ & (((!\vga1|yPixel\(2) & \library1|Mux0~866_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~866_combout\,
	combout => \library1|Mux0~867_combout\);

-- Location: LCCOMB_X38_Y61_N24
\library1|Mux0~864\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~864_combout\ = (\vga1|xPixel\(1) & (!\vga1|yPixel\(0) & ((!\Mux327~15_combout\)))) # (!\vga1|xPixel\(1) & (((!\vga1|xPixel\(0) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~864_combout\);

-- Location: LCCOMB_X34_Y61_N20
\library1|Mux0~865\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~865_combout\ = (\Mux325~18_combout\ & ((\Mux322~16_combout\ & (!\library1|Mux0~864_combout\)) # (!\Mux322~16_combout\ & ((!\Mux327~15_combout\))))) # (!\Mux325~18_combout\ & (!\Mux322~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~864_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~865_combout\);

-- Location: LCCOMB_X34_Y61_N10
\library1|Mux0~868\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~868_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~867_combout\) # ((\library1|Mux0~706_combout\ & \library1|Mux0~865_combout\)))) # (!\Mux325~18_combout\ & (\library1|Mux0~706_combout\ & ((\library1|Mux0~865_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~706_combout\,
	datac => \library1|Mux0~867_combout\,
	datad => \library1|Mux0~865_combout\,
	combout => \library1|Mux0~868_combout\);

-- Location: LCCOMB_X34_Y61_N12
\library1|Mux0~869\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~869_combout\ = (\Mux321~16_combout\ & (\Mux323~14_combout\)) # (!\Mux321~16_combout\ & ((\Mux323~14_combout\ & (\library1|Mux0~1129_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~868_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~1129_combout\,
	datad => \library1|Mux0~868_combout\,
	combout => \library1|Mux0~869_combout\);

-- Location: LCCOMB_X34_Y61_N6
\library1|Mux0~1150\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1150_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~1149_combout\ $ (\library1|Mux0~869_combout\)))) # (!\Mux322~16_combout\ & ((\library1|Mux0~859_combout\ & ((\library1|Mux0~1149_combout\) # (\library1|Mux0~869_combout\))) # 
-- (!\library1|Mux0~859_combout\ & (\library1|Mux0~1149_combout\ & \library1|Mux0~869_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~859_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~1149_combout\,
	datad => \library1|Mux0~869_combout\,
	combout => \library1|Mux0~1150_combout\);

-- Location: LCCOMB_X34_Y61_N18
\library1|Mux0~895\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~895_combout\ = (\Mux324~15_combout\ & ((\Mux320~4_combout\) # ((\library1|Mux0~1150_combout\)))) # (!\Mux324~15_combout\ & (!\Mux320~4_combout\ & (\library1|Mux0~894_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~894_combout\,
	datad => \library1|Mux0~1150_combout\,
	combout => \library1|Mux0~895_combout\);

-- Location: LCCOMB_X34_Y61_N24
\library1|Mux0~902\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~902_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~895_combout\ & ((\library1|Mux0~1130_combout\))) # (!\library1|Mux0~895_combout\ & (\library1|Mux0~858_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~895_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~858_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~1130_combout\,
	datad => \library1|Mux0~895_combout\,
	combout => \library1|Mux0~902_combout\);

-- Location: LCCOMB_X40_Y60_N12
\library1|Mux0~1155\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1155_combout\ = (\vga1|xPixel\(1) & (\Mux325~18_combout\ $ (((\Mux324~15_combout\ & !\Mux320~4_combout\))))) # (!\vga1|xPixel\(1) & (\Mux320~4_combout\ & (\Mux324~15_combout\ $ (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~1155_combout\);

-- Location: LCCOMB_X40_Y60_N6
\library1|Mux0~1156\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1156_combout\ = (\Mux320~4_combout\ & ((\Mux321~16_combout\ & ((\library1|Mux0~1155_combout\))) # (!\Mux321~16_combout\ & (\Mux325~18_combout\)))) # (!\Mux320~4_combout\ & ((\Mux321~16_combout\) # ((\library1|Mux0~1155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux321~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~1155_combout\,
	combout => \library1|Mux0~1156_combout\);

-- Location: LCCOMB_X39_Y56_N12
\library1|Mux0~1153\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1153_combout\ = (\vga1|xPixel\(1) & ((\Mux320~4_combout\) # ((\Mux324~15_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux321~16_combout\ & ((\Mux324~15_combout\))) # (!\Mux321~16_combout\ & (\Mux320~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux320~4_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~1153_combout\);

-- Location: LCCOMB_X39_Y56_N26
\library1|Mux0~1154\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1154_combout\ = (\Mux325~18_combout\ & (!\Mux324~15_combout\ & (\Mux321~16_combout\ $ (!\library1|Mux0~1153_combout\)))) # (!\Mux325~18_combout\ & (\library1|Mux0~1153_combout\ & ((\Mux324~15_combout\) # (!\Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~1153_combout\,
	combout => \library1|Mux0~1154_combout\);

-- Location: LCCOMB_X39_Y56_N30
\library1|Mux0~770\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~770_combout\ = (\Mux324~15_combout\ & (((\Mux321~16_combout\)))) # (!\Mux324~15_combout\ & (\vga1|xPixel\(1) & (\vga1|yPixel\(1) & !\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~770_combout\);

-- Location: LCCOMB_X39_Y56_N0
\library1|Mux0~769\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~769_combout\ = (!\Mux325~18_combout\ & (!\Mux321~16_combout\ & ((\Mux320~4_combout\) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~769_combout\);

-- Location: LCCOMB_X39_Y56_N28
\library1|Mux0~771\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~771_combout\ = (\library1|Mux0~769_combout\) # ((!\Mux320~4_combout\ & (\Mux325~18_combout\ & \library1|Mux0~770_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~770_combout\,
	datad => \library1|Mux0~769_combout\,
	combout => \library1|Mux0~771_combout\);

-- Location: LCCOMB_X39_Y56_N10
\library1|Mux0~772\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~772_combout\ = (\Mux327~15_combout\ & (\Mux322~16_combout\)) # (!\Mux327~15_combout\ & ((\Mux322~16_combout\ & ((\library1|Mux0~771_combout\))) # (!\Mux322~16_combout\ & (\library1|Mux0~1154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~1154_combout\,
	datad => \library1|Mux0~771_combout\,
	combout => \library1|Mux0~772_combout\);

-- Location: LCCOMB_X40_Y60_N20
\library1|Mux0~773\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~773_combout\ = (\Mux321~16_combout\) # ((\Mux320~4_combout\) # ((!\vga1|xPixel\(1) & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux321~16_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~773_combout\);

-- Location: LCCOMB_X40_Y60_N30
\library1|Mux0~510\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~510_combout\ = (\Mux320~4_combout\ & !\Mux321~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~510_combout\);

-- Location: LCCOMB_X40_Y60_N16
\library1|Mux0~1151\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1151_combout\ = (\Mux321~16_combout\ & (((!\Mux320~4_combout\)))) # (!\Mux321~16_combout\ & (\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # (\Mux320~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux320~4_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~1151_combout\);

-- Location: LCCOMB_X40_Y60_N2
\library1|Mux0~1152\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1152_combout\ = (\Mux324~15_combout\ & (\Mux325~18_combout\)) # (!\Mux324~15_combout\ & ((\library1|Mux0~1151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~1151_combout\,
	combout => \library1|Mux0~1152_combout\);

-- Location: LCCOMB_X40_Y60_N22
\library1|Mux0~774\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~774_combout\ = (\Mux324~15_combout\ & ((\library1|Mux0~1152_combout\ & ((\library1|Mux0~510_combout\))) # (!\library1|Mux0~1152_combout\ & (!\library1|Mux0~773_combout\)))) # (!\Mux324~15_combout\ & (((\library1|Mux0~1152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \library1|Mux0~773_combout\,
	datac => \library1|Mux0~510_combout\,
	datad => \library1|Mux0~1152_combout\,
	combout => \library1|Mux0~774_combout\);

-- Location: LCCOMB_X40_Y62_N12
\library1|Mux0~775\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~775_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~772_combout\ & ((\library1|Mux0~774_combout\))) # (!\library1|Mux0~772_combout\ & (\library1|Mux0~1156_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~772_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~1156_combout\,
	datac => \library1|Mux0~772_combout\,
	datad => \library1|Mux0~774_combout\,
	combout => \library1|Mux0~775_combout\);

-- Location: LCCOMB_X39_Y63_N12
\library1|Mux0~1161\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1161_combout\ = (\Mux324~15_combout\ & (\Mux320~4_combout\ $ (((\Mux322~16_combout\ & \Mux321~16_combout\))))) # (!\Mux324~15_combout\ & (\Mux321~16_combout\ & ((!\Mux320~4_combout\) # (!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~1161_combout\);

-- Location: LCCOMB_X39_Y63_N30
\library1|Mux0~1162\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1162_combout\ = (\library1|Mux0~1161_combout\ & (\Mux325~18_combout\ $ (\Mux320~4_combout\ $ (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux320~4_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~1161_combout\,
	combout => \library1|Mux0~1162_combout\);

-- Location: LCCOMB_X42_Y58_N12
\library1|Mux0~1159\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1159_combout\ = (\Mux321~16_combout\ & ((\Mux322~16_combout\ & (!\Mux320~4_combout\)) # (!\Mux322~16_combout\ & ((!\Mux324~15_combout\))))) # (!\Mux321~16_combout\ & (((\Mux324~15_combout\) # (!\Mux320~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux320~4_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~1159_combout\);

-- Location: LCCOMB_X41_Y58_N22
\library1|Mux0~1160\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1160_combout\ = (\library1|Mux0~1159_combout\ & ((\Mux325~18_combout\ & ((\Mux320~4_combout\) # (!\Mux324~15_combout\))) # (!\Mux325~18_combout\ & (\Mux324~15_combout\ $ (\Mux320~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~1159_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~1160_combout\);

-- Location: LCCOMB_X42_Y58_N26
\library1|Mux0~749\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~749_combout\ = (\Mux320~4_combout\ & (\Mux322~16_combout\ & !\Mux321~16_combout\)) # (!\Mux320~4_combout\ & ((\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \Mux320~4_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~749_combout\);

-- Location: LCCOMB_X42_Y58_N18
\library1|Mux0~747\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~747_combout\ = (\Mux321~16_combout\ & ((!\Mux322~16_combout\))) # (!\Mux321~16_combout\ & (\Mux320~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux320~4_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~747_combout\);

-- Location: LCCOMB_X42_Y58_N16
\library1|Mux0~748\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~748_combout\ = (\library1|Mux0~747_combout\ & (\Mux322~16_combout\ $ (((\Mux324~15_combout\))))) # (!\library1|Mux0~747_combout\ & (!\Mux322~16_combout\ & (\vga1|yPixel\(1) & !\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~747_combout\,
	combout => \library1|Mux0~748_combout\);

-- Location: LCCOMB_X42_Y58_N0
\library1|Mux0~750\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~750_combout\ = (\library1|Mux0~749_combout\ & ((\library1|Mux0~748_combout\) # (\Mux324~15_combout\ $ (!\Mux325~18_combout\)))) # (!\library1|Mux0~749_combout\ & (\library1|Mux0~748_combout\ & (\Mux324~15_combout\ $ (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~749_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~748_combout\,
	combout => \library1|Mux0~750_combout\);

-- Location: LCCOMB_X43_Y58_N12
\library1|Mux0~743\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~743_combout\ = (!\Mux321~16_combout\ & ((\Mux320~4_combout\) # (\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~743_combout\);

-- Location: LCCOMB_X43_Y58_N30
\library1|Mux0~742\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~742_combout\ = \Mux320~4_combout\ $ (\Mux321~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~742_combout\);

-- Location: LCCOMB_X43_Y58_N22
\library1|Mux0~744\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~744_combout\ = (\Mux324~15_combout\ & (((\library1|Mux0~743_combout\ & !\library1|Mux0~742_combout\)) # (!\Mux322~16_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~742_combout\ $ (((\library1|Mux0~743_combout\ & 
-- !\Mux322~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~743_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~742_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~744_combout\);

-- Location: LCCOMB_X43_Y58_N28
\library1|Mux0~745\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~745_combout\ = (\Mux324~15_combout\ & (!\library1|Mux0~743_combout\ & (\Mux322~16_combout\ $ (\library1|Mux0~742_combout\)))) # (!\Mux324~15_combout\ & (\library1|Mux0~743_combout\ $ (((\Mux322~16_combout\ & 
-- !\library1|Mux0~742_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~742_combout\,
	datad => \library1|Mux0~743_combout\,
	combout => \library1|Mux0~745_combout\);

-- Location: LCCOMB_X43_Y58_N18
\library1|Mux0~746\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~746_combout\ = \library1|Mux0~744_combout\ $ (((\Mux325~18_combout\ & !\library1|Mux0~745_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~744_combout\,
	datad => \library1|Mux0~745_combout\,
	combout => \library1|Mux0~746_combout\);

-- Location: LCCOMB_X40_Y62_N2
\library1|Mux0~751\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~751_combout\ = (\Mux327~15_combout\ & (\vga1|xPixel\(1))) # (!\Mux327~15_combout\ & ((\vga1|xPixel\(1) & ((\library1|Mux0~746_combout\))) # (!\vga1|xPixel\(1) & (\library1|Mux0~750_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~750_combout\,
	datad => \library1|Mux0~746_combout\,
	combout => \library1|Mux0~751_combout\);

-- Location: LCCOMB_X40_Y62_N8
\library1|Mux0~752\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~752_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~751_combout\ & ((\library1|Mux0~1160_combout\))) # (!\library1|Mux0~751_combout\ & (\library1|Mux0~1162_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~751_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~1162_combout\,
	datac => \library1|Mux0~1160_combout\,
	datad => \library1|Mux0~751_combout\,
	combout => \library1|Mux0~752_combout\);

-- Location: LCCOMB_X41_Y62_N12
\library1|Mux0~765\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~765_combout\ = (\Mux322~16_combout\ & (((!\Mux321~16_combout\ & !\Mux324~15_combout\)))) # (!\Mux322~16_combout\ & (\Mux324~15_combout\ & ((!\Mux321~16_combout\) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~16_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~765_combout\);

-- Location: LCCOMB_X41_Y62_N14
\library1|Mux0~766\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~766_combout\ = (!\Mux325~18_combout\ & \library1|Mux0~765_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~765_combout\,
	combout => \library1|Mux0~766_combout\);

-- Location: LCCOMB_X40_Y58_N26
\library1|Mux0~753\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~753_combout\ = (\Mux322~16_combout\ & ((\Mux324~15_combout\ & (\Mux325~18_combout\ & !\Mux321~16_combout\)) # (!\Mux324~15_combout\ & (!\Mux325~18_combout\)))) # (!\Mux322~16_combout\ & (((\Mux325~18_combout\ & \Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~753_combout\);

-- Location: LCCOMB_X40_Y57_N24
\library1|Mux0~754\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~754_combout\ = (\vga1|xPixel\(0)) # ((!\vga1|xPixel\(1) & \vga1|yPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \vga1|yPixel\(0),
	combout => \library1|Mux0~754_combout\);

-- Location: LCCOMB_X40_Y62_N0
\library1|Mux0~756\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~756_combout\ = (\vga1|xPixel\(1) & ((\Mux322~16_combout\) # ((\vga1|yPixel\(1) & \library1|Mux0~754_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~754_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~756_combout\);

-- Location: LCCOMB_X40_Y62_N18
\library1|Mux0~757\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~757_combout\ = (\Mux325~18_combout\ & (\Mux322~16_combout\ & (\Mux324~15_combout\ $ (\library1|Mux0~756_combout\)))) # (!\Mux325~18_combout\ & (((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~756_combout\,
	combout => \library1|Mux0~757_combout\);

-- Location: LCCOMB_X40_Y62_N30
\library1|Mux0~755\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~755_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~754_combout\ $ (!\Mux322~16_combout\)) # (!\vga1|xPixel\(1)))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~754_combout\ & \Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~754_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~755_combout\);

-- Location: LCCOMB_X40_Y62_N4
\library1|Mux0~1157\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1157_combout\ = (\Mux322~16_combout\ & (((!\Mux321~16_combout\ & !\library1|Mux0~755_combout\)) # (!\library1|Mux0~757_combout\))) # (!\Mux322~16_combout\ & ((\Mux321~16_combout\ & (\library1|Mux0~755_combout\)) # (!\Mux321~16_combout\ & 
-- ((\library1|Mux0~757_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~755_combout\,
	datad => \library1|Mux0~757_combout\,
	combout => \library1|Mux0~1157_combout\);

-- Location: LCCOMB_X40_Y62_N24
\library1|Mux0~758\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~758_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~756_combout\ & ((\Mux324~15_combout\))) # (!\library1|Mux0~756_combout\ & (\Mux325~18_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~756_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~756_combout\,
	combout => \library1|Mux0~758_combout\);

-- Location: LCCOMB_X40_Y62_N26
\library1|Mux0~1158\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1158_combout\ = (\library1|Mux0~1157_combout\ & (((!\Mux321~16_combout\ & \library1|Mux0~757_combout\)) # (!\library1|Mux0~758_combout\))) # (!\library1|Mux0~1157_combout\ & ((\Mux321~16_combout\ & (!\library1|Mux0~757_combout\ & 
-- \library1|Mux0~758_combout\)) # (!\Mux321~16_combout\ & (\library1|Mux0~757_combout\ & !\library1|Mux0~758_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~757_combout\,
	datac => \library1|Mux0~1157_combout\,
	datad => \library1|Mux0~758_combout\,
	combout => \library1|Mux0~1158_combout\);

-- Location: LCCOMB_X39_Y61_N20
\library1|Mux0~761\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~761_combout\ = (\vga1|yPixel\(1) & (!\vga1|xPixel\(0) & (!\vga1|xPixel\(1) & \Mux322~16_combout\))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \vga1|xPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~761_combout\);

-- Location: LCCOMB_X39_Y61_N26
\library1|Mux0~762\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~762_combout\ = (\Mux322~16_combout\ & (((!\library1|Mux0~761_combout\) # (!\Mux324~15_combout\)) # (!\Mux325~18_combout\))) # (!\Mux322~16_combout\ & ((\Mux324~15_combout\) # ((\Mux325~18_combout\ & \library1|Mux0~761_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~761_combout\,
	combout => \library1|Mux0~762_combout\);

-- Location: LCCOMB_X39_Y61_N0
\library1|Mux0~759\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~759_combout\ = (\Mux324~15_combout\) # ((\vga1|xPixel\(1) & !\Mux322~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~759_combout\);

-- Location: LCCOMB_X39_Y61_N2
\library1|Mux0~760\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~760_combout\ = (\Mux322~16_combout\ & ((\Mux325~18_combout\ $ (\library1|Mux0~759_combout\)))) # (!\Mux322~16_combout\ & (\vga1|yPixel\(1) & ((\library1|Mux0~759_combout\) # (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~759_combout\,
	combout => \library1|Mux0~760_combout\);

-- Location: LCCOMB_X39_Y61_N4
\library1|Mux0~763\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~763_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~760_combout\))) # (!\Mux321~16_combout\ & (\library1|Mux0~762_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datac => \library1|Mux0~762_combout\,
	datad => \library1|Mux0~760_combout\,
	combout => \library1|Mux0~763_combout\);

-- Location: LCCOMB_X40_Y62_N6
\library1|Mux0~764\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~764_combout\ = (\Mux327~15_combout\ & ((\Mux320~4_combout\) # ((\library1|Mux0~1158_combout\)))) # (!\Mux327~15_combout\ & (!\Mux320~4_combout\ & ((\library1|Mux0~763_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~1158_combout\,
	datad => \library1|Mux0~763_combout\,
	combout => \library1|Mux0~764_combout\);

-- Location: LCCOMB_X40_Y62_N20
\library1|Mux0~767\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~767_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~764_combout\ & (\library1|Mux0~766_combout\)) # (!\library1|Mux0~764_combout\ & ((\library1|Mux0~753_combout\))))) # (!\Mux320~4_combout\ & (((\library1|Mux0~764_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~766_combout\,
	datac => \library1|Mux0~753_combout\,
	datad => \library1|Mux0~764_combout\,
	combout => \library1|Mux0~767_combout\);

-- Location: LCCOMB_X40_Y62_N14
\library1|Mux0~768\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~768_combout\ = (\vga1|yPixel\(2) & (\Mux323~14_combout\)) # (!\vga1|yPixel\(2) & ((\Mux323~14_combout\ & (\library1|Mux0~752_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~767_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~752_combout\,
	datad => \library1|Mux0~767_combout\,
	combout => \library1|Mux0~768_combout\);

-- Location: LCCOMB_X41_Y58_N30
\library1|Mux0~739\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~739_combout\ = (\Mux324~15_combout\ & (((\Mux322~16_combout\)) # (!\vga1|yPixel\(1)))) # (!\Mux324~15_combout\ & (((\vga1|xPixel\(1) & !\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \vga1|xPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~739_combout\);

-- Location: LCCOMB_X41_Y58_N24
\library1|Mux0~740\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~740_combout\ = (\Mux327~15_combout\ & (\Mux322~16_combout\ $ (((\Mux320~4_combout\) # (\library1|Mux0~739_combout\))))) # (!\Mux327~15_combout\ & (!\Mux320~4_combout\ & ((!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~739_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~740_combout\);

-- Location: LCCOMB_X40_Y56_N6
\library1|Mux0~724\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~724_combout\ = (\vga1|xPixel\(0) & ((\vga1|yPixel\(1)) # (\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	combout => \library1|Mux0~724_combout\);

-- Location: LCCOMB_X41_Y56_N14
\library1|Mux0~726\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~726_combout\ = (\Mux322~16_combout\) # ((\Mux320~4_combout\) # ((\Mux324~15_combout\ & !\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux320~4_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~726_combout\);

-- Location: LCCOMB_X41_Y56_N0
\library1|Mux0~725\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~725_combout\ = (\Mux322~16_combout\ & ((\Mux320~4_combout\ & (!\Mux324~15_combout\)) # (!\Mux320~4_combout\ & ((\Mux327~15_combout\))))) # (!\Mux322~16_combout\ & (\Mux324~15_combout\ $ (\Mux320~4_combout\ $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux320~4_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~725_combout\);

-- Location: LCCOMB_X41_Y56_N20
\library1|Mux0~727\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~727_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~725_combout\) # ((!\library1|Mux0~724_combout\ & !\library1|Mux0~726_combout\)))) # (!\vga1|xPixel\(1) & ((\library1|Mux0~726_combout\ $ (!\library1|Mux0~725_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~724_combout\,
	datac => \library1|Mux0~726_combout\,
	datad => \library1|Mux0~725_combout\,
	combout => \library1|Mux0~727_combout\);

-- Location: LCCOMB_X41_Y56_N4
\library1|Mux0~731\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~731_combout\ = (!\Mux324~15_combout\ & (\Mux322~16_combout\ & ((\vga1|xPixel\(1)) # (!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~731_combout\);

-- Location: LCCOMB_X41_Y56_N30
\library1|Mux0~728\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~728_combout\ = (\Mux320~4_combout\ & ((\Mux322~16_combout\ & ((!\Mux327~15_combout\))) # (!\Mux322~16_combout\ & ((\Mux324~15_combout\) # (\Mux327~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux320~4_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~728_combout\);

-- Location: LCCOMB_X41_Y56_N28
\library1|Mux0~729\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~729_combout\ = (\Mux322~16_combout\ & ((\vga1|yPixel\(1) $ (\Mux327~15_combout\)) # (!\vga1|xPixel\(0)))) # (!\Mux322~16_combout\ & (((\vga1|yPixel\(1)) # (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~729_combout\);

-- Location: LCCOMB_X41_Y56_N6
\library1|Mux0~730\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~730_combout\ = (\Mux324~15_combout\ & (\vga1|xPixel\(1) & !\library1|Mux0~729_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~729_combout\,
	combout => \library1|Mux0~730_combout\);

-- Location: LCCOMB_X41_Y56_N26
\library1|Mux0~732\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~732_combout\ = (\library1|Mux0~728_combout\) # ((!\Mux320~4_combout\ & ((\library1|Mux0~731_combout\) # (\library1|Mux0~730_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~731_combout\,
	datac => \library1|Mux0~728_combout\,
	datad => \library1|Mux0~730_combout\,
	combout => \library1|Mux0~732_combout\);

-- Location: LCCOMB_X41_Y56_N8
\library1|Mux0~733\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~733_combout\ = (\Mux322~16_combout\ & (((!\Mux327~15_combout\)) # (!\library1|Mux0~306_combout\))) # (!\Mux322~16_combout\ & (((\Mux327~15_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~306_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~733_combout\);

-- Location: LCCOMB_X41_Y56_N22
\library1|Mux0~736\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~736_combout\ = (\Mux324~15_combout\ & (!\Mux320~4_combout\)) # (!\Mux324~15_combout\ & (\Mux320~4_combout\ & (\Mux322~16_combout\ & !\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~736_combout\);

-- Location: LCCOMB_X41_Y56_N18
\library1|Mux0~734\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~734_combout\ = (\vga1|xPixel\(1) & (!\Mux327~15_combout\ & ((\vga1|xPixel\(0)) # (!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~734_combout\);

-- Location: LCCOMB_X41_Y56_N16
\library1|Mux0~735\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~735_combout\ = (\vga1|yPixel\(1) & ((\Mux322~16_combout\ $ (\library1|Mux0~734_combout\)))) # (!\vga1|yPixel\(1) & (\Mux322~16_combout\ & ((!\library1|Mux0~734_combout\) # (!\vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~734_combout\,
	combout => \library1|Mux0~735_combout\);

-- Location: LCCOMB_X41_Y56_N12
\library1|Mux0~737\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~737_combout\ = (\Mux320~4_combout\ & (((!\library1|Mux0~736_combout\)))) # (!\Mux320~4_combout\ & ((\library1|Mux0~736_combout\ & (\library1|Mux0~733_combout\)) # (!\library1|Mux0~736_combout\ & ((\library1|Mux0~735_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~733_combout\,
	datac => \library1|Mux0~736_combout\,
	datad => \library1|Mux0~735_combout\,
	combout => \library1|Mux0~737_combout\);

-- Location: LCCOMB_X41_Y56_N2
\library1|Mux0~738\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~738_combout\ = (\Mux325~18_combout\ & ((\Mux321~16_combout\) # ((\library1|Mux0~732_combout\)))) # (!\Mux325~18_combout\ & (!\Mux321~16_combout\ & ((\library1|Mux0~737_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~732_combout\,
	datad => \library1|Mux0~737_combout\,
	combout => \library1|Mux0~738_combout\);

-- Location: LCCOMB_X40_Y62_N28
\library1|Mux0~741\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~741_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~738_combout\ & (\library1|Mux0~740_combout\)) # (!\library1|Mux0~738_combout\ & ((\library1|Mux0~727_combout\))))) # (!\Mux321~16_combout\ & (((\library1|Mux0~738_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~740_combout\,
	datac => \library1|Mux0~727_combout\,
	datad => \library1|Mux0~738_combout\,
	combout => \library1|Mux0~741_combout\);

-- Location: LCCOMB_X40_Y62_N10
\library1|Mux0~776\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~776_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~768_combout\ & (\library1|Mux0~775_combout\)) # (!\library1|Mux0~768_combout\ & ((\library1|Mux0~741_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~768_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~775_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~768_combout\,
	datad => \library1|Mux0~741_combout\,
	combout => \library1|Mux0~776_combout\);

-- Location: LCCOMB_X35_Y62_N20
\library1|Mux0~903\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~903_combout\ = (\library1|Mux0~852_combout\ & (((\library1|Mux0~902_combout\)) # (!\vga1|yPixel\(3)))) # (!\library1|Mux0~852_combout\ & (\vga1|yPixel\(3) & ((\library1|Mux0~776_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~852_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~902_combout\,
	datad => \library1|Mux0~776_combout\,
	combout => \library1|Mux0~903_combout\);

-- Location: LCCOMB_X35_Y62_N0
\library1|Mux0~1035\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1035_combout\ = (\vga1|yPixel\(4) & (\Mux326~20_combout\)) # (!\vga1|yPixel\(4) & ((\Mux326~20_combout\ & ((\library1|Mux0~903_combout\))) # (!\Mux326~20_combout\ & (\library1|Mux0~1034_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \Mux326~20_combout\,
	datac => \library1|Mux0~1034_combout\,
	datad => \library1|Mux0~903_combout\,
	combout => \library1|Mux0~1035_combout\);

-- Location: LCCOMB_X35_Y62_N14
\library1|Mux0~1108\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1108_combout\ = (\vga1|yPixel\(4) & ((\library1|Mux0~1035_combout\ & ((\library1|Mux0~1107_combout\))) # (!\library1|Mux0~1035_combout\ & (\library1|Mux0~723_combout\)))) # (!\vga1|yPixel\(4) & (((\library1|Mux0~1035_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~723_combout\,
	datab => \vga1|yPixel\(4),
	datac => \library1|Mux0~1107_combout\,
	datad => \library1|Mux0~1035_combout\,
	combout => \library1|Mux0~1108_combout\);

-- Location: LCCOMB_X40_Y54_N30
\library1|Mux0~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~554_combout\ = (\Mux323~14_combout\ & (\Mux322~16_combout\ & (\Mux324~15_combout\ & !\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~554_combout\);

-- Location: LCCOMB_X40_Y54_N20
\library1|Mux0~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~555_combout\ = (\vga1|yPixel\(3) & (!\vga1|yPixel\(2) & (\library1|Mux0~554_combout\ & \Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~554_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~555_combout\);

-- Location: LCCOMB_X36_Y55_N8
\library1|Mux0~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~255_combout\ = (!\vga1|xPixel\(1) & (((!\Mux320~2_combout\) # (!\Mux64~0_combout\)) # (!\Mux320~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~3_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux64~0_combout\,
	datad => \Mux320~2_combout\,
	combout => \library1|Mux0~255_combout\);

-- Location: LCCOMB_X40_Y54_N2
\library1|Mux0~544\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~544_combout\ = (\vga1|yPixel\(2)) # ((\vga1|xPixel\(0) & (\vga1|yPixel\(1) & !\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~544_combout\);

-- Location: LCCOMB_X40_Y54_N0
\library1|Mux0~543\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~543_combout\ = (!\Mux323~14_combout\ & (!\Mux322~16_combout\ & \Mux321~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~543_combout\);

-- Location: LCCOMB_X40_Y54_N4
\library1|Mux0~545\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~545_combout\ = (\library1|Mux0~543_combout\ & (\Mux325~18_combout\ $ (((!\library1|Mux0~544_combout\) # (!\Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~544_combout\,
	datad => \library1|Mux0~543_combout\,
	combout => \library1|Mux0~545_combout\);

-- Location: LCCOMB_X40_Y54_N14
\library1|Mux0~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~550_combout\ = (\vga1|yPixel\(1) & ((\vga1|yPixel\(2)) # ((\vga1|xPixel\(0) & \vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(0),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~550_combout\);

-- Location: LCCOMB_X40_Y54_N12
\library1|Mux0~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~551_combout\ = (\vga1|yPixel\(2) & (((\Mux324~15_combout\) # (!\Mux323~14_combout\)) # (!\library1|Mux0~550_combout\))) # (!\vga1|yPixel\(2) & ((\library1|Mux0~550_combout\) # ((\Mux323~14_combout\) # (!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~550_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~551_combout\);

-- Location: LCCOMB_X40_Y54_N18
\library1|Mux0~548\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~548_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((!\Mux325~18_combout\) # (!\Mux323~14_combout\))) # (!\vga1|yPixel\(1) & ((\Mux323~14_combout\) # (\Mux325~18_combout\))))) # (!\vga1|yPixel\(2) & (((\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~548_combout\);

-- Location: LCCOMB_X40_Y54_N8
\library1|Mux0~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~549_combout\ = (\Mux325~18_combout\ & ((\Mux322~16_combout\) # ((!\Mux324~15_combout\ & \library1|Mux0~548_combout\)))) # (!\Mux325~18_combout\ & (\Mux324~15_combout\ & (!\Mux322~16_combout\ & !\library1|Mux0~548_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~548_combout\,
	combout => \library1|Mux0~549_combout\);

-- Location: LCCOMB_X40_Y54_N10
\library1|Mux0~546\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~546_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # ((\vga1|xPixel\(0) & \vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~546_combout\);

-- Location: LCCOMB_X40_Y54_N28
\library1|Mux0~547\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~547_combout\ = (\Mux323~14_combout\) # (\library1|Mux0~546_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~546_combout\,
	combout => \library1|Mux0~547_combout\);

-- Location: LCCOMB_X40_Y54_N6
\library1|Mux0~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~552_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~549_combout\ & (\library1|Mux0~551_combout\)) # (!\library1|Mux0~549_combout\ & ((!\library1|Mux0~547_combout\))))) # (!\Mux322~16_combout\ & (((\library1|Mux0~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~551_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~549_combout\,
	datad => \library1|Mux0~547_combout\,
	combout => \library1|Mux0~552_combout\);

-- Location: LCCOMB_X40_Y54_N24
\library1|Mux0~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~553_combout\ = (!\vga1|yPixel\(3) & ((\library1|Mux0~545_combout\) # ((!\Mux321~16_combout\ & \library1|Mux0~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~545_combout\,
	datad => \library1|Mux0~552_combout\,
	combout => \library1|Mux0~553_combout\);

-- Location: LCCOMB_X40_Y54_N26
\library1|Mux0~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~556_combout\ = (\library1|Mux0~255_combout\ & ((\library1|Mux0~555_combout\) # (\library1|Mux0~553_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \library1|Mux0~555_combout\,
	datac => \library1|Mux0~255_combout\,
	datad => \library1|Mux0~553_combout\,
	combout => \library1|Mux0~556_combout\);

-- Location: LCCOMB_X35_Y59_N2
\library1|Mux0~491\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~491_combout\ = (\vga1|yPixel\(3) & (\Mux322~16_combout\ $ (\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(3),
	datac => \Mux321~16_combout\,
	combout => \library1|Mux0~491_combout\);

-- Location: LCCOMB_X35_Y59_N4
\library1|Mux0~492\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~492_combout\ = (\vga1|yPixel\(1) & (!\vga1|yPixel\(2) & (!\Mux321~16_combout\ & !\Mux324~15_combout\))) # (!\vga1|yPixel\(1) & (\Mux321~16_combout\ & (\vga1|yPixel\(2) $ (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~492_combout\);

-- Location: LCCOMB_X35_Y59_N8
\library1|Mux0~1116\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1116_combout\ = (\Mux325~18_combout\ & (\library1|Mux0~491_combout\ & (\library1|Mux0~492_combout\ & !\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~491_combout\,
	datac => \library1|Mux0~492_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1116_combout\);

-- Location: LCCOMB_X35_Y59_N16
\library1|Mux0~494\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~494_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(2) & (\vga1|yPixel\(1) & !\Mux324~15_combout\)) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~494_combout\);

-- Location: LCCOMB_X35_Y59_N30
\library1|Mux0~493\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~493_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((\Mux324~15_combout\))) # (!\vga1|yPixel\(1) & (\Mux325~18_combout\)))) # (!\vga1|yPixel\(2) & (((\Mux325~18_combout\ & !\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~493_combout\);

-- Location: LCCOMB_X35_Y59_N14
\library1|Mux0~495\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~495_combout\ = (\library1|Mux0~494_combout\ & ((\Mux322~16_combout\ & (\library1|Mux0~493_combout\)) # (!\Mux322~16_combout\ & ((\Mux324~15_combout\) # (!\library1|Mux0~493_combout\))))) # (!\library1|Mux0~494_combout\ & 
-- ((\Mux324~15_combout\ & ((!\library1|Mux0~493_combout\))) # (!\Mux324~15_combout\ & (\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~494_combout\,
	datac => \library1|Mux0~493_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~495_combout\);

-- Location: LCCOMB_X35_Y59_N28
\library1|Mux0~496\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~496_combout\ = (\library1|Mux0~494_combout\ & (!\library1|Mux0~493_combout\ & ((\Mux322~16_combout\) # (\Mux324~15_combout\)))) # (!\library1|Mux0~494_combout\ & (\library1|Mux0~493_combout\ & (\Mux322~16_combout\ $ 
-- (!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~494_combout\,
	datac => \library1|Mux0~493_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~496_combout\);

-- Location: LCCOMB_X35_Y59_N10
\library1|Mux0~497\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~497_combout\ = \library1|Mux0~495_combout\ $ (((\Mux321~16_combout\ & !\library1|Mux0~496_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~495_combout\,
	datad => \library1|Mux0~496_combout\,
	combout => \library1|Mux0~497_combout\);

-- Location: LCCOMB_X38_Y57_N18
\library1|Mux0~1179\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1179_combout\ = (\vga1|yPixel\(2) & (\Mux325~18_combout\ $ (((!\vga1|yPixel\(1) & \Mux322~16_combout\))))) # (!\vga1|yPixel\(2) & (!\Mux322~16_combout\ & ((\Mux325~18_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~1179_combout\);

-- Location: LCCOMB_X35_Y59_N6
\library1|Mux0~1180\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1180_combout\ = (\library1|Mux0~1179_combout\ & (\Mux324~15_combout\ $ (((\vga1|yPixel\(1)) # (!\Mux322~16_combout\))))) # (!\library1|Mux0~1179_combout\ & (((\Mux324~15_combout\ & !\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~1179_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~1180_combout\);

-- Location: LCCOMB_X35_Y59_N24
\library1|Mux0~498\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~498_combout\ = (\Mux323~14_combout\ & (((!\Mux321~16_combout\ & \library1|Mux0~1180_combout\)))) # (!\Mux323~14_combout\ & (\library1|Mux0~497_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~497_combout\,
	datab => \Mux321~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1180_combout\,
	combout => \library1|Mux0~498_combout\);

-- Location: LCCOMB_X35_Y59_N22
\library1|Mux0~499\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~499_combout\ = (\library1|Mux0~255_combout\ & ((\library1|Mux0~1116_combout\) # ((!\vga1|yPixel\(3) & \library1|Mux0~498_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1116_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~255_combout\,
	datad => \library1|Mux0~498_combout\,
	combout => \library1|Mux0~499_combout\);

-- Location: LCCOMB_X40_Y61_N30
\library1|Mux0~502\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~502_combout\ = (\Mux323~14_combout\ & ((\Mux324~15_combout\) # ((!\vga1|yPixel\(2) & !\vga1|yPixel\(1))))) # (!\Mux323~14_combout\ & (((!\vga1|yPixel\(1))) # (!\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~502_combout\);

-- Location: LCCOMB_X40_Y61_N28
\library1|Mux0~501\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~501_combout\ = (\Mux323~14_combout\) # ((\vga1|yPixel\(2)) # ((!\vga1|xPixel\(0) & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~501_combout\);

-- Location: LCCOMB_X40_Y61_N8
\library1|Mux0~503\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~503_combout\ = (\Mux322~16_combout\ & (\Mux324~15_combout\ & ((\library1|Mux0~501_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~502_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~502_combout\,
	datad => \library1|Mux0~501_combout\,
	combout => \library1|Mux0~503_combout\);

-- Location: LCCOMB_X40_Y61_N4
\library1|Mux0~505\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~505_combout\ = (\vga1|yPixel\(2) & (\Mux322~16_combout\ & ((!\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & (!\Mux322~16_combout\ & (\Mux323~14_combout\ & \Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~505_combout\);

-- Location: LCCOMB_X40_Y61_N18
\library1|Mux0~504\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~504_combout\ = (\Mux322~16_combout\ & (((\vga1|yPixel\(2) & \Mux323~14_combout\)) # (!\Mux324~15_combout\))) # (!\Mux322~16_combout\ & ((\vga1|yPixel\(2) & (\Mux323~14_combout\ $ (\Mux324~15_combout\))) # (!\vga1|yPixel\(2) & 
-- (\Mux323~14_combout\ & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~504_combout\);

-- Location: LCCOMB_X40_Y61_N10
\library1|Mux0~506\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~506_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~504_combout\))) # (!\vga1|yPixel\(1) & (\library1|Mux0~505_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~505_combout\,
	datad => \library1|Mux0~504_combout\,
	combout => \library1|Mux0~506_combout\);

-- Location: LCCOMB_X40_Y61_N12
\library1|Mux0~507\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~507_combout\ = (\Mux321~16_combout\ & (\Mux325~18_combout\)) # (!\Mux321~16_combout\ & ((\Mux325~18_combout\ & (\library1|Mux0~503_combout\)) # (!\Mux325~18_combout\ & ((\library1|Mux0~506_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~503_combout\,
	datad => \library1|Mux0~506_combout\,
	combout => \library1|Mux0~507_combout\);

-- Location: LCCOMB_X40_Y61_N14
\library1|Mux0~508\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~508_combout\ = (\vga1|yPixel\(1) & ((\Mux324~15_combout\ $ (\vga1|yPixel\(2))))) # (!\vga1|yPixel\(1) & (\Mux324~15_combout\ & ((\vga1|xPixel\(0)) # (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~508_combout\);

-- Location: LCCOMB_X40_Y61_N6
\library1|Mux0~1177\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1177_combout\ = (!\Mux322~16_combout\ & ((\library1|Mux0~507_combout\ & (!\Mux323~14_combout\)) # (!\library1|Mux0~507_combout\ & ((\library1|Mux0~500_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~500_combout\,
	datad => \library1|Mux0~507_combout\,
	combout => \library1|Mux0~1177_combout\);

-- Location: LCCOMB_X40_Y61_N0
\library1|Mux0~1178\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1178_combout\ = (\Mux321~16_combout\ & (\library1|Mux0~1177_combout\ & ((!\library1|Mux0~508_combout\) # (!\library1|Mux0~507_combout\)))) # (!\Mux321~16_combout\ & (\library1|Mux0~507_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~507_combout\,
	datab => \library1|Mux0~508_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~1177_combout\,
	combout => \library1|Mux0~1178_combout\);

-- Location: LCCOMB_X36_Y62_N26
\library1|Mux0~509\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~509_combout\ = (!\vga1|yPixel\(3) & (\library1|Mux0~255_combout\ & \library1|Mux0~1178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datac => \library1|Mux0~255_combout\,
	datad => \library1|Mux0~1178_combout\,
	combout => \library1|Mux0~509_combout\);

-- Location: LCCOMB_X40_Y56_N28
\library1|Mux0~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~512_combout\ = (\Mux322~16_combout\ & (\Mux325~18_combout\ $ (((!\Mux323~14_combout\))))) # (!\Mux322~16_combout\ & ((\Mux325~18_combout\ & (!\Mux324~15_combout\)) # (!\Mux325~18_combout\ & (\Mux324~15_combout\ & !\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~512_combout\);

-- Location: LCCOMB_X40_Y56_N26
\library1|Mux0~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~513_combout\ = (\vga1|yPixel\(2) & (\Mux325~18_combout\ & (\library1|Mux0~511_combout\))) # (!\vga1|yPixel\(2) & (((!\library1|Mux0~512_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~511_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~512_combout\,
	combout => \library1|Mux0~513_combout\);

-- Location: LCCOMB_X41_Y57_N4
\library1|Mux0~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~514_combout\ = (\vga1|yPixel\(2) & ((\vga1|xPixel\(1)) # (!\Mux320~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux320~4_combout\,
	combout => \library1|Mux0~514_combout\);

-- Location: LCCOMB_X41_Y57_N10
\library1|Mux0~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~515_combout\ = (\Mux320~4_combout\ & (!\library1|Mux0~514_combout\ & (!\Mux325~18_combout\ & !\Mux324~15_combout\))) # (!\Mux320~4_combout\ & (\library1|Mux0~514_combout\ $ (\Mux325~18_combout\ $ (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~514_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~515_combout\);

-- Location: LCCOMB_X41_Y57_N8
\library1|Mux0~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~516_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(2)) # (!\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	combout => \library1|Mux0~516_combout\);

-- Location: LCCOMB_X41_Y57_N30
\library1|Mux0~517\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~517_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~516_combout\ & (\vga1|yPixel\(2))) # (!\library1|Mux0~516_combout\ & ((\Mux324~15_combout\))))) # (!\Mux320~4_combout\ & (((!\Mux324~15_combout\) # (!\library1|Mux0~516_combout\)) # 
-- (!\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~516_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~517_combout\);

-- Location: LCCOMB_X41_Y57_N16
\library1|Mux0~518\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~518_combout\ = (\Mux320~4_combout\ & ((\Mux324~15_combout\ & ((!\Mux325~18_combout\))) # (!\Mux324~15_combout\ & (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux320~4_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~518_combout\);

-- Location: LCCOMB_X41_Y57_N22
\library1|Mux0~519\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~519_combout\ = (\Mux323~14_combout\ & ((\Mux322~16_combout\) # ((\library1|Mux0~517_combout\)))) # (!\Mux323~14_combout\ & (!\Mux322~16_combout\ & ((\library1|Mux0~518_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~517_combout\,
	datad => \library1|Mux0~518_combout\,
	combout => \library1|Mux0~519_combout\);

-- Location: LCCOMB_X41_Y57_N28
\library1|Mux0~520\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~520_combout\ = (\Mux320~4_combout\) # ((\vga1|yPixel\(2) & ((!\Mux324~15_combout\) # (!\Mux325~18_combout\))) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux320~4_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~520_combout\);

-- Location: LCCOMB_X41_Y57_N2
\library1|Mux0~521\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~521_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~519_combout\ & ((!\library1|Mux0~520_combout\))) # (!\library1|Mux0~519_combout\ & (\library1|Mux0~515_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~519_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~515_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~519_combout\,
	datad => \library1|Mux0~520_combout\,
	combout => \library1|Mux0~521_combout\);

-- Location: LCCOMB_X40_Y58_N8
\library1|Mux0~1117\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1117_combout\ = (\Mux321~16_combout\ & (((\library1|Mux0~521_combout\)))) # (!\Mux321~16_combout\ & (\Mux320~4_combout\ & (\library1|Mux0~513_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~513_combout\,
	datad => \library1|Mux0~521_combout\,
	combout => \library1|Mux0~1117_combout\);

-- Location: LCCOMB_X43_Y58_N4
\library1|Mux0~537\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~537_combout\ = (!\Mux321~16_combout\ & ((\Mux322~16_combout\ & (!\Mux323~14_combout\ & \vga1|yPixel\(2))) # (!\Mux322~16_combout\ & (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux321~16_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~537_combout\);

-- Location: LCCOMB_X43_Y58_N6
\library1|Mux0~1120\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1120_combout\ = (\Mux321~16_combout\ & (\Mux320~4_combout\ $ (\Mux322~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~1120_combout\);

-- Location: LCCOMB_X43_Y58_N2
\library1|Mux0~538\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~538_combout\ = (\library1|Mux0~1120_combout\ & ((\Mux322~16_combout\ & ((\Mux323~14_combout\))) # (!\Mux322~16_combout\ & ((\vga1|yPixel\(2)) # (!\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1120_combout\,
	combout => \library1|Mux0~538_combout\);

-- Location: LCCOMB_X43_Y58_N20
\library1|Mux0~539\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~539_combout\ = (\Mux325~18_combout\ & (\library1|Mux0~537_combout\ & (\Mux320~4_combout\))) # (!\Mux325~18_combout\ & (((\library1|Mux0~538_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \library1|Mux0~537_combout\,
	datac => \Mux320~4_combout\,
	datad => \library1|Mux0~538_combout\,
	combout => \library1|Mux0~539_combout\);

-- Location: LCCOMB_X43_Y58_N0
\library1|Mux0~1118\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1118_combout\ = (!\Mux320~4_combout\ & (\Mux323~14_combout\ & (!\Mux322~16_combout\ & \Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~1118_combout\);

-- Location: LCCOMB_X43_Y58_N8
\library1|Mux0~522\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~522_combout\ = (\Mux323~14_combout\ & (\Mux320~4_combout\ & (!\Mux321~16_combout\))) # (!\Mux323~14_combout\ & (\Mux321~16_combout\ & (\Mux320~4_combout\ $ (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux321~16_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~522_combout\);

-- Location: LCCOMB_X43_Y58_N10
\library1|Mux0~523\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~523_combout\ = (\Mux322~16_combout\ & (!\Mux325~18_combout\ & ((\library1|Mux0~1118_combout\) # (\library1|Mux0~522_combout\)))) # (!\Mux322~16_combout\ & (\library1|Mux0~1118_combout\ & ((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~1118_combout\,
	datac => \library1|Mux0~522_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~523_combout\);

-- Location: LCCOMB_X42_Y58_N14
\library1|Mux0~534\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~534_combout\ = (\Mux322~16_combout\ & (\Mux320~4_combout\ & (!\Mux325~18_combout\ & !\Mux321~16_combout\))) # (!\Mux322~16_combout\ & (!\Mux320~4_combout\ & (\Mux325~18_combout\ & \Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux320~4_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~534_combout\);

-- Location: LCCOMB_X42_Y58_N30
\library1|Mux0~1175\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1175_combout\ = (\vga1|yPixel\(2) & (((!\Mux325~18_combout\)) # (!\vga1|yPixel\(1)))) # (!\vga1|yPixel\(2) & ((\Mux325~18_combout\) # ((\vga1|yPixel\(1) & !\Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~1175_combout\);

-- Location: LCCOMB_X42_Y58_N28
\library1|Mux0~1176\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1176_combout\ = (\library1|Mux0~1175_combout\ & ((\Mux322~16_combout\ $ (\Mux321~16_combout\)))) # (!\library1|Mux0~1175_combout\ & (!\vga1|yPixel\(2) & (\Mux322~16_combout\ & \Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~1175_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~1176_combout\);

-- Location: LCCOMB_X42_Y58_N20
\library1|Mux0~535\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~535_combout\ = (\Mux323~14_combout\ & (((\library1|Mux0~534_combout\)))) # (!\Mux323~14_combout\ & (!\Mux320~4_combout\ & ((\library1|Mux0~1176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~534_combout\,
	datad => \library1|Mux0~1176_combout\,
	combout => \library1|Mux0~535_combout\);

-- Location: LCCOMB_X40_Y58_N28
\library1|Mux0~524\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~524_combout\ = (\Mux325~18_combout\ & (((\Mux323~14_combout\ & !\Mux321~16_combout\)))) # (!\Mux325~18_combout\ & (\Mux321~16_combout\ & ((\vga1|yPixel\(2)) # (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~524_combout\);

-- Location: LCCOMB_X40_Y58_N12
\library1|Mux0~532\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~532_combout\ = (!\Mux323~14_combout\ & (\vga1|yPixel\(2) & (\Mux325~18_combout\ & !\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~532_combout\);

-- Location: LCCOMB_X40_Y58_N30
\library1|Mux0~529\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~529_combout\ = (\Mux325~18_combout\ & (\vga1|xPixel\(0))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~529_combout\);

-- Location: LCCOMB_X40_Y58_N22
\library1|Mux0~1119\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1119_combout\ = (\vga1|yPixel\(2) & (((\library1|Mux0~529_combout\)))) # (!\vga1|yPixel\(2) & (\Mux323~14_combout\ & ((\library1|Mux0~529_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~529_combout\,
	combout => \library1|Mux0~1119_combout\);

-- Location: LCCOMB_X40_Y58_N4
\library1|Mux0~530\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~530_combout\ = (\Mux323~14_combout\ & ((\Mux325~18_combout\) # ((\library1|Mux0~1119_combout\ & !\Mux321~16_combout\)))) # (!\Mux323~14_combout\ & (((\library1|Mux0~1119_combout\) # (\Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~1119_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~530_combout\);

-- Location: LCCOMB_X40_Y58_N14
\library1|Mux0~525\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~525_combout\ = (\Mux325~18_combout\ & (((!\Mux323~14_combout\)))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(1) & (\vga1|yPixel\(2))) # (!\vga1|yPixel\(1) & (!\vga1|yPixel\(2) & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~525_combout\);

-- Location: LCCOMB_X40_Y58_N20
\library1|Mux0~526\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~526_combout\ = (\Mux321~16_combout\ & (\vga1|yPixel\(1))) # (!\Mux321~16_combout\ & ((!\library1|Mux0~525_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \library1|Mux0~525_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~526_combout\);

-- Location: LCCOMB_X40_Y58_N6
\library1|Mux0~527\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~527_combout\ = (\vga1|yPixel\(2) & (((!\vga1|xPixel\(0) & \Mux325~18_combout\)) # (!\library1|Mux0~526_combout\))) # (!\vga1|yPixel\(2) & (((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~526_combout\,
	combout => \library1|Mux0~527_combout\);

-- Location: LCCOMB_X40_Y58_N0
\library1|Mux0~528\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~528_combout\ = (\Mux321~16_combout\ & (!\Mux323~14_combout\ & ((\library1|Mux0~527_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~526_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \library1|Mux0~526_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~527_combout\,
	combout => \library1|Mux0~528_combout\);

-- Location: LCCOMB_X40_Y58_N18
\library1|Mux0~531\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~531_combout\ = (\Mux320~4_combout\ & (\Mux322~16_combout\)) # (!\Mux320~4_combout\ & ((\Mux322~16_combout\ & (!\library1|Mux0~530_combout\)) # (!\Mux322~16_combout\ & ((\library1|Mux0~528_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~530_combout\,
	datad => \library1|Mux0~528_combout\,
	combout => \library1|Mux0~531_combout\);

-- Location: LCCOMB_X40_Y58_N10
\library1|Mux0~533\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~533_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~531_combout\ & ((\library1|Mux0~532_combout\))) # (!\library1|Mux0~531_combout\ & (\library1|Mux0~524_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~524_combout\,
	datac => \library1|Mux0~532_combout\,
	datad => \library1|Mux0~531_combout\,
	combout => \library1|Mux0~533_combout\);

-- Location: LCCOMB_X40_Y58_N24
\library1|Mux0~536\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~536_combout\ = (\Mux324~15_combout\ & ((\vga1|xPixel\(1)) # ((\library1|Mux0~533_combout\)))) # (!\Mux324~15_combout\ & (!\vga1|xPixel\(1) & (\library1|Mux0~535_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~535_combout\,
	datad => \library1|Mux0~533_combout\,
	combout => \library1|Mux0~536_combout\);

-- Location: LCCOMB_X40_Y58_N2
\library1|Mux0~540\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~540_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~536_combout\ & (\library1|Mux0~539_combout\)) # (!\library1|Mux0~536_combout\ & ((\library1|Mux0~523_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~536_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~539_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~523_combout\,
	datad => \library1|Mux0~536_combout\,
	combout => \library1|Mux0~540_combout\);

-- Location: LCCOMB_X40_Y58_N16
\library1|Mux0~541\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~541_combout\ = (\vga1|yPixel\(3) & (\library1|Mux0~1117_combout\)) # (!\vga1|yPixel\(3) & ((\library1|Mux0~540_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datac => \library1|Mux0~1117_combout\,
	datad => \library1|Mux0~540_combout\,
	combout => \library1|Mux0~541_combout\);

-- Location: LCCOMB_X36_Y62_N28
\library1|Mux0~542\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~542_combout\ = (\Mux326~20_combout\ & (\Mux327~15_combout\)) # (!\Mux326~20_combout\ & ((\Mux327~15_combout\ & (\library1|Mux0~509_combout\)) # (!\Mux327~15_combout\ & ((\library1|Mux0~541_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~20_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~509_combout\,
	datad => \library1|Mux0~541_combout\,
	combout => \library1|Mux0~542_combout\);

-- Location: LCCOMB_X36_Y62_N30
\library1|Mux0~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~557_combout\ = (\Mux326~20_combout\ & ((\library1|Mux0~542_combout\ & (\library1|Mux0~556_combout\)) # (!\library1|Mux0~542_combout\ & ((\library1|Mux0~499_combout\))))) # (!\Mux326~20_combout\ & (((\library1|Mux0~542_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~20_combout\,
	datab => \library1|Mux0~556_combout\,
	datac => \library1|Mux0~499_combout\,
	datad => \library1|Mux0~542_combout\,
	combout => \library1|Mux0~557_combout\);

-- Location: LCCOMB_X42_Y58_N24
\library1|Mux0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~208_combout\ = (!\Mux321~16_combout\ & ((\vga1|yPixel\(2) & (!\vga1|yPixel\(1))) # (!\vga1|yPixel\(2) & ((\vga1|xPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~208_combout\);

-- Location: LCCOMB_X41_Y58_N8
\library1|Mux0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~96_combout\ = (\Mux322~16_combout\ & (\Mux323~14_combout\ & \Mux327~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~96_combout\);

-- Location: LCCOMB_X40_Y59_N30
\library1|Mux0~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~205_combout\ = (\Mux321~16_combout\ & (!\vga1|yPixel\(1) & !\Mux322~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~205_combout\);

-- Location: LCCOMB_X40_Y59_N14
\library1|Mux0~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~203_combout\ = (\Mux324~15_combout\ & (!\Mux322~16_combout\ & ((\vga1|xPixel\(1)) # (\vga1|yPixel\(1))))) # (!\Mux324~15_combout\ & (((\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~203_combout\);

-- Location: LCCOMB_X40_Y59_N20
\library1|Mux0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~204_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # ((\library1|Mux0~203_combout\ & \Mux321~16_combout\)))) # (!\Mux324~15_combout\ & (!\vga1|yPixel\(2) & (\library1|Mux0~203_combout\ $ (\Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~203_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~204_combout\);

-- Location: LCCOMB_X40_Y59_N28
\library1|Mux0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~206_combout\ = (\vga1|yPixel\(2) & (\library1|Mux0~205_combout\ & ((!\library1|Mux0~204_combout\) # (!\vga1|xPixel\(1))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~205_combout\,
	datad => \library1|Mux0~204_combout\,
	combout => \library1|Mux0~206_combout\);

-- Location: LCCOMB_X41_Y58_N28
\library1|Mux0~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~207_combout\ = (!\Mux323~14_combout\ & (!\Mux327~15_combout\ & \library1|Mux0~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~206_combout\,
	combout => \library1|Mux0~207_combout\);

-- Location: LCCOMB_X41_Y58_N10
\library1|Mux0~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~209_combout\ = (\library1|Mux0~207_combout\) # ((\Mux324~15_combout\ & (\library1|Mux0~208_combout\ & \library1|Mux0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \library1|Mux0~208_combout\,
	datac => \library1|Mux0~96_combout\,
	datad => \library1|Mux0~207_combout\,
	combout => \library1|Mux0~209_combout\);

-- Location: LCCOMB_X41_Y58_N16
\library1|Mux0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~210_combout\ = (\Mux325~18_combout\ & (!\Mux320~4_combout\ & \library1|Mux0~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~18_combout\,
	datac => \Mux320~4_combout\,
	datad => \library1|Mux0~209_combout\,
	combout => \library1|Mux0~210_combout\);

-- Location: LCCOMB_X32_Y60_N0
\library1|Mux0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~68_combout\ = (\Mux325~18_combout\ & (((\Mux322~16_combout\ & \Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (!\Mux322~16_combout\ & ((\vga1|yPixel\(2)) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~68_combout\);

-- Location: LCCOMB_X32_Y60_N30
\library1|Mux0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~69_combout\ = (\Mux322~16_combout\ & ((\vga1|xPixel\(1) & (\vga1|yPixel\(2) & \vga1|yPixel\(1))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(2)) # (\vga1|yPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~69_combout\);

-- Location: LCCOMB_X32_Y60_N8
\library1|Mux0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~70_combout\ = (\Mux324~15_combout\ & (((!\Mux325~18_combout\)) # (!\library1|Mux0~69_combout\))) # (!\Mux324~15_combout\ & ((\Mux322~16_combout\ $ (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~69_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~70_combout\);

-- Location: LCCOMB_X32_Y60_N26
\library1|Mux0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~71_combout\ = (\Mux321~16_combout\ & (((\Mux327~15_combout\)))) # (!\Mux321~16_combout\ & ((\Mux327~15_combout\ & (\library1|Mux0~68_combout\)) # (!\Mux327~15_combout\ & ((\library1|Mux0~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~68_combout\,
	datac => \library1|Mux0~70_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~71_combout\);

-- Location: LCCOMB_X32_Y60_N16
\library1|Mux0~1211\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1211_combout\ = (!\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # ((\vga1|yPixel\(2) & !\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~1211_combout\);

-- Location: LCCOMB_X32_Y60_N10
\library1|Mux0~1212\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1212_combout\ = (\Mux324~15_combout\ & (((!\Mux322~16_combout\ & \library1|Mux0~1211_combout\)))) # (!\Mux324~15_combout\ & ((\library1|Mux0~1211_combout\) # ((!\vga1|yPixel\(2) & !\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~1211_combout\,
	combout => \library1|Mux0~1212_combout\);

-- Location: LCCOMB_X32_Y60_N12
\library1|Mux0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~73_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~71_combout\ & (\library1|Mux0~72_combout\)) # (!\library1|Mux0~71_combout\ & ((\library1|Mux0~1212_combout\))))) # (!\Mux321~16_combout\ & (((\library1|Mux0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~72_combout\,
	datac => \library1|Mux0~71_combout\,
	datad => \library1|Mux0~1212_combout\,
	combout => \library1|Mux0~73_combout\);

-- Location: LCCOMB_X32_Y61_N28
\library1|Mux0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~80_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(2) & (\vga1|yPixel\(1) & !\Mux324~15_combout\)) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~80_combout\);

-- Location: LCCOMB_X32_Y60_N20
\library1|Mux0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~81_combout\ = (\Mux324~15_combout\ & ((\Mux322~16_combout\ $ (!\Mux325~18_combout\)))) # (!\Mux324~15_combout\ & ((\Mux322~16_combout\) # ((\vga1|yPixel\(2) & \Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~81_combout\);

-- Location: LCCOMB_X32_Y60_N14
\library1|Mux0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~82_combout\ = (\Mux325~18_combout\) # ((\Mux324~15_combout\ & (\vga1|yPixel\(2) & !\Mux322~16_combout\)) # (!\Mux324~15_combout\ & ((\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~82_combout\);

-- Location: LCCOMB_X32_Y60_N24
\library1|Mux0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~83_combout\ = (\Mux321~16_combout\ & (((\Mux327~15_combout\)))) # (!\Mux321~16_combout\ & ((\Mux327~15_combout\ & (\library1|Mux0~81_combout\)) # (!\Mux327~15_combout\ & ((!\library1|Mux0~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~81_combout\,
	datac => \library1|Mux0~82_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~83_combout\);

-- Location: LCCOMB_X32_Y60_N4
\library1|Mux0~1207\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1207_combout\ = (\Mux324~15_combout\ & (!\library1|Mux0~83_combout\ & ((\vga1|xPixel\(1)) # (\library1|Mux0~80_combout\)))) # (!\Mux324~15_combout\ & ((\library1|Mux0~83_combout\) # ((\vga1|xPixel\(1) & \library1|Mux0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~80_combout\,
	datad => \library1|Mux0~83_combout\,
	combout => \library1|Mux0~1207_combout\);

-- Location: LCCOMB_X32_Y60_N22
\library1|Mux0~1208\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1208_combout\ = (\Mux321~16_combout\ & (!\Mux322~16_combout\ & (\library1|Mux0~1207_combout\))) # (!\Mux321~16_combout\ & (((\library1|Mux0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~1207_combout\,
	datad => \library1|Mux0~83_combout\,
	combout => \library1|Mux0~1208_combout\);

-- Location: LCCOMB_X41_Y60_N28
\library1|Mux0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~76_combout\ = (\Mux324~15_combout\ & ((\Mux327~15_combout\ & ((!\Mux325~18_combout\))) # (!\Mux327~15_combout\ & (\Mux322~16_combout\)))) # (!\Mux324~15_combout\ & (!\Mux322~16_combout\ & ((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~76_combout\);

-- Location: LCCOMB_X41_Y60_N8
\library1|Mux0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~74_combout\ = (\Mux322~16_combout\ & ((\Mux325~18_combout\ & (!\Mux327~15_combout\)) # (!\Mux325~18_combout\ & ((!\Mux324~15_combout\))))) # (!\Mux322~16_combout\ & (\Mux325~18_combout\ & ((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~74_combout\);

-- Location: LCCOMB_X41_Y60_N14
\library1|Mux0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~75_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1)) # ((\Mux321~16_combout\) # (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~75_combout\);

-- Location: LCCOMB_X41_Y60_N0
\library1|Mux0~1209\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1209_combout\ = (\Mux327~15_combout\ & (!\library1|Mux0~76_combout\ & ((\library1|Mux0~75_combout\) # (!\library1|Mux0~74_combout\)))) # (!\Mux327~15_combout\ & ((\library1|Mux0~75_combout\ & (!\library1|Mux0~74_combout\ & 
-- !\library1|Mux0~76_combout\)) # (!\library1|Mux0~75_combout\ & (\library1|Mux0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~75_combout\,
	datac => \library1|Mux0~74_combout\,
	datad => \library1|Mux0~76_combout\,
	combout => \library1|Mux0~1209_combout\);

-- Location: LCCOMB_X41_Y60_N22
\library1|Mux0~1210\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1210_combout\ = (\library1|Mux0~76_combout\ & (\library1|Mux0~74_combout\ & (\Mux321~16_combout\ $ (\library1|Mux0~1209_combout\)))) # (!\library1|Mux0~76_combout\ & (\Mux321~16_combout\ & ((\library1|Mux0~1209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~76_combout\,
	datac => \library1|Mux0~74_combout\,
	datad => \library1|Mux0~1209_combout\,
	combout => \library1|Mux0~1210_combout\);

-- Location: LCCOMB_X32_Y60_N2
\library1|Mux0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~77_combout\ = (\Mux325~18_combout\ & (!\Mux324~15_combout\ & (\Mux327~15_combout\ $ (!\vga1|yPixel\(2))))) # (!\Mux325~18_combout\ & (\vga1|yPixel\(2) $ (((!\Mux327~15_combout\ & \Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~77_combout\);

-- Location: LCCOMB_X32_Y60_N28
\library1|Mux0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~78_combout\ = (\Mux322~16_combout\ & (\Mux321~16_combout\ & \library1|Mux0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~16_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~77_combout\,
	combout => \library1|Mux0~78_combout\);

-- Location: LCCOMB_X32_Y60_N6
\library1|Mux0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~79_combout\ = (\Mux323~14_combout\ & ((\Mux320~4_combout\) # ((\library1|Mux0~1210_combout\)))) # (!\Mux323~14_combout\ & (!\Mux320~4_combout\ & ((\library1|Mux0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~1210_combout\,
	datad => \library1|Mux0~78_combout\,
	combout => \library1|Mux0~79_combout\);

-- Location: LCCOMB_X32_Y60_N18
\library1|Mux0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~84_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~79_combout\ & ((\library1|Mux0~1208_combout\))) # (!\library1|Mux0~79_combout\ & (\library1|Mux0~73_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~73_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~1208_combout\,
	datad => \library1|Mux0~79_combout\,
	combout => \library1|Mux0~84_combout\);

-- Location: LCCOMB_X39_Y56_N14
\library1|Mux0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~86_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (\vga1|yPixel\(1)))) # (!\vga1|xPixel\(1) & (\vga1|xPixel\(0) & \vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~86_combout\);

-- Location: LCCOMB_X39_Y56_N8
\library1|Mux0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~87_combout\ = (\Mux324~15_combout\ & ((\vga1|xPixel\(1)) # (!\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~87_combout\);

-- Location: LCCOMB_X39_Y56_N2
\library1|Mux0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~88_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & \Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~88_combout\);

-- Location: LCCOMB_X39_Y56_N16
\library1|Mux0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~89_combout\ = (\vga1|xPixel\(1) & ((\Mux324~15_combout\ $ (!\Mux325~18_combout\)))) # (!\vga1|xPixel\(1) & (\library1|Mux0~88_combout\ & ((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~88_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~89_combout\);

-- Location: LCCOMB_X39_Y56_N18
\library1|Mux0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~90_combout\ = (\library1|Mux0~87_combout\ & (\vga1|yPixel\(2) $ (((\library1|Mux0~86_combout\ & !\library1|Mux0~89_combout\))))) # (!\library1|Mux0~87_combout\ & (((\library1|Mux0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~86_combout\,
	datac => \library1|Mux0~87_combout\,
	datad => \library1|Mux0~89_combout\,
	combout => \library1|Mux0~90_combout\);

-- Location: LCCOMB_X39_Y56_N4
\library1|Mux0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~85_combout\ = (!\Mux322~16_combout\ & (!\Mux323~14_combout\ & (!\Mux320~4_combout\ & \Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux320~4_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~85_combout\);

-- Location: LCCOMB_X40_Y57_N28
\library1|Mux0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~91_combout\ = (\Mux325~18_combout\) # ((\vga1|yPixel\(1) & (\vga1|yPixel\(2) & \Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~91_combout\);

-- Location: LCCOMB_X40_Y57_N22
\library1|Mux0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~92_combout\ = (\vga1|xPixel\(1) & ((\Mux324~15_combout\) # ((\vga1|xPixel\(0))))) # (!\vga1|xPixel\(1) & (!\library1|Mux0~91_combout\ & ((\Mux324~15_combout\) # (!\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \library1|Mux0~91_combout\,
	combout => \library1|Mux0~92_combout\);

-- Location: LCCOMB_X39_Y56_N20
\library1|Mux0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~94_combout\ = (\library1|Mux0~92_combout\) # ((\Mux325~18_combout\ & ((\library1|Mux0~93_combout\) # (!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~93_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~92_combout\,
	combout => \library1|Mux0~94_combout\);

-- Location: LCCOMB_X39_Y56_N6
\library1|Mux0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~95_combout\ = (\library1|Mux0~85_combout\ & ((\Mux327~15_combout\ & (\library1|Mux0~90_combout\)) # (!\Mux327~15_combout\ & ((\library1|Mux0~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~90_combout\,
	datac => \library1|Mux0~85_combout\,
	datad => \library1|Mux0~94_combout\,
	combout => \library1|Mux0~95_combout\);

-- Location: LCCOMB_X35_Y63_N24
\library1|Mux0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~97_combout\ = (\vga1|yPixel\(2) & (\Mux325~18_combout\ & \Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~97_combout\);

-- Location: LCCOMB_X39_Y58_N28
\library1|Mux0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~104_combout\ = (\vga1|yPixel\(1) & (\vga1|yPixel\(2) & (\Mux324~15_combout\ $ (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~104_combout\);

-- Location: LCCOMB_X40_Y62_N16
\library1|Mux0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~105_combout\ = (\Mux324~15_combout\ & ((\Mux323~14_combout\) # (\vga1|yPixel\(2) $ (\vga1|yPixel\(1))))) # (!\Mux324~15_combout\ & (\vga1|yPixel\(2) & (\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~105_combout\);

-- Location: LCCOMB_X39_Y62_N16
\library1|Mux0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~106_combout\ = (\Mux327~15_combout\ & ((\Mux322~16_combout\ & (\library1|Mux0~104_combout\)) # (!\Mux322~16_combout\ & ((\library1|Mux0~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~104_combout\,
	datad => \library1|Mux0~105_combout\,
	combout => \library1|Mux0~106_combout\);

-- Location: LCCOMB_X42_Y62_N8
\library1|Mux0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~109_combout\ = (!\vga1|yPixel\(1) & (\Mux322~16_combout\ & ((\vga1|xPixel\(0)) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~109_combout\);

-- Location: LCCOMB_X39_Y62_N14
\library1|Mux0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~107_combout\ = (\Mux322~16_combout\ & ((!\Mux324~15_combout\) # (!\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~107_combout\);

-- Location: LCCOMB_X39_Y62_N0
\library1|Mux0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~108_combout\ = (\vga1|yPixel\(2) & (\Mux324~15_combout\)) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\ & ((\library1|Mux0~107_combout\) # (\Mux323~14_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~107_combout\ $ 
-- (!\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~107_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~108_combout\);

-- Location: LCCOMB_X39_Y62_N10
\library1|Mux0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~110_combout\ = (\vga1|yPixel\(2) & ((\Mux323~14_combout\ & ((\library1|Mux0~109_combout\) # (\library1|Mux0~108_combout\))) # (!\Mux323~14_combout\ & ((!\library1|Mux0~108_combout\) # (!\library1|Mux0~109_combout\))))) # (!\vga1|yPixel\(2) 
-- & (((\library1|Mux0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~109_combout\,
	datad => \library1|Mux0~108_combout\,
	combout => \library1|Mux0~110_combout\);

-- Location: LCCOMB_X39_Y62_N8
\library1|Mux0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~111_combout\ = (\library1|Mux0~106_combout\) # ((!\Mux327~15_combout\ & \library1|Mux0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \library1|Mux0~106_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~110_combout\,
	combout => \library1|Mux0~111_combout\);

-- Location: LCCOMB_X39_Y62_N26
\library1|Mux0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~115_combout\ = (\Mux323~14_combout\ & (!\Mux324~15_combout\ & ((!\Mux322~16_combout\) # (!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~115_combout\);

-- Location: LCCOMB_X39_Y62_N20
\library1|Mux0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~114_combout\ = (\Mux327~15_combout\ & (!\Mux323~14_combout\ & (\Mux322~16_combout\ $ (!\Mux324~15_combout\)))) # (!\Mux327~15_combout\ & (\Mux322~16_combout\ & (!\Mux324~15_combout\ & \Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~114_combout\);

-- Location: LCCOMB_X39_Y62_N28
\library1|Mux0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~116_combout\ = (\vga1|yPixel\(1) & (\vga1|yPixel\(2))) # (!\vga1|yPixel\(1) & ((\vga1|yPixel\(2) & ((\library1|Mux0~114_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~115_combout\,
	datad => \library1|Mux0~114_combout\,
	combout => \library1|Mux0~116_combout\);

-- Location: LCCOMB_X40_Y62_N22
\library1|Mux0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~117_combout\ = (\Mux322~16_combout\ & ((\vga1|xPixel\(0)) # (!\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~117_combout\);

-- Location: LCCOMB_X39_Y62_N30
\library1|Mux0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~118_combout\ = (\Mux327~15_combout\ & ((\Mux323~14_combout\) # ((\library1|Mux0~117_combout\)))) # (!\Mux327~15_combout\ & (!\Mux324~15_combout\ & ((!\library1|Mux0~117_combout\) # (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~117_combout\,
	combout => \library1|Mux0~118_combout\);

-- Location: LCCOMB_X40_Y61_N24
\library1|Mux0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~112_combout\ = (\Mux322~16_combout\ & (((\vga1|xPixel\(0) & \vga1|yPixel\(0))) # (!\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~112_combout\);

-- Location: LCCOMB_X39_Y62_N18
\library1|Mux0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~113_combout\ = (\Mux324~15_combout\ & (\Mux327~15_combout\ & (\library1|Mux0~112_combout\ & !\Mux323~14_combout\))) # (!\Mux324~15_combout\ & (\Mux323~14_combout\ & (\Mux327~15_combout\ $ (\library1|Mux0~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~112_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~113_combout\);

-- Location: LCCOMB_X39_Y62_N24
\library1|Mux0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~119_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~116_combout\ & (!\library1|Mux0~118_combout\)) # (!\library1|Mux0~116_combout\ & ((\library1|Mux0~113_combout\))))) # (!\vga1|yPixel\(1) & (\library1|Mux0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~116_combout\,
	datac => \library1|Mux0~118_combout\,
	datad => \library1|Mux0~113_combout\,
	combout => \library1|Mux0~119_combout\);

-- Location: LCCOMB_X39_Y62_N6
\library1|Mux0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~120_combout\ = (\vga1|xPixel\(1) & (\Mux325~18_combout\)) # (!\vga1|xPixel\(1) & ((\Mux325~18_combout\ & (\library1|Mux0~111_combout\)) # (!\Mux325~18_combout\ & ((\library1|Mux0~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~111_combout\,
	datad => \library1|Mux0~119_combout\,
	combout => \library1|Mux0~120_combout\);

-- Location: LCCOMB_X39_Y59_N16
\library1|Mux0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~126_combout\ = (\Mux322~16_combout\) # ((\vga1|yPixel\(2) & ((\vga1|yPixel\(1)) # (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~126_combout\);

-- Location: LCCOMB_X41_Y59_N26
\library1|Mux0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~121_combout\ = (\vga1|yPixel\(2) & (\Mux322~16_combout\ & ((\vga1|xPixel\(0)) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~121_combout\);

-- Location: LCCOMB_X41_Y59_N8
\library1|Mux0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~124_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & !\Mux322~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~124_combout\);

-- Location: LCCOMB_X41_Y59_N20
\library1|Mux0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~122_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((\vga1|xPixel\(0)) # (!\Mux322~16_combout\))) # (!\vga1|yPixel\(1) & ((\Mux322~16_combout\))))) # (!\vga1|yPixel\(2) & (((\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~122_combout\);

-- Location: LCCOMB_X41_Y59_N2
\library1|Mux0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~123_combout\ = (\Mux323~14_combout\ & ((\library1|Mux0~93_combout\) # ((\Mux327~15_combout\)))) # (!\Mux323~14_combout\ & (((!\Mux327~15_combout\ & !\library1|Mux0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \library1|Mux0~93_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~122_combout\,
	combout => \library1|Mux0~123_combout\);

-- Location: LCCOMB_X41_Y59_N6
\library1|Mux0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~125_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~123_combout\ & ((!\library1|Mux0~124_combout\))) # (!\library1|Mux0~123_combout\ & (\library1|Mux0~121_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~121_combout\,
	datab => \library1|Mux0~124_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~123_combout\,
	combout => \library1|Mux0~125_combout\);

-- Location: LCCOMB_X39_Y62_N4
\library1|Mux0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~127_combout\ = (\Mux324~15_combout\ & (((\library1|Mux0~125_combout\)))) # (!\Mux324~15_combout\ & ((\Mux323~14_combout\) # ((\library1|Mux0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~126_combout\,
	datad => \library1|Mux0~125_combout\,
	combout => \library1|Mux0~127_combout\);

-- Location: LCCOMB_X41_Y60_N30
\library1|Mux0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~101_combout\ = (\vga1|yPixel\(2)) # ((\vga1|yPixel\(1) & !\Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~101_combout\);

-- Location: LCCOMB_X41_Y60_N4
\library1|Mux0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~102_combout\ = (\Mux324~15_combout\ & (\library1|Mux0~101_combout\ & ((!\Mux327~15_combout\)))) # (!\Mux324~15_combout\ & ((\Mux322~16_combout\ & ((!\Mux327~15_combout\))) # (!\Mux322~16_combout\ & (!\library1|Mux0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~101_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~102_combout\);

-- Location: LCCOMB_X42_Y60_N0
\library1|Mux0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~98_combout\ = \vga1|yPixel\(2) $ (((!\vga1|xPixel\(0) & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(0),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~98_combout\);

-- Location: LCCOMB_X41_Y60_N2
\library1|Mux0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~99_combout\ = (\Mux327~15_combout\ & ((\vga1|xPixel\(0) $ (!\library1|Mux0~98_combout\)) # (!\Mux324~15_combout\))) # (!\Mux327~15_combout\ & (\vga1|xPixel\(0) & ((!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \library1|Mux0~98_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~99_combout\);

-- Location: LCCOMB_X41_Y60_N20
\library1|Mux0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~100_combout\ = (!\Mux323~14_combout\ & (\Mux324~15_combout\ $ (((\Mux322~16_combout\ & \library1|Mux0~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~99_combout\,
	combout => \library1|Mux0~100_combout\);

-- Location: LCCOMB_X41_Y60_N6
\library1|Mux0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~103_combout\ = (\library1|Mux0~100_combout\) # ((\Mux323~14_combout\ & \library1|Mux0~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datac => \library1|Mux0~102_combout\,
	datad => \library1|Mux0~100_combout\,
	combout => \library1|Mux0~103_combout\);

-- Location: LCCOMB_X39_Y62_N2
\library1|Mux0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~128_combout\ = (\library1|Mux0~120_combout\ & (((\library1|Mux0~127_combout\)) # (!\vga1|xPixel\(1)))) # (!\library1|Mux0~120_combout\ & (\vga1|xPixel\(1) & ((\library1|Mux0~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~120_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~127_combout\,
	datad => \library1|Mux0~103_combout\,
	combout => \library1|Mux0~128_combout\);

-- Location: LCCOMB_X39_Y62_N12
\library1|Mux0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~129_combout\ = (\Mux320~4_combout\ & (\library1|Mux0~97_combout\ & (\library1|Mux0~96_combout\))) # (!\Mux320~4_combout\ & (((\library1|Mux0~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~97_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~96_combout\,
	datad => \library1|Mux0~128_combout\,
	combout => \library1|Mux0~129_combout\);

-- Location: LCCOMB_X39_Y62_N22
\library1|Mux0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~130_combout\ = (\library1|Mux0~95_combout\) # ((!\Mux321~16_combout\ & \library1|Mux0~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~95_combout\,
	datad => \library1|Mux0~129_combout\,
	combout => \library1|Mux0~130_combout\);

-- Location: LCCOMB_X36_Y54_N30
\library1|Mux0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~158_combout\ = (\Mux320~4_combout\) # ((\Mux324~15_combout\ & !\Mux325~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~158_combout\);

-- Location: LCCOMB_X36_Y54_N12
\library1|Mux0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~159_combout\ = (\Mux320~4_combout\ & (!\vga1|xPixel\(1) & (!\Mux324~15_combout\ & !\Mux325~18_combout\))) # (!\Mux320~4_combout\ & (((\Mux324~15_combout\ & \Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~159_combout\);

-- Location: LCCOMB_X36_Y54_N18
\library1|Mux0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~160_combout\ = (\library1|Mux0~159_combout\ & ((\vga1|yPixel\(2) & ((!\library1|Mux0~158_combout\))) # (!\vga1|yPixel\(2) & (!\Mux323~14_combout\)))) # (!\library1|Mux0~159_combout\ & (\Mux323~14_combout\ & 
-- ((!\library1|Mux0~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~158_combout\,
	datad => \library1|Mux0~159_combout\,
	combout => \library1|Mux0~160_combout\);

-- Location: LCCOMB_X36_Y54_N26
\library1|Mux0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~138_combout\ = (\vga1|yPixel\(1) & (((\Mux325~18_combout\)))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(1) & ((\Mux325~18_combout\) # (!\Mux320~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~138_combout\);

-- Location: LCCOMB_X36_Y54_N8
\library1|Mux0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~139_combout\ = (\Mux320~4_combout\ & ((\Mux323~14_combout\) # ((!\Mux325~18_combout\ & !\library1|Mux0~138_combout\)))) # (!\Mux320~4_combout\ & (\Mux325~18_combout\ $ (((\Mux323~14_combout\) # (!\library1|Mux0~138_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~138_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~139_combout\);

-- Location: LCCOMB_X36_Y54_N22
\library1|Mux0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~136_combout\ = (\vga1|xPixel\(1) & (\Mux320~4_combout\ $ (((!\vga1|yPixel\(1) & !\Mux323~14_combout\))))) # (!\vga1|xPixel\(1) & (((\vga1|yPixel\(1) & !\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~136_combout\);

-- Location: LCCOMB_X36_Y54_N24
\library1|Mux0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~135_combout\ = (\Mux320~4_combout\) # ((\Mux323~14_combout\) # ((!\vga1|xPixel\(1) & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~135_combout\);

-- Location: LCCOMB_X36_Y54_N20
\library1|Mux0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~137_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~135_combout\) # ((!\vga1|xPixel\(0) & !\library1|Mux0~136_combout\)))) # (!\Mux325~18_combout\ & (((!\library1|Mux0~136_combout\ & \library1|Mux0~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~136_combout\,
	datad => \library1|Mux0~135_combout\,
	combout => \library1|Mux0~137_combout\);

-- Location: LCCOMB_X36_Y54_N14
\library1|Mux0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~140_combout\ = (\Mux324~15_combout\ & ((\library1|Mux0~137_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datac => \library1|Mux0~139_combout\,
	datad => \library1|Mux0~137_combout\,
	combout => \library1|Mux0~140_combout\);

-- Location: LCCOMB_X36_Y54_N4
\library1|Mux0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~133_combout\ = (\Mux320~4_combout\ & (\Mux325~18_combout\ & ((!\Mux323~14_combout\) # (!\vga1|xPixel\(1))))) # (!\Mux320~4_combout\ & (\Mux325~18_combout\ $ (((\vga1|xPixel\(1) & !\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~133_combout\);

-- Location: LCCOMB_X36_Y54_N28
\library1|Mux0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~131_combout\ = (\vga1|xPixel\(0) & ((\vga1|xPixel\(1)) # (\vga1|yPixel\(1) $ (\Mux325~18_combout\)))) # (!\vga1|xPixel\(0) & ((\vga1|yPixel\(1) & ((!\Mux325~18_combout\))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~131_combout\);

-- Location: LCCOMB_X36_Y54_N10
\library1|Mux0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~132_combout\ = (!\Mux320~4_combout\ & ((\Mux323~14_combout\ & (\Mux325~18_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~131_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~131_combout\,
	combout => \library1|Mux0~132_combout\);

-- Location: LCCOMB_X36_Y54_N2
\library1|Mux0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~134_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~132_combout\) # ((\Mux320~4_combout\ & \library1|Mux0~133_combout\)))) # (!\vga1|yPixel\(2) & (!\Mux320~4_combout\ & (\library1|Mux0~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~133_combout\,
	datad => \library1|Mux0~132_combout\,
	combout => \library1|Mux0~134_combout\);

-- Location: LCCOMB_X36_Y54_N0
\library1|Mux0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~141_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(2) & ((\library1|Mux0~134_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~140_combout\)))) # (!\Mux324~15_combout\ & ((\vga1|yPixel\(2) & (\library1|Mux0~140_combout\)) # 
-- (!\vga1|yPixel\(2) & ((!\library1|Mux0~134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~140_combout\,
	datad => \library1|Mux0~134_combout\,
	combout => \library1|Mux0~141_combout\);

-- Location: LCCOMB_X39_Y58_N10
\library1|Mux0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~142_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(2)) # ((!\Mux323~14_combout\) # (!\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (((\Mux324~15_combout\) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~142_combout\);

-- Location: LCCOMB_X36_Y58_N8
\library1|Mux0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~143_combout\ = (\Mux320~4_combout\) # (\library1|Mux0~142_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datad => \library1|Mux0~142_combout\,
	combout => \library1|Mux0~143_combout\);

-- Location: LCCOMB_X36_Y58_N28
\library1|Mux0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~155_combout\ = (\Mux324~15_combout\ & (((\vga1|xPixel\(1)) # (!\Mux320~4_combout\)) # (!\vga1|yPixel\(2)))) # (!\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # ((\Mux320~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~155_combout\);

-- Location: LCCOMB_X39_Y58_N24
\library1|Mux0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~144_combout\ = (\Mux324~15_combout\ & (\Mux320~4_combout\ & ((\vga1|yPixel\(2)) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~144_combout\);

-- Location: LCCOMB_X36_Y58_N30
\library1|Mux0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~152_combout\ = (\Mux320~4_combout\ & (((\Mux324~15_combout\)))) # (!\Mux320~4_combout\ & (\vga1|yPixel\(2) & ((!\Mux324~15_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux320~4_combout\,
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~152_combout\);

-- Location: LCCOMB_X36_Y56_N4
\library1|Mux0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~150_combout\ = (\vga1|xPixel\(1) & (((!\Mux64~0_combout\) # (!\Mux320~3_combout\)) # (!\Mux320~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~2_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux320~3_combout\,
	datad => \Mux64~0_combout\,
	combout => \library1|Mux0~150_combout\);

-- Location: LCCOMB_X36_Y58_N0
\library1|Mux0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~153_combout\ = (\library1|Mux0~152_combout\ & (((\library1|Mux0~150_combout\ & \library1|Mux0~151_combout\)) # (!\vga1|xPixel\(1)))) # (!\library1|Mux0~152_combout\ & (((\library1|Mux0~150_combout\ & \library1|Mux0~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~152_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~150_combout\,
	datad => \library1|Mux0~151_combout\,
	combout => \library1|Mux0~153_combout\);

-- Location: LCCOMB_X40_Y59_N12
\library1|Mux0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~147_combout\ = (!\vga1|yPixel\(2) & \vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|yPixel\(2),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~147_combout\);

-- Location: LCCOMB_X39_Y54_N8
\library1|Mux0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~148_combout\ = (!\Mux320~4_combout\ & (\library1|Mux0~147_combout\ & ((\vga1|xPixel\(0)) # (!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux320~4_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~147_combout\,
	combout => \library1|Mux0~148_combout\);

-- Location: LCCOMB_X39_Y54_N28
\library1|Mux0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~145_combout\ = (\vga1|xPixel\(1)) # ((\vga1|yPixel\(1) & ((\vga1|xPixel\(0)) # (!\Mux324~15_combout\))) # (!\vga1|yPixel\(1) & ((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~145_combout\);

-- Location: LCCOMB_X39_Y54_N2
\library1|Mux0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~146_combout\ = (\vga1|yPixel\(2) & ((\Mux320~4_combout\ & (!\Mux324~15_combout\)) # (!\Mux320~4_combout\ & ((\library1|Mux0~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux320~4_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~145_combout\,
	combout => \library1|Mux0~146_combout\);

-- Location: LCCOMB_X39_Y54_N14
\library1|Mux0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~149_combout\ = (\library1|Mux0~148_combout\) # (\library1|Mux0~146_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \library1|Mux0~148_combout\,
	datad => \library1|Mux0~146_combout\,
	combout => \library1|Mux0~149_combout\);

-- Location: LCCOMB_X36_Y58_N6
\library1|Mux0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~154_combout\ = (\Mux323~14_combout\ & (((\Mux325~18_combout\)))) # (!\Mux323~14_combout\ & ((\Mux325~18_combout\ & ((\library1|Mux0~149_combout\))) # (!\Mux325~18_combout\ & (!\library1|Mux0~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \library1|Mux0~153_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~149_combout\,
	combout => \library1|Mux0~154_combout\);

-- Location: LCCOMB_X36_Y58_N10
\library1|Mux0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~156_combout\ = (\Mux323~14_combout\ & ((\library1|Mux0~154_combout\ & (!\library1|Mux0~155_combout\)) # (!\library1|Mux0~154_combout\ & ((\library1|Mux0~144_combout\))))) # (!\Mux323~14_combout\ & (((\library1|Mux0~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \library1|Mux0~155_combout\,
	datac => \library1|Mux0~144_combout\,
	datad => \library1|Mux0~154_combout\,
	combout => \library1|Mux0~156_combout\);

-- Location: LCCOMB_X36_Y58_N24
\library1|Mux0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~157_combout\ = (\Mux327~15_combout\ & (\Mux322~16_combout\)) # (!\Mux327~15_combout\ & ((\Mux322~16_combout\ & (!\library1|Mux0~143_combout\)) # (!\Mux322~16_combout\ & ((\library1|Mux0~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~143_combout\,
	datad => \library1|Mux0~156_combout\,
	combout => \library1|Mux0~157_combout\);

-- Location: LCCOMB_X36_Y58_N26
\library1|Mux0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~161_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~157_combout\ & (\library1|Mux0~160_combout\)) # (!\library1|Mux0~157_combout\ & ((\library1|Mux0~141_combout\))))) # (!\Mux327~15_combout\ & (((\library1|Mux0~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~160_combout\,
	datac => \library1|Mux0~141_combout\,
	datad => \library1|Mux0~157_combout\,
	combout => \library1|Mux0~161_combout\);

-- Location: LCCOMB_X35_Y59_N18
\library1|Mux0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~163_combout\ = (\Mux325~18_combout\ & (!\Mux327~15_combout\ & ((\Mux323~14_combout\) # (!\Mux322~16_combout\)))) # (!\Mux325~18_combout\ & (\Mux322~16_combout\ & (!\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~163_combout\);

-- Location: LCCOMB_X35_Y59_N12
\library1|Mux0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~162_combout\ = (\Mux322~16_combout\ & (\Mux323~14_combout\ $ (((\Mux327~15_combout\) # (!\Mux325~18_combout\))))) # (!\Mux322~16_combout\ & ((\Mux325~18_combout\) # ((\Mux323~14_combout\ & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~162_combout\);

-- Location: LCCOMB_X35_Y59_N20
\library1|Mux0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~164_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~162_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~163_combout\,
	datad => \library1|Mux0~162_combout\,
	combout => \library1|Mux0~164_combout\);

-- Location: LCCOMB_X38_Y61_N10
\library1|Mux0~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~197_combout\ = (\vga1|xPixel\(1) & !\vga1|yPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	combout => \library1|Mux0~197_combout\);

-- Location: LCCOMB_X38_Y61_N4
\library1|Mux0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~198_combout\ = (\vga1|yPixel\(2) & (((\Mux327~15_combout\)))) # (!\vga1|yPixel\(2) & (\Mux322~16_combout\ & ((\library1|Mux0~197_combout\) # (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~197_combout\,
	datab => \Mux322~16_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~198_combout\);

-- Location: LCCOMB_X38_Y61_N28
\library1|Mux0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~196_combout\ = \Mux322~16_combout\ $ (\Mux327~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux322~16_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~196_combout\);

-- Location: LCCOMB_X38_Y61_N18
\library1|Mux0~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~199_combout\ = (\Mux323~14_combout\ & ((\library1|Mux0~196_combout\ & (!\Mux325~18_combout\)) # (!\library1|Mux0~196_combout\ & ((\library1|Mux0~198_combout\))))) # (!\Mux323~14_combout\ & ((\Mux325~18_combout\ $ 
-- (\library1|Mux0~196_combout\)) # (!\library1|Mux0~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~198_combout\,
	datad => \library1|Mux0~196_combout\,
	combout => \library1|Mux0~199_combout\);

-- Location: LCCOMB_X38_Y58_N24
\library1|Mux0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~183_combout\ = (\vga1|xPixel\(1) & (\Mux325~18_combout\ $ (((!\Mux322~16_combout\ & !\Mux323~14_combout\))))) # (!\vga1|xPixel\(1) & ((\Mux325~18_combout\) # ((\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~183_combout\);

-- Location: LCCOMB_X38_Y58_N4
\library1|Mux0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~187_combout\ = (\Mux325~18_combout\ & (((\Mux322~16_combout\)))) # (!\Mux325~18_combout\ & (\Mux323~14_combout\ $ (((\vga1|xPixel\(1) & !\Mux322~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~187_combout\);

-- Location: LCCOMB_X36_Y58_N18
\library1|Mux0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~184_combout\ = (\Mux323~14_combout\ & ((\Mux325~18_combout\ & (!\vga1|xPixel\(1))) # (!\Mux325~18_combout\ & ((\Mux322~16_combout\))))) # (!\Mux323~14_combout\ & (\Mux322~16_combout\ & ((\vga1|xPixel\(1)) # (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux322~16_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~184_combout\);

-- Location: LCCOMB_X38_Y58_N22
\library1|Mux0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~185_combout\ = (\vga1|xPixel\(1) & (((\Mux322~16_combout\ & !\Mux323~14_combout\)))) # (!\vga1|xPixel\(1) & (\Mux323~14_combout\ & ((\Mux325~18_combout\) # (!\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~185_combout\);

-- Location: LCCOMB_X36_Y58_N12
\library1|Mux0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~186_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~184_combout\) # ((\Mux327~15_combout\)))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~185_combout\ & !\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~184_combout\,
	datac => \library1|Mux0~185_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~186_combout\);

-- Location: LCCOMB_X36_Y58_N14
\library1|Mux0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~188_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~186_combout\ & ((!\library1|Mux0~187_combout\))) # (!\library1|Mux0~186_combout\ & (!\library1|Mux0~183_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~183_combout\,
	datac => \library1|Mux0~187_combout\,
	datad => \library1|Mux0~186_combout\,
	combout => \library1|Mux0~188_combout\);

-- Location: LCCOMB_X36_Y57_N14
\library1|Mux0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~190_combout\ = (\vga1|xPixel\(1) & (((\Mux327~15_combout\ & \Mux325~18_combout\)))) # (!\vga1|xPixel\(1) & (\vga1|yPixel\(1) & ((!\Mux325~18_combout\) # (!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~190_combout\);

-- Location: LCCOMB_X36_Y57_N16
\library1|Mux0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~189_combout\ = (!\vga1|xPixel\(1) & ((\Mux325~18_combout\) # ((\vga1|yPixel\(1) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~189_combout\);

-- Location: LCCOMB_X36_Y57_N30
\library1|Mux0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~192_combout\ = (\library1|Mux0~190_combout\ & ((\library1|Mux0~189_combout\ & ((\Mux327~15_combout\))) # (!\library1|Mux0~189_combout\ & (!\Mux322~16_combout\)))) # (!\library1|Mux0~190_combout\ & (\library1|Mux0~189_combout\ $ 
-- (((\Mux322~16_combout\ & \Mux327~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~190_combout\,
	datad => \library1|Mux0~189_combout\,
	combout => \library1|Mux0~192_combout\);

-- Location: LCCOMB_X36_Y57_N28
\library1|Mux0~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~191_combout\ = (\Mux322~16_combout\ & (!\Mux327~15_combout\ & (!\library1|Mux0~190_combout\ & !\library1|Mux0~189_combout\))) # (!\Mux322~16_combout\ & (\Mux327~15_combout\ & (\library1|Mux0~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~190_combout\,
	datad => \library1|Mux0~189_combout\,
	combout => \library1|Mux0~191_combout\);

-- Location: LCCOMB_X36_Y57_N0
\library1|Mux0~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~193_combout\ = (\Mux323~14_combout\ & (\library1|Mux0~192_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~192_combout\,
	datad => \library1|Mux0~191_combout\,
	combout => \library1|Mux0~193_combout\);

-- Location: LCCOMB_X36_Y58_N4
\library1|Mux0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~194_combout\ = (\vga1|yPixel\(2) & (\library1|Mux0~188_combout\)) # (!\vga1|yPixel\(2) & ((\library1|Mux0~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~188_combout\,
	datad => \library1|Mux0~193_combout\,
	combout => \library1|Mux0~194_combout\);

-- Location: LCCOMB_X36_Y57_N6
\library1|Mux0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~179_combout\ = (\Mux322~16_combout\ & (\Mux327~15_combout\ & ((\vga1|yPixel\(1)) # (\Mux325~18_combout\)))) # (!\Mux322~16_combout\ & (\vga1|yPixel\(1) & (\Mux327~15_combout\ $ (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~179_combout\);

-- Location: LCCOMB_X36_Y57_N4
\library1|Mux0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~180_combout\ = (\Mux322~16_combout\ & ((\vga1|xPixel\(0)) # (\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \Mux322~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~180_combout\);

-- Location: LCCOMB_X36_Y57_N20
\library1|Mux0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~178_combout\ = (\Mux327~15_combout\ & (!\Mux325~18_combout\ & ((\Mux322~16_combout\) # (\vga1|yPixel\(1))))) # (!\Mux327~15_combout\ & (!\Mux322~16_combout\ & (!\vga1|yPixel\(1) & \Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~178_combout\);

-- Location: LCCOMB_X36_Y57_N2
\library1|Mux0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~181_combout\ = (\library1|Mux0~179_combout\ & (\library1|Mux0~180_combout\ $ (((!\Mux323~14_combout\ & \library1|Mux0~178_combout\))))) # (!\library1|Mux0~179_combout\ & ((\Mux323~14_combout\) # ((!\library1|Mux0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~179_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~180_combout\,
	datad => \library1|Mux0~178_combout\,
	combout => \library1|Mux0~181_combout\);

-- Location: LCCOMB_X33_Y58_N0
\library1|Mux0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~165_combout\ = (\vga1|yPixel\(1) & ((!\Mux327~15_combout\))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~165_combout\);

-- Location: LCCOMB_X33_Y58_N2
\library1|Mux0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~166_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~165_combout\) # (!\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~165_combout\,
	combout => \library1|Mux0~166_combout\);

-- Location: LCCOMB_X33_Y58_N4
\library1|Mux0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~167_combout\ = (\Mux327~15_combout\ & (((\Mux323~14_combout\) # (!\library1|Mux0~166_combout\)))) # (!\Mux327~15_combout\ & ((\Mux325~18_combout\ & ((\Mux323~14_combout\) # (\library1|Mux0~166_combout\))) # (!\Mux325~18_combout\ & 
-- (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux327~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~166_combout\,
	combout => \library1|Mux0~167_combout\);

-- Location: LCCOMB_X41_Y58_N26
\library1|Mux0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~170_combout\ = (\Mux322~16_combout\ & (!\Mux327~15_combout\ & ((\vga1|xPixel\(0)) # (\Mux323~14_combout\)))) # (!\Mux322~16_combout\ & ((\Mux323~14_combout\ $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~170_combout\);

-- Location: LCCOMB_X41_Y58_N18
\library1|Mux0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~168_combout\ = (\Mux322~16_combout\ & ((\Mux323~14_combout\ & ((!\Mux327~15_combout\))) # (!\Mux323~14_combout\ & (\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~168_combout\);

-- Location: LCCOMB_X41_Y58_N0
\library1|Mux0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~169_combout\ = (\vga1|yPixel\(1) & (\Mux325~18_combout\)) # (!\vga1|yPixel\(1) & ((\Mux325~18_combout\ & (!\Mux327~15_combout\ & \library1|Mux0~168_combout\)) # (!\Mux325~18_combout\ & (\Mux327~15_combout\ & !\library1|Mux0~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~168_combout\,
	combout => \library1|Mux0~169_combout\);

-- Location: LCCOMB_X41_Y58_N4
\library1|Mux0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~171_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~169_combout\ & ((\library1|Mux0~170_combout\))) # (!\library1|Mux0~169_combout\ & (!\library1|Mux0~96_combout\)))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~96_combout\,
	datac => \library1|Mux0~170_combout\,
	datad => \library1|Mux0~169_combout\,
	combout => \library1|Mux0~171_combout\);

-- Location: LCCOMB_X41_Y58_N20
\library1|Mux0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~173_combout\ = (\vga1|xPixel\(0) & ((\Mux325~18_combout\ $ (!\Mux323~14_combout\)))) # (!\vga1|xPixel\(0) & (\Mux325~18_combout\ & ((\vga1|yPixel\(1)) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~173_combout\);

-- Location: LCCOMB_X41_Y58_N6
\library1|Mux0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~172_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(1)) # ((\Mux323~14_combout\) # (!\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~172_combout\);

-- Location: LCCOMB_X41_Y58_N14
\library1|Mux0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~174_combout\ = (\Mux322~16_combout\ & ((\Mux327~15_combout\ & (!\library1|Mux0~173_combout\)) # (!\Mux327~15_combout\ & ((\library1|Mux0~172_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~173_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~172_combout\,
	combout => \library1|Mux0~174_combout\);

-- Location: LCCOMB_X41_Y58_N12
\library1|Mux0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~176_combout\ = (\library1|Mux0~174_combout\) # ((\Mux327~15_combout\ & (!\Mux322~16_combout\ & \library1|Mux0~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~174_combout\,
	datad => \library1|Mux0~175_combout\,
	combout => \library1|Mux0~176_combout\);

-- Location: LCCOMB_X41_Y58_N2
\library1|Mux0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~177_combout\ = (\vga1|xPixel\(1) & (\vga1|yPixel\(2))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(2) & (\library1|Mux0~171_combout\)) # (!\vga1|yPixel\(2) & ((\library1|Mux0~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~171_combout\,
	datad => \library1|Mux0~176_combout\,
	combout => \library1|Mux0~177_combout\);

-- Location: LCCOMB_X36_Y58_N16
\library1|Mux0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~182_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~177_combout\ & (\library1|Mux0~181_combout\)) # (!\library1|Mux0~177_combout\ & ((\library1|Mux0~167_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~181_combout\,
	datac => \library1|Mux0~167_combout\,
	datad => \library1|Mux0~177_combout\,
	combout => \library1|Mux0~182_combout\);

-- Location: LCCOMB_X36_Y58_N2
\library1|Mux0~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~195_combout\ = (\Mux324~15_combout\ & ((\Mux320~4_combout\) # ((\library1|Mux0~182_combout\)))) # (!\Mux324~15_combout\ & (!\Mux320~4_combout\ & (\library1|Mux0~194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~194_combout\,
	datad => \library1|Mux0~182_combout\,
	combout => \library1|Mux0~195_combout\);

-- Location: LCCOMB_X36_Y58_N20
\library1|Mux0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~200_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~195_combout\ & ((\library1|Mux0~199_combout\))) # (!\library1|Mux0~195_combout\ & (!\library1|Mux0~164_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~164_combout\,
	datac => \library1|Mux0~199_combout\,
	datad => \library1|Mux0~195_combout\,
	combout => \library1|Mux0~200_combout\);

-- Location: LCCOMB_X36_Y58_N22
\library1|Mux0~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~201_combout\ = (\Mux321~16_combout\ & (\library1|Mux0~161_combout\)) # (!\Mux321~16_combout\ & ((\library1|Mux0~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~161_combout\,
	datad => \library1|Mux0~200_combout\,
	combout => \library1|Mux0~201_combout\);

-- Location: LCCOMB_X35_Y62_N24
\library1|Mux0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~202_combout\ = (\vga1|yPixel\(3) & (\Mux326~20_combout\)) # (!\vga1|yPixel\(3) & ((\Mux326~20_combout\ & (\library1|Mux0~130_combout\)) # (!\Mux326~20_combout\ & ((\library1|Mux0~201_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \Mux326~20_combout\,
	datac => \library1|Mux0~130_combout\,
	datad => \library1|Mux0~201_combout\,
	combout => \library1|Mux0~202_combout\);

-- Location: LCCOMB_X35_Y62_N30
\library1|Mux0~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~211_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~202_combout\ & (\library1|Mux0~210_combout\)) # (!\library1|Mux0~202_combout\ & ((\library1|Mux0~84_combout\))))) # (!\vga1|yPixel\(3) & (((\library1|Mux0~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~210_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~84_combout\,
	datad => \library1|Mux0~202_combout\,
	combout => \library1|Mux0~211_combout\);

-- Location: LCCOMB_X35_Y63_N10
\library1|Mux0~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~294_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(1) & ((\Mux325~18_combout\))) # (!\vga1|yPixel\(1) & ((\vga1|xPixel\(0)) # (!\Mux325~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~294_combout\);

-- Location: LCCOMB_X35_Y63_N12
\library1|Mux0~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~295_combout\ = (!\vga1|yPixel\(2) & ((\Mux325~18_combout\ & ((!\library1|Mux0~294_combout\))) # (!\Mux325~18_combout\ & (!\vga1|yPixel\(0) & \library1|Mux0~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~294_combout\,
	combout => \library1|Mux0~295_combout\);

-- Location: LCCOMB_X35_Y63_N2
\library1|Mux0~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~296_combout\ = (\Mux323~14_combout\ & (((\library1|Mux0~97_combout\) # (\Mux326~20_combout\)))) # (!\Mux323~14_combout\ & (\library1|Mux0~295_combout\ & ((!\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~295_combout\,
	datab => \library1|Mux0~97_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~296_combout\);

-- Location: LCCOMB_X35_Y63_N8
\library1|Mux0~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~297_combout\ = (\vga1|yPixel\(1)) # ((\vga1|xPixel\(0) & !\library1|Mux0~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \library1|Mux0~296_combout\,
	combout => \library1|Mux0~297_combout\);

-- Location: LCCOMB_X35_Y63_N22
\library1|Mux0~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~298_combout\ = (\vga1|yPixel\(2) & ((\Mux324~15_combout\) # ((\library1|Mux0~297_combout\) # (!\library1|Mux0~296_combout\)))) # (!\vga1|yPixel\(2) & (\Mux324~15_combout\ & (\library1|Mux0~297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~297_combout\,
	datad => \library1|Mux0~296_combout\,
	combout => \library1|Mux0~298_combout\);

-- Location: LCCOMB_X35_Y63_N4
\library1|Mux0~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~299_combout\ = \library1|Mux0~296_combout\ $ (((\Mux326~20_combout\ & ((!\library1|Mux0~298_combout\) # (!\Mux325~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~20_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~298_combout\,
	datad => \library1|Mux0~296_combout\,
	combout => \library1|Mux0~299_combout\);

-- Location: LCCOMB_X35_Y63_N28
\library1|Mux0~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~285_combout\ = (\Mux324~15_combout\) # ((\vga1|yPixel\(1) & ((!\Mux323~14_combout\))) # (!\vga1|yPixel\(1) & (\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~285_combout\);

-- Location: LCCOMB_X35_Y63_N26
\library1|Mux0~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~282_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & (\Mux323~14_combout\ $ (\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & (\Mux323~14_combout\ & \Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~282_combout\);

-- Location: LCCOMB_X35_Y63_N20
\library1|Mux0~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~283_combout\ = (\Mux324~15_combout\ & (!\Mux326~20_combout\ & ((\vga1|yPixel\(2)) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~283_combout\);

-- Location: LCCOMB_X35_Y63_N6
\library1|Mux0~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~284_combout\ = (\library1|Mux0~283_combout\ & ((\Mux323~14_combout\) # ((\vga1|yPixel\(1))))) # (!\library1|Mux0~283_combout\ & (((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~283_combout\,
	combout => \library1|Mux0~284_combout\);

-- Location: LCCOMB_X35_Y63_N14
\library1|Mux0~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~286_combout\ = (\Mux326~20_combout\ & ((\library1|Mux0~284_combout\ & (!\library1|Mux0~285_combout\)) # (!\library1|Mux0~284_combout\ & ((\library1|Mux0~282_combout\))))) # (!\Mux326~20_combout\ & (((\library1|Mux0~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~20_combout\,
	datab => \library1|Mux0~285_combout\,
	datac => \library1|Mux0~282_combout\,
	datad => \library1|Mux0~284_combout\,
	combout => \library1|Mux0~286_combout\);

-- Location: LCCOMB_X42_Y57_N12
\library1|Mux0~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~289_combout\ = (\Mux326~20_combout\ & \Mux324~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux326~20_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~289_combout\);

-- Location: LCCOMB_X40_Y61_N20
\library1|Mux0~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~287_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(1)) # ((\vga1|xPixel\(0) & \vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~287_combout\);

-- Location: LCCOMB_X40_Y61_N2
\library1|Mux0~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~288_combout\ = (\Mux326~20_combout\ & (\vga1|yPixel\(2))) # (!\Mux326~20_combout\ & (\Mux325~18_combout\ & (\vga1|yPixel\(2) $ (\library1|Mux0~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux326~20_combout\,
	datad => \library1|Mux0~287_combout\,
	combout => \library1|Mux0~288_combout\);

-- Location: LCCOMB_X35_Y63_N0
\library1|Mux0~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~290_combout\ = (\library1|Mux0~289_combout\ & ((\library1|Mux0~288_combout\ & (!\Mux325~18_combout\)) # (!\library1|Mux0~288_combout\ & ((\vga1|yPixel\(1)))))) # (!\library1|Mux0~289_combout\ & (((\library1|Mux0~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~289_combout\,
	datad => \library1|Mux0~288_combout\,
	combout => \library1|Mux0~290_combout\);

-- Location: LCCOMB_X35_Y63_N18
\library1|Mux0~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~291_combout\ = (\Mux321~16_combout\ & (!\Mux323~14_combout\ & ((\library1|Mux0~290_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~286_combout\,
	datad => \library1|Mux0~290_combout\,
	combout => \library1|Mux0~291_combout\);

-- Location: LCCOMB_X35_Y63_N16
\library1|Mux0~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~292_combout\ = (!\Mux322~16_combout\ & \library1|Mux0~291_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datad => \library1|Mux0~291_combout\,
	combout => \library1|Mux0~292_combout\);

-- Location: LCCOMB_X35_Y63_N30
\library1|Mux0~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~300_combout\ = (\library1|Mux0~255_combout\ & ((\library1|Mux0~292_combout\) # ((\library1|Mux0~293_combout\ & \library1|Mux0~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~293_combout\,
	datab => \library1|Mux0~255_combout\,
	datac => \library1|Mux0~299_combout\,
	datad => \library1|Mux0~292_combout\,
	combout => \library1|Mux0~300_combout\);

-- Location: LCCOMB_X42_Y62_N10
\library1|Mux0~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~271_combout\ = (\Mux325~18_combout\ & (\vga1|yPixel\(1) & (\Mux322~16_combout\ $ (\Mux323~14_combout\)))) # (!\Mux325~18_combout\ & (\Mux322~16_combout\ & (!\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~271_combout\);

-- Location: LCCOMB_X42_Y62_N20
\library1|Mux0~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~272_combout\ = (\library1|Mux0~255_combout\ & (\vga1|yPixel\(2) & (!\Mux321~16_combout\ & \library1|Mux0~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~255_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~271_combout\,
	combout => \library1|Mux0~272_combout\);

-- Location: LCCOMB_X42_Y62_N18
\library1|Mux0~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~269_combout\ = (\Mux323~14_combout\ & (!\Mux322~16_combout\ & ((\vga1|yPixel\(1))))) # (!\Mux323~14_combout\ & (((\Mux325~18_combout\) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~269_combout\);

-- Location: LCCOMB_X42_Y62_N24
\library1|Mux0~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~270_combout\ = (\library1|Mux0~255_combout\ & (\vga1|yPixel\(2) & (!\Mux321~16_combout\ & \library1|Mux0~269_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~255_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~269_combout\,
	combout => \library1|Mux0~270_combout\);

-- Location: LCCOMB_X41_Y62_N22
\library1|Mux0~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~273_combout\ = (\Mux324~15_combout\ & ((\Mux326~20_combout\) # ((\library1|Mux0~270_combout\)))) # (!\Mux324~15_combout\ & (!\Mux326~20_combout\ & (\library1|Mux0~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux326~20_combout\,
	datac => \library1|Mux0~272_combout\,
	datad => \library1|Mux0~270_combout\,
	combout => \library1|Mux0~273_combout\);

-- Location: LCCOMB_X41_Y62_N28
\library1|Mux0~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~266_combout\ = (\vga1|yPixel\(2) & ((\Mux322~16_combout\ & (\library1|Mux0~255_combout\)) # (!\Mux322~16_combout\ & ((\Mux320~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~255_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~266_combout\);

-- Location: LCCOMB_X41_Y62_N2
\library1|Mux0~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~267_combout\ = (\Mux325~18_combout\ & (\Mux323~14_combout\ $ (((\vga1|yPixel\(1) & \library1|Mux0~266_combout\))))) # (!\Mux325~18_combout\ & (((!\Mux323~14_combout\ & \library1|Mux0~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~266_combout\,
	combout => \library1|Mux0~267_combout\);

-- Location: LCCOMB_X41_Y62_N8
\library1|Mux0~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~268_combout\ = (\library1|Mux0~267_combout\ & ((\Mux323~14_combout\ & (\Mux321~16_combout\ & !\Mux322~16_combout\)) # (!\Mux323~14_combout\ & (!\Mux321~16_combout\ & \Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux321~16_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~267_combout\,
	combout => \library1|Mux0~268_combout\);

-- Location: LCCOMB_X41_Y62_N16
\library1|Mux0~1110\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1110_combout\ = (!\Mux320~4_combout\ & (\Mux325~18_combout\ & (\Mux321~16_combout\ & !\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1110_combout\);

-- Location: LCCOMB_X40_Y61_N26
\library1|Mux0~1197\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1197_combout\ = (\Mux323~14_combout\ & (\Mux325~18_combout\ $ ((\Mux321~16_combout\)))) # (!\Mux323~14_combout\ & ((\Mux321~16_combout\ & (\Mux325~18_combout\)) # (!\Mux321~16_combout\ & ((!\vga1|xPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux321~16_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~1197_combout\);

-- Location: LCCOMB_X41_Y62_N30
\library1|Mux0~1198\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1198_combout\ = (\library1|Mux0~1197_combout\ & (\Mux320~4_combout\ $ (((!\Mux323~14_combout\) # (!\Mux325~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~1197_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1198_combout\);

-- Location: LCCOMB_X41_Y62_N26
\library1|Mux0~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~277_combout\ = (\Mux320~4_combout\ & ((\Mux325~18_combout\ & (\Mux323~14_combout\)) # (!\Mux325~18_combout\ & ((\Mux321~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~277_combout\);

-- Location: LCCOMB_X41_Y62_N20
\library1|Mux0~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~274_combout\ = (\Mux321~16_combout\) # (\Mux325~18_combout\ $ (((\vga1|yPixel\(1) & !\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux321~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~274_combout\);

-- Location: LCCOMB_X41_Y62_N6
\library1|Mux0~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~275_combout\ = (\Mux320~4_combout\ & (((\Mux323~14_combout\)))) # (!\Mux320~4_combout\ & (!\vga1|xPixel\(1) & ((!\library1|Mux0~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux320~4_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~274_combout\,
	combout => \library1|Mux0~275_combout\);

-- Location: LCCOMB_X41_Y62_N0
\library1|Mux0~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~276_combout\ = (\Mux320~4_combout\ & ((\Mux325~18_combout\ & ((\library1|Mux0~275_combout\))) # (!\Mux325~18_combout\ & (\Mux321~16_combout\ & !\library1|Mux0~275_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~275_combout\,
	combout => \library1|Mux0~276_combout\);

-- Location: LCCOMB_X41_Y62_N24
\library1|Mux0~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~278_combout\ = (\Mux322~16_combout\ & (\vga1|yPixel\(2))) # (!\Mux322~16_combout\ & ((\vga1|yPixel\(2) & ((\library1|Mux0~276_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~277_combout\,
	datad => \library1|Mux0~276_combout\,
	combout => \library1|Mux0~278_combout\);

-- Location: LCCOMB_X41_Y62_N10
\library1|Mux0~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~279_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~278_combout\ & ((\library1|Mux0~1198_combout\))) # (!\library1|Mux0~278_combout\ & (\library1|Mux0~1110_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~1110_combout\,
	datac => \library1|Mux0~1198_combout\,
	datad => \library1|Mux0~278_combout\,
	combout => \library1|Mux0~279_combout\);

-- Location: LCCOMB_X41_Y62_N4
\library1|Mux0~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~280_combout\ = (\library1|Mux0~273_combout\ & (((\library1|Mux0~279_combout\) # (!\Mux326~20_combout\)))) # (!\library1|Mux0~273_combout\ & (\library1|Mux0~268_combout\ & (\Mux326~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~273_combout\,
	datab => \library1|Mux0~268_combout\,
	datac => \Mux326~20_combout\,
	datad => \library1|Mux0~279_combout\,
	combout => \library1|Mux0~280_combout\);

-- Location: LCCOMB_X42_Y59_N2
\library1|Mux0~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~263_combout\ = (\Mux322~16_combout\ & (\vga1|yPixel\(1) & (!\Mux324~15_combout\ & \Mux326~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~263_combout\);

-- Location: LCCOMB_X42_Y59_N24
\library1|Mux0~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~264_combout\ = (!\Mux325~18_combout\ & (\Mux323~14_combout\ & (!\vga1|yPixel\(2) & \library1|Mux0~263_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~263_combout\,
	combout => \library1|Mux0~264_combout\);

-- Location: LCCOMB_X42_Y59_N4
\library1|Mux0~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~260_combout\ = (\Mux324~15_combout\ & (((\Mux325~18_combout\ & \Mux326~20_combout\)) # (!\Mux323~14_combout\))) # (!\Mux324~15_combout\ & ((\Mux325~18_combout\ & (!\Mux323~14_combout\)) # (!\Mux325~18_combout\ & ((\Mux326~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~260_combout\);

-- Location: LCCOMB_X42_Y59_N14
\library1|Mux0~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~257_combout\ = (\Mux324~15_combout\ & (((\Mux325~18_combout\ & \Mux326~20_combout\)) # (!\Mux323~14_combout\))) # (!\Mux324~15_combout\ & (!\Mux325~18_combout\ & ((\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~257_combout\);

-- Location: LCCOMB_X42_Y59_N16
\library1|Mux0~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~258_combout\ = (\Mux323~14_combout\ & (\Mux324~15_combout\ & ((\Mux325~18_combout\) # (\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~258_combout\);

-- Location: LCCOMB_X42_Y59_N30
\library1|Mux0~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~259_combout\ = (\Mux322~16_combout\ & ((\vga1|yPixel\(1)) # ((\library1|Mux0~257_combout\)))) # (!\Mux322~16_combout\ & (!\vga1|yPixel\(1) & ((\library1|Mux0~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~257_combout\,
	datad => \library1|Mux0~258_combout\,
	combout => \library1|Mux0~259_combout\);

-- Location: LCCOMB_X42_Y59_N0
\library1|Mux0~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~256_combout\ = (\Mux325~18_combout\ & (((!\Mux326~20_combout\)) # (!\Mux324~15_combout\))) # (!\Mux325~18_combout\ & (\Mux323~14_combout\ & (\Mux324~15_combout\ $ (!\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~256_combout\);

-- Location: LCCOMB_X42_Y59_N6
\library1|Mux0~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~261_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~259_combout\ & (\library1|Mux0~260_combout\)) # (!\library1|Mux0~259_combout\ & ((\library1|Mux0~256_combout\))))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~260_combout\,
	datac => \library1|Mux0~259_combout\,
	datad => \library1|Mux0~256_combout\,
	combout => \library1|Mux0~261_combout\);

-- Location: LCCOMB_X42_Y59_N20
\library1|Mux0~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~262_combout\ = (\vga1|yPixel\(2) & \library1|Mux0~261_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datad => \library1|Mux0~261_combout\,
	combout => \library1|Mux0~262_combout\);

-- Location: LCCOMB_X42_Y59_N26
\library1|Mux0~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~265_combout\ = (\library1|Mux0~255_combout\ & (!\Mux321~16_combout\ & ((\library1|Mux0~264_combout\) # (\library1|Mux0~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~255_combout\,
	datab => \library1|Mux0~264_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~262_combout\,
	combout => \library1|Mux0~265_combout\);

-- Location: LCCOMB_X41_Y62_N18
\library1|Mux0~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~281_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(3)) # ((\library1|Mux0~265_combout\)))) # (!\Mux327~15_combout\ & (!\vga1|yPixel\(3) & (\library1|Mux0~280_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~280_combout\,
	datad => \library1|Mux0~265_combout\,
	combout => \library1|Mux0~281_combout\);

-- Location: LCCOMB_X41_Y61_N22
\library1|Mux0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~218_combout\ = (\vga1|yPixel\(2) & ((\Mux325~18_combout\ & ((\Mux326~20_combout\))) # (!\Mux325~18_combout\ & (\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\ & (!\Mux325~18_combout\)) # (!\Mux324~15_combout\ & 
-- ((!\Mux326~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~218_combout\);

-- Location: LCCOMB_X40_Y61_N22
\library1|Mux0~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~217_combout\ = (\Mux325~18_combout\ & (((\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (!\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~217_combout\);

-- Location: LCCOMB_X41_Y61_N28
\library1|Mux0~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~219_combout\ = (\Mux323~14_combout\ & (((\Mux326~20_combout\ & \library1|Mux0~217_combout\)))) # (!\Mux323~14_combout\ & (\library1|Mux0~218_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~218_combout\,
	datab => \Mux326~20_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~217_combout\,
	combout => \library1|Mux0~219_combout\);

-- Location: LCCOMB_X41_Y61_N16
\library1|Mux0~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~223_combout\ = (\Mux323~14_combout\) # ((\Mux325~18_combout\) # (\vga1|yPixel\(2) $ (\Mux326~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux323~14_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~223_combout\);

-- Location: LCCOMB_X41_Y61_N14
\library1|Mux0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~224_combout\ = (\Mux324~15_combout\) # (\library1|Mux0~223_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~223_combout\,
	combout => \library1|Mux0~224_combout\);

-- Location: LCCOMB_X41_Y61_N24
\library1|Mux0~1205\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1205_combout\ = (\vga1|yPixel\(2) & (((!\Mux326~20_combout\)))) # (!\vga1|yPixel\(2) & (\Mux326~20_combout\ & ((!\Mux324~15_combout\) # (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~1205_combout\);

-- Location: LCCOMB_X41_Y61_N30
\library1|Mux0~1206\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1206_combout\ = (\library1|Mux0~1205_combout\) # ((\Mux325~18_combout\ & ((!\Mux323~14_combout\))) # (!\Mux325~18_combout\ & (!\Mux324~15_combout\ & \Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~1205_combout\,
	combout => \library1|Mux0~1206_combout\);

-- Location: LCCOMB_X41_Y61_N6
\library1|Mux0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~220_combout\ = \vga1|yPixel\(2) $ (\Mux326~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~220_combout\);

-- Location: LCCOMB_X41_Y61_N0
\library1|Mux0~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~221_combout\ = (\Mux323~14_combout\ & ((\Mux324~15_combout\ & (!\Mux325~18_combout\)) # (!\Mux324~15_combout\ & ((\library1|Mux0~220_combout\))))) # (!\Mux323~14_combout\ & (((\library1|Mux0~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~220_combout\,
	combout => \library1|Mux0~221_combout\);

-- Location: LCCOMB_X41_Y61_N2
\library1|Mux0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~222_combout\ = (\Mux322~16_combout\ & ((\Mux321~16_combout\) # ((!\library1|Mux0~1206_combout\)))) # (!\Mux322~16_combout\ & (!\Mux321~16_combout\ & ((!\library1|Mux0~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~1206_combout\,
	datad => \library1|Mux0~221_combout\,
	combout => \library1|Mux0~222_combout\);

-- Location: LCCOMB_X41_Y61_N8
\library1|Mux0~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~225_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~222_combout\ & ((!\library1|Mux0~224_combout\))) # (!\library1|Mux0~222_combout\ & (\library1|Mux0~219_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~219_combout\,
	datac => \library1|Mux0~224_combout\,
	datad => \library1|Mux0~222_combout\,
	combout => \library1|Mux0~225_combout\);

-- Location: LCCOMB_X41_Y61_N26
\library1|Mux0~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~215_combout\ = (\Mux325~18_combout\ & (\Mux324~15_combout\ & (\vga1|yPixel\(2) $ (\Mux326~20_combout\)))) # (!\Mux325~18_combout\ & (\vga1|yPixel\(2) $ (((\Mux326~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~215_combout\);

-- Location: LCCOMB_X41_Y61_N20
\library1|Mux0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~212_combout\ = (\Mux326~20_combout\ & ((\vga1|yPixel\(2)) # ((\Mux325~18_combout\ & \Mux324~15_combout\)))) # (!\Mux326~20_combout\ & (\vga1|yPixel\(2) $ (((\Mux325~18_combout\) # (\Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~212_combout\);

-- Location: LCCOMB_X41_Y61_N10
\library1|Mux0~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~213_combout\ = (\Mux324~15_combout\ & ((\Mux325~18_combout\ & ((\Mux326~20_combout\))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(2)) # (!\Mux326~20_combout\))))) # (!\Mux324~15_combout\ & (\vga1|yPixel\(2) $ (((\Mux326~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~213_combout\);

-- Location: LCCOMB_X41_Y61_N12
\library1|Mux0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~214_combout\ = (\Mux322~16_combout\ & ((\Mux323~14_combout\ & ((!\library1|Mux0~213_combout\))) # (!\Mux323~14_combout\ & (\library1|Mux0~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~212_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~213_combout\,
	combout => \library1|Mux0~214_combout\);

-- Location: LCCOMB_X41_Y61_N4
\library1|Mux0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~216_combout\ = (\library1|Mux0~214_combout\) # ((!\Mux322~16_combout\ & (\Mux323~14_combout\ & !\library1|Mux0~215_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~215_combout\,
	datad => \library1|Mux0~214_combout\,
	combout => \library1|Mux0~216_combout\);

-- Location: LCCOMB_X41_Y61_N18
\library1|Mux0~1109\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1109_combout\ = (\Mux320~4_combout\ & (((\library1|Mux0~225_combout\)))) # (!\Mux320~4_combout\ & (\Mux321~16_combout\ & ((\library1|Mux0~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~225_combout\,
	datad => \library1|Mux0~216_combout\,
	combout => \library1|Mux0~1109_combout\);

-- Location: LCCOMB_X38_Y61_N8
\library1|Mux0~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~251_combout\ = (\Mux325~18_combout\ & (((\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (!\Mux324~15_combout\ & ((\vga1|yPixel\(1)) # (\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~251_combout\);

-- Location: LCCOMB_X38_Y61_N16
\library1|Mux0~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~248_combout\ = (\vga1|yPixel\(2) & (!\Mux326~20_combout\ & ((\Mux322~16_combout\) # (!\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & (((!\Mux324~15_combout\ & \Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~248_combout\);

-- Location: LCCOMB_X38_Y61_N6
\library1|Mux0~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~247_combout\ = (\Mux322~16_combout\ & ((\vga1|yPixel\(2) $ (\Mux326~20_combout\)) # (!\Mux324~15_combout\))) # (!\Mux322~16_combout\ & ((\Mux324~15_combout\) # (\vga1|yPixel\(2) $ (\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~247_combout\);

-- Location: LCCOMB_X38_Y61_N30
\library1|Mux0~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~249_combout\ = (!\Mux321~16_combout\ & ((\Mux325~18_combout\ & (!\library1|Mux0~248_combout\)) # (!\Mux325~18_combout\ & ((!\library1|Mux0~247_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~248_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~247_combout\,
	combout => \library1|Mux0~249_combout\);

-- Location: LCCOMB_X38_Y61_N2
\library1|Mux0~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~252_combout\ = (\library1|Mux0~249_combout\) # ((\library1|Mux0~250_combout\ & (\library1|Mux0~251_combout\ & \Mux326~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~250_combout\,
	datab => \library1|Mux0~251_combout\,
	datac => \library1|Mux0~249_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~252_combout\);

-- Location: LCCOMB_X42_Y59_N22
\library1|Mux0~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~227_combout\ = (\Mux325~18_combout\) # ((\vga1|yPixel\(2) & (\Mux321~16_combout\ & \Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~227_combout\);

-- Location: LCCOMB_X42_Y59_N28
\library1|Mux0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~226_combout\ = (\vga1|yPixel\(2) & ((\Mux325~18_combout\) # ((\Mux321~16_combout\ & !\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & (((\Mux321~16_combout\ & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~226_combout\);

-- Location: LCCOMB_X42_Y59_N12
\library1|Mux0~1203\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1203_combout\ = (\library1|Mux0~227_combout\ & (!\Mux322~16_combout\ & ((\Mux326~20_combout\) # (!\library1|Mux0~226_combout\)))) # (!\library1|Mux0~227_combout\ & ((\library1|Mux0~226_combout\ & (!\Mux322~16_combout\)) # 
-- (!\library1|Mux0~226_combout\ & ((!\Mux326~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux326~20_combout\,
	datac => \library1|Mux0~227_combout\,
	datad => \library1|Mux0~226_combout\,
	combout => \library1|Mux0~1203_combout\);

-- Location: LCCOMB_X42_Y59_N18
\library1|Mux0~1204\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1204_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~227_combout\ & ((\library1|Mux0~1203_combout\))) # (!\library1|Mux0~227_combout\ & (\Mux326~20_combout\ & !\library1|Mux0~1203_combout\)))) # (!\vga1|yPixel\(2) & 
-- (\library1|Mux0~1203_combout\ & ((!\library1|Mux0~227_combout\) # (!\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~20_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~227_combout\,
	datad => \library1|Mux0~1203_combout\,
	combout => \library1|Mux0~1204_combout\);

-- Location: LCCOMB_X36_Y61_N0
\library1|Mux0~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~231_combout\ = (\vga1|yPixel\(2) & (!\Mux325~18_combout\ & ((\Mux326~20_combout\) # (!\vga1|yPixel\(1))))) # (!\vga1|yPixel\(2) & (\vga1|yPixel\(1) & (\Mux325~18_combout\ & !\Mux326~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~231_combout\);

-- Location: LCCOMB_X36_Y61_N10
\library1|Mux0~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~232_combout\ = (\Mux324~15_combout\ & (\Mux322~16_combout\ & \library1|Mux0~231_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~231_combout\,
	combout => \library1|Mux0~232_combout\);

-- Location: LCCOMB_X38_Y61_N20
\library1|Mux0~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~234_combout\ = (\Mux325~18_combout\ & ((\Mux326~20_combout\) # (\vga1|yPixel\(1) $ (\vga1|yPixel\(2))))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(1)) # ((\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~234_combout\);

-- Location: LCCOMB_X38_Y57_N30
\library1|Mux0~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~233_combout\ = (\vga1|yPixel\(2) & (((\Mux325~18_combout\ & \Mux326~20_combout\)))) # (!\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((\Mux326~20_combout\))) # (!\vga1|yPixel\(1) & (\Mux325~18_combout\ & !\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~233_combout\);

-- Location: LCCOMB_X36_Y61_N8
\library1|Mux0~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~235_combout\ = (!\Mux322~16_combout\ & ((\Mux324~15_combout\ & (!\library1|Mux0~234_combout\)) # (!\Mux324~15_combout\ & ((\library1|Mux0~233_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~234_combout\,
	datad => \library1|Mux0~233_combout\,
	combout => \library1|Mux0~235_combout\);

-- Location: LCCOMB_X40_Y57_N26
\library1|Mux0~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~229_combout\ = (\Mux322~16_combout\ & ((\Mux325~18_combout\ & ((\Mux326~20_combout\))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(2)) # (!\Mux326~20_combout\))))) # (!\Mux322~16_combout\ & ((\vga1|yPixel\(2) $ (\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~229_combout\);

-- Location: LCCOMB_X40_Y57_N20
\library1|Mux0~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~228_combout\ = (\Mux325~18_combout\ & (\Mux322~16_combout\ & (\vga1|yPixel\(2) $ (\Mux326~20_combout\)))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(2) $ (\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~228_combout\);

-- Location: LCCOMB_X40_Y57_N4
\library1|Mux0~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~230_combout\ = (\Mux321~16_combout\ & ((\Mux324~15_combout\ & (!\library1|Mux0~229_combout\)) # (!\Mux324~15_combout\ & ((!\library1|Mux0~228_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~229_combout\,
	datad => \library1|Mux0~228_combout\,
	combout => \library1|Mux0~230_combout\);

-- Location: LCCOMB_X36_Y61_N26
\library1|Mux0~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~236_combout\ = (\library1|Mux0~230_combout\) # ((!\Mux321~16_combout\ & ((\library1|Mux0~232_combout\) # (\library1|Mux0~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~232_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~235_combout\,
	datad => \library1|Mux0~230_combout\,
	combout => \library1|Mux0~236_combout\);

-- Location: LCCOMB_X35_Y61_N16
\library1|Mux0~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~237_combout\ = (\Mux321~16_combout\ & (\vga1|yPixel\(2) $ (((!\Mux324~15_combout\))))) # (!\Mux321~16_combout\ & ((\vga1|yPixel\(2)) # ((\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~237_combout\);

-- Location: LCCOMB_X35_Y61_N14
\library1|Mux0~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~238_combout\ = (\Mux326~20_combout\ & (\Mux321~16_combout\ & (!\vga1|yPixel\(2)))) # (!\Mux326~20_combout\ & (((\library1|Mux0~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux326~20_combout\,
	datad => \library1|Mux0~237_combout\,
	combout => \library1|Mux0~238_combout\);

-- Location: LCCOMB_X35_Y61_N24
\library1|Mux0~1199\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1199_combout\ = (!\vga1|yPixel\(2) & (((\Mux321~16_combout\) # (!\vga1|yPixel\(1))) # (!\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~1199_combout\);

-- Location: LCCOMB_X35_Y61_N26
\library1|Mux0~1200\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1200_combout\ = (\Mux324~15_combout\ & ((\library1|Mux0~1199_combout\) # (\Mux326~20_combout\ $ (!\Mux321~16_combout\)))) # (!\Mux324~15_combout\ & ((\Mux326~20_combout\ $ (\library1|Mux0~1199_combout\)) # (!\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~20_combout\,
	datab => \Mux321~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~1199_combout\,
	combout => \library1|Mux0~1200_combout\);

-- Location: LCCOMB_X36_Y61_N28
\library1|Mux0~1201\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1201_combout\ = (\vga1|yPixel\(2) & ((\Mux326~20_combout\ & ((!\Mux324~15_combout\))) # (!\Mux326~20_combout\ & (!\Mux321~16_combout\)))) # (!\vga1|yPixel\(2) & (!\Mux324~15_combout\ & (\Mux321~16_combout\ $ (\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux321~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~1201_combout\);

-- Location: LCCOMB_X36_Y61_N22
\library1|Mux0~1202\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1202_combout\ = (\library1|Mux0~1201_combout\) # ((!\vga1|yPixel\(2) & (\Mux321~16_combout\ & !\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux321~16_combout\,
	datac => \vga1|yPixel\(1),
	datad => \library1|Mux0~1201_combout\,
	combout => \library1|Mux0~1202_combout\);

-- Location: LCCOMB_X36_Y61_N14
\library1|Mux0~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~240_combout\ = (\vga1|yPixel\(1) & (\vga1|yPixel\(2))) # (!\vga1|yPixel\(1) & ((\vga1|yPixel\(2) & ((\Mux321~16_combout\))) # (!\vga1|yPixel\(2) & (\Mux324~15_combout\ & !\Mux321~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~240_combout\);

-- Location: LCCOMB_X36_Y61_N4
\library1|Mux0~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~241_combout\ = (\library1|Mux0~240_combout\ & ((\vga1|yPixel\(1)) # (\Mux324~15_combout\ $ (\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~240_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~241_combout\);

-- Location: LCCOMB_X36_Y61_N30
\library1|Mux0~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~242_combout\ = (\Mux324~15_combout\ & (!\Mux321~16_combout\)) # (!\Mux324~15_combout\ & ((\Mux326~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux321~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~242_combout\);

-- Location: LCCOMB_X36_Y61_N16
\library1|Mux0~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~239_combout\ = (\Mux321~16_combout\ & (!\Mux324~15_combout\ & ((!\Mux326~20_combout\) # (!\vga1|xPixel\(0))))) # (!\Mux321~16_combout\ & (((\Mux324~15_combout\ & !\Mux326~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux321~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux326~20_combout\,
	combout => \library1|Mux0~239_combout\);

-- Location: LCCOMB_X36_Y61_N24
\library1|Mux0~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~243_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~241_combout\ & (\library1|Mux0~242_combout\)) # (!\library1|Mux0~241_combout\ & ((\library1|Mux0~239_combout\))))) # (!\vga1|yPixel\(1) & (\library1|Mux0~241_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~241_combout\,
	datac => \library1|Mux0~242_combout\,
	datad => \library1|Mux0~239_combout\,
	combout => \library1|Mux0~243_combout\);

-- Location: LCCOMB_X36_Y61_N18
\library1|Mux0~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~244_combout\ = (\Mux322~16_combout\ & (\Mux325~18_combout\)) # (!\Mux322~16_combout\ & ((\Mux325~18_combout\ & (!\library1|Mux0~1202_combout\)) # (!\Mux325~18_combout\ & ((\library1|Mux0~243_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~1202_combout\,
	datad => \library1|Mux0~243_combout\,
	combout => \library1|Mux0~244_combout\);

-- Location: LCCOMB_X36_Y61_N20
\library1|Mux0~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~245_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~244_combout\ & ((\library1|Mux0~1200_combout\))) # (!\library1|Mux0~244_combout\ & (!\library1|Mux0~238_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~238_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~1200_combout\,
	datad => \library1|Mux0~244_combout\,
	combout => \library1|Mux0~245_combout\);

-- Location: LCCOMB_X36_Y61_N2
\library1|Mux0~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~246_combout\ = (\Mux320~4_combout\ & (\Mux323~14_combout\)) # (!\Mux320~4_combout\ & ((\Mux323~14_combout\ & (\library1|Mux0~236_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~245_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~236_combout\,
	datad => \library1|Mux0~245_combout\,
	combout => \library1|Mux0~246_combout\);

-- Location: LCCOMB_X36_Y61_N12
\library1|Mux0~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~253_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~246_combout\ & (\library1|Mux0~252_combout\)) # (!\library1|Mux0~246_combout\ & ((\library1|Mux0~1204_combout\))))) # (!\Mux320~4_combout\ & (((\library1|Mux0~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~252_combout\,
	datac => \library1|Mux0~1204_combout\,
	datad => \library1|Mux0~246_combout\,
	combout => \library1|Mux0~253_combout\);

-- Location: LCCOMB_X36_Y61_N6
\library1|Mux0~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~254_combout\ = (\vga1|xPixel\(1) & (\library1|Mux0~1109_combout\)) # (!\vga1|xPixel\(1) & ((\library1|Mux0~253_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \library1|Mux0~1109_combout\,
	datad => \library1|Mux0~253_combout\,
	combout => \library1|Mux0~254_combout\);

-- Location: LCCOMB_X35_Y62_N8
\library1|Mux0~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~301_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~281_combout\ & (\library1|Mux0~300_combout\)) # (!\library1|Mux0~281_combout\ & ((\library1|Mux0~254_combout\))))) # (!\vga1|yPixel\(3) & (((\library1|Mux0~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~300_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~281_combout\,
	datad => \library1|Mux0~254_combout\,
	combout => \library1|Mux0~301_combout\);

-- Location: LCCOMB_X43_Y59_N28
\library1|Mux0~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~395_combout\ = (\vga1|yPixel\(2) & (\vga1|xPixel\(1) $ (\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~395_combout\);

-- Location: LCCOMB_X43_Y59_N10
\library1|Mux0~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~396_combout\ = (\Mux325~18_combout\ & (((!\Mux323~14_combout\)) # (!\Mux324~15_combout\))) # (!\Mux325~18_combout\ & (\Mux324~15_combout\ $ (((!\library1|Mux0~395_combout\) # (!\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~395_combout\,
	combout => \library1|Mux0~396_combout\);

-- Location: LCCOMB_X43_Y59_N26
\library1|Mux0~1112\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1112_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & (\vga1|xPixel\(1) & \library1|Mux0~400_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~400_combout\,
	combout => \library1|Mux0~1112_combout\);

-- Location: LCCOMB_X43_Y59_N4
\library1|Mux0~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~397_combout\ = (\vga1|yPixel\(2) & ((\Mux325~18_combout\) # (\Mux324~15_combout\ $ (\Mux323~14_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\ & ((\Mux325~18_combout\))) # (!\Mux324~15_combout\ & (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~397_combout\);

-- Location: LCCOMB_X43_Y59_N18
\library1|Mux0~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~398_combout\ = (\Mux323~14_combout\ & ((\Mux324~15_combout\ $ (!\Mux325~18_combout\)))) # (!\Mux323~14_combout\ & (!\vga1|yPixel\(2) & ((\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux324~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~398_combout\);

-- Location: LCCOMB_X43_Y59_N0
\library1|Mux0~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~399_combout\ = (\Mux321~16_combout\ & (\Mux322~16_combout\)) # (!\Mux321~16_combout\ & ((\Mux322~16_combout\ & (\library1|Mux0~397_combout\)) # (!\Mux322~16_combout\ & ((!\library1|Mux0~398_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~397_combout\,
	datad => \library1|Mux0~398_combout\,
	combout => \library1|Mux0~399_combout\);

-- Location: LCCOMB_X43_Y59_N8
\library1|Mux0~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~401_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~399_combout\ & ((\library1|Mux0~1112_combout\))) # (!\library1|Mux0~399_combout\ & (\library1|Mux0~396_combout\)))) # (!\Mux321~16_combout\ & (((\library1|Mux0~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~396_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~1112_combout\,
	datad => \library1|Mux0~399_combout\,
	combout => \library1|Mux0~401_combout\);

-- Location: LCCOMB_X40_Y59_N16
\library1|Mux0~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~361_combout\ = (\Mux321~16_combout\ & (!\Mux324~15_combout\ & (\library1|Mux0~360_combout\ & !\Mux323~14_combout\))) # (!\Mux321~16_combout\ & (\Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~360_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~361_combout\);

-- Location: LCCOMB_X40_Y59_N4
\library1|Mux0~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~369_combout\ = (!\Mux321~16_combout\ & (!\Mux324~15_combout\ & !\Mux323~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~369_combout\);

-- Location: LCCOMB_X40_Y59_N26
\library1|Mux0~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~366_combout\ = (\Mux321~16_combout\ & ((\vga1|xPixel\(1)) # ((!\vga1|yPixel\(2)) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~366_combout\);

-- Location: LCCOMB_X40_Y59_N22
\library1|Mux0~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~364_combout\ = (!\Mux323~14_combout\ & (((\vga1|xPixel\(1)) # (!\Mux324~15_combout\)) # (!\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~364_combout\);

-- Location: LCCOMB_X40_Y59_N18
\library1|Mux0~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~348_combout\ = (!\vga1|xPixel\(1) & \Mux323~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~348_combout\);

-- Location: LCCOMB_X40_Y59_N0
\library1|Mux0~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~365_combout\ = (\Mux321~16_combout\ & (\Mux324~15_combout\ & ((\library1|Mux0~147_combout\) # (\library1|Mux0~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~147_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~348_combout\,
	combout => \library1|Mux0~365_combout\);

-- Location: LCCOMB_X40_Y59_N8
\library1|Mux0~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~367_combout\ = (\library1|Mux0~364_combout\) # ((\library1|Mux0~365_combout\) # ((!\library1|Mux0~366_combout\ & !\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~366_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~364_combout\,
	datad => \library1|Mux0~365_combout\,
	combout => \library1|Mux0~367_combout\);

-- Location: LCCOMB_X40_Y59_N2
\library1|Mux0~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~362_combout\ = (\Mux324~15_combout\ & ((!\Mux321~16_combout\))) # (!\Mux324~15_combout\ & (\vga1|yPixel\(2) & \Mux321~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~362_combout\);

-- Location: LCCOMB_X40_Y59_N24
\library1|Mux0~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~363_combout\ = (\library1|Mux0~362_combout\ & ((\Mux321~16_combout\ $ (!\Mux323~14_combout\)))) # (!\library1|Mux0~362_combout\ & (\vga1|xPixel\(1) & (\Mux321~16_combout\ & \Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~362_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~363_combout\);

-- Location: LCCOMB_X40_Y59_N10
\library1|Mux0~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~368_combout\ = (\Mux325~18_combout\ & ((\Mux322~16_combout\) # ((\library1|Mux0~363_combout\)))) # (!\Mux325~18_combout\ & (!\Mux322~16_combout\ & (\library1|Mux0~367_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~367_combout\,
	datad => \library1|Mux0~363_combout\,
	combout => \library1|Mux0~368_combout\);

-- Location: LCCOMB_X40_Y59_N6
\library1|Mux0~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~370_combout\ = (\Mux322~16_combout\ & ((\library1|Mux0~368_combout\ & ((\library1|Mux0~369_combout\))) # (!\library1|Mux0~368_combout\ & (\library1|Mux0~361_combout\)))) # (!\Mux322~16_combout\ & (((\library1|Mux0~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \library1|Mux0~361_combout\,
	datac => \library1|Mux0~369_combout\,
	datad => \library1|Mux0~368_combout\,
	combout => \library1|Mux0~370_combout\);

-- Location: LCCOMB_X36_Y63_N22
\library1|Mux0~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~391_combout\ = (\vga1|xPixel\(1) & (!\Mux323~14_combout\ & ((\vga1|xPixel\(0)) # (!\Mux325~18_combout\)))) # (!\vga1|xPixel\(1) & (((\Mux325~18_combout\ & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~391_combout\);

-- Location: LCCOMB_X36_Y63_N24
\library1|Mux0~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~392_combout\ = ((\vga1|xPixel\(1) & (\Mux325~18_combout\ $ (\Mux323~14_combout\))) # (!\vga1|xPixel\(1) & (\Mux325~18_combout\ & \Mux323~14_combout\))) # (!\vga1|yPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~392_combout\);

-- Location: LCCOMB_X36_Y63_N0
\library1|Mux0~1187\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1187_combout\ = (\Mux322~16_combout\ & ((\Mux321~16_combout\) # ((\library1|Mux0~391_combout\)))) # (!\Mux322~16_combout\ & (!\Mux321~16_combout\ & ((\library1|Mux0~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~391_combout\,
	datad => \library1|Mux0~392_combout\,
	combout => \library1|Mux0~1187_combout\);

-- Location: LCCOMB_X36_Y63_N10
\library1|Mux0~1188\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1188_combout\ = (\library1|Mux0~1187_combout\ & (((!\Mux323~14_combout\ & \Mux325~18_combout\)) # (!\Mux321~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~1187_combout\,
	combout => \library1|Mux0~1188_combout\);

-- Location: LCCOMB_X36_Y63_N20
\library1|Mux0~1189\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1189_combout\ = (\Mux321~16_combout\ & ((\Mux322~16_combout\ & (\Mux325~18_combout\ & !\Mux323~14_combout\)) # (!\Mux322~16_combout\ & (!\Mux325~18_combout\ & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux321~16_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1189_combout\);

-- Location: LCCOMB_X36_Y63_N18
\library1|Mux0~1190\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1190_combout\ = (\vga1|yPixel\(2) & (((\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & (\library1|Mux0~1189_combout\ & ((\Mux323~14_combout\) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux324~15_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~1189_combout\,
	combout => \library1|Mux0~1190_combout\);

-- Location: LCCOMB_X42_Y61_N4
\library1|Mux0~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~389_combout\ = (!\vga1|xPixel\(1) & (\Mux325~18_combout\ & ((\vga1|yPixel\(1)) # (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~389_combout\);

-- Location: LCCOMB_X42_Y61_N20
\library1|Mux0~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~385_combout\ = (\vga1|xPixel\(0) & (\vga1|yPixel\(1) & \vga1|yPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(0),
	combout => \library1|Mux0~385_combout\);

-- Location: LCCOMB_X42_Y61_N22
\library1|Mux0~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~386_combout\ = (\Mux323~14_combout\ & (((!\Mux325~18_combout\)))) # (!\Mux323~14_combout\ & ((\vga1|xPixel\(1)) # ((\library1|Mux0~385_combout\ & !\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~385_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~386_combout\);

-- Location: LCCOMB_X42_Y61_N16
\library1|Mux0~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~387_combout\ = (\vga1|yPixel\(1)) # ((\vga1|xPixel\(0) & !\Mux325~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~387_combout\);

-- Location: LCCOMB_X42_Y61_N2
\library1|Mux0~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~388_combout\ = (\Mux323~14_combout\ & (((\library1|Mux0~386_combout\)))) # (!\Mux323~14_combout\ & ((\library1|Mux0~387_combout\ & ((\library1|Mux0~386_combout\))) # (!\library1|Mux0~387_combout\ & (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~386_combout\,
	datad => \library1|Mux0~387_combout\,
	combout => \library1|Mux0~388_combout\);

-- Location: LCCOMB_X42_Y61_N14
\library1|Mux0~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~390_combout\ = (!\Mux321~16_combout\ & ((\Mux322~16_combout\ & ((\library1|Mux0~388_combout\))) # (!\Mux322~16_combout\ & (\library1|Mux0~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux321~16_combout\,
	datac => \library1|Mux0~389_combout\,
	datad => \library1|Mux0~388_combout\,
	combout => \library1|Mux0~390_combout\);

-- Location: LCCOMB_X36_Y63_N14
\library1|Mux0~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~393_combout\ = (\library1|Mux0~1190_combout\ & ((\library1|Mux0~1188_combout\) # ((!\vga1|yPixel\(2))))) # (!\library1|Mux0~1190_combout\ & (((\vga1|yPixel\(2) & \library1|Mux0~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1188_combout\,
	datab => \library1|Mux0~1190_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~390_combout\,
	combout => \library1|Mux0~393_combout\);

-- Location: LCCOMB_X40_Y56_N30
\library1|Mux0~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~376_combout\ = (\Mux325~18_combout\ & (!\Mux324~15_combout\ & !\Mux322~16_combout\)) # (!\Mux325~18_combout\ & (\Mux324~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~376_combout\);

-- Location: LCCOMB_X40_Y56_N24
\library1|Mux0~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~377_combout\ = (\Mux323~14_combout\ & (!\library1|Mux0~376_combout\ & \Mux321~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~376_combout\,
	datad => \Mux321~16_combout\,
	combout => \library1|Mux0~377_combout\);

-- Location: LCCOMB_X38_Y63_N4
\library1|Mux0~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~371_combout\ = (\Mux325~18_combout\ & (!\vga1|xPixel\(1) & ((\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (\vga1|xPixel\(1) $ (((\vga1|yPixel\(1) & \Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~371_combout\);

-- Location: LCCOMB_X38_Y63_N18
\library1|Mux0~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~372_combout\ = (\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # ((!\vga1|yPixel\(1) & !\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & (((\vga1|yPixel\(1) & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~372_combout\);

-- Location: LCCOMB_X38_Y63_N26
\library1|Mux0~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~374_combout\ = (\Mux322~16_combout\ & (\Mux324~15_combout\ $ (((\library1|Mux0~371_combout\ & !\library1|Mux0~372_combout\))))) # (!\Mux322~16_combout\ & (\Mux324~15_combout\ & (\library1|Mux0~371_combout\ $ (\library1|Mux0~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~371_combout\,
	datad => \library1|Mux0~372_combout\,
	combout => \library1|Mux0~374_combout\);

-- Location: LCCOMB_X38_Y63_N0
\library1|Mux0~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~373_combout\ = (!\Mux322~16_combout\ & (!\library1|Mux0~371_combout\ & (\Mux324~15_combout\ $ (\library1|Mux0~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~371_combout\,
	datad => \library1|Mux0~372_combout\,
	combout => \library1|Mux0~373_combout\);

-- Location: LCCOMB_X38_Y63_N28
\library1|Mux0~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~375_combout\ = (!\Mux321~16_combout\ & ((\library1|Mux0~374_combout\ & (\Mux323~14_combout\ & !\library1|Mux0~373_combout\)) # (!\library1|Mux0~374_combout\ & ((\library1|Mux0~373_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~374_combout\,
	datad => \library1|Mux0~373_combout\,
	combout => \library1|Mux0~375_combout\);

-- Location: LCCOMB_X36_Y63_N4
\library1|Mux0~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~380_combout\ = (!\Mux325~18_combout\ & (((\vga1|xPixel\(1) & \vga1|yPixel\(1))) # (!\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~380_combout\);

-- Location: LCCOMB_X36_Y63_N2
\library1|Mux0~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~381_combout\ = (\Mux321~16_combout\ & (!\Mux323~14_combout\ & (\Mux324~15_combout\ $ (!\library1|Mux0~380_combout\)))) # (!\Mux321~16_combout\ & (!\Mux324~15_combout\ & (\library1|Mux0~380_combout\ & \Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~380_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~381_combout\);

-- Location: LCCOMB_X36_Y63_N8
\library1|Mux0~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~382_combout\ = (\Mux322~16_combout\ & ((!\Mux323~14_combout\) # (!\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~16_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~382_combout\);

-- Location: LCCOMB_X41_Y56_N24
\library1|Mux0~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~378_combout\ = (\Mux321~16_combout\ & (((\Mux324~15_combout\)))) # (!\Mux321~16_combout\ & (\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux321~16_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~378_combout\);

-- Location: LCCOMB_X41_Y56_N10
\library1|Mux0~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~379_combout\ = (\Mux325~18_combout\ & ((\Mux321~16_combout\ & ((!\library1|Mux0~378_combout\))) # (!\Mux321~16_combout\ & ((\library1|Mux0~378_combout\) # (!\vga1|yPixel\(1)))))) # (!\Mux325~18_combout\ & (((\library1|Mux0~378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux321~16_combout\,
	datad => \library1|Mux0~378_combout\,
	combout => \library1|Mux0~379_combout\);

-- Location: LCCOMB_X36_Y63_N6
\library1|Mux0~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~383_combout\ = (\library1|Mux0~382_combout\ & ((\vga1|yPixel\(2) & ((\library1|Mux0~379_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~381_combout\,
	datac => \library1|Mux0~382_combout\,
	datad => \library1|Mux0~379_combout\,
	combout => \library1|Mux0~383_combout\);

-- Location: LCCOMB_X36_Y63_N12
\library1|Mux0~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~384_combout\ = (\library1|Mux0~377_combout\) # ((\library1|Mux0~383_combout\) # ((\vga1|yPixel\(2) & \library1|Mux0~375_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~377_combout\,
	datac => \library1|Mux0~375_combout\,
	datad => \library1|Mux0~383_combout\,
	combout => \library1|Mux0~384_combout\);

-- Location: LCCOMB_X36_Y63_N28
\library1|Mux0~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~394_combout\ = (\Mux320~4_combout\ & (\Mux327~15_combout\)) # (!\Mux320~4_combout\ & ((\Mux327~15_combout\ & ((\library1|Mux0~384_combout\))) # (!\Mux327~15_combout\ & (\library1|Mux0~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~393_combout\,
	datad => \library1|Mux0~384_combout\,
	combout => \library1|Mux0~394_combout\);

-- Location: LCCOMB_X36_Y63_N26
\library1|Mux0~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~402_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~394_combout\ & (\library1|Mux0~401_combout\)) # (!\library1|Mux0~394_combout\ & ((\library1|Mux0~370_combout\))))) # (!\Mux320~4_combout\ & (((\library1|Mux0~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~401_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~370_combout\,
	datad => \library1|Mux0~394_combout\,
	combout => \library1|Mux0~402_combout\);

-- Location: LCCOMB_X35_Y55_N14
\library1|Mux0~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~410_combout\ = (\Mux323~14_combout\ & (!\Mux322~16_combout\ & ((\Mux325~18_combout\) # (\Mux327~15_combout\)))) # (!\Mux323~14_combout\ & ((\Mux327~15_combout\ & ((\Mux325~18_combout\))) # (!\Mux327~15_combout\ & (\Mux322~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~410_combout\);

-- Location: LCCOMB_X35_Y55_N6
\library1|Mux0~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~415_combout\ = (\Mux325~18_combout\ & (!\Mux323~14_combout\)) # (!\Mux325~18_combout\ & (\Mux327~15_combout\ & ((\Mux323~14_combout\) # (\vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~415_combout\);

-- Location: LCCOMB_X35_Y55_N4
\library1|Mux0~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~416_combout\ = ((\Mux323~14_combout\ & ((\library1|Mux0~415_combout\))) # (!\Mux323~14_combout\ & ((\vga1|xPixel\(0)) # (!\library1|Mux0~415_combout\)))) # (!\Mux322~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~415_combout\,
	combout => \library1|Mux0~416_combout\);

-- Location: LCCOMB_X35_Y55_N2
\library1|Mux0~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~413_combout\ = (\Mux323~14_combout\ & (\Mux322~16_combout\ & (\Mux325~18_combout\ & !\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~413_combout\);

-- Location: LCCOMB_X36_Y55_N18
\library1|Mux0~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~411_combout\ = (\vga1|xPixel\(0) & (\vga1|yPixel\(0) & \Mux322~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(0),
	datad => \Mux322~16_combout\,
	combout => \library1|Mux0~411_combout\);

-- Location: LCCOMB_X35_Y55_N28
\library1|Mux0~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~412_combout\ = (\Mux327~15_combout\ & (!\Mux325~18_combout\ & ((\Mux323~14_combout\) # (!\library1|Mux0~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux327~15_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~411_combout\,
	combout => \library1|Mux0~412_combout\);

-- Location: LCCOMB_X35_Y55_N16
\library1|Mux0~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~414_combout\ = (\vga1|xPixel\(1) & (((\Mux324~15_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux324~15_combout\ & ((\library1|Mux0~412_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~413_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~412_combout\,
	combout => \library1|Mux0~414_combout\);

-- Location: LCCOMB_X35_Y55_N30
\library1|Mux0~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~417_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~414_combout\ & ((\library1|Mux0~416_combout\))) # (!\library1|Mux0~414_combout\ & (\library1|Mux0~410_combout\)))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~410_combout\,
	datac => \library1|Mux0~416_combout\,
	datad => \library1|Mux0~414_combout\,
	combout => \library1|Mux0~417_combout\);

-- Location: LCCOMB_X35_Y55_N22
\library1|Mux0~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~404_combout\ = (\Mux322~16_combout\ & (!\Mux327~15_combout\ & ((\vga1|xPixel\(1)) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~16_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~404_combout\);

-- Location: LCCOMB_X35_Y55_N24
\library1|Mux0~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~403_combout\ = (\Mux322~16_combout\ & (((!\Mux323~14_combout\)) # (!\vga1|xPixel\(1)))) # (!\Mux322~16_combout\ & (((\Mux323~14_combout\) # (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~16_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~403_combout\);

-- Location: LCCOMB_X35_Y55_N8
\library1|Mux0~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~405_combout\ = (!\Mux324~15_combout\ & ((\Mux325~18_combout\ & ((\library1|Mux0~403_combout\))) # (!\Mux325~18_combout\ & (\library1|Mux0~404_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~404_combout\,
	datad => \library1|Mux0~403_combout\,
	combout => \library1|Mux0~405_combout\);

-- Location: LCCOMB_X35_Y55_N26
\library1|Mux0~1113\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1113_combout\ = (\Mux323~14_combout\ & (((\Mux327~15_combout\)))) # (!\Mux323~14_combout\ & (\vga1|xPixel\(1) & (\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux327~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1113_combout\);

-- Location: LCCOMB_X35_Y55_N10
\library1|Mux0~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~406_combout\ = (\Mux327~15_combout\ & (\vga1|xPixel\(1) $ (\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~406_combout\);

-- Location: LCCOMB_X35_Y55_N20
\library1|Mux0~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~407_combout\ = (\Mux322~16_combout\ & (((\Mux325~18_combout\)))) # (!\Mux322~16_combout\ & (((!\library1|Mux0~406_combout\)) # (!\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~406_combout\,
	combout => \library1|Mux0~407_combout\);

-- Location: LCCOMB_X35_Y55_N18
\library1|Mux0~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~408_combout\ = (\Mux322~16_combout\ & ((\Mux323~14_combout\ & (\library1|Mux0~1113_combout\ & !\library1|Mux0~407_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~1113_combout\) # (!\library1|Mux0~407_combout\))))) # 
-- (!\Mux322~16_combout\ & (((\library1|Mux0~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~1113_combout\,
	datad => \library1|Mux0~407_combout\,
	combout => \library1|Mux0~408_combout\);

-- Location: LCCOMB_X35_Y55_N0
\library1|Mux0~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~409_combout\ = (!\vga1|yPixel\(1) & ((\library1|Mux0~405_combout\) # ((\Mux324~15_combout\ & \library1|Mux0~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~405_combout\,
	datad => \library1|Mux0~408_combout\,
	combout => \library1|Mux0~409_combout\);

-- Location: LCCOMB_X35_Y55_N12
\library1|Mux0~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~418_combout\ = (!\Mux321~16_combout\ & ((\library1|Mux0~409_combout\) # ((\vga1|yPixel\(1) & \library1|Mux0~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~417_combout\,
	datad => \library1|Mux0~409_combout\,
	combout => \library1|Mux0~418_combout\);

-- Location: LCCOMB_X41_Y63_N16
\library1|Mux0~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~420_combout\ = (\library1|Mux0~175_combout\ & (!\vga1|xPixel\(1) & (\library1|Mux0~419_combout\ & \library1|Mux0~250_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~175_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~419_combout\,
	datad => \library1|Mux0~250_combout\,
	combout => \library1|Mux0~420_combout\);

-- Location: LCCOMB_X36_Y63_N16
\library1|Mux0~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~421_combout\ = (\vga1|yPixel\(2) & (!\Mux320~4_combout\ & ((\library1|Mux0~418_combout\) # (\library1|Mux0~420_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~418_combout\,
	datad => \library1|Mux0~420_combout\,
	combout => \library1|Mux0~421_combout\);

-- Location: LCCOMB_X36_Y63_N30
\library1|Mux0~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~422_combout\ = (\Mux326~20_combout\ & ((\vga1|yPixel\(3)) # ((\library1|Mux0~402_combout\)))) # (!\Mux326~20_combout\ & (!\vga1|yPixel\(3) & ((\library1|Mux0~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~20_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~402_combout\,
	datad => \library1|Mux0~421_combout\,
	combout => \library1|Mux0~422_combout\);

-- Location: LCCOMB_X34_Y56_N30
\library1|Mux0~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~357_combout\ = (\Mux324~15_combout\ & ((\Mux327~15_combout\) # ((!\Mux325~18_combout\) # (!\vga1|yPixel\(2))))) # (!\Mux324~15_combout\ & (\Mux327~15_combout\ $ ((\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~357_combout\);

-- Location: LCCOMB_X34_Y56_N22
\library1|Mux0~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~355_combout\ = (\Mux325~18_combout\) # ((\Mux324~15_combout\) # ((\vga1|yPixel\(2) & !\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~355_combout\);

-- Location: LCCOMB_X34_Y56_N28
\library1|Mux0~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~354_combout\ = (\Mux325~18_combout\ & (((\Mux327~15_combout\ & \Mux324~15_combout\)) # (!\vga1|yPixel\(2)))) # (!\Mux325~18_combout\ & (((!\Mux327~15_combout\ & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~354_combout\);

-- Location: LCCOMB_X34_Y56_N24
\library1|Mux0~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~356_combout\ = (!\Mux323~14_combout\ & ((\Mux320~4_combout\ & (!\library1|Mux0~355_combout\)) # (!\Mux320~4_combout\ & ((\library1|Mux0~354_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~355_combout\,
	datad => \library1|Mux0~354_combout\,
	combout => \library1|Mux0~356_combout\);

-- Location: LCCOMB_X34_Y56_N16
\library1|Mux0~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~358_combout\ = (\library1|Mux0~356_combout\) # ((!\Mux320~4_combout\ & (\Mux323~14_combout\ & !\library1|Mux0~357_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~357_combout\,
	datad => \library1|Mux0~356_combout\,
	combout => \library1|Mux0~358_combout\);

-- Location: LCCOMB_X35_Y56_N12
\library1|Mux0~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~315_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (!\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \vga1|xPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~315_combout\);

-- Location: LCCOMB_X35_Y56_N26
\library1|Mux0~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~316_combout\ = (\Mux325~18_combout\ & (\vga1|yPixel\(1) & ((\library1|Mux0~315_combout\) # (!\Mux324~15_combout\)))) # (!\Mux325~18_combout\ & ((\Mux324~15_combout\ & ((\vga1|yPixel\(1)))) # (!\Mux324~15_combout\ & 
-- (!\library1|Mux0~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~315_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~316_combout\);

-- Location: LCCOMB_X35_Y56_N24
\library1|Mux0~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~317_combout\ = (!\Mux320~4_combout\ & (!\vga1|yPixel\(2) & (\library1|Mux0~316_combout\ & !\Mux323~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~316_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~317_combout\);

-- Location: LCCOMB_X36_Y56_N30
\library1|Mux0~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~302_combout\ = (!\vga1|yPixel\(2) & (((!\Mux64~0_combout\) # (!\Mux320~3_combout\)) # (!\Mux320~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~2_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux320~3_combout\,
	datad => \Mux64~0_combout\,
	combout => \library1|Mux0~302_combout\);

-- Location: LCCOMB_X36_Y56_N26
\library1|Mux0~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~313_combout\ = (!\Mux320~4_combout\ & (\vga1|yPixel\(2) $ (\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	combout => \library1|Mux0~313_combout\);

-- Location: LCCOMB_X36_Y56_N18
\library1|Mux0~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~309_combout\ = (\vga1|yPixel\(2) & ((\vga1|xPixel\(1) & ((!\vga1|yPixel\(1)))) # (!\vga1|xPixel\(1) & (!\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & (\vga1|yPixel\(1) & ((\vga1|xPixel\(1)) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~309_combout\);

-- Location: LCCOMB_X36_Y56_N22
\library1|Mux0~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~311_combout\ = (\Mux320~4_combout\ & (((!\Mux324~15_combout\)) # (!\library1|Mux0~310_combout\))) # (!\Mux320~4_combout\ & (((\library1|Mux0~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~310_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~309_combout\,
	combout => \library1|Mux0~311_combout\);

-- Location: LCCOMB_X36_Y56_N6
\library1|Mux0~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~307_combout\ = (\library1|Mux0~306_combout\ & (((!\Mux64~0_combout\) # (!\Mux320~3_combout\)) # (!\Mux320~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~2_combout\,
	datab => \Mux320~3_combout\,
	datac => \library1|Mux0~306_combout\,
	datad => \Mux64~0_combout\,
	combout => \library1|Mux0~307_combout\);

-- Location: LCCOMB_X36_Y56_N10
\library1|Mux0~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~304_combout\ = (\vga1|yPixel\(1)) # ((\Mux320~2_combout\ & (\Mux320~3_combout\ & \Mux64~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~2_combout\,
	datab => \Mux320~3_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux64~0_combout\,
	combout => \library1|Mux0~304_combout\);

-- Location: LCCOMB_X36_Y56_N28
\library1|Mux0~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~303_combout\ = (\vga1|xPixel\(0) & (\vga1|xPixel\(1) & (!\Mux320~4_combout\ & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux320~4_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~303_combout\);

-- Location: LCCOMB_X36_Y56_N12
\library1|Mux0~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~305_combout\ = (\vga1|yPixel\(2) & (((\Mux324~15_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux324~15_combout\ & ((\library1|Mux0~303_combout\))) # (!\Mux324~15_combout\ & (\library1|Mux0~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~304_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~303_combout\,
	combout => \library1|Mux0~305_combout\);

-- Location: LCCOMB_X36_Y56_N24
\library1|Mux0~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~308_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~305_combout\ & (\library1|Mux0~307_combout\)) # (!\library1|Mux0~305_combout\ & ((\library1|Mux0~150_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~307_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~150_combout\,
	datad => \library1|Mux0~305_combout\,
	combout => \library1|Mux0~308_combout\);

-- Location: LCCOMB_X36_Y56_N16
\library1|Mux0~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~312_combout\ = (\Mux325~18_combout\ & ((\Mux323~14_combout\) # ((\library1|Mux0~308_combout\)))) # (!\Mux325~18_combout\ & (!\Mux323~14_combout\ & (\library1|Mux0~311_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~311_combout\,
	datad => \library1|Mux0~308_combout\,
	combout => \library1|Mux0~312_combout\);

-- Location: LCCOMB_X36_Y56_N0
\library1|Mux0~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~314_combout\ = (\Mux323~14_combout\ & ((\library1|Mux0~312_combout\ & ((\library1|Mux0~313_combout\))) # (!\library1|Mux0~312_combout\ & (\library1|Mux0~302_combout\)))) # (!\Mux323~14_combout\ & (((\library1|Mux0~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~302_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~313_combout\,
	datad => \library1|Mux0~312_combout\,
	combout => \library1|Mux0~314_combout\);

-- Location: LCCOMB_X35_Y56_N16
\library1|Mux0~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~319_combout\ = (\vga1|xPixel\(1) & (((!\Mux324~15_combout\) # (!\vga1|yPixel\(1))) # (!\vga1|xPixel\(0)))) # (!\vga1|xPixel\(1) & (\Mux324~15_combout\ & ((\vga1|xPixel\(0)) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(1),
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~319_combout\);

-- Location: LCCOMB_X35_Y56_N14
\library1|Mux0~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~320_combout\ = (\Mux325~18_combout\ & ((\Mux323~14_combout\ & (!\Mux324~15_combout\)) # (!\Mux323~14_combout\ & ((!\library1|Mux0~319_combout\))))) # (!\Mux325~18_combout\ & (!\Mux323~14_combout\ & ((\Mux324~15_combout\) # 
-- (\library1|Mux0~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~319_combout\,
	combout => \library1|Mux0~320_combout\);

-- Location: LCCOMB_X35_Y56_N18
\library1|Mux0~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~318_combout\ = (\Mux323~14_combout\) # (\Mux324~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~318_combout\);

-- Location: LCCOMB_X35_Y56_N28
\library1|Mux0~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~321_combout\ = (\Mux320~4_combout\ & ((\vga1|yPixel\(2)) # ((\library1|Mux0~318_combout\)))) # (!\Mux320~4_combout\ & (\vga1|yPixel\(2) & (!\library1|Mux0~320_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~320_combout\,
	datad => \library1|Mux0~318_combout\,
	combout => \library1|Mux0~321_combout\);

-- Location: LCCOMB_X35_Y56_N30
\library1|Mux0~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~322_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~317_combout\) # ((\library1|Mux0~321_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~317_combout\,
	datac => \library1|Mux0~314_combout\,
	datad => \library1|Mux0~321_combout\,
	combout => \library1|Mux0~322_combout\);

-- Location: LCCOMB_X33_Y59_N12
\library1|Mux0~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~351_combout\ = (\vga1|yPixel\(2) & (((\Mux324~15_combout\ & \Mux323~14_combout\)))) # (!\vga1|yPixel\(2) & (\Mux327~15_combout\ & ((\Mux323~14_combout\) # (!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~15_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~351_combout\);

-- Location: LCCOMB_X34_Y59_N8
\library1|Mux0~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~341_combout\ = (\Mux327~15_combout\) # ((\Mux324~15_combout\ & ((!\Mux323~14_combout\))) # (!\Mux324~15_combout\ & ((\vga1|yPixel\(1)) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux327~15_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~341_combout\);

-- Location: LCCOMB_X34_Y59_N4
\library1|Mux0~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~343_combout\ = (\vga1|yPixel\(1) & (!\Mux324~15_combout\ & (\Mux323~14_combout\ $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~343_combout\);

-- Location: LCCOMB_X34_Y59_N2
\library1|Mux0~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~342_combout\ = (\Mux323~14_combout\ & (\Mux324~15_combout\ & (\vga1|yPixel\(1) $ (!\Mux327~15_combout\)))) # (!\Mux323~14_combout\ & (\vga1|yPixel\(1) & (\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~342_combout\);

-- Location: LCCOMB_X34_Y59_N14
\library1|Mux0~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~344_combout\ = (\vga1|xPixel\(1) & (\vga1|yPixel\(2))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(2) & ((!\library1|Mux0~342_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~343_combout\,
	datad => \library1|Mux0~342_combout\,
	combout => \library1|Mux0~344_combout\);

-- Location: LCCOMB_X34_Y59_N28
\library1|Mux0~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~345_combout\ = (!\Mux327~15_combout\ & ((\vga1|yPixel\(1) & ((!\Mux323~14_combout\) # (!\Mux324~15_combout\))) # (!\vga1|yPixel\(1) & ((\Mux323~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux327~15_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~345_combout\);

-- Location: LCCOMB_X34_Y59_N26
\library1|Mux0~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~346_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~344_combout\ & ((!\library1|Mux0~345_combout\))) # (!\library1|Mux0~344_combout\ & (\library1|Mux0~341_combout\)))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~341_combout\,
	datac => \library1|Mux0~344_combout\,
	datad => \library1|Mux0~345_combout\,
	combout => \library1|Mux0~346_combout\);

-- Location: LCCOMB_X34_Y59_N12
\library1|Mux0~1191\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1191_combout\ = (\vga1|yPixel\(2) & (!\Mux323~14_combout\ & ((\vga1|xPixel\(1)) # (!\vga1|yPixel\(1))))) # (!\vga1|yPixel\(2) & ((\vga1|xPixel\(1) $ (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~1191_combout\);

-- Location: LCCOMB_X34_Y59_N22
\library1|Mux0~1192\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1192_combout\ = (\Mux327~15_combout\ & (((\Mux324~15_combout\)))) # (!\Mux327~15_combout\ & (\library1|Mux0~1191_combout\ & (\Mux323~14_combout\ $ (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux327~15_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~1191_combout\,
	combout => \library1|Mux0~1192_combout\);

-- Location: LCCOMB_X33_Y59_N14
\library1|Mux0~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~347_combout\ = (!\vga1|yPixel\(2) & (\Mux323~14_combout\ & ((!\vga1|yPixel\(1)) # (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~347_combout\);

-- Location: LCCOMB_X34_Y59_N16
\library1|Mux0~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~349_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~1192_combout\ & (!\library1|Mux0~348_combout\)) # (!\library1|Mux0~1192_combout\ & ((\library1|Mux0~347_combout\))))) # (!\Mux327~15_combout\ & (((\library1|Mux0~1192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~348_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~1192_combout\,
	datad => \library1|Mux0~347_combout\,
	combout => \library1|Mux0~349_combout\);

-- Location: LCCOMB_X34_Y59_N30
\library1|Mux0~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~350_combout\ = (\Mux320~4_combout\ & (\Mux325~18_combout\)) # (!\Mux320~4_combout\ & ((\Mux325~18_combout\ & (\library1|Mux0~346_combout\)) # (!\Mux325~18_combout\ & ((\library1|Mux0~349_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~346_combout\,
	datad => \library1|Mux0~349_combout\,
	combout => \library1|Mux0~350_combout\);

-- Location: LCCOMB_X33_Y59_N28
\library1|Mux0~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~340_combout\ = (\Mux327~15_combout\ & (!\Mux323~14_combout\ & ((\Mux324~15_combout\) # (!\vga1|yPixel\(2))))) # (!\Mux327~15_combout\ & (((\Mux324~15_combout\ & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~15_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~340_combout\);

-- Location: LCCOMB_X34_Y59_N0
\library1|Mux0~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~352_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~350_combout\ & (!\library1|Mux0~351_combout\)) # (!\library1|Mux0~350_combout\ & ((!\library1|Mux0~340_combout\))))) # (!\Mux320~4_combout\ & (((\library1|Mux0~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~351_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~350_combout\,
	datad => \library1|Mux0~340_combout\,
	combout => \library1|Mux0~352_combout\);

-- Location: LCCOMB_X39_Y59_N28
\library1|Mux0~1193\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1193_combout\ = (\vga1|yPixel\(2) & ((\Mux323~14_combout\) # ((\vga1|yPixel\(1) & !\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~1193_combout\);

-- Location: LCCOMB_X39_Y59_N6
\library1|Mux0~1194\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1194_combout\ = (\Mux327~15_combout\ & ((\Mux323~14_combout\ & (\library1|Mux0~1193_combout\)) # (!\Mux323~14_combout\ & ((\Mux325~18_combout\))))) # (!\Mux327~15_combout\ & ((\library1|Mux0~1193_combout\ $ (\Mux323~14_combout\)) # 
-- (!\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1193_combout\,
	datab => \Mux327~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1194_combout\);

-- Location: LCCOMB_X39_Y59_N14
\library1|Mux0~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~323_combout\ = (\Mux325~18_combout\ & ((\Mux327~15_combout\ $ (!\vga1|yPixel\(2))) # (!\Mux323~14_combout\))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(2) & (\Mux323~14_combout\)) # (!\vga1|yPixel\(2) & ((\Mux327~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux323~14_combout\,
	datac => \Mux327~15_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~323_combout\);

-- Location: LCCOMB_X35_Y57_N10
\library1|Mux0~1111\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1111_combout\ = (\vga1|yPixel\(2) & (!\vga1|xPixel\(1) & (!\Mux325~18_combout\ & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~1111_combout\);

-- Location: LCCOMB_X35_Y57_N4
\library1|Mux0~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~334_combout\ = (\Mux325~18_combout\ & ((\vga1|yPixel\(2) & ((!\vga1|yPixel\(1)))) # (!\vga1|yPixel\(2) & (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~334_combout\);

-- Location: LCCOMB_X35_Y57_N14
\library1|Mux0~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~335_combout\ = (\vga1|yPixel\(2) & (\vga1|xPixel\(1) $ ((!\Mux325~18_combout\)))) # (!\vga1|yPixel\(2) & ((\vga1|xPixel\(1)) # ((!\Mux325~18_combout\ & \vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~335_combout\);

-- Location: LCCOMB_X35_Y57_N8
\library1|Mux0~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~336_combout\ = (\Mux323~14_combout\ & ((\Mux327~15_combout\) # ((\Mux325~18_combout\ & !\library1|Mux0~335_combout\)))) # (!\Mux323~14_combout\ & (((\library1|Mux0~335_combout\ & !\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~335_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~336_combout\);

-- Location: LCCOMB_X35_Y57_N2
\library1|Mux0~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~337_combout\ = (\library1|Mux0~336_combout\ & ((\library1|Mux0~1111_combout\) # ((!\Mux327~15_combout\)))) # (!\library1|Mux0~336_combout\ & (((\library1|Mux0~334_combout\ & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1111_combout\,
	datab => \library1|Mux0~334_combout\,
	datac => \library1|Mux0~336_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~337_combout\);

-- Location: LCCOMB_X33_Y55_N24
\library1|Mux0~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~332_combout\ = (\Mux325~18_combout\ & (!\vga1|xPixel\(1) & (\vga1|yPixel\(2) $ (!\Mux327~15_combout\)))) # (!\Mux325~18_combout\ & (((\vga1|yPixel\(2) & !\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~332_combout\);

-- Location: LCCOMB_X33_Y55_N12
\library1|Mux0~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~324_combout\ = (\vga1|xPixel\(0)) # (\vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~324_combout\);

-- Location: LCCOMB_X33_Y55_N30
\library1|Mux0~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~325_combout\ = (\vga1|xPixel\(0) & ((\vga1|xPixel\(1)))) # (!\vga1|xPixel\(0) & (\vga1|yPixel\(0) & !\vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~325_combout\);

-- Location: LCCOMB_X33_Y55_N0
\library1|Mux0~1195\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1195_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~325_combout\ & ((\vga1|yPixel\(2)) # (!\Mux327~15_combout\))) # (!\library1|Mux0~325_combout\ & ((\Mux327~15_combout\))))) # (!\Mux325~18_combout\ & (((\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~325_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1195_combout\);

-- Location: LCCOMB_X33_Y55_N14
\library1|Mux0~1196\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1196_combout\ = (\library1|Mux0~324_combout\ & (\library1|Mux0~1195_combout\ & ((!\Mux327~15_combout\) # (!\vga1|yPixel\(2))))) # (!\library1|Mux0~324_combout\ & ((\vga1|yPixel\(2) & ((\library1|Mux0~1195_combout\))) # (!\vga1|yPixel\(2) & 
-- (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~324_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~1195_combout\,
	combout => \library1|Mux0~1196_combout\);

-- Location: LCCOMB_X33_Y55_N4
\library1|Mux0~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~326_combout\ = (\vga1|yPixel\(2) & ((\vga1|xPixel\(1)) # (\Mux327~15_combout\ $ (\Mux325~18_combout\)))) # (!\vga1|yPixel\(2) & (((\Mux327~15_combout\ & !\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~326_combout\);

-- Location: LCCOMB_X33_Y55_N22
\library1|Mux0~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~327_combout\ = (\Mux327~15_combout\ & (\vga1|xPixel\(1) $ (((!\vga1|yPixel\(2) & \Mux325~18_combout\))))) # (!\Mux327~15_combout\ & (((\vga1|yPixel\(2) & !\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~327_combout\);

-- Location: LCCOMB_X33_Y55_N20
\library1|Mux0~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~328_combout\ = (\Mux327~15_combout\ & ((\vga1|yPixel\(2)) # ((!\vga1|xPixel\(1) & !\Mux325~18_combout\)))) # (!\Mux327~15_combout\ & ((\Mux325~18_combout\ & (\vga1|xPixel\(1))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~328_combout\);

-- Location: LCCOMB_X33_Y55_N6
\library1|Mux0~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~329_combout\ = (\library1|Mux0~328_combout\) # ((\vga1|xPixel\(0) & \vga1|yPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(0),
	datad => \library1|Mux0~328_combout\,
	combout => \library1|Mux0~329_combout\);

-- Location: LCCOMB_X33_Y55_N16
\library1|Mux0~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~330_combout\ = (\library1|Mux0~327_combout\ & ((\library1|Mux0~329_combout\ & (!\vga1|xPixel\(1))) # (!\library1|Mux0~329_combout\ & ((\vga1|xPixel\(0)))))) # (!\library1|Mux0~327_combout\ & (\vga1|xPixel\(1) $ (((!\vga1|xPixel\(0) & 
-- \library1|Mux0~329_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \library1|Mux0~327_combout\,
	datad => \library1|Mux0~329_combout\,
	combout => \library1|Mux0~330_combout\);

-- Location: LCCOMB_X33_Y55_N18
\library1|Mux0~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~331_combout\ = (\vga1|yPixel\(1) & (\Mux323~14_combout\)) # (!\vga1|yPixel\(1) & ((\Mux323~14_combout\ & (\library1|Mux0~326_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~330_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~326_combout\,
	datad => \library1|Mux0~330_combout\,
	combout => \library1|Mux0~331_combout\);

-- Location: LCCOMB_X33_Y55_N10
\library1|Mux0~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~333_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~331_combout\ & (!\library1|Mux0~332_combout\)) # (!\library1|Mux0~331_combout\ & ((\library1|Mux0~1196_combout\))))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~331_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~332_combout\,
	datac => \library1|Mux0~1196_combout\,
	datad => \library1|Mux0~331_combout\,
	combout => \library1|Mux0~333_combout\);

-- Location: LCCOMB_X34_Y59_N20
\library1|Mux0~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~338_combout\ = (\Mux324~15_combout\ & ((\Mux320~4_combout\) # ((\library1|Mux0~333_combout\)))) # (!\Mux324~15_combout\ & (!\Mux320~4_combout\ & (\library1|Mux0~337_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~337_combout\,
	datad => \library1|Mux0~333_combout\,
	combout => \library1|Mux0~338_combout\);

-- Location: LCCOMB_X34_Y59_N18
\library1|Mux0~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~339_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~338_combout\ & (\library1|Mux0~1194_combout\)) # (!\library1|Mux0~338_combout\ & ((\library1|Mux0~323_combout\))))) # (!\Mux320~4_combout\ & (((\library1|Mux0~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1194_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~323_combout\,
	datad => \library1|Mux0~338_combout\,
	combout => \library1|Mux0~339_combout\);

-- Location: LCCOMB_X34_Y59_N10
\library1|Mux0~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~353_combout\ = (\Mux321~16_combout\ & (((\Mux322~16_combout\)))) # (!\Mux321~16_combout\ & ((\Mux322~16_combout\ & ((\library1|Mux0~339_combout\))) # (!\Mux322~16_combout\ & (\library1|Mux0~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~352_combout\,
	datac => \Mux322~16_combout\,
	datad => \library1|Mux0~339_combout\,
	combout => \library1|Mux0~353_combout\);

-- Location: LCCOMB_X34_Y59_N24
\library1|Mux0~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~359_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~353_combout\ & (\library1|Mux0~358_combout\)) # (!\library1|Mux0~353_combout\ & ((\library1|Mux0~322_combout\))))) # (!\Mux321~16_combout\ & (((\library1|Mux0~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~358_combout\,
	datac => \library1|Mux0~322_combout\,
	datad => \library1|Mux0~353_combout\,
	combout => \library1|Mux0~359_combout\);

-- Location: LCCOMB_X34_Y56_N4
\library1|Mux0~486\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~486_combout\ = (\Mux327~15_combout\ & ((\Mux325~18_combout\ & ((\Mux324~15_combout\))) # (!\Mux325~18_combout\ & (!\vga1|yPixel\(2) & !\Mux324~15_combout\)))) # (!\Mux327~15_combout\ & (\vga1|yPixel\(2) & ((!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~486_combout\);

-- Location: LCCOMB_X34_Y56_N26
\library1|Mux0~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~483_combout\ = (!\Mux325~18_combout\ & (!\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~483_combout\);

-- Location: LCCOMB_X34_Y56_N12
\library1|Mux0~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~484_combout\ = (\Mux325~18_combout\ & (\Mux327~15_combout\ $ (((\vga1|yPixel\(2)) # (\Mux324~15_combout\))))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(2) & (\Mux327~15_combout\ $ (\Mux324~15_combout\))) # (!\vga1|yPixel\(2) & 
-- (\Mux327~15_combout\ & \Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~484_combout\);

-- Location: LCCOMB_X34_Y56_N2
\library1|Mux0~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~485_combout\ = (!\Mux323~14_combout\ & ((\Mux320~4_combout\ & (\library1|Mux0~483_combout\)) # (!\Mux320~4_combout\ & ((\library1|Mux0~484_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~483_combout\,
	datad => \library1|Mux0~484_combout\,
	combout => \library1|Mux0~485_combout\);

-- Location: LCCOMB_X34_Y56_N10
\library1|Mux0~487\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~487_combout\ = (\library1|Mux0~485_combout\) # ((!\Mux320~4_combout\ & (\Mux323~14_combout\ & \library1|Mux0~486_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~486_combout\,
	datad => \library1|Mux0~485_combout\,
	combout => \library1|Mux0~487_combout\);

-- Location: LCCOMB_X33_Y60_N24
\library1|Mux0~1185\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1185_combout\ = (\Mux323~14_combout\ & (\vga1|xPixel\(1) & (!\Mux324~15_combout\ & \Mux325~18_combout\))) # (!\Mux323~14_combout\ & (((\Mux324~15_combout\) # (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~1185_combout\);

-- Location: LCCOMB_X33_Y60_N26
\library1|Mux0~1186\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1186_combout\ = (\Mux320~4_combout\ & (\Mux325~18_combout\ $ (\Mux324~15_combout\ $ (!\library1|Mux0~1185_combout\)))) # (!\Mux320~4_combout\ & ((\library1|Mux0~1185_combout\) # ((\Mux325~18_combout\ & !\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~1185_combout\,
	combout => \library1|Mux0~1186_combout\);

-- Location: LCCOMB_X33_Y60_N22
\library1|Mux0~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~439_combout\ = (\Mux324~15_combout\) # ((\vga1|xPixel\(1) & \Mux325~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~439_combout\);

-- Location: LCCOMB_X33_Y60_N6
\library1|Mux0~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~437_combout\ = (\Mux324~15_combout\ & (((\Mux325~18_combout\) # (!\vga1|xPixel\(0))) # (!\vga1|xPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~437_combout\);

-- Location: LCCOMB_X33_Y60_N12
\library1|Mux0~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~438_combout\ = (\Mux320~4_combout\ & (((\Mux323~14_combout\)))) # (!\Mux320~4_combout\ & ((\Mux325~18_combout\ & ((\library1|Mux0~437_combout\) # (!\Mux323~14_combout\))) # (!\Mux325~18_combout\ & ((\Mux323~14_combout\) # 
-- (!\library1|Mux0~437_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~437_combout\,
	combout => \library1|Mux0~438_combout\);

-- Location: LCCOMB_X33_Y60_N16
\library1|Mux0~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~440_combout\ = (\Mux320~4_combout\ & ((\Mux325~18_combout\ & ((!\library1|Mux0~438_combout\) # (!\library1|Mux0~439_combout\))) # (!\Mux325~18_combout\ & (\library1|Mux0~439_combout\ $ (!\library1|Mux0~438_combout\))))) # 
-- (!\Mux320~4_combout\ & (((\library1|Mux0~438_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~439_combout\,
	datad => \library1|Mux0~438_combout\,
	combout => \library1|Mux0~440_combout\);

-- Location: LCCOMB_X40_Y60_N14
\library1|Mux0~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~434_combout\ = (\Mux324~15_combout\ & ((\Mux325~18_combout\ $ (\Mux323~14_combout\)) # (!\vga1|xPixel\(1)))) # (!\Mux324~15_combout\ & (\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # (!\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~434_combout\);

-- Location: LCCOMB_X40_Y60_N8
\library1|Mux0~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~435_combout\ = (!\library1|Mux0~434_combout\ & \Mux320~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \library1|Mux0~434_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~435_combout\);

-- Location: LCCOMB_X35_Y56_N0
\library1|Mux0~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~432_combout\ = (\vga1|xPixel\(1)) # ((\Mux320~4_combout\ & ((!\Mux324~15_combout\))) # (!\Mux320~4_combout\ & ((\vga1|xPixel\(0)) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux320~4_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~432_combout\);

-- Location: LCCOMB_X35_Y56_N6
\library1|Mux0~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~433_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~150_combout\) # ((\Mux323~14_combout\)))) # (!\Mux325~18_combout\ & (((!\Mux323~14_combout\ & \library1|Mux0~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~150_combout\,
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~432_combout\,
	combout => \library1|Mux0~433_combout\);

-- Location: LCCOMB_X35_Y56_N22
\library1|Mux0~1183\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1183_combout\ = (\Mux320~4_combout\ & (\Mux324~15_combout\ $ (((!\library1|Mux0~433_combout\) # (!\vga1|xPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux324~15_combout\,
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~433_combout\,
	combout => \library1|Mux0~1183_combout\);

-- Location: LCCOMB_X35_Y56_N4
\library1|Mux0~1184\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1184_combout\ = (\Mux323~14_combout\ & (\library1|Mux0~1183_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~433_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~1183_combout\,
	datad => \library1|Mux0~433_combout\,
	combout => \library1|Mux0~1184_combout\);

-- Location: LCCOMB_X34_Y60_N0
\library1|Mux0~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~436_combout\ = (\vga1|yPixel\(1) & ((\Mux327~15_combout\) # ((\library1|Mux0~1184_combout\)))) # (!\vga1|yPixel\(1) & (!\Mux327~15_combout\ & (\library1|Mux0~435_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~435_combout\,
	datad => \library1|Mux0~1184_combout\,
	combout => \library1|Mux0~436_combout\);

-- Location: LCCOMB_X34_Y60_N14
\library1|Mux0~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~441_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~436_combout\ & ((\library1|Mux0~440_combout\))) # (!\library1|Mux0~436_combout\ & (!\library1|Mux0~1186_combout\)))) # (!\Mux327~15_combout\ & (((\library1|Mux0~436_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~1186_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~440_combout\,
	datad => \library1|Mux0~436_combout\,
	combout => \library1|Mux0~441_combout\);

-- Location: LCCOMB_X33_Y60_N10
\library1|Mux0~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~430_combout\ = (\Mux325~18_combout\ & ((\vga1|xPixel\(1)) # ((\Mux324~15_combout\) # (!\Mux323~14_combout\)))) # (!\Mux325~18_combout\ & ((\Mux323~14_combout\ $ (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~430_combout\);

-- Location: LCCOMB_X33_Y60_N4
\library1|Mux0~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~423_combout\ = (\Mux323~14_combout\ & (\Mux325~18_combout\ $ (((\Mux324~15_combout\) # (!\vga1|xPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux323~14_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~423_combout\);

-- Location: LCCOMB_X33_Y60_N0
\library1|Mux0~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~427_combout\ = (\Mux324~15_combout\ & (!\vga1|xPixel\(1) & ((\Mux325~18_combout\)))) # (!\Mux324~15_combout\ & (!\Mux325~18_combout\ & (\vga1|xPixel\(1) $ (\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~427_combout\);

-- Location: LCCOMB_X33_Y60_N14
\library1|Mux0~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~428_combout\ = (\Mux323~14_combout\) # (((!\Mux325~18_combout\ & !\vga1|yPixel\(1))) # (!\library1|Mux0~427_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~427_combout\,
	combout => \library1|Mux0~428_combout\);

-- Location: LCCOMB_X33_Y60_N18
\library1|Mux0~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~424_combout\ = (\Mux325~18_combout\ & (\vga1|yPixel\(1))) # (!\Mux325~18_combout\ & ((\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~424_combout\);

-- Location: LCCOMB_X33_Y60_N20
\library1|Mux0~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~425_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~424_combout\) # (!\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~424_combout\,
	combout => \library1|Mux0~425_combout\);

-- Location: LCCOMB_X33_Y60_N2
\library1|Mux0~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~426_combout\ = (\Mux323~14_combout\ & (\Mux325~18_combout\ $ ((\Mux324~15_combout\)))) # (!\Mux323~14_combout\ & (\library1|Mux0~425_combout\ $ (((\Mux325~18_combout\ & \Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux323~14_combout\,
	datad => \library1|Mux0~425_combout\,
	combout => \library1|Mux0~426_combout\);

-- Location: LCCOMB_X33_Y60_N28
\library1|Mux0~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~429_combout\ = (\Mux320~4_combout\ & (\Mux327~15_combout\)) # (!\Mux320~4_combout\ & ((\Mux327~15_combout\ & ((\library1|Mux0~426_combout\))) # (!\Mux327~15_combout\ & (\library1|Mux0~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~428_combout\,
	datad => \library1|Mux0~426_combout\,
	combout => \library1|Mux0~429_combout\);

-- Location: LCCOMB_X33_Y60_N8
\library1|Mux0~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~431_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~429_combout\ & (!\library1|Mux0~430_combout\)) # (!\library1|Mux0~429_combout\ & ((!\library1|Mux0~423_combout\))))) # (!\Mux320~4_combout\ & (((\library1|Mux0~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~430_combout\,
	datab => \library1|Mux0~423_combout\,
	datac => \Mux320~4_combout\,
	datad => \library1|Mux0~429_combout\,
	combout => \library1|Mux0~431_combout\);

-- Location: LCCOMB_X34_Y60_N4
\library1|Mux0~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~442_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~431_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~441_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \library1|Mux0~441_combout\,
	datad => \library1|Mux0~431_combout\,
	combout => \library1|Mux0~442_combout\);

-- Location: LCCOMB_X38_Y60_N18
\library1|Mux0~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~470_combout\ = (\Mux324~15_combout\ & ((\Mux327~15_combout\ $ (\Mux323~14_combout\)))) # (!\Mux324~15_combout\ & (\Mux327~15_combout\ & ((\vga1|yPixel\(2)) # (\Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~15_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~470_combout\);

-- Location: LCCOMB_X33_Y59_N10
\library1|Mux0~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~480_combout\ = (\vga1|yPixel\(2) & (\Mux327~15_combout\ & (\Mux324~15_combout\ $ (!\Mux323~14_combout\)))) # (!\vga1|yPixel\(2) & (((\Mux324~15_combout\ & \Mux323~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~15_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux323~14_combout\,
	combout => \library1|Mux0~480_combout\);

-- Location: LCCOMB_X33_Y60_N30
\library1|Mux0~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~471_combout\ = (\vga1|yPixel\(1) & ((\Mux327~15_combout\) # (\vga1|xPixel\(1) $ (\Mux324~15_combout\)))) # (!\vga1|yPixel\(1) & ((\Mux324~15_combout\ & ((\Mux327~15_combout\))) # (!\Mux324~15_combout\ & (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~471_combout\);

-- Location: LCCOMB_X34_Y60_N8
\library1|Mux0~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~475_combout\ = (\vga1|xPixel\(1) & (((\Mux327~15_combout\) # (!\Mux324~15_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux324~15_combout\) # (\vga1|yPixel\(1) $ (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~475_combout\);

-- Location: LCCOMB_X34_Y60_N26
\library1|Mux0~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~472_combout\ = (\vga1|xPixel\(1) & (((\Mux324~15_combout\ & !\Mux327~15_combout\)))) # (!\vga1|xPixel\(1) & (!\Mux324~15_combout\ & ((\vga1|yPixel\(1)) # (\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~472_combout\);

-- Location: LCCOMB_X34_Y60_N24
\library1|Mux0~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~473_combout\ = (\vga1|xPixel\(1) & ((\Mux324~15_combout\ $ (!\Mux327~15_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux324~15_combout\ & ((!\Mux327~15_combout\))) # (!\Mux324~15_combout\ & (!\vga1|yPixel\(1) & \Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~473_combout\);

-- Location: LCCOMB_X34_Y60_N18
\library1|Mux0~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~474_combout\ = (\vga1|yPixel\(2) & (\Mux323~14_combout\)) # (!\vga1|yPixel\(2) & ((\Mux323~14_combout\ & (!\library1|Mux0~472_combout\)) # (!\Mux323~14_combout\ & ((!\library1|Mux0~473_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~472_combout\,
	datad => \library1|Mux0~473_combout\,
	combout => \library1|Mux0~474_combout\);

-- Location: LCCOMB_X34_Y60_N30
\library1|Mux0~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~476_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~474_combout\ & ((\library1|Mux0~475_combout\))) # (!\library1|Mux0~474_combout\ & (!\library1|Mux0~471_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~474_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~471_combout\,
	datac => \library1|Mux0~475_combout\,
	datad => \library1|Mux0~474_combout\,
	combout => \library1|Mux0~476_combout\);

-- Location: LCCOMB_X38_Y59_N24
\library1|Mux0~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~477_combout\ = (\Mux324~15_combout\ & (\vga1|xPixel\(1))) # (!\Mux324~15_combout\ & ((\Mux327~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~477_combout\);

-- Location: LCCOMB_X38_Y59_N26
\library1|Mux0~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~478_combout\ = (\vga1|yPixel\(1) & (((!\Mux324~15_combout\ & !\Mux327~15_combout\)) # (!\vga1|xPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~478_combout\);

-- Location: LCCOMB_X38_Y59_N16
\library1|Mux0~1181\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1181_combout\ = (\library1|Mux0~477_combout\ & (\Mux323~14_combout\ & (\vga1|yPixel\(2) $ (\library1|Mux0~478_combout\)))) # (!\library1|Mux0~477_combout\ & (\library1|Mux0~478_combout\ & (\Mux323~14_combout\ $ (\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~478_combout\,
	datad => \library1|Mux0~477_combout\,
	combout => \library1|Mux0~1181_combout\);

-- Location: LCCOMB_X38_Y59_N6
\library1|Mux0~1182\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1182_combout\ = (\vga1|yPixel\(2) & ((\Mux324~15_combout\ $ (\library1|Mux0~1181_combout\)))) # (!\vga1|yPixel\(2) & (\library1|Mux0~1181_combout\ & ((!\Mux324~15_combout\) # (!\library1|Mux0~477_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~477_combout\,
	datac => \Mux324~15_combout\,
	datad => \library1|Mux0~1181_combout\,
	combout => \library1|Mux0~1182_combout\);

-- Location: LCCOMB_X34_Y60_N16
\library1|Mux0~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~479_combout\ = (\Mux325~18_combout\ & ((\Mux320~4_combout\) # ((\library1|Mux0~476_combout\)))) # (!\Mux325~18_combout\ & (!\Mux320~4_combout\ & ((\library1|Mux0~1182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux320~4_combout\,
	datac => \library1|Mux0~476_combout\,
	datad => \library1|Mux0~1182_combout\,
	combout => \library1|Mux0~479_combout\);

-- Location: LCCOMB_X34_Y60_N22
\library1|Mux0~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~481_combout\ = (\Mux320~4_combout\ & ((\library1|Mux0~479_combout\ & ((!\library1|Mux0~480_combout\))) # (!\library1|Mux0~479_combout\ & (!\library1|Mux0~470_combout\)))) # (!\Mux320~4_combout\ & (((\library1|Mux0~479_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~470_combout\,
	datac => \library1|Mux0~480_combout\,
	datad => \library1|Mux0~479_combout\,
	combout => \library1|Mux0~481_combout\);

-- Location: LCCOMB_X34_Y56_N18
\library1|Mux0~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~467_combout\ = (\vga1|yPixel\(2) & ((\Mux325~18_combout\ $ (!\Mux320~4_combout\)))) # (!\vga1|yPixel\(2) & (\vga1|yPixel\(1) & ((!\Mux320~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~467_combout\);

-- Location: LCCOMB_X34_Y56_N20
\library1|Mux0~1114\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1114_combout\ = (\Mux324~15_combout\ & ((\vga1|yPixel\(2)) # ((\library1|Mux0~467_combout\) # (!\Mux325~18_combout\)))) # (!\Mux324~15_combout\ & (\library1|Mux0~467_combout\ & ((\vga1|yPixel\(2)) # (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~467_combout\,
	combout => \library1|Mux0~1114_combout\);

-- Location: LCCOMB_X34_Y56_N14
\library1|Mux0~1115\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~1115_combout\ = (\vga1|yPixel\(2) & (((\library1|Mux0~467_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux325~18_combout\ & ((!\library1|Mux0~467_combout\) # (!\Mux324~15_combout\))) # (!\Mux325~18_combout\ & ((\library1|Mux0~467_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~15_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \library1|Mux0~467_combout\,
	combout => \library1|Mux0~1115_combout\);

-- Location: LCCOMB_X34_Y56_N0
\library1|Mux0~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~468_combout\ = (\Mux320~4_combout\ & (\Mux327~15_combout\ $ ((\library1|Mux0~1114_combout\)))) # (!\Mux320~4_combout\ & (\library1|Mux0~1115_combout\ $ (((\Mux327~15_combout\) # (!\library1|Mux0~1114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~15_combout\,
	datab => \library1|Mux0~1114_combout\,
	datac => \library1|Mux0~1115_combout\,
	datad => \Mux320~4_combout\,
	combout => \library1|Mux0~468_combout\);

-- Location: LCCOMB_X34_Y57_N8
\library1|Mux0~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~443_combout\ = (\vga1|yPixel\(1)) # ((!\Mux324~15_combout\ & \vga1|yPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \Mux324~15_combout\,
	datad => \vga1|yPixel\(0),
	combout => \library1|Mux0~443_combout\);

-- Location: LCCOMB_X34_Y57_N30
\library1|Mux0~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~444_combout\ = (\Mux320~4_combout\ & ((\Mux325~18_combout\ $ (!\Mux324~15_combout\)))) # (!\Mux320~4_combout\ & (\Mux324~15_combout\ & (\vga1|xPixel\(0) $ (!\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux320~4_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~444_combout\);

-- Location: LCCOMB_X34_Y57_N12
\library1|Mux0~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~445_combout\ = (\vga1|xPixel\(0) & ((\Mux320~4_combout\ & ((\Mux324~15_combout\))) # (!\Mux320~4_combout\ & (!\Mux325~18_combout\)))) # (!\vga1|xPixel\(0) & (((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux320~4_combout\,
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~445_combout\);

-- Location: LCCOMB_X34_Y57_N26
\library1|Mux0~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~446_combout\ = (\library1|Mux0~445_combout\ & ((\library1|Mux0~444_combout\) # ((\vga1|yPixel\(2) & \Mux325~18_combout\)))) # (!\library1|Mux0~445_combout\ & (\vga1|yPixel\(2) & (!\Mux325~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~444_combout\,
	datad => \library1|Mux0~445_combout\,
	combout => \library1|Mux0~446_combout\);

-- Location: LCCOMB_X34_Y57_N28
\library1|Mux0~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~447_combout\ = (\Mux325~18_combout\ & ((\library1|Mux0~445_combout\) # ((!\vga1|yPixel\(2) & \library1|Mux0~444_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~18_combout\,
	datac => \library1|Mux0~444_combout\,
	datad => \library1|Mux0~445_combout\,
	combout => \library1|Mux0~447_combout\);

-- Location: LCCOMB_X34_Y57_N14
\library1|Mux0~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~448_combout\ = (\library1|Mux0~444_combout\ & (\library1|Mux0~447_combout\ $ (((\Mux327~15_combout\) # (!\library1|Mux0~446_combout\))))) # (!\library1|Mux0~444_combout\ & (\library1|Mux0~447_combout\ & (\Mux327~15_combout\ $ 
-- (!\library1|Mux0~446_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~444_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~446_combout\,
	datad => \library1|Mux0~447_combout\,
	combout => \library1|Mux0~448_combout\);

-- Location: LCCOMB_X34_Y57_N24
\library1|Mux0~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~449_combout\ = (\library1|Mux0~446_combout\ & (!\library1|Mux0~444_combout\ & (!\Mux327~15_combout\))) # (!\library1|Mux0~446_combout\ & (\library1|Mux0~447_combout\ & (\library1|Mux0~444_combout\ $ (!\Mux327~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~444_combout\,
	datab => \Mux327~15_combout\,
	datac => \library1|Mux0~446_combout\,
	datad => \library1|Mux0~447_combout\,
	combout => \library1|Mux0~449_combout\);

-- Location: LCCOMB_X34_Y57_N18
\library1|Mux0~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~450_combout\ = \library1|Mux0~448_combout\ $ (((!\library1|Mux0~449_combout\) # (!\library1|Mux0~443_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \library1|Mux0~443_combout\,
	datac => \library1|Mux0~448_combout\,
	datad => \library1|Mux0~449_combout\,
	combout => \library1|Mux0~450_combout\);

-- Location: LCCOMB_X35_Y61_N30
\library1|Mux0~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~454_combout\ = (\Mux325~18_combout\ & (((!\vga1|yPixel\(2))))) # (!\Mux325~18_combout\ & (\Mux320~4_combout\ & ((!\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~454_combout\);

-- Location: LCCOMB_X35_Y61_N28
\library1|Mux0~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~451_combout\ = (\Mux320~4_combout\ & ((\Mux325~18_combout\ & (!\vga1|yPixel\(2))) # (!\Mux325~18_combout\ & ((!\Mux324~15_combout\))))) # (!\Mux320~4_combout\ & (\vga1|yPixel\(2) & (\Mux325~18_combout\ & !\Mux324~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~18_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~451_combout\);

-- Location: LCCOMB_X35_Y61_N18
\library1|Mux0~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~452_combout\ = (\Mux325~18_combout\ & (\Mux320~4_combout\ $ ((!\vga1|yPixel\(2))))) # (!\Mux325~18_combout\ & (((\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~15_combout\,
	datad => \Mux325~18_combout\,
	combout => \library1|Mux0~452_combout\);

-- Location: LCCOMB_X35_Y61_N0
\library1|Mux0~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~453_combout\ = (\Mux327~15_combout\ & (((\vga1|yPixel\(1))))) # (!\Mux327~15_combout\ & ((\Mux320~4_combout\ & ((\library1|Mux0~452_combout\))) # (!\Mux320~4_combout\ & ((\vga1|yPixel\(1)) # (!\library1|Mux0~452_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~452_combout\,
	combout => \library1|Mux0~453_combout\);

-- Location: LCCOMB_X35_Y61_N12
\library1|Mux0~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~455_combout\ = (\Mux327~15_combout\ & ((\library1|Mux0~453_combout\ & (\library1|Mux0~454_combout\)) # (!\library1|Mux0~453_combout\ & ((\library1|Mux0~451_combout\))))) # (!\Mux327~15_combout\ & (((\library1|Mux0~453_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~454_combout\,
	datab => \library1|Mux0~451_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~453_combout\,
	combout => \library1|Mux0~455_combout\);

-- Location: LCCOMB_X38_Y57_N12
\library1|Mux0~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~457_combout\ = (\vga1|yPixel\(1) & ((\vga1|yPixel\(0)) # ((\Mux325~18_combout\) # (\vga1|xPixel\(0))))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(0) & ((\vga1|yPixel\(0)) # (\Mux325~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~18_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~457_combout\);

-- Location: LCCOMB_X38_Y60_N0
\library1|Mux0~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~456_combout\ = (\vga1|xPixel\(0) & ((\vga1|yPixel\(1)) # ((\vga1|yPixel\(0) & !\Mux325~18_combout\)))) # (!\vga1|xPixel\(0) & ((\Mux325~18_combout\ & ((!\vga1|yPixel\(1)))) # (!\Mux325~18_combout\ & (\vga1|yPixel\(0) & \vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(0),
	datac => \Mux325~18_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~456_combout\);

-- Location: LCCOMB_X34_Y60_N2
\library1|Mux0~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~458_combout\ = (\library1|Mux0~456_combout\ & ((\Mux324~15_combout\ & (!\library1|Mux0~457_combout\)) # (!\Mux324~15_combout\ & ((\Mux327~15_combout\))))) # (!\library1|Mux0~456_combout\ & (\Mux324~15_combout\ $ (((\Mux327~15_combout\) # 
-- (!\library1|Mux0~457_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~457_combout\,
	datab => \Mux324~15_combout\,
	datac => \library1|Mux0~456_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~458_combout\);

-- Location: LCCOMB_X34_Y56_N6
\library1|Mux0~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~463_combout\ = (\Mux325~18_combout\ & (\vga1|yPixel\(2) $ (((\Mux327~15_combout\) # (!\Mux324~15_combout\))))) # (!\Mux325~18_combout\ & ((\vga1|yPixel\(2) & (\Mux327~15_combout\ & !\Mux324~15_combout\)) # (!\vga1|yPixel\(2) & 
-- ((\Mux324~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux327~15_combout\,
	datad => \Mux324~15_combout\,
	combout => \library1|Mux0~463_combout\);

-- Location: LCCOMB_X34_Y56_N8
\library1|Mux0~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~464_combout\ = \vga1|yPixel\(2) $ (((\Mux320~4_combout\ & \library1|Mux0~463_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~463_combout\,
	combout => \library1|Mux0~464_combout\);

-- Location: LCCOMB_X34_Y57_N16
\library1|Mux0~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~459_combout\ = (\Mux327~15_combout\ & ((\Mux325~18_combout\ $ (\Mux324~15_combout\)) # (!\vga1|yPixel\(1)))) # (!\Mux327~15_combout\ & (((\Mux325~18_combout\) # (\Mux324~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~18_combout\,
	datac => \Mux324~15_combout\,
	datad => \Mux327~15_combout\,
	combout => \library1|Mux0~459_combout\);

-- Location: LCCOMB_X34_Y57_N6
\library1|Mux0~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~460_combout\ = (\vga1|xPixel\(0) & (((\vga1|yPixel\(1))))) # (!\vga1|xPixel\(0) & (!\library1|Mux0~459_combout\ & ((\vga1|yPixel\(0)) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \library1|Mux0~459_combout\,
	combout => \library1|Mux0~460_combout\);

-- Location: LCCOMB_X34_Y57_N20
\library1|Mux0~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~461_combout\ = (\Mux325~18_combout\ & (((!\Mux327~15_combout\ & !\library1|Mux0~460_combout\)) # (!\Mux324~15_combout\))) # (!\Mux325~18_combout\ & ((\Mux324~15_combout\) # ((\Mux327~15_combout\ & !\library1|Mux0~460_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~18_combout\,
	datab => \Mux324~15_combout\,
	datac => \Mux327~15_combout\,
	datad => \library1|Mux0~460_combout\,
	combout => \library1|Mux0~461_combout\);

-- Location: LCCOMB_X34_Y57_N22
\library1|Mux0~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~462_combout\ = (\vga1|xPixel\(0) & ((!\library1|Mux0~461_combout\))) # (!\vga1|xPixel\(0) & (\library1|Mux0~460_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~460_combout\,
	datac => \vga1|xPixel\(0),
	datad => \library1|Mux0~461_combout\,
	combout => \library1|Mux0~462_combout\);

-- Location: LCCOMB_X34_Y60_N28
\library1|Mux0~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~465_combout\ = (\Mux320~4_combout\ & (((\library1|Mux0~464_combout\)))) # (!\Mux320~4_combout\ & ((\library1|Mux0~464_combout\ & (\library1|Mux0~458_combout\)) # (!\library1|Mux0~464_combout\ & ((\library1|Mux0~462_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux320~4_combout\,
	datab => \library1|Mux0~458_combout\,
	datac => \library1|Mux0~464_combout\,
	datad => \library1|Mux0~462_combout\,
	combout => \library1|Mux0~465_combout\);

-- Location: LCCOMB_X34_Y60_N6
\library1|Mux0~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~466_combout\ = (\vga1|xPixel\(1) & (\Mux323~14_combout\)) # (!\vga1|xPixel\(1) & ((\Mux323~14_combout\ & (\library1|Mux0~455_combout\)) # (!\Mux323~14_combout\ & ((\library1|Mux0~465_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~14_combout\,
	datac => \library1|Mux0~455_combout\,
	datad => \library1|Mux0~465_combout\,
	combout => \library1|Mux0~466_combout\);

-- Location: LCCOMB_X34_Y60_N12
\library1|Mux0~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~469_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~466_combout\ & (\library1|Mux0~468_combout\)) # (!\library1|Mux0~466_combout\ & ((\library1|Mux0~450_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~466_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~468_combout\,
	datac => \library1|Mux0~450_combout\,
	datad => \library1|Mux0~466_combout\,
	combout => \library1|Mux0~469_combout\);

-- Location: LCCOMB_X34_Y60_N20
\library1|Mux0~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~482_combout\ = (\Mux321~16_combout\ & (\Mux322~16_combout\)) # (!\Mux321~16_combout\ & ((\Mux322~16_combout\ & ((\library1|Mux0~469_combout\))) # (!\Mux322~16_combout\ & (\library1|Mux0~481_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \Mux322~16_combout\,
	datac => \library1|Mux0~481_combout\,
	datad => \library1|Mux0~469_combout\,
	combout => \library1|Mux0~482_combout\);

-- Location: LCCOMB_X34_Y60_N10
\library1|Mux0~488\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~488_combout\ = (\Mux321~16_combout\ & ((\library1|Mux0~482_combout\ & (\library1|Mux0~487_combout\)) # (!\library1|Mux0~482_combout\ & ((\library1|Mux0~442_combout\))))) # (!\Mux321~16_combout\ & (((\library1|Mux0~482_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~16_combout\,
	datab => \library1|Mux0~487_combout\,
	datac => \library1|Mux0~442_combout\,
	datad => \library1|Mux0~482_combout\,
	combout => \library1|Mux0~488_combout\);

-- Location: LCCOMB_X35_Y62_N18
\library1|Mux0~489\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~489_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~422_combout\ & ((\library1|Mux0~488_combout\))) # (!\library1|Mux0~422_combout\ & (\library1|Mux0~359_combout\)))) # (!\vga1|yPixel\(3) & (\library1|Mux0~422_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \library1|Mux0~422_combout\,
	datac => \library1|Mux0~359_combout\,
	datad => \library1|Mux0~488_combout\,
	combout => \library1|Mux0~489_combout\);

-- Location: LCCOMB_X35_Y62_N16
\library1|Mux0~490\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~490_combout\ = (\vga1|yPixel\(4) & (\vga1|xPixel\(2))) # (!\vga1|yPixel\(4) & ((\vga1|xPixel\(2) & (\library1|Mux0~301_combout\)) # (!\vga1|xPixel\(2) & ((\library1|Mux0~489_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~301_combout\,
	datad => \library1|Mux0~489_combout\,
	combout => \library1|Mux0~490_combout\);

-- Location: LCCOMB_X35_Y62_N6
\library1|Mux0~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~558_combout\ = (\vga1|yPixel\(4) & ((\library1|Mux0~490_combout\ & (\library1|Mux0~557_combout\)) # (!\library1|Mux0~490_combout\ & ((\library1|Mux0~211_combout\))))) # (!\vga1|yPixel\(4) & (((\library1|Mux0~490_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~557_combout\,
	datab => \vga1|yPixel\(4),
	datac => \library1|Mux0~211_combout\,
	datad => \library1|Mux0~490_combout\,
	combout => \library1|Mux0~558_combout\);

-- Location: LCCOMB_X35_Y62_N22
\R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R~0_combout\ = (\vga1|display_area~q\ & ((\vga1|xPixel\(3) & ((\library1|Mux0~558_combout\))) # (!\vga1|xPixel\(3) & (\library1|Mux0~1108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \vga1|display_area~q\,
	datac => \library1|Mux0~1108_combout\,
	datad => \library1|Mux0~558_combout\,
	combout => \R~0_combout\);

-- Location: LCCOMB_X34_Y62_N16
\VGA_R[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[0]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_R[0]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N17
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

-- Location: LCCOMB_X34_Y62_N30
\VGA_R[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[1]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_R[1]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N31
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

-- Location: FF_X34_Y62_N13
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \R~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: LCCOMB_X34_Y62_N26
\VGA_R[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[3]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_R[3]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N27
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

-- Location: LCCOMB_X34_Y62_N24
\VGA_R[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[4]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_R[4]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N25
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

-- Location: LCCOMB_X36_Y62_N20
\VGA_R[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_R[5]~reg0feeder_combout\);

-- Location: FF_X36_Y62_N21
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

-- Location: LCCOMB_X34_Y62_N6
\VGA_R[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_R[6]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N7
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

-- Location: LCCOMB_X34_Y62_N20
\VGA_R[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[7]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_R[7]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N21
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

-- Location: LCCOMB_X35_Y62_N28
\VGA_G[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[0]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~0_combout\,
	combout => \VGA_G[0]~reg0feeder_combout\);

-- Location: FF_X35_Y62_N29
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

-- Location: LCCOMB_X34_Y62_N2
\VGA_G[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[1]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_G[1]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N3
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

-- Location: LCCOMB_X34_Y62_N0
\VGA_G[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[2]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_G[2]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N1
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

-- Location: LCCOMB_X34_Y62_N22
\VGA_G[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[3]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_G[3]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N23
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

-- Location: LCCOMB_X34_Y62_N4
\VGA_G[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[4]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_G[4]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N5
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

-- Location: LCCOMB_X34_Y62_N14
\VGA_G[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[5]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_G[5]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N15
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

-- Location: LCCOMB_X34_Y62_N28
\VGA_G[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[6]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_G[6]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N29
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

-- Location: LCCOMB_X34_Y62_N18
\VGA_G[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[7]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_G[7]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N19
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

-- Location: LCCOMB_X36_Y62_N22
\VGA_B[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[0]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_B[0]~reg0feeder_combout\);

-- Location: FF_X36_Y62_N23
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

-- Location: LCCOMB_X36_Y62_N8
\VGA_B[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[1]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_B[1]~reg0feeder_combout\);

-- Location: FF_X36_Y62_N9
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

-- Location: FF_X35_Y62_N23
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: LCCOMB_X36_Y62_N10
\VGA_B[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[3]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_B[3]~reg0feeder_combout\);

-- Location: FF_X36_Y62_N11
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

-- Location: LCCOMB_X36_Y62_N12
\VGA_B[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[4]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_B[4]~reg0feeder_combout\);

-- Location: FF_X36_Y62_N13
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

-- Location: LCCOMB_X35_Y62_N4
\VGA_B[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[5]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~0_combout\,
	combout => \VGA_B[5]~reg0feeder_combout\);

-- Location: FF_X35_Y62_N5
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

-- Location: LCCOMB_X34_Y62_N8
\VGA_B[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[6]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~0_combout\,
	combout => \VGA_B[6]~reg0feeder_combout\);

-- Location: FF_X34_Y62_N9
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

-- Location: LCCOMB_X35_Y62_N2
\VGA_B[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B[7]~reg0feeder_combout\ = \R~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~0_combout\,
	combout => \VGA_B[7]~reg0feeder_combout\);

-- Location: FF_X35_Y62_N3
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

-- Location: LCCOMB_X36_Y55_N2
\vga1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~0_combout\ = (!\vga1|xPixel\(6) & !\vga1|xPixel\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(6),
	datad => \vga1|xPixel\(5),
	combout => \vga1|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y55_N6
\vga1|ph_sync~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~3_combout\ = (((!\vga1|xPixel\(0)) # (!\vga1|xPixel\(3))) # (!\vga1|xPixel\(1))) # (!\vga1|xPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(3),
	datad => \vga1|xPixel\(0),
	combout => \vga1|ph_sync~3_combout\);

-- Location: LCCOMB_X36_Y55_N24
\vga1|ph_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~0_combout\ = (\vga1|xPixel\(3) & ((\vga1|xPixel\(2)) # ((\vga1|xPixel\(1) & \vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(3),
	datad => \vga1|xPixel\(0),
	combout => \vga1|ph_sync~0_combout\);

-- Location: LCCOMB_X36_Y55_N22
\vga1|ph_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~1_combout\ = (\vga1|xPixel\(6) & (\vga1|xPixel\(5) & ((\vga1|xPixel\(4)) # (\vga1|ph_sync~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(4),
	datad => \vga1|ph_sync~0_combout\,
	combout => \vga1|ph_sync~1_combout\);

-- Location: LCCOMB_X36_Y55_N20
\vga1|ph_sync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~2_combout\ = (\vga1|xPixel\(8)) # (((\vga1|ph_sync~1_combout\) # (!\vga1|xPixel\(7))) # (!\vga1|xPixel\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(9),
	datac => \vga1|ph_sync~1_combout\,
	datad => \vga1|xPixel\(7),
	combout => \vga1|ph_sync~2_combout\);

-- Location: LCCOMB_X36_Y55_N12
\vga1|ph_sync~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~4_combout\ = (!\vga1|ph_sync~2_combout\ & ((\vga1|xPixel\(4)) # ((!\vga1|ph_sync~3_combout\) # (!\vga1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|Equal0~0_combout\,
	datac => \vga1|ph_sync~3_combout\,
	datad => \vga1|ph_sync~2_combout\,
	combout => \vga1|ph_sync~4_combout\);

-- Location: FF_X36_Y55_N13
\vga1|ph_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|ph_sync~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|ph_sync~q\);

-- Location: LCCOMB_X43_Y57_N28
\vga1|pv_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~0_combout\ = (\vga1|yPixel\(4)) # ((\vga1|yPixel\(2)) # ((!\vga1|yPixel\(3)) # (!\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(3),
	combout => \vga1|pv_sync~0_combout\);

-- Location: LCCOMB_X43_Y57_N12
\vga1|pv_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~1_combout\ = (\vga1|LessThan1~0_combout\ & (!\vga1|pv_sync~0_combout\ & !\vga1|yPixel\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|LessThan1~0_combout\,
	datab => \vga1|pv_sync~0_combout\,
	datac => \vga1|yPixel\(9),
	combout => \vga1|pv_sync~1_combout\);

-- Location: FF_X43_Y57_N13
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


