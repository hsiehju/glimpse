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

-- DATE "04/04/2016 19:51:12"

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
SIGNAL \vga1|Add1~0_combout\ : std_logic;
SIGNAL \vga1|Add0~0_combout\ : std_logic;
SIGNAL \vga1|Add0~1\ : std_logic;
SIGNAL \vga1|Add0~2_combout\ : std_logic;
SIGNAL \vga1|xPixel~3_combout\ : std_logic;
SIGNAL \vga1|Add0~3\ : std_logic;
SIGNAL \vga1|Add0~4_combout\ : std_logic;
SIGNAL \vga1|Add0~5\ : std_logic;
SIGNAL \vga1|Add0~6_combout\ : std_logic;
SIGNAL \vga1|xPixel~4_combout\ : std_logic;
SIGNAL \vga1|Add0~7\ : std_logic;
SIGNAL \vga1|Add0~8_combout\ : std_logic;
SIGNAL \vga1|xPixel~2_combout\ : std_logic;
SIGNAL \vga1|Add0~9\ : std_logic;
SIGNAL \vga1|Add0~10_combout\ : std_logic;
SIGNAL \vga1|Add0~11\ : std_logic;
SIGNAL \vga1|Add0~12_combout\ : std_logic;
SIGNAL \vga1|Add0~13\ : std_logic;
SIGNAL \vga1|Add0~14_combout\ : std_logic;
SIGNAL \vga1|Add0~15\ : std_logic;
SIGNAL \vga1|Add0~16_combout\ : std_logic;
SIGNAL \vga1|xPixel~1_combout\ : std_logic;
SIGNAL \vga1|Equal0~0_combout\ : std_logic;
SIGNAL \vga1|Add0~17\ : std_logic;
SIGNAL \vga1|Add0~18_combout\ : std_logic;
SIGNAL \vga1|xPixel~0_combout\ : std_logic;
SIGNAL \vga1|Equal0~1_combout\ : std_logic;
SIGNAL \vga1|Equal0~2_combout\ : std_logic;
SIGNAL \vga1|Add1~1\ : std_logic;
SIGNAL \vga1|Add1~2_combout\ : std_logic;
SIGNAL \vga1|Add1~15\ : std_logic;
SIGNAL \vga1|Add1~16_combout\ : std_logic;
SIGNAL \vga1|Equal1~0_combout\ : std_logic;
SIGNAL \vga1|Equal1~1_combout\ : std_logic;
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
SIGNAL \Mux145~0_combout\ : std_logic;
SIGNAL \vga1|display_area~0_combout\ : std_logic;
SIGNAL \vga1|display_area~1_combout\ : std_logic;
SIGNAL \vga1|display_area~q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux321~0_combout\ : std_logic;
SIGNAL \Mux321~9_combout\ : std_logic;
SIGNAL \Mux137~0_combout\ : std_logic;
SIGNAL \Mux233~0_combout\ : std_logic;
SIGNAL \Mux241~0_combout\ : std_logic;
SIGNAL \Mux321~5_combout\ : std_logic;
SIGNAL \Mux321~6_combout\ : std_logic;
SIGNAL \Mux321~7_combout\ : std_logic;
SIGNAL \Mux321~1_combout\ : std_logic;
SIGNAL \Mux137~1_combout\ : std_logic;
SIGNAL \Mux238~0_combout\ : std_logic;
SIGNAL \Mux321~2_combout\ : std_logic;
SIGNAL \Mux321~3_combout\ : std_logic;
SIGNAL \Mux321~4_combout\ : std_logic;
SIGNAL \Mux321~8_combout\ : std_logic;
SIGNAL \Mux321~10_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux326~13_combout\ : std_logic;
SIGNAL \Mux326~3_combout\ : std_logic;
SIGNAL \Mux326~4_combout\ : std_logic;
SIGNAL \Mux326~5_combout\ : std_logic;
SIGNAL \Mux326~6_combout\ : std_logic;
SIGNAL \Mux326~1_combout\ : std_logic;
SIGNAL \Mux326~2_combout\ : std_logic;
SIGNAL \Mux326~7_combout\ : std_logic;
SIGNAL \Mux326~0_combout\ : std_logic;
SIGNAL \Mux326~8_combout\ : std_logic;
SIGNAL \Mux326~9_combout\ : std_logic;
SIGNAL \Mux326~10_combout\ : std_logic;
SIGNAL \Mux326~11_combout\ : std_logic;
SIGNAL \Mux326~12_combout\ : std_logic;
SIGNAL \Mux326~14_combout\ : std_logic;
SIGNAL \Mux322~0_combout\ : std_logic;
SIGNAL \Mux322~13_combout\ : std_logic;
SIGNAL \Mux322~2_combout\ : std_logic;
SIGNAL \Mux322~3_combout\ : std_logic;
SIGNAL \Mux322~4_combout\ : std_logic;
SIGNAL \Mux322~1_combout\ : std_logic;
SIGNAL \Mux322~5_combout\ : std_logic;
SIGNAL \Mux322~8_combout\ : std_logic;
SIGNAL \Mux322~7_combout\ : std_logic;
SIGNAL \Mux322~9_combout\ : std_logic;
SIGNAL \Mux234~0_combout\ : std_logic;
SIGNAL \Mux322~6_combout\ : std_logic;
SIGNAL \Mux322~10_combout\ : std_logic;
SIGNAL \Mux322~14_combout\ : std_logic;
SIGNAL \Mux325~7_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux325~9_combout\ : std_logic;
SIGNAL \vga1|ph_sync~4_combout\ : std_logic;
SIGNAL \Mux325~8_combout\ : std_logic;
SIGNAL \Mux325~10_combout\ : std_logic;
SIGNAL \Mux325~0_combout\ : std_logic;
SIGNAL \Mux325~1_combout\ : std_logic;
SIGNAL \Mux325~2_combout\ : std_logic;
SIGNAL \Mux325~3_combout\ : std_logic;
SIGNAL \Mux325~4_combout\ : std_logic;
SIGNAL \Mux325~5_combout\ : std_logic;
SIGNAL \Mux325~6_combout\ : std_logic;
SIGNAL \Mux325~11_combout\ : std_logic;
SIGNAL \library1|Mux0~26_combout\ : std_logic;
SIGNAL \Mux324~7_combout\ : std_logic;
SIGNAL \Mux324~13_combout\ : std_logic;
SIGNAL \Mux324~8_combout\ : std_logic;
SIGNAL \Mux324~9_combout\ : std_logic;
SIGNAL \Mux324~10_combout\ : std_logic;
SIGNAL \Mux324~2_combout\ : std_logic;
SIGNAL \Mux324~3_combout\ : std_logic;
SIGNAL \Mux321~11_combout\ : std_logic;
SIGNAL \Mux324~4_combout\ : std_logic;
SIGNAL \Mux324~5_combout\ : std_logic;
SIGNAL \Mux324~6_combout\ : std_logic;
SIGNAL \Mux324~11_combout\ : std_logic;
SIGNAL \Mux324~12_combout\ : std_logic;
SIGNAL \Mux327~5_combout\ : std_logic;
SIGNAL \Mux327~4_combout\ : std_logic;
SIGNAL \Mux327~0_combout\ : std_logic;
SIGNAL \Mux327~1_combout\ : std_logic;
SIGNAL \Mux327~2_combout\ : std_logic;
SIGNAL \Mux327~3_combout\ : std_logic;
SIGNAL \Mux327~6_combout\ : std_logic;
SIGNAL \Mux327~7_combout\ : std_logic;
SIGNAL \Mux327~8_combout\ : std_logic;
SIGNAL \Mux327~9_combout\ : std_logic;
SIGNAL \Mux327~10_combout\ : std_logic;
SIGNAL \Mux327~11_combout\ : std_logic;
SIGNAL \Mux327~12_combout\ : std_logic;
SIGNAL \Mux327~13_combout\ : std_logic;
SIGNAL \Mux327~14_combout\ : std_logic;
SIGNAL \Mux323~9_combout\ : std_logic;
SIGNAL \Mux323~2_combout\ : std_logic;
SIGNAL \Mux323~6_combout\ : std_logic;
SIGNAL \Mux323~3_combout\ : std_logic;
SIGNAL \Mux323~4_combout\ : std_logic;
SIGNAL \Mux323~5_combout\ : std_logic;
SIGNAL \Mux323~7_combout\ : std_logic;
SIGNAL \Mux323~0_combout\ : std_logic;
SIGNAL \Mux323~1_combout\ : std_logic;
SIGNAL \Mux323~11_combout\ : std_logic;
SIGNAL \Mux323~12_combout\ : std_logic;
SIGNAL \Mux323~8_combout\ : std_logic;
SIGNAL \Mux323~10_combout\ : std_logic;
SIGNAL \library1|Mux0~649_combout\ : std_logic;
SIGNAL \library1|Mux0~222_combout\ : std_logic;
SIGNAL \library1|Mux0~648_combout\ : std_logic;
SIGNAL \library1|Mux0~650_combout\ : std_logic;
SIGNAL \library1|Mux0~651_combout\ : std_logic;
SIGNAL \library1|Mux0~652_combout\ : std_logic;
SIGNAL \library1|Mux0~653_combout\ : std_logic;
SIGNAL \library1|Mux0~107_combout\ : std_logic;
SIGNAL \library1|Mux0~654_combout\ : std_logic;
SIGNAL \library1|Mux0~655_combout\ : std_logic;
SIGNAL \Mux322~11_combout\ : std_logic;
SIGNAL \Mux322~12_combout\ : std_logic;
SIGNAL \library1|Mux0~643_combout\ : std_logic;
SIGNAL \library1|Mux0~644_combout\ : std_logic;
SIGNAL \library1|Mux0~645_combout\ : std_logic;
SIGNAL \library1|Mux0~646_combout\ : std_logic;
SIGNAL \library1|Mux0~647_combout\ : std_logic;
SIGNAL \library1|Mux0~656_combout\ : std_logic;
SIGNAL \library1|Mux0~374_combout\ : std_logic;
SIGNAL \library1|Mux0~790_combout\ : std_logic;
SIGNAL \library1|Mux0~199_combout\ : std_logic;
SIGNAL \library1|Mux0~791_combout\ : std_logic;
SIGNAL \library1|Mux0~792_combout\ : std_logic;
SIGNAL \library1|Mux0~136_combout\ : std_logic;
SIGNAL \library1|Mux0~793_combout\ : std_logic;
SIGNAL \library1|Mux0~797_combout\ : std_logic;
SIGNAL \library1|Mux0~794_combout\ : std_logic;
SIGNAL \library1|Mux0~795_combout\ : std_logic;
SIGNAL \library1|Mux0~796_combout\ : std_logic;
SIGNAL \library1|Mux0~798_combout\ : std_logic;
SIGNAL \library1|Mux0~799_combout\ : std_logic;
SIGNAL \library1|Mux0~681_combout\ : std_logic;
SIGNAL \library1|Mux0~680_combout\ : std_logic;
SIGNAL \library1|Mux0~682_combout\ : std_logic;
SIGNAL \library1|Mux0~679_combout\ : std_logic;
SIGNAL \library1|Mux0~683_combout\ : std_logic;
SIGNAL \library1|Mux0~687_combout\ : std_logic;
SIGNAL \library1|Mux0~684_combout\ : std_logic;
SIGNAL \library1|Mux0~456_combout\ : std_logic;
SIGNAL \library1|Mux0~685_combout\ : std_logic;
SIGNAL \library1|Mux0~686_combout\ : std_logic;
SIGNAL \library1|Mux0~688_combout\ : std_logic;
SIGNAL \library1|Mux0~689_combout\ : std_logic;
SIGNAL \library1|Mux0~690_combout\ : std_logic;
SIGNAL \library1|Mux0~693_combout\ : std_logic;
SIGNAL \library1|Mux0~691_combout\ : std_logic;
SIGNAL \library1|Mux0~807_combout\ : std_logic;
SIGNAL \library1|Mux0~692_combout\ : std_logic;
SIGNAL \library1|Mux0~694_combout\ : std_logic;
SIGNAL \library1|Mux0~60_combout\ : std_logic;
SIGNAL \library1|Mux0~670_combout\ : std_logic;
SIGNAL \library1|Mux0~671_combout\ : std_logic;
SIGNAL \library1|Mux0~676_combout\ : std_logic;
SIGNAL \library1|Mux0~675_combout\ : std_logic;
SIGNAL \library1|Mux0~677_combout\ : std_logic;
SIGNAL \library1|Mux0~672_combout\ : std_logic;
SIGNAL \library1|Mux0~673_combout\ : std_logic;
SIGNAL \library1|Mux0~674_combout\ : std_logic;
SIGNAL \library1|Mux0~678_combout\ : std_logic;
SIGNAL \library1|Mux0~695_combout\ : std_logic;
SIGNAL \library1|Mux0~658_combout\ : std_logic;
SIGNAL \library1|Mux0~657_combout\ : std_logic;
SIGNAL \library1|Mux0~659_combout\ : std_logic;
SIGNAL \library1|Mux0~665_combout\ : std_logic;
SIGNAL \library1|Mux0~666_combout\ : std_logic;
SIGNAL \library1|Mux0~667_combout\ : std_logic;
SIGNAL \library1|Mux0~661_combout\ : std_logic;
SIGNAL \library1|Mux0~660_combout\ : std_logic;
SIGNAL \library1|Mux0~662_combout\ : std_logic;
SIGNAL \library1|Mux0~663_combout\ : std_logic;
SIGNAL \library1|Mux0~664_combout\ : std_logic;
SIGNAL \library1|Mux0~668_combout\ : std_logic;
SIGNAL \library1|Mux0~669_combout\ : std_logic;
SIGNAL \library1|Mux0~696_combout\ : std_logic;
SIGNAL \library1|Mux0~697_combout\ : std_logic;
SIGNAL \library1|Mux0~700_combout\ : std_logic;
SIGNAL \library1|Mux0~804_combout\ : std_logic;
SIGNAL \library1|Mux0~698_combout\ : std_logic;
SIGNAL \library1|Mux0~699_combout\ : std_logic;
SIGNAL \library1|Mux0~701_combout\ : std_logic;
SIGNAL \library1|Mux0~707_combout\ : std_logic;
SIGNAL \library1|Mux0~706_combout\ : std_logic;
SIGNAL \library1|Mux0~708_combout\ : std_logic;
SIGNAL \library1|Mux0~97_combout\ : std_logic;
SIGNAL \library1|Mux0~289_combout\ : std_logic;
SIGNAL \library1|Mux0~709_combout\ : std_logic;
SIGNAL \library1|Mux0~710_combout\ : std_logic;
SIGNAL \library1|Mux0~702_combout\ : std_logic;
SIGNAL \library1|Mux0~703_combout\ : std_logic;
SIGNAL \library1|Mux0~704_combout\ : std_logic;
SIGNAL \library1|Mux0~705_combout\ : std_logic;
SIGNAL \library1|Mux0~711_combout\ : std_logic;
SIGNAL \library1|Mux0~712_combout\ : std_logic;
SIGNAL \library1|Mux0~785_combout\ : std_logic;
SIGNAL \library1|Mux0~367_combout\ : std_logic;
SIGNAL \library1|Mux0~784_combout\ : std_logic;
SIGNAL \library1|Mux0~337_combout\ : std_logic;
SIGNAL \library1|Mux0~786_combout\ : std_logic;
SIGNAL \library1|Mux0~782_combout\ : std_logic;
SIGNAL \library1|Mux0~775_combout\ : std_logic;
SIGNAL \library1|Mux0~777_combout\ : std_logic;
SIGNAL \library1|Mux0~778_combout\ : std_logic;
SIGNAL \library1|Mux0~776_combout\ : std_logic;
SIGNAL \library1|Mux0~779_combout\ : std_logic;
SIGNAL \library1|Mux0~780_combout\ : std_logic;
SIGNAL \library1|Mux0~781_combout\ : std_logic;
SIGNAL \library1|Mux0~783_combout\ : std_logic;
SIGNAL \library1|Mux0~787_combout\ : std_logic;
SIGNAL \library1|Mux0~739_combout\ : std_logic;
SIGNAL \library1|Mux0~738_combout\ : std_logic;
SIGNAL \library1|Mux0~741_combout\ : std_logic;
SIGNAL \library1|Mux0~740_combout\ : std_logic;
SIGNAL \library1|Mux0~743_combout\ : std_logic;
SIGNAL \library1|Mux0~742_combout\ : std_logic;
SIGNAL \library1|Mux0~744_combout\ : std_logic;
SIGNAL \library1|Mux0~770_combout\ : std_logic;
SIGNAL \library1|Mux0~769_combout\ : std_logic;
SIGNAL \library1|Mux0~771_combout\ : std_logic;
SIGNAL \library1|Mux0~767_combout\ : std_logic;
SIGNAL \library1|Mux0~764_combout\ : std_logic;
SIGNAL \library1|Mux0~765_combout\ : std_logic;
SIGNAL \library1|Mux0~766_combout\ : std_logic;
SIGNAL \library1|Mux0~768_combout\ : std_logic;
SIGNAL \library1|Mux0~772_combout\ : std_logic;
SIGNAL \library1|Mux0~745_combout\ : std_logic;
SIGNAL \library1|Mux0~752_combout\ : std_logic;
SIGNAL \library1|Mux0~747_combout\ : std_logic;
SIGNAL \library1|Mux0~746_combout\ : std_logic;
SIGNAL \library1|Mux0~748_combout\ : std_logic;
SIGNAL \library1|Mux0~749_combout\ : std_logic;
SIGNAL \library1|Mux0~750_combout\ : std_logic;
SIGNAL \library1|Mux0~751_combout\ : std_logic;
SIGNAL \library1|Mux0~753_combout\ : std_logic;
SIGNAL \library1|Mux0~755_combout\ : std_logic;
SIGNAL \library1|Mux0~754_combout\ : std_logic;
SIGNAL \library1|Mux0~756_combout\ : std_logic;
SIGNAL \library1|Mux0~757_combout\ : std_logic;
SIGNAL \library1|Mux0~525_combout\ : std_logic;
SIGNAL \library1|Mux0~758_combout\ : std_logic;
SIGNAL \library1|Mux0~759_combout\ : std_logic;
SIGNAL \library1|Mux0~760_combout\ : std_logic;
SIGNAL \library1|Mux0~761_combout\ : std_logic;
SIGNAL \library1|Mux0~762_combout\ : std_logic;
SIGNAL \library1|Mux0~763_combout\ : std_logic;
SIGNAL \library1|Mux0~773_combout\ : std_logic;
SIGNAL \library1|Mux0~735_combout\ : std_logic;
SIGNAL \library1|Mux0~730_combout\ : std_logic;
SIGNAL \library1|Mux0~731_combout\ : std_logic;
SIGNAL \library1|Mux0~732_combout\ : std_logic;
SIGNAL \library1|Mux0~733_combout\ : std_logic;
SIGNAL \library1|Mux0~734_combout\ : std_logic;
SIGNAL \library1|Mux0~728_combout\ : std_logic;
SIGNAL \library1|Mux0~729_combout\ : std_logic;
SIGNAL \library1|Mux0~736_combout\ : std_logic;
SIGNAL \library1|Mux0~716_combout\ : std_logic;
SIGNAL \library1|Mux0~713_combout\ : std_logic;
SIGNAL \library1|Mux0~714_combout\ : std_logic;
SIGNAL \library1|Mux0~715_combout\ : std_logic;
SIGNAL \library1|Mux0~717_combout\ : std_logic;
SIGNAL \library1|Mux0~725_combout\ : std_logic;
SIGNAL \library1|Mux0~723_combout\ : std_logic;
SIGNAL \library1|Mux0~724_combout\ : std_logic;
SIGNAL \library1|Mux0~726_combout\ : std_logic;
SIGNAL \library1|Mux0~720_combout\ : std_logic;
SIGNAL \library1|Mux0~721_combout\ : std_logic;
SIGNAL \library1|Mux0~808_combout\ : std_logic;
SIGNAL \library1|Mux0~718_combout\ : std_logic;
SIGNAL \library1|Mux0~719_combout\ : std_logic;
SIGNAL \library1|Mux0~722_combout\ : std_logic;
SIGNAL \library1|Mux0~727_combout\ : std_logic;
SIGNAL \library1|Mux0~737_combout\ : std_logic;
SIGNAL \library1|Mux0~774_combout\ : std_logic;
SIGNAL \library1|Mux0~788_combout\ : std_logic;
SIGNAL \library1|Mux0~789_combout\ : std_logic;
SIGNAL \library1|Mux0~800_combout\ : std_logic;
SIGNAL \library1|Mux0~189_combout\ : std_logic;
SIGNAL \library1|Mux0~185_combout\ : std_logic;
SIGNAL \library1|Mux0~184_combout\ : std_logic;
SIGNAL \library1|Mux0~186_combout\ : std_logic;
SIGNAL \library1|Mux0~187_combout\ : std_logic;
SIGNAL \library1|Mux0~188_combout\ : std_logic;
SIGNAL \library1|Mux0~190_combout\ : std_logic;
SIGNAL \library1|Mux0~32_combout\ : std_logic;
SIGNAL \library1|Mux0~853_combout\ : std_logic;
SIGNAL \library1|Mux0~854_combout\ : std_logic;
SIGNAL \library1|Mux0~23_combout\ : std_logic;
SIGNAL \library1|Mux0~19_combout\ : std_logic;
SIGNAL \library1|Mux0~20_combout\ : std_logic;
SIGNAL \library1|Mux0~21_combout\ : std_logic;
SIGNAL \library1|Mux0~22_combout\ : std_logic;
SIGNAL \library1|Mux0~18_combout\ : std_logic;
SIGNAL \library1|Mux0~24_combout\ : std_logic;
SIGNAL \library1|Mux0~25_combout\ : std_logic;
SIGNAL \library1|Mux0~27_combout\ : std_logic;
SIGNAL \library1|Mux0~28_combout\ : std_logic;
SIGNAL \library1|Mux0~29_combout\ : std_logic;
SIGNAL \library1|Mux0~30_combout\ : std_logic;
SIGNAL \library1|Mux0~31_combout\ : std_logic;
SIGNAL \library1|Mux0~33_combout\ : std_logic;
SIGNAL \library1|Mux0~103_combout\ : std_logic;
SIGNAL \library1|Mux0~104_combout\ : std_logic;
SIGNAL \library1|Mux0~94_combout\ : std_logic;
SIGNAL \library1|Mux0~93_combout\ : std_logic;
SIGNAL \library1|Mux0~95_combout\ : std_logic;
SIGNAL \library1|Mux0~96_combout\ : std_logic;
SIGNAL \library1|Mux0~98_combout\ : std_logic;
SIGNAL \library1|Mux0~100_combout\ : std_logic;
SIGNAL \library1|Mux0~99_combout\ : std_logic;
SIGNAL \library1|Mux0~101_combout\ : std_logic;
SIGNAL \library1|Mux0~102_combout\ : std_logic;
SIGNAL \library1|Mux0~105_combout\ : std_logic;
SIGNAL \library1|Mux0~83_combout\ : std_logic;
SIGNAL \library1|Mux0~802_combout\ : std_logic;
SIGNAL \library1|Mux0~84_combout\ : std_logic;
SIGNAL \library1|Mux0~85_combout\ : std_logic;
SIGNAL \library1|Mux0~90_combout\ : std_logic;
SIGNAL \library1|Mux0~86_combout\ : std_logic;
SIGNAL \library1|Mux0~87_combout\ : std_logic;
SIGNAL \library1|Mux0~88_combout\ : std_logic;
SIGNAL \library1|Mux0~89_combout\ : std_logic;
SIGNAL \library1|Mux0~91_combout\ : std_logic;
SIGNAL \library1|Mux0~92_combout\ : std_logic;
SIGNAL \library1|Mux0~106_combout\ : std_logic;
SIGNAL \library1|Mux0~53_combout\ : std_logic;
SIGNAL \library1|Mux0~51_combout\ : std_logic;
SIGNAL \library1|Mux0~52_combout\ : std_logic;
SIGNAL \library1|Mux0~50_combout\ : std_logic;
SIGNAL \library1|Mux0~54_combout\ : std_logic;
SIGNAL \library1|Mux0~70_combout\ : std_logic;
SIGNAL \library1|Mux0~71_combout\ : std_logic;
SIGNAL \library1|Mux0~77_combout\ : std_logic;
SIGNAL \library1|Mux0~78_combout\ : std_logic;
SIGNAL \library1|Mux0~79_combout\ : std_logic;
SIGNAL \library1|Mux0~74_combout\ : std_logic;
SIGNAL \library1|Mux0~75_combout\ : std_logic;
SIGNAL \library1|Mux0~72_combout\ : std_logic;
SIGNAL \library1|Mux0~73_combout\ : std_logic;
SIGNAL \library1|Mux0~76_combout\ : std_logic;
SIGNAL \library1|Mux0~80_combout\ : std_logic;
SIGNAL \library1|Mux0~67_combout\ : std_logic;
SIGNAL \library1|Mux0~65_combout\ : std_logic;
SIGNAL \library1|Mux0~64_combout\ : std_logic;
SIGNAL \library1|Mux0~66_combout\ : std_logic;
SIGNAL \library1|Mux0~68_combout\ : std_logic;
SIGNAL \library1|Mux0~62_combout\ : std_logic;
SIGNAL \library1|Mux0~61_combout\ : std_logic;
SIGNAL \library1|Mux0~58_combout\ : std_logic;
SIGNAL \library1|Mux0~55_combout\ : std_logic;
SIGNAL \library1|Mux0~56_combout\ : std_logic;
SIGNAL \library1|Mux0~57_combout\ : std_logic;
SIGNAL \library1|Mux0~59_combout\ : std_logic;
SIGNAL \library1|Mux0~63_combout\ : std_logic;
SIGNAL \library1|Mux0~69_combout\ : std_logic;
SIGNAL \library1|Mux0~81_combout\ : std_logic;
SIGNAL \library1|Mux0~34_combout\ : std_logic;
SIGNAL \library1|Mux0~38_combout\ : std_logic;
SIGNAL \library1|Mux0~35_combout\ : std_logic;
SIGNAL \library1|Mux0~36_combout\ : std_logic;
SIGNAL \library1|Mux0~37_combout\ : std_logic;
SIGNAL \library1|Mux0~39_combout\ : std_logic;
SIGNAL \library1|Mux0~851_combout\ : std_logic;
SIGNAL \library1|Mux0~852_combout\ : std_logic;
SIGNAL \library1|Mux0~40_combout\ : std_logic;
SIGNAL \library1|Mux0~44_combout\ : std_logic;
SIGNAL \library1|Mux0~41_combout\ : std_logic;
SIGNAL \library1|Mux0~42_combout\ : std_logic;
SIGNAL \library1|Mux0~43_combout\ : std_logic;
SIGNAL \library1|Mux0~45_combout\ : std_logic;
SIGNAL \library1|Mux0~46_combout\ : std_logic;
SIGNAL \library1|Mux0~47_combout\ : std_logic;
SIGNAL \library1|Mux0~48_combout\ : std_logic;
SIGNAL \library1|Mux0~849_combout\ : std_logic;
SIGNAL \library1|Mux0~850_combout\ : std_logic;
SIGNAL \library1|Mux0~49_combout\ : std_logic;
SIGNAL \library1|Mux0~82_combout\ : std_logic;
SIGNAL \library1|Mux0~108_combout\ : std_logic;
SIGNAL \library1|Mux0~179_combout\ : std_logic;
SIGNAL \library1|Mux0~180_combout\ : std_logic;
SIGNAL \library1|Mux0~175_combout\ : std_logic;
SIGNAL \library1|Mux0~176_combout\ : std_logic;
SIGNAL \library1|Mux0~177_combout\ : std_logic;
SIGNAL \library1|Mux0~178_combout\ : std_logic;
SIGNAL \library1|Mux0~173_combout\ : std_logic;
SIGNAL \library1|Mux0~174_combout\ : std_logic;
SIGNAL \library1|Mux0~181_combout\ : std_logic;
SIGNAL \library1|Mux0~119_combout\ : std_logic;
SIGNAL \library1|Mux0~109_combout\ : std_logic;
SIGNAL \library1|Mux0~116_combout\ : std_logic;
SIGNAL \library1|Mux0~117_combout\ : std_logic;
SIGNAL \library1|Mux0~110_combout\ : std_logic;
SIGNAL \library1|Mux0~114_combout\ : std_logic;
SIGNAL \library1|Mux0~111_combout\ : std_logic;
SIGNAL \library1|Mux0~112_combout\ : std_logic;
SIGNAL \library1|Mux0~113_combout\ : std_logic;
SIGNAL \library1|Mux0~115_combout\ : std_logic;
SIGNAL \library1|Mux0~118_combout\ : std_logic;
SIGNAL \library1|Mux0~120_combout\ : std_logic;
SIGNAL \library1|Mux0~152_combout\ : std_logic;
SIGNAL \library1|Mux0~150_combout\ : std_logic;
SIGNAL \library1|Mux0~151_combout\ : std_logic;
SIGNAL \library1|Mux0~153_combout\ : std_logic;
SIGNAL \library1|Mux0~146_combout\ : std_logic;
SIGNAL \library1|Mux0~148_combout\ : std_logic;
SIGNAL \library1|Mux0~147_combout\ : std_logic;
SIGNAL \library1|Mux0~149_combout\ : std_logic;
SIGNAL \library1|Mux0~154_combout\ : std_logic;
SIGNAL \library1|Mux0~127_combout\ : std_logic;
SIGNAL \library1|Mux0~128_combout\ : std_logic;
SIGNAL \library1|Mux0~123_combout\ : std_logic;
SIGNAL \library1|Mux0~124_combout\ : std_logic;
SIGNAL \library1|Mux0~125_combout\ : std_logic;
SIGNAL \library1|Mux0~126_combout\ : std_logic;
SIGNAL \library1|Mux0~121_combout\ : std_logic;
SIGNAL \library1|Mux0~122_combout\ : std_logic;
SIGNAL \library1|Mux0~129_combout\ : std_logic;
SIGNAL \library1|Mux0~135_combout\ : std_logic;
SIGNAL \library1|Mux0~130_combout\ : std_logic;
SIGNAL \library1|Mux0~131_combout\ : std_logic;
SIGNAL \library1|Mux0~132_combout\ : std_logic;
SIGNAL \library1|Mux0~133_combout\ : std_logic;
SIGNAL \library1|Mux0~134_combout\ : std_logic;
SIGNAL \library1|Mux0~137_combout\ : std_logic;
SIGNAL \library1|Mux0~143_combout\ : std_logic;
SIGNAL \library1|Mux0~142_combout\ : std_logic;
SIGNAL \library1|Mux0~141_combout\ : std_logic;
SIGNAL \library1|Mux0~847_combout\ : std_logic;
SIGNAL \library1|Mux0~848_combout\ : std_logic;
SIGNAL \library1|Mux0~138_combout\ : std_logic;
SIGNAL \library1|Mux0~139_combout\ : std_logic;
SIGNAL \library1|Mux0~140_combout\ : std_logic;
SIGNAL \library1|Mux0~144_combout\ : std_logic;
SIGNAL \library1|Mux0~145_combout\ : std_logic;
SIGNAL \library1|Mux0~155_combout\ : std_logic;
SIGNAL \library1|Mux0~157_combout\ : std_logic;
SIGNAL \library1|Mux0~156_combout\ : std_logic;
SIGNAL \library1|Mux0~158_combout\ : std_logic;
SIGNAL \library1|Mux0~168_combout\ : std_logic;
SIGNAL \library1|Mux0~169_combout\ : std_logic;
SIGNAL \library1|Mux0~170_combout\ : std_logic;
SIGNAL \library1|Mux0~165_combout\ : std_logic;
SIGNAL \library1|Mux0~164_combout\ : std_logic;
SIGNAL \library1|Mux0~166_combout\ : std_logic;
SIGNAL \library1|Mux0~160_combout\ : std_logic;
SIGNAL \library1|Mux0~159_combout\ : std_logic;
SIGNAL \library1|Mux0~161_combout\ : std_logic;
SIGNAL \library1|Mux0~162_combout\ : std_logic;
SIGNAL \library1|Mux0~163_combout\ : std_logic;
SIGNAL \library1|Mux0~167_combout\ : std_logic;
SIGNAL \library1|Mux0~171_combout\ : std_logic;
SIGNAL \library1|Mux0~172_combout\ : std_logic;
SIGNAL \library1|Mux0~182_combout\ : std_logic;
SIGNAL \library1|Mux0~183_combout\ : std_logic;
SIGNAL \library1|Mux0~191_combout\ : std_logic;
SIGNAL \library1|Mux0~564_combout\ : std_logic;
SIGNAL \library1|Mux0~565_combout\ : std_logic;
SIGNAL \library1|Mux0~815_combout\ : std_logic;
SIGNAL \library1|Mux0~816_combout\ : std_logic;
SIGNAL \library1|Mux0~639_combout\ : std_logic;
SIGNAL \library1|Mux0~628_combout\ : std_logic;
SIGNAL \library1|Mux0~636_combout\ : std_logic;
SIGNAL \library1|Mux0~633_combout\ : std_logic;
SIGNAL \library1|Mux0~634_combout\ : std_logic;
SIGNAL \library1|Mux0~635_combout\ : std_logic;
SIGNAL \library1|Mux0~637_combout\ : std_logic;
SIGNAL \library1|Mux0~630_combout\ : std_logic;
SIGNAL \library1|Mux0~631_combout\ : std_logic;
SIGNAL \library1|Mux0~629_combout\ : std_logic;
SIGNAL \library1|Mux0~632_combout\ : std_logic;
SIGNAL \library1|Mux0~638_combout\ : std_logic;
SIGNAL \library1|Mux0~640_combout\ : std_logic;
SIGNAL \library1|Mux0~571_combout\ : std_logic;
SIGNAL \library1|Mux0~566_combout\ : std_logic;
SIGNAL \library1|Mux0~813_combout\ : std_logic;
SIGNAL \library1|Mux0~814_combout\ : std_logic;
SIGNAL \library1|Mux0~568_combout\ : std_logic;
SIGNAL \library1|Mux0~567_combout\ : std_logic;
SIGNAL \library1|Mux0~569_combout\ : std_logic;
SIGNAL \library1|Mux0~570_combout\ : std_logic;
SIGNAL \library1|Mux0~572_combout\ : std_logic;
SIGNAL \library1|Mux0~603_combout\ : std_logic;
SIGNAL \library1|Mux0~599_combout\ : std_logic;
SIGNAL \library1|Mux0~600_combout\ : std_logic;
SIGNAL \library1|Mux0~601_combout\ : std_logic;
SIGNAL \library1|Mux0~602_combout\ : std_logic;
SIGNAL \library1|Mux0~604_combout\ : std_logic;
SIGNAL \library1|Mux0~613_combout\ : std_logic;
SIGNAL \library1|Mux0~611_combout\ : std_logic;
SIGNAL \library1|Mux0~612_combout\ : std_logic;
SIGNAL \library1|Mux0~610_combout\ : std_logic;
SIGNAL \library1|Mux0~614_combout\ : std_logic;
SIGNAL \library1|Mux0~605_combout\ : std_logic;
SIGNAL \library1|Mux0~606_combout\ : std_logic;
SIGNAL \library1|Mux0~607_combout\ : std_logic;
SIGNAL \library1|Mux0~608_combout\ : std_logic;
SIGNAL \library1|Mux0~609_combout\ : std_logic;
SIGNAL \library1|Mux0~615_combout\ : std_logic;
SIGNAL \library1|Mux0~622_combout\ : std_logic;
SIGNAL \library1|Mux0~621_combout\ : std_logic;
SIGNAL \library1|Mux0~623_combout\ : std_logic;
SIGNAL \library1|Mux0~624_combout\ : std_logic;
SIGNAL \library1|Mux0~618_combout\ : std_logic;
SIGNAL \library1|Mux0~619_combout\ : std_logic;
SIGNAL \library1|Mux0~616_combout\ : std_logic;
SIGNAL \library1|Mux0~617_combout\ : std_logic;
SIGNAL \library1|Mux0~620_combout\ : std_logic;
SIGNAL \library1|Mux0~625_combout\ : std_logic;
SIGNAL \library1|Mux0~626_combout\ : std_logic;
SIGNAL \library1|Mux0~573_combout\ : std_logic;
SIGNAL \library1|Mux0~574_combout\ : std_logic;
SIGNAL \library1|Mux0~575_combout\ : std_logic;
SIGNAL \library1|Mux0~576_combout\ : std_logic;
SIGNAL \library1|Mux0~577_combout\ : std_logic;
SIGNAL \library1|Mux0~578_combout\ : std_logic;
SIGNAL \library1|Mux0~596_combout\ : std_logic;
SIGNAL \library1|Mux0~592_combout\ : std_logic;
SIGNAL \library1|Mux0~811_combout\ : std_logic;
SIGNAL \library1|Mux0~812_combout\ : std_logic;
SIGNAL \library1|Mux0~593_combout\ : std_logic;
SIGNAL \library1|Mux0~594_combout\ : std_logic;
SIGNAL \library1|Mux0~595_combout\ : std_logic;
SIGNAL \library1|Mux0~597_combout\ : std_logic;
SIGNAL \library1|Mux0~589_combout\ : std_logic;
SIGNAL \library1|Mux0~585_combout\ : std_logic;
SIGNAL \library1|Mux0~586_combout\ : std_logic;
SIGNAL \library1|Mux0~587_combout\ : std_logic;
SIGNAL \library1|Mux0~588_combout\ : std_logic;
SIGNAL \library1|Mux0~590_combout\ : std_logic;
SIGNAL \library1|Mux0~579_combout\ : std_logic;
SIGNAL \library1|Mux0~582_combout\ : std_logic;
SIGNAL \library1|Mux0~580_combout\ : std_logic;
SIGNAL \library1|Mux0~581_combout\ : std_logic;
SIGNAL \library1|Mux0~583_combout\ : std_logic;
SIGNAL \library1|Mux0~584_combout\ : std_logic;
SIGNAL \library1|Mux0~591_combout\ : std_logic;
SIGNAL \library1|Mux0~598_combout\ : std_logic;
SIGNAL \library1|Mux0~627_combout\ : std_logic;
SIGNAL \library1|Mux0~809_combout\ : std_logic;
SIGNAL \library1|Mux0~810_combout\ : std_logic;
SIGNAL \library1|Mux0~554_combout\ : std_logic;
SIGNAL \library1|Mux0~555_combout\ : std_logic;
SIGNAL \library1|Mux0~556_combout\ : std_logic;
SIGNAL \library1|Mux0~558_combout\ : std_logic;
SIGNAL \library1|Mux0~557_combout\ : std_logic;
SIGNAL \library1|Mux0~559_combout\ : std_logic;
SIGNAL \library1|Mux0~560_combout\ : std_logic;
SIGNAL \library1|Mux0~561_combout\ : std_logic;
SIGNAL \library1|Mux0~562_combout\ : std_logic;
SIGNAL \library1|Mux0~817_combout\ : std_logic;
SIGNAL \library1|Mux0~818_combout\ : std_logic;
SIGNAL \library1|Mux0~487_combout\ : std_logic;
SIGNAL \library1|Mux0~551_combout\ : std_logic;
SIGNAL \library1|Mux0~548_combout\ : std_logic;
SIGNAL \library1|Mux0~549_combout\ : std_logic;
SIGNAL \library1|Mux0~550_combout\ : std_logic;
SIGNAL \library1|Mux0~552_combout\ : std_logic;
SIGNAL \library1|Mux0~518_combout\ : std_logic;
SIGNAL \library1|Mux0~520_combout\ : std_logic;
SIGNAL \library1|Mux0~519_combout\ : std_logic;
SIGNAL \library1|Mux0~521_combout\ : std_logic;
SIGNAL \library1|Mux0~522_combout\ : std_logic;
SIGNAL \library1|Mux0~523_combout\ : std_logic;
SIGNAL \library1|Mux0~542_combout\ : std_logic;
SIGNAL \library1|Mux0~541_combout\ : std_logic;
SIGNAL \library1|Mux0~544_combout\ : std_logic;
SIGNAL \library1|Mux0~543_combout\ : std_logic;
SIGNAL \library1|Mux0~545_combout\ : std_logic;
SIGNAL \library1|Mux0~537_combout\ : std_logic;
SIGNAL \library1|Mux0~535_combout\ : std_logic;
SIGNAL \library1|Mux0~538_combout\ : std_logic;
SIGNAL \library1|Mux0~536_combout\ : std_logic;
SIGNAL \library1|Mux0~533_combout\ : std_logic;
SIGNAL \library1|Mux0~534_combout\ : std_logic;
SIGNAL \library1|Mux0~539_combout\ : std_logic;
SIGNAL \library1|Mux0~524_combout\ : std_logic;
SIGNAL \library1|Mux0~348_combout\ : std_logic;
SIGNAL \library1|Mux0~530_combout\ : std_logic;
SIGNAL \library1|Mux0~531_combout\ : std_logic;
SIGNAL \library1|Mux0~528_combout\ : std_logic;
SIGNAL \library1|Mux0~526_combout\ : std_logic;
SIGNAL \library1|Mux0~527_combout\ : std_logic;
SIGNAL \library1|Mux0~529_combout\ : std_logic;
SIGNAL \library1|Mux0~532_combout\ : std_logic;
SIGNAL \library1|Mux0~540_combout\ : std_logic;
SIGNAL \library1|Mux0~546_combout\ : std_logic;
SIGNAL \library1|Mux0~492_combout\ : std_logic;
SIGNAL \library1|Mux0~489_combout\ : std_logic;
SIGNAL \library1|Mux0~490_combout\ : std_logic;
SIGNAL \library1|Mux0~491_combout\ : std_logic;
SIGNAL \library1|Mux0~488_combout\ : std_logic;
SIGNAL \library1|Mux0~493_combout\ : std_logic;
SIGNAL \library1|Mux0~515_combout\ : std_logic;
SIGNAL \library1|Mux0~511_combout\ : std_logic;
SIGNAL \library1|Mux0~512_combout\ : std_logic;
SIGNAL \library1|Mux0~513_combout\ : std_logic;
SIGNAL \library1|Mux0~514_combout\ : std_logic;
SIGNAL \library1|Mux0~516_combout\ : std_logic;
SIGNAL \library1|Mux0~494_combout\ : std_logic;
SIGNAL \library1|Mux0~495_combout\ : std_logic;
SIGNAL \library1|Mux0~496_combout\ : std_logic;
SIGNAL \library1|Mux0~497_combout\ : std_logic;
SIGNAL \library1|Mux0~498_combout\ : std_logic;
SIGNAL \library1|Mux0~499_combout\ : std_logic;
SIGNAL \library1|Mux0~500_combout\ : std_logic;
SIGNAL \library1|Mux0~501_combout\ : std_logic;
SIGNAL \library1|Mux0~507_combout\ : std_logic;
SIGNAL \library1|Mux0~508_combout\ : std_logic;
SIGNAL \library1|Mux0~503_combout\ : std_logic;
SIGNAL \library1|Mux0~502_combout\ : std_logic;
SIGNAL \library1|Mux0~504_combout\ : std_logic;
SIGNAL \library1|Mux0~505_combout\ : std_logic;
SIGNAL \library1|Mux0~443_combout\ : std_logic;
SIGNAL \library1|Mux0~506_combout\ : std_logic;
SIGNAL \library1|Mux0~509_combout\ : std_logic;
SIGNAL \library1|Mux0~510_combout\ : std_logic;
SIGNAL \library1|Mux0~517_combout\ : std_logic;
SIGNAL \library1|Mux0~547_combout\ : std_logic;
SIGNAL \library1|Mux0~553_combout\ : std_logic;
SIGNAL \library1|Mux0~563_combout\ : std_logic;
SIGNAL \library1|Mux0~827_combout\ : std_logic;
SIGNAL \library1|Mux0~828_combout\ : std_logic;
SIGNAL \library1|Mux0~407_combout\ : std_logic;
SIGNAL \library1|Mux0~403_combout\ : std_logic;
SIGNAL \library1|Mux0~404_combout\ : std_logic;
SIGNAL \library1|Mux0~405_combout\ : std_logic;
SIGNAL \library1|Mux0~825_combout\ : std_logic;
SIGNAL \library1|Mux0~826_combout\ : std_logic;
SIGNAL \library1|Mux0~406_combout\ : std_logic;
SIGNAL \library1|Mux0~408_combout\ : std_logic;
SIGNAL \library1|Mux0~484_combout\ : std_logic;
SIGNAL \library1|Mux0~478_combout\ : std_logic;
SIGNAL \library1|Mux0~806_combout\ : std_logic;
SIGNAL \library1|Mux0~473_combout\ : std_logic;
SIGNAL \library1|Mux0~472_combout\ : std_logic;
SIGNAL \library1|Mux0~471_combout\ : std_logic;
SIGNAL \library1|Mux0~474_combout\ : std_logic;
SIGNAL \library1|Mux0~476_combout\ : std_logic;
SIGNAL \library1|Mux0~475_combout\ : std_logic;
SIGNAL \library1|Mux0~819_combout\ : std_logic;
SIGNAL \library1|Mux0~820_combout\ : std_logic;
SIGNAL \library1|Mux0~477_combout\ : std_logic;
SIGNAL \library1|Mux0~479_combout\ : std_logic;
SIGNAL \library1|Mux0~480_combout\ : std_logic;
SIGNAL \library1|Mux0~481_combout\ : std_logic;
SIGNAL \library1|Mux0~482_combout\ : std_logic;
SIGNAL \library1|Mux0~483_combout\ : std_logic;
SIGNAL \library1|Mux0~485_combout\ : std_logic;
SIGNAL \library1|Mux0~409_combout\ : std_logic;
SIGNAL \library1|Mux0~413_combout\ : std_logic;
SIGNAL \library1|Mux0~410_combout\ : std_logic;
SIGNAL \library1|Mux0~411_combout\ : std_logic;
SIGNAL \library1|Mux0~412_combout\ : std_logic;
SIGNAL \library1|Mux0~414_combout\ : std_logic;
SIGNAL \library1|Mux0~419_combout\ : std_logic;
SIGNAL \library1|Mux0~415_combout\ : std_logic;
SIGNAL \library1|Mux0~416_combout\ : std_logic;
SIGNAL \library1|Mux0~417_combout\ : std_logic;
SIGNAL \library1|Mux0~418_combout\ : std_logic;
SIGNAL \library1|Mux0~420_combout\ : std_logic;
SIGNAL \library1|Mux0~421_combout\ : std_logic;
SIGNAL \library1|Mux0~823_combout\ : std_logic;
SIGNAL \library1|Mux0~824_combout\ : std_logic;
SIGNAL \library1|Mux0~423_combout\ : std_logic;
SIGNAL \library1|Mux0~422_combout\ : std_logic;
SIGNAL \library1|Mux0~424_combout\ : std_logic;
SIGNAL \library1|Mux0~425_combout\ : std_logic;
SIGNAL \library1|Mux0~429_combout\ : std_logic;
SIGNAL \library1|Mux0~426_combout\ : std_logic;
SIGNAL \library1|Mux0~427_combout\ : std_logic;
SIGNAL \library1|Mux0~428_combout\ : std_logic;
SIGNAL \library1|Mux0~430_combout\ : std_logic;
SIGNAL \library1|Mux0~432_combout\ : std_logic;
SIGNAL \library1|Mux0~431_combout\ : std_logic;
SIGNAL \library1|Mux0~433_combout\ : std_logic;
SIGNAL \library1|Mux0~434_combout\ : std_logic;
SIGNAL \library1|Mux0~435_combout\ : std_logic;
SIGNAL \library1|Mux0~436_combout\ : std_logic;
SIGNAL \library1|Mux0~437_combout\ : std_logic;
SIGNAL \library1|Mux0~467_combout\ : std_logic;
SIGNAL \library1|Mux0~463_combout\ : std_logic;
SIGNAL \library1|Mux0~465_combout\ : std_logic;
SIGNAL \library1|Mux0~464_combout\ : std_logic;
SIGNAL \library1|Mux0~466_combout\ : std_logic;
SIGNAL \library1|Mux0~468_combout\ : std_logic;
SIGNAL \library1|Mux0~448_combout\ : std_logic;
SIGNAL \library1|Mux0~447_combout\ : std_logic;
SIGNAL \library1|Mux0~449_combout\ : std_logic;
SIGNAL \library1|Mux0~821_combout\ : std_logic;
SIGNAL \library1|Mux0~822_combout\ : std_logic;
SIGNAL \library1|Mux0~455_combout\ : std_logic;
SIGNAL \library1|Mux0~457_combout\ : std_logic;
SIGNAL \library1|Mux0~459_combout\ : std_logic;
SIGNAL \library1|Mux0~458_combout\ : std_logic;
SIGNAL \library1|Mux0~460_combout\ : std_logic;
SIGNAL \library1|Mux0~453_combout\ : std_logic;
SIGNAL \library1|Mux0~450_combout\ : std_logic;
SIGNAL \library1|Mux0~451_combout\ : std_logic;
SIGNAL \library1|Mux0~452_combout\ : std_logic;
SIGNAL \library1|Mux0~454_combout\ : std_logic;
SIGNAL \library1|Mux0~461_combout\ : std_logic;
SIGNAL \library1|Mux0~462_combout\ : std_logic;
SIGNAL \library1|Mux0~438_combout\ : std_logic;
SIGNAL \library1|Mux0~439_combout\ : std_logic;
SIGNAL \library1|Mux0~304_combout\ : std_logic;
SIGNAL \library1|Mux0~440_combout\ : std_logic;
SIGNAL \library1|Mux0~441_combout\ : std_logic;
SIGNAL \library1|Mux0~442_combout\ : std_logic;
SIGNAL \library1|Mux0~444_combout\ : std_logic;
SIGNAL \library1|Mux0~445_combout\ : std_logic;
SIGNAL \library1|Mux0~446_combout\ : std_logic;
SIGNAL \library1|Mux0~469_combout\ : std_logic;
SIGNAL \library1|Mux0~470_combout\ : std_logic;
SIGNAL \library1|Mux0~486_combout\ : std_logic;
SIGNAL \library1|Mux0~641_combout\ : std_logic;
SIGNAL \library1|Mux0~843_combout\ : std_logic;
SIGNAL \library1|Mux0~844_combout\ : std_logic;
SIGNAL \library1|Mux0~845_combout\ : std_logic;
SIGNAL \library1|Mux0~846_combout\ : std_logic;
SIGNAL \library1|Mux0~201_combout\ : std_logic;
SIGNAL \library1|Mux0~197_combout\ : std_logic;
SIGNAL \library1|Mux0~198_combout\ : std_logic;
SIGNAL \library1|Mux0~200_combout\ : std_logic;
SIGNAL \library1|Mux0~202_combout\ : std_logic;
SIGNAL \library1|Mux0~192_combout\ : std_logic;
SIGNAL \library1|Mux0~195_combout\ : std_logic;
SIGNAL \library1|Mux0~193_combout\ : std_logic;
SIGNAL \library1|Mux0~194_combout\ : std_logic;
SIGNAL \library1|Mux0~196_combout\ : std_logic;
SIGNAL \library1|Mux0~203_combout\ : std_logic;
SIGNAL \library1|Mux0~204_combout\ : std_logic;
SIGNAL \library1|Mux0~803_combout\ : std_logic;
SIGNAL \library1|Mux0~212_combout\ : std_logic;
SIGNAL \library1|Mux0~209_combout\ : std_logic;
SIGNAL \library1|Mux0~210_combout\ : std_logic;
SIGNAL \library1|Mux0~841_combout\ : std_logic;
SIGNAL \library1|Mux0~842_combout\ : std_logic;
SIGNAL \library1|Mux0~211_combout\ : std_logic;
SIGNAL \library1|Mux0~205_combout\ : std_logic;
SIGNAL \library1|Mux0~206_combout\ : std_logic;
SIGNAL \library1|Mux0~207_combout\ : std_logic;
SIGNAL \library1|Mux0~208_combout\ : std_logic;
SIGNAL \library1|Mux0~213_combout\ : std_logic;
SIGNAL \library1|Mux0~214_combout\ : std_logic;
SIGNAL \library1|Mux0~269_combout\ : std_logic;
SIGNAL \library1|Mux0~286_combout\ : std_logic;
SIGNAL \library1|Mux0~837_combout\ : std_logic;
SIGNAL \library1|Mux0~838_combout\ : std_logic;
SIGNAL \library1|Mux0~274_combout\ : std_logic;
SIGNAL \library1|Mux0~275_combout\ : std_logic;
SIGNAL \library1|Mux0~271_combout\ : std_logic;
SIGNAL \library1|Mux0~272_combout\ : std_logic;
SIGNAL \library1|Mux0~270_combout\ : std_logic;
SIGNAL \library1|Mux0~273_combout\ : std_logic;
SIGNAL \library1|Mux0~276_combout\ : std_logic;
SIGNAL \library1|Mux0~283_combout\ : std_logic;
SIGNAL \library1|Mux0~281_combout\ : std_logic;
SIGNAL \library1|Mux0~280_combout\ : std_logic;
SIGNAL \library1|Mux0~282_combout\ : std_logic;
SIGNAL \library1|Mux0~277_combout\ : std_logic;
SIGNAL \library1|Mux0~278_combout\ : std_logic;
SIGNAL \library1|Mux0~279_combout\ : std_logic;
SIGNAL \library1|Mux0~284_combout\ : std_logic;
SIGNAL \library1|Mux0~285_combout\ : std_logic;
SIGNAL \library1|Mux0~287_combout\ : std_logic;
SIGNAL \library1|Mux0~215_combout\ : std_logic;
SIGNAL \library1|Mux0~216_combout\ : std_logic;
SIGNAL \library1|Mux0~217_combout\ : std_logic;
SIGNAL \library1|Mux0~237_combout\ : std_logic;
SIGNAL \library1|Mux0~236_combout\ : std_logic;
SIGNAL \library1|Mux0~239_combout\ : std_logic;
SIGNAL \library1|Mux0~238_combout\ : std_logic;
SIGNAL \library1|Mux0~240_combout\ : std_logic;
SIGNAL \library1|Mux0~226_combout\ : std_logic;
SIGNAL \library1|Mux0~218_combout\ : std_logic;
SIGNAL \library1|Mux0~219_combout\ : std_logic;
SIGNAL \library1|Mux0~220_combout\ : std_logic;
SIGNAL \library1|Mux0~221_combout\ : std_logic;
SIGNAL \library1|Mux0~223_combout\ : std_logic;
SIGNAL \library1|Mux0~224_combout\ : std_logic;
SIGNAL \library1|Mux0~225_combout\ : std_logic;
SIGNAL \library1|Mux0~227_combout\ : std_logic;
SIGNAL \library1|Mux0~228_combout\ : std_logic;
SIGNAL \library1|Mux0~229_combout\ : std_logic;
SIGNAL \library1|Mux0~230_combout\ : std_logic;
SIGNAL \library1|Mux0~231_combout\ : std_logic;
SIGNAL \library1|Mux0~232_combout\ : std_logic;
SIGNAL \library1|Mux0~233_combout\ : std_logic;
SIGNAL \library1|Mux0~234_combout\ : std_logic;
SIGNAL \library1|Mux0~235_combout\ : std_logic;
SIGNAL \library1|Mux0~241_combout\ : std_logic;
SIGNAL \library1|Mux0~264_combout\ : std_logic;
SIGNAL \library1|Mux0~265_combout\ : std_logic;
SIGNAL \library1|Mux0~805_combout\ : std_logic;
SIGNAL \library1|Mux0~262_combout\ : std_logic;
SIGNAL \library1|Mux0~263_combout\ : std_logic;
SIGNAL \library1|Mux0~256_combout\ : std_logic;
SIGNAL \library1|Mux0~258_combout\ : std_logic;
SIGNAL \library1|Mux0~257_combout\ : std_logic;
SIGNAL \library1|Mux0~259_combout\ : std_logic;
SIGNAL \library1|Mux0~260_combout\ : std_logic;
SIGNAL \library1|Mux0~261_combout\ : std_logic;
SIGNAL \library1|Mux0~266_combout\ : std_logic;
SIGNAL \library1|Mux0~253_combout\ : std_logic;
SIGNAL \library1|Mux0~252_combout\ : std_logic;
SIGNAL \library1|Mux0~254_combout\ : std_logic;
SIGNAL \library1|Mux0~242_combout\ : std_logic;
SIGNAL \library1|Mux0~244_combout\ : std_logic;
SIGNAL \library1|Mux0~243_combout\ : std_logic;
SIGNAL \library1|Mux0~245_combout\ : std_logic;
SIGNAL \library1|Mux0~839_combout\ : std_logic;
SIGNAL \library1|Mux0~840_combout\ : std_logic;
SIGNAL \library1|Mux0~249_combout\ : std_logic;
SIGNAL \library1|Mux0~246_combout\ : std_logic;
SIGNAL \library1|Mux0~247_combout\ : std_logic;
SIGNAL \library1|Mux0~248_combout\ : std_logic;
SIGNAL \library1|Mux0~250_combout\ : std_logic;
SIGNAL \library1|Mux0~251_combout\ : std_logic;
SIGNAL \library1|Mux0~255_combout\ : std_logic;
SIGNAL \library1|Mux0~267_combout\ : std_logic;
SIGNAL \library1|Mux0~268_combout\ : std_logic;
SIGNAL \library1|Mux0~288_combout\ : std_logic;
SIGNAL \library1|Mux0~375_combout\ : std_logic;
SIGNAL \library1|Mux0~376_combout\ : std_logic;
SIGNAL \library1|Mux0~377_combout\ : std_logic;
SIGNAL \library1|Mux0~379_combout\ : std_logic;
SIGNAL \library1|Mux0~378_combout\ : std_logic;
SIGNAL \library1|Mux0~380_combout\ : std_logic;
SIGNAL \library1|Mux0~381_combout\ : std_logic;
SIGNAL \library1|Mux0~382_combout\ : std_logic;
SIGNAL \library1|Mux0~372_combout\ : std_logic;
SIGNAL \library1|Mux0~368_combout\ : std_logic;
SIGNAL \library1|Mux0~369_combout\ : std_logic;
SIGNAL \library1|Mux0~370_combout\ : std_logic;
SIGNAL \library1|Mux0~371_combout\ : std_logic;
SIGNAL \library1|Mux0~373_combout\ : std_logic;
SIGNAL \library1|Mux0~362_combout\ : std_logic;
SIGNAL \library1|Mux0~363_combout\ : std_logic;
SIGNAL \library1|Mux0~361_combout\ : std_logic;
SIGNAL \library1|Mux0~364_combout\ : std_logic;
SIGNAL \library1|Mux0~359_combout\ : std_logic;
SIGNAL \library1|Mux0~357_combout\ : std_logic;
SIGNAL \library1|Mux0~358_combout\ : std_logic;
SIGNAL \library1|Mux0~356_combout\ : std_logic;
SIGNAL \library1|Mux0~360_combout\ : std_logic;
SIGNAL \library1|Mux0~365_combout\ : std_logic;
SIGNAL \library1|Mux0~366_combout\ : std_logic;
SIGNAL \library1|Mux0~829_combout\ : std_logic;
SIGNAL \library1|Mux0~383_combout\ : std_logic;
SIGNAL \library1|Mux0~384_combout\ : std_logic;
SIGNAL \library1|Mux0~385_combout\ : std_logic;
SIGNAL \library1|Mux0~386_combout\ : std_logic;
SIGNAL \library1|Mux0~387_combout\ : std_logic;
SIGNAL \library1|Mux0~388_combout\ : std_logic;
SIGNAL \library1|Mux0~389_combout\ : std_logic;
SIGNAL \library1|Mux0~390_combout\ : std_logic;
SIGNAL \library1|Mux0~396_combout\ : std_logic;
SIGNAL \library1|Mux0~397_combout\ : std_logic;
SIGNAL \library1|Mux0~398_combout\ : std_logic;
SIGNAL \library1|Mux0~399_combout\ : std_logic;
SIGNAL \library1|Mux0~831_combout\ : std_logic;
SIGNAL \library1|Mux0~832_combout\ : std_logic;
SIGNAL \library1|Mux0~391_combout\ : std_logic;
SIGNAL \library1|Mux0~392_combout\ : std_logic;
SIGNAL \library1|Mux0~393_combout\ : std_logic;
SIGNAL \library1|Mux0~394_combout\ : std_logic;
SIGNAL \library1|Mux0~395_combout\ : std_logic;
SIGNAL \library1|Mux0~400_combout\ : std_logic;
SIGNAL \library1|Mux0~401_combout\ : std_logic;
SIGNAL \library1|Mux0~830_combout\ : std_logic;
SIGNAL \library1|Mux0~307_combout\ : std_logic;
SIGNAL \library1|Mux0~835_combout\ : std_logic;
SIGNAL \library1|Mux0~305_combout\ : std_logic;
SIGNAL \library1|Mux0~290_combout\ : std_logic;
SIGNAL \library1|Mux0~297_combout\ : std_logic;
SIGNAL \library1|Mux0~301_combout\ : std_logic;
SIGNAL \library1|Mux0~298_combout\ : std_logic;
SIGNAL \library1|Mux0~299_combout\ : std_logic;
SIGNAL \library1|Mux0~300_combout\ : std_logic;
SIGNAL \library1|Mux0~302_combout\ : std_logic;
SIGNAL \library1|Mux0~291_combout\ : std_logic;
SIGNAL \library1|Mux0~295_combout\ : std_logic;
SIGNAL \library1|Mux0~293_combout\ : std_logic;
SIGNAL \library1|Mux0~292_combout\ : std_logic;
SIGNAL \library1|Mux0~294_combout\ : std_logic;
SIGNAL \library1|Mux0~296_combout\ : std_logic;
SIGNAL \library1|Mux0~303_combout\ : std_logic;
SIGNAL \library1|Mux0~306_combout\ : std_logic;
SIGNAL \library1|Mux0~836_combout\ : std_logic;
SIGNAL \library1|Mux0~352_combout\ : std_logic;
SIGNAL \library1|Mux0~350_combout\ : std_logic;
SIGNAL \library1|Mux0~349_combout\ : std_logic;
SIGNAL \library1|Mux0~351_combout\ : std_logic;
SIGNAL \library1|Mux0~353_combout\ : std_logic;
SIGNAL \library1|Mux0~331_combout\ : std_logic;
SIGNAL \library1|Mux0~308_combout\ : std_logic;
SIGNAL \library1|Mux0~309_combout\ : std_logic;
SIGNAL \library1|Mux0~310_combout\ : std_logic;
SIGNAL \library1|Mux0~311_combout\ : std_logic;
SIGNAL \library1|Mux0~313_combout\ : std_logic;
SIGNAL \library1|Mux0~312_combout\ : std_logic;
SIGNAL \library1|Mux0~314_combout\ : std_logic;
SIGNAL \library1|Mux0~315_combout\ : std_logic;
SIGNAL \library1|Mux0~316_combout\ : std_logic;
SIGNAL \library1|Mux0~317_combout\ : std_logic;
SIGNAL \library1|Mux0~318_combout\ : std_logic;
SIGNAL \library1|Mux0~319_combout\ : std_logic;
SIGNAL \library1|Mux0~320_combout\ : std_logic;
SIGNAL \library1|Mux0~321_combout\ : std_logic;
SIGNAL \library1|Mux0~327_combout\ : std_logic;
SIGNAL \library1|Mux0~328_combout\ : std_logic;
SIGNAL \library1|Mux0~324_combout\ : std_logic;
SIGNAL \library1|Mux0~325_combout\ : std_logic;
SIGNAL \library1|Mux0~322_combout\ : std_logic;
SIGNAL \library1|Mux0~323_combout\ : std_logic;
SIGNAL \library1|Mux0~326_combout\ : std_logic;
SIGNAL \library1|Mux0~329_combout\ : std_logic;
SIGNAL \library1|Mux0~330_combout\ : std_logic;
SIGNAL \library1|Mux0~332_combout\ : std_logic;
SIGNAL \library1|Mux0~343_combout\ : std_logic;
SIGNAL \library1|Mux0~344_combout\ : std_logic;
SIGNAL \library1|Mux0~342_combout\ : std_logic;
SIGNAL \library1|Mux0~833_combout\ : std_logic;
SIGNAL \library1|Mux0~834_combout\ : std_logic;
SIGNAL \library1|Mux0~345_combout\ : std_logic;
SIGNAL \library1|Mux0~338_combout\ : std_logic;
SIGNAL \library1|Mux0~335_combout\ : std_logic;
SIGNAL \library1|Mux0~334_combout\ : std_logic;
SIGNAL \library1|Mux0~333_combout\ : std_logic;
SIGNAL \library1|Mux0~336_combout\ : std_logic;
SIGNAL \library1|Mux0~339_combout\ : std_logic;
SIGNAL \library1|Mux0~340_combout\ : std_logic;
SIGNAL \library1|Mux0~341_combout\ : std_logic;
SIGNAL \library1|Mux0~346_combout\ : std_logic;
SIGNAL \library1|Mux0~347_combout\ : std_logic;
SIGNAL \library1|Mux0~354_combout\ : std_logic;
SIGNAL \library1|Mux0~355_combout\ : std_logic;
SIGNAL \library1|Mux0~402_combout\ : std_logic;
SIGNAL \library1|Mux0~642_combout\ : std_logic;
SIGNAL \library1|Mux0~801_combout\ : std_logic;
SIGNAL \R~combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \VGA_R[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \VGA_R[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
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
SIGNAL \vga1|ph_sync~5_combout\ : std_logic;
SIGNAL \vga1|ph_sync~6_combout\ : std_logic;
SIGNAL \vga1|ph_sync~7_combout\ : std_logic;
SIGNAL \vga1|ph_sync~8_combout\ : std_logic;
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

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X40_Y51_N6
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

-- Location: LCCOMB_X39_Y50_N10
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

-- Location: FF_X39_Y50_N1
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

-- Location: LCCOMB_X39_Y50_N12
\vga1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add0~2_combout\ = (\vga1|xPixel\(1) & (!\vga1|Add0~1\)) # (!\vga1|xPixel\(1) & ((\vga1|Add0~1\) # (GND)))
-- \vga1|Add0~3\ = CARRY((!\vga1|Add0~1\) # (!\vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datad => VCC,
	cin => \vga1|Add0~1\,
	combout => \vga1|Add0~2_combout\,
	cout => \vga1|Add0~3\);

-- Location: LCCOMB_X41_Y51_N0
\vga1|xPixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~3_combout\ = (!\vga1|Equal0~2_combout\ & \vga1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Equal0~2_combout\,
	datad => \vga1|Add0~2_combout\,
	combout => \vga1|xPixel~3_combout\);

-- Location: FF_X41_Y51_N1
\vga1|xPixel[1]\ : dffeas
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
	q => \vga1|xPixel\(1));

-- Location: LCCOMB_X39_Y50_N14
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

-- Location: FF_X39_Y50_N15
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

-- Location: LCCOMB_X39_Y50_N16
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

-- Location: LCCOMB_X39_Y50_N6
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

-- Location: FF_X39_Y50_N7
\vga1|xPixel[3]\ : dffeas
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
	q => \vga1|xPixel\(3));

-- Location: LCCOMB_X39_Y50_N18
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

-- Location: LCCOMB_X39_Y50_N0
\vga1|xPixel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~2_combout\ = (!\vga1|Equal0~2_combout\ & \vga1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~2_combout\,
	datad => \vga1|Add0~8_combout\,
	combout => \vga1|xPixel~2_combout\);

-- Location: FF_X39_Y51_N1
\vga1|xPixel[4]\ : dffeas
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
	q => \vga1|xPixel\(4));

-- Location: LCCOMB_X39_Y50_N20
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

-- Location: FF_X39_Y50_N21
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

-- Location: LCCOMB_X39_Y50_N22
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

-- Location: FF_X39_Y50_N23
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

-- Location: LCCOMB_X39_Y50_N24
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

-- Location: FF_X39_Y50_N25
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

-- Location: LCCOMB_X39_Y50_N26
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

-- Location: LCCOMB_X41_Y50_N30
\vga1|xPixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~1_combout\ = (\vga1|Add0~16_combout\ & !\vga1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Add0~16_combout\,
	datac => \vga1|Equal0~2_combout\,
	combout => \vga1|xPixel~1_combout\);

-- Location: FF_X40_Y50_N11
\vga1|xPixel[8]\ : dffeas
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
	q => \vga1|xPixel\(8));

-- Location: LCCOMB_X41_Y52_N22
\vga1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~0_combout\ = (!\vga1|xPixel\(5) & (\vga1|xPixel\(8) & (!\vga1|xPixel\(7) & \vga1|xPixel\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(4),
	combout => \vga1|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y50_N28
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

-- Location: LCCOMB_X40_Y50_N20
\vga1|xPixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|xPixel~0_combout\ = (!\vga1|Equal0~2_combout\ & \vga1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Equal0~2_combout\,
	datad => \vga1|Add0~18_combout\,
	combout => \vga1|xPixel~0_combout\);

-- Location: FF_X40_Y50_N21
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

-- Location: LCCOMB_X41_Y51_N2
\vga1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~1_combout\ = (!\vga1|xPixel\(6) & (!\vga1|xPixel\(1) & (\vga1|xPixel\(9) & \vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(9),
	datad => \vga1|xPixel\(0),
	combout => \vga1|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y51_N20
\vga1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal0~2_combout\ = (\vga1|Equal0~0_combout\ & (\vga1|Equal0~1_combout\ & (!\vga1|xPixel\(2) & \vga1|xPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~0_combout\,
	datab => \vga1|Equal0~1_combout\,
	datac => \vga1|xPixel\(2),
	datad => \vga1|xPixel\(3),
	combout => \vga1|Equal0~2_combout\);

-- Location: FF_X40_Y51_N1
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
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(0));

-- Location: LCCOMB_X40_Y51_N8
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

-- Location: LCCOMB_X40_Y51_N20
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

-- Location: LCCOMB_X40_Y51_N22
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

-- Location: FF_X40_Y51_N23
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

-- Location: LCCOMB_X41_Y51_N22
\vga1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~0_combout\ = (!\vga1|yPixel\(1) & (!\vga1|yPixel\(6) & (!\vga1|yPixel\(8) & \vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(2),
	combout => \vga1|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y51_N4
\vga1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~1_combout\ = (!\vga1|yPixel\(4) & (\vga1|yPixel\(0) & (!\vga1|yPixel\(5) & \vga1|yPixel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \vga1|yPixel\(0),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(3),
	combout => \vga1|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y51_N24
\vga1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~18_combout\ = \vga1|yPixel\(9) $ (\vga1|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(9),
	cin => \vga1|Add1~17\,
	combout => \vga1|Add1~18_combout\);

-- Location: LCCOMB_X41_Y51_N28
\vga1|yPixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~3_combout\ = (\vga1|Add1~18_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add1~18_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~3_combout\);

-- Location: FF_X41_Y51_N29
\vga1|yPixel[9]\ : dffeas
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
	q => \vga1|yPixel\(9));

-- Location: LCCOMB_X41_Y51_N10
\vga1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Equal1~2_combout\ = (\vga1|Equal1~0_combout\ & (!\vga1|yPixel\(7) & (\vga1|Equal1~1_combout\ & \vga1|yPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal1~0_combout\,
	datab => \vga1|yPixel\(7),
	datac => \vga1|Equal1~1_combout\,
	datad => \vga1|yPixel\(9),
	combout => \vga1|Equal1~2_combout\);

-- Location: LCCOMB_X41_Y51_N6
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

-- Location: FF_X41_Y51_N7
\vga1|yPixel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|yPixel~1_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(1));

-- Location: LCCOMB_X40_Y51_N10
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

-- Location: LCCOMB_X41_Y51_N16
\vga1|yPixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|yPixel~0_combout\ = (\vga1|Add1~4_combout\ & !\vga1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|Add1~4_combout\,
	datad => \vga1|Equal1~2_combout\,
	combout => \vga1|yPixel~0_combout\);

-- Location: FF_X41_Y51_N17
\vga1|yPixel[2]\ : dffeas
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
	q => \vga1|yPixel\(2));

-- Location: LCCOMB_X40_Y51_N12
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

-- Location: LCCOMB_X41_Y51_N24
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

-- Location: FF_X41_Y51_N25
\vga1|yPixel[3]\ : dffeas
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
	q => \vga1|yPixel\(3));

-- Location: LCCOMB_X40_Y51_N14
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

-- Location: FF_X40_Y51_N15
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

-- Location: LCCOMB_X40_Y51_N16
\vga1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|Add1~10_combout\ = (\vga1|yPixel\(5) & (!\vga1|Add1~9\)) # (!\vga1|yPixel\(5) & ((\vga1|Add1~9\) # (GND)))
-- \vga1|Add1~11\ = CARRY((!\vga1|Add1~9\) # (!\vga1|yPixel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(5),
	datad => VCC,
	cin => \vga1|Add1~9\,
	combout => \vga1|Add1~10_combout\,
	cout => \vga1|Add1~11\);

-- Location: FF_X40_Y51_N17
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

-- Location: LCCOMB_X40_Y51_N18
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

-- Location: FF_X40_Y51_N19
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

-- Location: FF_X40_Y51_N21
\vga1|yPixel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	d => \vga1|Add1~14_combout\,
	ena => \vga1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|yPixel\(7));

-- Location: LCCOMB_X40_Y51_N0
\Mux145~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~0_combout\ = (\vga1|yPixel\(8) & (\vga1|yPixel\(5) & \vga1|yPixel\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(8),
	datab => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(6),
	combout => \Mux145~0_combout\);

-- Location: LCCOMB_X41_Y51_N12
\vga1|display_area~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|display_area~0_combout\ = (!\vga1|yPixel\(9) & (((!\vga1|xPixel\(7) & !\vga1|xPixel\(8))) # (!\vga1|xPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|yPixel\(9),
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(8),
	combout => \vga1|display_area~0_combout\);

-- Location: LCCOMB_X41_Y51_N26
\vga1|display_area~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|display_area~1_combout\ = (\vga1|display_area~0_combout\ & ((!\Mux145~0_combout\) # (!\vga1|yPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(7),
	datac => \Mux145~0_combout\,
	datad => \vga1|display_area~0_combout\,
	combout => \vga1|display_area~1_combout\);

-- Location: FF_X41_Y51_N27
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

-- Location: LCCOMB_X40_Y52_N8
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\vga1|yPixel\(8) & (\vga1|yPixel\(6) $ (((\vga1|yPixel\(5)) # (\vga1|yPixel\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(8),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X41_Y52_N24
\Mux321~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~0_combout\ = (!\vga1|xPixel\(7) & (!\vga1|xPixel\(8) & (\vga1|xPixel\(5) & \Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(5),
	datad => \Mux17~0_combout\,
	combout => \Mux321~0_combout\);

-- Location: LCCOMB_X39_Y52_N2
\Mux321~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~9_combout\ = (!\vga1|xPixel\(7) & (!\vga1|xPixel\(5) & (\Mux17~0_combout\ & !\vga1|xPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(5),
	datac => \Mux17~0_combout\,
	datad => \vga1|xPixel\(8),
	combout => \Mux321~9_combout\);

-- Location: LCCOMB_X40_Y51_N26
\Mux137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~0_combout\ = (\vga1|yPixel\(8) & (!\vga1|yPixel\(6) & (!\vga1|yPixel\(7) & \vga1|yPixel\(5))))

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
	combout => \Mux137~0_combout\);

-- Location: LCCOMB_X40_Y50_N4
\Mux233~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux233~0_combout\ = (!\vga1|yPixel\(6) & ((\vga1|yPixel\(8) & (\vga1|yPixel\(5) & !\vga1|yPixel\(7))) # (!\vga1|yPixel\(8) & ((\vga1|yPixel\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(7),
	combout => \Mux233~0_combout\);

-- Location: LCCOMB_X39_Y51_N28
\Mux241~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux241~0_combout\ = (\vga1|yPixel\(7) & (((!\vga1|yPixel\(6) & !\vga1|yPixel\(8))))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(5) & ((\vga1|yPixel\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(6),
	datad => \vga1|yPixel\(8),
	combout => \Mux241~0_combout\);

-- Location: LCCOMB_X39_Y51_N14
\Mux321~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~5_combout\ = (\vga1|xPixel\(4) & ((\vga1|xPixel\(5) & (\Mux145~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux241~0_combout\))))) # (!\vga1|xPixel\(4) & (\vga1|xPixel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(5),
	datac => \Mux145~0_combout\,
	datad => \Mux241~0_combout\,
	combout => \Mux321~5_combout\);

-- Location: LCCOMB_X39_Y52_N28
\Mux321~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~6_combout\ = (\vga1|xPixel\(4) & (((\vga1|xPixel\(8)) # (\Mux321~5_combout\)))) # (!\vga1|xPixel\(4) & ((\vga1|xPixel\(8) & ((\Mux321~5_combout\))) # (!\vga1|xPixel\(8) & (\Mux233~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux233~0_combout\,
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(8),
	datad => \Mux321~5_combout\,
	combout => \Mux321~6_combout\);

-- Location: LCCOMB_X39_Y52_N30
\Mux321~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~7_combout\ = (\vga1|xPixel\(8) & (\Mux137~0_combout\ & (!\vga1|xPixel\(7) & !\Mux321~6_combout\))) # (!\vga1|xPixel\(8) & (((\vga1|xPixel\(7) & \Mux321~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \Mux137~0_combout\,
	datac => \vga1|xPixel\(7),
	datad => \Mux321~6_combout\,
	combout => \Mux321~7_combout\);

-- Location: LCCOMB_X39_Y52_N12
\Mux321~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~1_combout\ = (\vga1|xPixel\(4) & (((!\vga1|xPixel\(5) & \Mux145~0_combout\)))) # (!\vga1|xPixel\(4) & (\Mux137~0_combout\ & (\vga1|xPixel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \Mux137~0_combout\,
	datac => \vga1|xPixel\(5),
	datad => \Mux145~0_combout\,
	combout => \Mux321~1_combout\);

-- Location: LCCOMB_X40_Y51_N30
\Mux137~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~1_combout\ = (\vga1|yPixel\(5) & (\vga1|yPixel\(8) & !\vga1|yPixel\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(7),
	combout => \Mux137~1_combout\);

-- Location: LCCOMB_X40_Y51_N28
\Mux238~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux238~0_combout\ = (\vga1|yPixel\(7) & (!\vga1|yPixel\(8) & !\vga1|yPixel\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(7),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(6),
	combout => \Mux238~0_combout\);

-- Location: LCCOMB_X39_Y54_N28
\Mux321~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~2_combout\ = (\vga1|xPixel\(5) & (!\vga1|xPixel\(7) & ((\Mux238~0_combout\)))) # (!\vga1|xPixel\(5) & (\vga1|xPixel\(7) & (\Mux137~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(7),
	datac => \Mux137~1_combout\,
	datad => \Mux238~0_combout\,
	combout => \Mux321~2_combout\);

-- Location: LCCOMB_X39_Y54_N6
\Mux321~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~3_combout\ = (\vga1|xPixel\(8) & (((\vga1|xPixel\(7))))) # (!\vga1|xPixel\(8) & (\vga1|xPixel\(4) & ((\Mux321~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(8),
	datad => \Mux321~2_combout\,
	combout => \Mux321~3_combout\);

-- Location: LCCOMB_X39_Y52_N10
\Mux321~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~4_combout\ = (\vga1|xPixel\(8) & ((\Mux321~3_combout\ & ((\Mux17~0_combout\))) # (!\Mux321~3_combout\ & (\Mux321~1_combout\)))) # (!\vga1|xPixel\(8) & (((\Mux321~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~1_combout\,
	datab => \Mux17~0_combout\,
	datac => \vga1|xPixel\(8),
	datad => \Mux321~3_combout\,
	combout => \Mux321~4_combout\);

-- Location: LCCOMB_X39_Y52_N20
\Mux321~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~8_combout\ = (\vga1|xPixel\(9) & (\vga1|xPixel\(6))) # (!\vga1|xPixel\(9) & ((\vga1|xPixel\(6) & ((\Mux321~4_combout\))) # (!\vga1|xPixel\(6) & (\Mux321~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(6),
	datac => \Mux321~7_combout\,
	datad => \Mux321~4_combout\,
	combout => \Mux321~8_combout\);

-- Location: LCCOMB_X39_Y52_N0
\Mux321~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~10_combout\ = (\vga1|xPixel\(9) & ((\Mux321~8_combout\ & ((\Mux321~9_combout\))) # (!\Mux321~8_combout\ & (\Mux321~0_combout\)))) # (!\vga1|xPixel\(9) & (((\Mux321~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \Mux321~0_combout\,
	datac => \Mux321~9_combout\,
	datad => \Mux321~8_combout\,
	combout => \Mux321~10_combout\);

-- Location: LCCOMB_X40_Y52_N12
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\vga1|yPixel\(8) & ((\vga1|yPixel\(6) & (!\vga1|yPixel\(5) & !\vga1|yPixel\(7))) # (!\vga1|yPixel\(6) & (\vga1|yPixel\(5) & \vga1|yPixel\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(7),
	datad => \vga1|yPixel\(8),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X40_Y52_N10
\Mux326~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~13_combout\ = (!\vga1|xPixel\(8) & (!\vga1|xPixel\(7) & \Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(7),
	datad => \Mux22~0_combout\,
	combout => \Mux326~13_combout\);

-- Location: LCCOMB_X40_Y52_N22
\Mux326~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~3_combout\ = (\vga1|xPixel\(4) & (((\Mux145~0_combout\)))) # (!\vga1|xPixel\(4) & (\vga1|xPixel\(5) & ((\Mux137~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \Mux145~0_combout\,
	datac => \vga1|xPixel\(4),
	datad => \Mux137~1_combout\,
	combout => \Mux326~3_combout\);

-- Location: LCCOMB_X41_Y52_N2
\Mux326~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~4_combout\ = (\vga1|yPixel\(5) & (\vga1|yPixel\(7) $ (\vga1|yPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(5),
	combout => \Mux326~4_combout\);

-- Location: LCCOMB_X40_Y52_N28
\Mux326~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~5_combout\ = (!\vga1|yPixel\(6) & (\vga1|xPixel\(5) & (\vga1|xPixel\(4) & \Mux326~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(4),
	datad => \Mux326~4_combout\,
	combout => \Mux326~5_combout\);

-- Location: LCCOMB_X40_Y52_N26
\Mux326~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~6_combout\ = (\vga1|xPixel\(8) & (\vga1|xPixel\(7))) # (!\vga1|xPixel\(8) & ((\vga1|xPixel\(7) & (\Mux326~3_combout\)) # (!\vga1|xPixel\(7) & ((\Mux326~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(7),
	datac => \Mux326~3_combout\,
	datad => \Mux326~5_combout\,
	combout => \Mux326~6_combout\);

-- Location: LCCOMB_X40_Y52_N14
\Mux326~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~1_combout\ = (\vga1|xPixel\(4) & ((\vga1|xPixel\(5) & (\Mux137~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux137~1_combout\))))) # (!\vga1|xPixel\(4) & (\vga1|xPixel\(5) & ((\Mux137~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(5),
	datac => \Mux137~0_combout\,
	datad => \Mux137~1_combout\,
	combout => \Mux326~1_combout\);

-- Location: LCCOMB_X40_Y52_N16
\Mux326~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~2_combout\ = (\Mux326~1_combout\) # ((!\vga1|xPixel\(4) & (!\vga1|xPixel\(5) & \Mux145~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(5),
	datac => \Mux326~1_combout\,
	datad => \Mux145~0_combout\,
	combout => \Mux326~2_combout\);

-- Location: LCCOMB_X40_Y52_N4
\Mux326~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~7_combout\ = (\vga1|xPixel\(8) & ((\Mux326~6_combout\ & (\Mux22~0_combout\)) # (!\Mux326~6_combout\ & ((\Mux326~2_combout\))))) # (!\vga1|xPixel\(8) & (((\Mux326~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \vga1|xPixel\(8),
	datac => \Mux326~6_combout\,
	datad => \Mux326~2_combout\,
	combout => \Mux326~7_combout\);

-- Location: LCCOMB_X40_Y52_N18
\Mux326~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~0_combout\ = (\vga1|xPixel\(5) & ((\vga1|xPixel\(4) & (\Mux145~0_combout\)) # (!\vga1|xPixel\(4) & ((\Mux137~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \Mux145~0_combout\,
	datac => \vga1|xPixel\(5),
	datad => \Mux137~1_combout\,
	combout => \Mux326~0_combout\);

-- Location: LCCOMB_X39_Y51_N0
\Mux326~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~8_combout\ = (\vga1|yPixel\(7) & (!\vga1|yPixel\(6) & ((!\vga1|yPixel\(8))))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(8) & ((\vga1|yPixel\(6)) # (!\vga1|xPixel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(7),
	datab => \vga1|yPixel\(6),
	datac => \vga1|xPixel\(4),
	datad => \vga1|yPixel\(8),
	combout => \Mux326~8_combout\);

-- Location: LCCOMB_X40_Y52_N6
\Mux326~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~9_combout\ = (\vga1|yPixel\(5) & (\Mux326~8_combout\ & ((!\vga1|xPixel\(5)) # (!\vga1|yPixel\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(5),
	datab => \vga1|yPixel\(8),
	datac => \vga1|xPixel\(5),
	datad => \Mux326~8_combout\,
	combout => \Mux326~9_combout\);

-- Location: LCCOMB_X40_Y52_N20
\Mux326~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~10_combout\ = (\vga1|xPixel\(4) & ((\vga1|xPixel\(5) & (\Mux137~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux326~9_combout\))))) # (!\vga1|xPixel\(4) & (((\Mux326~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \Mux137~0_combout\,
	datac => \vga1|xPixel\(5),
	datad => \Mux326~9_combout\,
	combout => \Mux326~10_combout\);

-- Location: LCCOMB_X40_Y52_N2
\Mux326~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~11_combout\ = (\vga1|xPixel\(8) & (\Mux326~0_combout\ & (!\vga1|xPixel\(7)))) # (!\vga1|xPixel\(8) & (((\vga1|xPixel\(7) & \Mux326~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \Mux326~0_combout\,
	datac => \vga1|xPixel\(7),
	datad => \Mux326~10_combout\,
	combout => \Mux326~11_combout\);

-- Location: LCCOMB_X40_Y52_N0
\Mux326~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~12_combout\ = (\vga1|xPixel\(9) & (\vga1|xPixel\(6))) # (!\vga1|xPixel\(9) & ((\vga1|xPixel\(6) & (\Mux326~7_combout\)) # (!\vga1|xPixel\(6) & ((\Mux326~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(6),
	datac => \Mux326~7_combout\,
	datad => \Mux326~11_combout\,
	combout => \Mux326~12_combout\);

-- Location: LCCOMB_X40_Y52_N24
\Mux326~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux326~14_combout\ = (\vga1|xPixel\(9) & (\Mux326~13_combout\ & (\vga1|xPixel\(5) $ (\Mux326~12_combout\)))) # (!\vga1|xPixel\(9) & (((\Mux326~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~13_combout\,
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(9),
	datad => \Mux326~12_combout\,
	combout => \Mux326~14_combout\);

-- Location: LCCOMB_X39_Y51_N30
\Mux322~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~0_combout\ = (!\vga1|xPixel\(5) & (!\vga1|xPixel\(8) & (\vga1|xPixel\(6) & !\vga1|xPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(6),
	datad => \vga1|xPixel\(7),
	combout => \Mux322~0_combout\);

-- Location: LCCOMB_X39_Y54_N4
\Mux322~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~13_combout\ = (\Mux238~0_combout\ & (\vga1|xPixel\(9) & \Mux322~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux238~0_combout\,
	datac => \vga1|xPixel\(9),
	datad => \Mux322~0_combout\,
	combout => \Mux322~13_combout\);

-- Location: LCCOMB_X41_Y50_N24
\Mux322~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~2_combout\ = (\vga1|xPixel\(5) & (\vga1|xPixel\(6) $ (((\vga1|xPixel\(8) & !\vga1|xPixel\(7)))))) # (!\vga1|xPixel\(5) & (!\vga1|xPixel\(8) & (\vga1|xPixel\(7) & !\vga1|xPixel\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(6),
	combout => \Mux322~2_combout\);

-- Location: LCCOMB_X41_Y50_N26
\Mux322~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~3_combout\ = (\vga1|xPixel\(8) & (!\vga1|xPixel\(7) & ((!\vga1|xPixel\(5)) # (!\vga1|xPixel\(6))))) # (!\vga1|xPixel\(8) & (((\vga1|xPixel\(7) & \vga1|xPixel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(5),
	combout => \Mux322~3_combout\);

-- Location: LCCOMB_X41_Y50_N4
\Mux322~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~4_combout\ = (\Mux322~3_combout\ & ((\Mux322~2_combout\) # (\Mux137~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~2_combout\,
	datac => \Mux322~3_combout\,
	datad => \Mux137~0_combout\,
	combout => \Mux322~4_combout\);

-- Location: LCCOMB_X41_Y50_N18
\Mux322~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~1_combout\ = (\vga1|xPixel\(7) & ((\Mux238~0_combout\))) # (!\vga1|xPixel\(7) & (\Mux233~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datac => \Mux233~0_combout\,
	datad => \Mux238~0_combout\,
	combout => \Mux322~1_combout\);

-- Location: LCCOMB_X41_Y50_N14
\Mux322~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~5_combout\ = (\Mux322~2_combout\ & ((\Mux322~4_combout\ & (\Mux145~0_combout\)) # (!\Mux322~4_combout\ & ((\Mux322~1_combout\))))) # (!\Mux322~2_combout\ & (((\Mux322~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~2_combout\,
	datab => \Mux145~0_combout\,
	datac => \Mux322~4_combout\,
	datad => \Mux322~1_combout\,
	combout => \Mux322~5_combout\);

-- Location: LCCOMB_X41_Y50_N22
\Mux322~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~8_combout\ = (\vga1|xPixel\(7) & ((\vga1|xPixel\(5) & ((\vga1|xPixel\(6)))) # (!\vga1|xPixel\(5) & (!\vga1|xPixel\(8) & !\vga1|xPixel\(6))))) # (!\vga1|xPixel\(7) & (\vga1|xPixel\(8) & (\vga1|xPixel\(5) $ (\vga1|xPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(6),
	combout => \Mux322~8_combout\);

-- Location: LCCOMB_X39_Y50_N2
\Mux322~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~7_combout\ = (\vga1|xPixel\(5) & (\vga1|xPixel\(7) & (\vga1|xPixel\(6) $ (!\vga1|xPixel\(8))))) # (!\vga1|xPixel\(5) & (!\vga1|xPixel\(6) & (\vga1|xPixel\(8) $ (\vga1|xPixel\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(8),
	datad => \vga1|xPixel\(7),
	combout => \Mux322~7_combout\);

-- Location: LCCOMB_X41_Y50_N28
\Mux322~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~9_combout\ = (\Mux322~8_combout\ & ((\Mux322~7_combout\) # (\Mux137~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~8_combout\,
	datac => \Mux322~7_combout\,
	datad => \Mux137~1_combout\,
	combout => \Mux322~9_combout\);

-- Location: LCCOMB_X40_Y51_N4
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

-- Location: LCCOMB_X41_Y50_N20
\Mux322~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~6_combout\ = (\vga1|xPixel\(5) & (\Mux234~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux145~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux234~0_combout\,
	datac => \vga1|xPixel\(5),
	datad => \Mux145~0_combout\,
	combout => \Mux322~6_combout\);

-- Location: LCCOMB_X41_Y50_N10
\Mux322~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~10_combout\ = (\Mux322~9_combout\ & ((\Mux238~0_combout\) # ((!\Mux322~7_combout\)))) # (!\Mux322~9_combout\ & (((\Mux322~7_combout\ & \Mux322~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux238~0_combout\,
	datab => \Mux322~9_combout\,
	datac => \Mux322~7_combout\,
	datad => \Mux322~6_combout\,
	combout => \Mux322~10_combout\);

-- Location: LCCOMB_X41_Y50_N12
\Mux322~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~14_combout\ = (!\vga1|xPixel\(9) & ((\vga1|xPixel\(4) & (\Mux322~5_combout\)) # (!\vga1|xPixel\(4) & ((\Mux322~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(9),
	datac => \Mux322~5_combout\,
	datad => \Mux322~10_combout\,
	combout => \Mux322~14_combout\);

-- Location: LCCOMB_X39_Y54_N22
\Mux325~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~7_combout\ = (\vga1|xPixel\(8) & (((\vga1|xPixel\(5))))) # (!\vga1|xPixel\(8) & ((\vga1|xPixel\(5) & ((\Mux145~0_combout\))) # (!\vga1|xPixel\(5) & (\Mux137~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux137~1_combout\,
	datab => \vga1|xPixel\(8),
	datac => \Mux145~0_combout\,
	datad => \vga1|xPixel\(5),
	combout => \Mux325~7_combout\);

-- Location: LCCOMB_X41_Y51_N18
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\vga1|yPixel\(8) & (!\vga1|yPixel\(7) & (\vga1|yPixel\(5) $ (\vga1|yPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(5),
	datab => \vga1|yPixel\(6),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(7),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X39_Y54_N14
\Mux325~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~9_combout\ = (\vga1|xPixel\(6) & ((\vga1|xPixel\(8) & ((\Mux19~0_combout\))) # (!\vga1|xPixel\(8) & (\vga1|xPixel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(4),
	datac => \Mux19~0_combout\,
	datad => \vga1|xPixel\(6),
	combout => \Mux325~9_combout\);

-- Location: LCCOMB_X39_Y50_N8
\vga1|ph_sync~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~4_combout\ = (!\vga1|xPixel\(6) & !\vga1|xPixel\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datad => \vga1|xPixel\(5),
	combout => \vga1|ph_sync~4_combout\);

-- Location: LCCOMB_X39_Y54_N0
\Mux325~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~8_combout\ = (\vga1|ph_sync~4_combout\ & ((\vga1|xPixel\(4) & (\Mux137~0_combout\)) # (!\vga1|xPixel\(4) & ((\Mux238~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|ph_sync~4_combout\,
	datac => \Mux137~0_combout\,
	datad => \Mux238~0_combout\,
	combout => \Mux325~8_combout\);

-- Location: LCCOMB_X39_Y54_N8
\Mux325~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~10_combout\ = (\vga1|xPixel\(8) & (!\Mux325~7_combout\ & (\Mux325~9_combout\))) # (!\vga1|xPixel\(8) & ((\Mux325~8_combout\) # ((\Mux325~7_combout\ & \Mux325~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~7_combout\,
	datab => \vga1|xPixel\(8),
	datac => \Mux325~9_combout\,
	datad => \Mux325~8_combout\,
	combout => \Mux325~10_combout\);

-- Location: LCCOMB_X39_Y54_N20
\Mux325~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~0_combout\ = (\vga1|xPixel\(8) & ((\vga1|xPixel\(5) & ((\vga1|xPixel\(6)))) # (!\vga1|xPixel\(5) & (\vga1|xPixel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(8),
	datad => \vga1|xPixel\(5),
	combout => \Mux325~0_combout\);

-- Location: LCCOMB_X39_Y54_N26
\Mux325~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~1_combout\ = (\vga1|xPixel\(8) & ((\vga1|xPixel\(5) & ((!\vga1|xPixel\(6)))) # (!\vga1|xPixel\(5) & ((\vga1|xPixel\(6)) # (!\vga1|xPixel\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(4),
	datad => \vga1|xPixel\(6),
	combout => \Mux325~1_combout\);

-- Location: LCCOMB_X39_Y54_N24
\Mux325~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~2_combout\ = (\Mux325~0_combout\ & ((\Mux325~1_combout\ & (\Mux137~1_combout\)) # (!\Mux325~1_combout\ & ((\Mux137~0_combout\))))) # (!\Mux325~0_combout\ & (((\Mux325~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux137~1_combout\,
	datab => \Mux325~0_combout\,
	datac => \Mux325~1_combout\,
	datad => \Mux137~0_combout\,
	combout => \Mux325~2_combout\);

-- Location: LCCOMB_X39_Y54_N2
\Mux325~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~3_combout\ = (!\vga1|xPixel\(9) & (\Mux325~2_combout\ & ((\Mux325~0_combout\) # (\Mux145~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \Mux325~0_combout\,
	datac => \Mux145~0_combout\,
	datad => \Mux325~2_combout\,
	combout => \Mux325~3_combout\);

-- Location: LCCOMB_X39_Y54_N16
\Mux325~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~4_combout\ = (\vga1|xPixel\(4) & (\vga1|xPixel\(6) & (!\vga1|xPixel\(9) & \Mux233~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(9),
	datad => \Mux233~0_combout\,
	combout => \Mux325~4_combout\);

-- Location: LCCOMB_X39_Y54_N18
\Mux325~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~5_combout\ = (\Mux325~4_combout\) # ((!\vga1|xPixel\(6) & (\Mux238~0_combout\ & \vga1|xPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \Mux238~0_combout\,
	datac => \vga1|xPixel\(9),
	datad => \Mux325~4_combout\,
	combout => \Mux325~5_combout\);

-- Location: LCCOMB_X39_Y54_N12
\Mux325~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~6_combout\ = (\Mux325~3_combout\) # ((\vga1|xPixel\(5) & (!\vga1|xPixel\(8) & \Mux325~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \Mux325~3_combout\,
	datac => \vga1|xPixel\(8),
	datad => \Mux325~5_combout\,
	combout => \Mux325~6_combout\);

-- Location: LCCOMB_X39_Y54_N30
\Mux325~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux325~11_combout\ = (\vga1|xPixel\(7) & (!\vga1|xPixel\(9) & (\Mux325~10_combout\))) # (!\vga1|xPixel\(7) & (((\Mux325~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(7),
	datac => \Mux325~10_combout\,
	datad => \Mux325~6_combout\,
	combout => \Mux325~11_combout\);

-- Location: LCCOMB_X42_Y53_N20
\library1|Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~26_combout\ = (\Mux325~11_combout\ & ((\Mux322~13_combout\) # (\Mux322~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~13_combout\,
	datac => \Mux322~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~26_combout\);

-- Location: LCCOMB_X40_Y51_N2
\Mux324~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~7_combout\ = (\vga1|xPixel\(4) & ((\Mux137~0_combout\))) # (!\vga1|xPixel\(4) & (\Mux137~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(4),
	datac => \Mux137~1_combout\,
	datad => \Mux137~0_combout\,
	combout => \Mux324~7_combout\);

-- Location: LCCOMB_X39_Y51_N6
\Mux324~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~13_combout\ = (\vga1|yPixel\(6) & (((\vga1|yPixel\(8) & \vga1|yPixel\(5))) # (!\vga1|xPixel\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|xPixel\(4),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(5),
	combout => \Mux324~13_combout\);

-- Location: LCCOMB_X39_Y51_N12
\Mux324~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~8_combout\ = (\vga1|xPixel\(4) & (((\vga1|xPixel\(5)) # (\Mux324~13_combout\)))) # (!\vga1|xPixel\(4) & ((\vga1|xPixel\(5) & ((\Mux324~13_combout\))) # (!\vga1|xPixel\(5) & (\Mux241~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux241~0_combout\,
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(5),
	datad => \Mux324~13_combout\,
	combout => \Mux324~8_combout\);

-- Location: LCCOMB_X39_Y51_N2
\Mux324~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~9_combout\ = (\vga1|xPixel\(7) & ((\vga1|xPixel\(5) & (\Mux324~7_combout\)) # (!\vga1|xPixel\(5) & ((\Mux324~8_combout\))))) # (!\vga1|xPixel\(7) & (\Mux324~7_combout\ & ((!\Mux324~8_combout\) # (!\vga1|xPixel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~7_combout\,
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(5),
	datad => \Mux324~8_combout\,
	combout => \Mux324~9_combout\);

-- Location: LCCOMB_X39_Y51_N8
\Mux324~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~10_combout\ = (\Mux324~9_combout\ & (\vga1|xPixel\(7) $ (\vga1|xPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(8),
	datad => \Mux324~9_combout\,
	combout => \Mux324~10_combout\);

-- Location: LCCOMB_X39_Y51_N4
\Mux324~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~2_combout\ = (\vga1|xPixel\(5) & (((\Mux137~0_combout\)))) # (!\vga1|xPixel\(5) & ((\vga1|xPixel\(4) & (\Mux145~0_combout\)) # (!\vga1|xPixel\(4) & ((\Mux137~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(4),
	datac => \Mux145~0_combout\,
	datad => \Mux137~0_combout\,
	combout => \Mux324~2_combout\);

-- Location: LCCOMB_X39_Y51_N26
\Mux324~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~3_combout\ = (\vga1|xPixel\(4) & (((\Mux145~0_combout\ & !\vga1|xPixel\(5))))) # (!\vga1|xPixel\(4) & (\Mux137~1_combout\ & ((\vga1|xPixel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux137~1_combout\,
	datab => \vga1|xPixel\(4),
	datac => \Mux145~0_combout\,
	datad => \vga1|xPixel\(5),
	combout => \Mux324~3_combout\);

-- Location: LCCOMB_X39_Y51_N20
\Mux321~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux321~11_combout\ = (\vga1|xPixel\(4) & (\vga1|xPixel\(5) & \Mux238~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(4),
	datac => \vga1|xPixel\(5),
	datad => \Mux238~0_combout\,
	combout => \Mux321~11_combout\);

-- Location: LCCOMB_X39_Y51_N22
\Mux324~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~4_combout\ = (\vga1|xPixel\(7) & ((\vga1|xPixel\(8)) # ((\Mux324~3_combout\)))) # (!\vga1|xPixel\(7) & (!\vga1|xPixel\(8) & ((\Mux321~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(8),
	datac => \Mux324~3_combout\,
	datad => \Mux321~11_combout\,
	combout => \Mux324~4_combout\);

-- Location: LCCOMB_X39_Y51_N24
\Mux324~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~5_combout\ = (\vga1|xPixel\(5) & ((\Mux19~0_combout\))) # (!\vga1|xPixel\(5) & (\Mux238~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux238~0_combout\,
	datac => \vga1|xPixel\(5),
	datad => \Mux19~0_combout\,
	combout => \Mux324~5_combout\);

-- Location: LCCOMB_X39_Y51_N18
\Mux324~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~6_combout\ = (\vga1|xPixel\(8) & ((\Mux324~4_combout\ & ((\Mux324~5_combout\))) # (!\Mux324~4_combout\ & (\Mux324~2_combout\)))) # (!\vga1|xPixel\(8) & (((\Mux324~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \Mux324~2_combout\,
	datac => \Mux324~4_combout\,
	datad => \Mux324~5_combout\,
	combout => \Mux324~6_combout\);

-- Location: LCCOMB_X39_Y51_N10
\Mux324~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~11_combout\ = (!\vga1|xPixel\(9) & ((\vga1|xPixel\(6) & ((\Mux324~6_combout\))) # (!\vga1|xPixel\(6) & (\Mux324~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(9),
	datac => \Mux324~10_combout\,
	datad => \Mux324~6_combout\,
	combout => \Mux324~11_combout\);

-- Location: LCCOMB_X39_Y51_N16
\Mux324~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux324~12_combout\ = (\Mux324~11_combout\) # ((\vga1|xPixel\(9) & (\Mux238~0_combout\ & \Mux322~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \Mux238~0_combout\,
	datac => \Mux322~0_combout\,
	datad => \Mux324~11_combout\,
	combout => \Mux324~12_combout\);

-- Location: LCCOMB_X40_Y50_N26
\Mux327~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~5_combout\ = (\vga1|xPixel\(8) & (!\vga1|xPixel\(9) & \vga1|xPixel\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(9),
	datad => \vga1|xPixel\(6),
	combout => \Mux327~5_combout\);

-- Location: LCCOMB_X40_Y50_N8
\Mux327~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~4_combout\ = (\vga1|xPixel\(8) & (!\vga1|xPixel\(5) & (!\vga1|xPixel\(9) & !\vga1|xPixel\(6)))) # (!\vga1|xPixel\(8) & (\vga1|xPixel\(9) & (\vga1|xPixel\(5) $ (\vga1|xPixel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(9),
	datad => \vga1|xPixel\(6),
	combout => \Mux327~4_combout\);

-- Location: LCCOMB_X40_Y50_N0
\Mux327~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~0_combout\ = (\vga1|yPixel\(7) & (\vga1|xPixel\(7))) # (!\vga1|yPixel\(7) & (\vga1|yPixel\(5) & ((\vga1|xPixel\(7)) # (\vga1|xPixel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(5),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(7),
	combout => \Mux327~0_combout\);

-- Location: LCCOMB_X40_Y50_N14
\Mux327~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~1_combout\ = (\vga1|yPixel\(6) & (\vga1|xPixel\(7) & (!\vga1|yPixel\(8) & !\Mux327~0_combout\))) # (!\vga1|yPixel\(6) & (\Mux327~0_combout\ & (\vga1|xPixel\(7) $ (\vga1|yPixel\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|xPixel\(7),
	datac => \vga1|yPixel\(8),
	datad => \Mux327~0_combout\,
	combout => \Mux327~1_combout\);

-- Location: LCCOMB_X40_Y50_N2
\Mux327~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~2_combout\ = (\vga1|yPixel\(6) & (\vga1|xPixel\(9) & (!\vga1|yPixel\(5) & !\vga1|yPixel\(7)))) # (!\vga1|yPixel\(6) & ((\vga1|yPixel\(7) & (\vga1|xPixel\(9))) # (!\vga1|yPixel\(7) & ((\vga1|yPixel\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|xPixel\(9),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(7),
	combout => \Mux327~2_combout\);

-- Location: LCCOMB_X40_Y50_N24
\Mux327~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~3_combout\ = (!\vga1|xPixel\(7) & (\Mux327~2_combout\ & (\vga1|xPixel\(9) $ (\vga1|yPixel\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(7),
	datac => \vga1|yPixel\(8),
	datad => \Mux327~2_combout\,
	combout => \Mux327~3_combout\);

-- Location: LCCOMB_X40_Y50_N16
\Mux327~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~6_combout\ = (\Mux327~5_combout\ & (!\Mux327~4_combout\ & (\Mux327~1_combout\))) # (!\Mux327~5_combout\ & (\Mux327~4_combout\ & ((\Mux327~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~5_combout\,
	datab => \Mux327~4_combout\,
	datac => \Mux327~1_combout\,
	datad => \Mux327~3_combout\,
	combout => \Mux327~6_combout\);

-- Location: LCCOMB_X41_Y50_N8
\Mux327~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~7_combout\ = (!\vga1|xPixel\(8) & (!\vga1|xPixel\(6) & \Mux234~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(8),
	datac => \vga1|xPixel\(6),
	datad => \Mux234~0_combout\,
	combout => \Mux327~7_combout\);

-- Location: LCCOMB_X40_Y50_N22
\Mux327~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~8_combout\ = (\vga1|yPixel\(6) & (\vga1|yPixel\(5) & (\vga1|yPixel\(8) & \vga1|xPixel\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(6),
	datab => \vga1|yPixel\(5),
	datac => \vga1|yPixel\(8),
	datad => \vga1|xPixel\(8),
	combout => \Mux327~8_combout\);

-- Location: LCCOMB_X40_Y50_N28
\Mux327~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~9_combout\ = (\vga1|xPixel\(8) & (\vga1|yPixel\(8) & (\vga1|yPixel\(5) & !\vga1|yPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|yPixel\(8),
	datac => \vga1|yPixel\(5),
	datad => \vga1|yPixel\(7),
	combout => \Mux327~9_combout\);

-- Location: LCCOMB_X40_Y50_N6
\Mux327~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~10_combout\ = (\vga1|xPixel\(7) & (\vga1|xPixel\(5))) # (!\vga1|xPixel\(7) & ((\vga1|xPixel\(5) & (\Mux327~8_combout\)) # (!\vga1|xPixel\(5) & ((\Mux327~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(5),
	datac => \Mux327~8_combout\,
	datad => \Mux327~9_combout\,
	combout => \Mux327~10_combout\);

-- Location: LCCOMB_X40_Y50_N12
\Mux327~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~11_combout\ = (\vga1|yPixel\(8) & (\vga1|yPixel\(5) & ((!\vga1|yPixel\(7))))) # (!\vga1|yPixel\(8) & (((!\vga1|xPixel\(6) & \vga1|yPixel\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(5),
	datab => \vga1|xPixel\(6),
	datac => \vga1|yPixel\(8),
	datad => \vga1|yPixel\(7),
	combout => \Mux327~11_combout\);

-- Location: LCCOMB_X40_Y50_N18
\Mux327~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~12_combout\ = (!\vga1|xPixel\(8) & (!\vga1|yPixel\(6) & \Mux327~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datac => \vga1|yPixel\(6),
	datad => \Mux327~11_combout\,
	combout => \Mux327~12_combout\);

-- Location: LCCOMB_X41_Y50_N6
\Mux327~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~13_combout\ = (\vga1|xPixel\(7) & ((\Mux327~10_combout\ & ((\Mux327~12_combout\))) # (!\Mux327~10_combout\ & (\Mux327~7_combout\)))) # (!\vga1|xPixel\(7) & (((\Mux327~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \Mux327~7_combout\,
	datac => \Mux327~10_combout\,
	datad => \Mux327~12_combout\,
	combout => \Mux327~13_combout\);

-- Location: LCCOMB_X41_Y50_N0
\Mux327~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux327~14_combout\ = (\vga1|xPixel\(4) & (((\Mux327~6_combout\)))) # (!\vga1|xPixel\(4) & (!\vga1|xPixel\(9) & ((\Mux327~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(9),
	datab => \vga1|xPixel\(4),
	datac => \Mux327~6_combout\,
	datad => \Mux327~13_combout\,
	combout => \Mux327~14_combout\);

-- Location: LCCOMB_X41_Y52_N18
\Mux323~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~9_combout\ = (!\vga1|xPixel\(5) & (!\vga1|xPixel\(8) & (\Mux19~0_combout\ & !\vga1|xPixel\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(8),
	datac => \Mux19~0_combout\,
	datad => \vga1|xPixel\(7),
	combout => \Mux323~9_combout\);

-- Location: LCCOMB_X41_Y52_N12
\Mux323~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~2_combout\ = (\vga1|xPixel\(7) & ((\vga1|xPixel\(5) & (\Mux137~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux238~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(5),
	datab => \vga1|xPixel\(7),
	datac => \Mux137~0_combout\,
	datad => \Mux238~0_combout\,
	combout => \Mux323~2_combout\);

-- Location: LCCOMB_X41_Y52_N4
\Mux323~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~6_combout\ = (!\vga1|xPixel\(7) & ((\vga1|xPixel\(5) & (\Mux145~0_combout\)) # (!\vga1|xPixel\(5) & ((\Mux137~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux145~0_combout\,
	datab => \Mux137~0_combout\,
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(5),
	combout => \Mux323~6_combout\);

-- Location: LCCOMB_X41_Y52_N14
\Mux323~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~3_combout\ = (!\vga1|xPixel\(7) & ((\vga1|xPixel\(5) & ((\Mux137~1_combout\))) # (!\vga1|xPixel\(5) & (\Mux145~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(5),
	datac => \Mux145~0_combout\,
	datad => \Mux137~1_combout\,
	combout => \Mux323~3_combout\);

-- Location: LCCOMB_X41_Y52_N0
\Mux323~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~4_combout\ = (\vga1|xPixel\(7) & ((\vga1|xPixel\(5) & ((\Mux234~0_combout\))) # (!\vga1|xPixel\(5) & (\Mux145~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(7),
	datab => \vga1|xPixel\(5),
	datac => \Mux145~0_combout\,
	datad => \Mux234~0_combout\,
	combout => \Mux323~4_combout\);

-- Location: LCCOMB_X41_Y52_N10
\Mux323~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~5_combout\ = (\vga1|xPixel\(4) & (\vga1|xPixel\(8))) # (!\vga1|xPixel\(4) & ((\vga1|xPixel\(8) & (\Mux323~3_combout\)) # (!\vga1|xPixel\(8) & ((\Mux323~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datab => \vga1|xPixel\(8),
	datac => \Mux323~3_combout\,
	datad => \Mux323~4_combout\,
	combout => \Mux323~5_combout\);

-- Location: LCCOMB_X41_Y52_N30
\Mux323~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~7_combout\ = (\vga1|xPixel\(4) & ((\Mux323~5_combout\ & ((\Mux323~6_combout\))) # (!\Mux323~5_combout\ & (\Mux323~2_combout\)))) # (!\vga1|xPixel\(4) & (((\Mux323~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~2_combout\,
	datab => \vga1|xPixel\(4),
	datac => \Mux323~6_combout\,
	datad => \Mux323~5_combout\,
	combout => \Mux323~7_combout\);

-- Location: LCCOMB_X41_Y52_N8
\Mux323~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~0_combout\ = (!\vga1|xPixel\(5) & (!\vga1|xPixel\(7) & !\vga1|xPixel\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(5),
	datac => \vga1|xPixel\(7),
	datad => \vga1|xPixel\(4),
	combout => \Mux323~0_combout\);

-- Location: LCCOMB_X41_Y52_N26
\Mux323~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~1_combout\ = (\vga1|Equal0~0_combout\ & ((\Mux137~0_combout\) # ((\Mux323~0_combout\ & \Mux327~9_combout\)))) # (!\vga1|Equal0~0_combout\ & (((\Mux323~0_combout\ & \Mux327~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~0_combout\,
	datab => \Mux137~0_combout\,
	datac => \Mux323~0_combout\,
	datad => \Mux327~9_combout\,
	combout => \Mux323~1_combout\);

-- Location: LCCOMB_X40_Y52_N30
\Mux323~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~11_combout\ = ((\vga1|xPixel\(8) & (\Mux17~0_combout\)) # (!\vga1|xPixel\(8) & ((\Mux326~0_combout\)))) # (!\vga1|xPixel\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(8),
	datab => \vga1|xPixel\(7),
	datac => \Mux17~0_combout\,
	datad => \Mux326~0_combout\,
	combout => \Mux323~11_combout\);

-- Location: LCCOMB_X41_Y52_N6
\Mux323~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~12_combout\ = (\vga1|xPixel\(7) & ((\Mux323~1_combout\) # (\Mux323~11_combout\))) # (!\vga1|xPixel\(7) & (\Mux323~1_combout\ & \Mux323~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(7),
	datac => \Mux323~1_combout\,
	datad => \Mux323~11_combout\,
	combout => \Mux323~12_combout\);

-- Location: LCCOMB_X41_Y52_N28
\Mux323~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~8_combout\ = (\vga1|xPixel\(6) & ((\vga1|xPixel\(9)) # ((\Mux323~12_combout\)))) # (!\vga1|xPixel\(6) & (!\vga1|xPixel\(9) & (\Mux323~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(6),
	datab => \vga1|xPixel\(9),
	datac => \Mux323~7_combout\,
	datad => \Mux323~12_combout\,
	combout => \Mux323~8_combout\);

-- Location: LCCOMB_X41_Y52_N16
\Mux323~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux323~10_combout\ = (\vga1|xPixel\(9) & ((\Mux323~8_combout\ & (\Mux323~9_combout\)) # (!\Mux323~8_combout\ & ((\Mux321~0_combout\))))) # (!\vga1|xPixel\(9) & (((\Mux323~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~9_combout\,
	datab => \Mux321~0_combout\,
	datac => \vga1|xPixel\(9),
	datad => \Mux323~8_combout\,
	combout => \Mux323~10_combout\);

-- Location: LCCOMB_X41_Y53_N14
\library1|Mux0~649\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~649_combout\ = (\Mux324~12_combout\ & (((!\Mux323~10_combout\) # (!\Mux327~14_combout\)) # (!\vga1|xPixel\(1)))) # (!\Mux324~12_combout\ & (((\Mux327~14_combout\) # (\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~649_combout\);

-- Location: LCCOMB_X40_Y54_N18
\library1|Mux0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~222_combout\ = (\Mux327~14_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~13_combout\,
	datac => \Mux324~11_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~222_combout\);

-- Location: LCCOMB_X41_Y53_N16
\library1|Mux0~648\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~648_combout\ = (!\vga1|yPixel\(1) & (\vga1|yPixel\(2) & (\library1|Mux0~222_combout\ & \Mux323~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~222_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~648_combout\);

-- Location: LCCOMB_X41_Y53_N8
\library1|Mux0~650\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~650_combout\ = (\library1|Mux0~26_combout\ & ((\library1|Mux0~648_combout\) # ((!\vga1|yPixel\(2) & !\library1|Mux0~649_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~26_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~649_combout\,
	datad => \library1|Mux0~648_combout\,
	combout => \library1|Mux0~650_combout\);

-- Location: LCCOMB_X41_Y53_N26
\library1|Mux0~651\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~651_combout\ = (\vga1|yPixel\(1) & (((!\vga1|yPixel\(2))))) # (!\vga1|yPixel\(1) & (\Mux324~12_combout\ & ((!\vga1|xPixel\(1)) # (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~651_combout\);

-- Location: LCCOMB_X41_Y53_N0
\library1|Mux0~652\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~652_combout\ = (\library1|Mux0~651_combout\ & (\Mux323~10_combout\ & (\library1|Mux0~26_combout\ & !\Mux327~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~651_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~26_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~652_combout\);

-- Location: LCCOMB_X41_Y53_N10
\library1|Mux0~653\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~653_combout\ = (\Mux326~14_combout\ & ((\Mux321~10_combout\) # ((\library1|Mux0~650_combout\)))) # (!\Mux326~14_combout\ & (!\Mux321~10_combout\ & ((\library1|Mux0~652_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~650_combout\,
	datad => \library1|Mux0~652_combout\,
	combout => \library1|Mux0~653_combout\);

-- Location: LCCOMB_X45_Y53_N22
\library1|Mux0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~107_combout\ = (!\Mux322~14_combout\ & (!\Mux323~10_combout\ & !\Mux322~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~14_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~107_combout\);

-- Location: LCCOMB_X45_Y53_N18
\library1|Mux0~654\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~654_combout\ = (\vga1|yPixel\(1) & (((\vga1|yPixel\(2))))) # (!\vga1|yPixel\(1) & (\Mux324~12_combout\ & (\vga1|xPixel\(1) $ (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~654_combout\);

-- Location: LCCOMB_X45_Y53_N28
\library1|Mux0~655\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~655_combout\ = (\library1|Mux0~107_combout\ & (!\Mux327~14_combout\ & (\Mux325~11_combout\ & !\library1|Mux0~654_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~107_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~654_combout\,
	combout => \library1|Mux0~655_combout\);

-- Location: LCCOMB_X41_Y50_N16
\Mux322~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~11_combout\ = (\vga1|xPixel\(4) & (\Mux322~5_combout\)) # (!\vga1|xPixel\(4) & ((\Mux322~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(4),
	datac => \Mux322~5_combout\,
	datad => \Mux322~10_combout\,
	combout => \Mux322~11_combout\);

-- Location: LCCOMB_X41_Y50_N2
\Mux322~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux322~12_combout\ = (\vga1|xPixel\(9) & (\Mux322~0_combout\ & (\Mux238~0_combout\))) # (!\vga1|xPixel\(9) & (((\Mux322~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~0_combout\,
	datab => \Mux238~0_combout\,
	datac => \vga1|xPixel\(9),
	datad => \Mux322~11_combout\,
	combout => \Mux322~12_combout\);

-- Location: LCCOMB_X40_Y58_N8
\library1|Mux0~643\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~643_combout\ = (\Mux327~14_combout\ & ((\vga1|yPixel\(2)) # ((\Mux323~10_combout\ & \Mux325~11_combout\)))) # (!\Mux327~14_combout\ & (\vga1|yPixel\(2) $ (((\Mux323~10_combout\) # (\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux323~10_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~643_combout\);

-- Location: LCCOMB_X39_Y58_N20
\library1|Mux0~644\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~644_combout\ = (\Mux325~11_combout\ & (\Mux324~12_combout\ & (\Mux327~14_combout\ $ (!\vga1|yPixel\(2))))) # (!\Mux325~11_combout\ & ((\Mux327~14_combout\ & (!\Mux324~12_combout\)) # (!\Mux327~14_combout\ & ((\vga1|yPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~644_combout\);

-- Location: LCCOMB_X40_Y58_N22
\library1|Mux0~645\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~645_combout\ = (\Mux322~12_combout\ & (((\Mux324~12_combout\)))) # (!\Mux322~12_combout\ & (\Mux323~10_combout\ & ((\library1|Mux0~644_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~644_combout\,
	combout => \library1|Mux0~645_combout\);

-- Location: LCCOMB_X41_Y58_N16
\library1|Mux0~646\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~646_combout\ = (\Mux323~10_combout\) # ((\Mux325~11_combout\) # (\vga1|yPixel\(2) $ (\Mux327~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~646_combout\);

-- Location: LCCOMB_X40_Y58_N16
\library1|Mux0~647\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~647_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~645_combout\ & ((!\library1|Mux0~646_combout\))) # (!\library1|Mux0~645_combout\ & (\library1|Mux0~643_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~645_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~643_combout\,
	datac => \library1|Mux0~645_combout\,
	datad => \library1|Mux0~646_combout\,
	combout => \library1|Mux0~647_combout\);

-- Location: LCCOMB_X41_Y55_N8
\library1|Mux0~656\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~656_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~653_combout\ & (\library1|Mux0~655_combout\)) # (!\library1|Mux0~653_combout\ & ((\library1|Mux0~647_combout\))))) # (!\Mux321~10_combout\ & (\library1|Mux0~653_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~653_combout\,
	datac => \library1|Mux0~655_combout\,
	datad => \library1|Mux0~647_combout\,
	combout => \library1|Mux0~656_combout\);

-- Location: LCCOMB_X40_Y53_N16
\library1|Mux0~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~374_combout\ = (\Mux323~10_combout\ & !\vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~10_combout\,
	datac => \vga1|xPixel\(1),
	combout => \library1|Mux0~374_combout\);

-- Location: LCCOMB_X41_Y53_N20
\library1|Mux0~790\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~790_combout\ = (\vga1|yPixel\(1) & !\Mux327~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|yPixel\(1),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~790_combout\);

-- Location: LCCOMB_X39_Y53_N2
\library1|Mux0~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~199_combout\ = (\Mux326~14_combout\ & (\Mux327~14_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~199_combout\);

-- Location: LCCOMB_X41_Y53_N2
\library1|Mux0~791\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~791_combout\ = (!\Mux324~12_combout\ & (!\vga1|xPixel\(1) & (\Mux326~14_combout\ $ (\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux326~14_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~791_combout\);

-- Location: LCCOMB_X41_Y53_N4
\library1|Mux0~792\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~792_combout\ = (\library1|Mux0~374_combout\ & ((\library1|Mux0~199_combout\) # ((\library1|Mux0~790_combout\ & \library1|Mux0~791_combout\)))) # (!\library1|Mux0~374_combout\ & (\library1|Mux0~790_combout\ & 
-- ((\library1|Mux0~791_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~374_combout\,
	datab => \library1|Mux0~790_combout\,
	datac => \library1|Mux0~199_combout\,
	datad => \library1|Mux0~791_combout\,
	combout => \library1|Mux0~792_combout\);

-- Location: LCCOMB_X42_Y54_N16
\library1|Mux0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~136_combout\ = (\Mux322~12_combout\ & !\Mux321~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~136_combout\);

-- Location: LCCOMB_X41_Y53_N18
\library1|Mux0~793\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~793_combout\ = (!\vga1|yPixel\(2) & (\Mux325~11_combout\ & (\library1|Mux0~792_combout\ & \library1|Mux0~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~792_combout\,
	datad => \library1|Mux0~136_combout\,
	combout => \library1|Mux0~793_combout\);

-- Location: LCCOMB_X41_Y58_N6
\library1|Mux0~797\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~797_combout\ = (\vga1|yPixel\(2) & ((\Mux322~12_combout\) # ((\Mux324~12_combout\ & \Mux325~11_combout\)))) # (!\vga1|yPixel\(2) & (\Mux322~12_combout\ & (\Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~12_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~797_combout\);

-- Location: LCCOMB_X40_Y58_N12
\library1|Mux0~794\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~794_combout\ = (\vga1|xPixel\(1)) # ((\vga1|yPixel\(1)) # ((\Mux322~14_combout\) # (\Mux322~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~14_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~794_combout\);

-- Location: LCCOMB_X40_Y58_N6
\library1|Mux0~795\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~795_combout\ = (\Mux326~14_combout\ & (!\library1|Mux0~794_combout\ & (\vga1|yPixel\(2) $ (\Mux324~12_combout\)))) # (!\Mux326~14_combout\ & (\vga1|yPixel\(2) $ ((\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~794_combout\,
	combout => \library1|Mux0~795_combout\);

-- Location: LCCOMB_X40_Y58_N24
\library1|Mux0~796\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~796_combout\ = (\Mux326~14_combout\ & (((\Mux325~11_combout\ & \library1|Mux0~795_combout\)))) # (!\Mux326~14_combout\ & (\Mux322~12_combout\ & (\Mux325~11_combout\ $ (\library1|Mux0~795_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~795_combout\,
	combout => \library1|Mux0~796_combout\);

-- Location: LCCOMB_X40_Y58_N26
\library1|Mux0~798\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~798_combout\ = (\Mux323~10_combout\ & (!\Mux326~14_combout\ & (!\library1|Mux0~797_combout\))) # (!\Mux323~10_combout\ & (((\library1|Mux0~796_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~797_combout\,
	datad => \library1|Mux0~796_combout\,
	combout => \library1|Mux0~798_combout\);

-- Location: LCCOMB_X41_Y55_N4
\library1|Mux0~799\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~799_combout\ = (\library1|Mux0~793_combout\) # ((\Mux321~10_combout\ & (!\Mux327~14_combout\ & \library1|Mux0~798_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~793_combout\,
	datad => \library1|Mux0~798_combout\,
	combout => \library1|Mux0~799_combout\);

-- Location: LCCOMB_X40_Y55_N0
\library1|Mux0~681\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~681_combout\ = (\vga1|yPixel\(1) & (\vga1|yPixel\(2) & (\Mux327~14_combout\ & !\Mux326~14_combout\))) # (!\vga1|yPixel\(1) & (!\vga1|yPixel\(2) & (!\Mux327~14_combout\ & \Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~681_combout\);

-- Location: LCCOMB_X40_Y55_N14
\library1|Mux0~680\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~680_combout\ = (\Mux327~14_combout\ & ((\vga1|yPixel\(1) & (!\vga1|yPixel\(2) & \Mux326~14_combout\)) # (!\vga1|yPixel\(1) & ((\Mux326~14_combout\) # (!\vga1|yPixel\(2)))))) # (!\Mux327~14_combout\ & (((\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~680_combout\);

-- Location: LCCOMB_X40_Y55_N26
\library1|Mux0~682\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~682_combout\ = (\Mux324~12_combout\ & (((\Mux325~11_combout\)))) # (!\Mux324~12_combout\ & ((\Mux325~11_combout\ & ((\library1|Mux0~680_combout\))) # (!\Mux325~11_combout\ & (\library1|Mux0~681_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~681_combout\,
	datac => \library1|Mux0~680_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~682_combout\);

-- Location: LCCOMB_X39_Y55_N22
\library1|Mux0~679\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~679_combout\ = (\vga1|yPixel\(2) & (!\Mux327~14_combout\ & ((\Mux326~14_combout\) # (!\vga1|yPixel\(1))))) # (!\vga1|yPixel\(2) & ((\Mux327~14_combout\ & ((!\Mux326~14_combout\))) # (!\Mux327~14_combout\ & (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~679_combout\);

-- Location: LCCOMB_X40_Y55_N8
\library1|Mux0~683\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~683_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~682_combout\ & (!\Mux326~14_combout\)) # (!\library1|Mux0~682_combout\ & ((\library1|Mux0~679_combout\))))) # (!\Mux324~12_combout\ & (((\library1|Mux0~682_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~682_combout\,
	datad => \library1|Mux0~679_combout\,
	combout => \library1|Mux0~683_combout\);

-- Location: LCCOMB_X39_Y55_N0
\library1|Mux0~687\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~687_combout\ = (\vga1|yPixel\(1) & (((\Mux325~11_combout\) # (\Mux326~14_combout\)) # (!\Mux327~14_combout\))) # (!\vga1|yPixel\(1) & (\Mux325~11_combout\ $ (((\Mux327~14_combout\ & !\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~687_combout\);

-- Location: LCCOMB_X40_Y55_N30
\library1|Mux0~684\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~684_combout\ = (\Mux325~11_combout\ & ((\vga1|yPixel\(1) & (\Mux326~14_combout\)) # (!\vga1|yPixel\(1) & ((\Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~684_combout\);

-- Location: LCCOMB_X40_Y55_N22
\library1|Mux0~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~456_combout\ = (\Mux327~14_combout\ & \Mux325~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~456_combout\);

-- Location: LCCOMB_X40_Y55_N16
\library1|Mux0~685\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~685_combout\ = (\Mux324~12_combout\ & ((\Mux327~14_combout\ & (\Mux325~11_combout\ $ (!\Mux326~14_combout\))) # (!\Mux327~14_combout\ & (\Mux325~11_combout\ & !\Mux326~14_combout\)))) # (!\Mux324~12_combout\ & (((\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~685_combout\);

-- Location: LCCOMB_X40_Y55_N18
\library1|Mux0~686\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~686_combout\ = (\vga1|yPixel\(2) & (\Mux324~12_combout\)) # (!\vga1|yPixel\(2) & (!\library1|Mux0~685_combout\ & ((\Mux324~12_combout\) # (\library1|Mux0~456_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~456_combout\,
	datad => \library1|Mux0~685_combout\,
	combout => \library1|Mux0~686_combout\);

-- Location: LCCOMB_X40_Y55_N12
\library1|Mux0~688\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~688_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~686_combout\ & (!\library1|Mux0~687_combout\)) # (!\library1|Mux0~686_combout\ & ((\library1|Mux0~684_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~686_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~687_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~684_combout\,
	datad => \library1|Mux0~686_combout\,
	combout => \library1|Mux0~688_combout\);

-- Location: LCCOMB_X40_Y55_N2
\library1|Mux0~689\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~689_combout\ = (\Mux323~10_combout\ & ((\Mux322~12_combout\) # ((\library1|Mux0~683_combout\)))) # (!\Mux323~10_combout\ & (!\Mux322~12_combout\ & ((\library1|Mux0~688_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~683_combout\,
	datad => \library1|Mux0~688_combout\,
	combout => \library1|Mux0~689_combout\);

-- Location: LCCOMB_X45_Y55_N24
\library1|Mux0~690\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~690_combout\ = (!\Mux326~14_combout\ & ((\vga1|yPixel\(2) & ((\vga1|yPixel\(1)) # (!\Mux324~12_combout\))) # (!\vga1|yPixel\(2) & (\vga1|yPixel\(1) & !\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux326~14_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~690_combout\);

-- Location: LCCOMB_X45_Y55_N26
\library1|Mux0~693\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~693_combout\ = (\Mux324~12_combout\) # ((\Mux326~14_combout\ & ((!\vga1|yPixel\(1)) # (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux326~14_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~693_combout\);

-- Location: LCCOMB_X45_Y55_N30
\library1|Mux0~691\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~691_combout\ = (\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & ((\Mux324~11_combout\) # (\Mux322~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~11_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~691_combout\);

-- Location: LCCOMB_X45_Y55_N18
\library1|Mux0~807\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~807_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & (\Mux326~14_combout\ & !\Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux326~14_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~807_combout\);

-- Location: LCCOMB_X45_Y55_N12
\library1|Mux0~692\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~692_combout\ = (\Mux325~11_combout\ & (((\Mux327~14_combout\) # (\library1|Mux0~807_combout\)))) # (!\Mux325~11_combout\ & (\library1|Mux0~691_combout\ & (!\Mux327~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~691_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~807_combout\,
	combout => \library1|Mux0~692_combout\);

-- Location: LCCOMB_X45_Y55_N16
\library1|Mux0~694\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~694_combout\ = (\Mux327~14_combout\ & ((\library1|Mux0~692_combout\ & ((\library1|Mux0~693_combout\))) # (!\library1|Mux0~692_combout\ & (\library1|Mux0~690_combout\)))) # (!\Mux327~14_combout\ & (((\library1|Mux0~692_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~690_combout\,
	datac => \library1|Mux0~693_combout\,
	datad => \library1|Mux0~692_combout\,
	combout => \library1|Mux0~694_combout\);

-- Location: LCCOMB_X46_Y54_N4
\library1|Mux0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~60_combout\ = (\vga1|yPixel\(2) & \vga1|yPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~60_combout\);

-- Location: LCCOMB_X39_Y55_N16
\library1|Mux0~670\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~670_combout\ = (\vga1|yPixel\(2) & ((\Mux325~11_combout\ & (\vga1|xPixel\(0))) # (!\Mux325~11_combout\ & ((\vga1|yPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~670_combout\);

-- Location: LCCOMB_X39_Y55_N6
\library1|Mux0~671\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~671_combout\ = (\Mux326~14_combout\ & ((\library1|Mux0~60_combout\) # ((\Mux325~11_combout\)))) # (!\Mux326~14_combout\ & (((\library1|Mux0~670_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~60_combout\,
	datab => \library1|Mux0~670_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~671_combout\);

-- Location: LCCOMB_X39_Y55_N12
\library1|Mux0~676\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~676_combout\ = (\Mux326~14_combout\ & ((!\vga1|yPixel\(1)) # (!\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~676_combout\);

-- Location: LCCOMB_X39_Y55_N18
\library1|Mux0~675\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~675_combout\ = (\vga1|yPixel\(1) & ((\vga1|xPixel\(0) & (\vga1|yPixel\(0) & \Mux326~14_combout\)) # (!\vga1|xPixel\(0) & ((!\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~675_combout\);

-- Location: LCCOMB_X39_Y55_N30
\library1|Mux0~677\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~677_combout\ = (\vga1|yPixel\(2) & (((\Mux325~11_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux325~11_combout\ & ((\library1|Mux0~675_combout\))) # (!\Mux325~11_combout\ & (\library1|Mux0~676_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~676_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~675_combout\,
	combout => \library1|Mux0~677_combout\);

-- Location: LCCOMB_X39_Y55_N4
\library1|Mux0~672\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~672_combout\ = (\Mux326~14_combout\) # ((!\Mux325~11_combout\ & ((\vga1|yPixel\(1)) # (\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~672_combout\);

-- Location: LCCOMB_X39_Y55_N14
\library1|Mux0~673\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~673_combout\ = (\vga1|yPixel\(1) & (((!\Mux325~11_combout\)) # (!\vga1|yPixel\(2)))) # (!\vga1|yPixel\(1) & ((\vga1|yPixel\(2)) # ((\Mux325~11_combout\) # (\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~673_combout\);

-- Location: LCCOMB_X39_Y55_N20
\library1|Mux0~674\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~674_combout\ = (\Mux324~12_combout\ & (((\Mux327~14_combout\)))) # (!\Mux324~12_combout\ & ((\Mux327~14_combout\ & (\library1|Mux0~672_combout\)) # (!\Mux327~14_combout\ & ((\library1|Mux0~673_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~672_combout\,
	datac => \library1|Mux0~673_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~674_combout\);

-- Location: LCCOMB_X39_Y55_N28
\library1|Mux0~678\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~678_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~674_combout\ & ((\library1|Mux0~677_combout\))) # (!\library1|Mux0~674_combout\ & (!\library1|Mux0~671_combout\)))) # (!\Mux324~12_combout\ & (((\library1|Mux0~674_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~671_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~677_combout\,
	datad => \library1|Mux0~674_combout\,
	combout => \library1|Mux0~678_combout\);

-- Location: LCCOMB_X40_Y55_N4
\library1|Mux0~695\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~695_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~689_combout\ & (\library1|Mux0~694_combout\)) # (!\library1|Mux0~689_combout\ & ((\library1|Mux0~678_combout\))))) # (!\Mux322~12_combout\ & (\library1|Mux0~689_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~689_combout\,
	datac => \library1|Mux0~694_combout\,
	datad => \library1|Mux0~678_combout\,
	combout => \library1|Mux0~695_combout\);

-- Location: LCCOMB_X38_Y55_N26
\library1|Mux0~658\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~658_combout\ = (\Mux322~12_combout\ & (!\vga1|yPixel\(2) & (!\Mux325~11_combout\ & !\Mux323~10_combout\))) # (!\Mux322~12_combout\ & (((\Mux325~11_combout\ & \Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~658_combout\);

-- Location: LCCOMB_X38_Y55_N24
\library1|Mux0~657\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~657_combout\ = (\Mux324~11_combout\) # ((\Mux322~13_combout\) # (\Mux327~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~11_combout\,
	datac => \Mux322~13_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~657_combout\);

-- Location: LCCOMB_X38_Y55_N16
\library1|Mux0~659\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~659_combout\ = (\library1|Mux0~658_combout\ & (!\library1|Mux0~657_combout\ & !\Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~658_combout\,
	datab => \library1|Mux0~657_combout\,
	datac => \Mux326~14_combout\,
	combout => \library1|Mux0~659_combout\);

-- Location: LCCOMB_X39_Y52_N26
\library1|Mux0~665\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~665_combout\ = (\Mux326~14_combout\ & (((!\Mux324~12_combout\)))) # (!\Mux326~14_combout\ & (\vga1|yPixel\(2) & (\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux326~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~665_combout\);

-- Location: LCCOMB_X39_Y52_N16
\library1|Mux0~666\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~666_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((\Mux324~12_combout\))) # (!\vga1|yPixel\(1) & (!\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux326~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~666_combout\);

-- Location: LCCOMB_X39_Y52_N22
\library1|Mux0~667\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~667_combout\ = (\Mux325~11_combout\ & (((!\vga1|xPixel\(0) & \library1|Mux0~666_combout\)) # (!\library1|Mux0~665_combout\))) # (!\Mux325~11_combout\ & ((\library1|Mux0~665_combout\ $ (\library1|Mux0~666_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~665_combout\,
	datad => \library1|Mux0~666_combout\,
	combout => \library1|Mux0~667_combout\);

-- Location: LCCOMB_X45_Y54_N8
\library1|Mux0~661\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~661_combout\ = (\vga1|xPixel\(0) & ((\Mux325~11_combout\ & (\vga1|yPixel\(2))) # (!\Mux325~11_combout\ & ((\vga1|yPixel\(1)))))) # (!\vga1|xPixel\(0) & (\vga1|yPixel\(2) & (\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~661_combout\);

-- Location: LCCOMB_X45_Y54_N6
\library1|Mux0~660\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~660_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((\Mux325~11_combout\))) # (!\vga1|yPixel\(1) & ((!\Mux325~11_combout\) # (!\vga1|xPixel\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~660_combout\);

-- Location: LCCOMB_X45_Y54_N26
\library1|Mux0~662\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~662_combout\ = (\Mux324~12_combout\ & (\library1|Mux0~660_combout\ & ((\Mux325~11_combout\) # (!\library1|Mux0~661_combout\)))) # (!\Mux324~12_combout\ & (\Mux325~11_combout\ & ((!\library1|Mux0~660_combout\) # 
-- (!\library1|Mux0~661_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~661_combout\,
	datad => \library1|Mux0~660_combout\,
	combout => \library1|Mux0~662_combout\);

-- Location: LCCOMB_X45_Y54_N28
\library1|Mux0~663\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~663_combout\ = (\Mux324~12_combout\ & (\Mux325~11_combout\ $ (((\library1|Mux0~661_combout\ & !\library1|Mux0~660_combout\))))) # (!\Mux324~12_combout\ & (\Mux325~11_combout\ & (\library1|Mux0~661_combout\ & \library1|Mux0~660_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~661_combout\,
	datad => \library1|Mux0~660_combout\,
	combout => \library1|Mux0~663_combout\);

-- Location: LCCOMB_X45_Y54_N10
\library1|Mux0~664\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~664_combout\ = \library1|Mux0~662_combout\ $ (((\Mux326~14_combout\ & !\library1|Mux0~663_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~662_combout\,
	datad => \library1|Mux0~663_combout\,
	combout => \library1|Mux0~664_combout\);

-- Location: LCCOMB_X40_Y55_N10
\library1|Mux0~668\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~668_combout\ = (\Mux327~14_combout\ & ((\library1|Mux0~664_combout\))) # (!\Mux327~14_combout\ & (\library1|Mux0~667_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datac => \library1|Mux0~667_combout\,
	datad => \library1|Mux0~664_combout\,
	combout => \library1|Mux0~668_combout\);

-- Location: LCCOMB_X40_Y55_N20
\library1|Mux0~669\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~669_combout\ = (\library1|Mux0~659_combout\) # ((!\vga1|xPixel\(1) & (\library1|Mux0~107_combout\ & \library1|Mux0~668_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~659_combout\,
	datac => \library1|Mux0~107_combout\,
	datad => \library1|Mux0~668_combout\,
	combout => \library1|Mux0~669_combout\);

-- Location: LCCOMB_X40_Y55_N6
\library1|Mux0~696\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~696_combout\ = (\Mux321~10_combout\ & (((\library1|Mux0~669_combout\)))) # (!\Mux321~10_combout\ & (!\vga1|xPixel\(1) & (\library1|Mux0~695_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~695_combout\,
	datad => \library1|Mux0~669_combout\,
	combout => \library1|Mux0~696_combout\);

-- Location: LCCOMB_X46_Y55_N8
\library1|Mux0~697\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~697_combout\ = (\Mux324~12_combout\ & (\vga1|yPixel\(1) $ (((\Mux325~11_combout\))))) # (!\Mux324~12_combout\ & (((\vga1|xPixel\(0) & !\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~697_combout\);

-- Location: LCCOMB_X46_Y55_N26
\library1|Mux0~700\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~700_combout\ = (\Mux324~12_combout\ & ((\vga1|yPixel\(1) & ((\Mux325~11_combout\) # (!\vga1|xPixel\(0)))) # (!\vga1|yPixel\(1) & ((!\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~700_combout\);

-- Location: LCCOMB_X39_Y55_N26
\library1|Mux0~804\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~804_combout\ = (\Mux324~11_combout\) # ((\Mux238~0_combout\ & (\vga1|xPixel\(9) & \Mux322~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux238~0_combout\,
	datab => \vga1|xPixel\(9),
	datac => \Mux324~11_combout\,
	datad => \Mux322~0_combout\,
	combout => \library1|Mux0~804_combout\);

-- Location: LCCOMB_X46_Y55_N2
\library1|Mux0~698\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~698_combout\ = (\Mux325~11_combout\ & (!\Mux327~14_combout\ & ((\library1|Mux0~804_combout\)))) # (!\Mux325~11_combout\ & (\vga1|xPixel\(0) & (\Mux327~14_combout\ $ (!\library1|Mux0~804_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(0),
	datac => \library1|Mux0~804_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~698_combout\);

-- Location: LCCOMB_X46_Y55_N0
\library1|Mux0~699\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~699_combout\ = (\vga1|yPixel\(2) & (((\Mux327~14_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux327~14_combout\ & (\vga1|yPixel\(1) & \library1|Mux0~698_combout\)) # (!\Mux327~14_combout\ & ((!\library1|Mux0~698_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~698_combout\,
	combout => \library1|Mux0~699_combout\);

-- Location: LCCOMB_X46_Y55_N4
\library1|Mux0~701\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~701_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~699_combout\ & ((\library1|Mux0~700_combout\))) # (!\library1|Mux0~699_combout\ & (!\library1|Mux0~697_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~699_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~697_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~700_combout\,
	datad => \library1|Mux0~699_combout\,
	combout => \library1|Mux0~701_combout\);

-- Location: LCCOMB_X46_Y55_N12
\library1|Mux0~707\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~707_combout\ = (\vga1|yPixel\(2) & ((\Mux323~10_combout\) # (\vga1|yPixel\(1) $ (!\Mux324~12_combout\)))) # (!\vga1|yPixel\(2) & (((\Mux324~12_combout\ & \Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~707_combout\);

-- Location: LCCOMB_X46_Y55_N14
\library1|Mux0~706\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~706_combout\ = (\vga1|yPixel\(2) & (!\Mux323~10_combout\ & ((\vga1|yPixel\(1)) # (\Mux324~12_combout\)))) # (!\vga1|yPixel\(2) & (((!\Mux324~12_combout\ & \Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~706_combout\);

-- Location: LCCOMB_X46_Y55_N6
\library1|Mux0~708\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~708_combout\ = (\library1|Mux0~707_combout\ & (\library1|Mux0~706_combout\ & ((\vga1|xPixel\(0)) # (!\Mux325~11_combout\)))) # (!\library1|Mux0~707_combout\ & ((\library1|Mux0~706_combout\ $ (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~707_combout\,
	datab => \vga1|xPixel\(0),
	datac => \library1|Mux0~706_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~708_combout\);

-- Location: LCCOMB_X38_Y51_N8
\library1|Mux0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~97_combout\ = (!\Mux322~13_combout\ & (!\Mux324~11_combout\ & !\Mux325~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datac => \Mux324~11_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~97_combout\);

-- Location: LCCOMB_X40_Y54_N14
\library1|Mux0~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~289_combout\ = (\Mux325~11_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~13_combout\,
	datac => \Mux324~11_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~289_combout\);

-- Location: LCCOMB_X46_Y55_N20
\library1|Mux0~709\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~709_combout\ = (\Mux323~10_combout\ & (((!\Mux324~12_combout\)) # (!\Mux327~14_combout\))) # (!\Mux323~10_combout\ & (\Mux327~14_combout\ & ((\library1|Mux0~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~289_combout\,
	combout => \library1|Mux0~709_combout\);

-- Location: LCCOMB_X46_Y55_N30
\library1|Mux0~710\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~710_combout\ = (\Mux322~12_combout\ & ((\Mux327~14_combout\ & ((\library1|Mux0~709_combout\))) # (!\Mux327~14_combout\ & (\library1|Mux0~97_combout\ & !\library1|Mux0~709_combout\)))) # (!\Mux322~12_combout\ & (\Mux327~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~97_combout\,
	datad => \library1|Mux0~709_combout\,
	combout => \library1|Mux0~710_combout\);

-- Location: LCCOMB_X46_Y55_N18
\library1|Mux0~702\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~702_combout\ = (\Mux325~11_combout\ & (!\Mux323~10_combout\ & (\vga1|xPixel\(0) $ (\vga1|yPixel\(2))))) # (!\Mux325~11_combout\ & (((!\vga1|yPixel\(2) & \Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~702_combout\);

-- Location: LCCOMB_X46_Y55_N16
\library1|Mux0~703\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~703_combout\ = \Mux325~11_combout\ $ (((!\vga1|yPixel\(1) & ((\library1|Mux0~702_combout\) # (!\Mux324~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~702_combout\,
	combout => \library1|Mux0~703_combout\);

-- Location: LCCOMB_X46_Y55_N10
\library1|Mux0~704\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~704_combout\ = (\Mux323~10_combout\ & (!\vga1|yPixel\(2) & !\library1|Mux0~703_combout\)) # (!\Mux323~10_combout\ & (\vga1|yPixel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|yPixel\(2),
	datad => \library1|Mux0~703_combout\,
	combout => \library1|Mux0~704_combout\);

-- Location: LCCOMB_X46_Y55_N24
\library1|Mux0~705\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~705_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~703_combout\ & (\Mux324~12_combout\ $ (\library1|Mux0~704_combout\))) # (!\library1|Mux0~703_combout\ & ((\library1|Mux0~704_combout\) # (!\Mux324~12_combout\))))) # (!\vga1|yPixel\(1) & 
-- (\library1|Mux0~703_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~703_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~704_combout\,
	combout => \library1|Mux0~705_combout\);

-- Location: LCCOMB_X46_Y55_N28
\library1|Mux0~711\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~711_combout\ = (\Mux322~12_combout\ & (((\library1|Mux0~710_combout\)))) # (!\Mux322~12_combout\ & ((\library1|Mux0~710_combout\ & ((\library1|Mux0~705_combout\))) # (!\library1|Mux0~710_combout\ & (\library1|Mux0~708_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~708_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~710_combout\,
	datad => \library1|Mux0~705_combout\,
	combout => \library1|Mux0~711_combout\);

-- Location: LCCOMB_X46_Y55_N22
\library1|Mux0~712\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~712_combout\ = (\Mux326~14_combout\ & (\library1|Mux0~107_combout\ & (\library1|Mux0~701_combout\))) # (!\Mux326~14_combout\ & (((\library1|Mux0~711_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \library1|Mux0~107_combout\,
	datac => \library1|Mux0~701_combout\,
	datad => \library1|Mux0~711_combout\,
	combout => \library1|Mux0~712_combout\);

-- Location: LCCOMB_X38_Y51_N28
\library1|Mux0~785\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~785_combout\ = (\Mux324~12_combout\ & (\vga1|yPixel\(2) $ (((!\vga1|xPixel\(0) & !\vga1|yPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux324~12_combout\,
	datac => \vga1|yPixel\(2),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~785_combout\);

-- Location: LCCOMB_X38_Y51_N18
\library1|Mux0~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~367_combout\ = (\vga1|yPixel\(2) & (\Mux325~11_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~367_combout\);

-- Location: LCCOMB_X38_Y51_N30
\library1|Mux0~784\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~784_combout\ = (!\Mux327~14_combout\ & ((\vga1|xPixel\(0)) # (!\library1|Mux0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~97_combout\,
	combout => \library1|Mux0~784_combout\);

-- Location: LCCOMB_X42_Y54_N0
\library1|Mux0~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~337_combout\ = (\Mux327~14_combout\ & !\Mux325~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~337_combout\);

-- Location: LCCOMB_X38_Y51_N22
\library1|Mux0~786\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~786_combout\ = (\library1|Mux0~367_combout\) # ((\library1|Mux0~784_combout\) # ((!\library1|Mux0~785_combout\ & \library1|Mux0~337_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~785_combout\,
	datab => \library1|Mux0~367_combout\,
	datac => \library1|Mux0~784_combout\,
	datad => \library1|Mux0~337_combout\,
	combout => \library1|Mux0~786_combout\);

-- Location: LCCOMB_X41_Y54_N8
\library1|Mux0~782\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~782_combout\ = (\Mux325~11_combout\ & ((\Mux324~12_combout\ $ (!\Mux323~10_combout\)) # (!\Mux327~14_combout\))) # (!\Mux325~11_combout\ & ((\Mux324~12_combout\) # (\Mux327~14_combout\ $ (\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~782_combout\);

-- Location: LCCOMB_X41_Y54_N4
\library1|Mux0~775\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~775_combout\ = (\vga1|yPixel\(2) & (\Mux327~14_combout\ & (\Mux324~12_combout\ $ (!\Mux325~11_combout\)))) # (!\vga1|yPixel\(2) & (\Mux327~14_combout\ $ (((!\Mux324~12_combout\ & \Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~775_combout\);

-- Location: LCCOMB_X41_Y54_N20
\library1|Mux0~777\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~777_combout\ = (\vga1|yPixel\(1) & (\Mux327~14_combout\ $ (((\vga1|xPixel\(0)) # (!\Mux325~11_combout\))))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(0) & (!\Mux327~14_combout\ & \Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~777_combout\);

-- Location: LCCOMB_X41_Y54_N30
\library1|Mux0~778\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~778_combout\ = (\vga1|yPixel\(2) & (\Mux325~11_combout\)) # (!\vga1|yPixel\(2) & ((\library1|Mux0~777_combout\) # ((\Mux325~11_combout\ & !\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~777_combout\,
	combout => \library1|Mux0~778_combout\);

-- Location: LCCOMB_X41_Y54_N14
\library1|Mux0~776\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~776_combout\ = (!\vga1|yPixel\(1) & (!\Mux322~13_combout\ & (\Mux327~14_combout\ & !\Mux324~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux322~13_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux324~11_combout\,
	combout => \library1|Mux0~776_combout\);

-- Location: LCCOMB_X41_Y57_N26
\library1|Mux0~779\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~779_combout\ = (\vga1|yPixel\(1) & (!\vga1|xPixel\(0) & \library1|Mux0~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datad => \library1|Mux0~222_combout\,
	combout => \library1|Mux0~779_combout\);

-- Location: LCCOMB_X41_Y54_N28
\library1|Mux0~780\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~780_combout\ = (\library1|Mux0~778_combout\ & (((!\library1|Mux0~779_combout\)) # (!\vga1|yPixel\(2)))) # (!\library1|Mux0~778_combout\ & (\vga1|yPixel\(2) & (!\library1|Mux0~776_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~778_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~776_combout\,
	datad => \library1|Mux0~779_combout\,
	combout => \library1|Mux0~780_combout\);

-- Location: LCCOMB_X41_Y54_N6
\library1|Mux0~781\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~781_combout\ = (!\Mux322~12_combout\ & ((\Mux323~10_combout\ & (\library1|Mux0~775_combout\)) # (!\Mux323~10_combout\ & ((\library1|Mux0~780_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~775_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~780_combout\,
	combout => \library1|Mux0~781_combout\);

-- Location: LCCOMB_X41_Y54_N18
\library1|Mux0~783\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~783_combout\ = (!\Mux326~14_combout\ & ((\library1|Mux0~781_combout\) # ((\Mux322~12_combout\ & !\library1|Mux0~782_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~782_combout\,
	datad => \library1|Mux0~781_combout\,
	combout => \library1|Mux0~783_combout\);

-- Location: LCCOMB_X41_Y55_N22
\library1|Mux0~787\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~787_combout\ = (\library1|Mux0~783_combout\) # ((\Mux326~14_combout\ & (\library1|Mux0~107_combout\ & \library1|Mux0~786_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \library1|Mux0~107_combout\,
	datac => \library1|Mux0~786_combout\,
	datad => \library1|Mux0~783_combout\,
	combout => \library1|Mux0~787_combout\);

-- Location: LCCOMB_X42_Y52_N26
\library1|Mux0~739\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~739_combout\ = (\Mux322~12_combout\ & ((\Mux323~10_combout\) # ((\vga1|xPixel\(0)) # (!\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux322~12_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~739_combout\);

-- Location: LCCOMB_X42_Y52_N0
\library1|Mux0~738\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~738_combout\ = (\Mux323~10_combout\ & ((!\Mux324~12_combout\))) # (!\Mux323~10_combout\ & (\Mux322~12_combout\ & \Mux324~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datac => \Mux322~12_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~738_combout\);

-- Location: LCCOMB_X42_Y52_N30
\library1|Mux0~741\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~741_combout\ = (\Mux327~14_combout\ & ((\library1|Mux0~739_combout\) # ((\Mux326~14_combout\ & \library1|Mux0~738_combout\)))) # (!\Mux327~14_combout\ & ((\library1|Mux0~738_combout\) # ((!\Mux326~14_combout\ & 
-- \library1|Mux0~739_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~739_combout\,
	datad => \library1|Mux0~738_combout\,
	combout => \library1|Mux0~741_combout\);

-- Location: LCCOMB_X42_Y52_N24
\library1|Mux0~740\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~740_combout\ = (\Mux326~14_combout\ & (((!\Mux327~14_combout\ & !\library1|Mux0~739_combout\)) # (!\library1|Mux0~738_combout\))) # (!\Mux326~14_combout\ & (\library1|Mux0~739_combout\ & ((\library1|Mux0~738_combout\) # 
-- (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~739_combout\,
	datad => \library1|Mux0~738_combout\,
	combout => \library1|Mux0~740_combout\);

-- Location: LCCOMB_X42_Y52_N22
\library1|Mux0~743\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~743_combout\ = (\library1|Mux0~741_combout\ & ((\Mux325~11_combout\ & (!\Mux327~14_combout\)) # (!\Mux325~11_combout\ & ((!\library1|Mux0~740_combout\))))) # (!\library1|Mux0~741_combout\ & (\Mux327~14_combout\ & 
-- ((\library1|Mux0~740_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~741_combout\,
	datad => \library1|Mux0~740_combout\,
	combout => \library1|Mux0~743_combout\);

-- Location: LCCOMB_X42_Y52_N28
\library1|Mux0~742\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~742_combout\ = (\Mux325~11_combout\ & (\library1|Mux0~740_combout\ & ((!\library1|Mux0~741_combout\) # (!\Mux327~14_combout\)))) # (!\Mux325~11_combout\ & (\Mux327~14_combout\ & ((!\library1|Mux0~740_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~741_combout\,
	datad => \library1|Mux0~740_combout\,
	combout => \library1|Mux0~742_combout\);

-- Location: LCCOMB_X42_Y52_N4
\library1|Mux0~744\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~744_combout\ = \library1|Mux0~742_combout\ $ (((!\Mux324~12_combout\ & \library1|Mux0~743_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~743_combout\,
	datad => \library1|Mux0~742_combout\,
	combout => \library1|Mux0~744_combout\);

-- Location: LCCOMB_X42_Y52_N6
\library1|Mux0~770\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~770_combout\ = (\Mux323~10_combout\ & (\Mux322~12_combout\ & ((!\Mux327~14_combout\)))) # (!\Mux323~10_combout\ & (\Mux327~14_combout\ & ((!\Mux326~14_combout\) # (!\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~770_combout\);

-- Location: LCCOMB_X42_Y52_N16
\library1|Mux0~769\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~769_combout\ = (\Mux327~14_combout\ & (((\Mux323~10_combout\ & \Mux326~14_combout\)) # (!\Mux322~12_combout\))) # (!\Mux327~14_combout\ & (\Mux323~10_combout\ $ (((\Mux322~12_combout\) # (\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~769_combout\);

-- Location: LCCOMB_X42_Y52_N12
\library1|Mux0~771\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~771_combout\ = (!\Mux324~12_combout\ & ((\Mux325~11_combout\ & ((\library1|Mux0~769_combout\))) # (!\Mux325~11_combout\ & (\library1|Mux0~770_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~770_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~769_combout\,
	combout => \library1|Mux0~771_combout\);

-- Location: LCCOMB_X42_Y52_N8
\library1|Mux0~767\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~767_combout\ = (\Mux323~10_combout\) # ((\Mux326~14_combout\) # ((\vga1|xPixel\(0) & \Mux322~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux322~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~767_combout\);

-- Location: LCCOMB_X42_Y52_N14
\library1|Mux0~764\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~764_combout\ = (\Mux323~10_combout\ & (!\Mux322~13_combout\ & (\Mux326~14_combout\ & !\Mux322~14_combout\))) # (!\Mux323~10_combout\ & (\Mux326~14_combout\ $ (((!\Mux322~13_combout\ & !\Mux322~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux322~13_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux322~14_combout\,
	combout => \library1|Mux0~764_combout\);

-- Location: LCCOMB_X42_Y52_N20
\library1|Mux0~765\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~765_combout\ = (\Mux323~10_combout\ & (((\Mux322~12_combout\) # (\Mux326~14_combout\)))) # (!\Mux323~10_combout\ & (\vga1|xPixel\(0) & (\Mux322~12_combout\ & \Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux322~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~765_combout\);

-- Location: LCCOMB_X42_Y52_N18
\library1|Mux0~766\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~766_combout\ = (\Mux327~14_combout\ & ((\Mux325~11_combout\ & (\library1|Mux0~764_combout\)) # (!\Mux325~11_combout\ & ((!\library1|Mux0~765_combout\))))) # (!\Mux327~14_combout\ & (!\Mux325~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~764_combout\,
	datad => \library1|Mux0~765_combout\,
	combout => \library1|Mux0~766_combout\);

-- Location: LCCOMB_X42_Y52_N2
\library1|Mux0~768\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~768_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~766_combout\) # ((\library1|Mux0~767_combout\ & !\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~767_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~766_combout\,
	combout => \library1|Mux0~768_combout\);

-- Location: LCCOMB_X42_Y52_N10
\library1|Mux0~772\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~772_combout\ = (\library1|Mux0~771_combout\) # (\library1|Mux0~768_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~771_combout\,
	datad => \library1|Mux0~768_combout\,
	combout => \library1|Mux0~772_combout\);

-- Location: LCCOMB_X43_Y55_N6
\library1|Mux0~745\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~745_combout\ = (\Mux324~12_combout\ & (((!\Mux322~12_combout\ & !\Mux326~14_combout\)) # (!\Mux325~11_combout\))) # (!\Mux324~12_combout\ & ((\Mux322~12_combout\ & (!\Mux326~14_combout\)) # (!\Mux322~12_combout\ & ((\Mux326~14_combout\) # 
-- (\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~745_combout\);

-- Location: LCCOMB_X43_Y55_N4
\library1|Mux0~752\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~752_combout\ = (\Mux322~12_combout\ & (((\Mux326~14_combout\) # (\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & (\Mux324~12_combout\ $ (((\Mux326~14_combout\ & \Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~752_combout\);

-- Location: LCCOMB_X43_Y55_N14
\library1|Mux0~747\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~747_combout\ = (\Mux326~14_combout\ & (((\Mux325~11_combout\) # (!\vga1|xPixel\(0))) # (!\vga1|yPixel\(0)))) # (!\Mux326~14_combout\ & ((\vga1|xPixel\(0) $ (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(0),
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~747_combout\);

-- Location: LCCOMB_X43_Y55_N12
\library1|Mux0~746\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~746_combout\ = (!\Mux322~12_combout\ & ((\Mux325~11_combout\ & (\Mux324~12_combout\ & \Mux326~14_combout\)) # (!\Mux325~11_combout\ & ((!\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~746_combout\);

-- Location: LCCOMB_X43_Y55_N8
\library1|Mux0~748\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~748_combout\ = (\library1|Mux0~746_combout\) # ((\Mux324~12_combout\ & (\Mux322~12_combout\ & !\library1|Mux0~747_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~747_combout\,
	datad => \library1|Mux0~746_combout\,
	combout => \library1|Mux0~748_combout\);

-- Location: LCCOMB_X43_Y55_N2
\library1|Mux0~749\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~749_combout\ = (\Mux324~12_combout\ & ((!\Mux326~14_combout\) # (!\vga1|xPixel\(0)))) # (!\Mux324~12_combout\ & ((\Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~749_combout\);

-- Location: LCCOMB_X43_Y55_N20
\library1|Mux0~750\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~750_combout\ = (\Mux325~11_combout\ & (\library1|Mux0~749_combout\ & (\Mux324~12_combout\ $ (!\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux322~12_combout\,
	datad => \library1|Mux0~749_combout\,
	combout => \library1|Mux0~750_combout\);

-- Location: LCCOMB_X43_Y55_N18
\library1|Mux0~751\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~751_combout\ = (\Mux327~14_combout\ & ((\Mux323~10_combout\) # ((\library1|Mux0~748_combout\)))) # (!\Mux327~14_combout\ & (!\Mux323~10_combout\ & ((\library1|Mux0~750_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~748_combout\,
	datad => \library1|Mux0~750_combout\,
	combout => \library1|Mux0~751_combout\);

-- Location: LCCOMB_X43_Y55_N22
\library1|Mux0~753\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~753_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~751_combout\ & ((!\library1|Mux0~752_combout\))) # (!\library1|Mux0~751_combout\ & (!\library1|Mux0~745_combout\)))) # (!\Mux323~10_combout\ & (((\library1|Mux0~751_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~745_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~752_combout\,
	datad => \library1|Mux0~751_combout\,
	combout => \library1|Mux0~753_combout\);

-- Location: LCCOMB_X41_Y55_N30
\library1|Mux0~755\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~755_combout\ = (\Mux324~12_combout\ & (\Mux325~11_combout\ & ((\Mux326~14_combout\) # (\Mux322~12_combout\)))) # (!\Mux324~12_combout\ & (\Mux326~14_combout\ $ (((!\Mux322~12_combout\ & \Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~755_combout\);

-- Location: LCCOMB_X41_Y55_N20
\library1|Mux0~754\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~754_combout\ = (\Mux326~14_combout\ & (!\Mux322~12_combout\ & (\Mux324~12_combout\ $ (!\Mux325~11_combout\)))) # (!\Mux326~14_combout\ & ((\Mux322~12_combout\ & ((!\Mux325~11_combout\))) # (!\Mux322~12_combout\ & (!\Mux324~12_combout\ & 
-- \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~754_combout\);

-- Location: LCCOMB_X41_Y55_N12
\library1|Mux0~756\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~756_combout\ = (\Mux323~10_combout\ & ((\Mux327~14_combout\ & ((\library1|Mux0~754_combout\))) # (!\Mux327~14_combout\ & (\library1|Mux0~755_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~755_combout\,
	datad => \library1|Mux0~754_combout\,
	combout => \library1|Mux0~756_combout\);

-- Location: LCCOMB_X40_Y54_N24
\library1|Mux0~757\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~757_combout\ = (\Mux325~11_combout\ & (((\vga1|xPixel\(0) & !\Mux327~14_combout\)) # (!\Mux324~12_combout\))) # (!\Mux325~11_combout\ & ((\Mux324~12_combout\ & ((\vga1|xPixel\(0)) # (!\Mux327~14_combout\))) # (!\Mux324~12_combout\ & 
-- ((\Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~757_combout\);

-- Location: LCCOMB_X40_Y53_N30
\library1|Mux0~525\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~525_combout\ = (!\Mux327~14_combout\ & (!\Mux322~13_combout\ & (!\Mux324~11_combout\ & \Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux322~13_combout\,
	datac => \Mux324~11_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~525_combout\);

-- Location: LCCOMB_X38_Y55_N18
\library1|Mux0~758\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~758_combout\ = (!\Mux325~11_combout\ & (\Mux327~14_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~758_combout\);

-- Location: LCCOMB_X41_Y55_N14
\library1|Mux0~759\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~759_combout\ = (\Mux326~14_combout\ & ((\Mux322~12_combout\) # ((\library1|Mux0~525_combout\)))) # (!\Mux326~14_combout\ & (!\Mux322~12_combout\ & ((\library1|Mux0~758_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~525_combout\,
	datad => \library1|Mux0~758_combout\,
	combout => \library1|Mux0~759_combout\);

-- Location: LCCOMB_X40_Y54_N22
\library1|Mux0~760\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~760_combout\ = (!\vga1|xPixel\(0) & (\library1|Mux0~289_combout\ & !\Mux327~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \library1|Mux0~289_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~760_combout\);

-- Location: LCCOMB_X41_Y55_N0
\library1|Mux0~761\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~761_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~759_combout\ & ((\library1|Mux0~760_combout\))) # (!\library1|Mux0~759_combout\ & (!\library1|Mux0~757_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~759_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~757_combout\,
	datac => \library1|Mux0~759_combout\,
	datad => \library1|Mux0~760_combout\,
	combout => \library1|Mux0~761_combout\);

-- Location: LCCOMB_X41_Y55_N2
\library1|Mux0~762\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~762_combout\ = (\library1|Mux0~756_combout\) # ((!\Mux323~10_combout\ & \library1|Mux0~761_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~756_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~761_combout\,
	combout => \library1|Mux0~762_combout\);

-- Location: LCCOMB_X41_Y55_N24
\library1|Mux0~763\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~763_combout\ = (\vga1|yPixel\(1) & ((\vga1|yPixel\(2)) # ((\library1|Mux0~753_combout\)))) # (!\vga1|yPixel\(1) & (!\vga1|yPixel\(2) & ((\library1|Mux0~762_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~753_combout\,
	datad => \library1|Mux0~762_combout\,
	combout => \library1|Mux0~763_combout\);

-- Location: LCCOMB_X41_Y55_N26
\library1|Mux0~773\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~773_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~763_combout\ & ((\library1|Mux0~772_combout\))) # (!\library1|Mux0~763_combout\ & (\library1|Mux0~744_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~763_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~744_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~772_combout\,
	datad => \library1|Mux0~763_combout\,
	combout => \library1|Mux0~773_combout\);

-- Location: LCCOMB_X40_Y58_N0
\library1|Mux0~735\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~735_combout\ = (\Mux325~11_combout\) # ((\Mux327~14_combout\ & ((!\Mux323~10_combout\))) # (!\Mux327~14_combout\ & ((\vga1|xPixel\(0)) # (\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux325~11_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~735_combout\);

-- Location: LCCOMB_X40_Y58_N14
\library1|Mux0~730\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~730_combout\ = (\vga1|yPixel\(1)) # ((\vga1|yPixel\(2) & \Mux327~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~730_combout\);

-- Location: LCCOMB_X40_Y58_N4
\library1|Mux0~731\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~731_combout\ = (\vga1|yPixel\(2) & (\Mux325~11_combout\ & ((\library1|Mux0~730_combout\) # (\Mux323~10_combout\)))) # (!\vga1|yPixel\(2) & (\Mux323~10_combout\ & ((\Mux325~11_combout\) # (!\library1|Mux0~730_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~730_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~731_combout\);

-- Location: LCCOMB_X40_Y58_N10
\library1|Mux0~732\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~732_combout\ = (\vga1|yPixel\(2) & ((\Mux325~11_combout\ & ((\vga1|yPixel\(1)) # (!\Mux323~10_combout\))) # (!\Mux325~11_combout\ & ((\Mux323~10_combout\))))) # (!\vga1|yPixel\(2) & (((\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~732_combout\);

-- Location: LCCOMB_X40_Y58_N20
\library1|Mux0~733\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~733_combout\ = (\Mux327~14_combout\ & \library1|Mux0~732_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datad => \library1|Mux0~732_combout\,
	combout => \library1|Mux0~733_combout\);

-- Location: LCCOMB_X40_Y58_N30
\library1|Mux0~734\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~734_combout\ = (\Mux322~12_combout\ & (\Mux326~14_combout\)) # (!\Mux322~12_combout\ & ((\Mux326~14_combout\ & (\library1|Mux0~731_combout\)) # (!\Mux326~14_combout\ & ((\library1|Mux0~733_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~731_combout\,
	datad => \library1|Mux0~733_combout\,
	combout => \library1|Mux0~734_combout\);

-- Location: LCCOMB_X40_Y58_N2
\library1|Mux0~728\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~728_combout\ = (\vga1|yPixel\(2) & (\Mux323~10_combout\ & (\Mux327~14_combout\ $ (!\vga1|yPixel\(1))))) # (!\vga1|yPixel\(2) & (\Mux327~14_combout\ $ (((\Mux323~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~728_combout\);

-- Location: LCCOMB_X40_Y58_N28
\library1|Mux0~729\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~729_combout\ = (\Mux325~11_combout\ & ((\Mux327~14_combout\) # ((\Mux323~10_combout\)))) # (!\Mux325~11_combout\ & (((\library1|Mux0~728_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~728_combout\,
	combout => \library1|Mux0~729_combout\);

-- Location: LCCOMB_X40_Y58_N18
\library1|Mux0~736\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~736_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~734_combout\ & (\library1|Mux0~735_combout\)) # (!\library1|Mux0~734_combout\ & ((!\library1|Mux0~729_combout\))))) # (!\Mux322~12_combout\ & (((\library1|Mux0~734_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~735_combout\,
	datac => \library1|Mux0~734_combout\,
	datad => \library1|Mux0~729_combout\,
	combout => \library1|Mux0~736_combout\);

-- Location: LCCOMB_X42_Y51_N14
\library1|Mux0~716\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~716_combout\ = (\Mux322~12_combout\) # ((\Mux327~14_combout\ $ (!\Mux325~11_combout\)) # (!\vga1|yPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~716_combout\);

-- Location: LCCOMB_X42_Y51_N8
\library1|Mux0~713\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~713_combout\ = (!\vga1|xPixel\(0) & (\Mux327~14_combout\ & (!\Mux325~11_combout\ & \Mux322~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~713_combout\);

-- Location: LCCOMB_X42_Y51_N10
\library1|Mux0~714\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~714_combout\ = (\Mux327~14_combout\ & (\Mux322~12_combout\ & (\vga1|xPixel\(0) $ (\Mux325~11_combout\)))) # (!\Mux327~14_combout\ & (((\Mux325~11_combout\ & !\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~714_combout\);

-- Location: LCCOMB_X42_Y51_N28
\library1|Mux0~715\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~715_combout\ = (\vga1|yPixel\(1) & (!\Mux323~10_combout\ & ((\library1|Mux0~713_combout\) # (!\library1|Mux0~714_combout\)))) # (!\vga1|yPixel\(1) & ((\library1|Mux0~713_combout\ $ (!\library1|Mux0~714_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~713_combout\,
	datad => \library1|Mux0~714_combout\,
	combout => \library1|Mux0~715_combout\);

-- Location: LCCOMB_X42_Y51_N20
\library1|Mux0~717\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~717_combout\ = (\library1|Mux0~715_combout\) # ((\Mux323~10_combout\ & \library1|Mux0~716_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~716_combout\,
	datad => \library1|Mux0~715_combout\,
	combout => \library1|Mux0~717_combout\);

-- Location: LCCOMB_X42_Y51_N12
\library1|Mux0~725\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~725_combout\ = (\vga1|yPixel\(1) & (!\Mux323~10_combout\ & ((\vga1|xPixel\(0)) # (!\Mux322~12_combout\)))) # (!\vga1|yPixel\(1) & (((\Mux323~10_combout\) # (\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~725_combout\);

-- Location: LCCOMB_X42_Y51_N4
\library1|Mux0~723\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~723_combout\ = (\vga1|yPixel\(1) & ((\Mux323~10_combout\ $ (\Mux322~12_combout\)))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(0) & (!\Mux323~10_combout\ & \Mux322~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~723_combout\);

-- Location: LCCOMB_X42_Y51_N6
\library1|Mux0~724\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~724_combout\ = (\Mux327~14_combout\ & ((\Mux323~10_combout\ & (!\library1|Mux0~723_combout\ & \Mux325~11_combout\)) # (!\Mux323~10_combout\ & (\library1|Mux0~723_combout\ $ (!\Mux325~11_combout\))))) # (!\Mux327~14_combout\ & 
-- (((!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~723_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~724_combout\);

-- Location: LCCOMB_X42_Y51_N26
\library1|Mux0~726\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~726_combout\ = (\library1|Mux0~724_combout\) # ((!\library1|Mux0~725_combout\ & !\Mux327~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~725_combout\,
	datab => \Mux327~14_combout\,
	datad => \library1|Mux0~724_combout\,
	combout => \library1|Mux0~726_combout\);

-- Location: LCCOMB_X42_Y51_N30
\library1|Mux0~720\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~720_combout\ = (\vga1|yPixel\(1) & ((!\Mux327~14_combout\))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~720_combout\);

-- Location: LCCOMB_X42_Y51_N16
\library1|Mux0~721\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~721_combout\ = \Mux327~14_combout\ $ (((\Mux322~12_combout\ & (\library1|Mux0~720_combout\ & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~720_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~721_combout\);

-- Location: LCCOMB_X42_Y51_N22
\library1|Mux0~808\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~808_combout\ = (\library1|Mux0~721_combout\ & (((\Mux325~11_combout\) # (\Mux323~10_combout\)) # (!\Mux322~12_combout\))) # (!\library1|Mux0~721_combout\ & ((\Mux325~11_combout\ $ (!\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~721_combout\,
	combout => \library1|Mux0~808_combout\);

-- Location: LCCOMB_X42_Y51_N2
\library1|Mux0~718\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~718_combout\ = (\Mux325~11_combout\) # ((!\vga1|xPixel\(0) & (!\vga1|yPixel\(1) & \Mux327~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~718_combout\);

-- Location: LCCOMB_X42_Y51_N24
\library1|Mux0~719\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~719_combout\ = (\Mux323~10_combout\ & (((\library1|Mux0~456_combout\)))) # (!\Mux323~10_combout\ & ((\Mux322~12_combout\ & (!\library1|Mux0~718_combout\)) # (!\Mux322~12_combout\ & ((!\library1|Mux0~456_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~718_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~456_combout\,
	combout => \library1|Mux0~719_combout\);

-- Location: LCCOMB_X42_Y51_N18
\library1|Mux0~722\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~722_combout\ = (\vga1|yPixel\(2) & (\Mux326~14_combout\)) # (!\vga1|yPixel\(2) & ((\Mux326~14_combout\ & ((\library1|Mux0~719_combout\))) # (!\Mux326~14_combout\ & (\library1|Mux0~808_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~808_combout\,
	datad => \library1|Mux0~719_combout\,
	combout => \library1|Mux0~722_combout\);

-- Location: LCCOMB_X42_Y51_N0
\library1|Mux0~727\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~727_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~722_combout\ & ((\library1|Mux0~726_combout\))) # (!\library1|Mux0~722_combout\ & (\library1|Mux0~717_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~722_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~717_combout\,
	datac => \library1|Mux0~726_combout\,
	datad => \library1|Mux0~722_combout\,
	combout => \library1|Mux0~727_combout\);

-- Location: LCCOMB_X41_Y55_N18
\library1|Mux0~737\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~737_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~727_combout\))) # (!\Mux324~12_combout\ & (\library1|Mux0~736_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~736_combout\,
	datad => \library1|Mux0~727_combout\,
	combout => \library1|Mux0~737_combout\);

-- Location: LCCOMB_X41_Y55_N28
\library1|Mux0~774\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~774_combout\ = (\Mux321~10_combout\ & (\vga1|xPixel\(1))) # (!\Mux321~10_combout\ & ((\vga1|xPixel\(1) & ((\library1|Mux0~737_combout\))) # (!\vga1|xPixel\(1) & (\library1|Mux0~773_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~773_combout\,
	datad => \library1|Mux0~737_combout\,
	combout => \library1|Mux0~774_combout\);

-- Location: LCCOMB_X41_Y55_N16
\library1|Mux0~788\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~788_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~774_combout\ & ((\library1|Mux0~787_combout\))) # (!\library1|Mux0~774_combout\ & (\library1|Mux0~712_combout\)))) # (!\Mux321~10_combout\ & (((\library1|Mux0~774_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~712_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~787_combout\,
	datad => \library1|Mux0~774_combout\,
	combout => \library1|Mux0~788_combout\);

-- Location: LCCOMB_X41_Y55_N6
\library1|Mux0~789\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~789_combout\ = (\vga1|yPixel\(3) & (\vga1|xPixel\(2))) # (!\vga1|yPixel\(3) & ((\vga1|xPixel\(2) & (\library1|Mux0~696_combout\)) # (!\vga1|xPixel\(2) & ((\library1|Mux0~788_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~696_combout\,
	datad => \library1|Mux0~788_combout\,
	combout => \library1|Mux0~789_combout\);

-- Location: LCCOMB_X41_Y55_N10
\library1|Mux0~800\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~800_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~789_combout\ & ((\library1|Mux0~799_combout\))) # (!\library1|Mux0~789_combout\ & (\library1|Mux0~656_combout\)))) # (!\vga1|yPixel\(3) & (((\library1|Mux0~789_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \library1|Mux0~656_combout\,
	datac => \library1|Mux0~799_combout\,
	datad => \library1|Mux0~789_combout\,
	combout => \library1|Mux0~800_combout\);

-- Location: LCCOMB_X45_Y53_N30
\library1|Mux0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~189_combout\ = (\Mux323~10_combout\ & (\Mux324~12_combout\ & ((\Mux322~14_combout\) # (\Mux322~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~14_combout\,
	datab => \Mux322~13_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~189_combout\);

-- Location: LCCOMB_X45_Y53_N14
\library1|Mux0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~185_combout\ = (\vga1|xPixel\(1) & \vga1|xPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(1),
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~185_combout\);

-- Location: LCCOMB_X45_Y53_N12
\library1|Mux0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~184_combout\ = (\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & (\library1|Mux0~107_combout\ & \Mux321~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~107_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~184_combout\);

-- Location: LCCOMB_X45_Y53_N8
\library1|Mux0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~186_combout\ = (!\Mux327~14_combout\ & (\library1|Mux0~184_combout\ & ((\Mux324~12_combout\) # (\library1|Mux0~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~185_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~184_combout\,
	combout => \library1|Mux0~186_combout\);

-- Location: LCCOMB_X45_Y53_N6
\library1|Mux0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~187_combout\ = (\vga1|yPixel\(2) & (((!\vga1|yPixel\(1) & \vga1|xPixel\(2))))) # (!\vga1|yPixel\(2) & (\vga1|xPixel\(1) $ (((\vga1|xPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~187_combout\);

-- Location: LCCOMB_X45_Y53_N0
\library1|Mux0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~188_combout\ = (\library1|Mux0~187_combout\ & (\Mux327~14_combout\ & !\Mux321~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~187_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~188_combout\);

-- Location: LCCOMB_X45_Y53_N4
\library1|Mux0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~190_combout\ = (\Mux325~11_combout\ & ((\library1|Mux0~186_combout\) # ((\library1|Mux0~189_combout\ & \library1|Mux0~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~189_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~186_combout\,
	datad => \library1|Mux0~188_combout\,
	combout => \library1|Mux0~190_combout\);

-- Location: LCCOMB_X46_Y53_N18
\library1|Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~32_combout\ = (\Mux322~12_combout\ & (\vga1|yPixel\(2) & (\vga1|xPixel\(2) $ (!\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & ((\vga1|xPixel\(2) & ((!\Mux325~11_combout\))) # (!\vga1|xPixel\(2) & (\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(2),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~32_combout\);

-- Location: LCCOMB_X46_Y53_N22
\library1|Mux0~853\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~853_combout\ = (\Mux327~14_combout\ & (((!\library1|Mux0~32_combout\)))) # (!\Mux327~14_combout\ & (!\Mux325~11_combout\ & (\Mux322~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~32_combout\,
	combout => \library1|Mux0~853_combout\);

-- Location: LCCOMB_X46_Y53_N24
\library1|Mux0~854\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~854_combout\ = (\library1|Mux0~853_combout\ & ((\Mux322~12_combout\ & (!\Mux323~10_combout\)) # (!\Mux322~12_combout\ & (\Mux323~10_combout\ & !\library1|Mux0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~853_combout\,
	datad => \library1|Mux0~32_combout\,
	combout => \library1|Mux0~854_combout\);

-- Location: LCCOMB_X46_Y53_N30
\library1|Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~23_combout\ = (\vga1|xPixel\(2) & (((\vga1|yPixel\(2) & !\Mux327~14_combout\)))) # (!\vga1|xPixel\(2) & ((\vga1|yPixel\(2)) # ((\Mux323~10_combout\ & !\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux323~10_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~23_combout\);

-- Location: LCCOMB_X46_Y53_N26
\library1|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~19_combout\ = (\vga1|yPixel\(2) & (\vga1|xPixel\(2) $ (((!\vga1|yPixel\(1)))))) # (!\vga1|yPixel\(2) & (((\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~19_combout\);

-- Location: LCCOMB_X46_Y53_N28
\library1|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~20_combout\ = (\Mux327~14_combout\ & (\vga1|xPixel\(2) $ (((\library1|Mux0~19_combout\) # (\Mux323~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~19_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~20_combout\);

-- Location: LCCOMB_X46_Y53_N14
\library1|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~21_combout\ = (\Mux323~10_combout\ & ((\vga1|xPixel\(2)) # ((!\Mux327~14_combout\) # (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~21_combout\);

-- Location: LCCOMB_X46_Y53_N4
\library1|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~22_combout\ = (\Mux322~12_combout\ & (((\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & ((\Mux325~11_combout\ & (\library1|Mux0~20_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~20_combout\,
	datac => \library1|Mux0~21_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~22_combout\);

-- Location: LCCOMB_X46_Y53_N0
\library1|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~18_combout\ = (!\vga1|xPixel\(2) & (\Mux323~10_combout\ & (\vga1|yPixel\(2) $ (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux323~10_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~18_combout\);

-- Location: LCCOMB_X46_Y53_N8
\library1|Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~24_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~22_combout\ & (!\library1|Mux0~23_combout\)) # (!\library1|Mux0~22_combout\ & ((!\library1|Mux0~18_combout\))))) # (!\Mux322~12_combout\ & (((\library1|Mux0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~23_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~22_combout\,
	datad => \library1|Mux0~18_combout\,
	combout => \library1|Mux0~24_combout\);

-- Location: LCCOMB_X46_Y53_N2
\library1|Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~25_combout\ = (\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & ((\vga1|xPixel\(2)) # (\vga1|xPixel\(1))))) # (!\vga1|yPixel\(2) & (!\vga1|xPixel\(2) & ((\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~25_combout\);

-- Location: LCCOMB_X46_Y53_N16
\library1|Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~27_combout\ = (!\Mux327~14_combout\ & (\library1|Mux0~25_combout\ & (\library1|Mux0~26_combout\ & \Mux323~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~25_combout\,
	datac => \library1|Mux0~26_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~27_combout\);

-- Location: LCCOMB_X45_Y53_N20
\library1|Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~28_combout\ = (\vga1|yPixel\(1) & (!\Mux327~14_combout\ & (\Mux325~11_combout\))) # (!\vga1|yPixel\(1) & (\Mux327~14_combout\ & (!\Mux325~11_combout\ & \vga1|xPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~28_combout\);

-- Location: LCCOMB_X45_Y53_N10
\library1|Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~29_combout\ = (\library1|Mux0~28_combout\ & (\Mux325~11_combout\ $ (((!\Mux322~14_combout\ & !\Mux322~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~14_combout\,
	datab => \Mux322~13_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~28_combout\,
	combout => \library1|Mux0~29_combout\);

-- Location: LCCOMB_X46_Y53_N10
\library1|Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~30_combout\ = (!\vga1|yPixel\(2) & (\library1|Mux0~29_combout\ & (\Mux323~10_combout\ $ (!\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux323~10_combout\,
	datac => \Mux322~12_combout\,
	datad => \library1|Mux0~29_combout\,
	combout => \library1|Mux0~30_combout\);

-- Location: LCCOMB_X46_Y53_N20
\library1|Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~31_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~27_combout\) # ((\Mux321~10_combout\)))) # (!\Mux324~12_combout\ & (((!\Mux321~10_combout\ & \library1|Mux0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~27_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~30_combout\,
	combout => \library1|Mux0~31_combout\);

-- Location: LCCOMB_X46_Y53_N12
\library1|Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~33_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~31_combout\ & (\library1|Mux0~854_combout\)) # (!\library1|Mux0~31_combout\ & ((\library1|Mux0~24_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~854_combout\,
	datac => \library1|Mux0~24_combout\,
	datad => \library1|Mux0~31_combout\,
	combout => \library1|Mux0~33_combout\);

-- Location: LCCOMB_X43_Y51_N8
\library1|Mux0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~103_combout\ = (\vga1|xPixel\(1) & (((\Mux324~12_combout\) # (!\Mux327~14_combout\)))) # (!\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (\Mux324~12_combout\ $ (\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~103_combout\);

-- Location: LCCOMB_X43_Y51_N14
\library1|Mux0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~104_combout\ = (\library1|Mux0~103_combout\) # (\Mux325~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \library1|Mux0~103_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~104_combout\);

-- Location: LCCOMB_X43_Y51_N4
\library1|Mux0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~94_combout\ = (\Mux325~11_combout\ & (((!\Mux327~14_combout\)))) # (!\Mux325~11_combout\ & (\Mux324~12_combout\ & ((\vga1|yPixel\(0)) # (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~94_combout\);

-- Location: LCCOMB_X38_Y51_N20
\library1|Mux0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~93_combout\ = (\vga1|xPixel\(1)) # ((\Mux325~11_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \vga1|xPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~93_combout\);

-- Location: LCCOMB_X43_Y51_N26
\library1|Mux0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~95_combout\ = (\Mux327~14_combout\ & (((\library1|Mux0~94_combout\) # (!\library1|Mux0~93_combout\)))) # (!\Mux327~14_combout\ & (!\library1|Mux0~94_combout\ & ((\vga1|xPixel\(0)) # (\library1|Mux0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~94_combout\,
	datad => \library1|Mux0~93_combout\,
	combout => \library1|Mux0~95_combout\);

-- Location: LCCOMB_X38_Y51_N6
\library1|Mux0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~96_combout\ = (\vga1|xPixel\(0) & ((\Mux325~11_combout\ & ((\Mux327~14_combout\))) # (!\Mux325~11_combout\ & (!\Mux324~12_combout\)))) # (!\vga1|xPixel\(0) & (((\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~96_combout\);

-- Location: LCCOMB_X38_Y51_N14
\library1|Mux0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~98_combout\ = (\vga1|xPixel\(1) & (!\Mux327~14_combout\ & (\library1|Mux0~97_combout\))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~97_combout\,
	datad => \library1|Mux0~96_combout\,
	combout => \library1|Mux0~98_combout\);

-- Location: LCCOMB_X43_Y51_N30
\library1|Mux0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~100_combout\ = (\Mux325~11_combout\) # ((!\Mux327~14_combout\ & \Mux324~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~100_combout\);

-- Location: LCCOMB_X43_Y51_N12
\library1|Mux0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~99_combout\ = (\Mux327~14_combout\ & (((\Mux322~13_combout\) # (\Mux324~11_combout\)))) # (!\Mux327~14_combout\ & (\vga1|xPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux327~14_combout\,
	datac => \Mux322~13_combout\,
	datad => \Mux324~11_combout\,
	combout => \library1|Mux0~99_combout\);

-- Location: LCCOMB_X43_Y51_N24
\library1|Mux0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~101_combout\ = (\Mux327~14_combout\ & ((\library1|Mux0~99_combout\ & ((\library1|Mux0~100_combout\))) # (!\library1|Mux0~99_combout\ & (!\vga1|xPixel\(1))))) # (!\Mux327~14_combout\ & (!\library1|Mux0~100_combout\ & ((\vga1|xPixel\(1)) # 
-- (\library1|Mux0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~100_combout\,
	datad => \library1|Mux0~99_combout\,
	combout => \library1|Mux0~101_combout\);

-- Location: LCCOMB_X43_Y51_N2
\library1|Mux0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~102_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1))) # (!\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & (\library1|Mux0~98_combout\)) # (!\vga1|yPixel\(1) & ((\library1|Mux0~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~98_combout\,
	datad => \library1|Mux0~101_combout\,
	combout => \library1|Mux0~102_combout\);

-- Location: LCCOMB_X43_Y51_N16
\library1|Mux0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~105_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~102_combout\ & (\library1|Mux0~104_combout\)) # (!\library1|Mux0~102_combout\ & ((\library1|Mux0~95_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~104_combout\,
	datac => \library1|Mux0~95_combout\,
	datad => \library1|Mux0~102_combout\,
	combout => \library1|Mux0~105_combout\);

-- Location: LCCOMB_X42_Y50_N4
\library1|Mux0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~83_combout\ = (\vga1|xPixel\(1) & (\vga1|xPixel\(0) & (!\Mux325~11_combout\ & !\Mux324~12_combout\))) # (!\vga1|xPixel\(1) & (((\Mux325~11_combout\) # (\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~83_combout\);

-- Location: LCCOMB_X42_Y50_N14
\library1|Mux0~802\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~802_combout\ = (\vga1|xPixel\(1) & (\vga1|xPixel\(0) & ((!\vga1|yPixel\(1)) # (!\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(1),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~802_combout\);

-- Location: LCCOMB_X42_Y50_N18
\library1|Mux0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~84_combout\ = (!\Mux322~13_combout\ & (\library1|Mux0~802_combout\ & (!\Mux325~11_combout\ & !\Mux324~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \library1|Mux0~802_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux324~11_combout\,
	combout => \library1|Mux0~84_combout\);

-- Location: LCCOMB_X42_Y50_N16
\library1|Mux0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~85_combout\ = (!\Mux327~14_combout\ & (!\library1|Mux0~84_combout\ & ((!\library1|Mux0~83_combout\) # (!\library1|Mux0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~60_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~83_combout\,
	datad => \library1|Mux0~84_combout\,
	combout => \library1|Mux0~85_combout\);

-- Location: LCCOMB_X45_Y55_N2
\library1|Mux0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~90_combout\ = (!\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & ((\Mux324~11_combout\) # (\Mux322~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~11_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~90_combout\);

-- Location: LCCOMB_X45_Y55_N14
\library1|Mux0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~86_combout\ = (\Mux324~12_combout\ & (\vga1|yPixel\(2) $ (((\vga1|xPixel\(0) & !\vga1|yPixel\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~86_combout\);

-- Location: LCCOMB_X45_Y55_N8
\library1|Mux0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~87_combout\ = ((!\vga1|yPixel\(1) & (!\Mux324~11_combout\ & !\Mux322~13_combout\))) # (!\vga1|yPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux324~11_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~87_combout\);

-- Location: LCCOMB_X45_Y55_N6
\library1|Mux0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~88_combout\ = (!\vga1|yPixel\(2) & (\Mux324~12_combout\ & ((\vga1|xPixel\(0)) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~88_combout\);

-- Location: LCCOMB_X45_Y55_N20
\library1|Mux0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~89_combout\ = (\vga1|xPixel\(1) & (((\Mux325~11_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux325~11_combout\ & (!\library1|Mux0~87_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~87_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~88_combout\,
	combout => \library1|Mux0~89_combout\);

-- Location: LCCOMB_X45_Y55_N28
\library1|Mux0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~91_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~89_combout\ & (!\library1|Mux0~90_combout\)) # (!\library1|Mux0~89_combout\ & ((!\library1|Mux0~86_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~90_combout\,
	datac => \library1|Mux0~86_combout\,
	datad => \library1|Mux0~89_combout\,
	combout => \library1|Mux0~91_combout\);

-- Location: LCCOMB_X43_Y53_N6
\library1|Mux0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~92_combout\ = (!\vga1|xPixel\(2) & ((\library1|Mux0~85_combout\) # ((\library1|Mux0~91_combout\ & \Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~85_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~91_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~92_combout\);

-- Location: LCCOMB_X43_Y53_N4
\library1|Mux0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~106_combout\ = (\library1|Mux0~92_combout\) # ((\vga1|xPixel\(2) & \library1|Mux0~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datac => \library1|Mux0~105_combout\,
	datad => \library1|Mux0~92_combout\,
	combout => \library1|Mux0~106_combout\);

-- Location: LCCOMB_X38_Y53_N30
\library1|Mux0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~53_combout\ = (\Mux324~12_combout\ & (((!\Mux325~11_combout\) # (!\Mux327~14_combout\)))) # (!\Mux324~12_combout\ & ((\Mux325~11_combout\) # ((\vga1|xPixel\(1) & \Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~53_combout\);

-- Location: LCCOMB_X38_Y53_N14
\library1|Mux0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~51_combout\ = (\vga1|yPixel\(1) & (\vga1|xPixel\(1) & (\Mux327~14_combout\ $ (!\Mux324~12_combout\)))) # (!\vga1|yPixel\(1) & (!\Mux324~12_combout\ & (\Mux327~14_combout\ $ (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~51_combout\);

-- Location: LCCOMB_X38_Y53_N28
\library1|Mux0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~52_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~51_combout\ & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~51_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~52_combout\);

-- Location: LCCOMB_X38_Y53_N16
\library1|Mux0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~50_combout\ = (\vga1|xPixel\(1) & ((\Mux324~12_combout\ & (\Mux327~14_combout\ & \Mux325~11_combout\)) # (!\Mux324~12_combout\ & (\Mux327~14_combout\ $ (\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~50_combout\);

-- Location: LCCOMB_X38_Y53_N20
\library1|Mux0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~54_combout\ = (\library1|Mux0~52_combout\ & ((\library1|Mux0~53_combout\) # ((!\vga1|yPixel\(2))))) # (!\library1|Mux0~52_combout\ & (((\vga1|yPixel\(2) & \library1|Mux0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~53_combout\,
	datab => \library1|Mux0~52_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~50_combout\,
	combout => \library1|Mux0~54_combout\);

-- Location: LCCOMB_X42_Y50_N26
\library1|Mux0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~70_combout\ = (\vga1|yPixel\(1) & ((\vga1|xPixel\(0)) # ((\vga1|xPixel\(1))))) # (!\vga1|yPixel\(1) & (((!\vga1|yPixel\(0) & \vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~70_combout\);

-- Location: LCCOMB_X39_Y53_N20
\library1|Mux0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~71_combout\ = (\Mux324~12_combout\ & (\vga1|yPixel\(1) $ (((\Mux327~14_combout\ & !\library1|Mux0~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~70_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~71_combout\);

-- Location: LCCOMB_X45_Y55_N4
\library1|Mux0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~77_combout\ = (\vga1|xPixel\(1) & (((!\Mux327~14_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux327~14_combout\ & ((!\Mux324~12_combout\))) # (!\Mux327~14_combout\ & (\vga1|xPixel\(0) & \Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~77_combout\);

-- Location: LCCOMB_X45_Y55_N10
\library1|Mux0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~78_combout\ = (!\Mux322~13_combout\ & (!\Mux324~11_combout\ & \Mux327~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \Mux327~14_combout\,
	combout => \library1|Mux0~78_combout\);

-- Location: LCCOMB_X45_Y55_N0
\library1|Mux0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~79_combout\ = (\vga1|yPixel\(1) & (((!\library1|Mux0~78_combout\)) # (!\vga1|xPixel\(1)))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~77_combout\,
	datad => \library1|Mux0~78_combout\,
	combout => \library1|Mux0~79_combout\);

-- Location: LCCOMB_X40_Y53_N0
\library1|Mux0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~74_combout\ = (!\vga1|xPixel\(0) & (\vga1|yPixel\(0) & (!\vga1|xPixel\(1) & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(0),
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~74_combout\);

-- Location: LCCOMB_X40_Y53_N14
\library1|Mux0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~75_combout\ = (\Mux327~14_combout\ & (\library1|Mux0~74_combout\ & ((\Mux324~11_combout\) # (\Mux322~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~74_combout\,
	datac => \Mux324~11_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~75_combout\);

-- Location: LCCOMB_X45_Y53_N16
\library1|Mux0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~72_combout\ = (\vga1|xPixel\(1)) # ((\vga1|xPixel\(0) & \Mux324~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \vga1|xPixel\(1),
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~72_combout\);

-- Location: LCCOMB_X45_Y53_N2
\library1|Mux0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~73_combout\ = (\Mux327~14_combout\ & (!\library1|Mux0~72_combout\ & ((!\vga1|yPixel\(1)) # (!\Mux324~12_combout\)))) # (!\Mux327~14_combout\ & (\library1|Mux0~72_combout\ & ((\Mux324~12_combout\) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \library1|Mux0~72_combout\,
	combout => \library1|Mux0~73_combout\);

-- Location: LCCOMB_X45_Y53_N24
\library1|Mux0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~76_combout\ = (\vga1|yPixel\(2) & (\Mux325~11_combout\)) # (!\vga1|yPixel\(2) & ((\Mux325~11_combout\ & ((\library1|Mux0~73_combout\))) # (!\Mux325~11_combout\ & (\library1|Mux0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~75_combout\,
	datad => \library1|Mux0~73_combout\,
	combout => \library1|Mux0~76_combout\);

-- Location: LCCOMB_X43_Y53_N8
\library1|Mux0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~80_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~76_combout\ & ((\library1|Mux0~79_combout\))) # (!\library1|Mux0~76_combout\ & (\library1|Mux0~71_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~71_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~79_combout\,
	datad => \library1|Mux0~76_combout\,
	combout => \library1|Mux0~80_combout\);

-- Location: LCCOMB_X41_Y53_N30
\library1|Mux0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~67_combout\ = (\Mux325~11_combout\ & (!\Mux324~12_combout\ & ((\vga1|xPixel\(1)) # (\vga1|yPixel\(1))))) # (!\Mux325~11_combout\ & (((\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~67_combout\);

-- Location: LCCOMB_X41_Y53_N22
\library1|Mux0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~65_combout\ = (\vga1|yPixel\(1) & (\vga1|xPixel\(1) & ((\Mux325~11_combout\) # (\Mux324~12_combout\)))) # (!\vga1|yPixel\(1) & (((!\Mux325~11_combout\ & \Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~65_combout\);

-- Location: LCCOMB_X41_Y53_N24
\library1|Mux0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~64_combout\ = (\Mux325~11_combout\ & (((!\Mux324~12_combout\)))) # (!\Mux325~11_combout\ & (\Mux324~12_combout\ & ((\vga1|xPixel\(1)) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~64_combout\);

-- Location: LCCOMB_X41_Y53_N12
\library1|Mux0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~66_combout\ = (\vga1|yPixel\(2) & ((\Mux327~14_combout\ & ((\library1|Mux0~64_combout\))) # (!\Mux327~14_combout\ & (\library1|Mux0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~65_combout\,
	datad => \library1|Mux0~64_combout\,
	combout => \library1|Mux0~66_combout\);

-- Location: LCCOMB_X41_Y53_N28
\library1|Mux0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~68_combout\ = (\library1|Mux0~66_combout\) # ((\Mux327~14_combout\ & (!\vga1|yPixel\(2) & \library1|Mux0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~67_combout\,
	datad => \library1|Mux0~66_combout\,
	combout => \library1|Mux0~68_combout\);

-- Location: LCCOMB_X45_Y54_N0
\library1|Mux0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~62_combout\ = \vga1|xPixel\(1) $ (\Mux325~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~62_combout\);

-- Location: LCCOMB_X45_Y54_N14
\library1|Mux0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~61_combout\ = (\Mux325~11_combout\ & (\library1|Mux0~60_combout\ $ (((!\Mux327~14_combout\))))) # (!\Mux325~11_combout\ & (((\Mux327~14_combout\) # (!\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~60_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~61_combout\);

-- Location: LCCOMB_X45_Y54_N2
\library1|Mux0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~58_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(0) & (\vga1|yPixel\(1))) # (!\vga1|xPixel\(0) & ((\Mux327~14_combout\))))) # (!\vga1|xPixel\(1) & (((\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~58_combout\);

-- Location: LCCOMB_X45_Y54_N4
\library1|Mux0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~55_combout\ = (\vga1|xPixel\(1) & (\Mux327~14_combout\ & ((\vga1|yPixel\(1)) # (!\vga1|xPixel\(0))))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(1)) # ((\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~55_combout\);

-- Location: LCCOMB_X45_Y54_N18
\library1|Mux0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~56_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(0) & (!\vga1|yPixel\(1))) # (!\vga1|xPixel\(0) & ((\Mux325~11_combout\))))) # (!\vga1|xPixel\(1) & ((\vga1|xPixel\(0) & ((\Mux325~11_combout\))) # (!\vga1|xPixel\(0) & (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~56_combout\);

-- Location: LCCOMB_X45_Y54_N24
\library1|Mux0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~57_combout\ = \Mux325~11_combout\ $ (((!\vga1|yPixel\(2) & ((!\library1|Mux0~56_combout\) # (!\Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~56_combout\,
	combout => \library1|Mux0~57_combout\);

-- Location: LCCOMB_X45_Y54_N20
\library1|Mux0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~59_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~57_combout\ & (\library1|Mux0~58_combout\)) # (!\library1|Mux0~57_combout\ & ((!\library1|Mux0~55_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~58_combout\,
	datac => \library1|Mux0~55_combout\,
	datad => \library1|Mux0~57_combout\,
	combout => \library1|Mux0~59_combout\);

-- Location: LCCOMB_X45_Y54_N30
\library1|Mux0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~63_combout\ = (\Mux324~12_combout\ & (((\library1|Mux0~59_combout\)))) # (!\Mux324~12_combout\ & (((\library1|Mux0~61_combout\)) # (!\library1|Mux0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~62_combout\,
	datac => \library1|Mux0~61_combout\,
	datad => \library1|Mux0~59_combout\,
	combout => \library1|Mux0~63_combout\);

-- Location: LCCOMB_X43_Y53_N10
\library1|Mux0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~69_combout\ = (\vga1|xPixel\(2) & (\Mux322~12_combout\)) # (!\vga1|xPixel\(2) & ((\Mux322~12_combout\ & ((\library1|Mux0~63_combout\))) # (!\Mux322~12_combout\ & (\library1|Mux0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~68_combout\,
	datad => \library1|Mux0~63_combout\,
	combout => \library1|Mux0~69_combout\);

-- Location: LCCOMB_X43_Y53_N26
\library1|Mux0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~81_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~69_combout\ & ((\library1|Mux0~80_combout\))) # (!\library1|Mux0~69_combout\ & (\library1|Mux0~54_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~54_combout\,
	datac => \library1|Mux0~80_combout\,
	datad => \library1|Mux0~69_combout\,
	combout => \library1|Mux0~81_combout\);

-- Location: LCCOMB_X40_Y53_N20
\library1|Mux0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~34_combout\ = (\vga1|xPixel\(2) & ((\Mux322~13_combout\) # ((\Mux324~11_combout\)))) # (!\vga1|xPixel\(2) & (\Mux325~11_combout\ $ (((\Mux322~13_combout\) # (\Mux324~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux322~13_combout\,
	datac => \Mux324~11_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~34_combout\);

-- Location: LCCOMB_X40_Y53_N8
\library1|Mux0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~38_combout\ = (\vga1|xPixel\(1) & ((\Mux324~12_combout\) # ((\Mux325~11_combout\) # (!\vga1|xPixel\(2))))) # (!\vga1|xPixel\(1) & ((\vga1|xPixel\(2)) # (\Mux324~12_combout\ $ (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~38_combout\);

-- Location: LCCOMB_X40_Y53_N2
\library1|Mux0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~35_combout\ = \vga1|xPixel\(2) $ (((\vga1|xPixel\(1) & ((\Mux324~12_combout\) # (\Mux325~11_combout\))) # (!\vga1|xPixel\(1) & (\Mux324~12_combout\ & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \vga1|xPixel\(2),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~35_combout\);

-- Location: LCCOMB_X40_Y53_N28
\library1|Mux0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~36_combout\ = (\Mux324~12_combout\ & ((\vga1|xPixel\(1) & (\vga1|xPixel\(2) $ (!\Mux325~11_combout\))) # (!\vga1|xPixel\(1) & (\vga1|xPixel\(2) & !\Mux325~11_combout\)))) # (!\Mux324~12_combout\ & (((!\vga1|xPixel\(2) & 
-- \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \vga1|xPixel\(2),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~36_combout\);

-- Location: LCCOMB_X40_Y53_N10
\library1|Mux0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~37_combout\ = (\Mux327~14_combout\ & ((\library1|Mux0~35_combout\) # ((\vga1|yPixel\(1))))) # (!\Mux327~14_combout\ & (((!\vga1|yPixel\(1) & \library1|Mux0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~35_combout\,
	datac => \vga1|yPixel\(1),
	datad => \library1|Mux0~36_combout\,
	combout => \library1|Mux0~37_combout\);

-- Location: LCCOMB_X40_Y53_N26
\library1|Mux0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~39_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~37_combout\ & ((\library1|Mux0~38_combout\))) # (!\library1|Mux0~37_combout\ & (\library1|Mux0~34_combout\)))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~34_combout\,
	datac => \library1|Mux0~38_combout\,
	datad => \library1|Mux0~37_combout\,
	combout => \library1|Mux0~39_combout\);

-- Location: LCCOMB_X42_Y50_N0
\library1|Mux0~851\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~851_combout\ = (\Mux325~11_combout\ & (\Mux324~12_combout\ $ (((\Mux327~14_combout\) # (!\vga1|xPixel\(2)))))) # (!\Mux325~11_combout\ & (\Mux324~12_combout\ & ((\Mux327~14_combout\) # (!\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~851_combout\);

-- Location: LCCOMB_X42_Y50_N30
\library1|Mux0~852\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~852_combout\ = (\library1|Mux0~851_combout\ & ((\vga1|xPixel\(2) & (\vga1|xPixel\(1) $ (\Mux327~14_combout\))) # (!\vga1|xPixel\(2) & ((\vga1|xPixel\(1)) # (!\Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~851_combout\,
	combout => \library1|Mux0~852_combout\);

-- Location: LCCOMB_X42_Y50_N12
\library1|Mux0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~40_combout\ = (\Mux327~14_combout\ & ((\Mux325~11_combout\ $ (!\Mux324~12_combout\)))) # (!\Mux327~14_combout\ & ((\Mux325~11_combout\) # ((\vga1|yPixel\(1) & !\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~40_combout\);

-- Location: LCCOMB_X42_Y50_N8
\library1|Mux0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~44_combout\ = (\Mux325~11_combout\ & (((\Mux327~14_combout\) # (!\Mux324~12_combout\)))) # (!\Mux325~11_combout\ & ((\Mux324~12_combout\) # (\vga1|yPixel\(1) $ (\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~44_combout\);

-- Location: LCCOMB_X42_Y50_N22
\library1|Mux0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~41_combout\ = (\Mux325~11_combout\ & (((!\Mux327~14_combout\ & \Mux324~12_combout\)))) # (!\Mux325~11_combout\ & (!\Mux324~12_combout\ & ((\vga1|yPixel\(1)) # (\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~41_combout\);

-- Location: LCCOMB_X42_Y50_N28
\library1|Mux0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~42_combout\ = (\Mux325~11_combout\ & (\Mux327~14_combout\ $ (((!\Mux322~13_combout\ & !\Mux324~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux322~13_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux324~11_combout\,
	combout => \library1|Mux0~42_combout\);

-- Location: LCCOMB_X42_Y50_N6
\library1|Mux0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~43_combout\ = (\vga1|xPixel\(2) & (\vga1|xPixel\(1))) # (!\vga1|xPixel\(2) & ((\vga1|xPixel\(1) & (!\library1|Mux0~41_combout\)) # (!\vga1|xPixel\(1) & ((\library1|Mux0~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~41_combout\,
	datad => \library1|Mux0~42_combout\,
	combout => \library1|Mux0~43_combout\);

-- Location: LCCOMB_X42_Y50_N10
\library1|Mux0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~45_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~43_combout\ & ((!\library1|Mux0~44_combout\))) # (!\library1|Mux0~43_combout\ & (!\library1|Mux0~40_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~40_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~44_combout\,
	datad => \library1|Mux0~43_combout\,
	combout => \library1|Mux0~45_combout\);

-- Location: LCCOMB_X42_Y50_N24
\library1|Mux0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~46_combout\ = (\Mux322~12_combout\ & ((\vga1|yPixel\(2)) # ((\library1|Mux0~852_combout\)))) # (!\Mux322~12_combout\ & (!\vga1|yPixel\(2) & ((\library1|Mux0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~852_combout\,
	datad => \library1|Mux0~45_combout\,
	combout => \library1|Mux0~46_combout\);

-- Location: LCCOMB_X42_Y58_N0
\library1|Mux0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~47_combout\ = (\vga1|xPixel\(1) & (!\vga1|yPixel\(1) & ((\vga1|xPixel\(2))))) # (!\vga1|xPixel\(1) & (\vga1|xPixel\(2) $ (((\vga1|yPixel\(1)) # (\Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~47_combout\);

-- Location: LCCOMB_X42_Y58_N10
\library1|Mux0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~48_combout\ = (\vga1|xPixel\(1) & (\vga1|xPixel\(2) & (\vga1|yPixel\(1) $ (\Mux327~14_combout\)))) # (!\vga1|xPixel\(1) & (\vga1|yPixel\(1) & (\Mux327~14_combout\ $ (\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~48_combout\);

-- Location: LCCOMB_X42_Y58_N30
\library1|Mux0~849\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~849_combout\ = (\library1|Mux0~47_combout\ & ((\Mux325~11_combout\ & (\vga1|xPixel\(1) & !\library1|Mux0~48_combout\)) # (!\Mux325~11_combout\ & (!\vga1|xPixel\(1) & \library1|Mux0~48_combout\)))) # (!\library1|Mux0~47_combout\ & 
-- (((\library1|Mux0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \library1|Mux0~47_combout\,
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~48_combout\,
	combout => \library1|Mux0~849_combout\);

-- Location: LCCOMB_X42_Y58_N20
\library1|Mux0~850\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~850_combout\ = (\library1|Mux0~47_combout\ & (\Mux324~12_combout\ & (\library1|Mux0~849_combout\))) # (!\library1|Mux0~47_combout\ & ((\library1|Mux0~849_combout\) # (\Mux324~12_combout\ $ (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~47_combout\,
	datac => \library1|Mux0~849_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~850_combout\);

-- Location: LCCOMB_X43_Y53_N28
\library1|Mux0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~49_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~46_combout\ & ((\library1|Mux0~850_combout\))) # (!\library1|Mux0~46_combout\ & (\library1|Mux0~39_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~39_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~46_combout\,
	datad => \library1|Mux0~850_combout\,
	combout => \library1|Mux0~49_combout\);

-- Location: LCCOMB_X43_Y53_N16
\library1|Mux0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~82_combout\ = (!\Mux321~10_combout\ & ((\Mux323~10_combout\ & ((\library1|Mux0~49_combout\))) # (!\Mux323~10_combout\ & (\library1|Mux0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~81_combout\,
	datad => \library1|Mux0~49_combout\,
	combout => \library1|Mux0~82_combout\);

-- Location: LCCOMB_X43_Y53_N14
\library1|Mux0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~108_combout\ = (\library1|Mux0~82_combout\) # ((\Mux321~10_combout\ & (\library1|Mux0~107_combout\ & \library1|Mux0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~107_combout\,
	datac => \library1|Mux0~106_combout\,
	datad => \library1|Mux0~82_combout\,
	combout => \library1|Mux0~108_combout\);

-- Location: LCCOMB_X45_Y51_N0
\library1|Mux0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~179_combout\ = (\vga1|yPixel\(1) & (\vga1|xPixel\(1) & (\Mux322~12_combout\ & !\vga1|xPixel\(2)))) # (!\vga1|yPixel\(1) & ((\vga1|xPixel\(1)) # ((\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux322~12_combout\,
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~179_combout\);

-- Location: LCCOMB_X45_Y51_N26
\library1|Mux0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~180_combout\ = (!\Mux327~14_combout\ & (\vga1|xPixel\(2) $ (((\library1|Mux0~179_combout\) # (!\vga1|yPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~179_combout\,
	combout => \library1|Mux0~180_combout\);

-- Location: LCCOMB_X45_Y51_N12
\library1|Mux0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~175_combout\ = (\vga1|yPixel\(2) & \vga1|yPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(2),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~175_combout\);

-- Location: LCCOMB_X45_Y51_N30
\library1|Mux0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~176_combout\ = (\vga1|xPixel\(2) & ((\Mux325~11_combout\ & ((\vga1|xPixel\(1)))) # (!\Mux325~11_combout\ & (!\library1|Mux0~175_combout\)))) # (!\vga1|xPixel\(2) & (!\vga1|xPixel\(1) & (\library1|Mux0~175_combout\ $ (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~175_combout\,
	datab => \vga1|xPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~176_combout\);

-- Location: LCCOMB_X45_Y51_N16
\library1|Mux0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~177_combout\ = (\vga1|xPixel\(1)) # ((\library1|Mux0~175_combout\ & (\vga1|xPixel\(2) $ (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~175_combout\,
	datab => \vga1|xPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~177_combout\);

-- Location: LCCOMB_X45_Y51_N22
\library1|Mux0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~178_combout\ = (\Mux327~14_combout\ & (\library1|Mux0~176_combout\ $ (((\Mux322~12_combout\) # (\library1|Mux0~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~176_combout\,
	datad => \library1|Mux0~177_combout\,
	combout => \library1|Mux0~178_combout\);

-- Location: LCCOMB_X45_Y51_N4
\library1|Mux0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~173_combout\ = (!\Mux322~12_combout\ & ((\vga1|xPixel\(2)) # ((\vga1|yPixel\(2) & !\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(2),
	datac => \Mux322~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~173_combout\);

-- Location: LCCOMB_X45_Y51_N2
\library1|Mux0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~174_combout\ = (\Mux327~14_combout\ & (\library1|Mux0~173_combout\ & \Mux321~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~173_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~174_combout\);

-- Location: LCCOMB_X45_Y51_N28
\library1|Mux0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~181_combout\ = (\library1|Mux0~174_combout\) # ((!\Mux321~10_combout\ & ((\library1|Mux0~180_combout\) # (\library1|Mux0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~180_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~178_combout\,
	datad => \library1|Mux0~174_combout\,
	combout => \library1|Mux0~181_combout\);

-- Location: LCCOMB_X45_Y50_N24
\library1|Mux0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~119_combout\ = (!\Mux322~12_combout\ & (\Mux325~11_combout\ & ((\vga1|yPixel\(2)) # (\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~119_combout\);

-- Location: LCCOMB_X45_Y50_N8
\library1|Mux0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~109_combout\ = (\Mux322~12_combout\ & (((\Mux327~14_combout\)))) # (!\Mux322~12_combout\ & ((\Mux327~14_combout\ & (!\vga1|yPixel\(2) & !\Mux325~11_combout\)) # (!\Mux327~14_combout\ & ((\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~109_combout\);

-- Location: LCCOMB_X45_Y50_N18
\library1|Mux0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~116_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1) & !\vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~116_combout\);

-- Location: LCCOMB_X45_Y50_N4
\library1|Mux0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~117_combout\ = (!\Mux322~12_combout\ & (!\library1|Mux0~116_combout\ & (\Mux327~14_combout\ & \Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~116_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~117_combout\);

-- Location: LCCOMB_X45_Y50_N22
\library1|Mux0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~110_combout\ = (\vga1|yPixel\(2) & (!\Mux327~14_combout\)) # (!\vga1|yPixel\(2) & ((\Mux327~14_combout\ & ((!\Mux322~12_combout\) # (!\vga1|yPixel\(1)))) # (!\Mux327~14_combout\ & ((\vga1|yPixel\(1)) # (\Mux322~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~110_combout\);

-- Location: LCCOMB_X45_Y50_N26
\library1|Mux0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~114_combout\ = (\Mux322~12_combout\) # ((\vga1|yPixel\(2) & (\Mux327~14_combout\ & !\vga1|yPixel\(1))) # (!\vga1|yPixel\(2) & (!\Mux327~14_combout\ & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~114_combout\);

-- Location: LCCOMB_X45_Y50_N12
\library1|Mux0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~111_combout\ = (\library1|Mux0~60_combout\ & (!\Mux322~13_combout\ & (\Mux327~14_combout\ & !\Mux322~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~60_combout\,
	datab => \Mux322~13_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux322~14_combout\,
	combout => \library1|Mux0~111_combout\);

-- Location: LCCOMB_X45_Y50_N30
\library1|Mux0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~112_combout\ = (\Mux327~14_combout\ & (!\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & !\Mux322~12_combout\))) # (!\Mux327~14_combout\ & ((\Mux322~12_combout\) # ((\vga1|yPixel\(2) & \vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~112_combout\);

-- Location: LCCOMB_X45_Y50_N20
\library1|Mux0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~113_combout\ = (\vga1|xPixel\(1) & (((\Mux325~11_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux325~11_combout\ & (\library1|Mux0~111_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~111_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~112_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~113_combout\);

-- Location: LCCOMB_X45_Y50_N16
\library1|Mux0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~115_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~113_combout\ & ((!\library1|Mux0~114_combout\))) # (!\library1|Mux0~113_combout\ & (\library1|Mux0~110_combout\)))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~110_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~114_combout\,
	datad => \library1|Mux0~113_combout\,
	combout => \library1|Mux0~115_combout\);

-- Location: LCCOMB_X45_Y50_N6
\library1|Mux0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~118_combout\ = (\vga1|xPixel\(2) & (((\Mux321~10_combout\) # (\library1|Mux0~115_combout\)))) # (!\vga1|xPixel\(2) & (\library1|Mux0~117_combout\ & (!\Mux321~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~117_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~115_combout\,
	combout => \library1|Mux0~118_combout\);

-- Location: LCCOMB_X45_Y50_N14
\library1|Mux0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~120_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~118_combout\ & (!\library1|Mux0~119_combout\)) # (!\library1|Mux0~118_combout\ & ((!\library1|Mux0~109_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~119_combout\,
	datac => \library1|Mux0~109_combout\,
	datad => \library1|Mux0~118_combout\,
	combout => \library1|Mux0~120_combout\);

-- Location: LCCOMB_X46_Y54_N14
\library1|Mux0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~152_combout\ = (\vga1|yPixel\(2)) # ((\vga1|yPixel\(1) & ((\vga1|xPixel\(1)) # (\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~152_combout\);

-- Location: LCCOMB_X46_Y54_N26
\library1|Mux0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~150_combout\ = (\vga1|xPixel\(1)) # ((\vga1|xPixel\(0)) # ((\vga1|yPixel\(2) & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~150_combout\);

-- Location: LCCOMB_X46_Y54_N16
\library1|Mux0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~151_combout\ = (\Mux322~12_combout\ & (((\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & (\library1|Mux0~60_combout\ & ((\vga1|xPixel\(1)) # (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~60_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~151_combout\);

-- Location: LCCOMB_X46_Y54_N8
\library1|Mux0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~153_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~151_combout\ & (!\library1|Mux0~152_combout\)) # (!\library1|Mux0~151_combout\ & ((\library1|Mux0~150_combout\))))) # (!\Mux322~12_combout\ & (((\library1|Mux0~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~152_combout\,
	datac => \library1|Mux0~150_combout\,
	datad => \library1|Mux0~151_combout\,
	combout => \library1|Mux0~153_combout\);

-- Location: LCCOMB_X46_Y54_N10
\library1|Mux0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~146_combout\ = (\vga1|xPixel\(1) & (((\Mux325~11_combout\)))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(1)) # ((\vga1|xPixel\(0) & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~146_combout\);

-- Location: LCCOMB_X46_Y54_N22
\library1|Mux0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~148_combout\ = (\vga1|yPixel\(2) & (\library1|Mux0~146_combout\ & ((!\Mux325~11_combout\) # (!\Mux322~12_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux325~11_combout\ & ((!\library1|Mux0~146_combout\))) # (!\Mux325~11_combout\ & 
-- (\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~146_combout\,
	combout => \library1|Mux0~148_combout\);

-- Location: LCCOMB_X46_Y54_N0
\library1|Mux0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~147_combout\ = (!\library1|Mux0~146_combout\ & (\vga1|yPixel\(2) $ (\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~146_combout\,
	combout => \library1|Mux0~147_combout\);

-- Location: LCCOMB_X46_Y54_N20
\library1|Mux0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~149_combout\ = \library1|Mux0~148_combout\ $ ((((!\Mux322~13_combout\ & !\Mux322~14_combout\)) # (!\library1|Mux0~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux322~14_combout\,
	datac => \library1|Mux0~148_combout\,
	datad => \library1|Mux0~147_combout\,
	combout => \library1|Mux0~149_combout\);

-- Location: LCCOMB_X46_Y54_N30
\library1|Mux0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~154_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~149_combout\))) # (!\Mux321~10_combout\ & (\library1|Mux0~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~153_combout\,
	datad => \library1|Mux0~149_combout\,
	combout => \library1|Mux0~154_combout\);

-- Location: LCCOMB_X45_Y54_N16
\library1|Mux0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~127_combout\ = (!\vga1|xPixel\(1) & !\vga1|xPixel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~127_combout\);

-- Location: LCCOMB_X43_Y53_N12
\library1|Mux0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~128_combout\ = (\Mux325~11_combout\ & (\library1|Mux0~127_combout\ & ((!\Mux321~10_combout\)))) # (!\Mux325~11_combout\ & (((\vga1|yPixel\(1)) # (\Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~127_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~128_combout\);

-- Location: LCCOMB_X43_Y50_N28
\library1|Mux0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~123_combout\ = (\vga1|yPixel\(1) & (((!\vga1|xPixel\(1)) # (!\vga1|yPixel\(0))))) # (!\vga1|yPixel\(1) & ((\vga1|xPixel\(0)) # ((\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~123_combout\);

-- Location: LCCOMB_X43_Y50_N22
\library1|Mux0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~124_combout\ = (\Mux325~11_combout\ & ((\Mux321~10_combout\) # (!\library1|Mux0~123_combout\))) # (!\Mux325~11_combout\ & ((!\Mux321~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~123_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~124_combout\);

-- Location: LCCOMB_X43_Y50_N24
\library1|Mux0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~125_combout\ = (\Mux321~10_combout\ & ((\Mux325~11_combout\ & (\vga1|xPixel\(1))) # (!\Mux325~11_combout\ & ((!\vga1|yPixel\(1)))))) # (!\Mux321~10_combout\ & (((\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \Mux321~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~125_combout\);

-- Location: LCCOMB_X43_Y50_N2
\library1|Mux0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~126_combout\ = (\vga1|yPixel\(2) & (\Mux322~12_combout\)) # (!\vga1|yPixel\(2) & ((\Mux322~12_combout\ & (!\library1|Mux0~124_combout\)) # (!\Mux322~12_combout\ & ((\library1|Mux0~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~124_combout\,
	datad => \library1|Mux0~125_combout\,
	combout => \library1|Mux0~126_combout\);

-- Location: LCCOMB_X43_Y50_N16
\library1|Mux0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~121_combout\ = (\Mux325~11_combout\ & (\Mux321~10_combout\ & ((\vga1|xPixel\(1)) # (\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~11_combout\,
	datac => \vga1|xPixel\(0),
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~121_combout\);

-- Location: LCCOMB_X43_Y50_N14
\library1|Mux0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~122_combout\ = (\vga1|yPixel\(1) & ((!\library1|Mux0~121_combout\))) # (!\vga1|yPixel\(1) & (\Mux325~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~121_combout\,
	combout => \library1|Mux0~122_combout\);

-- Location: LCCOMB_X43_Y53_N22
\library1|Mux0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~129_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~126_combout\ & (\library1|Mux0~128_combout\)) # (!\library1|Mux0~126_combout\ & ((\library1|Mux0~122_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~128_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~126_combout\,
	datad => \library1|Mux0~122_combout\,
	combout => \library1|Mux0~129_combout\);

-- Location: LCCOMB_X42_Y54_N26
\library1|Mux0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~135_combout\ = (!\Mux322~14_combout\ & (!\Mux322~13_combout\ & \Mux325~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~14_combout\,
	datac => \Mux322~13_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~135_combout\);

-- Location: LCCOMB_X45_Y54_N22
\library1|Mux0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~130_combout\ = (\vga1|yPixel\(2) & (((!\vga1|xPixel\(0)) # (!\vga1|xPixel\(1))))) # (!\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & ((\vga1|xPixel\(1)) # (\vga1|xPixel\(0)))) # (!\vga1|yPixel\(1) & (\vga1|xPixel\(1) & \vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(1),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~130_combout\);

-- Location: LCCOMB_X41_Y51_N14
\library1|Mux0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~131_combout\ = (\vga1|xPixel\(0) & \vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~131_combout\);

-- Location: LCCOMB_X42_Y54_N28
\library1|Mux0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~132_combout\ = (\Mux325~11_combout\ & (\library1|Mux0~130_combout\)) # (!\Mux325~11_combout\ & (((\library1|Mux0~60_combout\ & \library1|Mux0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~130_combout\,
	datab => \library1|Mux0~60_combout\,
	datac => \library1|Mux0~131_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~132_combout\);

-- Location: LCCOMB_X42_Y54_N14
\library1|Mux0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~133_combout\ = (\vga1|yPixel\(1) & (\vga1|yPixel\(2) $ (((\vga1|xPixel\(1) & \vga1|xPixel\(0)))))) # (!\vga1|yPixel\(1) & (\vga1|yPixel\(2) & ((\vga1|xPixel\(1)) # (\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(1),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~133_combout\);

-- Location: LCCOMB_X42_Y54_N8
\library1|Mux0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~134_combout\ = (\Mux321~10_combout\ & (((\library1|Mux0~133_combout\)))) # (!\Mux321~10_combout\ & ((\vga1|xPixel\(1)) # ((!\library1|Mux0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~133_combout\,
	datac => \library1|Mux0~60_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~134_combout\);

-- Location: LCCOMB_X42_Y54_N30
\library1|Mux0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~137_combout\ = (\library1|Mux0~135_combout\ & ((\library1|Mux0~134_combout\) # ((\library1|Mux0~132_combout\ & \library1|Mux0~136_combout\)))) # (!\library1|Mux0~135_combout\ & (\library1|Mux0~132_combout\ & 
-- ((\library1|Mux0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~135_combout\,
	datab => \library1|Mux0~132_combout\,
	datac => \library1|Mux0~134_combout\,
	datad => \library1|Mux0~136_combout\,
	combout => \library1|Mux0~137_combout\);

-- Location: LCCOMB_X43_Y50_N30
\library1|Mux0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~143_combout\ = (\vga1|yPixel\(1) & ((\Mux322~14_combout\) # (\Mux322~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datac => \Mux322~14_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~143_combout\);

-- Location: LCCOMB_X43_Y50_N4
\library1|Mux0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~142_combout\ = (\Mux321~10_combout\ & ((!\Mux325~11_combout\))) # (!\Mux321~10_combout\ & (!\vga1|yPixel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux325~11_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~142_combout\);

-- Location: LCCOMB_X43_Y50_N26
\library1|Mux0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~141_combout\ = (\vga1|xPixel\(1)) # ((\vga1|xPixel\(0) & \Mux325~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~141_combout\);

-- Location: LCCOMB_X43_Y50_N6
\library1|Mux0~847\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~847_combout\ = ((\Mux322~12_combout\ & (\library1|Mux0~141_combout\ & !\Mux321~10_combout\)) # (!\Mux322~12_combout\ & ((\Mux321~10_combout\)))) # (!\Mux325~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~141_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~847_combout\);

-- Location: LCCOMB_X43_Y50_N8
\library1|Mux0~848\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~848_combout\ = (\vga1|yPixel\(2) & (\library1|Mux0~847_combout\ & ((\library1|Mux0~141_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~141_combout\,
	datad => \library1|Mux0~847_combout\,
	combout => \library1|Mux0~848_combout\);

-- Location: LCCOMB_X43_Y50_N12
\library1|Mux0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~138_combout\ = (\vga1|xPixel\(0) & \vga1|xPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|xPixel\(0),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~138_combout\);

-- Location: LCCOMB_X43_Y50_N10
\library1|Mux0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~139_combout\ = (\Mux325~11_combout\ & (!\library1|Mux0~138_combout\ & (\Mux322~12_combout\ $ (\Mux321~10_combout\)))) # (!\Mux325~11_combout\ & (((\Mux322~12_combout\ & \Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~138_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux322~12_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~139_combout\);

-- Location: LCCOMB_X43_Y50_N0
\library1|Mux0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~140_combout\ = (!\vga1|yPixel\(2) & (\library1|Mux0~139_combout\ & ((!\Mux322~12_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux322~12_combout\,
	datad => \library1|Mux0~139_combout\,
	combout => \library1|Mux0~140_combout\);

-- Location: LCCOMB_X43_Y50_N20
\library1|Mux0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~144_combout\ = (\library1|Mux0~848_combout\) # ((\library1|Mux0~140_combout\) # ((\library1|Mux0~143_combout\ & \library1|Mux0~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~143_combout\,
	datab => \library1|Mux0~142_combout\,
	datac => \library1|Mux0~848_combout\,
	datad => \library1|Mux0~140_combout\,
	combout => \library1|Mux0~144_combout\);

-- Location: LCCOMB_X43_Y53_N20
\library1|Mux0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~145_combout\ = (\vga1|xPixel\(2) & (\Mux327~14_combout\)) # (!\vga1|xPixel\(2) & ((\Mux327~14_combout\ & (\library1|Mux0~137_combout\)) # (!\Mux327~14_combout\ & ((\library1|Mux0~144_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~137_combout\,
	datad => \library1|Mux0~144_combout\,
	combout => \library1|Mux0~145_combout\);

-- Location: LCCOMB_X43_Y53_N30
\library1|Mux0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~155_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~145_combout\ & (\library1|Mux0~154_combout\)) # (!\library1|Mux0~145_combout\ & ((\library1|Mux0~129_combout\))))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~154_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~129_combout\,
	datad => \library1|Mux0~145_combout\,
	combout => \library1|Mux0~155_combout\);

-- Location: LCCOMB_X46_Y52_N22
\library1|Mux0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~157_combout\ = (!\Mux327~14_combout\ & ((\Mux321~10_combout\) # ((\vga1|xPixel\(2) & \vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~157_combout\);

-- Location: LCCOMB_X46_Y52_N0
\library1|Mux0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~156_combout\ = (\Mux321~10_combout\ & ((\vga1|xPixel\(2)) # ((\Mux327~14_combout\)))) # (!\Mux321~10_combout\ & (\vga1|xPixel\(2) $ ((\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~156_combout\);

-- Location: LCCOMB_X46_Y52_N12
\library1|Mux0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~158_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~156_combout\) # ((\vga1|yPixel\(1) & !\library1|Mux0~157_combout\)))) # (!\vga1|yPixel\(2) & (((!\library1|Mux0~157_combout\ & \library1|Mux0~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~157_combout\,
	datad => \library1|Mux0~156_combout\,
	combout => \library1|Mux0~158_combout\);

-- Location: LCCOMB_X46_Y52_N28
\library1|Mux0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~168_combout\ = (\vga1|yPixel\(1) & \vga1|yPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	combout => \library1|Mux0~168_combout\);

-- Location: LCCOMB_X46_Y52_N14
\library1|Mux0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~169_combout\ = (\Mux327~14_combout\ & (\vga1|xPixel\(2) $ (((\vga1|xPixel\(1)))))) # (!\Mux327~14_combout\ & ((\vga1|xPixel\(2) & (!\library1|Mux0~60_combout\)) # (!\vga1|xPixel\(2) & (\library1|Mux0~60_combout\ & !\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~60_combout\,
	datac => \Mux327~14_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~169_combout\);

-- Location: LCCOMB_X46_Y52_N24
\library1|Mux0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~170_combout\ = (\Mux327~14_combout\ & (!\Mux321~10_combout\ & ((\library1|Mux0~168_combout\) # (\library1|Mux0~169_combout\)))) # (!\Mux327~14_combout\ & (((\Mux321~10_combout\) # (!\library1|Mux0~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~168_combout\,
	datac => \library1|Mux0~169_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~170_combout\);

-- Location: LCCOMB_X46_Y52_N26
\library1|Mux0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~165_combout\ = (\vga1|xPixel\(2) & ((\vga1|xPixel\(1)) # ((\vga1|yPixel\(1) & \vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~165_combout\);

-- Location: LCCOMB_X46_Y52_N8
\library1|Mux0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~164_combout\ = (\vga1|xPixel\(1) & (((\vga1|yPixel\(1)) # (\vga1|yPixel\(2))) # (!\vga1|xPixel\(2)))) # (!\vga1|xPixel\(1) & (\vga1|xPixel\(2) $ (((\vga1|yPixel\(1) & \vga1|yPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(2),
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~164_combout\);

-- Location: LCCOMB_X46_Y52_N20
\library1|Mux0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~166_combout\ = (\library1|Mux0~165_combout\ & ((\library1|Mux0~164_combout\ & (\Mux327~14_combout\)) # (!\library1|Mux0~164_combout\ & ((\Mux321~10_combout\))))) # (!\library1|Mux0~165_combout\ & (\library1|Mux0~164_combout\ & 
-- (!\Mux327~14_combout\ & \Mux321~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~165_combout\,
	datab => \library1|Mux0~164_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~166_combout\);

-- Location: LCCOMB_X46_Y52_N4
\library1|Mux0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~160_combout\ = (\Mux327~14_combout\ & ((\Mux321~10_combout\) # (\vga1|yPixel\(2) $ (!\vga1|yPixel\(1))))) # (!\Mux327~14_combout\ & (\vga1|yPixel\(1) & (\vga1|yPixel\(2) $ (!\Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~160_combout\);

-- Location: LCCOMB_X46_Y52_N6
\library1|Mux0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~159_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & (!\Mux327~14_combout\ & !\Mux321~10_combout\)) # (!\vga1|yPixel\(1) & (\Mux327~14_combout\ & \Mux321~10_combout\)))) # (!\vga1|yPixel\(2) & ((\Mux327~14_combout\ $ 
-- (\Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~159_combout\);

-- Location: LCCOMB_X46_Y52_N30
\library1|Mux0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~161_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~160_combout\) # (\vga1|yPixel\(2) $ (\library1|Mux0~159_combout\)))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(2) & (!\library1|Mux0~160_combout\)) # (!\vga1|yPixel\(2) & 
-- ((\library1|Mux0~159_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~160_combout\,
	datad => \library1|Mux0~159_combout\,
	combout => \library1|Mux0~161_combout\);

-- Location: LCCOMB_X46_Y52_N16
\library1|Mux0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~162_combout\ = (\vga1|yPixel\(2) & (\vga1|xPixel\(1) & (\library1|Mux0~160_combout\ $ (\library1|Mux0~159_combout\)))) # (!\vga1|yPixel\(2) & (!\vga1|xPixel\(1) & (\library1|Mux0~160_combout\ & \library1|Mux0~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~160_combout\,
	datad => \library1|Mux0~159_combout\,
	combout => \library1|Mux0~162_combout\);

-- Location: LCCOMB_X46_Y52_N2
\library1|Mux0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~163_combout\ = \library1|Mux0~161_combout\ $ (((\vga1|xPixel\(2) & !\library1|Mux0~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datac => \library1|Mux0~161_combout\,
	datad => \library1|Mux0~162_combout\,
	combout => \library1|Mux0~163_combout\);

-- Location: LCCOMB_X46_Y52_N10
\library1|Mux0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~167_combout\ = (\Mux322~12_combout\ & (((\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & ((\Mux325~11_combout\ & ((\library1|Mux0~163_combout\))) # (!\Mux325~11_combout\ & (\library1|Mux0~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~166_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~163_combout\,
	combout => \library1|Mux0~167_combout\);

-- Location: LCCOMB_X46_Y52_N18
\library1|Mux0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~171_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~167_combout\ & ((\library1|Mux0~170_combout\))) # (!\library1|Mux0~167_combout\ & (\library1|Mux0~158_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~158_combout\,
	datab => \library1|Mux0~170_combout\,
	datac => \Mux322~12_combout\,
	datad => \library1|Mux0~167_combout\,
	combout => \library1|Mux0~171_combout\);

-- Location: LCCOMB_X43_Y53_N0
\library1|Mux0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~172_combout\ = (\Mux323~10_combout\ & (\Mux324~12_combout\)) # (!\Mux323~10_combout\ & ((\Mux324~12_combout\ & (\library1|Mux0~155_combout\)) # (!\Mux324~12_combout\ & ((\library1|Mux0~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~155_combout\,
	datad => \library1|Mux0~171_combout\,
	combout => \library1|Mux0~172_combout\);

-- Location: LCCOMB_X43_Y53_N2
\library1|Mux0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~182_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~172_combout\ & (\library1|Mux0~181_combout\)) # (!\library1|Mux0~172_combout\ & ((\library1|Mux0~120_combout\))))) # (!\Mux323~10_combout\ & (((\library1|Mux0~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \library1|Mux0~181_combout\,
	datac => \library1|Mux0~120_combout\,
	datad => \library1|Mux0~172_combout\,
	combout => \library1|Mux0~182_combout\);

-- Location: LCCOMB_X43_Y53_N24
\library1|Mux0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~183_combout\ = (\vga1|yPixel\(3) & (\Mux326~14_combout\)) # (!\vga1|yPixel\(3) & ((\Mux326~14_combout\ & (\library1|Mux0~108_combout\)) # (!\Mux326~14_combout\ & ((\library1|Mux0~182_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~108_combout\,
	datad => \library1|Mux0~182_combout\,
	combout => \library1|Mux0~183_combout\);

-- Location: LCCOMB_X43_Y53_N18
\library1|Mux0~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~191_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~183_combout\ & (\library1|Mux0~190_combout\)) # (!\library1|Mux0~183_combout\ & ((\library1|Mux0~33_combout\))))) # (!\vga1|yPixel\(3) & (((\library1|Mux0~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \library1|Mux0~190_combout\,
	datac => \library1|Mux0~33_combout\,
	datad => \library1|Mux0~183_combout\,
	combout => \library1|Mux0~191_combout\);

-- Location: LCCOMB_X43_Y56_N28
\library1|Mux0~564\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~564_combout\ = \Mux327~14_combout\ $ (((\Mux326~14_combout\ & (\Mux323~10_combout\)) # (!\Mux326~14_combout\ & (!\Mux323~10_combout\ & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~564_combout\);

-- Location: LCCOMB_X43_Y56_N26
\library1|Mux0~565\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~565_combout\ = (\Mux326~14_combout\ & (\Mux325~11_combout\ & ((\Mux327~14_combout\) # (!\Mux323~10_combout\)))) # (!\Mux326~14_combout\ & (!\Mux323~10_combout\ & (\Mux327~14_combout\ & !\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~565_combout\);

-- Location: LCCOMB_X43_Y56_N20
\library1|Mux0~815\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~815_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~565_combout\ & ((!\Mux324~12_combout\))) # (!\library1|Mux0~565_combout\ & ((\library1|Mux0~564_combout\) # (\Mux324~12_combout\))))) # (!\vga1|xPixel\(2) & (\library1|Mux0~564_combout\ & 
-- (\library1|Mux0~565_combout\ $ (\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~564_combout\,
	datac => \library1|Mux0~565_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~815_combout\);

-- Location: LCCOMB_X43_Y56_N6
\library1|Mux0~816\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~816_combout\ = (\Mux323~10_combout\ & (!\Mux324~12_combout\ & (\library1|Mux0~564_combout\ $ (!\library1|Mux0~815_combout\)))) # (!\Mux323~10_combout\ & ((\library1|Mux0~815_combout\) # ((!\Mux324~12_combout\ & 
-- \library1|Mux0~564_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~564_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~815_combout\,
	combout => \library1|Mux0~816_combout\);

-- Location: LCCOMB_X45_Y52_N26
\library1|Mux0~639\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~639_combout\ = (\vga1|xPixel\(2) & (((\Mux324~12_combout\) # (\Mux326~14_combout\)))) # (!\vga1|xPixel\(2) & (\Mux327~14_combout\ $ (((\Mux324~12_combout\ & !\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~639_combout\);

-- Location: LCCOMB_X45_Y52_N4
\library1|Mux0~628\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~628_combout\ = (!\vga1|xPixel\(2) & ((\Mux327~14_combout\ & ((!\Mux326~14_combout\))) # (!\Mux327~14_combout\ & (!\Mux324~12_combout\ & \Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~628_combout\);

-- Location: LCCOMB_X45_Y52_N8
\library1|Mux0~636\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~636_combout\ = (\vga1|xPixel\(2) & ((!\Mux326~14_combout\))) # (!\vga1|xPixel\(2) & (!\vga1|xPixel\(0) & \Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datac => \vga1|xPixel\(0),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~636_combout\);

-- Location: LCCOMB_X45_Y52_N14
\library1|Mux0~633\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~633_combout\ = \vga1|xPixel\(2) $ (\Mux326~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~633_combout\);

-- Location: LCCOMB_X45_Y52_N16
\library1|Mux0~634\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~634_combout\ = (\vga1|xPixel\(2) & (((!\vga1|yPixel\(1) & !\Mux326~14_combout\)))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(0) & (\vga1|yPixel\(1) & \Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~634_combout\);

-- Location: LCCOMB_X45_Y52_N2
\library1|Mux0~635\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~635_combout\ = (\Mux327~14_combout\ & ((\Mux324~12_combout\) # ((\library1|Mux0~633_combout\)))) # (!\Mux327~14_combout\ & (!\Mux324~12_combout\ & ((!\library1|Mux0~634_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~633_combout\,
	datad => \library1|Mux0~634_combout\,
	combout => \library1|Mux0~635_combout\);

-- Location: LCCOMB_X45_Y52_N30
\library1|Mux0~637\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~637_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~635_combout\ & ((\library1|Mux0~636_combout\))) # (!\library1|Mux0~635_combout\ & (!\vga1|xPixel\(2))))) # (!\Mux324~12_combout\ & (((\library1|Mux0~635_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~636_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~635_combout\,
	combout => \library1|Mux0~637_combout\);

-- Location: LCCOMB_X45_Y52_N12
\library1|Mux0~630\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~630_combout\ = (\vga1|xPixel\(0) & !\Mux326~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~630_combout\);

-- Location: LCCOMB_X45_Y52_N22
\library1|Mux0~631\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~631_combout\ = ((\Mux327~14_combout\ & ((\library1|Mux0~630_combout\) # (!\vga1|yPixel\(1)))) # (!\Mux327~14_combout\ & ((!\library1|Mux0~630_combout\)))) # (!\Mux324~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~630_combout\,
	combout => \library1|Mux0~631_combout\);

-- Location: LCCOMB_X45_Y52_N10
\library1|Mux0~629\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~629_combout\ = (\vga1|yPixel\(1) & (\Mux324~12_combout\)) # (!\vga1|yPixel\(1) & (!\Mux324~12_combout\ & \Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~629_combout\);

-- Location: LCCOMB_X45_Y52_N24
\library1|Mux0~632\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~632_combout\ = (\vga1|xPixel\(2) & (\Mux327~14_combout\ & ((\library1|Mux0~629_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~631_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~631_combout\,
	datad => \library1|Mux0~629_combout\,
	combout => \library1|Mux0~632_combout\);

-- Location: LCCOMB_X45_Y52_N28
\library1|Mux0~638\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~638_combout\ = (\Mux325~11_combout\ & ((\Mux323~10_combout\) # ((\library1|Mux0~632_combout\)))) # (!\Mux325~11_combout\ & (!\Mux323~10_combout\ & (\library1|Mux0~637_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~637_combout\,
	datad => \library1|Mux0~632_combout\,
	combout => \library1|Mux0~638_combout\);

-- Location: LCCOMB_X45_Y52_N0
\library1|Mux0~640\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~640_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~638_combout\ & (\library1|Mux0~639_combout\)) # (!\library1|Mux0~638_combout\ & ((!\library1|Mux0~628_combout\))))) # (!\Mux323~10_combout\ & (((\library1|Mux0~638_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~639_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~628_combout\,
	datad => \library1|Mux0~638_combout\,
	combout => \library1|Mux0~640_combout\);

-- Location: LCCOMB_X38_Y52_N22
\library1|Mux0~571\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~571_combout\ = (\Mux327~14_combout\) # ((\vga1|xPixel\(2)) # ((\Mux324~12_combout\ & !\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \vga1|xPixel\(2),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~571_combout\);

-- Location: LCCOMB_X38_Y52_N28
\library1|Mux0~566\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~566_combout\ = (\vga1|xPixel\(2) & (((!\Mux324~12_combout\ & \Mux325~11_combout\)))) # (!\vga1|xPixel\(2) & (\Mux327~14_combout\ $ (((!\Mux324~12_combout\ & \Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~566_combout\);

-- Location: LCCOMB_X38_Y52_N10
\library1|Mux0~813\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~813_combout\ = (\vga1|yPixel\(1) & (!\Mux325~11_combout\ & ((\vga1|xPixel\(0)) # (\Mux324~12_combout\)))) # (!\vga1|yPixel\(1) & (((\Mux324~12_combout\) # (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~813_combout\);

-- Location: LCCOMB_X38_Y52_N20
\library1|Mux0~814\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~814_combout\ = (\vga1|xPixel\(2) & (!\Mux324~12_combout\ & ((\Mux327~14_combout\) # (\library1|Mux0~813_combout\)))) # (!\vga1|xPixel\(2) & (((\Mux324~12_combout\ & \library1|Mux0~813_combout\)) # (!\Mux327~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~813_combout\,
	combout => \library1|Mux0~814_combout\);

-- Location: LCCOMB_X38_Y52_N4
\library1|Mux0~568\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~568_combout\ = (\Mux327~14_combout\ & (\vga1|xPixel\(2) & ((\Mux324~12_combout\)))) # (!\Mux327~14_combout\ & (\vga1|xPixel\(2) $ (((!\vga1|yPixel\(1) & \Mux324~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \vga1|yPixel\(1),
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~568_combout\);

-- Location: LCCOMB_X38_Y52_N6
\library1|Mux0~567\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~567_combout\ = (\Mux327~14_combout\ & ((\vga1|yPixel\(1)) # ((!\vga1|xPixel\(0)) # (!\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux324~12_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~567_combout\);

-- Location: LCCOMB_X38_Y52_N2
\library1|Mux0~569\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~569_combout\ = (\Mux325~11_combout\ & (\vga1|xPixel\(2) $ (((!\library1|Mux0~567_combout\))))) # (!\Mux325~11_combout\ & (((\library1|Mux0~568_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~568_combout\,
	datad => \library1|Mux0~567_combout\,
	combout => \library1|Mux0~569_combout\);

-- Location: LCCOMB_X38_Y52_N12
\library1|Mux0~570\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~570_combout\ = (\Mux326~14_combout\ & ((\library1|Mux0~814_combout\) # ((\Mux323~10_combout\)))) # (!\Mux326~14_combout\ & (((!\Mux323~10_combout\ & \library1|Mux0~569_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \library1|Mux0~814_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~569_combout\,
	combout => \library1|Mux0~570_combout\);

-- Location: LCCOMB_X38_Y52_N0
\library1|Mux0~572\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~572_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~570_combout\ & (\library1|Mux0~571_combout\)) # (!\library1|Mux0~570_combout\ & ((!\library1|Mux0~566_combout\))))) # (!\Mux323~10_combout\ & (((\library1|Mux0~570_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~571_combout\,
	datab => \library1|Mux0~566_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~570_combout\,
	combout => \library1|Mux0~572_combout\);

-- Location: LCCOMB_X43_Y56_N8
\library1|Mux0~603\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~603_combout\ = (\Mux325~11_combout\ & (((!\vga1|yPixel\(1) & !\Mux327~14_combout\)) # (!\Mux326~14_combout\))) # (!\Mux325~11_combout\ & (((\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~603_combout\);

-- Location: LCCOMB_X43_Y56_N4
\library1|Mux0~599\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~599_combout\ = (\Mux327~14_combout\ & (\vga1|xPixel\(2) $ (((\Mux326~14_combout\ & !\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~599_combout\);

-- Location: LCCOMB_X43_Y56_N10
\library1|Mux0~600\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~600_combout\ = (\Mux325~11_combout\) # ((\vga1|xPixel\(0) & (\vga1|yPixel\(1) & \vga1|yPixel\(0))) # (!\vga1|xPixel\(0) & ((\vga1|yPixel\(1)) # (\vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~600_combout\);

-- Location: LCCOMB_X43_Y56_N24
\library1|Mux0~601\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~601_combout\ = (\Mux326~14_combout\ & (((!\library1|Mux0~600_combout\) # (!\vga1|xPixel\(2))))) # (!\Mux326~14_combout\ & (\Mux325~11_combout\ $ ((\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~600_combout\,
	combout => \library1|Mux0~601_combout\);

-- Location: LCCOMB_X43_Y56_N18
\library1|Mux0~602\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~602_combout\ = (!\Mux323~10_combout\ & ((\library1|Mux0~599_combout\) # ((!\Mux327~14_combout\ & \library1|Mux0~601_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~599_combout\,
	datad => \library1|Mux0~601_combout\,
	combout => \library1|Mux0~602_combout\);

-- Location: LCCOMB_X43_Y56_N2
\library1|Mux0~604\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~604_combout\ = (\library1|Mux0~602_combout\) # ((\vga1|xPixel\(2) & (\Mux323~10_combout\ & !\library1|Mux0~603_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~603_combout\,
	datad => \library1|Mux0~602_combout\,
	combout => \library1|Mux0~604_combout\);

-- Location: LCCOMB_X41_Y56_N4
\library1|Mux0~613\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~613_combout\ = (\vga1|xPixel\(2) & ((\Mux323~10_combout\ & ((!\Mux326~14_combout\))) # (!\Mux323~10_combout\ & (!\vga1|yPixel\(1))))) # (!\vga1|xPixel\(2) & (((\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux326~14_combout\,
	datad => \vga1|xPixel\(2),
	combout => \library1|Mux0~613_combout\);

-- Location: LCCOMB_X41_Y56_N20
\library1|Mux0~611\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~611_combout\ = (\Mux326~14_combout\ & ((\vga1|xPixel\(2) & (\vga1|yPixel\(1))) # (!\vga1|xPixel\(2) & ((\Mux323~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~611_combout\);

-- Location: LCCOMB_X41_Y56_N30
\library1|Mux0~612\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~612_combout\ = (\Mux327~14_combout\ & (((\Mux325~11_combout\)))) # (!\Mux327~14_combout\ & (\library1|Mux0~611_combout\ & (\Mux323~10_combout\ $ (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~611_combout\,
	combout => \library1|Mux0~612_combout\);

-- Location: LCCOMB_X40_Y56_N8
\library1|Mux0~610\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~610_combout\ = (\Mux323~10_combout\ & (\vga1|xPixel\(2) & !\Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux323~10_combout\,
	datac => \vga1|xPixel\(2),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~610_combout\);

-- Location: LCCOMB_X41_Y56_N14
\library1|Mux0~614\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~614_combout\ = (\Mux327~14_combout\ & ((\library1|Mux0~612_combout\ & (!\library1|Mux0~613_combout\)) # (!\library1|Mux0~612_combout\ & ((\library1|Mux0~610_combout\))))) # (!\Mux327~14_combout\ & (((\library1|Mux0~612_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~613_combout\,
	datac => \library1|Mux0~612_combout\,
	datad => \library1|Mux0~610_combout\,
	combout => \library1|Mux0~614_combout\);

-- Location: LCCOMB_X41_Y56_N22
\library1|Mux0~605\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~605_combout\ = (\vga1|xPixel\(2) & (!\vga1|yPixel\(1) & ((!\Mux326~14_combout\) # (!\Mux323~10_combout\)))) # (!\vga1|xPixel\(2) & (\vga1|yPixel\(1) & (!\Mux323~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~605_combout\);

-- Location: LCCOMB_X41_Y56_N24
\library1|Mux0~606\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~606_combout\ = (\vga1|yPixel\(1) & (((!\Mux323~10_combout\ & \Mux326~14_combout\)) # (!\vga1|xPixel\(2)))) # (!\vga1|yPixel\(1) & (\Mux323~10_combout\ & ((!\Mux326~14_combout\) # (!\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~606_combout\);

-- Location: LCCOMB_X41_Y56_N26
\library1|Mux0~607\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~607_combout\ = (\Mux326~14_combout\ & (((\Mux327~14_combout\ & \library1|Mux0~605_combout\)) # (!\library1|Mux0~606_combout\))) # (!\Mux326~14_combout\ & (\Mux327~14_combout\ $ (\library1|Mux0~605_combout\ $ (\library1|Mux0~606_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~605_combout\,
	datad => \library1|Mux0~606_combout\,
	combout => \library1|Mux0~607_combout\);

-- Location: LCCOMB_X41_Y56_N16
\library1|Mux0~608\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~608_combout\ = (\Mux326~14_combout\ & (!\Mux327~14_combout\ & (\library1|Mux0~605_combout\ & !\library1|Mux0~606_combout\))) # (!\Mux326~14_combout\ & ((\library1|Mux0~605_combout\ & (\Mux327~14_combout\)) # (!\library1|Mux0~605_combout\ & 
-- ((\library1|Mux0~606_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~605_combout\,
	datad => \library1|Mux0~606_combout\,
	combout => \library1|Mux0~608_combout\);

-- Location: LCCOMB_X41_Y56_N18
\library1|Mux0~609\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~609_combout\ = (\Mux325~11_combout\ & ((\library1|Mux0~608_combout\))) # (!\Mux325~11_combout\ & (\library1|Mux0~607_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~607_combout\,
	datad => \library1|Mux0~608_combout\,
	combout => \library1|Mux0~609_combout\);

-- Location: LCCOMB_X41_Y56_N8
\library1|Mux0~615\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~615_combout\ = (\Mux322~12_combout\ & (\Mux324~12_combout\)) # (!\Mux322~12_combout\ & ((\Mux324~12_combout\ & ((\library1|Mux0~609_combout\))) # (!\Mux324~12_combout\ & (\library1|Mux0~614_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~614_combout\,
	datad => \library1|Mux0~609_combout\,
	combout => \library1|Mux0~615_combout\);

-- Location: LCCOMB_X45_Y56_N22
\library1|Mux0~622\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~622_combout\ = (\vga1|xPixel\(2) & (((!\vga1|yPixel\(1) & \Mux323~10_combout\)) # (!\Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux323~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~622_combout\);

-- Location: LCCOMB_X45_Y56_N12
\library1|Mux0~621\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~621_combout\ = (\vga1|xPixel\(2) & (\vga1|yPixel\(1) & ((\Mux323~10_combout\) # (!\Mux326~14_combout\)))) # (!\vga1|xPixel\(2) & (\Mux326~14_combout\ $ (((\vga1|yPixel\(1) & \Mux323~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux323~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~621_combout\);

-- Location: LCCOMB_X45_Y56_N20
\library1|Mux0~623\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~623_combout\ = (\library1|Mux0~622_combout\ & (!\library1|Mux0~621_combout\ & (\Mux327~14_combout\ $ (!\Mux323~10_combout\)))) # (!\library1|Mux0~622_combout\ & ((\library1|Mux0~621_combout\) # ((!\Mux327~14_combout\ & 
-- \Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~622_combout\,
	datad => \library1|Mux0~621_combout\,
	combout => \library1|Mux0~623_combout\);

-- Location: LCCOMB_X45_Y56_N14
\library1|Mux0~624\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~624_combout\ = (\Mux327~14_combout\ & (\library1|Mux0~622_combout\ & !\Mux323~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~622_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~624_combout\);

-- Location: LCCOMB_X39_Y52_N6
\library1|Mux0~618\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~618_combout\ = (\Mux326~14_combout\ & (((\Mux323~10_combout\)))) # (!\Mux326~14_combout\ & (\vga1|yPixel\(0) & (\vga1|yPixel\(1) & !\Mux323~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \Mux326~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~618_combout\);

-- Location: LCCOMB_X39_Y52_N24
\library1|Mux0~619\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~619_combout\ = (\Mux327~14_combout\ & (\vga1|xPixel\(2) & ((!\library1|Mux0~618_combout\) # (!\Mux326~14_combout\)))) # (!\Mux327~14_combout\ & (\Mux326~14_combout\ $ (((\library1|Mux0~618_combout\) # (!\vga1|xPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux326~14_combout\,
	datac => \vga1|xPixel\(2),
	datad => \library1|Mux0~618_combout\,
	combout => \library1|Mux0~619_combout\);

-- Location: LCCOMB_X41_Y54_N10
\library1|Mux0~616\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~616_combout\ = \Mux327~14_combout\ $ (((\vga1|yPixel\(1) & \Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~616_combout\);

-- Location: LCCOMB_X41_Y56_N2
\library1|Mux0~617\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~617_combout\ = (\Mux323~10_combout\ & (!\Mux326~14_combout\ & (\vga1|xPixel\(2) $ (!\library1|Mux0~616_combout\)))) # (!\Mux323~10_combout\ & (!\library1|Mux0~616_combout\ & (\vga1|xPixel\(2) $ (!\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~616_combout\,
	combout => \library1|Mux0~617_combout\);

-- Location: LCCOMB_X41_Y56_N28
\library1|Mux0~620\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~620_combout\ = (\Mux325~11_combout\ & ((\vga1|xPixel\(0) & (\library1|Mux0~619_combout\)) # (!\vga1|xPixel\(0) & ((\library1|Mux0~617_combout\))))) # (!\Mux325~11_combout\ & (\vga1|xPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(0),
	datac => \library1|Mux0~619_combout\,
	datad => \library1|Mux0~617_combout\,
	combout => \library1|Mux0~620_combout\);

-- Location: LCCOMB_X41_Y56_N6
\library1|Mux0~625\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~625_combout\ = (\Mux325~11_combout\ & (((\library1|Mux0~620_combout\)))) # (!\Mux325~11_combout\ & ((\library1|Mux0~623_combout\ & (!\library1|Mux0~624_combout\)) # (!\library1|Mux0~623_combout\ & (\library1|Mux0~624_combout\ & 
-- \library1|Mux0~620_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~623_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~624_combout\,
	datad => \library1|Mux0~620_combout\,
	combout => \library1|Mux0~625_combout\);

-- Location: LCCOMB_X41_Y56_N0
\library1|Mux0~626\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~626_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~615_combout\ & ((\library1|Mux0~625_combout\))) # (!\library1|Mux0~615_combout\ & (\library1|Mux0~604_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~615_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~604_combout\,
	datac => \library1|Mux0~615_combout\,
	datad => \library1|Mux0~625_combout\,
	combout => \library1|Mux0~626_combout\);

-- Location: LCCOMB_X40_Y56_N24
\library1|Mux0~573\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~573_combout\ = (\Mux323~10_combout\ & (((\Mux326~14_combout\)))) # (!\Mux323~10_combout\ & (\Mux327~14_combout\ & ((\vga1|yPixel\(1)) # (!\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~573_combout\);

-- Location: LCCOMB_X40_Y56_N22
\library1|Mux0~574\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~574_combout\ = (\Mux327~14_combout\ & (((!\Mux326~14_combout\) # (!\vga1|yPixel\(1))) # (!\Mux323~10_combout\))) # (!\Mux327~14_combout\ & ((\vga1|yPixel\(1)) # (\Mux323~10_combout\ $ (\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~574_combout\);

-- Location: LCCOMB_X42_Y56_N4
\library1|Mux0~575\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~575_combout\ = (\Mux327~14_combout\ & (!\vga1|yPixel\(1) & (\Mux323~10_combout\ & !\Mux326~14_combout\))) # (!\Mux327~14_combout\ & (\vga1|yPixel\(1) & (!\Mux323~10_combout\ & \Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~575_combout\);

-- Location: LCCOMB_X42_Y56_N14
\library1|Mux0~576\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~576_combout\ = (\Mux325~11_combout\ & ((\library1|Mux0~574_combout\) # ((\Mux322~12_combout\)))) # (!\Mux325~11_combout\ & (((\library1|Mux0~575_combout\ & !\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~574_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~575_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~576_combout\);

-- Location: LCCOMB_X43_Y56_N16
\library1|Mux0~577\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~577_combout\ = (\vga1|yPixel\(1) & (\Mux326~14_combout\ & (!\Mux327~14_combout\ & \Mux323~10_combout\))) # (!\vga1|yPixel\(1) & (((\Mux327~14_combout\ & !\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~577_combout\);

-- Location: LCCOMB_X42_Y56_N8
\library1|Mux0~578\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~578_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~576_combout\ & ((\library1|Mux0~577_combout\))) # (!\library1|Mux0~576_combout\ & (!\library1|Mux0~573_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~576_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~573_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~576_combout\,
	datad => \library1|Mux0~577_combout\,
	combout => \library1|Mux0~578_combout\);

-- Location: LCCOMB_X41_Y52_N20
\library1|Mux0~596\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~596_combout\ = (!\Mux327~14_combout\ & ((\Mux322~12_combout\ & (\Mux326~14_combout\)) # (!\Mux322~12_combout\ & ((\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~596_combout\);

-- Location: LCCOMB_X43_Y56_N0
\library1|Mux0~592\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~592_combout\ = (\Mux327~14_combout\ & ((\Mux326~14_combout\ $ (\Mux325~11_combout\)))) # (!\Mux327~14_combout\ & (\Mux326~14_combout\ & ((\Mux325~11_combout\) # (!\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~592_combout\);

-- Location: LCCOMB_X41_Y56_N10
\library1|Mux0~811\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~811_combout\ = (\Mux327~14_combout\ & (((\Mux322~12_combout\)))) # (!\Mux327~14_combout\ & (((\vga1|yPixel\(0) & \Mux325~11_combout\)) # (!\Mux322~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \Mux327~14_combout\,
	datac => \Mux322~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~811_combout\);

-- Location: LCCOMB_X42_Y56_N22
\library1|Mux0~812\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~812_combout\ = (\Mux326~14_combout\ & (\library1|Mux0~811_combout\ $ (((!\Mux325~11_combout\ & \Mux327~14_combout\))))) # (!\Mux326~14_combout\ & ((\Mux325~11_combout\ & (\Mux327~14_combout\)) # (!\Mux325~11_combout\ & 
-- ((\library1|Mux0~811_combout\) # (!\Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~811_combout\,
	combout => \library1|Mux0~812_combout\);

-- Location: LCCOMB_X43_Y56_N22
\library1|Mux0~593\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~593_combout\ = (\Mux327~14_combout\ & ((\vga1|xPixel\(0)) # (!\Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~593_combout\);

-- Location: LCCOMB_X42_Y56_N2
\library1|Mux0~594\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~594_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~593_combout\ & (!\Mux326~14_combout\)) # (!\library1|Mux0~593_combout\ & ((\Mux325~11_combout\))))) # (!\Mux322~12_combout\ & (!\Mux326~14_combout\ & (\Mux325~11_combout\ $ 
-- (\library1|Mux0~593_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~593_combout\,
	combout => \library1|Mux0~594_combout\);

-- Location: LCCOMB_X42_Y56_N24
\library1|Mux0~595\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~595_combout\ = (\Mux323~10_combout\ & (\vga1|yPixel\(1))) # (!\Mux323~10_combout\ & ((\vga1|yPixel\(1) & ((\library1|Mux0~594_combout\))) # (!\vga1|yPixel\(1) & (\library1|Mux0~812_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~812_combout\,
	datad => \library1|Mux0~594_combout\,
	combout => \library1|Mux0~595_combout\);

-- Location: LCCOMB_X42_Y56_N26
\library1|Mux0~597\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~597_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~595_combout\ & (\library1|Mux0~596_combout\)) # (!\library1|Mux0~595_combout\ & ((\library1|Mux0~592_combout\))))) # (!\Mux323~10_combout\ & (((\library1|Mux0~595_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \library1|Mux0~596_combout\,
	datac => \library1|Mux0~592_combout\,
	datad => \library1|Mux0~595_combout\,
	combout => \library1|Mux0~597_combout\);

-- Location: LCCOMB_X41_Y56_N12
\library1|Mux0~589\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~589_combout\ = (\Mux323~10_combout\ & (((!\vga1|yPixel\(1) & !\Mux327~14_combout\)) # (!\Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux326~14_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~589_combout\);

-- Location: LCCOMB_X43_Y56_N12
\library1|Mux0~585\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~585_combout\ = (\Mux327~14_combout\ & (((\vga1|yPixel\(1))))) # (!\Mux327~14_combout\ & (\vga1|xPixel\(0) & ((\vga1|yPixel\(1)) # (\vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(0),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~585_combout\);

-- Location: LCCOMB_X43_Y56_N14
\library1|Mux0~586\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~586_combout\ = (\Mux326~14_combout\ & (!\Mux323~10_combout\ & ((\Mux327~14_combout\) # (!\library1|Mux0~585_combout\)))) # (!\Mux326~14_combout\ & (((\Mux327~14_combout\ & !\library1|Mux0~585_combout\)) # (!\Mux323~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~585_combout\,
	combout => \library1|Mux0~586_combout\);

-- Location: LCCOMB_X42_Y56_N6
\library1|Mux0~587\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~587_combout\ = (\Mux326~14_combout\ & ((\Mux325~11_combout\ & ((\Mux323~10_combout\))) # (!\Mux325~11_combout\ & (!\Mux327~14_combout\ & !\Mux323~10_combout\)))) # (!\Mux326~14_combout\ & (\Mux327~14_combout\ & ((\Mux325~11_combout\) # 
-- (\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~587_combout\);

-- Location: LCCOMB_X42_Y56_N16
\library1|Mux0~588\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~588_combout\ = (\Mux322~12_combout\ & (((\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & (\library1|Mux0~587_combout\ & ((\vga1|yPixel\(1)) # (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux322~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~587_combout\,
	combout => \library1|Mux0~588_combout\);

-- Location: LCCOMB_X42_Y56_N30
\library1|Mux0~590\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~590_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~588_combout\ & (!\library1|Mux0~589_combout\)) # (!\library1|Mux0~588_combout\ & ((\library1|Mux0~586_combout\))))) # (!\Mux322~12_combout\ & (((\library1|Mux0~588_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~589_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~586_combout\,
	datad => \library1|Mux0~588_combout\,
	combout => \library1|Mux0~590_combout\);

-- Location: LCCOMB_X43_Y56_N30
\library1|Mux0~579\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~579_combout\ = ((\vga1|xPixel\(0) & \Mux327~14_combout\)) # (!\Mux326~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~579_combout\);

-- Location: LCCOMB_X43_Y52_N18
\library1|Mux0~582\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~582_combout\ = (\vga1|xPixel\(0) & ((\vga1|yPixel\(1) $ (\Mux327~14_combout\)) # (!\Mux326~14_combout\))) # (!\vga1|xPixel\(0) & (((\Mux326~14_combout\) # (\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux326~14_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~582_combout\);

-- Location: LCCOMB_X42_Y56_N10
\library1|Mux0~580\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~580_combout\ = (\Mux326~14_combout\ & ((\Mux327~14_combout\) # (!\vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~580_combout\);

-- Location: LCCOMB_X42_Y56_N28
\library1|Mux0~581\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~581_combout\ = (\Mux322~12_combout\ & (((\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & ((\Mux327~14_combout\ & ((!\library1|Mux0~580_combout\) # (!\Mux325~11_combout\))) # (!\Mux327~14_combout\ & ((\library1|Mux0~580_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~580_combout\,
	combout => \library1|Mux0~581_combout\);

-- Location: LCCOMB_X42_Y56_N18
\library1|Mux0~583\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~583_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~581_combout\ & ((!\library1|Mux0~582_combout\))) # (!\library1|Mux0~581_combout\ & (!\library1|Mux0~579_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~579_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~582_combout\,
	datad => \library1|Mux0~581_combout\,
	combout => \library1|Mux0~583_combout\);

-- Location: LCCOMB_X42_Y56_N12
\library1|Mux0~584\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~584_combout\ = (\Mux323~10_combout\ & (((!\Mux325~11_combout\)) # (!\Mux326~14_combout\))) # (!\Mux323~10_combout\ & (((\library1|Mux0~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~583_combout\,
	combout => \library1|Mux0~584_combout\);

-- Location: LCCOMB_X42_Y56_N20
\library1|Mux0~591\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~591_combout\ = (\vga1|xPixel\(2) & (\Mux324~12_combout\)) # (!\vga1|xPixel\(2) & ((\Mux324~12_combout\ & ((\library1|Mux0~584_combout\))) # (!\Mux324~12_combout\ & (\library1|Mux0~590_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~590_combout\,
	datad => \library1|Mux0~584_combout\,
	combout => \library1|Mux0~591_combout\);

-- Location: LCCOMB_X42_Y56_N0
\library1|Mux0~598\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~598_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~591_combout\ & ((\library1|Mux0~597_combout\))) # (!\library1|Mux0~591_combout\ & (\library1|Mux0~578_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~591_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~578_combout\,
	datac => \library1|Mux0~597_combout\,
	datad => \library1|Mux0~591_combout\,
	combout => \library1|Mux0~598_combout\);

-- Location: LCCOMB_X42_Y57_N24
\library1|Mux0~627\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~627_combout\ = (\Mux321~10_combout\ & (\vga1|xPixel\(1))) # (!\Mux321~10_combout\ & ((\vga1|xPixel\(1) & ((\library1|Mux0~598_combout\))) # (!\vga1|xPixel\(1) & (\library1|Mux0~626_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~626_combout\,
	datad => \library1|Mux0~598_combout\,
	combout => \library1|Mux0~627_combout\);

-- Location: LCCOMB_X42_Y57_N16
\library1|Mux0~809\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~809_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~627_combout\ & (\library1|Mux0~640_combout\)) # (!\library1|Mux0~627_combout\ & ((\library1|Mux0~572_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~627_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~640_combout\,
	datac => \library1|Mux0~572_combout\,
	datad => \library1|Mux0~627_combout\,
	combout => \library1|Mux0~809_combout\);

-- Location: LCCOMB_X42_Y57_N30
\library1|Mux0~810\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~810_combout\ = (\Mux321~10_combout\ & ((\Mux322~12_combout\ & (\library1|Mux0~816_combout\)) # (!\Mux322~12_combout\ & ((\library1|Mux0~809_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~809_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~816_combout\,
	datac => \Mux322~12_combout\,
	datad => \library1|Mux0~809_combout\,
	combout => \library1|Mux0~810_combout\);

-- Location: LCCOMB_X41_Y58_N10
\library1|Mux0~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~554_combout\ = (\vga1|xPixel\(2) & (!\Mux325~11_combout\ & ((\vga1|xPixel\(1)) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(2),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~554_combout\);

-- Location: LCCOMB_X41_Y58_N8
\library1|Mux0~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~555_combout\ = (\Mux326~14_combout\ & (((\library1|Mux0~554_combout\)))) # (!\Mux326~14_combout\ & (\vga1|xPixel\(2) & (\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux325~11_combout\,
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~554_combout\,
	combout => \library1|Mux0~555_combout\);

-- Location: LCCOMB_X41_Y58_N22
\library1|Mux0~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~556_combout\ = (\library1|Mux0~78_combout\ & (\Mux323~10_combout\ & (\library1|Mux0~555_combout\ & \library1|Mux0~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~78_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~555_combout\,
	datad => \library1|Mux0~136_combout\,
	combout => \library1|Mux0~556_combout\);

-- Location: LCCOMB_X41_Y58_N18
\library1|Mux0~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~558_combout\ = (\Mux325~11_combout\ & (\Mux327~14_combout\ & ((\Mux322~12_combout\) # (\Mux323~10_combout\)))) # (!\Mux325~11_combout\ & (((\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~558_combout\);

-- Location: LCCOMB_X41_Y58_N20
\library1|Mux0~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~557_combout\ = (\Mux322~12_combout\ & (!\Mux325~11_combout\ & ((!\Mux323~10_combout\) # (!\Mux327~14_combout\)))) # (!\Mux322~12_combout\ & (\Mux325~11_combout\ & (\Mux327~14_combout\ & \Mux323~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~557_combout\);

-- Location: LCCOMB_X41_Y58_N4
\library1|Mux0~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~559_combout\ = (\vga1|xPixel\(2) & (\library1|Mux0~557_combout\ $ (((\library1|Mux0~558_combout\ & !\Mux327~14_combout\))))) # (!\vga1|xPixel\(2) & (!\library1|Mux0~558_combout\ & (!\Mux327~14_combout\ & \library1|Mux0~557_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~558_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~557_combout\,
	combout => \library1|Mux0~559_combout\);

-- Location: LCCOMB_X41_Y58_N2
\library1|Mux0~560\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~560_combout\ = (\Mux327~14_combout\ & (\library1|Mux0~557_combout\ $ (((\vga1|xPixel\(2) & \library1|Mux0~558_combout\))))) # (!\Mux327~14_combout\ & (((\library1|Mux0~558_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~558_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~557_combout\,
	combout => \library1|Mux0~560_combout\);

-- Location: LCCOMB_X41_Y58_N0
\library1|Mux0~561\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~561_combout\ = (\Mux324~12_combout\ & (\library1|Mux0~559_combout\)) # (!\Mux324~12_combout\ & ((\library1|Mux0~560_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~559_combout\,
	datad => \library1|Mux0~560_combout\,
	combout => \library1|Mux0~561_combout\);

-- Location: LCCOMB_X41_Y58_N30
\library1|Mux0~562\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~562_combout\ = (\library1|Mux0~556_combout\) # ((\Mux326~14_combout\ & (\Mux321~10_combout\ & \library1|Mux0~561_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~556_combout\,
	datad => \library1|Mux0~561_combout\,
	combout => \library1|Mux0~562_combout\);

-- Location: LCCOMB_X40_Y57_N24
\library1|Mux0~817\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~817_combout\ = (\vga1|xPixel\(2) & ((\vga1|xPixel\(1) & ((\Mux327~14_combout\))) # (!\vga1|xPixel\(1) & ((!\Mux327~14_combout\) # (!\vga1|yPixel\(1)))))) # (!\vga1|xPixel\(2) & (!\Mux327~14_combout\ & ((\vga1|xPixel\(1)) # 
-- (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(1),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~817_combout\);

-- Location: LCCOMB_X40_Y57_N2
\library1|Mux0~818\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~818_combout\ = (\Mux324~12_combout\ & (\vga1|xPixel\(2) & (\vga1|xPixel\(1) $ (!\library1|Mux0~817_combout\)))) # (!\Mux324~12_combout\ & (((\library1|Mux0~817_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux324~12_combout\,
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~817_combout\,
	combout => \library1|Mux0~818_combout\);

-- Location: LCCOMB_X41_Y57_N14
\library1|Mux0~487\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~487_combout\ = (\library1|Mux0~818_combout\ & (!\Mux325~11_combout\ & (!\Mux322~12_combout\ & !\Mux323~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~818_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux322~12_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~487_combout\);

-- Location: LCCOMB_X38_Y50_N12
\library1|Mux0~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~551_combout\ = (\Mux327~14_combout\ & ((\vga1|xPixel\(2) & (\Mux322~12_combout\ $ (\Mux324~12_combout\))) # (!\vga1|xPixel\(2) & (!\Mux322~12_combout\ & !\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux322~12_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~551_combout\);

-- Location: LCCOMB_X38_Y50_N2
\library1|Mux0~548\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~548_combout\ = (\Mux327~14_combout\ & (((\Mux324~12_combout\)) # (!\vga1|xPixel\(2)))) # (!\Mux327~14_combout\ & (((\Mux322~12_combout\ & \Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux322~12_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~548_combout\);

-- Location: LCCOMB_X38_Y50_N4
\library1|Mux0~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~549_combout\ = (\vga1|xPixel\(2) & ((\Mux324~12_combout\ & ((!\Mux325~11_combout\))) # (!\Mux324~12_combout\ & (\Mux327~14_combout\)))) # (!\vga1|xPixel\(2) & (!\Mux325~11_combout\ & (\Mux327~14_combout\ $ (\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~549_combout\);

-- Location: LCCOMB_X38_Y50_N18
\library1|Mux0~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~550_combout\ = (\Mux323~10_combout\ & (\Mux325~11_combout\)) # (!\Mux323~10_combout\ & (((\Mux322~12_combout\ & \library1|Mux0~549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~549_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~550_combout\);

-- Location: LCCOMB_X38_Y50_N22
\library1|Mux0~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~552_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~550_combout\ & (\library1|Mux0~551_combout\)) # (!\library1|Mux0~550_combout\ & ((!\library1|Mux0~548_combout\))))) # (!\Mux323~10_combout\ & (((\library1|Mux0~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~551_combout\,
	datab => \library1|Mux0~548_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~550_combout\,
	combout => \library1|Mux0~552_combout\);

-- Location: LCCOMB_X40_Y57_N4
\library1|Mux0~518\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~518_combout\ = (\Mux325~11_combout\ & (((!\Mux324~11_combout\ & !\Mux322~13_combout\)) # (!\Mux327~14_combout\))) # (!\Mux325~11_combout\ & (((\Mux324~11_combout\) # (\Mux322~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~11_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~518_combout\);

-- Location: LCCOMB_X40_Y57_N28
\library1|Mux0~520\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~520_combout\ = (\Mux324~12_combout\ & (\Mux327~14_combout\)) # (!\Mux324~12_combout\ & (((\vga1|xPixel\(1) & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~520_combout\);

-- Location: LCCOMB_X40_Y57_N14
\library1|Mux0~519\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~519_combout\ = (\Mux327~14_combout\ & (\Mux325~11_combout\ & ((\Mux324~11_combout\) # (\Mux322~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~11_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~519_combout\);

-- Location: LCCOMB_X40_Y57_N30
\library1|Mux0~521\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~521_combout\ = (\vga1|xPixel\(2) & (((\Mux322~12_combout\)))) # (!\vga1|xPixel\(2) & ((\Mux322~12_combout\ & ((\library1|Mux0~519_combout\))) # (!\Mux322~12_combout\ & (\library1|Mux0~520_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~520_combout\,
	datac => \library1|Mux0~519_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~521_combout\);

-- Location: LCCOMB_X40_Y57_N16
\library1|Mux0~522\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~522_combout\ = (\Mux327~14_combout\ & ((\vga1|xPixel\(1) & (\Mux325~11_combout\ $ (!\Mux324~12_combout\))) # (!\vga1|xPixel\(1) & ((!\Mux324~12_combout\) # (!\Mux325~11_combout\))))) # (!\Mux327~14_combout\ & (((\Mux325~11_combout\) # 
-- (\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~522_combout\);

-- Location: LCCOMB_X40_Y57_N18
\library1|Mux0~523\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~523_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~521_combout\ & ((!\library1|Mux0~522_combout\))) # (!\library1|Mux0~521_combout\ & (\library1|Mux0~518_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~521_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~518_combout\,
	datac => \library1|Mux0~521_combout\,
	datad => \library1|Mux0~522_combout\,
	combout => \library1|Mux0~523_combout\);

-- Location: LCCOMB_X41_Y58_N26
\library1|Mux0~542\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~542_combout\ = (\Mux322~12_combout\ & (((!\Mux327~14_combout\ & \Mux324~12_combout\)) # (!\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux322~12_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~542_combout\);

-- Location: LCCOMB_X41_Y58_N28
\library1|Mux0~541\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~541_combout\ = (\Mux322~12_combout\ & (\Mux327~14_combout\ & (!\Mux325~11_combout\ & !\Mux324~12_combout\))) # (!\Mux322~12_combout\ & (\Mux325~11_combout\ & ((\Mux327~14_combout\) # (!\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~541_combout\);

-- Location: LCCOMB_X41_Y58_N14
\library1|Mux0~544\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~544_combout\ = (\library1|Mux0~542_combout\ & (\library1|Mux0~541_combout\ & (\vga1|xPixel\(1) $ (!\Mux324~12_combout\)))) # (!\library1|Mux0~542_combout\ & ((\library1|Mux0~541_combout\) # ((\vga1|xPixel\(1) & \Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~542_combout\,
	datad => \library1|Mux0~541_combout\,
	combout => \library1|Mux0~544_combout\);

-- Location: LCCOMB_X41_Y58_N12
\library1|Mux0~543\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~543_combout\ = (\Mux324~12_combout\ & (!\vga1|xPixel\(1) & (\library1|Mux0~542_combout\ $ (!\library1|Mux0~541_combout\)))) # (!\Mux324~12_combout\ & (((\library1|Mux0~542_combout\ & !\library1|Mux0~541_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~542_combout\,
	datad => \library1|Mux0~541_combout\,
	combout => \library1|Mux0~543_combout\);

-- Location: LCCOMB_X41_Y58_N24
\library1|Mux0~545\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~545_combout\ = (\vga1|xPixel\(2) & (!\library1|Mux0~544_combout\ & \library1|Mux0~543_combout\)) # (!\vga1|xPixel\(2) & (\library1|Mux0~544_combout\ & !\library1|Mux0~543_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~544_combout\,
	datad => \library1|Mux0~543_combout\,
	combout => \library1|Mux0~545_combout\);

-- Location: LCCOMB_X40_Y54_N8
\library1|Mux0~537\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~537_combout\ = (\vga1|xPixel\(2) & ((\Mux322~13_combout\) # ((\Mux324~11_combout\)))) # (!\vga1|xPixel\(2) & (\library1|Mux0~131_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux322~13_combout\,
	datac => \Mux324~11_combout\,
	datad => \library1|Mux0~131_combout\,
	combout => \library1|Mux0~537_combout\);

-- Location: LCCOMB_X40_Y54_N0
\library1|Mux0~535\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~535_combout\ = \Mux325~11_combout\ $ (((\Mux322~13_combout\) # (\Mux324~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~13_combout\,
	datac => \Mux324~11_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~535_combout\);

-- Location: LCCOMB_X40_Y54_N30
\library1|Mux0~538\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~538_combout\ = (!\library1|Mux0~535_combout\ & ((\library1|Mux0~537_combout\) # ((!\Mux327~14_combout\ & \library1|Mux0~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~185_combout\,
	datac => \library1|Mux0~537_combout\,
	datad => \library1|Mux0~535_combout\,
	combout => \library1|Mux0~538_combout\);

-- Location: LCCOMB_X40_Y54_N6
\library1|Mux0~536\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~536_combout\ = (\Mux327~14_combout\) # ((\vga1|xPixel\(2)) # ((\vga1|xPixel\(1)) # (!\library1|Mux0~535_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~535_combout\,
	combout => \library1|Mux0~536_combout\);

-- Location: LCCOMB_X40_Y57_N22
\library1|Mux0~533\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~533_combout\ = (\Mux325~11_combout\ & ((\vga1|xPixel\(2)) # ((\vga1|xPixel\(1)) # (!\Mux327~14_combout\)))) # (!\Mux325~11_combout\ & (!\Mux327~14_combout\ & ((\vga1|xPixel\(2)) # (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~533_combout\);

-- Location: LCCOMB_X40_Y57_N0
\library1|Mux0~534\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~534_combout\ = (\library1|Mux0~533_combout\ & (!\Mux322~12_combout\ & ((\Mux327~14_combout\) # (\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~533_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~534_combout\);

-- Location: LCCOMB_X40_Y57_N26
\library1|Mux0~539\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~539_combout\ = (\library1|Mux0~534_combout\) # ((!\library1|Mux0~538_combout\ & (\Mux322~12_combout\ & \library1|Mux0~536_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~538_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~536_combout\,
	datad => \library1|Mux0~534_combout\,
	combout => \library1|Mux0~539_combout\);

-- Location: LCCOMB_X40_Y54_N10
\library1|Mux0~524\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~524_combout\ = (!\Mux325~11_combout\ & (\vga1|xPixel\(1) & \library1|Mux0~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~11_combout\,
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~222_combout\,
	combout => \library1|Mux0~524_combout\);

-- Location: LCCOMB_X40_Y53_N18
\library1|Mux0~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~348_combout\ = (!\vga1|xPixel\(1) & (!\Mux324~11_combout\ & !\Mux322~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \Mux324~11_combout\,
	datad => \Mux322~13_combout\,
	combout => \library1|Mux0~348_combout\);

-- Location: LCCOMB_X40_Y53_N4
\library1|Mux0~530\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~530_combout\ = (\vga1|xPixel\(1) & (((!\Mux324~12_combout\)))) # (!\vga1|xPixel\(1) & (\vga1|yPixel\(0) & (!\vga1|xPixel\(0) & \Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(0),
	datac => \vga1|xPixel\(0),
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~530_combout\);

-- Location: LCCOMB_X40_Y53_N6
\library1|Mux0~531\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~531_combout\ = (\Mux327~14_combout\ & ((\Mux325~11_combout\ & (!\library1|Mux0~348_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~530_combout\))))) # (!\Mux327~14_combout\ & (((\Mux325~11_combout\)) # (!\library1|Mux0~348_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~348_combout\,
	datac => \library1|Mux0~530_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~531_combout\);

-- Location: LCCOMB_X40_Y57_N8
\library1|Mux0~528\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~528_combout\ = (\Mux327~14_combout\ & (((\Mux325~11_combout\)))) # (!\Mux327~14_combout\ & ((\Mux322~13_combout\) # ((\Mux324~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~528_combout\);

-- Location: LCCOMB_X40_Y53_N24
\library1|Mux0~526\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~526_combout\ = (\vga1|xPixel\(0) & ((\Mux325~11_combout\) # ((\Mux327~14_combout\ & \vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(0),
	datac => \vga1|xPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~526_combout\);

-- Location: LCCOMB_X40_Y53_N22
\library1|Mux0~527\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~527_combout\ = (\library1|Mux0~525_combout\) # ((\vga1|xPixel\(1) & ((!\library1|Mux0~526_combout\) # (!\Mux324~12_combout\))) # (!\vga1|xPixel\(1) & (\Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~525_combout\,
	datad => \library1|Mux0~526_combout\,
	combout => \library1|Mux0~527_combout\);

-- Location: LCCOMB_X40_Y57_N6
\library1|Mux0~529\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~529_combout\ = (\Mux322~12_combout\ & ((\vga1|xPixel\(2)) # ((\library1|Mux0~527_combout\)))) # (!\Mux322~12_combout\ & (!\vga1|xPixel\(2) & (\library1|Mux0~528_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~528_combout\,
	datad => \library1|Mux0~527_combout\,
	combout => \library1|Mux0~529_combout\);

-- Location: LCCOMB_X40_Y57_N12
\library1|Mux0~532\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~532_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~529_combout\ & ((!\library1|Mux0~531_combout\))) # (!\library1|Mux0~529_combout\ & (\library1|Mux0~524_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~529_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~524_combout\,
	datac => \library1|Mux0~531_combout\,
	datad => \library1|Mux0~529_combout\,
	combout => \library1|Mux0~532_combout\);

-- Location: LCCOMB_X40_Y57_N20
\library1|Mux0~540\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~540_combout\ = (\Mux323~10_combout\ & (\vga1|yPixel\(1))) # (!\Mux323~10_combout\ & ((\vga1|yPixel\(1) & ((\library1|Mux0~532_combout\))) # (!\vga1|yPixel\(1) & (\library1|Mux0~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~539_combout\,
	datad => \library1|Mux0~532_combout\,
	combout => \library1|Mux0~540_combout\);

-- Location: LCCOMB_X40_Y57_N10
\library1|Mux0~546\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~546_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~540_combout\ & ((\library1|Mux0~545_combout\))) # (!\library1|Mux0~540_combout\ & (\library1|Mux0~523_combout\)))) # (!\Mux323~10_combout\ & (((\library1|Mux0~540_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \library1|Mux0~523_combout\,
	datac => \library1|Mux0~545_combout\,
	datad => \library1|Mux0~540_combout\,
	combout => \library1|Mux0~546_combout\);

-- Location: LCCOMB_X40_Y54_N4
\library1|Mux0~492\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~492_combout\ = (\Mux324~12_combout\ & (((\vga1|xPixel\(1) & !\Mux322~12_combout\)) # (!\Mux325~11_combout\))) # (!\Mux324~12_combout\ & ((\Mux322~12_combout\ & (!\vga1|xPixel\(1))) # (!\Mux322~12_combout\ & ((\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux322~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~492_combout\);

-- Location: LCCOMB_X43_Y54_N16
\library1|Mux0~489\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~489_combout\ = (\Mux322~12_combout\ & (!\Mux324~12_combout\ & ((\vga1|xPixel\(1)) # (\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & ((\Mux324~12_combout\ $ (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~489_combout\);

-- Location: LCCOMB_X45_Y54_N12
\library1|Mux0~490\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~490_combout\ = (!\Mux322~13_combout\ & (\Mux324~11_combout\ & (!\Mux322~14_combout\ & !\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \Mux322~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~490_combout\);

-- Location: LCCOMB_X43_Y54_N26
\library1|Mux0~491\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~491_combout\ = (\vga1|xPixel\(2) & (((\Mux327~14_combout\)))) # (!\vga1|xPixel\(2) & ((\Mux327~14_combout\ & (\library1|Mux0~489_combout\)) # (!\Mux327~14_combout\ & ((\library1|Mux0~490_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~489_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~490_combout\,
	combout => \library1|Mux0~491_combout\);

-- Location: LCCOMB_X43_Y51_N6
\library1|Mux0~488\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~488_combout\ = (\Mux322~12_combout\ & ((\Mux324~12_combout\ & (\vga1|xPixel\(1) & \Mux325~11_combout\)) # (!\Mux324~12_combout\ & ((!\Mux325~11_combout\))))) # (!\Mux322~12_combout\ & ((\Mux324~12_combout\) # ((\vga1|xPixel\(1) & 
-- \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~12_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~488_combout\);

-- Location: LCCOMB_X43_Y54_N20
\library1|Mux0~493\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~493_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~491_combout\ & (\library1|Mux0~492_combout\)) # (!\library1|Mux0~491_combout\ & ((\library1|Mux0~488_combout\))))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~491_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~492_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~491_combout\,
	datad => \library1|Mux0~488_combout\,
	combout => \library1|Mux0~493_combout\);

-- Location: LCCOMB_X42_Y54_N6
\library1|Mux0~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~515_combout\ = (\Mux324~12_combout\ & ((\Mux325~11_combout\) # (\vga1|xPixel\(1) $ (!\vga1|xPixel\(2))))) # (!\Mux324~12_combout\ & (\vga1|xPixel\(2) $ (((!\vga1|xPixel\(1) & \Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~515_combout\);

-- Location: LCCOMB_X46_Y54_N24
\library1|Mux0~511\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~511_combout\ = (\library1|Mux0~185_combout\ & (\Mux325~11_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~185_combout\,
	datab => \Mux322~13_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux324~11_combout\,
	combout => \library1|Mux0~511_combout\);

-- Location: LCCOMB_X42_Y58_N4
\library1|Mux0~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~512_combout\ = (\Mux324~12_combout\ & (!\Mux325~11_combout\ & (\vga1|xPixel\(1) $ (\vga1|xPixel\(2))))) # (!\Mux324~12_combout\ & (\vga1|xPixel\(1) $ ((\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~512_combout\);

-- Location: LCCOMB_X42_Y58_N6
\library1|Mux0~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~513_combout\ = (\vga1|xPixel\(2) & (\Mux325~11_combout\ $ (((!\vga1|xPixel\(1) & \Mux324~12_combout\))))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(1) & (\Mux324~12_combout\ & !\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~513_combout\);

-- Location: LCCOMB_X42_Y58_N28
\library1|Mux0~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~514_combout\ = (\Mux322~12_combout\ & (\Mux327~14_combout\)) # (!\Mux322~12_combout\ & ((\Mux327~14_combout\ & (\library1|Mux0~512_combout\)) # (!\Mux327~14_combout\ & ((\library1|Mux0~513_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~512_combout\,
	datad => \library1|Mux0~513_combout\,
	combout => \library1|Mux0~514_combout\);

-- Location: LCCOMB_X43_Y54_N4
\library1|Mux0~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~516_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~514_combout\ & (!\library1|Mux0~515_combout\)) # (!\library1|Mux0~514_combout\ & ((\library1|Mux0~511_combout\))))) # (!\Mux322~12_combout\ & (((\library1|Mux0~514_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~515_combout\,
	datac => \library1|Mux0~511_combout\,
	datad => \library1|Mux0~514_combout\,
	combout => \library1|Mux0~516_combout\);

-- Location: LCCOMB_X43_Y54_N2
\library1|Mux0~494\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~494_combout\ = (\Mux324~12_combout\ & (!\vga1|xPixel\(1) & (\Mux327~14_combout\ & !\Mux325~11_combout\))) # (!\Mux324~12_combout\ & (((!\Mux327~14_combout\ & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~494_combout\);

-- Location: LCCOMB_X43_Y54_N0
\library1|Mux0~495\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~495_combout\ = (\vga1|xPixel\(1) & (\vga1|xPixel\(0) & (\Mux324~12_combout\))) # (!\vga1|xPixel\(1) & (((!\Mux324~12_combout\ & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~495_combout\);

-- Location: LCCOMB_X43_Y54_N14
\library1|Mux0~496\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~496_combout\ = (\Mux327~14_combout\ & (((\library1|Mux0~495_combout\)))) # (!\Mux327~14_combout\ & (\library1|Mux0~131_combout\ & (\library1|Mux0~289_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~131_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~289_combout\,
	datad => \library1|Mux0~495_combout\,
	combout => \library1|Mux0~496_combout\);

-- Location: LCCOMB_X39_Y54_N10
\library1|Mux0~497\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~497_combout\ = (\Mux325~11_combout\ & ((\Mux327~14_combout\ $ (\Mux324~12_combout\)))) # (!\Mux325~11_combout\ & (\Mux324~12_combout\ & ((\vga1|xPixel\(1)) # (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~497_combout\);

-- Location: LCCOMB_X43_Y54_N8
\library1|Mux0~498\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~498_combout\ = (\Mux322~12_combout\ & ((\vga1|xPixel\(2)) # ((!\library1|Mux0~496_combout\)))) # (!\Mux322~12_combout\ & (!\vga1|xPixel\(2) & ((\library1|Mux0~497_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~496_combout\,
	datad => \library1|Mux0~497_combout\,
	combout => \library1|Mux0~498_combout\);

-- Location: LCCOMB_X38_Y51_N10
\library1|Mux0~499\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~499_combout\ = (\Mux327~14_combout\) # ((!\vga1|xPixel\(0) & (\vga1|yPixel\(0) & !\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~499_combout\);

-- Location: LCCOMB_X38_Y51_N16
\library1|Mux0~500\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~500_combout\ = (!\Mux324~12_combout\ & (!\vga1|xPixel\(1) & \library1|Mux0~499_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~12_combout\,
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~499_combout\,
	combout => \library1|Mux0~500_combout\);

-- Location: LCCOMB_X43_Y54_N22
\library1|Mux0~501\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~501_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~498_combout\ & ((\library1|Mux0~500_combout\))) # (!\library1|Mux0~498_combout\ & (\library1|Mux0~494_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~498_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~494_combout\,
	datac => \library1|Mux0~498_combout\,
	datad => \library1|Mux0~500_combout\,
	combout => \library1|Mux0~501_combout\);

-- Location: LCCOMB_X43_Y54_N28
\library1|Mux0~507\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~507_combout\ = (\Mux327~14_combout\) # ((\Mux324~12_combout\ & ((!\vga1|xPixel\(1)) # (!\vga1|xPixel\(0)))) # (!\Mux324~12_combout\ & ((\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~507_combout\);

-- Location: LCCOMB_X43_Y54_N30
\library1|Mux0~508\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~508_combout\ = (\vga1|xPixel\(2) & ((\Mux327~14_combout\) # ((!\Mux324~12_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~507_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~507_combout\,
	combout => \library1|Mux0~508_combout\);

-- Location: LCCOMB_X42_Y58_N8
\library1|Mux0~503\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~503_combout\ = (\vga1|xPixel\(2) & (((\Mux327~14_combout\ & \Mux325~11_combout\)))) # (!\vga1|xPixel\(2) & ((\Mux327~14_combout\) # ((!\vga1|xPixel\(1) & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~503_combout\);

-- Location: LCCOMB_X42_Y58_N18
\library1|Mux0~502\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~502_combout\ = (\Mux325~11_combout\ & ((\vga1|xPixel\(1) & ((\vga1|xPixel\(2)) # (\Mux327~14_combout\))) # (!\vga1|xPixel\(1) & (\vga1|xPixel\(2) & \Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~502_combout\);

-- Location: LCCOMB_X42_Y58_N22
\library1|Mux0~504\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~504_combout\ = (!\Mux322~12_combout\ & ((\Mux324~12_combout\ & (!\library1|Mux0~503_combout\)) # (!\Mux324~12_combout\ & ((\library1|Mux0~502_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~503_combout\,
	datad => \library1|Mux0~502_combout\,
	combout => \library1|Mux0~504_combout\);

-- Location: LCCOMB_X43_Y54_N12
\library1|Mux0~505\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~505_combout\ = (\vga1|xPixel\(0) & (\vga1|xPixel\(1) & (\Mux324~12_combout\ $ (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux327~14_combout\,
	datad => \vga1|xPixel\(1),
	combout => \library1|Mux0~505_combout\);

-- Location: LCCOMB_X43_Y52_N16
\library1|Mux0~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~443_combout\ = (!\Mux325~11_combout\ & ((\Mux322~13_combout\) # (\Mux322~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datac => \Mux322~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~443_combout\);

-- Location: LCCOMB_X43_Y54_N6
\library1|Mux0~506\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~506_combout\ = (!\library1|Mux0~505_combout\ & (!\vga1|xPixel\(2) & \library1|Mux0~443_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~505_combout\,
	datac => \vga1|xPixel\(2),
	datad => \library1|Mux0~443_combout\,
	combout => \library1|Mux0~506_combout\);

-- Location: LCCOMB_X43_Y54_N24
\library1|Mux0~509\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~509_combout\ = (\library1|Mux0~504_combout\) # ((\library1|Mux0~506_combout\) # ((\library1|Mux0~508_combout\ & \library1|Mux0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~508_combout\,
	datab => \library1|Mux0~26_combout\,
	datac => \library1|Mux0~504_combout\,
	datad => \library1|Mux0~506_combout\,
	combout => \library1|Mux0~509_combout\);

-- Location: LCCOMB_X43_Y54_N10
\library1|Mux0~510\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~510_combout\ = (\vga1|yPixel\(1) & ((\Mux323~10_combout\) # ((\library1|Mux0~501_combout\)))) # (!\vga1|yPixel\(1) & (!\Mux323~10_combout\ & ((\library1|Mux0~509_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~501_combout\,
	datad => \library1|Mux0~509_combout\,
	combout => \library1|Mux0~510_combout\);

-- Location: LCCOMB_X43_Y54_N18
\library1|Mux0~517\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~517_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~510_combout\ & ((\library1|Mux0~516_combout\))) # (!\library1|Mux0~510_combout\ & (\library1|Mux0~493_combout\)))) # (!\Mux323~10_combout\ & (((\library1|Mux0~510_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \library1|Mux0~493_combout\,
	datac => \library1|Mux0~516_combout\,
	datad => \library1|Mux0~510_combout\,
	combout => \library1|Mux0~517_combout\);

-- Location: LCCOMB_X42_Y57_N2
\library1|Mux0~547\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~547_combout\ = (\Mux321~10_combout\ & (\Mux326~14_combout\)) # (!\Mux321~10_combout\ & ((\Mux326~14_combout\ & ((\library1|Mux0~517_combout\))) # (!\Mux326~14_combout\ & (\library1|Mux0~546_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~546_combout\,
	datad => \library1|Mux0~517_combout\,
	combout => \library1|Mux0~547_combout\);

-- Location: LCCOMB_X42_Y57_N28
\library1|Mux0~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~553_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~547_combout\ & ((\library1|Mux0~552_combout\))) # (!\library1|Mux0~547_combout\ & (\library1|Mux0~487_combout\)))) # (!\Mux321~10_combout\ & (((\library1|Mux0~547_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~487_combout\,
	datab => \library1|Mux0~552_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~547_combout\,
	combout => \library1|Mux0~553_combout\);

-- Location: LCCOMB_X42_Y57_N22
\library1|Mux0~563\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~563_combout\ = (\vga1|yPixel\(2) & ((\vga1|yPixel\(3)) # ((\library1|Mux0~553_combout\)))) # (!\vga1|yPixel\(2) & (!\vga1|yPixel\(3) & (\library1|Mux0~562_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~562_combout\,
	datad => \library1|Mux0~553_combout\,
	combout => \library1|Mux0~563_combout\);

-- Location: LCCOMB_X36_Y55_N22
\library1|Mux0~827\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~827_combout\ = (\Mux326~14_combout\ & (!\Mux325~11_combout\)) # (!\Mux326~14_combout\ & (\vga1|xPixel\(2) & ((\Mux322~12_combout\) # (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~827_combout\);

-- Location: LCCOMB_X36_Y55_N12
\library1|Mux0~828\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~828_combout\ = (\Mux327~14_combout\ & ((\vga1|xPixel\(2) & ((\library1|Mux0~827_combout\) # (\Mux322~12_combout\))) # (!\vga1|xPixel\(2) & (!\library1|Mux0~827_combout\)))) # (!\Mux327~14_combout\ & (((\library1|Mux0~827_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~827_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~828_combout\);

-- Location: LCCOMB_X36_Y55_N4
\library1|Mux0~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~407_combout\ = (!\Mux322~12_combout\ & ((\vga1|xPixel\(2)) # (\Mux327~14_combout\ $ (\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~407_combout\);

-- Location: LCCOMB_X36_Y55_N0
\library1|Mux0~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~403_combout\ = (\Mux322~12_combout\ & ((\Mux325~11_combout\) # ((\Mux327~14_combout\ & !\vga1|xPixel\(2))))) # (!\Mux322~12_combout\ & (((\vga1|xPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~403_combout\);

-- Location: LCCOMB_X36_Y55_N14
\library1|Mux0~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~404_combout\ = (\Mux326~14_combout\ & (\Mux322~12_combout\ & ((!\library1|Mux0~403_combout\)))) # (!\Mux326~14_combout\ & (\library1|Mux0~403_combout\ & ((\Mux322~12_combout\) # (\library1|Mux0~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~337_combout\,
	datad => \library1|Mux0~403_combout\,
	combout => \library1|Mux0~404_combout\);

-- Location: LCCOMB_X36_Y55_N28
\library1|Mux0~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~405_combout\ = (\Mux327~14_combout\ & ((\Mux322~12_combout\) # ((\vga1|xPixel\(2) & \vga1|xPixel\(1))))) # (!\Mux327~14_combout\ & (!\Mux322~12_combout\ & (\vga1|xPixel\(2) $ (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~405_combout\);

-- Location: LCCOMB_X36_Y55_N10
\library1|Mux0~825\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~825_combout\ = (\Mux325~11_combout\ & (((\vga1|xPixel\(2) & \Mux326~14_combout\)) # (!\library1|Mux0~405_combout\))) # (!\Mux325~11_combout\ & (((\library1|Mux0~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~405_combout\,
	combout => \library1|Mux0~825_combout\);

-- Location: LCCOMB_X36_Y55_N24
\library1|Mux0~826\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~826_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~825_combout\) # ((\library1|Mux0~405_combout\ & !\Mux326~14_combout\)))) # (!\Mux322~12_combout\ & (\library1|Mux0~405_combout\ & (!\Mux326~14_combout\ & \library1|Mux0~825_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~405_combout\,
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~825_combout\,
	combout => \library1|Mux0~826_combout\);

-- Location: LCCOMB_X36_Y55_N2
\library1|Mux0~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~406_combout\ = (\Mux324~12_combout\ & ((\Mux323~10_combout\) # ((\library1|Mux0~404_combout\)))) # (!\Mux324~12_combout\ & (!\Mux323~10_combout\ & ((\library1|Mux0~826_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~404_combout\,
	datad => \library1|Mux0~826_combout\,
	combout => \library1|Mux0~406_combout\);

-- Location: LCCOMB_X36_Y55_N30
\library1|Mux0~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~408_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~406_combout\ & ((\library1|Mux0~407_combout\))) # (!\library1|Mux0~406_combout\ & (\library1|Mux0~828_combout\)))) # (!\Mux323~10_combout\ & (((\library1|Mux0~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~828_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~407_combout\,
	datad => \library1|Mux0~406_combout\,
	combout => \library1|Mux0~408_combout\);

-- Location: LCCOMB_X42_Y57_N14
\library1|Mux0~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~484_combout\ = (!\Mux322~13_combout\ & (\Mux324~11_combout\ & !\Mux322~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datad => \Mux322~14_combout\,
	combout => \library1|Mux0~484_combout\);

-- Location: LCCOMB_X45_Y55_N22
\library1|Mux0~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~478_combout\ = \Mux326~14_combout\ $ (((\Mux325~11_combout\) # ((!\vga1|xPixel\(2) & \Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux326~14_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~478_combout\);

-- Location: LCCOMB_X42_Y55_N14
\library1|Mux0~806\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~806_combout\ = (!\Mux323~10_combout\ & (\Mux324~12_combout\ & (\Mux322~12_combout\ & \library1|Mux0~478_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux322~12_combout\,
	datad => \library1|Mux0~478_combout\,
	combout => \library1|Mux0~806_combout\);

-- Location: LCCOMB_X38_Y55_N8
\library1|Mux0~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~473_combout\ = (\Mux322~12_combout\ & (!\vga1|xPixel\(2) & (\Mux325~11_combout\ $ (\Mux323~10_combout\)))) # (!\Mux322~12_combout\ & (\Mux323~10_combout\ & (\vga1|xPixel\(2) $ (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux325~11_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~473_combout\);

-- Location: LCCOMB_X38_Y55_N14
\library1|Mux0~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~472_combout\ = (\vga1|xPixel\(2) & (((\Mux323~10_combout\) # (\Mux322~12_combout\)))) # (!\vga1|xPixel\(2) & (\Mux325~11_combout\ $ (((!\Mux323~10_combout\ & \Mux322~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux325~11_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~472_combout\);

-- Location: LCCOMB_X38_Y55_N28
\library1|Mux0~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~471_combout\ = (\vga1|xPixel\(2) & (\vga1|xPixel\(1))) # (!\vga1|xPixel\(2) & ((\Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(2),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~471_combout\);

-- Location: LCCOMB_X38_Y55_N6
\library1|Mux0~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~474_combout\ = (\Mux327~14_combout\ & (\library1|Mux0~473_combout\ $ (((\library1|Mux0~472_combout\) # (\library1|Mux0~471_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~473_combout\,
	datac => \library1|Mux0~472_combout\,
	datad => \library1|Mux0~471_combout\,
	combout => \library1|Mux0~474_combout\);

-- Location: LCCOMB_X36_Y55_N26
\library1|Mux0~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~476_combout\ = (\vga1|xPixel\(2) & (!\Mux326~14_combout\ & (\Mux323~10_combout\ $ (!\Mux322~12_combout\)))) # (!\vga1|xPixel\(2) & (!\Mux323~10_combout\ & (\Mux326~14_combout\ & !\Mux322~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux323~10_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~476_combout\);

-- Location: LCCOMB_X36_Y55_N20
\library1|Mux0~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~475_combout\ = (\Mux323~10_combout\ & ((\Mux326~14_combout\) # ((\vga1|xPixel\(2) & !\Mux322~12_combout\)))) # (!\Mux323~10_combout\ & ((\vga1|xPixel\(2)) # ((\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \Mux323~10_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~475_combout\);

-- Location: LCCOMB_X36_Y55_N6
\library1|Mux0~819\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~819_combout\ = (\Mux325~11_combout\ & ((\vga1|xPixel\(1)) # ((\library1|Mux0~475_combout\)))) # (!\Mux325~11_combout\ & ((\vga1|xPixel\(1) & ((!\library1|Mux0~475_combout\))) # (!\vga1|xPixel\(1) & (\library1|Mux0~476_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~476_combout\,
	datad => \library1|Mux0~475_combout\,
	combout => \library1|Mux0~819_combout\);

-- Location: LCCOMB_X36_Y55_N16
\library1|Mux0~820\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~820_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~476_combout\ & (!\library1|Mux0~475_combout\)) # (!\library1|Mux0~476_combout\ & (\library1|Mux0~475_combout\ & !\library1|Mux0~819_combout\)))) # (!\Mux323~10_combout\ & 
-- (((\library1|Mux0~819_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~476_combout\,
	datab => \library1|Mux0~475_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~819_combout\,
	combout => \library1|Mux0~820_combout\);

-- Location: LCCOMB_X36_Y55_N8
\library1|Mux0~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~477_combout\ = (!\Mux324~12_combout\ & ((\library1|Mux0~474_combout\) # ((!\Mux327~14_combout\ & \library1|Mux0~820_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~474_combout\,
	datad => \library1|Mux0~820_combout\,
	combout => \library1|Mux0~477_combout\);

-- Location: LCCOMB_X38_Y50_N8
\library1|Mux0~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~479_combout\ = (\Mux323~10_combout\ & ((\vga1|xPixel\(2)) # (\Mux327~14_combout\ $ (\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~479_combout\);

-- Location: LCCOMB_X38_Y50_N30
\library1|Mux0~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~480_combout\ = (\vga1|xPixel\(2)) # (\Mux326~14_combout\ $ (((\Mux327~14_combout\ & !\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~480_combout\);

-- Location: LCCOMB_X38_Y50_N24
\library1|Mux0~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~481_combout\ = (\Mux326~14_combout\ & ((\Mux327~14_combout\ & ((!\Mux325~11_combout\))) # (!\Mux327~14_combout\ & (\vga1|xPixel\(2))))) # (!\Mux326~14_combout\ & (((\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~481_combout\);

-- Location: LCCOMB_X38_Y50_N6
\library1|Mux0~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~482_combout\ = (\vga1|xPixel\(1) & (((!\vga1|xPixel\(0) & !\library1|Mux0~480_combout\)) # (!\library1|Mux0~481_combout\))) # (!\vga1|xPixel\(1) & ((\library1|Mux0~480_combout\ $ (\library1|Mux0~481_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \library1|Mux0~480_combout\,
	datad => \library1|Mux0~481_combout\,
	combout => \library1|Mux0~482_combout\);

-- Location: LCCOMB_X38_Y50_N0
\library1|Mux0~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~483_combout\ = (\library1|Mux0~479_combout\) # ((!\Mux323~10_combout\ & \library1|Mux0~482_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datac => \library1|Mux0~479_combout\,
	datad => \library1|Mux0~482_combout\,
	combout => \library1|Mux0~483_combout\);

-- Location: LCCOMB_X42_Y55_N22
\library1|Mux0~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~485_combout\ = (\library1|Mux0~806_combout\) # ((\library1|Mux0~477_combout\) # ((\library1|Mux0~484_combout\ & \library1|Mux0~483_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~484_combout\,
	datab => \library1|Mux0~806_combout\,
	datac => \library1|Mux0~477_combout\,
	datad => \library1|Mux0~483_combout\,
	combout => \library1|Mux0~485_combout\);

-- Location: LCCOMB_X38_Y55_N0
\library1|Mux0~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~409_combout\ = (!\Mux325~11_combout\ & ((\vga1|xPixel\(1) & (!\Mux324~12_combout\)) # (!\vga1|xPixel\(1) & (\Mux324~12_combout\ & \Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~409_combout\);

-- Location: LCCOMB_X38_Y55_N4
\library1|Mux0~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~413_combout\ = (\vga1|xPixel\(1) & ((\Mux325~11_combout\ & ((\Mux327~14_combout\) # (!\Mux324~12_combout\))) # (!\Mux325~11_combout\ & (\Mux324~12_combout\)))) # (!\vga1|xPixel\(1) & (\Mux325~11_combout\ $ (((!\Mux324~12_combout\ & 
-- \Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~413_combout\);

-- Location: LCCOMB_X38_Y55_N10
\library1|Mux0~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~410_combout\ = (\Mux327~14_combout\ & ((\Mux322~13_combout\) # ((\Mux324~11_combout\) # (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~410_combout\);

-- Location: LCCOMB_X38_Y55_N12
\library1|Mux0~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~411_combout\ = (\Mux325~11_combout\ & (\Mux326~14_combout\ & (\Mux324~12_combout\ $ (!\library1|Mux0~410_combout\)))) # (!\Mux325~11_combout\ & (((!\Mux326~14_combout\ & \library1|Mux0~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~410_combout\,
	combout => \library1|Mux0~411_combout\);

-- Location: LCCOMB_X38_Y55_N2
\library1|Mux0~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~412_combout\ = (\Mux323~10_combout\ & (\Mux326~14_combout\)) # (!\Mux323~10_combout\ & (\library1|Mux0~411_combout\ & (\Mux326~14_combout\ $ (!\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~411_combout\,
	combout => \library1|Mux0~412_combout\);

-- Location: LCCOMB_X38_Y55_N30
\library1|Mux0~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~414_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~412_combout\ & ((!\library1|Mux0~413_combout\))) # (!\library1|Mux0~412_combout\ & (\library1|Mux0~409_combout\)))) # (!\Mux323~10_combout\ & (((\library1|Mux0~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \library1|Mux0~409_combout\,
	datac => \library1|Mux0~413_combout\,
	datad => \library1|Mux0~412_combout\,
	combout => \library1|Mux0~414_combout\);

-- Location: LCCOMB_X43_Y52_N8
\library1|Mux0~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~419_combout\ = (\Mux326~14_combout\ & (((!\Mux323~10_combout\ & !\Mux327~14_combout\)) # (!\Mux325~11_combout\))) # (!\Mux326~14_combout\ & ((\Mux323~10_combout\) # ((\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~419_combout\);

-- Location: LCCOMB_X43_Y52_N4
\library1|Mux0~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~415_combout\ = (\Mux327~14_combout\ & (\Mux325~11_combout\ & ((\Mux323~10_combout\) # (!\Mux326~14_combout\)))) # (!\Mux327~14_combout\ & (\Mux323~10_combout\ & (\Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~415_combout\);

-- Location: LCCOMB_X43_Y52_N26
\library1|Mux0~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~416_combout\ = (\Mux323~10_combout\ & (!\Mux326~14_combout\ & ((\Mux325~11_combout\) # (!\Mux327~14_combout\)))) # (!\Mux323~10_combout\ & (\Mux326~14_combout\ $ (((\Mux327~14_combout\ & \Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~416_combout\);

-- Location: LCCOMB_X43_Y52_N0
\library1|Mux0~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~417_combout\ = (\Mux325~11_combout\ & ((\Mux327~14_combout\ & ((!\Mux326~14_combout\))) # (!\Mux327~14_combout\ & (\Mux323~10_combout\ & \Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~417_combout\);

-- Location: LCCOMB_X43_Y52_N2
\library1|Mux0~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~418_combout\ = (\Mux324~12_combout\ & ((\vga1|xPixel\(1)) # ((\library1|Mux0~416_combout\)))) # (!\Mux324~12_combout\ & (!\vga1|xPixel\(1) & ((\library1|Mux0~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~416_combout\,
	datad => \library1|Mux0~417_combout\,
	combout => \library1|Mux0~418_combout\);

-- Location: LCCOMB_X43_Y52_N6
\library1|Mux0~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~420_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~418_combout\ & (\library1|Mux0~419_combout\)) # (!\library1|Mux0~418_combout\ & ((\library1|Mux0~415_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~418_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~419_combout\,
	datac => \library1|Mux0~415_combout\,
	datad => \library1|Mux0~418_combout\,
	combout => \library1|Mux0~420_combout\);

-- Location: LCCOMB_X42_Y55_N4
\library1|Mux0~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~421_combout\ = (!\Mux322~12_combout\ & ((\vga1|xPixel\(2) & (\library1|Mux0~414_combout\)) # (!\vga1|xPixel\(2) & ((\library1|Mux0~420_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~414_combout\,
	datad => \library1|Mux0~420_combout\,
	combout => \library1|Mux0~421_combout\);

-- Location: LCCOMB_X42_Y58_N26
\library1|Mux0~823\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~823_combout\ = (\vga1|xPixel\(2) & (((!\vga1|xPixel\(1) & !\Mux326~14_combout\)) # (!\Mux327~14_combout\))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~823_combout\);

-- Location: LCCOMB_X42_Y58_N12
\library1|Mux0~824\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~824_combout\ = (\Mux324~12_combout\ & (\library1|Mux0~823_combout\ & ((\vga1|xPixel\(2)) # (!\Mux326~14_combout\)))) # (!\Mux324~12_combout\ & (\Mux326~14_combout\ & ((\vga1|xPixel\(2)) # (\library1|Mux0~823_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(2),
	datac => \library1|Mux0~823_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~824_combout\);

-- Location: LCCOMB_X42_Y58_N14
\library1|Mux0~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~423_combout\ = (!\Mux326~14_combout\ & ((\vga1|xPixel\(2) & ((!\Mux327~14_combout\) # (!\vga1|xPixel\(1)))) # (!\vga1|xPixel\(2) & ((\Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~423_combout\);

-- Location: LCCOMB_X42_Y58_N24
\library1|Mux0~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~422_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(2) $ (\Mux326~14_combout\)) # (!\Mux327~14_combout\))) # (!\vga1|xPixel\(1) & (\vga1|xPixel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(2),
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~422_combout\);

-- Location: LCCOMB_X42_Y58_N16
\library1|Mux0~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~424_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~422_combout\))) # (!\Mux324~12_combout\ & (\library1|Mux0~423_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datac => \library1|Mux0~423_combout\,
	datad => \library1|Mux0~422_combout\,
	combout => \library1|Mux0~424_combout\);

-- Location: LCCOMB_X43_Y51_N18
\library1|Mux0~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~425_combout\ = ((\vga1|xPixel\(1) & (!\Mux322~13_combout\ & !\Mux324~11_combout\))) # (!\Mux327~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~13_combout\,
	datac => \Mux324~11_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~425_combout\);

-- Location: LCCOMB_X43_Y51_N22
\library1|Mux0~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~429_combout\ = (\vga1|xPixel\(0) & (\Mux327~14_combout\ & (\vga1|xPixel\(1) $ (!\Mux324~12_combout\)))) # (!\vga1|xPixel\(0) & (!\vga1|xPixel\(1) & (\Mux324~12_combout\ $ (\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \vga1|xPixel\(0),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~429_combout\);

-- Location: LCCOMB_X43_Y51_N0
\library1|Mux0~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~426_combout\ = (\vga1|xPixel\(1) & (((\Mux324~12_combout\ & \Mux327~14_combout\)))) # (!\vga1|xPixel\(1) & ((\Mux327~14_combout\) # ((!\vga1|xPixel\(0) & \Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~426_combout\);

-- Location: LCCOMB_X43_Y51_N10
\library1|Mux0~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~427_combout\ = (\vga1|xPixel\(1) & (\Mux324~12_combout\ & (\vga1|xPixel\(0) $ (\Mux327~14_combout\)))) # (!\vga1|xPixel\(1) & (((\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~427_combout\);

-- Location: LCCOMB_X43_Y51_N28
\library1|Mux0~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~428_combout\ = (\vga1|xPixel\(2) & (((\Mux326~14_combout\)))) # (!\vga1|xPixel\(2) & ((\Mux326~14_combout\ & (!\library1|Mux0~426_combout\)) # (!\Mux326~14_combout\ & ((!\library1|Mux0~427_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~426_combout\,
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~427_combout\,
	combout => \library1|Mux0~428_combout\);

-- Location: LCCOMB_X43_Y51_N20
\library1|Mux0~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~430_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~428_combout\ & ((\library1|Mux0~429_combout\))) # (!\library1|Mux0~428_combout\ & (!\library1|Mux0~425_combout\)))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~425_combout\,
	datac => \library1|Mux0~429_combout\,
	datad => \library1|Mux0~428_combout\,
	combout => \library1|Mux0~430_combout\);

-- Location: LCCOMB_X45_Y51_N8
\library1|Mux0~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~432_combout\ = (\vga1|xPixel\(2)) # ((\vga1|xPixel\(1) & (\vga1|xPixel\(0) & \Mux327~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~432_combout\);

-- Location: LCCOMB_X45_Y51_N14
\library1|Mux0~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~431_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(2) $ (!\Mux327~14_combout\)))) # (!\vga1|xPixel\(1) & (\vga1|xPixel\(2) & ((\vga1|xPixel\(0)) # (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|xPixel\(2),
	datac => \vga1|xPixel\(1),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~431_combout\);

-- Location: LCCOMB_X45_Y51_N6
\library1|Mux0~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~433_combout\ = (\Mux324~12_combout\ & ((\Mux326~14_combout\ & (!\library1|Mux0~432_combout\)) # (!\Mux326~14_combout\ & ((\library1|Mux0~431_combout\))))) # (!\Mux324~12_combout\ & (((\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~432_combout\,
	datac => \library1|Mux0~431_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~433_combout\);

-- Location: LCCOMB_X45_Y51_N20
\library1|Mux0~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~434_combout\ = (\library1|Mux0~433_combout\) # ((!\Mux324~12_combout\ & (\vga1|xPixel\(2) $ (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|xPixel\(1),
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~433_combout\,
	combout => \library1|Mux0~434_combout\);

-- Location: LCCOMB_X42_Y55_N18
\library1|Mux0~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~435_combout\ = (\Mux323~10_combout\ & (\Mux325~11_combout\)) # (!\Mux323~10_combout\ & ((\Mux325~11_combout\ & (\library1|Mux0~430_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~434_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~430_combout\,
	datad => \library1|Mux0~434_combout\,
	combout => \library1|Mux0~435_combout\);

-- Location: LCCOMB_X42_Y55_N16
\library1|Mux0~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~436_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~435_combout\ & (\library1|Mux0~824_combout\)) # (!\library1|Mux0~435_combout\ & ((\library1|Mux0~424_combout\))))) # (!\Mux323~10_combout\ & (((\library1|Mux0~435_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \library1|Mux0~824_combout\,
	datac => \library1|Mux0~424_combout\,
	datad => \library1|Mux0~435_combout\,
	combout => \library1|Mux0~436_combout\);

-- Location: LCCOMB_X42_Y55_N30
\library1|Mux0~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~437_combout\ = (\library1|Mux0~421_combout\) # ((\Mux322~12_combout\ & \library1|Mux0~436_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datac => \library1|Mux0~421_combout\,
	datad => \library1|Mux0~436_combout\,
	combout => \library1|Mux0~437_combout\);

-- Location: LCCOMB_X43_Y52_N14
\library1|Mux0~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~467_combout\ = (!\Mux322~12_combout\ & ((\Mux324~12_combout\ & (!\Mux327~14_combout\ & \Mux325~11_combout\)) # (!\Mux324~12_combout\ & (\Mux327~14_combout\ & !\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~467_combout\);

-- Location: LCCOMB_X43_Y52_N22
\library1|Mux0~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~463_combout\ = (!\Mux324~11_combout\ & (!\Mux327~14_combout\ & (!\Mux322~13_combout\ & !\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux322~13_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~463_combout\);

-- Location: LCCOMB_X43_Y52_N30
\library1|Mux0~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~465_combout\ = (\Mux324~12_combout\ & (\Mux327~14_combout\ & (\Mux322~12_combout\ $ (!\Mux325~11_combout\)))) # (!\Mux324~12_combout\ & (\Mux322~12_combout\ & (!\Mux327~14_combout\ & !\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~465_combout\);

-- Location: LCCOMB_X43_Y52_N24
\library1|Mux0~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~464_combout\ = (\Mux322~12_combout\ & (\Mux327~14_combout\ & (\Mux324~12_combout\ $ (\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & ((\Mux324~12_combout\ & ((!\Mux325~11_combout\))) # (!\Mux324~12_combout\ & ((\Mux327~14_combout\) # 
-- (\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~464_combout\);

-- Location: LCCOMB_X43_Y52_N20
\library1|Mux0~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~466_combout\ = (\vga1|xPixel\(1) & (\Mux326~14_combout\)) # (!\vga1|xPixel\(1) & ((\Mux326~14_combout\ & ((\library1|Mux0~464_combout\))) # (!\Mux326~14_combout\ & (\library1|Mux0~465_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~465_combout\,
	datad => \library1|Mux0~464_combout\,
	combout => \library1|Mux0~466_combout\);

-- Location: LCCOMB_X43_Y52_N12
\library1|Mux0~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~468_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~466_combout\ & (\library1|Mux0~467_combout\)) # (!\library1|Mux0~466_combout\ & ((\library1|Mux0~463_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~466_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~467_combout\,
	datac => \library1|Mux0~463_combout\,
	datad => \library1|Mux0~466_combout\,
	combout => \library1|Mux0~468_combout\);

-- Location: LCCOMB_X42_Y55_N26
\library1|Mux0~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~448_combout\ = (\Mux325~11_combout\) # ((\Mux324~12_combout\ & ((\vga1|xPixel\(1)) # (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~448_combout\);

-- Location: LCCOMB_X42_Y55_N20
\library1|Mux0~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~447_combout\ = (\vga1|xPixel\(1) & (\Mux325~11_combout\ $ (((\Mux324~11_combout\) # (\Mux322~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~11_combout\,
	datac => \Mux322~13_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~447_combout\);

-- Location: LCCOMB_X42_Y55_N12
\library1|Mux0~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~449_combout\ = (\Mux322~12_combout\ & (\Mux326~14_combout\)) # (!\Mux322~12_combout\ & ((\Mux326~14_combout\ & ((\library1|Mux0~447_combout\))) # (!\Mux326~14_combout\ & (\library1|Mux0~448_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~448_combout\,
	datad => \library1|Mux0~447_combout\,
	combout => \library1|Mux0~449_combout\);

-- Location: LCCOMB_X42_Y55_N28
\library1|Mux0~821\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~821_combout\ = (\vga1|xPixel\(1) & (\Mux325~11_combout\ $ (\Mux324~12_combout\ $ (!\library1|Mux0~449_combout\)))) # (!\vga1|xPixel\(1) & (!\Mux325~11_combout\ & (!\Mux324~12_combout\ & !\library1|Mux0~449_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux324~12_combout\,
	datac => \vga1|xPixel\(1),
	datad => \library1|Mux0~449_combout\,
	combout => \library1|Mux0~821_combout\);

-- Location: LCCOMB_X42_Y55_N6
\library1|Mux0~822\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~822_combout\ = (\Mux322~12_combout\ & (((\Mux327~14_combout\ & \library1|Mux0~821_combout\)))) # (!\Mux322~12_combout\ & (\library1|Mux0~449_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~449_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~821_combout\,
	combout => \library1|Mux0~822_combout\);

-- Location: LCCOMB_X40_Y55_N24
\library1|Mux0~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~455_combout\ = (\Mux325~11_combout\ & (!\Mux327~14_combout\ & ((\vga1|xPixel\(1)) # (\Mux324~12_combout\)))) # (!\Mux325~11_combout\ & (((\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~455_combout\);

-- Location: LCCOMB_X40_Y55_N28
\library1|Mux0~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~457_combout\ = (\Mux326~14_combout\ & ((\Mux322~12_combout\) # ((\library1|Mux0~455_combout\)))) # (!\Mux326~14_combout\ & (!\Mux322~12_combout\ & (\library1|Mux0~456_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~456_combout\,
	datad => \library1|Mux0~455_combout\,
	combout => \library1|Mux0~457_combout\);

-- Location: LCCOMB_X42_Y54_N22
\library1|Mux0~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~459_combout\ = (\vga1|xPixel\(1) & (((!\Mux324~12_combout\)))) # (!\vga1|xPixel\(1) & (!\vga1|xPixel\(0) & (\Mux324~12_combout\ & !\vga1|yPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux324~12_combout\,
	datad => \vga1|yPixel\(0),
	combout => \library1|Mux0~459_combout\);

-- Location: LCCOMB_X42_Y54_N20
\library1|Mux0~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~458_combout\ = (\library1|Mux0~131_combout\ & (!\Mux324~12_combout\ & (\Mux327~14_combout\ $ (\Mux325~11_combout\)))) # (!\library1|Mux0~131_combout\ & (\Mux327~14_combout\ $ (((\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~131_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~458_combout\);

-- Location: LCCOMB_X42_Y54_N12
\library1|Mux0~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~460_combout\ = (\library1|Mux0~458_combout\) # ((\Mux327~14_combout\ & (\Mux325~11_combout\ & \library1|Mux0~459_combout\)) # (!\Mux327~14_combout\ & (!\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~459_combout\,
	datad => \library1|Mux0~458_combout\,
	combout => \library1|Mux0~460_combout\);

-- Location: LCCOMB_X38_Y51_N26
\library1|Mux0~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~453_combout\ = (\Mux324~12_combout\ & (!\Mux325~11_combout\ & ((\vga1|xPixel\(0)) # (\vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux324~12_combout\,
	datac => \vga1|yPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~453_combout\);

-- Location: LCCOMB_X38_Y51_N4
\library1|Mux0~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~450_combout\ = (\vga1|xPixel\(0) & (\Mux325~11_combout\ & ((\Mux322~13_combout\) # (\Mux324~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux324~11_combout\,
	datac => \vga1|xPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~450_combout\);

-- Location: LCCOMB_X38_Y51_N2
\library1|Mux0~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~451_combout\ = (\Mux324~12_combout\ & ((\Mux325~11_combout\ & (\vga1|xPixel\(0))) # (!\Mux325~11_combout\ & ((!\vga1|yPixel\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux324~12_combout\,
	datac => \vga1|yPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~451_combout\);

-- Location: LCCOMB_X38_Y51_N24
\library1|Mux0~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~452_combout\ = (\Mux327~14_combout\ & ((\vga1|xPixel\(1)) # ((\library1|Mux0~451_combout\)))) # (!\Mux327~14_combout\ & (!\vga1|xPixel\(1) & (!\library1|Mux0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~97_combout\,
	datad => \library1|Mux0~451_combout\,
	combout => \library1|Mux0~452_combout\);

-- Location: LCCOMB_X38_Y51_N12
\library1|Mux0~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~454_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~452_combout\ & (!\library1|Mux0~453_combout\)) # (!\library1|Mux0~452_combout\ & ((!\library1|Mux0~450_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~453_combout\,
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~450_combout\,
	datad => \library1|Mux0~452_combout\,
	combout => \library1|Mux0~454_combout\);

-- Location: LCCOMB_X42_Y55_N10
\library1|Mux0~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~461_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~457_combout\ & (\library1|Mux0~460_combout\)) # (!\library1|Mux0~457_combout\ & ((\library1|Mux0~454_combout\))))) # (!\Mux322~12_combout\ & (\library1|Mux0~457_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~457_combout\,
	datac => \library1|Mux0~460_combout\,
	datad => \library1|Mux0~454_combout\,
	combout => \library1|Mux0~461_combout\);

-- Location: LCCOMB_X42_Y55_N8
\library1|Mux0~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~462_combout\ = (\vga1|xPixel\(2) & (((\Mux323~10_combout\)))) # (!\vga1|xPixel\(2) & ((\Mux323~10_combout\ & (\library1|Mux0~822_combout\)) # (!\Mux323~10_combout\ & ((\library1|Mux0~461_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~822_combout\,
	datab => \vga1|xPixel\(2),
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~461_combout\,
	combout => \library1|Mux0~462_combout\);

-- Location: LCCOMB_X43_Y55_N0
\library1|Mux0~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~438_combout\ = \Mux325~11_combout\ $ (((!\vga1|xPixel\(1) & (!\vga1|xPixel\(0) & \Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux322~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~438_combout\);

-- Location: LCCOMB_X43_Y55_N30
\library1|Mux0~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~439_combout\ = (\library1|Mux0~222_combout\ & (!\Mux326~14_combout\ & !\library1|Mux0~438_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \library1|Mux0~222_combout\,
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~438_combout\,
	combout => \library1|Mux0~439_combout\);

-- Location: LCCOMB_X45_Y51_N18
\library1|Mux0~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~304_combout\ = (!\Mux322~12_combout\ & (\Mux325~11_combout\ & \Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~304_combout\);

-- Location: LCCOMB_X45_Y51_N10
\library1|Mux0~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~440_combout\ = (\vga1|xPixel\(1) & (\library1|Mux0~304_combout\ & (\Mux327~14_combout\ $ (!\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~304_combout\,
	combout => \library1|Mux0~440_combout\);

-- Location: LCCOMB_X43_Y55_N28
\library1|Mux0~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~441_combout\ = (\Mux322~12_combout\ & (((!\Mux325~11_combout\ & \Mux326~14_combout\)) # (!\vga1|xPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux322~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~441_combout\);

-- Location: LCCOMB_X43_Y55_N26
\library1|Mux0~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~442_combout\ = (\Mux322~12_combout\ & (!\Mux325~11_combout\ & ((\vga1|yPixel\(0)) # (!\vga1|xPixel\(0))))) # (!\Mux322~12_combout\ & (((\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(0),
	datab => \vga1|xPixel\(0),
	datac => \Mux322~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~442_combout\);

-- Location: LCCOMB_X43_Y55_N24
\library1|Mux0~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~444_combout\ = (\Mux326~14_combout\ & (\library1|Mux0~442_combout\)) # (!\Mux326~14_combout\ & ((\library1|Mux0~443_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datac => \library1|Mux0~442_combout\,
	datad => \library1|Mux0~443_combout\,
	combout => \library1|Mux0~444_combout\);

-- Location: LCCOMB_X43_Y55_N10
\library1|Mux0~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~445_combout\ = (\Mux327~14_combout\ & (((\library1|Mux0~441_combout\)))) # (!\Mux327~14_combout\ & (!\vga1|xPixel\(1) & ((\library1|Mux0~444_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~441_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~444_combout\,
	combout => \library1|Mux0~445_combout\);

-- Location: LCCOMB_X43_Y55_N16
\library1|Mux0~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~446_combout\ = (\library1|Mux0~439_combout\) # ((\library1|Mux0~440_combout\) # ((!\Mux324~12_combout\ & \library1|Mux0~445_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~439_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~440_combout\,
	datad => \library1|Mux0~445_combout\,
	combout => \library1|Mux0~446_combout\);

-- Location: LCCOMB_X42_Y55_N2
\library1|Mux0~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~469_combout\ = (\vga1|xPixel\(2) & ((\library1|Mux0~462_combout\ & (\library1|Mux0~468_combout\)) # (!\library1|Mux0~462_combout\ & ((\library1|Mux0~446_combout\))))) # (!\vga1|xPixel\(2) & (((\library1|Mux0~462_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \library1|Mux0~468_combout\,
	datac => \library1|Mux0~462_combout\,
	datad => \library1|Mux0~446_combout\,
	combout => \library1|Mux0~469_combout\);

-- Location: LCCOMB_X42_Y55_N24
\library1|Mux0~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~470_combout\ = (\Mux321~10_combout\ & (\vga1|yPixel\(1))) # (!\Mux321~10_combout\ & ((\vga1|yPixel\(1) & (\library1|Mux0~437_combout\)) # (!\vga1|yPixel\(1) & ((\library1|Mux0~469_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~437_combout\,
	datad => \library1|Mux0~469_combout\,
	combout => \library1|Mux0~470_combout\);

-- Location: LCCOMB_X42_Y55_N0
\library1|Mux0~486\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~486_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~470_combout\ & ((\library1|Mux0~485_combout\))) # (!\library1|Mux0~470_combout\ & (\library1|Mux0~408_combout\)))) # (!\Mux321~10_combout\ & (((\library1|Mux0~470_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~408_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~485_combout\,
	datad => \library1|Mux0~470_combout\,
	combout => \library1|Mux0~486_combout\);

-- Location: LCCOMB_X42_Y57_N26
\library1|Mux0~641\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~641_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~563_combout\ & (\library1|Mux0~810_combout\)) # (!\library1|Mux0~563_combout\ & ((\library1|Mux0~486_combout\))))) # (!\vga1|yPixel\(3) & (((\library1|Mux0~563_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~810_combout\,
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~563_combout\,
	datad => \library1|Mux0~486_combout\,
	combout => \library1|Mux0~641_combout\);

-- Location: LCCOMB_X38_Y56_N28
\library1|Mux0~843\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~843_combout\ = (\Mux327~14_combout\ & (\Mux324~12_combout\ $ (\Mux321~10_combout\ $ (\Mux326~14_combout\)))) # (!\Mux327~14_combout\ & ((\Mux324~12_combout\ & (\Mux321~10_combout\ $ (\Mux326~14_combout\))) # (!\Mux324~12_combout\ & 
-- (!\Mux321~10_combout\ & !\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~843_combout\);

-- Location: LCCOMB_X38_Y56_N22
\library1|Mux0~844\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~844_combout\ = (\library1|Mux0~843_combout\ & ((\Mux321~10_combout\) # (\vga1|xPixel\(1) $ (\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux321~10_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~843_combout\,
	combout => \library1|Mux0~844_combout\);

-- Location: LCCOMB_X39_Y53_N18
\library1|Mux0~845\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~845_combout\ = (\Mux324~12_combout\ & (\Mux326~14_combout\ & ((\Mux321~10_combout\) # (!\vga1|xPixel\(1))))) # (!\Mux324~12_combout\ & (\Mux326~14_combout\ $ (((!\vga1|xPixel\(1) & !\Mux321~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \vga1|xPixel\(1),
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~845_combout\);

-- Location: LCCOMB_X39_Y57_N26
\library1|Mux0~846\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~846_combout\ = (\Mux327~14_combout\ & ((\Mux324~12_combout\ $ (\library1|Mux0~845_combout\)) # (!\Mux321~10_combout\))) # (!\Mux327~14_combout\ & ((\library1|Mux0~845_combout\) # ((\Mux321~10_combout\ & !\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~845_combout\,
	combout => \library1|Mux0~846_combout\);

-- Location: LCCOMB_X39_Y53_N6
\library1|Mux0~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~201_combout\ = (\Mux324~12_combout\ & (!\vga1|xPixel\(0) & (!\Mux326~14_combout\ & !\Mux327~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|xPixel\(0),
	datac => \Mux326~14_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~201_combout\);

-- Location: LCCOMB_X39_Y53_N22
\library1|Mux0~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~197_combout\ = (\Mux324~12_combout\ & (\Mux327~14_combout\ & ((\vga1|xPixel\(0)) # (\Mux326~14_combout\)))) # (!\Mux324~12_combout\ & (((\Mux326~14_combout\ & !\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux324~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~197_combout\);

-- Location: LCCOMB_X39_Y53_N4
\library1|Mux0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~198_combout\ = ((\Mux324~12_combout\ & !\Mux327~14_combout\)) # (!\Mux326~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~198_combout\);

-- Location: LCCOMB_X39_Y53_N24
\library1|Mux0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~200_combout\ = (\vga1|xPixel\(1) & ((\Mux321~10_combout\) # ((\library1|Mux0~198_combout\)))) # (!\vga1|xPixel\(1) & (!\Mux321~10_combout\ & ((!\library1|Mux0~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~198_combout\,
	datad => \library1|Mux0~199_combout\,
	combout => \library1|Mux0~200_combout\);

-- Location: LCCOMB_X39_Y53_N16
\library1|Mux0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~202_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~200_combout\ & (!\library1|Mux0~201_combout\)) # (!\library1|Mux0~200_combout\ & ((\library1|Mux0~197_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~201_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~197_combout\,
	datad => \library1|Mux0~200_combout\,
	combout => \library1|Mux0~202_combout\);

-- Location: LCCOMB_X39_Y56_N12
\library1|Mux0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~192_combout\ = (\Mux324~12_combout\ & (\Mux327~14_combout\)) # (!\Mux324~12_combout\ & (!\Mux327~14_combout\ & \Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~192_combout\);

-- Location: LCCOMB_X39_Y56_N22
\library1|Mux0~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~195_combout\ = (\Mux324~12_combout\ & (\Mux327~14_combout\ $ (((!\vga1|xPixel\(0) & !\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux326~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~195_combout\);

-- Location: LCCOMB_X39_Y56_N26
\library1|Mux0~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~193_combout\ = (\Mux326~14_combout\ & ((\Mux327~14_combout\) # (\Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~193_combout\);

-- Location: LCCOMB_X39_Y56_N20
\library1|Mux0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~194_combout\ = (\vga1|xPixel\(1) & ((\Mux321~10_combout\) # (\Mux327~14_combout\ $ (\library1|Mux0~193_combout\)))) # (!\vga1|xPixel\(1) & (!\Mux327~14_combout\ & (!\library1|Mux0~193_combout\ & !\Mux321~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~193_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~194_combout\);

-- Location: LCCOMB_X39_Y56_N0
\library1|Mux0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~196_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~194_combout\ & ((!\library1|Mux0~195_combout\))) # (!\library1|Mux0~194_combout\ & (\library1|Mux0~192_combout\)))) # (!\Mux321~10_combout\ & (((\library1|Mux0~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~192_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~195_combout\,
	datad => \library1|Mux0~194_combout\,
	combout => \library1|Mux0~196_combout\);

-- Location: LCCOMB_X39_Y57_N28
\library1|Mux0~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~203_combout\ = (\vga1|yPixel\(1) & ((\Mux323~10_combout\) # ((\library1|Mux0~196_combout\)))) # (!\vga1|yPixel\(1) & (!\Mux323~10_combout\ & (\library1|Mux0~202_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~202_combout\,
	datad => \library1|Mux0~196_combout\,
	combout => \library1|Mux0~203_combout\);

-- Location: LCCOMB_X39_Y57_N14
\library1|Mux0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~204_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~203_combout\ & (!\library1|Mux0~844_combout\)) # (!\library1|Mux0~203_combout\ & ((\library1|Mux0~846_combout\))))) # (!\Mux323~10_combout\ & (((\library1|Mux0~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~844_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~846_combout\,
	datad => \library1|Mux0~203_combout\,
	combout => \library1|Mux0~204_combout\);

-- Location: LCCOMB_X40_Y56_N18
\library1|Mux0~803\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~803_combout\ = (\Mux321~10_combout\ & (\Mux327~14_combout\ & ((!\vga1|xPixel\(0)) # (!\vga1|xPixel\(1))))) # (!\Mux321~10_combout\ & (\vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux321~10_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~803_combout\);

-- Location: LCCOMB_X40_Y56_N30
\library1|Mux0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~212_combout\ = (\library1|Mux0~803_combout\ & (\Mux323~10_combout\ $ (((!\Mux321~10_combout\))))) # (!\library1|Mux0~803_combout\ & ((\Mux323~10_combout\) # ((\Mux321~10_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~803_combout\,
	combout => \library1|Mux0~212_combout\);

-- Location: LCCOMB_X40_Y56_N28
\library1|Mux0~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~209_combout\ = (\Mux323~10_combout\ & (!\Mux327~14_combout\)) # (!\Mux323~10_combout\ & (\vga1|xPixel\(1) & ((\Mux327~14_combout\) # (\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~209_combout\);

-- Location: LCCOMB_X40_Y56_N26
\library1|Mux0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~210_combout\ = (\Mux321~10_combout\ & !\library1|Mux0~209_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~209_combout\,
	combout => \library1|Mux0~210_combout\);

-- Location: LCCOMB_X40_Y56_N12
\library1|Mux0~841\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~841_combout\ = (\Mux323~10_combout\ & (\Mux327~14_combout\ & ((\vga1|xPixel\(1)) # (\Mux321~10_combout\)))) # (!\Mux323~10_combout\ & ((\Mux327~14_combout\ & ((!\Mux321~10_combout\))) # (!\Mux327~14_combout\ & (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~10_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~841_combout\);

-- Location: LCCOMB_X40_Y56_N2
\library1|Mux0~842\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~842_combout\ = (\vga1|yPixel\(1) & (\library1|Mux0~841_combout\ & ((\Mux323~10_combout\) # (!\Mux321~10_combout\)))) # (!\vga1|yPixel\(1) & ((\library1|Mux0~841_combout\) # ((!\Mux323~10_combout\ & !\Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux323~10_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~841_combout\,
	combout => \library1|Mux0~842_combout\);

-- Location: LCCOMB_X40_Y56_N4
\library1|Mux0~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~211_combout\ = (\Mux324~12_combout\ & ((\Mux326~14_combout\) # ((\library1|Mux0~842_combout\)))) # (!\Mux324~12_combout\ & (!\Mux326~14_combout\ & (\library1|Mux0~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~210_combout\,
	datad => \library1|Mux0~842_combout\,
	combout => \library1|Mux0~211_combout\);

-- Location: LCCOMB_X40_Y56_N16
\library1|Mux0~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~205_combout\ = (\vga1|yPixel\(1) & ((!\Mux327~14_combout\) # (!\vga1|xPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(1),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~205_combout\);

-- Location: LCCOMB_X40_Y56_N10
\library1|Mux0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~206_combout\ = (\Mux327~14_combout\ & ((\Mux321~10_combout\) # ((\Mux323~10_combout\ & !\library1|Mux0~205_combout\)))) # (!\Mux327~14_combout\ & (!\Mux323~10_combout\ & (!\Mux321~10_combout\ & \library1|Mux0~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~205_combout\,
	combout => \library1|Mux0~206_combout\);

-- Location: LCCOMB_X40_Y56_N20
\library1|Mux0~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~207_combout\ = (\library1|Mux0~206_combout\ & (\vga1|xPixel\(1))) # (!\library1|Mux0~206_combout\ & (\vga1|yPixel\(1) & (\vga1|xPixel\(1) $ (\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \library1|Mux0~206_combout\,
	combout => \library1|Mux0~207_combout\);

-- Location: LCCOMB_X40_Y56_N6
\library1|Mux0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~208_combout\ = \library1|Mux0~206_combout\ $ (((\Mux321~10_combout\ & ((\Mux323~10_combout\) # (!\library1|Mux0~207_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~206_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~207_combout\,
	combout => \library1|Mux0~208_combout\);

-- Location: LCCOMB_X40_Y56_N0
\library1|Mux0~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~213_combout\ = (\Mux326~14_combout\ & ((\library1|Mux0~211_combout\ & (\library1|Mux0~212_combout\)) # (!\library1|Mux0~211_combout\ & ((\library1|Mux0~208_combout\))))) # (!\Mux326~14_combout\ & (((\library1|Mux0~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~212_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~211_combout\,
	datad => \library1|Mux0~208_combout\,
	combout => \library1|Mux0~213_combout\);

-- Location: LCCOMB_X39_Y57_N24
\library1|Mux0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~214_combout\ = (\Mux325~11_combout\ & (\library1|Mux0~204_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~204_combout\,
	datad => \library1|Mux0~213_combout\,
	combout => \library1|Mux0~214_combout\);

-- Location: LCCOMB_X38_Y50_N10
\library1|Mux0~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~269_combout\ = (\Mux324~12_combout\ & (!\Mux323~10_combout\ & (\Mux327~14_combout\ $ (!\Mux325~11_combout\)))) # (!\Mux324~12_combout\ & (\Mux327~14_combout\ & ((\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~269_combout\);

-- Location: LCCOMB_X38_Y54_N28
\library1|Mux0~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~286_combout\ = (\Mux324~12_combout\ & (!\Mux327~14_combout\ & (!\Mux323~10_combout\))) # (!\Mux324~12_combout\ & (\Mux327~14_combout\ $ (((\Mux323~10_combout\) # (\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~286_combout\);

-- Location: LCCOMB_X38_Y54_N20
\library1|Mux0~837\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~837_combout\ = (\Mux323~10_combout\ & ((\Mux325~11_combout\ & ((\vga1|xPixel\(0)))) # (!\Mux325~11_combout\ & (\vga1|yPixel\(1))))) # (!\Mux323~10_combout\ & (!\vga1|yPixel\(1) & ((\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux323~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~837_combout\);

-- Location: LCCOMB_X38_Y54_N2
\library1|Mux0~838\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~838_combout\ = (\vga1|xPixel\(1) & (((!\vga1|xPixel\(0) & \library1|Mux0~837_combout\)) # (!\Mux325~11_combout\))) # (!\vga1|xPixel\(1) & ((\library1|Mux0~837_combout\) # ((\Mux325~11_combout\ & !\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \library1|Mux0~837_combout\,
	combout => \library1|Mux0~838_combout\);

-- Location: LCCOMB_X41_Y54_N16
\library1|Mux0~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~274_combout\ = (\Mux325~11_combout\ & (!\vga1|yPixel\(1) & (\library1|Mux0~127_combout\))) # (!\Mux325~11_combout\ & (((\library1|Mux0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~127_combout\,
	datac => \library1|Mux0~131_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~274_combout\);

-- Location: LCCOMB_X38_Y54_N26
\library1|Mux0~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~275_combout\ = (\Mux323~10_combout\ & (\vga1|xPixel\(1) & (\Mux325~11_combout\))) # (!\Mux323~10_combout\ & (((\library1|Mux0~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux325~11_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~274_combout\,
	combout => \library1|Mux0~275_combout\);

-- Location: LCCOMB_X38_Y51_N0
\library1|Mux0~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~271_combout\ = (\vga1|yPixel\(0) & ((\vga1|xPixel\(0) & (!\vga1|xPixel\(1))) # (!\vga1|xPixel\(0) & ((\vga1|xPixel\(1)) # (\vga1|yPixel\(1)))))) # (!\vga1|yPixel\(0) & (\vga1|yPixel\(1) & (\vga1|xPixel\(0) $ (\vga1|xPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(0),
	datac => \vga1|xPixel\(1),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~271_combout\);

-- Location: LCCOMB_X38_Y54_N14
\library1|Mux0~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~272_combout\ = (\Mux323~10_combout\) # ((\Mux325~11_combout\ & ((\vga1|xPixel\(1)))) # (!\Mux325~11_combout\ & (!\library1|Mux0~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~271_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~272_combout\);

-- Location: LCCOMB_X38_Y54_N24
\library1|Mux0~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~270_combout\ = (\Mux323~10_combout\ & (((\vga1|yPixel\(1) & !\vga1|xPixel\(1))) # (!\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~270_combout\);

-- Location: LCCOMB_X38_Y54_N0
\library1|Mux0~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~273_combout\ = (\Mux327~14_combout\ & ((\Mux324~12_combout\) # ((!\library1|Mux0~270_combout\)))) # (!\Mux327~14_combout\ & (!\Mux324~12_combout\ & (\library1|Mux0~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~272_combout\,
	datad => \library1|Mux0~270_combout\,
	combout => \library1|Mux0~273_combout\);

-- Location: LCCOMB_X38_Y54_N4
\library1|Mux0~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~276_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~273_combout\ & ((\library1|Mux0~275_combout\))) # (!\library1|Mux0~273_combout\ & (\library1|Mux0~838_combout\)))) # (!\Mux324~12_combout\ & (((\library1|Mux0~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~838_combout\,
	datac => \library1|Mux0~275_combout\,
	datad => \library1|Mux0~273_combout\,
	combout => \library1|Mux0~276_combout\);

-- Location: LCCOMB_X38_Y54_N30
\library1|Mux0~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~283_combout\ = (\Mux323~10_combout\ & (!\vga1|xPixel\(1) & ((\Mux325~11_combout\)))) # (!\Mux323~10_combout\ & ((\vga1|xPixel\(1)) # ((\vga1|xPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~283_combout\);

-- Location: LCCOMB_X38_Y54_N22
\library1|Mux0~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~281_combout\ = (\Mux323~10_combout\) # (\Mux325~11_combout\ $ (\vga1|xPixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux323~10_combout\,
	combout => \library1|Mux0~281_combout\);

-- Location: LCCOMB_X38_Y54_N12
\library1|Mux0~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~280_combout\ = (\vga1|yPixel\(1) & (!\vga1|xPixel\(1) & (\Mux323~10_combout\ & !\Mux325~11_combout\))) # (!\vga1|yPixel\(1) & (((!\Mux323~10_combout\ & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~280_combout\);

-- Location: LCCOMB_X38_Y54_N8
\library1|Mux0~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~282_combout\ = (\Mux324~12_combout\ & (\Mux327~14_combout\)) # (!\Mux324~12_combout\ & ((\Mux327~14_combout\ & ((\library1|Mux0~280_combout\))) # (!\Mux327~14_combout\ & (!\library1|Mux0~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~281_combout\,
	datad => \library1|Mux0~280_combout\,
	combout => \library1|Mux0~282_combout\);

-- Location: LCCOMB_X46_Y54_N12
\library1|Mux0~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~277_combout\ = (\vga1|yPixel\(1) & ((\vga1|xPixel\(1)) # (\vga1|yPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \vga1|yPixel\(0),
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~277_combout\);

-- Location: LCCOMB_X46_Y54_N6
\library1|Mux0~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~278_combout\ = (\library1|Mux0~277_combout\ & (\Mux325~11_combout\ & (\vga1|xPixel\(1) $ (!\vga1|xPixel\(0))))) # (!\library1|Mux0~277_combout\ & (\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~277_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~278_combout\);

-- Location: LCCOMB_X38_Y54_N10
\library1|Mux0~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~279_combout\ = (\Mux325~11_combout\ & ((\Mux323~10_combout\) # (\library1|Mux0~278_combout\))) # (!\Mux325~11_combout\ & (\Mux323~10_combout\ $ (!\library1|Mux0~278_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~278_combout\,
	combout => \library1|Mux0~279_combout\);

-- Location: LCCOMB_X38_Y54_N16
\library1|Mux0~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~284_combout\ = (\Mux324~12_combout\ & ((\library1|Mux0~282_combout\ & (!\library1|Mux0~283_combout\)) # (!\library1|Mux0~282_combout\ & ((\library1|Mux0~279_combout\))))) # (!\Mux324~12_combout\ & (((\library1|Mux0~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~283_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~282_combout\,
	datad => \library1|Mux0~279_combout\,
	combout => \library1|Mux0~284_combout\);

-- Location: LCCOMB_X38_Y54_N6
\library1|Mux0~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~285_combout\ = (\Mux326~14_combout\ & ((\Mux321~10_combout\) # ((\library1|Mux0~276_combout\)))) # (!\Mux326~14_combout\ & (!\Mux321~10_combout\ & ((\library1|Mux0~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~276_combout\,
	datad => \library1|Mux0~284_combout\,
	combout => \library1|Mux0~285_combout\);

-- Location: LCCOMB_X38_Y54_N18
\library1|Mux0~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~287_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~285_combout\ & ((\library1|Mux0~286_combout\))) # (!\library1|Mux0~285_combout\ & (\library1|Mux0~269_combout\)))) # (!\Mux321~10_combout\ & (((\library1|Mux0~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~269_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~286_combout\,
	datad => \library1|Mux0~285_combout\,
	combout => \library1|Mux0~287_combout\);

-- Location: LCCOMB_X38_Y56_N24
\library1|Mux0~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~215_combout\ = (\Mux326~14_combout\ & (((\Mux325~11_combout\)) # (!\Mux327~14_combout\))) # (!\Mux326~14_combout\ & (\Mux324~12_combout\ & ((\Mux327~14_combout\) # (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~215_combout\);

-- Location: LCCOMB_X38_Y56_N18
\library1|Mux0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~216_combout\ = (\Mux325~11_combout\ & (!\Mux326~14_combout\ & (\Mux327~14_combout\ $ (\Mux324~12_combout\)))) # (!\Mux325~11_combout\ & (\Mux327~14_combout\ $ (((!\Mux324~12_combout\ & \Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~216_combout\);

-- Location: LCCOMB_X38_Y56_N8
\library1|Mux0~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~217_combout\ = (\library1|Mux0~215_combout\ & (!\Mux321~10_combout\ & ((\vga1|yPixel\(1)) # (\library1|Mux0~216_combout\)))) # (!\library1|Mux0~215_combout\ & (((\Mux321~10_combout\ & !\library1|Mux0~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \library1|Mux0~215_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~216_combout\,
	combout => \library1|Mux0~217_combout\);

-- Location: LCCOMB_X38_Y50_N26
\library1|Mux0~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~237_combout\ = (\Mux324~12_combout\ & (\vga1|yPixel\(1) & (!\Mux321~10_combout\))) # (!\Mux324~12_combout\ & (((\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~237_combout\);

-- Location: LCCOMB_X38_Y50_N20
\library1|Mux0~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~236_combout\ = (\Mux321~10_combout\) # ((\vga1|yPixel\(1) & (\Mux324~12_combout\ & \Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~236_combout\);

-- Location: LCCOMB_X38_Y50_N14
\library1|Mux0~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~239_combout\ = (\Mux324~12_combout\ & (\library1|Mux0~237_combout\ & ((\Mux327~14_combout\) # (!\library1|Mux0~236_combout\)))) # (!\Mux324~12_combout\ & (!\Mux327~14_combout\ & (!\library1|Mux0~237_combout\ & \library1|Mux0~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~237_combout\,
	datad => \library1|Mux0~236_combout\,
	combout => \library1|Mux0~239_combout\);

-- Location: LCCOMB_X38_Y50_N28
\library1|Mux0~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~238_combout\ = (\library1|Mux0~237_combout\ & (\library1|Mux0~236_combout\ $ (((!\Mux327~14_combout\ & !\Mux324~12_combout\))))) # (!\library1|Mux0~237_combout\ & (\Mux327~14_combout\ & (\Mux324~12_combout\ & !\library1|Mux0~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~237_combout\,
	datad => \library1|Mux0~236_combout\,
	combout => \library1|Mux0~238_combout\);

-- Location: LCCOMB_X38_Y50_N16
\library1|Mux0~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~240_combout\ = \library1|Mux0~239_combout\ $ (((!\Mux325~11_combout\ & \library1|Mux0~238_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~239_combout\,
	datad => \library1|Mux0~238_combout\,
	combout => \library1|Mux0~240_combout\);

-- Location: LCCOMB_X39_Y56_N10
\library1|Mux0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~226_combout\ = (\Mux327~14_combout\ $ (\Mux324~12_combout\)) # (!\Mux326~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~226_combout\);

-- Location: LCCOMB_X39_Y57_N30
\library1|Mux0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~218_combout\ = (\Mux327~14_combout\ $ (\Mux326~14_combout\)) # (!\Mux324~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~218_combout\);

-- Location: LCCOMB_X40_Y54_N16
\library1|Mux0~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~219_combout\ = (\Mux327~14_combout\ & (((!\vga1|xPixel\(0))) # (!\vga1|yPixel\(1)))) # (!\Mux327~14_combout\ & ((\vga1|xPixel\(0)) # ((\vga1|yPixel\(1) & \Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~219_combout\);

-- Location: LCCOMB_X40_Y54_N26
\library1|Mux0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~220_combout\ = (\library1|Mux0~219_combout\) # (!\Mux324~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~219_combout\,
	combout => \library1|Mux0~220_combout\);

-- Location: LCCOMB_X40_Y54_N12
\library1|Mux0~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~221_combout\ = (\vga1|xPixel\(0) & (!\vga1|yPixel\(1) & !\vga1|yPixel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(1),
	datad => \vga1|yPixel\(0),
	combout => \library1|Mux0~221_combout\);

-- Location: LCCOMB_X40_Y54_N20
\library1|Mux0~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~223_combout\ = (\library1|Mux0~222_combout\ & ((\library1|Mux0~221_combout\) # ((\vga1|xPixel\(0) & \Mux326~14_combout\)))) # (!\library1|Mux0~222_combout\ & (((\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \library1|Mux0~222_combout\,
	datac => \library1|Mux0~221_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~223_combout\);

-- Location: LCCOMB_X40_Y54_N2
\library1|Mux0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~224_combout\ = (\library1|Mux0~223_combout\) # ((!\Mux327~14_combout\ & ((!\Mux324~12_combout\) # (!\vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~223_combout\,
	combout => \library1|Mux0~224_combout\);

-- Location: LCCOMB_X40_Y54_N28
\library1|Mux0~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~225_combout\ = (\Mux321~10_combout\ & (\Mux325~11_combout\)) # (!\Mux321~10_combout\ & ((\Mux325~11_combout\ & (\library1|Mux0~220_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~224_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~220_combout\,
	datad => \library1|Mux0~224_combout\,
	combout => \library1|Mux0~225_combout\);

-- Location: LCCOMB_X39_Y57_N8
\library1|Mux0~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~227_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~225_combout\ & (\library1|Mux0~226_combout\)) # (!\library1|Mux0~225_combout\ & ((!\library1|Mux0~218_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~226_combout\,
	datac => \library1|Mux0~218_combout\,
	datad => \library1|Mux0~225_combout\,
	combout => \library1|Mux0~227_combout\);

-- Location: LCCOMB_X39_Y52_N14
\library1|Mux0~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~228_combout\ = (\vga1|yPixel\(1) & ((\Mux327~14_combout\) # ((\Mux326~14_combout\ & \vga1|xPixel\(0))))) # (!\vga1|yPixel\(1) & (((\vga1|xPixel\(0) & \Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux326~14_combout\,
	datac => \vga1|xPixel\(0),
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~228_combout\);

-- Location: LCCOMB_X39_Y52_N4
\library1|Mux0~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~229_combout\ = (\library1|Mux0~228_combout\ & \Mux324~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \library1|Mux0~228_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~229_combout\);

-- Location: LCCOMB_X39_Y55_N8
\library1|Mux0~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~230_combout\ = (\library1|Mux0~804_combout\ & (!\vga1|xPixel\(0) & ((\Mux327~14_combout\)))) # (!\library1|Mux0~804_combout\ & (!\Mux327~14_combout\ & ((\vga1|xPixel\(0)) # (\vga1|yPixel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(0),
	datac => \library1|Mux0~804_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~230_combout\);

-- Location: LCCOMB_X39_Y55_N2
\library1|Mux0~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~231_combout\ = (\Mux327~14_combout\ & ((!\Mux326~14_combout\))) # (!\Mux327~14_combout\ & (!\vga1|yPixel\(1) & \Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~14_combout\,
	datac => \vga1|yPixel\(1),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~231_combout\);

-- Location: LCCOMB_X39_Y55_N24
\library1|Mux0~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~232_combout\ = (\library1|Mux0~231_combout\ & (((\library1|Mux0~230_combout\)))) # (!\library1|Mux0~231_combout\ & (\vga1|yPixel\(1) & (!\Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~230_combout\,
	datad => \library1|Mux0~231_combout\,
	combout => \library1|Mux0~232_combout\);

-- Location: LCCOMB_X39_Y57_N6
\library1|Mux0~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~233_combout\ = (\Mux321~10_combout\ & (\Mux325~11_combout\)) # (!\Mux321~10_combout\ & ((\Mux325~11_combout\ & (\library1|Mux0~229_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~232_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux325~11_combout\,
	datac => \library1|Mux0~229_combout\,
	datad => \library1|Mux0~232_combout\,
	combout => \library1|Mux0~233_combout\);

-- Location: LCCOMB_X39_Y57_N20
\library1|Mux0~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~234_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~233_combout\ & (\library1|Mux0~226_combout\)) # (!\library1|Mux0~233_combout\ & ((!\library1|Mux0~218_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~226_combout\,
	datac => \library1|Mux0~218_combout\,
	datad => \library1|Mux0~233_combout\,
	combout => \library1|Mux0~234_combout\);

-- Location: LCCOMB_X39_Y57_N10
\library1|Mux0~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~235_combout\ = (\vga1|xPixel\(1) & ((\Mux323~10_combout\) # ((\library1|Mux0~227_combout\)))) # (!\vga1|xPixel\(1) & (!\Mux323~10_combout\ & ((\library1|Mux0~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~227_combout\,
	datad => \library1|Mux0~234_combout\,
	combout => \library1|Mux0~235_combout\);

-- Location: LCCOMB_X39_Y57_N4
\library1|Mux0~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~241_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~235_combout\ & ((\library1|Mux0~240_combout\))) # (!\library1|Mux0~235_combout\ & (\library1|Mux0~217_combout\)))) # (!\Mux323~10_combout\ & (((\library1|Mux0~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~217_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~240_combout\,
	datad => \library1|Mux0~235_combout\,
	combout => \library1|Mux0~241_combout\);

-- Location: LCCOMB_X38_Y53_N6
\library1|Mux0~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~264_combout\ = (\Mux325~11_combout\ & (\vga1|xPixel\(1) $ (\Mux324~12_combout\ $ (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~264_combout\);

-- Location: LCCOMB_X38_Y53_N24
\library1|Mux0~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~265_combout\ = (\Mux326~14_combout\ & (!\Mux321~10_combout\ & \library1|Mux0~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~264_combout\,
	combout => \library1|Mux0~265_combout\);

-- Location: LCCOMB_X38_Y53_N22
\library1|Mux0~805\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~805_combout\ = (\Mux327~14_combout\ & ((\Mux325~11_combout\ & (\vga1|xPixel\(1))) # (!\Mux325~11_combout\ & ((\Mux324~12_combout\))))) # (!\Mux327~14_combout\ & (\vga1|xPixel\(1) & (\Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~805_combout\);

-- Location: LCCOMB_X38_Y53_N2
\library1|Mux0~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~262_combout\ = (\Mux327~14_combout\ & (\vga1|xPixel\(1) $ (!\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~262_combout\);

-- Location: LCCOMB_X38_Y53_N0
\library1|Mux0~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~263_combout\ = (!\Mux326~14_combout\ & ((\Mux321~10_combout\ & (!\library1|Mux0~805_combout\ & \library1|Mux0~262_combout\)) # (!\Mux321~10_combout\ & (\library1|Mux0~805_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~805_combout\,
	datad => \library1|Mux0~262_combout\,
	combout => \library1|Mux0~263_combout\);

-- Location: LCCOMB_X39_Y55_N10
\library1|Mux0~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~256_combout\ = (\Mux321~10_combout\ & (!\Mux326~14_combout\ & ((\Mux324~12_combout\) # (!\Mux325~11_combout\)))) # (!\Mux321~10_combout\ & (!\Mux324~12_combout\ & ((\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~256_combout\);

-- Location: LCCOMB_X39_Y56_N4
\library1|Mux0~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~258_combout\ = (\Mux326~14_combout\ & ((\Mux321~10_combout\) # ((!\Mux325~11_combout\)))) # (!\Mux326~14_combout\ & ((\Mux324~12_combout\ & (!\Mux321~10_combout\)) # (!\Mux324~12_combout\ & ((\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~258_combout\);

-- Location: LCCOMB_X39_Y56_N18
\library1|Mux0~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~257_combout\ = (\Mux325~11_combout\ & (((!\Mux326~14_combout\) # (!\Mux324~12_combout\)))) # (!\Mux325~11_combout\ & ((\Mux321~10_combout\ & ((!\Mux326~14_combout\))) # (!\Mux321~10_combout\ & ((\Mux324~12_combout\) # 
-- (\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~257_combout\);

-- Location: LCCOMB_X39_Y56_N30
\library1|Mux0~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~259_combout\ = (\vga1|xPixel\(1) & (\Mux327~14_combout\)) # (!\vga1|xPixel\(1) & ((\Mux327~14_combout\ & ((!\library1|Mux0~257_combout\))) # (!\Mux327~14_combout\ & (!\library1|Mux0~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~258_combout\,
	datad => \library1|Mux0~257_combout\,
	combout => \library1|Mux0~259_combout\);

-- Location: LCCOMB_X40_Y56_N14
\library1|Mux0~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~260_combout\ = (\Mux326~14_combout\ & ((\Mux321~10_combout\ & (!\Mux324~12_combout\ & \Mux325~11_combout\)) # (!\Mux321~10_combout\ & ((!\Mux325~11_combout\))))) # (!\Mux326~14_combout\ & (((\Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux326~14_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~260_combout\);

-- Location: LCCOMB_X39_Y57_N0
\library1|Mux0~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~261_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~259_combout\ & ((!\library1|Mux0~260_combout\))) # (!\library1|Mux0~259_combout\ & (\library1|Mux0~256_combout\)))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~256_combout\,
	datac => \library1|Mux0~259_combout\,
	datad => \library1|Mux0~260_combout\,
	combout => \library1|Mux0~261_combout\);

-- Location: LCCOMB_X39_Y57_N22
\library1|Mux0~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~266_combout\ = (\Mux323~10_combout\ & (((\library1|Mux0~261_combout\)))) # (!\Mux323~10_combout\ & ((\library1|Mux0~265_combout\) # ((\library1|Mux0~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~265_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~263_combout\,
	datad => \library1|Mux0~261_combout\,
	combout => \library1|Mux0~266_combout\);

-- Location: LCCOMB_X39_Y56_N14
\library1|Mux0~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~253_combout\ = (\Mux324~12_combout\ & (((\Mux321~10_combout\ & !\Mux326~14_combout\)))) # (!\Mux324~12_combout\ & (\Mux321~10_combout\ $ (((\Mux325~11_combout\) # (\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~253_combout\);

-- Location: LCCOMB_X39_Y56_N16
\library1|Mux0~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~252_combout\ = (\Mux321~10_combout\ & (\Mux326~14_combout\ & ((\Mux324~12_combout\) # (!\Mux325~11_combout\)))) # (!\Mux321~10_combout\ & ((\Mux325~11_combout\) # ((\Mux324~12_combout\ & !\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~252_combout\);

-- Location: LCCOMB_X39_Y56_N24
\library1|Mux0~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~254_combout\ = (\Mux327~14_combout\ & ((\library1|Mux0~252_combout\))) # (!\Mux327~14_combout\ & (\library1|Mux0~253_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datac => \library1|Mux0~253_combout\,
	datad => \library1|Mux0~252_combout\,
	combout => \library1|Mux0~254_combout\);

-- Location: LCCOMB_X39_Y56_N28
\library1|Mux0~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~242_combout\ = (\Mux321~10_combout\ & (\vga1|xPixel\(0))) # (!\Mux321~10_combout\ & ((\library1|Mux0~226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~226_combout\,
	combout => \library1|Mux0~242_combout\);

-- Location: LCCOMB_X39_Y56_N8
\library1|Mux0~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~244_combout\ = (\Mux325~11_combout\ & (((!\library1|Mux0~242_combout\)))) # (!\Mux325~11_combout\ & (\Mux326~14_combout\ & ((\library1|Mux0~242_combout\) # (!\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux326~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~242_combout\,
	combout => \library1|Mux0~244_combout\);

-- Location: LCCOMB_X39_Y56_N6
\library1|Mux0~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~243_combout\ = (\Mux326~14_combout\ & (\Mux325~11_combout\ & ((\library1|Mux0~242_combout\)))) # (!\Mux326~14_combout\ & ((\Mux324~12_combout\) # ((\Mux325~11_combout\ & \library1|Mux0~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~242_combout\,
	combout => \library1|Mux0~243_combout\);

-- Location: LCCOMB_X39_Y56_N2
\library1|Mux0~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~245_combout\ = (\library1|Mux0~243_combout\ & (((!\library1|Mux0~244_combout\)))) # (!\library1|Mux0~243_combout\ & (\Mux321~10_combout\ & ((\library1|Mux0~244_combout\) # (!\Mux327~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \library1|Mux0~244_combout\,
	datad => \library1|Mux0~243_combout\,
	combout => \library1|Mux0~245_combout\);

-- Location: LCCOMB_X38_Y56_N16
\library1|Mux0~839\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~839_combout\ = (\Mux327~14_combout\ & (((!\Mux324~12_combout\ & !\Mux321~10_combout\)) # (!\Mux326~14_combout\))) # (!\Mux327~14_combout\ & (\Mux326~14_combout\ $ (((\Mux324~12_combout\ & !\Mux321~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~839_combout\);

-- Location: LCCOMB_X38_Y56_N30
\library1|Mux0~840\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~840_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~839_combout\) # ((!\Mux324~12_combout\ & \Mux325~11_combout\)))) # (!\Mux321~10_combout\ & (\library1|Mux0~839_combout\ & ((\Mux324~12_combout\) # (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~839_combout\,
	combout => \library1|Mux0~840_combout\);

-- Location: LCCOMB_X38_Y56_N4
\library1|Mux0~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~249_combout\ = (\Mux325~11_combout\ $ (!\Mux326~14_combout\)) # (!\Mux324~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~249_combout\);

-- Location: LCCOMB_X38_Y56_N26
\library1|Mux0~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~246_combout\ = (\Mux325~11_combout\ & (((!\Mux324~12_combout\ & !\Mux326~14_combout\)))) # (!\Mux325~11_combout\ & ((\Mux324~12_combout\) # ((\vga1|xPixel\(0) & \Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~246_combout\);

-- Location: LCCOMB_X38_Y56_N20
\library1|Mux0~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~247_combout\ = (\Mux327~14_combout\ & (\Mux324~12_combout\ & !\Mux326~14_combout\)) # (!\Mux327~14_combout\ & (!\Mux324~12_combout\ & \Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~247_combout\);

-- Location: LCCOMB_X38_Y56_N10
\library1|Mux0~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~248_combout\ = (\Mux321~10_combout\ & (((\Mux327~14_combout\)))) # (!\Mux321~10_combout\ & ((\Mux325~11_combout\ & (\Mux327~14_combout\ $ (\library1|Mux0~247_combout\))) # (!\Mux325~11_combout\ & (\Mux327~14_combout\ & 
-- \library1|Mux0~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux325~11_combout\,
	datac => \Mux327~14_combout\,
	datad => \library1|Mux0~247_combout\,
	combout => \library1|Mux0~248_combout\);

-- Location: LCCOMB_X38_Y56_N2
\library1|Mux0~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~250_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~248_combout\ & (\library1|Mux0~249_combout\)) # (!\library1|Mux0~248_combout\ & ((\library1|Mux0~246_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~249_combout\,
	datac => \library1|Mux0~246_combout\,
	datad => \library1|Mux0~248_combout\,
	combout => \library1|Mux0~250_combout\);

-- Location: LCCOMB_X38_Y56_N12
\library1|Mux0~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~251_combout\ = (\vga1|xPixel\(1) & (\Mux323~10_combout\)) # (!\vga1|xPixel\(1) & ((\Mux323~10_combout\ & (!\library1|Mux0~840_combout\)) # (!\Mux323~10_combout\ & ((\library1|Mux0~250_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~840_combout\,
	datad => \library1|Mux0~250_combout\,
	combout => \library1|Mux0~251_combout\);

-- Location: LCCOMB_X39_Y57_N18
\library1|Mux0~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~255_combout\ = (\vga1|xPixel\(1) & ((\library1|Mux0~251_combout\ & (\library1|Mux0~254_combout\)) # (!\library1|Mux0~251_combout\ & ((\library1|Mux0~245_combout\))))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~254_combout\,
	datac => \library1|Mux0~245_combout\,
	datad => \library1|Mux0~251_combout\,
	combout => \library1|Mux0~255_combout\);

-- Location: LCCOMB_X39_Y57_N16
\library1|Mux0~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~267_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~255_combout\))) # (!\vga1|yPixel\(1) & (\library1|Mux0~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \library1|Mux0~266_combout\,
	datad => \library1|Mux0~255_combout\,
	combout => \library1|Mux0~267_combout\);

-- Location: LCCOMB_X39_Y57_N2
\library1|Mux0~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~268_combout\ = (\vga1|yPixel\(2) & (\Mux322~12_combout\)) # (!\vga1|yPixel\(2) & ((\Mux322~12_combout\ & (\library1|Mux0~241_combout\)) # (!\Mux322~12_combout\ & ((\library1|Mux0~267_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~241_combout\,
	datad => \library1|Mux0~267_combout\,
	combout => \library1|Mux0~268_combout\);

-- Location: LCCOMB_X39_Y57_N12
\library1|Mux0~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~288_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~268_combout\ & ((\library1|Mux0~287_combout\))) # (!\library1|Mux0~268_combout\ & (\library1|Mux0~214_combout\)))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \library1|Mux0~214_combout\,
	datac => \library1|Mux0~287_combout\,
	datad => \library1|Mux0~268_combout\,
	combout => \library1|Mux0~288_combout\);

-- Location: LCCOMB_X39_Y53_N26
\library1|Mux0~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~375_combout\ = (\vga1|yPixel\(2) & (!\Mux325~11_combout\ & ((\Mux326~14_combout\) # (!\vga1|yPixel\(1))))) # (!\vga1|yPixel\(2) & (!\Mux326~14_combout\ & (\Mux325~11_combout\ & \vga1|yPixel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux326~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~375_combout\);

-- Location: LCCOMB_X39_Y53_N28
\library1|Mux0~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~376_combout\ = \Mux326~14_combout\ $ (\vga1|yPixel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux326~14_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~376_combout\);

-- Location: LCCOMB_X39_Y53_N10
\library1|Mux0~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~377_combout\ = (\Mux324~12_combout\ & (\library1|Mux0~375_combout\ & (!\Mux321~10_combout\))) # (!\Mux324~12_combout\ & (((\Mux321~10_combout\ & !\library1|Mux0~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~375_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~376_combout\,
	combout => \library1|Mux0~377_combout\);

-- Location: LCCOMB_X39_Y53_N30
\library1|Mux0~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~379_combout\ = (!\vga1|yPixel\(2) & ((\vga1|yPixel\(1) & (\Mux326~14_combout\ & !\Mux324~12_combout\)) # (!\vga1|yPixel\(1) & ((\Mux324~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~379_combout\);

-- Location: LCCOMB_X39_Y53_N0
\library1|Mux0~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~378_combout\ = (\Mux324~12_combout\ & ((\Mux326~14_combout\) # (\vga1|yPixel\(1) $ (\vga1|yPixel\(2))))) # (!\Mux324~12_combout\ & (\Mux326~14_combout\ $ (((\vga1|yPixel\(1)) # (\vga1|yPixel\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~378_combout\);

-- Location: LCCOMB_X39_Y53_N8
\library1|Mux0~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~380_combout\ = (\Mux325~11_combout\ & ((\Mux321~10_combout\) # ((!\library1|Mux0~378_combout\)))) # (!\Mux325~11_combout\ & (!\Mux321~10_combout\ & (\library1|Mux0~379_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~379_combout\,
	datad => \library1|Mux0~378_combout\,
	combout => \library1|Mux0~380_combout\);

-- Location: LCCOMB_X39_Y53_N14
\library1|Mux0~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~381_combout\ = (\Mux321~10_combout\ & (((!\Mux324~12_combout\ & \library1|Mux0~380_combout\)) # (!\library1|Mux0~376_combout\))) # (!\Mux321~10_combout\ & (((\library1|Mux0~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~380_combout\,
	datad => \library1|Mux0~376_combout\,
	combout => \library1|Mux0~381_combout\);

-- Location: LCCOMB_X39_Y53_N12
\library1|Mux0~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~382_combout\ = (\library1|Mux0~374_combout\ & ((\Mux322~12_combout\ & (\library1|Mux0~377_combout\)) # (!\Mux322~12_combout\ & ((\library1|Mux0~381_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~377_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~381_combout\,
	datad => \library1|Mux0~374_combout\,
	combout => \library1|Mux0~382_combout\);

-- Location: LCCOMB_X39_Y58_N28
\library1|Mux0~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~372_combout\ = (\Mux325~11_combout\ & ((\vga1|yPixel\(2) & ((\Mux324~12_combout\) # (\vga1|yPixel\(1)))) # (!\vga1|yPixel\(2) & (\Mux324~12_combout\ & \vga1|yPixel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \vga1|yPixel\(1),
	combout => \library1|Mux0~372_combout\);

-- Location: LCCOMB_X39_Y58_N0
\library1|Mux0~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~368_combout\ = (!\vga1|yPixel\(0) & ((\Mux322~13_combout\) # (\Mux324~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux322~13_combout\,
	datac => \vga1|yPixel\(0),
	datad => \Mux324~11_combout\,
	combout => \library1|Mux0~368_combout\);

-- Location: LCCOMB_X39_Y58_N22
\library1|Mux0~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~369_combout\ = (\vga1|yPixel\(1) & (((\Mux325~11_combout\)))) # (!\vga1|yPixel\(1) & ((\Mux325~11_combout\ & (\vga1|xPixel\(0))) # (!\Mux325~11_combout\ & ((\library1|Mux0~368_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~368_combout\,
	combout => \library1|Mux0~369_combout\);

-- Location: LCCOMB_X39_Y58_N24
\library1|Mux0~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~370_combout\ = (\vga1|yPixel\(2) & (\Mux325~11_combout\)) # (!\vga1|yPixel\(2) & (\library1|Mux0~369_combout\ & ((\Mux324~12_combout\) # (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~369_combout\,
	datad => \vga1|yPixel\(2),
	combout => \library1|Mux0~370_combout\);

-- Location: LCCOMB_X39_Y58_N18
\library1|Mux0~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~371_combout\ = (\Mux323~10_combout\ & (\Mux326~14_combout\)) # (!\Mux323~10_combout\ & ((\Mux325~11_combout\ & ((!\library1|Mux0~370_combout\))) # (!\Mux325~11_combout\ & ((\Mux326~14_combout\) # (\library1|Mux0~370_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux326~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~370_combout\,
	combout => \library1|Mux0~371_combout\);

-- Location: LCCOMB_X39_Y58_N30
\library1|Mux0~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~373_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~371_combout\ & (\library1|Mux0~372_combout\)) # (!\library1|Mux0~371_combout\ & ((\library1|Mux0~367_combout\))))) # (!\Mux323~10_combout\ & (((\library1|Mux0~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \library1|Mux0~372_combout\,
	datac => \library1|Mux0~367_combout\,
	datad => \library1|Mux0~371_combout\,
	combout => \library1|Mux0~373_combout\);

-- Location: LCCOMB_X38_Y55_N22
\library1|Mux0~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~362_combout\ = (\vga1|yPixel\(1) & ((\Mux322~13_combout\) # (\Mux324~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datac => \Mux322~13_combout\,
	datad => \Mux324~11_combout\,
	combout => \library1|Mux0~362_combout\);

-- Location: LCCOMB_X38_Y57_N22
\library1|Mux0~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~363_combout\ = (\vga1|yPixel\(2) & (((\Mux326~14_combout\)))) # (!\vga1|yPixel\(2) & (\library1|Mux0~362_combout\ & ((\Mux325~11_combout\) # (\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~362_combout\,
	combout => \library1|Mux0~363_combout\);

-- Location: LCCOMB_X38_Y56_N0
\library1|Mux0~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~361_combout\ = (\Mux325~11_combout\ & (((!\vga1|yPixel\(1) & !\vga1|xPixel\(0))) # (!\Mux324~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux325~11_combout\,
	datac => \Mux324~12_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~361_combout\);

-- Location: LCCOMB_X38_Y57_N4
\library1|Mux0~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~364_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~363_combout\ & (!\library1|Mux0~289_combout\)) # (!\library1|Mux0~363_combout\ & ((\library1|Mux0~361_combout\))))) # (!\vga1|yPixel\(2) & (((\library1|Mux0~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~289_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~363_combout\,
	datad => \library1|Mux0~361_combout\,
	combout => \library1|Mux0~364_combout\);

-- Location: LCCOMB_X38_Y53_N8
\library1|Mux0~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~359_combout\ = (\Mux324~12_combout\) # ((\vga1|yPixel\(1) & ((!\Mux323~10_combout\))) # (!\vga1|yPixel\(1) & (\vga1|yPixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~359_combout\);

-- Location: LCCOMB_X38_Y57_N20
\library1|Mux0~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~357_combout\ = (\Mux323~10_combout\ & (((!\Mux325~11_combout\)))) # (!\Mux323~10_combout\ & (\vga1|yPixel\(2) & (\vga1|yPixel\(1) $ (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~357_combout\);

-- Location: LCCOMB_X38_Y57_N30
\library1|Mux0~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~358_combout\ = \Mux325~11_combout\ $ (((\Mux324~12_combout\ & (!\Mux326~14_combout\ & \library1|Mux0~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \library1|Mux0~357_combout\,
	combout => \library1|Mux0~358_combout\);

-- Location: LCCOMB_X38_Y55_N20
\library1|Mux0~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~356_combout\ = (\vga1|yPixel\(1) & (\vga1|yPixel\(2) & (\Mux324~12_combout\ $ (\Mux323~10_combout\)))) # (!\vga1|yPixel\(1) & (!\vga1|yPixel\(2) & (\Mux324~12_combout\ & \Mux323~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~356_combout\);

-- Location: LCCOMB_X38_Y57_N0
\library1|Mux0~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~360_combout\ = (\Mux326~14_combout\ & ((\library1|Mux0~358_combout\ & (!\library1|Mux0~359_combout\)) # (!\library1|Mux0~358_combout\ & ((\library1|Mux0~356_combout\))))) # (!\Mux326~14_combout\ & (((\library1|Mux0~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \library1|Mux0~359_combout\,
	datac => \library1|Mux0~358_combout\,
	datad => \library1|Mux0~356_combout\,
	combout => \library1|Mux0~360_combout\);

-- Location: LCCOMB_X38_Y57_N2
\library1|Mux0~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~365_combout\ = (\Mux321~10_combout\ & (!\Mux323~10_combout\ & (\library1|Mux0~364_combout\))) # (!\Mux321~10_combout\ & (((\library1|Mux0~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~364_combout\,
	datad => \library1|Mux0~360_combout\,
	combout => \library1|Mux0~365_combout\);

-- Location: LCCOMB_X38_Y57_N24
\library1|Mux0~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~366_combout\ = (!\Mux322~12_combout\ & \library1|Mux0~365_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datad => \library1|Mux0~365_combout\,
	combout => \library1|Mux0~366_combout\);

-- Location: LCCOMB_X38_Y57_N8
\library1|Mux0~829\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~829_combout\ = (!\vga1|xPixel\(1) & ((\library1|Mux0~366_combout\) # ((\library1|Mux0~136_combout\ & \library1|Mux0~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \library1|Mux0~136_combout\,
	datac => \library1|Mux0~373_combout\,
	datad => \library1|Mux0~366_combout\,
	combout => \library1|Mux0~829_combout\);

-- Location: LCCOMB_X41_Y54_N22
\library1|Mux0~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~383_combout\ = (\Mux322~12_combout\ & (\vga1|yPixel\(2) $ (((\Mux326~14_combout\))))) # (!\Mux322~12_combout\ & (!\Mux325~11_combout\ & (\vga1|yPixel\(2) $ (\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~383_combout\);

-- Location: LCCOMB_X41_Y54_N24
\library1|Mux0~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~384_combout\ = (\Mux324~12_combout\ & ((\vga1|yPixel\(2) & ((!\Mux326~14_combout\))) # (!\vga1|yPixel\(2) & (!\Mux325~11_combout\ & \Mux326~14_combout\)))) # (!\Mux324~12_combout\ & (\vga1|yPixel\(2) $ (((\Mux325~11_combout\ & 
-- !\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~384_combout\);

-- Location: LCCOMB_X41_Y54_N26
\library1|Mux0~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~385_combout\ = (\Mux323~10_combout\ & (((\Mux324~12_combout\)))) # (!\Mux323~10_combout\ & (\Mux322~12_combout\ & (\Mux324~12_combout\ $ (\library1|Mux0~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~384_combout\,
	combout => \library1|Mux0~385_combout\);

-- Location: LCCOMB_X41_Y54_N0
\library1|Mux0~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~386_combout\ = (\Mux322~12_combout\) # (\vga1|yPixel\(2) $ (\Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~386_combout\);

-- Location: LCCOMB_X41_Y54_N2
\library1|Mux0~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~387_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~385_combout\ & ((!\library1|Mux0~386_combout\))) # (!\library1|Mux0~385_combout\ & (!\library1|Mux0~383_combout\)))) # (!\Mux323~10_combout\ & (((\library1|Mux0~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~383_combout\,
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~385_combout\,
	datad => \library1|Mux0~386_combout\,
	combout => \library1|Mux0~387_combout\);

-- Location: LCCOMB_X41_Y54_N12
\library1|Mux0~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~388_combout\ = (\vga1|xPixel\(1) & (\Mux321~10_combout\ & \library1|Mux0~387_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~387_combout\,
	combout => \library1|Mux0~388_combout\);

-- Location: LCCOMB_X38_Y57_N6
\library1|Mux0~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~389_combout\ = (\Mux321~10_combout\ & ((\Mux324~12_combout\ $ (!\vga1|yPixel\(2))))) # (!\Mux321~10_combout\ & ((\vga1|yPixel\(1)) # ((\vga1|yPixel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \vga1|yPixel\(2),
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~389_combout\);

-- Location: LCCOMB_X38_Y57_N16
\library1|Mux0~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~390_combout\ = (\Mux326~14_combout\ & (((!\vga1|yPixel\(2) & \Mux321~10_combout\)))) # (!\Mux326~14_combout\ & (\library1|Mux0~389_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~389_combout\,
	datab => \vga1|yPixel\(2),
	datac => \Mux326~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~390_combout\);

-- Location: LCCOMB_X39_Y58_N12
\library1|Mux0~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~396_combout\ = (\vga1|xPixel\(0) & ((\Mux324~11_combout\) # (\Mux322~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux324~11_combout\,
	datac => \Mux322~13_combout\,
	combout => \library1|Mux0~396_combout\);

-- Location: LCCOMB_X39_Y58_N10
\library1|Mux0~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~397_combout\ = (\vga1|yPixel\(2) & (((\Mux324~12_combout\)))) # (!\vga1|yPixel\(2) & (\vga1|yPixel\(1) & ((\library1|Mux0~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~396_combout\,
	combout => \library1|Mux0~397_combout\);

-- Location: LCCOMB_X38_Y57_N12
\library1|Mux0~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~398_combout\ = (\Mux321~10_combout\ & (((\vga1|yPixel\(2))))) # (!\Mux321~10_combout\ & (((!\library1|Mux0~397_combout\)) # (!\Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux326~14_combout\,
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~397_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~398_combout\);

-- Location: LCCOMB_X38_Y57_N14
\library1|Mux0~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~399_combout\ = (\library1|Mux0~398_combout\ & (((\Mux326~14_combout\) # (!\Mux321~10_combout\)))) # (!\library1|Mux0~398_combout\ & (\Mux321~10_combout\ & ((\Mux324~12_combout\) # (!\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~398_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux326~14_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~399_combout\);

-- Location: LCCOMB_X39_Y52_N8
\library1|Mux0~831\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~831_combout\ = (\vga1|yPixel\(2) & ((\Mux326~14_combout\ & ((!\Mux324~12_combout\))) # (!\Mux326~14_combout\ & (!\Mux321~10_combout\)))) # (!\vga1|yPixel\(2) & (!\Mux324~12_combout\ & (\Mux326~14_combout\ $ (\Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux326~14_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux324~12_combout\,
	combout => \library1|Mux0~831_combout\);

-- Location: LCCOMB_X39_Y52_N18
\library1|Mux0~832\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~832_combout\ = (\library1|Mux0~831_combout\) # ((!\vga1|yPixel\(2) & (!\vga1|yPixel\(1) & \Mux321~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~831_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~832_combout\);

-- Location: LCCOMB_X38_Y53_N18
\library1|Mux0~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~391_combout\ = (\Mux326~14_combout\ & ((\Mux324~12_combout\) # ((!\vga1|xPixel\(0) & \Mux321~10_combout\)))) # (!\Mux326~14_combout\ & (((\Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(0),
	datab => \Mux324~12_combout\,
	datac => \Mux321~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~391_combout\);

-- Location: LCCOMB_X38_Y53_N12
\library1|Mux0~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~392_combout\ = (\vga1|yPixel\(2) & (\vga1|yPixel\(1))) # (!\vga1|yPixel\(2) & ((\Mux324~12_combout\ & ((!\library1|Mux0~391_combout\))) # (!\Mux324~12_combout\ & (\vga1|yPixel\(1) & \library1|Mux0~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~391_combout\,
	combout => \library1|Mux0~392_combout\);

-- Location: LCCOMB_X38_Y53_N10
\library1|Mux0~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~393_combout\ = (\Mux326~14_combout\ & ((\Mux321~10_combout\ & (!\Mux324~12_combout\)) # (!\Mux321~10_combout\ & ((\library1|Mux0~392_combout\))))) # (!\Mux326~14_combout\ & (\Mux324~12_combout\ & (\Mux321~10_combout\ $ 
-- (\library1|Mux0~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux326~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~392_combout\,
	combout => \library1|Mux0~393_combout\);

-- Location: LCCOMB_X38_Y53_N4
\library1|Mux0~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~394_combout\ = (\vga1|yPixel\(2) & ((\library1|Mux0~393_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~392_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~392_combout\,
	datac => \vga1|yPixel\(2),
	datad => \library1|Mux0~393_combout\,
	combout => \library1|Mux0~394_combout\);

-- Location: LCCOMB_X38_Y57_N10
\library1|Mux0~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~395_combout\ = (\Mux322~12_combout\ & (((\Mux325~11_combout\)))) # (!\Mux322~12_combout\ & ((\Mux325~11_combout\ & (!\library1|Mux0~832_combout\)) # (!\Mux325~11_combout\ & ((\library1|Mux0~394_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~832_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~394_combout\,
	combout => \library1|Mux0~395_combout\);

-- Location: LCCOMB_X38_Y57_N28
\library1|Mux0~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~400_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~395_combout\ & ((\library1|Mux0~399_combout\))) # (!\library1|Mux0~395_combout\ & (!\library1|Mux0~390_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~390_combout\,
	datac => \library1|Mux0~399_combout\,
	datad => \library1|Mux0~395_combout\,
	combout => \library1|Mux0~400_combout\);

-- Location: LCCOMB_X38_Y57_N18
\library1|Mux0~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~401_combout\ = (\library1|Mux0~388_combout\) # ((!\vga1|xPixel\(1) & (!\Mux323~10_combout\ & \library1|Mux0~400_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux323~10_combout\,
	datac => \library1|Mux0~388_combout\,
	datad => \library1|Mux0~400_combout\,
	combout => \library1|Mux0~401_combout\);

-- Location: LCCOMB_X38_Y57_N26
\library1|Mux0~830\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~830_combout\ = (\Mux327~14_combout\ & (((\library1|Mux0~829_combout\)))) # (!\Mux327~14_combout\ & ((\library1|Mux0~382_combout\) # ((\library1|Mux0~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \library1|Mux0~382_combout\,
	datac => \library1|Mux0~829_combout\,
	datad => \library1|Mux0~401_combout\,
	combout => \library1|Mux0~830_combout\);

-- Location: LCCOMB_X38_Y56_N6
\library1|Mux0~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~307_combout\ = (\Mux326~14_combout\ & ((\Mux322~12_combout\ & (\Mux324~12_combout\ & !\Mux323~10_combout\)) # (!\Mux322~12_combout\ & (!\Mux324~12_combout\ & \Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~307_combout\);

-- Location: LCCOMB_X38_Y56_N14
\library1|Mux0~835\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~835_combout\ = (\Mux321~10_combout\ & (!\Mux327~14_combout\ & (\Mux325~11_combout\ & \library1|Mux0~307_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~307_combout\,
	combout => \library1|Mux0~835_combout\);

-- Location: LCCOMB_X45_Y51_N24
\library1|Mux0~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~305_combout\ = (!\Mux327~14_combout\ & (!\Mux324~12_combout\ & \library1|Mux0~304_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \library1|Mux0~304_combout\,
	combout => \library1|Mux0~305_combout\);

-- Location: LCCOMB_X45_Y57_N16
\library1|Mux0~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~290_combout\ = (\Mux322~12_combout\ & (\library1|Mux0~289_combout\ & (!\Mux327~14_combout\ & \Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~289_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~290_combout\);

-- Location: LCCOMB_X45_Y57_N2
\library1|Mux0~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~297_combout\ = (\Mux325~11_combout\ & (((!\Mux324~12_combout\)))) # (!\Mux325~11_combout\ & (!\Mux326~14_combout\ & (\Mux327~14_combout\ $ (\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~297_combout\);

-- Location: LCCOMB_X45_Y57_N26
\library1|Mux0~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~301_combout\ = (\Mux327~14_combout\ & (!\Mux324~12_combout\ & (!\Mux325~11_combout\ & !\Mux326~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~301_combout\);

-- Location: LCCOMB_X45_Y57_N8
\library1|Mux0~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~298_combout\ = (\Mux327~14_combout\ & (\Mux325~11_combout\ & ((!\Mux326~14_combout\) # (!\Mux324~12_combout\)))) # (!\Mux327~14_combout\ & (\Mux324~12_combout\ & ((\Mux325~11_combout\) # (!\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~298_combout\);

-- Location: LCCOMB_X45_Y57_N18
\library1|Mux0~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~299_combout\ = (!\Mux327~14_combout\ & (\Mux324~12_combout\ & (\Mux325~11_combout\ $ (\Mux326~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~299_combout\);

-- Location: LCCOMB_X45_Y57_N24
\library1|Mux0~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~300_combout\ = (\Mux322~12_combout\ & (\vga1|yPixel\(1))) # (!\Mux322~12_combout\ & ((\vga1|yPixel\(1) & (\library1|Mux0~298_combout\)) # (!\vga1|yPixel\(1) & ((\library1|Mux0~299_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~298_combout\,
	datad => \library1|Mux0~299_combout\,
	combout => \library1|Mux0~300_combout\);

-- Location: LCCOMB_X45_Y57_N4
\library1|Mux0~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~302_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~300_combout\ & ((!\library1|Mux0~301_combout\))) # (!\library1|Mux0~300_combout\ & (!\library1|Mux0~297_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~297_combout\,
	datac => \library1|Mux0~301_combout\,
	datad => \library1|Mux0~300_combout\,
	combout => \library1|Mux0~302_combout\);

-- Location: LCCOMB_X45_Y57_N10
\library1|Mux0~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~291_combout\ = (\library1|Mux0~222_combout\ & (\Mux325~11_combout\ & \Mux326~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \library1|Mux0~222_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~291_combout\);

-- Location: LCCOMB_X45_Y57_N30
\library1|Mux0~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~295_combout\ = (\Mux327~14_combout\ & (\Mux326~14_combout\ & (\Mux324~12_combout\ $ (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~295_combout\);

-- Location: LCCOMB_X45_Y57_N14
\library1|Mux0~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~293_combout\ = (\Mux324~12_combout\ & ((\Mux325~11_combout\ & (\Mux327~14_combout\)) # (!\Mux325~11_combout\ & ((\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~293_combout\);

-- Location: LCCOMB_X45_Y57_N28
\library1|Mux0~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~292_combout\ = (\Mux325~11_combout\ & (((\Mux327~14_combout\ & !\Mux324~12_combout\)) # (!\Mux326~14_combout\))) # (!\Mux325~11_combout\ & (\Mux324~12_combout\ $ (((\Mux327~14_combout\ & !\Mux326~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux326~14_combout\,
	combout => \library1|Mux0~292_combout\);

-- Location: LCCOMB_X45_Y57_N20
\library1|Mux0~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~294_combout\ = (\Mux322~12_combout\ & (\vga1|yPixel\(1))) # (!\Mux322~12_combout\ & ((\vga1|yPixel\(1) & ((\library1|Mux0~292_combout\))) # (!\vga1|yPixel\(1) & (\library1|Mux0~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~293_combout\,
	datad => \library1|Mux0~292_combout\,
	combout => \library1|Mux0~294_combout\);

-- Location: LCCOMB_X45_Y57_N0
\library1|Mux0~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~296_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~294_combout\ & ((\library1|Mux0~295_combout\))) # (!\library1|Mux0~294_combout\ & (\library1|Mux0~291_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~291_combout\,
	datab => \Mux322~12_combout\,
	datac => \library1|Mux0~295_combout\,
	datad => \library1|Mux0~294_combout\,
	combout => \library1|Mux0~296_combout\);

-- Location: LCCOMB_X45_Y57_N6
\library1|Mux0~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~303_combout\ = (\Mux323~10_combout\ & ((\Mux321~10_combout\) # ((\library1|Mux0~296_combout\)))) # (!\Mux323~10_combout\ & (!\Mux321~10_combout\ & (\library1|Mux0~302_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~302_combout\,
	datad => \library1|Mux0~296_combout\,
	combout => \library1|Mux0~303_combout\);

-- Location: LCCOMB_X45_Y57_N12
\library1|Mux0~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~306_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~303_combout\ & (\library1|Mux0~305_combout\)) # (!\library1|Mux0~303_combout\ & ((\library1|Mux0~290_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~305_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~290_combout\,
	datad => \library1|Mux0~303_combout\,
	combout => \library1|Mux0~306_combout\);

-- Location: LCCOMB_X45_Y57_N22
\library1|Mux0~836\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~836_combout\ = (\vga1|xPixel\(1) & (((\library1|Mux0~835_combout\)))) # (!\vga1|xPixel\(1) & ((\vga1|yPixel\(2) & ((\library1|Mux0~306_combout\))) # (!\vga1|yPixel\(2) & (\library1|Mux0~835_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|yPixel\(2),
	datac => \library1|Mux0~835_combout\,
	datad => \library1|Mux0~306_combout\,
	combout => \library1|Mux0~836_combout\);

-- Location: LCCOMB_X42_Y54_N4
\library1|Mux0~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~352_combout\ = (\Mux322~12_combout\ & ((\Mux324~12_combout\ & (\Mux327~14_combout\ $ (\Mux325~11_combout\))) # (!\Mux324~12_combout\ & (\Mux327~14_combout\ & \Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~352_combout\);

-- Location: LCCOMB_X42_Y54_N24
\library1|Mux0~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~350_combout\ = (\Mux322~12_combout\ & ((\Mux324~12_combout\) # ((!\Mux327~14_combout\)))) # (!\Mux322~12_combout\ & (\Mux325~11_combout\ $ (((\Mux324~12_combout\ & \Mux327~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux324~12_combout\,
	datac => \Mux327~14_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~350_combout\);

-- Location: LCCOMB_X42_Y54_N18
\library1|Mux0~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~349_combout\ = (\library1|Mux0~348_combout\ & (\library1|Mux0~337_combout\ & (\vga1|yPixel\(1) & \library1|Mux0~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~348_combout\,
	datab => \library1|Mux0~337_combout\,
	datac => \vga1|yPixel\(1),
	datad => \library1|Mux0~136_combout\,
	combout => \library1|Mux0~349_combout\);

-- Location: LCCOMB_X42_Y54_N2
\library1|Mux0~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~351_combout\ = (\Mux323~10_combout\ & ((\library1|Mux0~349_combout\) # ((!\library1|Mux0~350_combout\ & \Mux321~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \library1|Mux0~350_combout\,
	datac => \Mux321~10_combout\,
	datad => \library1|Mux0~349_combout\,
	combout => \library1|Mux0~351_combout\);

-- Location: LCCOMB_X42_Y54_N10
\library1|Mux0~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~353_combout\ = (\library1|Mux0~351_combout\) # ((!\Mux323~10_combout\ & (\Mux321~10_combout\ & \library1|Mux0~352_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~352_combout\,
	datad => \library1|Mux0~351_combout\,
	combout => \library1|Mux0~353_combout\);

-- Location: LCCOMB_X43_Y57_N14
\library1|Mux0~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~331_combout\ = (\Mux322~12_combout\ & (\Mux324~12_combout\ $ (((\Mux325~11_combout\) # (\Mux323~10_combout\))))) # (!\Mux322~12_combout\ & (\Mux323~10_combout\ & (\Mux325~11_combout\ $ (!\Mux324~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~331_combout\);

-- Location: LCCOMB_X41_Y57_N16
\library1|Mux0~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~308_combout\ = (\library1|Mux0~289_combout\ & (\Mux322~12_combout\ & !\Mux323~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~289_combout\,
	datab => \Mux322~12_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~308_combout\);

-- Location: LCCOMB_X41_Y53_N6
\library1|Mux0~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~309_combout\ = (\Mux324~12_combout\ & (\Mux323~10_combout\ & (\Mux322~12_combout\ $ (\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux322~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~309_combout\);

-- Location: LCCOMB_X42_Y53_N10
\library1|Mux0~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~310_combout\ = (\Mux322~12_combout\ & (\Mux323~10_combout\ $ (((\Mux325~11_combout\))))) # (!\Mux322~12_combout\ & ((\Mux324~12_combout\ & ((\Mux323~10_combout\) # (!\Mux325~11_combout\))) # (!\Mux324~12_combout\ & 
-- ((\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~310_combout\);

-- Location: LCCOMB_X42_Y53_N4
\library1|Mux0~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~311_combout\ = (!\vga1|xPixel\(1) & ((\vga1|yPixel\(1) & (\library1|Mux0~309_combout\)) # (!\vga1|yPixel\(1) & ((\library1|Mux0~310_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~309_combout\,
	datad => \library1|Mux0~310_combout\,
	combout => \library1|Mux0~311_combout\);

-- Location: LCCOMB_X42_Y53_N30
\library1|Mux0~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~313_combout\ = (\Mux322~12_combout\ & (((\Mux324~12_combout\) # (!\Mux325~11_combout\)) # (!\Mux323~10_combout\))) # (!\Mux322~12_combout\ & ((\Mux324~12_combout\ & (\Mux323~10_combout\)) # (!\Mux324~12_combout\ & ((\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux324~12_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~313_combout\);

-- Location: LCCOMB_X40_Y53_N12
\library1|Mux0~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~312_combout\ = (\vga1|yPixel\(1) & ((\vga1|xPixel\(0)) # ((\Mux323~10_combout\)))) # (!\vga1|yPixel\(1) & ((\Mux325~11_combout\) # ((\vga1|xPixel\(0) & !\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \Mux323~10_combout\,
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~312_combout\);

-- Location: LCCOMB_X42_Y53_N0
\library1|Mux0~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~314_combout\ = (\Mux322~12_combout\ & ((\Mux324~12_combout\ & ((\library1|Mux0~312_combout\))) # (!\Mux324~12_combout\ & (\library1|Mux0~313_combout\)))) # (!\Mux322~12_combout\ & (((\library1|Mux0~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~313_combout\,
	datad => \library1|Mux0~312_combout\,
	combout => \library1|Mux0~314_combout\);

-- Location: LCCOMB_X42_Y53_N14
\library1|Mux0~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~315_combout\ = (\library1|Mux0~311_combout\) # ((\vga1|xPixel\(1) & \library1|Mux0~314_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \library1|Mux0~311_combout\,
	datad => \library1|Mux0~314_combout\,
	combout => \library1|Mux0~315_combout\);

-- Location: LCCOMB_X42_Y53_N28
\library1|Mux0~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~316_combout\ = (\Mux323~10_combout\ & (((!\Mux325~11_combout\)))) # (!\Mux323~10_combout\ & ((\vga1|xPixel\(1)) # ((\vga1|xPixel\(0) & !\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~316_combout\);

-- Location: LCCOMB_X42_Y53_N26
\library1|Mux0~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~317_combout\ = (\vga1|yPixel\(0) & (\library1|Mux0~316_combout\ & ((\Mux322~13_combout\) # (\Mux322~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \vga1|yPixel\(0),
	datac => \Mux322~14_combout\,
	datad => \library1|Mux0~316_combout\,
	combout => \library1|Mux0~317_combout\);

-- Location: LCCOMB_X42_Y53_N16
\library1|Mux0~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~318_combout\ = (\Mux323~10_combout\ & (((!\Mux325~11_combout\)))) # (!\Mux323~10_combout\ & (\vga1|xPixel\(1) & ((\library1|Mux0~26_combout\) # (!\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~26_combout\,
	combout => \library1|Mux0~318_combout\);

-- Location: LCCOMB_X42_Y53_N22
\library1|Mux0~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~319_combout\ = (\vga1|xPixel\(1) & (!\Mux323~10_combout\ & ((\library1|Mux0~26_combout\)))) # (!\vga1|xPixel\(1) & (((\Mux325~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~26_combout\,
	combout => \library1|Mux0~319_combout\);

-- Location: LCCOMB_X42_Y53_N24
\library1|Mux0~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~320_combout\ = (\Mux322~13_combout\ & (((\library1|Mux0~318_combout\)))) # (!\Mux322~13_combout\ & ((\Mux322~14_combout\ & ((\library1|Mux0~318_combout\))) # (!\Mux322~14_combout\ & (\library1|Mux0~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~13_combout\,
	datab => \Mux322~14_combout\,
	datac => \library1|Mux0~319_combout\,
	datad => \library1|Mux0~318_combout\,
	combout => \library1|Mux0~320_combout\);

-- Location: LCCOMB_X42_Y53_N6
\library1|Mux0~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~321_combout\ = (\library1|Mux0~317_combout\) # ((\library1|Mux0~320_combout\ & ((!\vga1|yPixel\(0)) # (!\library1|Mux0~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~317_combout\,
	datab => \library1|Mux0~318_combout\,
	datac => \vga1|yPixel\(0),
	datad => \library1|Mux0~320_combout\,
	combout => \library1|Mux0~321_combout\);

-- Location: LCCOMB_X42_Y50_N2
\library1|Mux0~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~327_combout\ = (\Mux322~12_combout\ & ((!\vga1|xPixel\(0)) # (!\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datac => \Mux325~11_combout\,
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~327_combout\);

-- Location: LCCOMB_X42_Y50_N20
\library1|Mux0~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~328_combout\ = (\Mux323~10_combout\ & ((\vga1|xPixel\(1) & (!\Mux325~11_combout\ & !\library1|Mux0~327_combout\)) # (!\vga1|xPixel\(1) & (\Mux325~11_combout\)))) # (!\Mux323~10_combout\ & (\vga1|xPixel\(1) & (\Mux325~11_combout\ $ 
-- (\library1|Mux0~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux323~10_combout\,
	datab => \vga1|xPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~327_combout\,
	combout => \library1|Mux0~328_combout\);

-- Location: LCCOMB_X38_Y53_N26
\library1|Mux0~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~324_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(1),
	datac => \vga1|xPixel\(0),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~324_combout\);

-- Location: LCCOMB_X42_Y53_N8
\library1|Mux0~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~325_combout\ = (\Mux323~10_combout\ & (\Mux322~12_combout\ & (!\Mux325~11_combout\))) # (!\Mux323~10_combout\ & ((\library1|Mux0~324_combout\ & (\Mux322~12_combout\)) # (!\library1|Mux0~324_combout\ & ((\Mux325~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \Mux323~10_combout\,
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~324_combout\,
	combout => \library1|Mux0~325_combout\);

-- Location: LCCOMB_X43_Y52_N28
\library1|Mux0~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~322_combout\ = (\vga1|xPixel\(1) & ((\vga1|xPixel\(0)) # (!\Mux325~11_combout\))) # (!\vga1|xPixel\(1) & ((\Mux325~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(0),
	datac => \vga1|xPixel\(1),
	datad => \Mux325~11_combout\,
	combout => \library1|Mux0~322_combout\);

-- Location: LCCOMB_X43_Y52_N10
\library1|Mux0~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~323_combout\ = ((\library1|Mux0~322_combout\ & (\vga1|xPixel\(1) $ (\Mux323~10_combout\)))) # (!\Mux322~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux322~12_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~322_combout\,
	combout => \library1|Mux0~323_combout\);

-- Location: LCCOMB_X42_Y53_N18
\library1|Mux0~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~326_combout\ = (\vga1|yPixel\(1) & (\Mux324~12_combout\)) # (!\vga1|yPixel\(1) & ((\Mux324~12_combout\ & ((\library1|Mux0~323_combout\))) # (!\Mux324~12_combout\ & (\library1|Mux0~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \Mux324~12_combout\,
	datac => \library1|Mux0~325_combout\,
	datad => \library1|Mux0~323_combout\,
	combout => \library1|Mux0~326_combout\);

-- Location: LCCOMB_X42_Y53_N12
\library1|Mux0~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~329_combout\ = (\vga1|yPixel\(1) & ((\library1|Mux0~326_combout\ & ((\library1|Mux0~328_combout\))) # (!\library1|Mux0~326_combout\ & (\library1|Mux0~321_combout\)))) # (!\vga1|yPixel\(1) & (((\library1|Mux0~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~321_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~328_combout\,
	datad => \library1|Mux0~326_combout\,
	combout => \library1|Mux0~329_combout\);

-- Location: LCCOMB_X42_Y53_N2
\library1|Mux0~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~330_combout\ = (\Mux327~14_combout\ & ((\Mux321~10_combout\) # ((\library1|Mux0~315_combout\)))) # (!\Mux327~14_combout\ & (!\Mux321~10_combout\ & ((\library1|Mux0~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux327~14_combout\,
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~315_combout\,
	datad => \library1|Mux0~329_combout\,
	combout => \library1|Mux0~330_combout\);

-- Location: LCCOMB_X42_Y57_N4
\library1|Mux0~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~332_combout\ = (\Mux321~10_combout\ & ((\library1|Mux0~330_combout\ & (\library1|Mux0~331_combout\)) # (!\library1|Mux0~330_combout\ & ((\library1|Mux0~308_combout\))))) # (!\Mux321~10_combout\ & (((\library1|Mux0~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux321~10_combout\,
	datab => \library1|Mux0~331_combout\,
	datac => \library1|Mux0~308_combout\,
	datad => \library1|Mux0~330_combout\,
	combout => \library1|Mux0~332_combout\);

-- Location: LCCOMB_X43_Y58_N10
\library1|Mux0~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~343_combout\ = (\Mux325~11_combout\ & (((\vga1|xPixel\(0))))) # (!\Mux325~11_combout\ & (\vga1|yPixel\(1) & (\vga1|yPixel\(0) & !\vga1|xPixel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|yPixel\(1),
	datac => \vga1|yPixel\(0),
	datad => \vga1|xPixel\(0),
	combout => \library1|Mux0~343_combout\);

-- Location: LCCOMB_X43_Y58_N4
\library1|Mux0~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~344_combout\ = (\Mux325~11_combout\ & (((!\Mux323~10_combout\ & \library1|Mux0~343_combout\)))) # (!\Mux325~11_combout\ & ((\Mux327~14_combout\ & ((\Mux323~10_combout\) # (!\library1|Mux0~343_combout\))) # (!\Mux327~14_combout\ & 
-- (!\Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux323~10_combout\,
	datad => \library1|Mux0~343_combout\,
	combout => \library1|Mux0~344_combout\);

-- Location: LCCOMB_X43_Y58_N8
\library1|Mux0~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~342_combout\ = (\Mux325~11_combout\ & (((\Mux323~10_combout\)))) # (!\Mux325~11_combout\ & ((\Mux327~14_combout\) # ((\vga1|yPixel\(1) & \Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux323~10_combout\,
	datad => \Mux327~14_combout\,
	combout => \library1|Mux0~342_combout\);

-- Location: LCCOMB_X43_Y58_N6
\library1|Mux0~833\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~833_combout\ = (!\Mux322~12_combout\ & ((\Mux325~11_combout\ & ((\Mux327~14_combout\) # (\Mux323~10_combout\))) # (!\Mux325~11_combout\ & (\Mux327~14_combout\ & \Mux323~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~833_combout\);

-- Location: LCCOMB_X43_Y58_N20
\library1|Mux0~834\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~834_combout\ = (\library1|Mux0~833_combout\ & (((\vga1|yPixel\(1)) # (\Mux325~11_combout\)))) # (!\library1|Mux0~833_combout\ & (\Mux324~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|yPixel\(1),
	datac => \Mux325~11_combout\,
	datad => \library1|Mux0~833_combout\,
	combout => \library1|Mux0~834_combout\);

-- Location: LCCOMB_X43_Y58_N26
\library1|Mux0~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~345_combout\ = (\Mux322~12_combout\ & ((\library1|Mux0~834_combout\ & (\library1|Mux0~344_combout\)) # (!\library1|Mux0~834_combout\ & ((!\library1|Mux0~342_combout\))))) # (!\Mux322~12_combout\ & (((\library1|Mux0~834_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \library1|Mux0~344_combout\,
	datac => \library1|Mux0~342_combout\,
	datad => \library1|Mux0~834_combout\,
	combout => \library1|Mux0~345_combout\);

-- Location: LCCOMB_X43_Y58_N24
\library1|Mux0~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~338_combout\ = (!\Mux324~12_combout\ & (\Mux321~10_combout\ & (!\Mux323~10_combout\ & !\Mux322~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \Mux321~10_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~338_combout\);

-- Location: LCCOMB_X43_Y58_N0
\library1|Mux0~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~335_combout\ = (\Mux323~10_combout\ & ((\Mux327~14_combout\ & (\Mux325~11_combout\)) # (!\Mux327~14_combout\ & ((\Mux322~12_combout\))))) # (!\Mux323~10_combout\ & (\Mux325~11_combout\ & ((\Mux322~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~335_combout\);

-- Location: LCCOMB_X43_Y58_N30
\library1|Mux0~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~334_combout\ = (\Mux325~11_combout\ & ((\Mux327~14_combout\) # (\Mux323~10_combout\ $ (\Mux322~12_combout\)))) # (!\Mux325~11_combout\ & (!\Mux327~14_combout\ & (\Mux323~10_combout\ & \Mux322~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux325~11_combout\,
	datab => \Mux327~14_combout\,
	datac => \Mux323~10_combout\,
	datad => \Mux322~12_combout\,
	combout => \library1|Mux0~334_combout\);

-- Location: LCCOMB_X43_Y58_N16
\library1|Mux0~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~333_combout\ = (!\vga1|yPixel\(1) & !\Mux321~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|yPixel\(1),
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~333_combout\);

-- Location: LCCOMB_X43_Y58_N22
\library1|Mux0~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~336_combout\ = (\library1|Mux0~333_combout\ & ((\Mux324~12_combout\ & (!\library1|Mux0~335_combout\)) # (!\Mux324~12_combout\ & ((\library1|Mux0~334_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \library1|Mux0~335_combout\,
	datac => \library1|Mux0~334_combout\,
	datad => \library1|Mux0~333_combout\,
	combout => \library1|Mux0~336_combout\);

-- Location: LCCOMB_X43_Y58_N14
\library1|Mux0~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~339_combout\ = (((\Mux323~10_combout\) # (!\vga1|yPixel\(0))) # (!\vga1|xPixel\(0))) # (!\Mux322~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux322~12_combout\,
	datab => \vga1|xPixel\(0),
	datac => \vga1|yPixel\(0),
	datad => \Mux323~10_combout\,
	combout => \library1|Mux0~339_combout\);

-- Location: LCCOMB_X43_Y58_N12
\library1|Mux0~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~340_combout\ = (\Mux324~12_combout\ & (\vga1|yPixel\(1) & (\library1|Mux0~339_combout\ & !\Mux321~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux324~12_combout\,
	datab => \vga1|yPixel\(1),
	datac => \library1|Mux0~339_combout\,
	datad => \Mux321~10_combout\,
	combout => \library1|Mux0~340_combout\);

-- Location: LCCOMB_X43_Y58_N18
\library1|Mux0~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~341_combout\ = (\library1|Mux0~336_combout\) # ((\library1|Mux0~337_combout\ & ((\library1|Mux0~338_combout\) # (\library1|Mux0~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \library1|Mux0~337_combout\,
	datab => \library1|Mux0~338_combout\,
	datac => \library1|Mux0~336_combout\,
	datad => \library1|Mux0~340_combout\,
	combout => \library1|Mux0~341_combout\);

-- Location: LCCOMB_X43_Y58_N28
\library1|Mux0~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~346_combout\ = (\vga1|xPixel\(1) & (!\Mux321~10_combout\ & (\library1|Mux0~345_combout\))) # (!\vga1|xPixel\(1) & (((\library1|Mux0~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \Mux321~10_combout\,
	datac => \library1|Mux0~345_combout\,
	datad => \library1|Mux0~341_combout\,
	combout => \library1|Mux0~346_combout\);

-- Location: LCCOMB_X42_Y57_N18
\library1|Mux0~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~347_combout\ = (\vga1|yPixel\(2) & ((\Mux326~14_combout\ & (\library1|Mux0~332_combout\)) # (!\Mux326~14_combout\ & ((\library1|Mux0~346_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~332_combout\,
	datad => \library1|Mux0~346_combout\,
	combout => \library1|Mux0~347_combout\);

-- Location: LCCOMB_X42_Y57_N20
\library1|Mux0~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~354_combout\ = (\library1|Mux0~347_combout\) # ((!\vga1|yPixel\(2) & (\Mux326~14_combout\ & \library1|Mux0~353_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(2),
	datab => \Mux326~14_combout\,
	datac => \library1|Mux0~353_combout\,
	datad => \library1|Mux0~347_combout\,
	combout => \library1|Mux0~354_combout\);

-- Location: LCCOMB_X42_Y57_N10
\library1|Mux0~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~355_combout\ = (\vga1|xPixel\(2) & ((\vga1|yPixel\(3)) # ((\library1|Mux0~836_combout\)))) # (!\vga1|xPixel\(2) & (!\vga1|yPixel\(3) & ((\library1|Mux0~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(2),
	datab => \vga1|yPixel\(3),
	datac => \library1|Mux0~836_combout\,
	datad => \library1|Mux0~354_combout\,
	combout => \library1|Mux0~355_combout\);

-- Location: LCCOMB_X42_Y57_N12
\library1|Mux0~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~402_combout\ = (\vga1|yPixel\(3) & ((\library1|Mux0~355_combout\ & ((\library1|Mux0~830_combout\))) # (!\library1|Mux0~355_combout\ & (\library1|Mux0~288_combout\)))) # (!\vga1|yPixel\(3) & (((\library1|Mux0~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(3),
	datab => \library1|Mux0~288_combout\,
	datac => \library1|Mux0~830_combout\,
	datad => \library1|Mux0~355_combout\,
	combout => \library1|Mux0~402_combout\);

-- Location: LCCOMB_X42_Y57_N0
\library1|Mux0~642\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~642_combout\ = (\vga1|xPixel\(3) & ((\vga1|yPixel\(4)) # ((\library1|Mux0~402_combout\)))) # (!\vga1|xPixel\(3) & (!\vga1|yPixel\(4) & (\library1|Mux0~641_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(3),
	datab => \vga1|yPixel\(4),
	datac => \library1|Mux0~641_combout\,
	datad => \library1|Mux0~402_combout\,
	combout => \library1|Mux0~642_combout\);

-- Location: LCCOMB_X42_Y57_N6
\library1|Mux0~801\ : cycloneive_lcell_comb
-- Equation(s):
-- \library1|Mux0~801_combout\ = (\vga1|yPixel\(4) & ((\library1|Mux0~642_combout\ & (\library1|Mux0~800_combout\)) # (!\library1|Mux0~642_combout\ & ((\library1|Mux0~191_combout\))))) # (!\vga1|yPixel\(4) & (((\library1|Mux0~642_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(4),
	datab => \library1|Mux0~800_combout\,
	datac => \library1|Mux0~191_combout\,
	datad => \library1|Mux0~642_combout\,
	combout => \library1|Mux0~801_combout\);

-- Location: LCCOMB_X42_Y57_N8
R : cycloneive_lcell_comb
-- Equation(s):
-- \R~combout\ = (\vga1|display_area~q\ & \library1|Mux0~801_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|display_area~q\,
	datad => \library1|Mux0~801_combout\,
	combout => \R~combout\);

-- Location: FF_X41_Y57_N17
\VGA_R[0]~reg0\ : dffeas
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
	q => \VGA_R[0]~reg0_q\);

-- Location: LCCOMB_X41_Y57_N30
\VGA_R[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[1]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_R[1]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N31
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

-- Location: LCCOMB_X41_Y57_N0
\VGA_R[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[2]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_R[2]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N1
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

-- Location: FF_X42_Y57_N9
\VGA_R[3]~reg0\ : dffeas
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
	q => \VGA_R[3]~reg0_q\);

-- Location: LCCOMB_X41_Y57_N18
\VGA_R[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[4]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_R[4]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N19
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

-- Location: LCCOMB_X41_Y57_N12
\VGA_R[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_R[5]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N13
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

-- Location: LCCOMB_X41_Y57_N6
\VGA_R[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_R[6]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N7
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

-- Location: LCCOMB_X41_Y57_N28
\VGA_R[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[7]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_R[7]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N29
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

-- Location: LCCOMB_X41_Y57_N22
\VGA_G[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[0]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_G[0]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N23
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

-- Location: LCCOMB_X41_Y57_N20
\VGA_G[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[1]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_G[1]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N21
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

-- Location: LCCOMB_X41_Y57_N10
\VGA_G[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[2]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_G[2]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N11
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

-- Location: LCCOMB_X41_Y57_N8
\VGA_G[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[3]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_G[3]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N9
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

-- Location: LCCOMB_X41_Y57_N2
\VGA_G[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[4]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_G[4]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N3
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

-- Location: LCCOMB_X41_Y57_N24
\VGA_G[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[5]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_G[5]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N25
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

-- Location: FF_X41_Y57_N27
\VGA_G[6]~reg0\ : dffeas
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
	q => \VGA_G[6]~reg0_q\);

-- Location: LCCOMB_X41_Y57_N4
\VGA_G[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[7]~reg0feeder_combout\ = \R~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~combout\,
	combout => \VGA_G[7]~reg0feeder_combout\);

-- Location: FF_X41_Y57_N5
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

-- Location: LCCOMB_X43_Y57_N4
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

-- Location: FF_X43_Y57_N5
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

-- Location: LCCOMB_X43_Y57_N2
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

-- Location: FF_X43_Y57_N3
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

-- Location: LCCOMB_X43_Y57_N16
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

-- Location: FF_X43_Y57_N17
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

-- Location: LCCOMB_X43_Y57_N10
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

-- Location: FF_X43_Y57_N11
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

-- Location: LCCOMB_X43_Y57_N0
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

-- Location: FF_X43_Y57_N1
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

-- Location: LCCOMB_X43_Y57_N26
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

-- Location: FF_X43_Y57_N27
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

-- Location: LCCOMB_X43_Y57_N12
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

-- Location: FF_X43_Y57_N13
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

-- Location: FF_X42_Y57_N15
\VGA_B[7]~reg0\ : dffeas
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
	q => \VGA_B[7]~reg0_q\);

-- Location: LCCOMB_X39_Y50_N4
\vga1|ph_sync~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~5_combout\ = (\vga1|xPixel\(2) & (((\vga1|xPixel\(1) & \vga1|xPixel\(0))) # (!\vga1|ph_sync~4_combout\))) # (!\vga1|xPixel\(2) & (\vga1|xPixel\(1) & (\vga1|xPixel\(0) & !\vga1|ph_sync~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|xPixel\(1),
	datab => \vga1|xPixel\(0),
	datac => \vga1|xPixel\(2),
	datad => \vga1|ph_sync~4_combout\,
	combout => \vga1|ph_sync~5_combout\);

-- Location: LCCOMB_X39_Y50_N30
\vga1|ph_sync~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~6_combout\ = (\vga1|xPixel\(4)) # ((\vga1|ph_sync~5_combout\ & \vga1|xPixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(4),
	datac => \vga1|ph_sync~5_combout\,
	datad => \vga1|xPixel\(3),
	combout => \vga1|ph_sync~6_combout\);

-- Location: LCCOMB_X40_Y50_N30
\vga1|ph_sync~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~7_combout\ = (\vga1|xPixel\(6) & (\vga1|xPixel\(5) & \vga1|ph_sync~6_combout\)) # (!\vga1|xPixel\(6) & (!\vga1|xPixel\(5) & !\vga1|ph_sync~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|xPixel\(6),
	datac => \vga1|xPixel\(5),
	datad => \vga1|ph_sync~6_combout\,
	combout => \vga1|ph_sync~7_combout\);

-- Location: LCCOMB_X40_Y50_N10
\vga1|ph_sync~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|ph_sync~8_combout\ = (!\vga1|ph_sync~7_combout\ & (\vga1|xPixel\(7) & (!\vga1|xPixel\(8) & \vga1|xPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|ph_sync~7_combout\,
	datab => \vga1|xPixel\(7),
	datac => \vga1|xPixel\(8),
	datad => \vga1|xPixel\(9),
	combout => \vga1|ph_sync~8_combout\);

-- Location: FF_X39_Y50_N9
\vga1|ph_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider1|VGA_clk~clkctrl_outclk\,
	asdata => \vga1|ph_sync~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga1|ph_sync~q\);

-- Location: LCCOMB_X41_Y51_N30
\vga1|pv_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~0_combout\ = (((\vga1|yPixel\(2)) # (\vga1|yPixel\(4))) # (!\vga1|yPixel\(3))) # (!\vga1|yPixel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|yPixel\(1),
	datab => \vga1|yPixel\(3),
	datac => \vga1|yPixel\(2),
	datad => \vga1|yPixel\(4),
	combout => \vga1|pv_sync~0_combout\);

-- Location: LCCOMB_X41_Y51_N8
\vga1|pv_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga1|pv_sync~1_combout\ = (!\vga1|pv_sync~0_combout\ & (\vga1|yPixel\(7) & (\Mux145~0_combout\ & !\vga1|yPixel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|pv_sync~0_combout\,
	datab => \vga1|yPixel\(7),
	datac => \Mux145~0_combout\,
	datad => \vga1|yPixel\(9),
	combout => \vga1|pv_sync~1_combout\);

-- Location: FF_X41_Y51_N9
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


