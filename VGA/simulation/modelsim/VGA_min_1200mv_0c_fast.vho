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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/06/2019 01:03:47"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	VGA IS
    PORT (
	CLOCK_50 : IN std_logic;
	RESET : IN std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RESET	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~24\ : std_logic;
SIGNAL \C1|HPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~26\ : std_logic;
SIGNAL \C1|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~28\ : std_logic;
SIGNAL \C1|HPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|HPOS[9]~30\ : std_logic;
SIGNAL \C1|HPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|LessThan10~0_combout\ : std_logic;
SIGNAL \C1|LessThan10~1_combout\ : std_logic;
SIGNAL \C1|LessThan0~0_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~12\ : std_logic;
SIGNAL \C1|HPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~14\ : std_logic;
SIGNAL \C1|HPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~16\ : std_logic;
SIGNAL \C1|HPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~18\ : std_logic;
SIGNAL \C1|HPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~20\ : std_logic;
SIGNAL \C1|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~22\ : std_logic;
SIGNAL \C1|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|syncProcess~0_combout\ : std_logic;
SIGNAL \C1|syncProcess~1_combout\ : std_logic;
SIGNAL \C1|syncProcess~2_combout\ : std_logic;
SIGNAL \C1|syncProcess~3_combout\ : std_logic;
SIGNAL \C1|HSYNC~q\ : std_logic;
SIGNAL \C1|VPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|LessThan11~0_combout\ : std_logic;
SIGNAL \C1|syncProcess~4_combout\ : std_logic;
SIGNAL \C1|LessThan1~0_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~12\ : std_logic;
SIGNAL \C1|VPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~14\ : std_logic;
SIGNAL \C1|VPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~16\ : std_logic;
SIGNAL \C1|VPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~18\ : std_logic;
SIGNAL \C1|VPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~20\ : std_logic;
SIGNAL \C1|VPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~22\ : std_logic;
SIGNAL \C1|VPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~24\ : std_logic;
SIGNAL \C1|VPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~26\ : std_logic;
SIGNAL \C1|VPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~28\ : std_logic;
SIGNAL \C1|VPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|VPOS[9]~30\ : std_logic;
SIGNAL \C1|VPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|LessThan4~0_combout\ : std_logic;
SIGNAL \C1|LessThan4~1_combout\ : std_logic;
SIGNAL \C1|syncProcess~5_combout\ : std_logic;
SIGNAL \C1|VSYNC~q\ : std_logic;
SIGNAL \C1|drawProcess~3_combout\ : std_logic;
SIGNAL \C1|drawProcess~2_combout\ : std_logic;
SIGNAL \C1|drawProcess~0_combout\ : std_logic;
SIGNAL \C1|drawProcess~1_combout\ : std_logic;
SIGNAL \C1|drawProcess~4_combout\ : std_logic;
SIGNAL \C1|Add1~1\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~8_combout\ : std_logic;
SIGNAL \C1|Add1~6_combout\ : std_logic;
SIGNAL \C1|drawProcess~29_combout\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~10_combout\ : std_logic;
SIGNAL \C1|Add1~4_combout\ : std_logic;
SIGNAL \C1|Add1~0_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ : std_logic;
SIGNAL \C1|Equal0~0_combout\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~15\ : std_logic;
SIGNAL \C1|Add1~16_combout\ : std_logic;
SIGNAL \C1|drawProcess~30_combout\ : std_logic;
SIGNAL \C1|Add1~17\ : std_logic;
SIGNAL \C1|Add1~19\ : std_logic;
SIGNAL \C1|Add1~20_combout\ : std_logic;
SIGNAL \C1|Add1~18_combout\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|Add1~12_combout\ : std_logic;
SIGNAL \C1|drawProcess~28_combout\ : std_logic;
SIGNAL \C1|drawProcess~31_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|_~5_combout\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|_~3_combout\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|_~4_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|_~0_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|_~2_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|_~1_combout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[60]~89_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[60]~88_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[59]~91_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[59]~90_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[58]~93_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[58]~92_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[57]~128_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[57]~129_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[70]~94_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[70]~148_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[69]~95_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[68]~96_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[67]~97_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[66]~98_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[56]~100_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[66]~101_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[79]~131_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[79]~102_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[78]~103_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[77]~104_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[76]~105_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[55]~107_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[55]~108_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[65]~109_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[65]~106_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[75]~110_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[75]~152_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[88]~111_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[88]~134_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[87]~112_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[86]~113_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[85]~114_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[54]~140_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[54]~139_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[64]~115_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[64]~138_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[74]~116_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[74]~141_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[84]~117_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[84]~142_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[97]~143_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[97]~118_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[96]~119_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[96]~144_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[95]~145_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[95]~120_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[94]~121_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[94]~146_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[63]~124_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[63]~123_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[73]~125_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[73]~122_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[83]~126_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[83]~153_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[93]~127_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|StageOut[93]~147_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~1_cout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~3_cout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~5_cout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~7_cout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \C1|drawProcess~9_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \C1|drawProcess~10_combout\ : std_logic;
SIGNAL \C1|Add4~1\ : std_logic;
SIGNAL \C1|Add4~3\ : std_logic;
SIGNAL \C1|Add4~5\ : std_logic;
SIGNAL \C1|Add4~7\ : std_logic;
SIGNAL \C1|Add4~9\ : std_logic;
SIGNAL \C1|Add4~10_combout\ : std_logic;
SIGNAL \C1|Add4~8_combout\ : std_logic;
SIGNAL \C1|Add4~11\ : std_logic;
SIGNAL \C1|Add4~12_combout\ : std_logic;
SIGNAL \C1|Add4~6_combout\ : std_logic;
SIGNAL \C1|Add4~4_combout\ : std_logic;
SIGNAL \C1|Add4~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\ : std_logic;
SIGNAL \C1|Add4~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[10]~6_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[60]~85_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[60]~84_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[59]~86_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[57]~90_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[70]~161_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[69]~92_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[68]~93_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[67]~94_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[56]~98_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[56]~97_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[66]~99_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[66]~96_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[79]~100_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[79]~141_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[78]~101_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[77]~102_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[76]~103_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[55]~106_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[55]~105_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[75]~164_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[65]~107_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[65]~104_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[75]~108_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[88]~109_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[88]~144_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[87]~110_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[86]~111_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[85]~112_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[64]~113_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[54]~115_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[54]~114_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[64]~116_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[74]~117_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[74]~148_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[84]~118_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[84]~149_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[97]~150_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[97]~119_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[96]~120_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[95]~121_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[94]~122_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[63]~125_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[63]~124_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[83]~165_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[73]~126_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[93]~128_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[93]~154_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[106]~155_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[106]~129_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[105]~156_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[105]~130_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[104]~131_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[104]~157_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[103]~132_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[103]~158_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[72]~134_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[72]~135_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[82]~136_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[82]~133_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~14_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[92]~159_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[102]~160_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[92]~137_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~12_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|StageOut[102]~138_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~1_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~3_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~5_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~7_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~9_cout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \C1|drawProcess~12_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \C1|drawProcess~11_combout\ : std_logic;
SIGNAL \C1|drawProcess~13_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \enemy2x[1]~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \dbc|Add0~0_combout\ : std_logic;
SIGNAL \dbc|Add0~1\ : std_logic;
SIGNAL \dbc|Add0~2_combout\ : std_logic;
SIGNAL \dbc|Add0~3\ : std_logic;
SIGNAL \dbc|Add0~4_combout\ : std_logic;
SIGNAL \dbc|Add0~5\ : std_logic;
SIGNAL \dbc|Add0~6_combout\ : std_logic;
SIGNAL \dbc|Add0~7\ : std_logic;
SIGNAL \dbc|Add0~8_combout\ : std_logic;
SIGNAL \dbc|freq_counter~0_combout\ : std_logic;
SIGNAL \dbc|Add0~9\ : std_logic;
SIGNAL \dbc|Add0~10_combout\ : std_logic;
SIGNAL \dbc|Add0~11\ : std_logic;
SIGNAL \dbc|Add0~12_combout\ : std_logic;
SIGNAL \dbc|freq_counter~1_combout\ : std_logic;
SIGNAL \dbc|Add0~13\ : std_logic;
SIGNAL \dbc|Add0~14_combout\ : std_logic;
SIGNAL \dbc|Add0~15\ : std_logic;
SIGNAL \dbc|Add0~16_combout\ : std_logic;
SIGNAL \dbc|freq_counter~2_combout\ : std_logic;
SIGNAL \dbc|Add0~17\ : std_logic;
SIGNAL \dbc|Add0~18_combout\ : std_logic;
SIGNAL \dbc|freq_counter~3_combout\ : std_logic;
SIGNAL \dbc|Add0~19\ : std_logic;
SIGNAL \dbc|Add0~20_combout\ : std_logic;
SIGNAL \dbc|Add0~21\ : std_logic;
SIGNAL \dbc|Add0~22_combout\ : std_logic;
SIGNAL \dbc|Equal0~2_combout\ : std_logic;
SIGNAL \dbc|Equal0~1_combout\ : std_logic;
SIGNAL \dbc|Equal0~0_combout\ : std_logic;
SIGNAL \dbc|freq_counter~5_combout\ : std_logic;
SIGNAL \dbc|Add0~23\ : std_logic;
SIGNAL \dbc|Add0~24_combout\ : std_logic;
SIGNAL \dbc|Add0~25\ : std_logic;
SIGNAL \dbc|Add0~26_combout\ : std_logic;
SIGNAL \dbc|Add0~27\ : std_logic;
SIGNAL \dbc|Add0~28_combout\ : std_logic;
SIGNAL \dbc|freq_counter~4_combout\ : std_logic;
SIGNAL \dbc|Add0~29\ : std_logic;
SIGNAL \dbc|Add0~30_combout\ : std_logic;
SIGNAL \dbc|Equal0~3_combout\ : std_logic;
SIGNAL \dbc|Equal0~4_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \dbc|last_in~0_combout\ : std_logic;
SIGNAL \dbc|last_in~q\ : std_logic;
SIGNAL \dbc|process_0~0_combout\ : std_logic;
SIGNAL \dbc|enable~0_combout\ : std_logic;
SIGNAL \dbc|enable~q\ : std_logic;
SIGNAL \dbc|temp[3]~13_combout\ : std_logic;
SIGNAL \dbc|temp~7_combout\ : std_logic;
SIGNAL \dbc|Add1~0_combout\ : std_logic;
SIGNAL \dbc|temp~8_combout\ : std_logic;
SIGNAL \dbc|temp~12_combout\ : std_logic;
SIGNAL \dbc|temp~4_combout\ : std_logic;
SIGNAL \dbc|Add1~1\ : std_logic;
SIGNAL \dbc|Add1~2_combout\ : std_logic;
SIGNAL \dbc|temp~6_combout\ : std_logic;
SIGNAL \dbc|Add1~3\ : std_logic;
SIGNAL \dbc|Add1~4_combout\ : std_logic;
SIGNAL \dbc|temp~5_combout\ : std_logic;
SIGNAL \dbc|Add1~5\ : std_logic;
SIGNAL \dbc|Add1~6_combout\ : std_logic;
SIGNAL \dbc|Equal1~0_combout\ : std_logic;
SIGNAL \dbc|temp~11_combout\ : std_logic;
SIGNAL \dbc|Add1~7\ : std_logic;
SIGNAL \dbc|Add1~8_combout\ : std_logic;
SIGNAL \dbc|temp~10_combout\ : std_logic;
SIGNAL \dbc|Add1~9\ : std_logic;
SIGNAL \dbc|Add1~10_combout\ : std_logic;
SIGNAL \dbc|temp~9_combout\ : std_logic;
SIGNAL \dbc|Add1~11\ : std_logic;
SIGNAL \dbc|Add1~12_combout\ : std_logic;
SIGNAL \dbc|Equal1~1_combout\ : std_logic;
SIGNAL \dbc|pulse~0_combout\ : std_logic;
SIGNAL \dbc|pulse~1_combout\ : std_logic;
SIGNAL \dbc|pulse~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \enemy2x~2_combout\ : std_logic;
SIGNAL \enemy2x[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \enemy2x~3_combout\ : std_logic;
SIGNAL \enemy2x[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \enemy2x~5_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \enemy2x~4_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \enemy2x~6_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \enemy2x~7_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \enemy2x~8_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \enemy2x~9_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \enemy2x~10_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \enemy2x~11_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \enemy2x~12_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \enemy2x~29_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \enemy2x~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \enemy2x~27_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \enemy2x~26_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \enemy2x~25_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \enemy2x~24_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \enemy2x~23_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \enemy2x~22_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \enemy2x~21_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \enemy2x~20_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \enemy2x~19_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \enemy2x~18_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \enemy2x~17_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \enemy2x~16_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \enemy2x~15_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \enemy2x~14_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \enemy2x~13_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \enemy2x~30_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \enemy2x~0_combout\ : std_logic;
SIGNAL \enemy2x[0]~feeder_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \enemy2x~1_combout\ : std_logic;
SIGNAL \enemies[0][1][1]~0_combout\ : std_logic;
SIGNAL \enemies[0][1][1]~q\ : std_logic;
SIGNAL \C1|Equal2~1_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \enemies[0][1][0]~0_combout\ : std_logic;
SIGNAL \enemies[0][1][0]~q\ : std_logic;
SIGNAL \C1|Equal2~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \enemies[0][0][2]~feeder_combout\ : std_logic;
SIGNAL \enemies[0][0][2]~q\ : std_logic;
SIGNAL \C1|Equal1~0_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \C1|Equal1~1_combout\ : std_logic;
SIGNAL \C1|drawProcess~5_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~15\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~16_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \C1|drawProcess~6_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \C1|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \C1|drawProcess~7_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \enemies[0][1][2]~0_combout\ : std_logic;
SIGNAL \enemies[0][1][2]~q\ : std_logic;
SIGNAL \C1|Equal2~2_combout\ : std_logic;
SIGNAL \C1|Div1|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \enemies[0][1][3]~0_combout\ : std_logic;
SIGNAL \enemies[0][1][3]~q\ : std_logic;
SIGNAL \C1|Equal2~3_combout\ : std_logic;
SIGNAL \C1|drawProcess~8_combout\ : std_logic;
SIGNAL \C1|drawProcess~14_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|_~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|_~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|_~1_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~33_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[9]~38_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[6]~40_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[65]~153_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[64]~155_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[64]~154_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[63]~156_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[62]~157_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[62]~158_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[61]~160_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[61]~159_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[60]~161_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[78]~162_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[77]~163_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[76]~164_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[75]~165_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[74]~166_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[73]~167_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[72]~169_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[72]~168_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[91]~170_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[90]~171_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[89]~172_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[88]~173_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[87]~174_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[86]~175_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[85]~176_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[84]~178_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[84]~177_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[3]~44_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~11\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~13\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~15\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~16_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~17\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[104]~179_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~14_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[103]~180_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[102]~181_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[101]~182_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[100]~183_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[99]~184_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[98]~185_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[97]~186_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[96]~187_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~13\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~15\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~17\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~19\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[117]~188_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[116]~189_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[115]~190_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[114]~191_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[113]~192_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[112]~193_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[111]~194_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[110]~195_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[109]~196_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[108]~198_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[108]~197_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[1]~43_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~15\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~17\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~19\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~20_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~21\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[130]~199_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~18_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[129]~200_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~16_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[128]~201_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~14_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[127]~202_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[126]~203_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[125]~204_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[124]~205_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[123]~206_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[122]~207_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[121]~208_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[120]~209_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~15\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~17\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~19\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~21\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~23\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[143]~260_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~22_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[143]~210_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~20_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~18_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~16_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~14_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[132]~222_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[132]~221_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~7\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~9\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~11\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~13\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~15\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~17\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~19\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~21\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~22_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[11]~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~20_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[10]~1_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~18_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[9]~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~16_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[8]~3_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~14_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[7]~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[6]~5_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[5]~6_combout\ : std_logic;
SIGNAL \C1|drawProcess~15_combout\ : std_logic;
SIGNAL \C1|Add5~1\ : std_logic;
SIGNAL \C1|Add5~3\ : std_logic;
SIGNAL \C1|Add5~5\ : std_logic;
SIGNAL \C1|Add5~7\ : std_logic;
SIGNAL \C1|Add5~9\ : std_logic;
SIGNAL \C1|Add5~11\ : std_logic;
SIGNAL \C1|Add5~13\ : std_logic;
SIGNAL \C1|Add5~14_combout\ : std_logic;
SIGNAL \C1|Add5~12_combout\ : std_logic;
SIGNAL \C1|Add5~8_combout\ : std_logic;
SIGNAL \C1|Add5~10_combout\ : std_logic;
SIGNAL \C1|Equal5~1_combout\ : std_logic;
SIGNAL \C1|Add5~15\ : std_logic;
SIGNAL \C1|Add5~17\ : std_logic;
SIGNAL \C1|Add5~19\ : std_logic;
SIGNAL \C1|Add5~20_combout\ : std_logic;
SIGNAL \C1|Add5~21\ : std_logic;
SIGNAL \C1|Add5~22_combout\ : std_logic;
SIGNAL \C1|Add5~16_combout\ : std_logic;
SIGNAL \C1|Add5~18_combout\ : std_logic;
SIGNAL \C1|Equal5~2_combout\ : std_logic;
SIGNAL \C1|Add5~6_combout\ : std_logic;
SIGNAL \C1|Add5~4_combout\ : std_logic;
SIGNAL \C1|Add5~2_combout\ : std_logic;
SIGNAL \C1|Add5~0_combout\ : std_logic;
SIGNAL \C1|Equal5~0_combout\ : std_logic;
SIGNAL \C1|drawProcess~16_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[4]~7_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[3]~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[2]~9_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[1]~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|op_2~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|remainder[0]~11_combout\ : std_logic;
SIGNAL \C1|Add6~1\ : std_logic;
SIGNAL \C1|Add6~3\ : std_logic;
SIGNAL \C1|Add6~5\ : std_logic;
SIGNAL \C1|Add6~7\ : std_logic;
SIGNAL \C1|Add6~9\ : std_logic;
SIGNAL \C1|Add6~11\ : std_logic;
SIGNAL \C1|Add6~13\ : std_logic;
SIGNAL \C1|Add6~15\ : std_logic;
SIGNAL \C1|Add6~17\ : std_logic;
SIGNAL \C1|Add6~19\ : std_logic;
SIGNAL \C1|Add6~21\ : std_logic;
SIGNAL \C1|Add6~23\ : std_logic;
SIGNAL \C1|Add6~24_combout\ : std_logic;
SIGNAL \C1|Add6~22_combout\ : std_logic;
SIGNAL \C1|Add6~20_combout\ : std_logic;
SIGNAL \C1|Add6~16_combout\ : std_logic;
SIGNAL \C1|Add6~18_combout\ : std_logic;
SIGNAL \C1|Add6~14_combout\ : std_logic;
SIGNAL \C1|Add6~10_combout\ : std_logic;
SIGNAL \C1|Add6~12_combout\ : std_logic;
SIGNAL \C1|Add6~0_combout\ : std_logic;
SIGNAL \C1|Add6~2_combout\ : std_logic;
SIGNAL \C1|Add6~6_combout\ : std_logic;
SIGNAL \C1|Add6~4_combout\ : std_logic;
SIGNAL \C1|drawProcess~17_combout\ : std_logic;
SIGNAL \C1|drawProcess~18_combout\ : std_logic;
SIGNAL \C1|Add7~1\ : std_logic;
SIGNAL \C1|Add7~3\ : std_logic;
SIGNAL \C1|Add7~5\ : std_logic;
SIGNAL \C1|Add7~7\ : std_logic;
SIGNAL \C1|Add7~9\ : std_logic;
SIGNAL \C1|Add7~11\ : std_logic;
SIGNAL \C1|Add7~13\ : std_logic;
SIGNAL \C1|Add7~14_combout\ : std_logic;
SIGNAL \C1|Add7~12_combout\ : std_logic;
SIGNAL \C1|Add7~8_combout\ : std_logic;
SIGNAL \C1|Add7~10_combout\ : std_logic;
SIGNAL \C1|Equal7~1_combout\ : std_logic;
SIGNAL \C1|Add7~15\ : std_logic;
SIGNAL \C1|Add7~17\ : std_logic;
SIGNAL \C1|Add7~19\ : std_logic;
SIGNAL \C1|Add7~20_combout\ : std_logic;
SIGNAL \C1|Add7~21\ : std_logic;
SIGNAL \C1|Add7~22_combout\ : std_logic;
SIGNAL \C1|Add7~16_combout\ : std_logic;
SIGNAL \C1|Add7~18_combout\ : std_logic;
SIGNAL \C1|Equal7~2_combout\ : std_logic;
SIGNAL \C1|Add7~4_combout\ : std_logic;
SIGNAL \C1|Add7~6_combout\ : std_logic;
SIGNAL \C1|Add7~2_combout\ : std_logic;
SIGNAL \C1|Add7~0_combout\ : std_logic;
SIGNAL \C1|Equal7~0_combout\ : std_logic;
SIGNAL \C1|drawProcess~19_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~15_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[65]~153_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[64]~155_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[64]~154_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[63]~156_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[61]~160_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[61]~159_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[60]~161_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[60]~162_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[78]~163_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[77]~164_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[76]~165_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[75]~166_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[74]~167_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[73]~168_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[72]~169_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[91]~170_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[90]~171_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[89]~172_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[88]~173_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[87]~174_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[86]~175_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[85]~176_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[84]~178_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[84]~177_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[3]~18_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~17\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[104]~179_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[103]~180_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[102]~181_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[101]~182_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[100]~183_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[99]~184_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[98]~185_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[97]~186_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[96]~187_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~17\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~19\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[117]~188_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[116]~189_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[115]~190_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[114]~191_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[113]~192_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[112]~193_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[111]~194_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[110]~195_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[109]~196_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[108]~197_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[108]~198_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[1]~20_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~17\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~19\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~21\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~20_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[130]~199_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~18_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[129]~200_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[128]~201_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[127]~202_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[126]~203_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[125]~204_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[124]~205_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[123]~206_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[122]~207_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[121]~208_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[120]~209_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~17\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~19\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~21\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~23\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[132]~210_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[132]~211_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[0]~0_combout\ : std_logic;
SIGNAL \C1|Add8~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[1]~1_combout\ : std_logic;
SIGNAL \C1|Add8~1\ : std_logic;
SIGNAL \C1|Add8~2_combout\ : std_logic;
SIGNAL \C1|Add6~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[2]~2_combout\ : std_logic;
SIGNAL \C1|Add8~3\ : std_logic;
SIGNAL \C1|Add8~4_combout\ : std_logic;
SIGNAL \C1|drawProcess~20_combout\ : std_logic;
SIGNAL \C1|drawProcess~21_combout\ : std_logic;
SIGNAL \C1|drawProcess~22_combout\ : std_logic;
SIGNAL \C1|drawProcess~23_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~22_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[143]~222_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[143]~270_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~20_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~18_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~17\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~19\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~21\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~22_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[11]~11_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~20_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[10]~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~18_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[9]~9_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[8]~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[7]~7_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[6]~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[5]~5_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[4]~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ : std_logic;
SIGNAL \C1|Add8~5\ : std_logic;
SIGNAL \C1|Add8~7\ : std_logic;
SIGNAL \C1|Add8~9\ : std_logic;
SIGNAL \C1|Add8~11\ : std_logic;
SIGNAL \C1|Add8~13\ : std_logic;
SIGNAL \C1|Add8~15\ : std_logic;
SIGNAL \C1|Add8~17\ : std_logic;
SIGNAL \C1|Add8~19\ : std_logic;
SIGNAL \C1|Add8~21\ : std_logic;
SIGNAL \C1|Add8~22_combout\ : std_logic;
SIGNAL \C1|Add8~23\ : std_logic;
SIGNAL \C1|Add8~24_combout\ : std_logic;
SIGNAL \C1|Add8~6_combout\ : std_logic;
SIGNAL \C1|Add8~8_combout\ : std_logic;
SIGNAL \C1|Add8~10_combout\ : std_logic;
SIGNAL \C1|Add8~12_combout\ : std_logic;
SIGNAL \C1|drawProcess~24_combout\ : std_logic;
SIGNAL \C1|Add8~14_combout\ : std_logic;
SIGNAL \C1|Add8~18_combout\ : std_logic;
SIGNAL \C1|Add8~16_combout\ : std_logic;
SIGNAL \C1|Add8~20_combout\ : std_logic;
SIGNAL \C1|drawProcess~25_combout\ : std_logic;
SIGNAL \C1|drawProcess~26_combout\ : std_logic;
SIGNAL \C1|drawProcess~27_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \C1|Equal0~1_combout\ : std_logic;
SIGNAL \C1|R[0]~1_combout\ : std_logic;
SIGNAL \C1|R[0]~2_combout\ : std_logic;
SIGNAL \C1|R~5_combout\ : std_logic;
SIGNAL \C1|Equal0~2_combout\ : std_logic;
SIGNAL \C1|R~3_combout\ : std_logic;
SIGNAL \C1|R~4_combout\ : std_logic;
SIGNAL \C1|R~6_combout\ : std_logic;
SIGNAL \C1|B~0_combout\ : std_logic;
SIGNAL \C1|B~1_combout\ : std_logic;
SIGNAL \C1|B~2_combout\ : std_logic;
SIGNAL \C1|B~3_combout\ : std_logic;
SIGNAL \C1|G~0_combout\ : std_logic;
SIGNAL \C1|G~1_combout\ : std_logic;
SIGNAL \C1|R~7_combout\ : std_logic;
SIGNAL \C1|G~2_combout\ : std_logic;
SIGNAL \C1|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \dbc|freq_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL enemy2x : std_logic_vector(31 DOWNTO 0);
SIGNAL \dbc|temp\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C1|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_RESET <= RESET;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_SW <= SW;
ww_KEY <= KEY;
VGA_R <= ww_VGA_R;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\C|altpll_0|sd1|wire_pll7_clk\(0) <= \C|altpll_0|sd1|pll7_CLK_bus\(0);
\C|altpll_0|sd1|wire_pll7_clk\(1) <= \C|altpll_0|sd1|pll7_CLK_bus\(1);
\C|altpll_0|sd1|wire_pll7_clk\(2) <= \C|altpll_0|sd1|pll7_CLK_bus\(2);
\C|altpll_0|sd1|wire_pll7_clk\(3) <= \C|altpll_0|sd1|pll7_CLK_bus\(3);
\C|altpll_0|sd1|wire_pll7_clk\(4) <= \C|altpll_0|sd1|pll7_CLK_bus\(4);

\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|altpll_0|sd1|wire_pll7_clk\(0));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X41_Y25_N2
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X41_Y22_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X41_Y21_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X21_Y0_N30
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X41_Y19_N9
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X41_Y19_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X41_Y21_N9
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X41_Y20_N2
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X41_Y24_N23
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X41_Y21_N16
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X41_Y20_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_2
\C|altpll_0|sd1|pll7\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 25,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 54,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 19,
	m => 54,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3418,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 231,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \C|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \C|altpll_0|sd1|pll7_INCLK_bus\,
	fbout => \C|altpll_0|sd1|wire_pll7_fbout\,
	clk => \C|altpll_0|sd1|pll7_CLK_bus\);

-- Location: CLKCTRL_G8
\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y16_N4
\C1|HPOS[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~11_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~12\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~11_combout\,
	cout => \C1|HPOS[0]~12\);

-- Location: LCCOMB_X26_Y16_N16
\C1|HPOS[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~23_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~22\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~22\ & VCC))
-- \C1|HPOS[6]~24\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~22\,
	combout => \C1|HPOS[6]~23_combout\,
	cout => \C1|HPOS[6]~24\);

-- Location: LCCOMB_X26_Y16_N18
\C1|HPOS[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~25_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~24\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~24\) # (GND)))
-- \C1|HPOS[7]~26\ = CARRY((!\C1|HPOS[6]~24\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~24\,
	combout => \C1|HPOS[7]~25_combout\,
	cout => \C1|HPOS[7]~26\);

-- Location: FF_X27_Y17_N3
\C1|HPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[7]~25_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(7));

-- Location: LCCOMB_X26_Y16_N20
\C1|HPOS[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~27_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~26\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~26\ & VCC))
-- \C1|HPOS[8]~28\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~26\,
	combout => \C1|HPOS[8]~27_combout\,
	cout => \C1|HPOS[8]~28\);

-- Location: FF_X27_Y17_N5
\C1|HPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[8]~27_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(8));

-- Location: LCCOMB_X26_Y16_N22
\C1|HPOS[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~29_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS[8]~28\)) # (!\C1|HPOS\(9) & ((\C1|HPOS[8]~28\) # (GND)))
-- \C1|HPOS[9]~30\ = CARRY((!\C1|HPOS[8]~28\) # (!\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|HPOS[8]~28\,
	combout => \C1|HPOS[9]~29_combout\,
	cout => \C1|HPOS[9]~30\);

-- Location: FF_X27_Y17_N31
\C1|HPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[9]~29_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(9));

-- Location: LCCOMB_X26_Y16_N24
\C1|HPOS[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[10]~31_combout\ = \C1|HPOS\(10) $ (!\C1|HPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	cin => \C1|HPOS[9]~30\,
	combout => \C1|HPOS[10]~31_combout\);

-- Location: FF_X27_Y17_N1
\C1|HPOS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[10]~31_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(10));

-- Location: LCCOMB_X19_Y15_N2
\C1|LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan10~0_combout\ = (!\C1|HPOS\(6) & !\C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(5),
	combout => \C1|LessThan10~0_combout\);

-- Location: LCCOMB_X26_Y16_N2
\C1|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan10~1_combout\ = ((\C1|LessThan10~0_combout\ & ((!\C1|HPOS\(3)) # (!\C1|HPOS\(4))))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(3),
	datad => \C1|LessThan10~0_combout\,
	combout => \C1|LessThan10~1_combout\);

-- Location: LCCOMB_X26_Y16_N26
\C1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~0_combout\ = (\C1|HPOS\(10) & (\C1|HPOS\(9) & ((\C1|HPOS\(8)) # (!\C1|LessThan10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(10),
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan10~1_combout\,
	combout => \C1|LessThan0~0_combout\);

-- Location: FF_X26_Y13_N21
\C1|HPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[0]~11_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(0));

-- Location: LCCOMB_X26_Y16_N6
\C1|HPOS[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~13_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~12\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~12\) # (GND)))
-- \C1|HPOS[1]~14\ = CARRY((!\C1|HPOS[0]~12\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~12\,
	combout => \C1|HPOS[1]~13_combout\,
	cout => \C1|HPOS[1]~14\);

-- Location: FF_X26_Y16_N7
\C1|HPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[1]~13_combout\,
	sclr => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(1));

-- Location: LCCOMB_X26_Y16_N8
\C1|HPOS[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~15_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~14\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~14\ & VCC))
-- \C1|HPOS[2]~16\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~14\,
	combout => \C1|HPOS[2]~15_combout\,
	cout => \C1|HPOS[2]~16\);

-- Location: FF_X26_Y16_N9
\C1|HPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[2]~15_combout\,
	sclr => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(2));

-- Location: LCCOMB_X26_Y16_N10
\C1|HPOS[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~17_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~16\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~16\) # (GND)))
-- \C1|HPOS[3]~18\ = CARRY((!\C1|HPOS[2]~16\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~16\,
	combout => \C1|HPOS[3]~17_combout\,
	cout => \C1|HPOS[3]~18\);

-- Location: FF_X27_Y17_N11
\C1|HPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[3]~17_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(3));

-- Location: LCCOMB_X26_Y16_N12
\C1|HPOS[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~19_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~18\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~18\ & VCC))
-- \C1|HPOS[4]~20\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~18\,
	combout => \C1|HPOS[4]~19_combout\,
	cout => \C1|HPOS[4]~20\);

-- Location: FF_X27_Y17_N13
\C1|HPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[4]~19_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(4));

-- Location: LCCOMB_X26_Y16_N14
\C1|HPOS[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~21_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~20\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~20\) # (GND)))
-- \C1|HPOS[5]~22\ = CARRY((!\C1|HPOS[4]~20\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~20\,
	combout => \C1|HPOS[5]~21_combout\,
	cout => \C1|HPOS[5]~22\);

-- Location: FF_X27_Y17_N15
\C1|HPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[5]~21_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(5));

-- Location: FF_X27_Y17_N17
\C1|HPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[6]~23_combout\,
	sclr => \C1|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(6));

-- Location: LCCOMB_X26_Y16_N28
\C1|syncProcess~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|syncProcess~0_combout\ = (\C1|HPOS\(8)) # ((\C1|HPOS\(9)) # (\C1|HPOS\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(9),
	datac => \C1|HPOS\(10),
	combout => \C1|syncProcess~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\C1|syncProcess~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|syncProcess~1_combout\ = (!\C1|HPOS\(1) & (!\C1|HPOS\(2) & (!\C1|HPOS\(3) & !\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(0),
	combout => \C1|syncProcess~1_combout\);

-- Location: LCCOMB_X19_Y15_N0
\C1|syncProcess~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|syncProcess~2_combout\ = (\C1|HPOS\(5) & ((\C1|HPOS\(7)) # ((!\C1|syncProcess~1_combout\ & \C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(5),
	datac => \C1|syncProcess~1_combout\,
	datad => \C1|HPOS\(4),
	combout => \C1|syncProcess~2_combout\);

-- Location: LCCOMB_X27_Y16_N24
\C1|syncProcess~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|syncProcess~3_combout\ = (\C1|syncProcess~0_combout\) # (\C1|HPOS\(7) $ (((!\C1|HPOS\(6) & !\C1|syncProcess~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|syncProcess~0_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|syncProcess~2_combout\,
	combout => \C1|syncProcess~3_combout\);

-- Location: FF_X27_Y16_N25
\C1|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|syncProcess~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HSYNC~q\);

-- Location: LCCOMB_X19_Y14_N2
\C1|VPOS[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~11_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~12\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~11_combout\,
	cout => \C1|VPOS[0]~12\);

-- Location: LCCOMB_X19_Y14_N26
\C1|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan11~0_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(1) & !\C1|VPOS\(2))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(4),
	combout => \C1|LessThan11~0_combout\);

-- Location: LCCOMB_X19_Y14_N28
\C1|syncProcess~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|syncProcess~4_combout\ = (!\C1|VPOS\(6) & (!\C1|VPOS\(8) & (!\C1|VPOS\(9) & !\C1|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(8),
	datac => \C1|VPOS\(9),
	datad => \C1|VPOS\(7),
	combout => \C1|syncProcess~4_combout\);

-- Location: LCCOMB_X19_Y15_N20
\C1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~0_combout\ = (\C1|VPOS\(10) & (((!\C1|LessThan11~0_combout\ & \C1|VPOS\(5))) # (!\C1|syncProcess~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|LessThan11~0_combout\,
	datac => \C1|syncProcess~4_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan1~0_combout\);

-- Location: FF_X20_Y14_N9
\C1|VPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[0]~11_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(0));

-- Location: LCCOMB_X19_Y14_N4
\C1|VPOS[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~13_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~12\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~12\) # (GND)))
-- \C1|VPOS[1]~14\ = CARRY((!\C1|VPOS[0]~12\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~12\,
	combout => \C1|VPOS[1]~13_combout\,
	cout => \C1|VPOS[1]~14\);

-- Location: FF_X19_Y13_N1
\C1|VPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[1]~13_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(1));

-- Location: LCCOMB_X19_Y14_N6
\C1|VPOS[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~15_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~14\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~14\ & VCC))
-- \C1|VPOS[2]~16\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~14\,
	combout => \C1|VPOS[2]~15_combout\,
	cout => \C1|VPOS[2]~16\);

-- Location: FF_X19_Y13_N3
\C1|VPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[2]~15_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(2));

-- Location: LCCOMB_X19_Y14_N8
\C1|VPOS[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~17_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~16\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~16\) # (GND)))
-- \C1|VPOS[3]~18\ = CARRY((!\C1|VPOS[2]~16\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~16\,
	combout => \C1|VPOS[3]~17_combout\,
	cout => \C1|VPOS[3]~18\);

-- Location: FF_X19_Y13_N5
\C1|VPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[3]~17_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(3));

-- Location: LCCOMB_X19_Y14_N10
\C1|VPOS[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~19_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~18\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~18\ & VCC))
-- \C1|VPOS[4]~20\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~18\,
	combout => \C1|VPOS[4]~19_combout\,
	cout => \C1|VPOS[4]~20\);

-- Location: FF_X19_Y13_N7
\C1|VPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[4]~19_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(4));

-- Location: LCCOMB_X19_Y14_N12
\C1|VPOS[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~21_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~20\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~20\) # (GND)))
-- \C1|VPOS[5]~22\ = CARRY((!\C1|VPOS[4]~20\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~20\,
	combout => \C1|VPOS[5]~21_combout\,
	cout => \C1|VPOS[5]~22\);

-- Location: FF_X19_Y13_N9
\C1|VPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[5]~21_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(5));

-- Location: LCCOMB_X19_Y14_N14
\C1|VPOS[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~23_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~22\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~22\ & VCC))
-- \C1|VPOS[6]~24\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~22\,
	combout => \C1|VPOS[6]~23_combout\,
	cout => \C1|VPOS[6]~24\);

-- Location: FF_X19_Y13_N11
\C1|VPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[6]~23_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(6));

-- Location: LCCOMB_X19_Y14_N16
\C1|VPOS[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~25_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~24\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~24\) # (GND)))
-- \C1|VPOS[7]~26\ = CARRY((!\C1|VPOS[6]~24\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~24\,
	combout => \C1|VPOS[7]~25_combout\,
	cout => \C1|VPOS[7]~26\);

-- Location: FF_X19_Y13_N13
\C1|VPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[7]~25_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(7));

-- Location: LCCOMB_X19_Y14_N18
\C1|VPOS[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~27_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~26\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~26\ & VCC))
-- \C1|VPOS[8]~28\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~26\,
	combout => \C1|VPOS[8]~27_combout\,
	cout => \C1|VPOS[8]~28\);

-- Location: FF_X19_Y13_N15
\C1|VPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[8]~27_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(8));

-- Location: LCCOMB_X19_Y14_N20
\C1|VPOS[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~29_combout\ = (\C1|VPOS\(9) & (!\C1|VPOS[8]~28\)) # (!\C1|VPOS\(9) & ((\C1|VPOS[8]~28\) # (GND)))
-- \C1|VPOS[9]~30\ = CARRY((!\C1|VPOS[8]~28\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|VPOS[8]~28\,
	combout => \C1|VPOS[9]~29_combout\,
	cout => \C1|VPOS[9]~30\);

-- Location: FF_X19_Y13_N29
\C1|VPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[9]~29_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(9));

-- Location: LCCOMB_X19_Y14_N22
\C1|VPOS[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[10]~31_combout\ = \C1|VPOS[9]~30\ $ (!\C1|VPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|VPOS\(10),
	cin => \C1|VPOS[9]~30\,
	combout => \C1|VPOS[10]~31_combout\);

-- Location: FF_X19_Y13_N31
\C1|VPOS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[10]~31_combout\,
	sclr => \C1|LessThan1~0_combout\,
	sload => VCC,
	ena => \C1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(10));

-- Location: LCCOMB_X19_Y14_N0
\C1|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~0_combout\ = (!\C1|VPOS\(1) & !\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(0),
	combout => \C1|LessThan4~0_combout\);

-- Location: LCCOMB_X19_Y14_N30
\C1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~1_combout\ = (!\C1|VPOS\(3) & (!\C1|VPOS\(5) & (!\C1|VPOS\(2) & !\C1|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(4),
	combout => \C1|LessThan4~1_combout\);

-- Location: LCCOMB_X19_Y14_N24
\C1|syncProcess~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|syncProcess~5_combout\ = (\C1|VPOS\(10)) # ((\C1|LessThan4~0_combout\) # ((!\C1|syncProcess~4_combout\) # (!\C1|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|LessThan4~0_combout\,
	datac => \C1|LessThan4~1_combout\,
	datad => \C1|syncProcess~4_combout\,
	combout => \C1|syncProcess~5_combout\);

-- Location: FF_X19_Y14_N25
\C1|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|syncProcess~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VSYNC~q\);

-- Location: LCCOMB_X19_Y15_N12
\C1|drawProcess~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~3_combout\ = (\C1|LessThan10~0_combout\ & (!\C1|HPOS\(8) & (!\C1|HPOS\(7) & !\C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan10~0_combout\,
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(4),
	combout => \C1|drawProcess~3_combout\);

-- Location: LCCOMB_X26_Y16_N0
\C1|drawProcess~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~2_combout\ = (\C1|HPOS\(10)) # ((\C1|HPOS\(9)) # ((\C1|HPOS\(8) & !\C1|LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(10),
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan10~1_combout\,
	combout => \C1|drawProcess~2_combout\);

-- Location: LCCOMB_X19_Y15_N6
\C1|drawProcess~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~0_combout\ = (\C1|VPOS\(10)) # (((!\C1|LessThan11~0_combout\ & \C1|VPOS\(5))) # (!\C1|syncProcess~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|LessThan11~0_combout\,
	datac => \C1|syncProcess~4_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|drawProcess~0_combout\);

-- Location: LCCOMB_X19_Y15_N16
\C1|drawProcess~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~1_combout\ = (\C1|drawProcess~0_combout\) # ((!\C1|VPOS\(1) & (\C1|LessThan4~1_combout\ & !\C1|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|LessThan4~1_combout\,
	datac => \C1|VPOS\(0),
	datad => \C1|drawProcess~0_combout\,
	combout => \C1|drawProcess~1_combout\);

-- Location: LCCOMB_X19_Y15_N30
\C1|drawProcess~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~4_combout\ = (\C1|drawProcess~1_combout\ & ((\C1|drawProcess~2_combout\) # ((\C1|drawProcess~3_combout\ & \C1|syncProcess~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~3_combout\,
	datab => \C1|syncProcess~1_combout\,
	datac => \C1|drawProcess~2_combout\,
	datad => \C1|drawProcess~1_combout\,
	combout => \C1|drawProcess~4_combout\);

-- Location: LCCOMB_X19_Y13_N0
\C1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = \C1|VPOS\(1) $ (VCC)
-- \C1|Add1~1\ = CARRY(\C1|VPOS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	combout => \C1|Add1~0_combout\,
	cout => \C1|Add1~1\);

-- Location: LCCOMB_X19_Y13_N2
\C1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = (\C1|VPOS\(2) & (\C1|Add1~1\ & VCC)) # (!\C1|VPOS\(2) & (!\C1|Add1~1\))
-- \C1|Add1~3\ = CARRY((!\C1|VPOS\(2) & !\C1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|Add1~1\,
	combout => \C1|Add1~2_combout\,
	cout => \C1|Add1~3\);

-- Location: LCCOMB_X19_Y13_N4
\C1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~4_combout\ = (\C1|VPOS\(3) & (\C1|Add1~3\ $ (GND))) # (!\C1|VPOS\(3) & (!\C1|Add1~3\ & VCC))
-- \C1|Add1~5\ = CARRY((\C1|VPOS\(3) & !\C1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|Add1~3\,
	combout => \C1|Add1~4_combout\,
	cout => \C1|Add1~5\);

-- Location: LCCOMB_X19_Y13_N6
\C1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~6_combout\ = (\C1|VPOS\(4) & (\C1|Add1~5\ & VCC)) # (!\C1|VPOS\(4) & (!\C1|Add1~5\))
-- \C1|Add1~7\ = CARRY((!\C1|VPOS\(4) & !\C1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|Add1~5\,
	combout => \C1|Add1~6_combout\,
	cout => \C1|Add1~7\);

-- Location: LCCOMB_X19_Y13_N8
\C1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~8_combout\ = (\C1|VPOS\(5) & (\C1|Add1~7\ $ (GND))) # (!\C1|VPOS\(5) & (!\C1|Add1~7\ & VCC))
-- \C1|Add1~9\ = CARRY((\C1|VPOS\(5) & !\C1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|Add1~7\,
	combout => \C1|Add1~8_combout\,
	cout => \C1|Add1~9\);

-- Location: LCCOMB_X29_Y13_N24
\C1|drawProcess~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~29_combout\ = (!\C1|Add1~6_combout\) # (!\C1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add1~8_combout\,
	datad => \C1|Add1~6_combout\,
	combout => \C1|drawProcess~29_combout\);

-- Location: LCCOMB_X19_Y13_N10
\C1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~10_combout\ = (\C1|VPOS\(6) & (\C1|Add1~9\ & VCC)) # (!\C1|VPOS\(6) & (!\C1|Add1~9\))
-- \C1|Add1~11\ = CARRY((!\C1|VPOS\(6) & !\C1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|Add1~9\,
	combout => \C1|Add1~10_combout\,
	cout => \C1|Add1~11\);

-- Location: LCCOMB_X20_Y14_N2
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ = (!\C1|Add1~4_combout\ & (!\C1|VPOS\(0) & (!\C1|Add1~0_combout\ & !\C1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|VPOS\(0),
	datac => \C1|Add1~0_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\);

-- Location: LCCOMB_X22_Y14_N10
\C1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal0~0_combout\ = (!\C1|Add1~6_combout\ & (!\C1|Add1~8_combout\ & \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datac => \C1|Add1~8_combout\,
	datad => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	combout => \C1|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y13_N12
\C1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~12_combout\ = (\C1|VPOS\(7) & ((GND) # (!\C1|Add1~11\))) # (!\C1|VPOS\(7) & (\C1|Add1~11\ $ (GND)))
-- \C1|Add1~13\ = CARRY((\C1|VPOS\(7)) # (!\C1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|Add1~11\,
	combout => \C1|Add1~12_combout\,
	cout => \C1|Add1~13\);

-- Location: LCCOMB_X19_Y13_N14
\C1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~14_combout\ = (\C1|VPOS\(8) & (\C1|Add1~13\ & VCC)) # (!\C1|VPOS\(8) & (!\C1|Add1~13\))
-- \C1|Add1~15\ = CARRY((!\C1|VPOS\(8) & !\C1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|Add1~13\,
	combout => \C1|Add1~14_combout\,
	cout => \C1|Add1~15\);

-- Location: LCCOMB_X19_Y13_N16
\C1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~16_combout\ = (\C1|VPOS\(9) & ((GND) # (!\C1|Add1~15\))) # (!\C1|VPOS\(9) & (\C1|Add1~15\ $ (GND)))
-- \C1|Add1~17\ = CARRY((\C1|VPOS\(9)) # (!\C1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|Add1~15\,
	combout => \C1|Add1~16_combout\,
	cout => \C1|Add1~17\);

-- Location: LCCOMB_X20_Y15_N12
\C1|drawProcess~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~30_combout\ = (\C1|Add1~10_combout\ & (((!\C1|Equal0~0_combout\ & !\C1|Add1~16_combout\)))) # (!\C1|Add1~10_combout\ & (\C1|drawProcess~29_combout\ & ((\C1|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~29_combout\,
	datab => \C1|Add1~10_combout\,
	datac => \C1|Equal0~0_combout\,
	datad => \C1|Add1~16_combout\,
	combout => \C1|drawProcess~30_combout\);

-- Location: LCCOMB_X19_Y13_N18
\C1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~18_combout\ = (\C1|VPOS\(10) & (\C1|Add1~17\ & VCC)) # (!\C1|VPOS\(10) & (!\C1|Add1~17\))
-- \C1|Add1~19\ = CARRY((!\C1|VPOS\(10) & !\C1|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datad => VCC,
	cin => \C1|Add1~17\,
	combout => \C1|Add1~18_combout\,
	cout => \C1|Add1~19\);

-- Location: LCCOMB_X19_Y13_N20
\C1|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~20_combout\ = !\C1|Add1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add1~19\,
	combout => \C1|Add1~20_combout\);

-- Location: LCCOMB_X20_Y15_N2
\C1|drawProcess~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~28_combout\ = (\C1|Add1~14_combout\ & ((!\C1|Add1~16_combout\) # (!\C1|Add1~12_combout\))) # (!\C1|Add1~14_combout\ & ((\C1|Add1~12_combout\) # (\C1|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~14_combout\,
	datab => \C1|Add1~12_combout\,
	datad => \C1|Add1~16_combout\,
	combout => \C1|drawProcess~28_combout\);

-- Location: LCCOMB_X20_Y15_N26
\C1|drawProcess~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~31_combout\ = (\C1|Add1~20_combout\ & (!\C1|Add1~18_combout\ & ((\C1|drawProcess~30_combout\) # (\C1|drawProcess~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~30_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Add1~18_combout\,
	datad => \C1|drawProcess~28_combout\,
	combout => \C1|drawProcess~31_combout\);

-- Location: LCCOMB_X27_Y17_N10
\C1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = \C1|HPOS\(3) $ (VCC)
-- \C1|Add0~1\ = CARRY(\C1|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X27_Y17_N12
\C1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|HPOS\(4) & (!\C1|Add0~1\)) # (!\C1|HPOS\(4) & ((\C1|Add0~1\) # (GND)))
-- \C1|Add0~3\ = CARRY((!\C1|Add0~1\) # (!\C1|HPOS\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X27_Y17_N14
\C1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = (\C1|HPOS\(5) & ((GND) # (!\C1|Add0~3\))) # (!\C1|HPOS\(5) & (\C1|Add0~3\ $ (GND)))
-- \C1|Add0~5\ = CARRY((\C1|HPOS\(5)) # (!\C1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X27_Y17_N16
\C1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|HPOS\(6) & (\C1|Add0~5\ & VCC)) # (!\C1|HPOS\(6) & (!\C1|Add0~5\))
-- \C1|Add0~7\ = CARRY((!\C1|HPOS\(6) & !\C1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X27_Y17_N18
\C1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|HPOS\(7) & (\C1|Add0~7\ $ (GND))) # (!\C1|HPOS\(7) & (!\C1|Add0~7\ & VCC))
-- \C1|Add0~9\ = CARRY((\C1|HPOS\(7) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X27_Y17_N20
\C1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|HPOS\(8) & (!\C1|Add0~9\)) # (!\C1|HPOS\(8) & ((\C1|Add0~9\) # (GND)))
-- \C1|Add0~11\ = CARRY((!\C1|Add0~9\) # (!\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCCOMB_X27_Y17_N22
\C1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|HPOS\(9) & ((GND) # (!\C1|Add0~11\))) # (!\C1|HPOS\(9) & (\C1|Add0~11\ $ (GND)))
-- \C1|Add0~13\ = CARRY((\C1|HPOS\(9)) # (!\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X27_Y17_N24
\C1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|HPOS\(10) & (\C1|Add0~13\ & VCC)) # (!\C1|HPOS\(10) & (!\C1|Add0~13\))
-- \C1|Add0~15\ = CARRY((!\C1|HPOS\(10) & !\C1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: LCCOMB_X27_Y17_N26
\C1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~16_combout\ = !\C1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add0~15\,
	combout => \C1|Add0~16_combout\);

-- Location: LCCOMB_X27_Y17_N2
\C1|Mod1|auto_generated|divider|my_abs_num|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|_~5_combout\ = \C1|Add0~16_combout\ $ (\C1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datad => \C1|Add0~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|_~5_combout\);

-- Location: LCCOMB_X27_Y17_N30
\C1|Mod1|auto_generated|divider|my_abs_num|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|_~3_combout\ = \C1|Add0~16_combout\ $ (\C1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datad => \C1|Add0~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|_~3_combout\);

-- Location: LCCOMB_X27_Y17_N4
\C1|Mod1|auto_generated|divider|my_abs_num|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|_~4_combout\ = \C1|Add0~12_combout\ $ (\C1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~12_combout\,
	datad => \C1|Add0~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|_~4_combout\);

-- Location: LCCOMB_X28_Y17_N4
\C1|Mod1|auto_generated|divider|my_abs_num|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|_~0_combout\ = \C1|Add0~16_combout\ $ (\C1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add0~16_combout\,
	datad => \C1|Add0~8_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|_~0_combout\);

-- Location: LCCOMB_X27_Y17_N0
\C1|Mod1|auto_generated|divider|my_abs_num|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|_~2_combout\ = \C1|Add0~16_combout\ $ (\C1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datad => \C1|Add0~4_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|_~2_combout\);

-- Location: LCCOMB_X29_Y17_N20
\C1|Mod1|auto_generated|divider|my_abs_num|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|_~1_combout\ = \C1|Add0~6_combout\ $ (\C1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add0~6_combout\,
	datad => \C1|Add0~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|_~1_combout\);

-- Location: LCCOMB_X26_Y13_N22
\C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ = (!\C1|HPOS\(2) & (!\C1|HPOS\(0) & (!\C1|HPOS\(1) & !\C1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(1),
	datad => \C1|Add0~16_combout\,
	combout => \C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N28
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\ = (\C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ & ((\C1|Add0~2_combout\ & (\C1|Add0~16_combout\ & \C1|Add0~0_combout\)) # (!\C1|Add0~2_combout\ & (!\C1|Add0~16_combout\ & 
-- !\C1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~2_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Add0~0_combout\,
	datad => \C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\);

-- Location: LCCOMB_X27_Y17_N28
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|_~0_combout\ & (!\C1|Mod1|auto_generated|divider|my_abs_num|_~2_combout\ & (!\C1|Mod1|auto_generated|divider|my_abs_num|_~1_combout\ & 
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|_~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|_~2_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|_~1_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\);

-- Location: LCCOMB_X27_Y17_N8
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|_~5_combout\ & (!\C1|Mod1|auto_generated|divider|my_abs_num|_~3_combout\ & (!\C1|Mod1|auto_generated|divider|my_abs_num|_~4_combout\ & 
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|_~5_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|_~3_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|_~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\);

-- Location: LCCOMB_X27_Y17_N6
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|_~3_combout\ $ (((!\C1|Mod1|auto_generated|divider|my_abs_num|_~5_combout\ & (!\C1|Mod1|auto_generated|divider|my_abs_num|_~4_combout\ & 
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|_~5_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|_~3_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|_~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\);

-- Location: LCCOMB_X28_Y17_N10
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\ = \C1|Add0~12_combout\ $ (((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\ & (!\C1|Add0~10_combout\)) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\ & 
-- ((\C1|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~12_combout\,
	datab => \C1|Add0~10_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\);

-- Location: LCCOMB_X31_Y17_N6
\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\ $ (GND)
-- \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~1\ = CARRY(!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\,
	datad => VCC,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~1\);

-- Location: LCCOMB_X31_Y17_N8
\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ & (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~1\)) # 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ & (\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~1\ & VCC))
-- \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~3\ = CARRY((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~1\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~3\);

-- Location: LCCOMB_X31_Y17_N10
\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ & (\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~3\ $ (GND))) # 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ & (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~3\ & VCC))
-- \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~5\ = CARRY((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~3\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~5\);

-- Location: LCCOMB_X31_Y17_N12
\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ = !\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~5\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\);

-- Location: LCCOMB_X31_Y17_N18
\C1|Div1|auto_generated|divider|divider|StageOut[60]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[60]~89_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[60]~89_combout\);

-- Location: LCCOMB_X31_Y17_N16
\C1|Div1|auto_generated|divider|divider|StageOut[60]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[60]~88_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[60]~88_combout\);

-- Location: LCCOMB_X31_Y17_N14
\C1|Div1|auto_generated|divider|divider|StageOut[59]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[59]~91_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[59]~91_combout\);

-- Location: LCCOMB_X31_Y17_N0
\C1|Div1|auto_generated|divider|divider|StageOut[59]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[59]~90_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[59]~90_combout\);

-- Location: LCCOMB_X31_Y17_N2
\C1|Div1|auto_generated|divider|divider|StageOut[58]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[58]~93_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[58]~93_combout\);

-- Location: LCCOMB_X31_Y17_N4
\C1|Div1|auto_generated|divider|divider|StageOut[58]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[58]~92_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[58]~92_combout\);

-- Location: LCCOMB_X29_Y17_N30
\C1|Div1|auto_generated|divider|divider|StageOut[57]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[57]~128_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Add0~16_combout\ $ (\C1|Add0~10_combout\ $ 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Add0~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[57]~128_combout\);

-- Location: LCCOMB_X31_Y17_N20
\C1|Div1|auto_generated|divider|divider|StageOut[57]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[57]~129_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Add0~10_combout\ $ (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\ $ 
-- (!\C1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~10_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[57]~129_combout\);

-- Location: LCCOMB_X31_Y17_N22
\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\ = (((\C1|Div1|auto_generated|divider|divider|StageOut[57]~128_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[57]~129_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~1\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[57]~128_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[57]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[57]~128_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[57]~129_combout\,
	datad => VCC,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~1\);

-- Location: LCCOMB_X31_Y17_N24
\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~1\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[58]~93_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[58]~92_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~1\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[58]~93_combout\ & 
-- (!\C1|Div1|auto_generated|divider|divider|StageOut[58]~92_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[58]~93_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[58]~92_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[58]~93_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[58]~92_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~1\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~3\);

-- Location: LCCOMB_X31_Y17_N26
\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[59]~90_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ & ((((\C1|Div1|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[59]~90_combout\)))))
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~5\ = CARRY((!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[59]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[59]~90_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~3\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~5\);

-- Location: LCCOMB_X31_Y17_N28
\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~5\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[60]~89_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[60]~88_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~5\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[60]~89_combout\ & 
-- (!\C1|Div1|auto_generated|divider|divider|StageOut[60]~88_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~7\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[60]~89_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[60]~88_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[60]~89_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[60]~88_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~5\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~7\);

-- Location: LCCOMB_X31_Y17_N30
\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ = \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~7\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\);

-- Location: LCCOMB_X30_Y17_N20
\C1|Div1|auto_generated|divider|divider|StageOut[70]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[70]~94_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[70]~94_combout\);

-- Location: LCCOMB_X30_Y17_N0
\C1|Div1|auto_generated|divider|divider|StageOut[70]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[70]~148_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & 
-- (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\)) # (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[70]~148_combout\);

-- Location: LCCOMB_X30_Y17_N30
\C1|Div1|auto_generated|divider|divider|StageOut[69]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & 
-- ((!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\);

-- Location: LCCOMB_X30_Y17_N14
\C1|Div1|auto_generated|divider|divider|StageOut[69]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[69]~95_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[69]~95_combout\);

-- Location: LCCOMB_X31_Y16_N12
\C1|Div1|auto_generated|divider|divider|StageOut[68]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\)) # (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\);

-- Location: LCCOMB_X30_Y17_N28
\C1|Div1|auto_generated|divider|divider|StageOut[68]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[68]~96_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[68]~96_combout\);

-- Location: LCCOMB_X29_Y17_N12
\C1|Div1|auto_generated|divider|divider|StageOut[67]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\ $ (\C1|Add0~10_combout\ $ 
-- (!\C1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\,
	datac => \C1|Add0~10_combout\,
	datad => \C1|Add0~16_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\);

-- Location: LCCOMB_X30_Y17_N18
\C1|Div1|auto_generated|divider|divider|StageOut[67]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[67]~97_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[67]~97_combout\);

-- Location: LCCOMB_X28_Y17_N30
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|_~0_combout\ $ (((!\C1|Mod1|auto_generated|divider|my_abs_num|_~2_combout\ & (!\C1|Mod1|auto_generated|divider|my_abs_num|_~1_combout\ & 
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|_~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|_~0_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|_~1_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\);

-- Location: LCCOMB_X29_Y17_N26
\C1|Div1|auto_generated|divider|divider|StageOut[66]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[66]~98_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & !\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[66]~98_combout\);

-- Location: LCCOMB_X30_Y14_N20
\C1|Div1|auto_generated|divider|divider|StageOut[56]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[56]~100_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[56]~100_combout\);

-- Location: LCCOMB_X30_Y14_N18
\C1|Div1|auto_generated|divider|divider|StageOut[56]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\);

-- Location: LCCOMB_X30_Y14_N4
\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[56]~100_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[56]~100_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[56]~99_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\);

-- Location: LCCOMB_X30_Y17_N16
\C1|Div1|auto_generated|divider|divider|StageOut[66]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[66]~101_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[66]~101_combout\);

-- Location: LCCOMB_X30_Y17_N2
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ = (((\C1|Div1|auto_generated|divider|divider|StageOut[66]~98_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[66]~101_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[66]~98_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[66]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[66]~98_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[66]~101_combout\,
	datad => VCC,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\);

-- Location: LCCOMB_X30_Y17_N4
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[67]~97_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\ & 
-- (!\C1|Div1|auto_generated|divider|divider|StageOut[67]~97_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[67]~97_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[67]~97_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\);

-- Location: LCCOMB_X30_Y17_N6
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[68]~96_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ & ((((\C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[68]~96_combout\)))))
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ = CARRY((!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[68]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[68]~96_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\);

-- Location: LCCOMB_X30_Y17_N8
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[69]~95_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\ & 
-- (!\C1|Div1|auto_generated|divider|divider|StageOut[69]~95_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[69]~95_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[69]~95_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\);

-- Location: LCCOMB_X30_Y17_N10
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[70]~94_combout\) # ((\C1|Div1|auto_generated|divider|divider|StageOut[70]~148_combout\) # 
-- (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[70]~94_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[70]~148_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\);

-- Location: LCCOMB_X30_Y17_N12
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ = !\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\);

-- Location: LCCOMB_X29_Y17_N14
\C1|Div1|auto_generated|divider|divider|StageOut[79]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[79]~131_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[69]~149_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[79]~131_combout\);

-- Location: LCCOMB_X30_Y14_N14
\C1|Div1|auto_generated|divider|divider|StageOut[79]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[79]~102_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[79]~102_combout\);

-- Location: LCCOMB_X30_Y17_N22
\C1|Div1|auto_generated|divider|divider|StageOut[78]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\) # 
-- ((\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[68]~150_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\);

-- Location: LCCOMB_X29_Y17_N4
\C1|Div1|auto_generated|divider|divider|StageOut[78]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[78]~103_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[78]~103_combout\);

-- Location: LCCOMB_X29_Y17_N8
\C1|Div1|auto_generated|divider|divider|StageOut[77]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[67]~130_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\);

-- Location: LCCOMB_X30_Y17_N26
\C1|Div1|auto_generated|divider|divider|StageOut[77]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[77]~104_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[77]~104_combout\);

-- Location: LCCOMB_X30_Y14_N2
\C1|Div1|auto_generated|divider|divider|StageOut[76]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & 
-- ((!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\);

-- Location: LCCOMB_X30_Y17_N24
\C1|Div1|auto_generated|divider|divider|StageOut[76]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[76]~105_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[76]~105_combout\);

-- Location: LCCOMB_X28_Y17_N6
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\ = \C1|Add0~6_combout\ $ (((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\ & (!\C1|Add0~4_combout\)) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\ & 
-- ((\C1|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datab => \C1|Add0~4_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\);

-- Location: LCCOMB_X30_Y14_N22
\C1|Div1|auto_generated|divider|divider|StageOut[55]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[55]~107_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[55]~107_combout\);

-- Location: LCCOMB_X30_Y14_N24
\C1|Div1|auto_generated|divider|divider|StageOut[55]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[55]~108_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[55]~108_combout\);

-- Location: LCCOMB_X30_Y14_N10
\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[55]~107_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[55]~108_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[55]~107_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[55]~108_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\);

-- Location: LCCOMB_X30_Y14_N26
\C1|Div1|auto_generated|divider|divider|StageOut[65]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[65]~109_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[65]~109_combout\);

-- Location: LCCOMB_X30_Y14_N0
\C1|Div1|auto_generated|divider|divider|StageOut[65]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[65]~106_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[65]~106_combout\);

-- Location: LCCOMB_X30_Y14_N16
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[65]~109_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[65]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[65]~109_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[65]~106_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\);

-- Location: LCCOMB_X30_Y14_N8
\C1|Div1|auto_generated|divider|divider|StageOut[75]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[75]~110_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[75]~110_combout\);

-- Location: LCCOMB_X30_Y14_N12
\C1|Div1|auto_generated|divider|divider|StageOut[75]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[75]~152_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\)) # (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[75]~152_combout\);

-- Location: LCCOMB_X29_Y14_N20
\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ = (((\C1|Div1|auto_generated|divider|divider|StageOut[75]~110_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[75]~152_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[75]~110_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[75]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[75]~110_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[75]~152_combout\,
	datad => VCC,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\);

-- Location: LCCOMB_X29_Y14_N22
\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[76]~105_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\ & 
-- (!\C1|Div1|auto_generated|divider|divider|StageOut[76]~105_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[76]~105_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[76]~105_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\);

-- Location: LCCOMB_X29_Y14_N24
\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[77]~104_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & ((((\C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[77]~104_combout\)))))
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ = CARRY((!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[77]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[77]~104_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\);

-- Location: LCCOMB_X29_Y14_N26
\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[78]~103_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\ & 
-- (!\C1|Div1|auto_generated|divider|divider|StageOut[78]~103_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[78]~103_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[78]~103_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\);

-- Location: LCCOMB_X29_Y14_N28
\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[79]~131_combout\) # ((\C1|Div1|auto_generated|divider|divider|StageOut[79]~102_combout\) # 
-- (!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[79]~131_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[79]~102_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\);

-- Location: LCCOMB_X29_Y14_N30
\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ = !\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\);

-- Location: LCCOMB_X29_Y14_N16
\C1|Div1|auto_generated|divider|divider|StageOut[88]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[88]~111_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[88]~111_combout\);

-- Location: LCCOMB_X29_Y17_N22
\C1|Div1|auto_generated|divider|divider|StageOut[88]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[88]~134_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\) # 
-- ((\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[78]~132_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[88]~134_combout\);

-- Location: LCCOMB_X29_Y14_N12
\C1|Div1|auto_generated|divider|divider|StageOut[87]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[77]~133_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\);

-- Location: LCCOMB_X29_Y14_N2
\C1|Div1|auto_generated|divider|divider|StageOut[87]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[87]~112_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[87]~112_combout\);

-- Location: LCCOMB_X29_Y14_N0
\C1|Div1|auto_generated|divider|divider|StageOut[86]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[86]~113_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[86]~113_combout\);

-- Location: LCCOMB_X29_Y14_N10
\C1|Div1|auto_generated|divider|divider|StageOut[86]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[76]~151_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\);

-- Location: LCCOMB_X29_Y14_N4
\C1|Div1|auto_generated|divider|divider|StageOut[85]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[75]~152_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[75]~152_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\);

-- Location: LCCOMB_X29_Y14_N14
\C1|Div1|auto_generated|divider|divider|StageOut[85]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[85]~114_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[85]~114_combout\);

-- Location: LCCOMB_X26_Y17_N14
\C1|Div1|auto_generated|divider|divider|StageOut[54]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[54]~140_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Add0~16_combout\ $ (\C1|Add0~4_combout\ $ 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Add0~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[54]~140_combout\);

-- Location: LCCOMB_X26_Y17_N16
\C1|Div1|auto_generated|divider|divider|StageOut[54]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[54]~139_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Add0~16_combout\ $ (\C1|Add0~4_combout\ $ 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Add0~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[54]~139_combout\);

-- Location: LCCOMB_X26_Y17_N4
\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[54]~140_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[54]~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[54]~140_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[54]~139_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X26_Y17_N26
\C1|Div1|auto_generated|divider|divider|StageOut[64]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[64]~115_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[64]~115_combout\);

-- Location: LCCOMB_X26_Y17_N10
\C1|Div1|auto_generated|divider|divider|StageOut[64]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[64]~138_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\ $ (\C1|Add0~16_combout\ $ 
-- (!\C1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Add0~4_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[64]~138_combout\);

-- Location: LCCOMB_X26_Y17_N22
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[64]~115_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[64]~138_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[64]~115_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[64]~138_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\);

-- Location: LCCOMB_X29_Y18_N22
\C1|Div1|auto_generated|divider|divider|StageOut[74]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[74]~116_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[74]~116_combout\);

-- Location: LCCOMB_X29_Y17_N0
\C1|Div1|auto_generated|divider|divider|StageOut[74]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[74]~141_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[64]~138_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[64]~138_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[74]~141_combout\);

-- Location: LCCOMB_X29_Y18_N16
\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[74]~116_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[74]~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[74]~116_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[74]~141_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\);

-- Location: LCCOMB_X29_Y18_N12
\C1|Div1|auto_generated|divider|divider|StageOut[84]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[84]~117_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[84]~117_combout\);

-- Location: LCCOMB_X29_Y18_N18
\C1|Div1|auto_generated|divider|divider|StageOut[84]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[84]~142_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[74]~141_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[74]~141_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[84]~142_combout\);

-- Location: LCCOMB_X29_Y18_N0
\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ = (((\C1|Div1|auto_generated|divider|divider|StageOut[84]~117_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[84]~142_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[84]~117_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[84]~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[84]~117_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[84]~142_combout\,
	datad => VCC,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\);

-- Location: LCCOMB_X29_Y18_N2
\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[85]~114_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\ & 
-- (!\C1|Div1|auto_generated|divider|divider|StageOut[85]~114_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[85]~114_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[85]~114_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\);

-- Location: LCCOMB_X29_Y18_N4
\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[86]~113_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & ((((\C1|Div1|auto_generated|divider|divider|StageOut[86]~113_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\)))))
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ = CARRY((!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[86]~113_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[86]~113_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\);

-- Location: LCCOMB_X29_Y18_N6
\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ & (((\C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[87]~112_combout\)))) # (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\ & 
-- (!\C1|Div1|auto_generated|divider|divider|StageOut[87]~112_combout\)))
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[87]~112_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[87]~112_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\);

-- Location: LCCOMB_X29_Y18_N8
\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[88]~111_combout\) # ((\C1|Div1|auto_generated|divider|divider|StageOut[88]~134_combout\) # 
-- (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[88]~111_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[88]~134_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\);

-- Location: LCCOMB_X29_Y18_N10
\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ = !\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\);

-- Location: LCCOMB_X29_Y14_N6
\C1|Div1|auto_generated|divider|divider|StageOut[97]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[97]~143_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[87]~135_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[97]~143_combout\);

-- Location: LCCOMB_X29_Y18_N30
\C1|Div1|auto_generated|divider|divider|StageOut[97]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[97]~118_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[97]~118_combout\);

-- Location: LCCOMB_X29_Y18_N28
\C1|Div1|auto_generated|divider|divider|StageOut[96]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[96]~119_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[96]~119_combout\);

-- Location: LCCOMB_X29_Y14_N8
\C1|Div1|auto_generated|divider|divider|StageOut[96]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[96]~144_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[86]~136_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[96]~144_combout\);

-- Location: LCCOMB_X29_Y14_N18
\C1|Div1|auto_generated|divider|divider|StageOut[95]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[95]~145_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[85]~137_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[95]~145_combout\);

-- Location: LCCOMB_X29_Y18_N26
\C1|Div1|auto_generated|divider|divider|StageOut[95]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[95]~120_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[95]~120_combout\);

-- Location: LCCOMB_X29_Y18_N20
\C1|Div1|auto_generated|divider|divider|StageOut[94]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[94]~121_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[94]~121_combout\);

-- Location: LCCOMB_X29_Y18_N24
\C1|Div1|auto_generated|divider|divider|StageOut[94]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[94]~146_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[84]~142_combout\) # 
-- ((\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[84]~142_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[94]~146_combout\);

-- Location: LCCOMB_X26_Y13_N28
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ = \C1|Add0~2_combout\ $ (((\C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ & ((!\C1|Add0~0_combout\))) # (!\C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ & 
-- (\C1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Add0~2_combout\,
	datad => \C1|Add0~0_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\);

-- Location: LCCOMB_X28_Y14_N22
\C1|Div1|auto_generated|divider|divider|StageOut[63]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[63]~124_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & !\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[63]~124_combout\);

-- Location: LCCOMB_X28_Y14_N24
\C1|Div1|auto_generated|divider|divider|StageOut[63]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[63]~123_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & !\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[63]~123_combout\);

-- Location: LCCOMB_X28_Y14_N4
\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[63]~124_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[63]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[63]~124_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[63]~123_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\);

-- Location: LCCOMB_X28_Y14_N8
\C1|Div1|auto_generated|divider|divider|StageOut[73]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[73]~125_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ & !\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[73]~125_combout\);

-- Location: LCCOMB_X28_Y14_N2
\C1|Div1|auto_generated|divider|divider|StageOut[73]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[73]~122_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[73]~122_combout\);

-- Location: LCCOMB_X28_Y14_N6
\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[73]~125_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[73]~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[73]~125_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[73]~122_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\);

-- Location: LCCOMB_X28_Y14_N14
\C1|Div1|auto_generated|divider|divider|StageOut[83]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[83]~126_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[83]~126_combout\);

-- Location: LCCOMB_X28_Y14_N12
\C1|Div1|auto_generated|divider|divider|StageOut[83]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[83]~153_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\)) # (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[83]~153_combout\);

-- Location: LCCOMB_X28_Y14_N16
\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\ = (\C1|Div1|auto_generated|divider|divider|StageOut[83]~126_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[83]~153_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|StageOut[83]~126_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[83]~153_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\);

-- Location: LCCOMB_X28_Y14_N28
\C1|Div1|auto_generated|divider|divider|StageOut[93]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[93]~127_combout\ = (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[93]~127_combout\);

-- Location: LCCOMB_X28_Y14_N30
\C1|Div1|auto_generated|divider|divider|StageOut[93]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|StageOut[93]~147_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[83]~153_combout\) # 
-- ((!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|StageOut[83]~153_combout\,
	combout => \C1|Div1|auto_generated|divider|divider|StageOut[93]~147_combout\);

-- Location: LCCOMB_X22_Y15_N16
\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~1_cout\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[93]~127_combout\) # (\C1|Div1|auto_generated|divider|divider|StageOut[93]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[93]~127_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[93]~147_combout\,
	datad => VCC,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~1_cout\);

-- Location: LCCOMB_X22_Y15_N18
\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~3_cout\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[94]~121_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[94]~146_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[94]~121_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[94]~146_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~1_cout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~3_cout\);

-- Location: LCCOMB_X22_Y15_N20
\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~5_cout\ = CARRY((!\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~3_cout\ & ((\C1|Div1|auto_generated|divider|divider|StageOut[95]~145_combout\) # 
-- (\C1|Div1|auto_generated|divider|divider|StageOut[95]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[95]~145_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[95]~120_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~3_cout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~5_cout\);

-- Location: LCCOMB_X22_Y15_N22
\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~7_cout\ = CARRY((!\C1|Div1|auto_generated|divider|divider|StageOut[96]~119_combout\ & (!\C1|Div1|auto_generated|divider|divider|StageOut[96]~144_combout\ & 
-- !\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[96]~119_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[96]~144_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~5_cout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~7_cout\);

-- Location: LCCOMB_X22_Y15_N24
\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\ = CARRY((\C1|Div1|auto_generated|divider|divider|StageOut[97]~143_combout\) # ((\C1|Div1|auto_generated|divider|divider|StageOut[97]~118_combout\) # 
-- (!\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|StageOut[97]~143_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|StageOut[97]~118_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~7_cout\,
	cout => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\);

-- Location: LCCOMB_X22_Y15_N26
\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ = !\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\,
	combout => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\);

-- Location: LCCOMB_X22_Y15_N0
\C1|Div1|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|op_1~0_combout\ = \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ $ (VCC)
-- \C1|Div1|auto_generated|divider|op_1~1\ = CARRY(\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	datad => VCC,
	combout => \C1|Div1|auto_generated|divider|op_1~0_combout\,
	cout => \C1|Div1|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X22_Y15_N2
\C1|Div1|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|op_1~2_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & (!\C1|Div1|auto_generated|divider|op_1~1\)) # (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ 
-- & ((\C1|Div1|auto_generated|divider|op_1~1\) # (GND)))
-- \C1|Div1|auto_generated|divider|op_1~3\ = CARRY((!\C1|Div1|auto_generated|divider|op_1~1\) # (!\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|op_1~1\,
	combout => \C1|Div1|auto_generated|divider|op_1~2_combout\,
	cout => \C1|Div1|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X22_Y15_N4
\C1|Div1|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|op_1~4_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & (\C1|Div1|auto_generated|divider|op_1~3\ $ (GND))) # 
-- (!\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & (!\C1|Div1|auto_generated|divider|op_1~3\ & VCC))
-- \C1|Div1|auto_generated|divider|op_1~5\ = CARRY((\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & !\C1|Div1|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|op_1~3\,
	combout => \C1|Div1|auto_generated|divider|op_1~4_combout\,
	cout => \C1|Div1|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X22_Y15_N6
\C1|Div1|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|op_1~6_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (!\C1|Div1|auto_generated|divider|op_1~5\)) # (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & 
-- ((\C1|Div1|auto_generated|divider|op_1~5\) # (GND)))
-- \C1|Div1|auto_generated|divider|op_1~7\ = CARRY((!\C1|Div1|auto_generated|divider|op_1~5\) # (!\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|op_1~5\,
	combout => \C1|Div1|auto_generated|divider|op_1~6_combout\,
	cout => \C1|Div1|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X22_Y15_N8
\C1|Div1|auto_generated|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|op_1~8_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & (\C1|Div1|auto_generated|divider|op_1~7\ $ (GND))) # 
-- (!\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & (!\C1|Div1|auto_generated|divider|op_1~7\ & VCC))
-- \C1|Div1|auto_generated|divider|op_1~9\ = CARRY((\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & !\C1|Div1|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|op_1~7\,
	combout => \C1|Div1|auto_generated|divider|op_1~8_combout\,
	cout => \C1|Div1|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X22_Y15_N10
\C1|Div1|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|op_1~10_combout\ = (\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (!\C1|Div1|auto_generated|divider|op_1~9\)) # (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & 
-- ((\C1|Div1|auto_generated|divider|op_1~9\) # (GND)))
-- \C1|Div1|auto_generated|divider|op_1~11\ = CARRY((!\C1|Div1|auto_generated|divider|op_1~9\) # (!\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|op_1~9\,
	combout => \C1|Div1|auto_generated|divider|op_1~10_combout\,
	cout => \C1|Div1|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X22_Y15_N12
\C1|Div1|auto_generated|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|op_1~12_combout\ = \C1|Div1|auto_generated|divider|op_1~11\ $ (GND)
-- \C1|Div1|auto_generated|divider|op_1~13\ = CARRY(!\C1|Div1|auto_generated|divider|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \C1|Div1|auto_generated|divider|op_1~11\,
	combout => \C1|Div1|auto_generated|divider|op_1~12_combout\,
	cout => \C1|Div1|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X22_Y15_N14
\C1|Div1|auto_generated|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div1|auto_generated|divider|op_1~14_combout\ = !\C1|Div1|auto_generated|divider|op_1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div1|auto_generated|divider|op_1~13\,
	combout => \C1|Div1|auto_generated|divider|op_1~14_combout\);

-- Location: LCCOMB_X21_Y15_N28
\C1|drawProcess~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~9_combout\ = (\C1|Add0~16_combout\ & (((\C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)))) # (!\C1|Add0~16_combout\ & (!\C1|Div1|auto_generated|divider|op_1~14_combout\ & 
-- (!\C1|Div1|auto_generated|divider|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Div1|auto_generated|divider|op_1~14_combout\,
	datac => \C1|Div1|auto_generated|divider|op_1~12_combout\,
	datad => \C1|Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|drawProcess~9_combout\);

-- Location: LCCOMB_X23_Y15_N8
\C1|drawProcess~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~10_combout\ = (\C1|Add0~16_combout\ & (((\C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)))) # (!\C1|Add0~16_combout\ & (!\C1|Div1|auto_generated|divider|op_1~10_combout\ & 
-- ((!\C1|Div1|auto_generated|divider|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div1|auto_generated|divider|op_1~10_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div1|auto_generated|divider|op_1~8_combout\,
	combout => \C1|drawProcess~10_combout\);

-- Location: LCCOMB_X20_Y17_N10
\C1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add4~0_combout\ = \C1|Add1~10_combout\ $ (VCC)
-- \C1|Add4~1\ = CARRY(\C1|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~10_combout\,
	datad => VCC,
	combout => \C1|Add4~0_combout\,
	cout => \C1|Add4~1\);

-- Location: LCCOMB_X20_Y17_N12
\C1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add4~2_combout\ = (\C1|Add1~12_combout\ & (\C1|Add4~1\ & VCC)) # (!\C1|Add1~12_combout\ & (!\C1|Add4~1\))
-- \C1|Add4~3\ = CARRY((!\C1|Add1~12_combout\ & !\C1|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~12_combout\,
	datad => VCC,
	cin => \C1|Add4~1\,
	combout => \C1|Add4~2_combout\,
	cout => \C1|Add4~3\);

-- Location: LCCOMB_X20_Y17_N14
\C1|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add4~4_combout\ = (\C1|Add1~14_combout\ & ((GND) # (!\C1|Add4~3\))) # (!\C1|Add1~14_combout\ & (\C1|Add4~3\ $ (GND)))
-- \C1|Add4~5\ = CARRY((\C1|Add1~14_combout\) # (!\C1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~14_combout\,
	datad => VCC,
	cin => \C1|Add4~3\,
	combout => \C1|Add4~4_combout\,
	cout => \C1|Add4~5\);

-- Location: LCCOMB_X20_Y17_N16
\C1|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add4~6_combout\ = (\C1|Add1~16_combout\ & (\C1|Add4~5\ & VCC)) # (!\C1|Add1~16_combout\ & (!\C1|Add4~5\))
-- \C1|Add4~7\ = CARRY((!\C1|Add1~16_combout\ & !\C1|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datad => VCC,
	cin => \C1|Add4~5\,
	combout => \C1|Add4~6_combout\,
	cout => \C1|Add4~7\);

-- Location: LCCOMB_X20_Y17_N18
\C1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add4~8_combout\ = (\C1|Add1~18_combout\ & ((GND) # (!\C1|Add4~7\))) # (!\C1|Add1~18_combout\ & (\C1|Add4~7\ $ (GND)))
-- \C1|Add4~9\ = CARRY((\C1|Add1~18_combout\) # (!\C1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~18_combout\,
	datad => VCC,
	cin => \C1|Add4~7\,
	combout => \C1|Add4~8_combout\,
	cout => \C1|Add4~9\);

-- Location: LCCOMB_X20_Y17_N20
\C1|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add4~10_combout\ = (\C1|Add1~20_combout\ & (!\C1|Add4~9\)) # (!\C1|Add1~20_combout\ & (\C1|Add4~9\ & VCC))
-- \C1|Add4~11\ = CARRY((\C1|Add1~20_combout\ & !\C1|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add4~9\,
	combout => \C1|Add4~10_combout\,
	cout => \C1|Add4~11\);

-- Location: LCCOMB_X20_Y17_N22
\C1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add4~12_combout\ = \C1|Add4~11\ $ (!\C1|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add1~20_combout\,
	cin => \C1|Add4~11\,
	combout => \C1|Add4~12_combout\);

-- Location: LCCOMB_X20_Y14_N4
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\ = (!\C1|Add1~8_combout\ & (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ & (!\C1|Add1~6_combout\ & \C1|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Add4~12_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\);

-- Location: LCCOMB_X20_Y17_N0
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\ & ((\C1|Add4~0_combout\ & (!\C1|Add4~12_combout\ & \C1|Add4~2_combout\)) # (!\C1|Add4~0_combout\ & (\C1|Add4~12_combout\ & 
-- !\C1|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~0_combout\,
	datab => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Add4~2_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\);

-- Location: LCCOMB_X20_Y17_N2
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\ & ((\C1|Add4~12_combout\ & (!\C1|Add4~6_combout\ & !\C1|Add4~4_combout\)) # (!\C1|Add4~12_combout\ & (\C1|Add4~6_combout\ & 
-- \C1|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~12_combout\,
	datab => \C1|Add4~6_combout\,
	datac => \C1|Add4~4_combout\,
	datad => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\);

-- Location: LCCOMB_X20_Y17_N8
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\ & ((\C1|Add4~10_combout\ & (\C1|Add4~8_combout\ & !\C1|Add4~12_combout\)) # (!\C1|Add4~10_combout\ & (!\C1|Add4~8_combout\ & 
-- \C1|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~10_combout\,
	datab => \C1|Add4~8_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\);

-- Location: LCCOMB_X20_Y17_N6
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\ = \C1|Add4~10_combout\ $ (((\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\ & (\C1|Add4~8_combout\)) # (!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\ & 
-- ((\C1|Add4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~10_combout\,
	datab => \C1|Add4~8_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\);

-- Location: LCCOMB_X20_Y17_N4
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[10]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[10]~6_combout\ = \C1|Add4~8_combout\ $ (\C1|Add4~12_combout\ $ (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add4~8_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[10]~6_combout\);

-- Location: LCCOMB_X20_Y17_N24
\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\ = \C1|Div0|auto_generated|divider|my_abs_num|cs1a[10]~6_combout\ $ (VCC)
-- \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~1\ = CARRY(\C1|Div0|auto_generated|divider|my_abs_num|cs1a[10]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[10]~6_combout\,
	datad => VCC,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~1\);

-- Location: LCCOMB_X20_Y17_N26
\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\ & (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~1\ & VCC)) # 
-- (!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\ & (!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~1\))
-- \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~3\ = CARRY((!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~1\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~3\);

-- Location: LCCOMB_X20_Y17_N28
\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\ & (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~3\ $ (GND))) # 
-- (!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\ & (!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~3\ & VCC))
-- \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\ = CARRY((\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~3\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\);

-- Location: LCCOMB_X20_Y17_N30
\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ = !\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\);

-- Location: LCCOMB_X21_Y17_N30
\C1|Div0|auto_generated|divider|divider|StageOut[60]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[60]~85_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[60]~85_combout\);

-- Location: LCCOMB_X21_Y17_N0
\C1|Div0|auto_generated|divider|divider|StageOut[60]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[60]~84_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[60]~84_combout\);

-- Location: LCCOMB_X21_Y17_N10
\C1|Div0|auto_generated|divider|divider|StageOut[59]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\);

-- Location: LCCOMB_X21_Y17_N8
\C1|Div0|auto_generated|divider|divider|StageOut[59]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[59]~86_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[59]~86_combout\);

-- Location: LCCOMB_X21_Y17_N4
\C1|Div0|auto_generated|divider|divider|StageOut[58]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\);

-- Location: LCCOMB_X21_Y17_N2
\C1|Div0|auto_generated|divider|divider|StageOut[58]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\ $ (\C1|Add4~8_combout\ $ 
-- (\C1|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~3_combout\,
	datab => \C1|Add4~8_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\);

-- Location: LCCOMB_X19_Y17_N0
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\ = \C1|Add4~6_combout\ $ (((\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\ & (\C1|Add4~4_combout\)) # (!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\ & 
-- ((\C1|Add4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~6_combout\,
	datab => \C1|Add4~4_combout\,
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\,
	datad => \C1|Add4~12_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\);

-- Location: LCCOMB_X21_Y17_N12
\C1|Div0|auto_generated|divider|divider|StageOut[57]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[57]~90_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[57]~90_combout\);

-- Location: LCCOMB_X21_Y17_N14
\C1|Div0|auto_generated|divider|divider|StageOut[57]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\);

-- Location: LCCOMB_X21_Y17_N20
\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\ = (((\C1|Div0|auto_generated|divider|divider|StageOut[57]~90_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~1\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[57]~90_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[57]~90_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[57]~89_combout\,
	datad => VCC,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~1\);

-- Location: LCCOMB_X21_Y17_N22
\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~1\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~1\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[58]~88_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~1\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~3\);

-- Location: LCCOMB_X21_Y17_N24
\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[59]~86_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ & ((((\C1|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[59]~86_combout\)))))
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~5\ = CARRY((!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~3\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[59]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[59]~86_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~3\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~5\);

-- Location: LCCOMB_X21_Y17_N26
\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~5\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[60]~85_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[60]~84_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~5\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[60]~85_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[60]~84_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[60]~85_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[60]~84_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[60]~85_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[60]~84_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~5\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\);

-- Location: LCCOMB_X21_Y17_N28
\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ = \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\);

-- Location: LCCOMB_X22_Y17_N6
\C1|Div0|auto_generated|divider|divider|StageOut[70]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\);

-- Location: LCCOMB_X22_Y17_N28
\C1|Div0|auto_generated|divider|divider|StageOut[70]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[70]~161_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & 
-- ((\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~4_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~4_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[70]~161_combout\);

-- Location: LCCOMB_X22_Y17_N26
\C1|Div0|auto_generated|divider|divider|StageOut[69]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & 
-- ((\C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~2_combout\,
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[11]~5_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\);

-- Location: LCCOMB_X21_Y17_N6
\C1|Div0|auto_generated|divider|divider|StageOut[69]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[69]~92_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[69]~92_combout\);

-- Location: LCCOMB_X21_Y17_N16
\C1|Div0|auto_generated|divider|divider|StageOut[68]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[68]~93_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[68]~93_combout\);

-- Location: LCCOMB_X21_Y17_N18
\C1|Div0|auto_generated|divider|divider|StageOut[68]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\) # 
-- ((!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~0_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[58]~139_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\);

-- Location: LCCOMB_X19_Y17_N2
\C1|Div0|auto_generated|divider|divider|StageOut[67]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[67]~94_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[67]~94_combout\);

-- Location: LCCOMB_X22_Y17_N4
\C1|Div0|auto_generated|divider|divider|StageOut[67]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\);

-- Location: LCCOMB_X19_Y17_N8
\C1|Div0|auto_generated|divider|divider|StageOut[56]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[56]~98_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Add4~4_combout\ $ (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\ $ 
-- (\C1|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datab => \C1|Add4~4_combout\,
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\,
	datad => \C1|Add4~12_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[56]~98_combout\);

-- Location: LCCOMB_X22_Y17_N0
\C1|Div0|auto_generated|divider|divider|StageOut[56]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[56]~97_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Add4~12_combout\ $ (\C1|Add4~4_combout\ $ 
-- (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~12_combout\,
	datab => \C1|Add4~4_combout\,
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[56]~97_combout\);

-- Location: LCCOMB_X22_Y17_N12
\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[56]~98_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[56]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[56]~98_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[56]~97_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\);

-- Location: LCCOMB_X22_Y17_N30
\C1|Div0|auto_generated|divider|divider|StageOut[66]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[66]~99_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[66]~99_combout\);

-- Location: LCCOMB_X22_Y17_N2
\C1|Div0|auto_generated|divider|divider|StageOut[66]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[66]~96_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & (\C1|Add4~12_combout\ $ (\C1|Add4~4_combout\ $ 
-- (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add4~12_combout\,
	datab => \C1|Add4~4_combout\,
	datac => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[66]~96_combout\);

-- Location: LCCOMB_X22_Y17_N14
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ = (((\C1|Div0|auto_generated|divider|divider|StageOut[66]~99_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[66]~96_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[66]~99_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[66]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[66]~99_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[66]~96_combout\,
	datad => VCC,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~1\);

-- Location: LCCOMB_X22_Y17_N16
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[67]~94_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[67]~94_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[67]~94_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[67]~94_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~1\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~3\);

-- Location: LCCOMB_X22_Y17_N18
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[68]~93_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ & ((((\C1|Div0|auto_generated|divider|divider|StageOut[68]~93_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\)))))
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ = CARRY((!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[68]~93_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[68]~93_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~3\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~5\);

-- Location: LCCOMB_X22_Y17_N20
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[69]~92_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[69]~92_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[69]~92_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[69]~92_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~5\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~7\);

-- Location: LCCOMB_X22_Y17_N22
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\) # ((\C1|Div0|auto_generated|divider|divider|StageOut[70]~161_combout\) # 
-- (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[70]~91_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[70]~161_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~7\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\);

-- Location: LCCOMB_X22_Y17_N24
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ = !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~9_cout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\);

-- Location: LCCOMB_X22_Y17_N8
\C1|Div0|auto_generated|divider|divider|StageOut[79]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[79]~100_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[79]~100_combout\);

-- Location: LCCOMB_X23_Y17_N4
\C1|Div0|auto_generated|divider|divider|StageOut[79]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[79]~141_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\) # 
-- ((!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~4_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[69]~162_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[79]~141_combout\);

-- Location: LCCOMB_X23_Y17_N6
\C1|Div0|auto_generated|divider|divider|StageOut[78]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[68]~140_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~2_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\);

-- Location: LCCOMB_X23_Y17_N28
\C1|Div0|auto_generated|divider|divider|StageOut[78]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[78]~101_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[78]~101_combout\);

-- Location: LCCOMB_X23_Y17_N10
\C1|Div0|auto_generated|divider|divider|StageOut[77]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & 
-- (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\)) # (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[9]~7_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~0_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\);

-- Location: LCCOMB_X23_Y17_N14
\C1|Div0|auto_generated|divider|divider|StageOut[77]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[77]~102_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[77]~102_combout\);

-- Location: LCCOMB_X22_Y17_N10
\C1|Div0|auto_generated|divider|divider|StageOut[76]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[76]~103_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[76]~103_combout\);

-- Location: LCCOMB_X23_Y15_N6
\C1|Div0|auto_generated|divider|divider|StageOut[76]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[66]~96_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[66]~96_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\);

-- Location: LCCOMB_X22_Y16_N12
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\ = \C1|Add4~2_combout\ $ (((\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\ & (\C1|Add4~0_combout\)) # (!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\ & 
-- ((\C1|Add4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\,
	datab => \C1|Add4~0_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Add4~2_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\);

-- Location: LCCOMB_X22_Y16_N6
\C1|Div0|auto_generated|divider|divider|StageOut[55]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[55]~106_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[55]~106_combout\);

-- Location: LCCOMB_X22_Y16_N24
\C1|Div0|auto_generated|divider|divider|StageOut[55]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[55]~105_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[55]~105_combout\);

-- Location: LCCOMB_X22_Y16_N20
\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[55]~106_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[55]~105_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[55]~106_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[55]~105_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\);

-- Location: LCCOMB_X22_Y16_N28
\C1|Div0|auto_generated|divider|divider|StageOut[75]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[75]~164_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & 
-- (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\)) # (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[75]~164_combout\);

-- Location: LCCOMB_X22_Y16_N8
\C1|Div0|auto_generated|divider|divider|StageOut[65]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[65]~107_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~12_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[65]~107_combout\);

-- Location: LCCOMB_X22_Y16_N2
\C1|Div0|auto_generated|divider|divider|StageOut[65]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[65]~104_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[7]~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[65]~104_combout\);

-- Location: LCCOMB_X22_Y16_N10
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[65]~107_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[65]~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[65]~107_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[65]~104_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\);

-- Location: LCCOMB_X23_Y17_N0
\C1|Div0|auto_generated|divider|divider|StageOut[75]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[75]~108_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[75]~108_combout\);

-- Location: LCCOMB_X23_Y17_N16
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ = (((\C1|Div0|auto_generated|divider|divider|StageOut[75]~164_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[75]~108_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[75]~164_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[75]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[75]~164_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[75]~108_combout\,
	datad => VCC,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\);

-- Location: LCCOMB_X23_Y17_N18
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[76]~103_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[76]~103_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[76]~103_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[76]~103_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~1\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\);

-- Location: LCCOMB_X23_Y17_N20
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[77]~102_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & ((((\C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[77]~102_combout\)))))
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ = CARRY((!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[77]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[77]~102_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~3\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\);

-- Location: LCCOMB_X23_Y17_N22
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[78]~101_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[78]~101_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[78]~101_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[78]~101_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~5\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\);

-- Location: LCCOMB_X23_Y17_N24
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[79]~100_combout\) # ((\C1|Div0|auto_generated|divider|divider|StageOut[79]~141_combout\) # 
-- (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[79]~100_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[79]~141_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~7\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\);

-- Location: LCCOMB_X23_Y17_N26
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ = !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~9_cout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\);

-- Location: LCCOMB_X23_Y17_N30
\C1|Div0|auto_generated|divider|divider|StageOut[88]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[88]~109_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[88]~109_combout\);

-- Location: LCCOMB_X23_Y16_N28
\C1|Div0|auto_generated|divider|divider|StageOut[88]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[88]~144_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[78]~142_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[88]~144_combout\);

-- Location: LCCOMB_X23_Y17_N12
\C1|Div0|auto_generated|divider|divider|StageOut[87]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[87]~110_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[87]~110_combout\);

-- Location: LCCOMB_X23_Y17_N8
\C1|Div0|auto_generated|divider|divider|StageOut[87]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[77]~163_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\);

-- Location: LCCOMB_X23_Y17_N2
\C1|Div0|auto_generated|divider|divider|StageOut[86]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[86]~111_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[86]~111_combout\);

-- Location: LCCOMB_X23_Y15_N0
\C1|Div0|auto_generated|divider|divider|StageOut[86]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\) # 
-- ((!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[76]~143_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\);

-- Location: LCCOMB_X23_Y16_N6
\C1|Div0|auto_generated|divider|divider|StageOut[85]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[75]~164_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~12_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[75]~164_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\);

-- Location: LCCOMB_X23_Y16_N2
\C1|Div0|auto_generated|divider|divider|StageOut[85]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[85]~112_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[85]~112_combout\);

-- Location: LCCOMB_X22_Y16_N26
\C1|Div0|auto_generated|divider|divider|StageOut[64]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[64]~113_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\ $ (\C1|Add4~0_combout\ $ 
-- (\C1|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\,
	datab => \C1|Add4~0_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[64]~113_combout\);

-- Location: LCCOMB_X22_Y16_N30
\C1|Div0|auto_generated|divider|divider|StageOut[54]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[54]~115_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\ $ (\C1|Add4~0_combout\ $ 
-- (\C1|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\,
	datab => \C1|Add4~0_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[54]~115_combout\);

-- Location: LCCOMB_X22_Y16_N16
\C1|Div0|auto_generated|divider|divider|StageOut[54]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[54]~114_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\ $ (\C1|Add4~0_combout\ $ 
-- (\C1|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~1_combout\,
	datab => \C1|Add4~0_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[54]~114_combout\);

-- Location: LCCOMB_X22_Y16_N4
\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[54]~115_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[54]~114_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[54]~115_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[54]~114_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X22_Y16_N0
\C1|Div0|auto_generated|divider|divider|StageOut[64]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[64]~116_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[64]~116_combout\);

-- Location: LCCOMB_X22_Y16_N14
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[64]~113_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[64]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[64]~113_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[64]~116_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\);

-- Location: LCCOMB_X22_Y14_N18
\C1|Div0|auto_generated|divider|divider|StageOut[74]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[74]~117_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[74]~117_combout\);

-- Location: LCCOMB_X22_Y16_N22
\C1|Div0|auto_generated|divider|divider|StageOut[74]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[74]~148_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[64]~113_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[64]~113_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[74]~148_combout\);

-- Location: LCCOMB_X23_Y16_N0
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[74]~117_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[74]~148_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[74]~117_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[74]~148_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\);

-- Location: LCCOMB_X23_Y16_N24
\C1|Div0|auto_generated|divider|divider|StageOut[84]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[84]~118_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[84]~118_combout\);

-- Location: LCCOMB_X23_Y16_N8
\C1|Div0|auto_generated|divider|divider|StageOut[84]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[84]~149_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[74]~148_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~14_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[74]~148_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[84]~149_combout\);

-- Location: LCCOMB_X23_Y16_N12
\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ = (((\C1|Div0|auto_generated|divider|divider|StageOut[84]~118_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[84]~149_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[84]~118_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[84]~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[84]~118_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[84]~149_combout\,
	datad => VCC,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~1\);

-- Location: LCCOMB_X23_Y16_N14
\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[85]~112_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[85]~112_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[85]~112_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[85]~112_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~1\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~3\);

-- Location: LCCOMB_X23_Y16_N16
\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[86]~111_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & ((((\C1|Div0|auto_generated|divider|divider|StageOut[86]~111_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\)))))
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ = CARRY((!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[86]~111_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[86]~111_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~3\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~5\);

-- Location: LCCOMB_X23_Y16_N18
\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[87]~110_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[87]~110_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[87]~110_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[87]~110_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~5\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~7\);

-- Location: LCCOMB_X23_Y16_N20
\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[88]~109_combout\) # ((\C1|Div0|auto_generated|divider|divider|StageOut[88]~144_combout\) # 
-- (!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[88]~109_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[88]~144_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~7\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\);

-- Location: LCCOMB_X23_Y16_N22
\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ = !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~9_cout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\);

-- Location: LCCOMB_X24_Y16_N0
\C1|Div0|auto_generated|divider|divider|StageOut[97]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[97]~150_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[87]~145_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[97]~150_combout\);

-- Location: LCCOMB_X24_Y16_N20
\C1|Div0|auto_generated|divider|divider|StageOut[97]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[97]~119_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[97]~119_combout\);

-- Location: LCCOMB_X23_Y15_N22
\C1|Div0|auto_generated|divider|divider|StageOut[96]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[86]~146_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\);

-- Location: LCCOMB_X24_Y16_N2
\C1|Div0|auto_generated|divider|divider|StageOut[96]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[96]~120_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[96]~120_combout\);

-- Location: LCCOMB_X23_Y16_N10
\C1|Div0|auto_generated|divider|divider|StageOut[95]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[85]~147_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\);

-- Location: LCCOMB_X24_Y16_N28
\C1|Div0|auto_generated|divider|divider|StageOut[95]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[95]~121_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[95]~121_combout\);

-- Location: LCCOMB_X24_Y16_N30
\C1|Div0|auto_generated|divider|divider|StageOut[94]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[94]~122_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[94]~122_combout\);

-- Location: LCCOMB_X23_Y16_N4
\C1|Div0|auto_generated|divider|divider|StageOut[94]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[84]~149_combout\) # 
-- ((!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[84]~149_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~12_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\);

-- Location: LCCOMB_X22_Y14_N24
\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ = \C1|Add1~8_combout\ $ (((\C1|Add4~12_combout\ & ((\C1|Add1~6_combout\) # (!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	datab => \C1|Add1~6_combout\,
	datac => \C1|Add1~8_combout\,
	datad => \C1|Add4~12_combout\,
	combout => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\);

-- Location: LCCOMB_X23_Y15_N30
\C1|Div0|auto_generated|divider|divider|StageOut[63]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[63]~125_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[63]~125_combout\);

-- Location: LCCOMB_X23_Y15_N20
\C1|Div0|auto_generated|divider|divider|StageOut[63]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[63]~124_combout\ = (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[63]~124_combout\);

-- Location: LCCOMB_X23_Y15_N28
\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[63]~125_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[63]~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[63]~125_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[63]~124_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\);

-- Location: LCCOMB_X23_Y15_N4
\C1|Div0|auto_generated|divider|divider|StageOut[83]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[83]~165_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & 
-- (\C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\)) # (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[83]~165_combout\);

-- Location: LCCOMB_X23_Y15_N14
\C1|Div0|auto_generated|divider|divider|StageOut[73]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\);

-- Location: LCCOMB_X23_Y15_N24
\C1|Div0|auto_generated|divider|divider|StageOut[73]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[73]~126_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[73]~126_combout\);

-- Location: LCCOMB_X23_Y15_N26
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[73]~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[73]~123_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[73]~126_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\);

-- Location: LCCOMB_X23_Y15_N18
\C1|Div0|auto_generated|divider|divider|StageOut[83]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\);

-- Location: LCCOMB_X23_Y15_N12
\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[83]~165_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[83]~165_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[83]~127_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\);

-- Location: LCCOMB_X23_Y16_N26
\C1|Div0|auto_generated|divider|divider|StageOut[93]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[93]~128_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[93]~128_combout\);

-- Location: LCCOMB_X23_Y15_N16
\C1|Div0|auto_generated|divider|divider|StageOut[93]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[93]~154_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[83]~165_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~14_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[83]~165_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[93]~154_combout\);

-- Location: LCCOMB_X24_Y16_N8
\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ = (((\C1|Div0|auto_generated|divider|divider|StageOut[93]~128_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[93]~154_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[93]~128_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[93]~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[93]~128_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[93]~154_combout\,
	datad => VCC,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~1\);

-- Location: LCCOMB_X24_Y16_N10
\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[94]~122_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[94]~122_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[94]~122_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[94]~122_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~1\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~3\);

-- Location: LCCOMB_X24_Y16_N12
\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[95]~121_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ & ((((\C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[95]~121_combout\)))))
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ = CARRY((!\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[95]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[95]~121_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~3\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~5\);

-- Location: LCCOMB_X24_Y16_N14
\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ & (((\C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[96]~120_combout\)))) # (!\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\ & 
-- (!\C1|Div0|auto_generated|divider|divider|StageOut[96]~120_combout\)))
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[96]~120_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[96]~120_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~5\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~7\);

-- Location: LCCOMB_X24_Y16_N16
\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[97]~150_combout\) # ((\C1|Div0|auto_generated|divider|divider|StageOut[97]~119_combout\) # 
-- (!\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[97]~150_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[97]~119_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~7\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\);

-- Location: LCCOMB_X24_Y16_N18
\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ = !\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~9_cout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\);

-- Location: LCCOMB_X23_Y15_N10
\C1|Div0|auto_generated|divider|divider|StageOut[106]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[106]~155_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\) # 
-- ((!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[96]~151_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[106]~155_combout\);

-- Location: LCCOMB_X24_Y16_N24
\C1|Div0|auto_generated|divider|divider|StageOut[106]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[106]~129_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[106]~129_combout\);

-- Location: LCCOMB_X23_Y16_N30
\C1|Div0|auto_generated|divider|divider|StageOut[105]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[105]~156_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[95]~152_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[105]~156_combout\);

-- Location: LCCOMB_X24_Y16_N26
\C1|Div0|auto_generated|divider|divider|StageOut[105]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[105]~130_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[105]~130_combout\);

-- Location: LCCOMB_X24_Y16_N4
\C1|Div0|auto_generated|divider|divider|StageOut[104]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[104]~131_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[104]~131_combout\);

-- Location: LCCOMB_X24_Y16_N22
\C1|Div0|auto_generated|divider|divider|StageOut[104]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[104]~157_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[94]~153_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[104]~157_combout\);

-- Location: LCCOMB_X24_Y16_N6
\C1|Div0|auto_generated|divider|divider|StageOut[103]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[103]~132_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[103]~132_combout\);

-- Location: LCCOMB_X23_Y14_N22
\C1|Div0|auto_generated|divider|divider|StageOut[103]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[103]~158_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[93]~154_combout\) # 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[93]~154_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~12_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[103]~158_combout\);

-- Location: LCCOMB_X22_Y14_N22
\C1|Div0|auto_generated|divider|divider|StageOut[72]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[72]~134_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\C1|Add1~6_combout\ $ (((!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ & 
-- \C1|Add4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	datab => \C1|Add4~12_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[72]~134_combout\);

-- Location: LCCOMB_X22_Y14_N0
\C1|Div0|auto_generated|divider|divider|StageOut[72]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[72]~135_combout\ = (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\C1|Add1~6_combout\ $ (((!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ & 
-- \C1|Add4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	datab => \C1|Add4~12_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[72]~135_combout\);

-- Location: LCCOMB_X22_Y14_N4
\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[72]~134_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[72]~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[72]~134_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[72]~135_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\);

-- Location: LCCOMB_X23_Y14_N14
\C1|Div0|auto_generated|divider|divider|StageOut[82]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[82]~136_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[82]~136_combout\);

-- Location: LCCOMB_X23_Y14_N24
\C1|Div0|auto_generated|divider|divider|StageOut[82]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[82]~133_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & (\C1|Add1~6_combout\ $ (((!\C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ & 
-- \C1|Add4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|Div0|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[82]~133_combout\);

-- Location: LCCOMB_X23_Y14_N0
\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~14_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[82]~136_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[82]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Div0|auto_generated|divider|divider|StageOut[82]~136_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[82]~133_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~14_combout\);

-- Location: LCCOMB_X23_Y14_N16
\C1|Div0|auto_generated|divider|divider|StageOut[92]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[92]~159_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[82]~133_combout\) # 
-- ((!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[82]~133_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[92]~159_combout\);

-- Location: LCCOMB_X23_Y14_N18
\C1|Div0|auto_generated|divider|divider|StageOut[102]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[102]~160_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[92]~159_combout\) # 
-- ((!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~14_combout\,
	datac => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[92]~159_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[102]~160_combout\);

-- Location: LCCOMB_X23_Y14_N12
\C1|Div0|auto_generated|divider|divider|StageOut[92]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[92]~137_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~14_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~14_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[92]~137_combout\);

-- Location: LCCOMB_X23_Y14_N10
\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~12_combout\ = (\C1|Div0|auto_generated|divider|divider|StageOut[92]~137_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[92]~159_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[92]~137_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|StageOut[92]~159_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~12_combout\);

-- Location: LCCOMB_X24_Y14_N18
\C1|Div0|auto_generated|divider|divider|StageOut[102]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|StageOut[102]~138_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~12_combout\ & !\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~12_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \C1|Div0|auto_generated|divider|divider|StageOut[102]~138_combout\);

-- Location: LCCOMB_X24_Y14_N20
\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~1_cout\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[102]~160_combout\) # (\C1|Div0|auto_generated|divider|divider|StageOut[102]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[102]~160_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[102]~138_combout\,
	datad => VCC,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~1_cout\);

-- Location: LCCOMB_X24_Y14_N22
\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~3_cout\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[103]~132_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[103]~158_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[103]~132_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[103]~158_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~1_cout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~3_cout\);

-- Location: LCCOMB_X24_Y14_N24
\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~5_cout\ = CARRY((!\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~3_cout\ & ((\C1|Div0|auto_generated|divider|divider|StageOut[104]~131_combout\) # 
-- (\C1|Div0|auto_generated|divider|divider|StageOut[104]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[104]~131_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[104]~157_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~3_cout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~5_cout\);

-- Location: LCCOMB_X24_Y14_N26
\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~7_cout\ = CARRY((!\C1|Div0|auto_generated|divider|divider|StageOut[105]~156_combout\ & (!\C1|Div0|auto_generated|divider|divider|StageOut[105]~130_combout\ & 
-- !\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[105]~156_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[105]~130_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~5_cout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~7_cout\);

-- Location: LCCOMB_X24_Y14_N28
\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~9_cout\ = CARRY((\C1|Div0|auto_generated|divider|divider|StageOut[106]~155_combout\) # ((\C1|Div0|auto_generated|divider|divider|StageOut[106]~129_combout\) # 
-- (!\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|StageOut[106]~155_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|StageOut[106]~129_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~7_cout\,
	cout => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~9_cout\);

-- Location: LCCOMB_X24_Y14_N30
\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10_combout\ = !\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~9_cout\,
	combout => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10_combout\);

-- Location: LCCOMB_X24_Y14_N0
\C1|Div0|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~0_combout\ = \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10_combout\ $ (VCC)
-- \C1|Div0|auto_generated|divider|op_1~1\ = CARRY(\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10_combout\,
	datad => VCC,
	combout => \C1|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \C1|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X24_Y14_N2
\C1|Div0|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~2_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ & (!\C1|Div0|auto_generated|divider|op_1~1\)) # (!\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ 
-- & ((\C1|Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \C1|Div0|auto_generated|divider|op_1~3\ = CARRY((!\C1|Div0|auto_generated|divider|op_1~1\) # (!\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|op_1~1\,
	combout => \C1|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \C1|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X24_Y14_N4
\C1|Div0|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~4_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & (\C1|Div0|auto_generated|divider|op_1~3\ $ (GND))) # 
-- (!\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & (!\C1|Div0|auto_generated|divider|op_1~3\ & VCC))
-- \C1|Div0|auto_generated|divider|op_1~5\ = CARRY((\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & !\C1|Div0|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|op_1~3\,
	combout => \C1|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \C1|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X24_Y14_N6
\C1|Div0|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~6_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & (!\C1|Div0|auto_generated|divider|op_1~5\)) # (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ & 
-- ((\C1|Div0|auto_generated|divider|op_1~5\) # (GND)))
-- \C1|Div0|auto_generated|divider|op_1~7\ = CARRY((!\C1|Div0|auto_generated|divider|op_1~5\) # (!\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|op_1~5\,
	combout => \C1|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \C1|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X24_Y14_N8
\C1|Div0|auto_generated|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~8_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\C1|Div0|auto_generated|divider|op_1~7\ $ (GND))) # 
-- (!\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (!\C1|Div0|auto_generated|divider|op_1~7\ & VCC))
-- \C1|Div0|auto_generated|divider|op_1~9\ = CARRY((\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & !\C1|Div0|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|op_1~7\,
	combout => \C1|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \C1|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X23_Y14_N8
\C1|drawProcess~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~12_combout\ = (\C1|Add4~12_combout\ & (((!\C1|Div0|auto_generated|divider|op_1~8_combout\)))) # (!\C1|Add4~12_combout\ & (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & 
-- ((\C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datab => \C1|Add4~12_combout\,
	datac => \C1|Div0|auto_generated|divider|op_1~8_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \C1|drawProcess~12_combout\);

-- Location: LCCOMB_X24_Y14_N10
\C1|Div0|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~10_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & (!\C1|Div0|auto_generated|divider|op_1~9\)) # (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\ & 
-- ((\C1|Div0|auto_generated|divider|op_1~9\) # (GND)))
-- \C1|Div0|auto_generated|divider|op_1~11\ = CARRY((!\C1|Div0|auto_generated|divider|op_1~9\) # (!\C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~8_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|op_1~9\,
	combout => \C1|Div0|auto_generated|divider|op_1~10_combout\,
	cout => \C1|Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X24_Y14_N12
\C1|Div0|auto_generated|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~12_combout\ = (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (\C1|Div0|auto_generated|divider|op_1~11\ $ (GND))) # 
-- (!\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & (!\C1|Div0|auto_generated|divider|op_1~11\ & VCC))
-- \C1|Div0|auto_generated|divider|op_1~13\ = CARRY((\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\ & !\C1|Div0|auto_generated|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|op_1~11\,
	combout => \C1|Div0|auto_generated|divider|op_1~12_combout\,
	cout => \C1|Div0|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X23_Y14_N2
\C1|drawProcess~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~11_combout\ = (\C1|Add4~12_combout\ & (((!\C1|Div0|auto_generated|divider|op_1~10_combout\ & !\C1|Div0|auto_generated|divider|op_1~12_combout\)))) # (!\C1|Add4~12_combout\ & 
-- (\C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~6_combout\,
	datab => \C1|Add4~12_combout\,
	datac => \C1|Div0|auto_generated|divider|op_1~10_combout\,
	datad => \C1|Div0|auto_generated|divider|op_1~12_combout\,
	combout => \C1|drawProcess~11_combout\);

-- Location: LCCOMB_X23_Y14_N6
\C1|drawProcess~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~13_combout\ = (\C1|drawProcess~9_combout\ & (\C1|drawProcess~10_combout\ & (\C1|drawProcess~12_combout\ & \C1|drawProcess~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~9_combout\,
	datab => \C1|drawProcess~10_combout\,
	datac => \C1|drawProcess~12_combout\,
	datad => \C1|drawProcess~11_combout\,
	combout => \C1|drawProcess~13_combout\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y19_N4
\enemy2x[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x[1]~feeder_combout\ = \enemy2x~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \enemy2x~1_combout\,
	combout => \enemy2x[1]~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N8
\RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X22_Y19_N5
\enemy2x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(1));

-- Location: FF_X28_Y10_N23
\dbc|freq_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(11));

-- Location: LCCOMB_X28_Y10_N0
\dbc|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~0_combout\ = \dbc|freq_counter\(0) $ (VCC)
-- \dbc|Add0~1\ = CARRY(\dbc|freq_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbc|freq_counter\(0),
	datad => VCC,
	combout => \dbc|Add0~0_combout\,
	cout => \dbc|Add0~1\);

-- Location: FF_X28_Y10_N1
\dbc|freq_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(0));

-- Location: LCCOMB_X28_Y10_N2
\dbc|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~2_combout\ = (\dbc|freq_counter\(1) & (!\dbc|Add0~1\)) # (!\dbc|freq_counter\(1) & ((\dbc|Add0~1\) # (GND)))
-- \dbc|Add0~3\ = CARRY((!\dbc|Add0~1\) # (!\dbc|freq_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbc|freq_counter\(1),
	datad => VCC,
	cin => \dbc|Add0~1\,
	combout => \dbc|Add0~2_combout\,
	cout => \dbc|Add0~3\);

-- Location: FF_X28_Y10_N3
\dbc|freq_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(1));

-- Location: LCCOMB_X28_Y10_N4
\dbc|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~4_combout\ = (\dbc|freq_counter\(2) & (\dbc|Add0~3\ $ (GND))) # (!\dbc|freq_counter\(2) & (!\dbc|Add0~3\ & VCC))
-- \dbc|Add0~5\ = CARRY((\dbc|freq_counter\(2) & !\dbc|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbc|freq_counter\(2),
	datad => VCC,
	cin => \dbc|Add0~3\,
	combout => \dbc|Add0~4_combout\,
	cout => \dbc|Add0~5\);

-- Location: FF_X28_Y10_N5
\dbc|freq_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(2));

-- Location: LCCOMB_X28_Y10_N6
\dbc|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~6_combout\ = (\dbc|freq_counter\(3) & (!\dbc|Add0~5\)) # (!\dbc|freq_counter\(3) & ((\dbc|Add0~5\) # (GND)))
-- \dbc|Add0~7\ = CARRY((!\dbc|Add0~5\) # (!\dbc|freq_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|freq_counter\(3),
	datad => VCC,
	cin => \dbc|Add0~5\,
	combout => \dbc|Add0~6_combout\,
	cout => \dbc|Add0~7\);

-- Location: FF_X28_Y10_N7
\dbc|freq_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(3));

-- Location: LCCOMB_X28_Y10_N8
\dbc|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~8_combout\ = (\dbc|freq_counter\(4) & (\dbc|Add0~7\ $ (GND))) # (!\dbc|freq_counter\(4) & (!\dbc|Add0~7\ & VCC))
-- \dbc|Add0~9\ = CARRY((\dbc|freq_counter\(4) & !\dbc|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|freq_counter\(4),
	datad => VCC,
	cin => \dbc|Add0~7\,
	combout => \dbc|Add0~8_combout\,
	cout => \dbc|Add0~9\);

-- Location: LCCOMB_X29_Y10_N4
\dbc|freq_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|freq_counter~0_combout\ = (!\dbc|Equal0~4_combout\ & \dbc|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbc|Equal0~4_combout\,
	datad => \dbc|Add0~8_combout\,
	combout => \dbc|freq_counter~0_combout\);

-- Location: FF_X29_Y10_N5
\dbc|freq_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|freq_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(4));

-- Location: LCCOMB_X28_Y10_N10
\dbc|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~10_combout\ = (\dbc|freq_counter\(5) & (!\dbc|Add0~9\)) # (!\dbc|freq_counter\(5) & ((\dbc|Add0~9\) # (GND)))
-- \dbc|Add0~11\ = CARRY((!\dbc|Add0~9\) # (!\dbc|freq_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|freq_counter\(5),
	datad => VCC,
	cin => \dbc|Add0~9\,
	combout => \dbc|Add0~10_combout\,
	cout => \dbc|Add0~11\);

-- Location: FF_X28_Y10_N11
\dbc|freq_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(5));

-- Location: LCCOMB_X28_Y10_N12
\dbc|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~12_combout\ = (\dbc|freq_counter\(6) & (\dbc|Add0~11\ $ (GND))) # (!\dbc|freq_counter\(6) & (!\dbc|Add0~11\ & VCC))
-- \dbc|Add0~13\ = CARRY((\dbc|freq_counter\(6) & !\dbc|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|freq_counter\(6),
	datad => VCC,
	cin => \dbc|Add0~11\,
	combout => \dbc|Add0~12_combout\,
	cout => \dbc|Add0~13\);

-- Location: LCCOMB_X29_Y10_N6
\dbc|freq_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|freq_counter~1_combout\ = (!\dbc|Equal0~4_combout\ & \dbc|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbc|Equal0~4_combout\,
	datad => \dbc|Add0~12_combout\,
	combout => \dbc|freq_counter~1_combout\);

-- Location: FF_X29_Y10_N7
\dbc|freq_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|freq_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(6));

-- Location: LCCOMB_X28_Y10_N14
\dbc|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~14_combout\ = (\dbc|freq_counter\(7) & (!\dbc|Add0~13\)) # (!\dbc|freq_counter\(7) & ((\dbc|Add0~13\) # (GND)))
-- \dbc|Add0~15\ = CARRY((!\dbc|Add0~13\) # (!\dbc|freq_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbc|freq_counter\(7),
	datad => VCC,
	cin => \dbc|Add0~13\,
	combout => \dbc|Add0~14_combout\,
	cout => \dbc|Add0~15\);

-- Location: FF_X28_Y10_N15
\dbc|freq_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(7));

-- Location: LCCOMB_X28_Y10_N16
\dbc|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~16_combout\ = (\dbc|freq_counter\(8) & (\dbc|Add0~15\ $ (GND))) # (!\dbc|freq_counter\(8) & (!\dbc|Add0~15\ & VCC))
-- \dbc|Add0~17\ = CARRY((\dbc|freq_counter\(8) & !\dbc|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|freq_counter\(8),
	datad => VCC,
	cin => \dbc|Add0~15\,
	combout => \dbc|Add0~16_combout\,
	cout => \dbc|Add0~17\);

-- Location: LCCOMB_X29_Y10_N2
\dbc|freq_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|freq_counter~2_combout\ = (\dbc|Add0~16_combout\ & !\dbc|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dbc|Add0~16_combout\,
	datad => \dbc|Equal0~4_combout\,
	combout => \dbc|freq_counter~2_combout\);

-- Location: FF_X29_Y10_N3
\dbc|freq_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|freq_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(8));

-- Location: LCCOMB_X28_Y10_N18
\dbc|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~18_combout\ = (\dbc|freq_counter\(9) & (!\dbc|Add0~17\)) # (!\dbc|freq_counter\(9) & ((\dbc|Add0~17\) # (GND)))
-- \dbc|Add0~19\ = CARRY((!\dbc|Add0~17\) # (!\dbc|freq_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|freq_counter\(9),
	datad => VCC,
	cin => \dbc|Add0~17\,
	combout => \dbc|Add0~18_combout\,
	cout => \dbc|Add0~19\);

-- Location: LCCOMB_X29_Y10_N20
\dbc|freq_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|freq_counter~3_combout\ = (!\dbc|Equal0~4_combout\ & \dbc|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbc|Equal0~4_combout\,
	datad => \dbc|Add0~18_combout\,
	combout => \dbc|freq_counter~3_combout\);

-- Location: FF_X29_Y10_N21
\dbc|freq_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|freq_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(9));

-- Location: LCCOMB_X28_Y10_N20
\dbc|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~20_combout\ = (\dbc|freq_counter\(10) & (\dbc|Add0~19\ $ (GND))) # (!\dbc|freq_counter\(10) & (!\dbc|Add0~19\ & VCC))
-- \dbc|Add0~21\ = CARRY((\dbc|freq_counter\(10) & !\dbc|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbc|freq_counter\(10),
	datad => VCC,
	cin => \dbc|Add0~19\,
	combout => \dbc|Add0~20_combout\,
	cout => \dbc|Add0~21\);

-- Location: FF_X28_Y10_N21
\dbc|freq_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(10));

-- Location: LCCOMB_X28_Y10_N22
\dbc|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~22_combout\ = (\dbc|freq_counter\(11) & (!\dbc|Add0~21\)) # (!\dbc|freq_counter\(11) & ((\dbc|Add0~21\) # (GND)))
-- \dbc|Add0~23\ = CARRY((!\dbc|Add0~21\) # (!\dbc|freq_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|freq_counter\(11),
	datad => VCC,
	cin => \dbc|Add0~21\,
	combout => \dbc|Add0~22_combout\,
	cout => \dbc|Add0~23\);

-- Location: LCCOMB_X29_Y10_N10
\dbc|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Equal0~2_combout\ = (!\dbc|Add0~22_combout\ & (!\dbc|Add0~20_combout\ & (\dbc|Add0~16_combout\ & \dbc|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Add0~22_combout\,
	datab => \dbc|Add0~20_combout\,
	datac => \dbc|Add0~16_combout\,
	datad => \dbc|Add0~18_combout\,
	combout => \dbc|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y10_N24
\dbc|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Equal0~1_combout\ = (\dbc|Add0~12_combout\ & (!\dbc|Add0~10_combout\ & (!\dbc|Add0~14_combout\ & \dbc|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Add0~12_combout\,
	datab => \dbc|Add0~10_combout\,
	datac => \dbc|Add0~14_combout\,
	datad => \dbc|Add0~8_combout\,
	combout => \dbc|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y11_N28
\dbc|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Equal0~0_combout\ = (!\dbc|Add0~2_combout\ & (!\dbc|Add0~4_combout\ & (!\dbc|Add0~6_combout\ & !\dbc|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Add0~2_combout\,
	datab => \dbc|Add0~4_combout\,
	datac => \dbc|Add0~6_combout\,
	datad => \dbc|Add0~0_combout\,
	combout => \dbc|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y10_N22
\dbc|freq_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|freq_counter~5_combout\ = (!\dbc|Equal0~4_combout\ & \dbc|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbc|Equal0~4_combout\,
	datad => \dbc|Add0~30_combout\,
	combout => \dbc|freq_counter~5_combout\);

-- Location: FF_X29_Y10_N23
\dbc|freq_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|freq_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(15));

-- Location: LCCOMB_X28_Y10_N24
\dbc|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~24_combout\ = (\dbc|freq_counter\(12) & (\dbc|Add0~23\ $ (GND))) # (!\dbc|freq_counter\(12) & (!\dbc|Add0~23\ & VCC))
-- \dbc|Add0~25\ = CARRY((\dbc|freq_counter\(12) & !\dbc|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbc|freq_counter\(12),
	datad => VCC,
	cin => \dbc|Add0~23\,
	combout => \dbc|Add0~24_combout\,
	cout => \dbc|Add0~25\);

-- Location: FF_X28_Y10_N25
\dbc|freq_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(12));

-- Location: LCCOMB_X28_Y10_N26
\dbc|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~26_combout\ = (\dbc|freq_counter\(13) & (!\dbc|Add0~25\)) # (!\dbc|freq_counter\(13) & ((\dbc|Add0~25\) # (GND)))
-- \dbc|Add0~27\ = CARRY((!\dbc|Add0~25\) # (!\dbc|freq_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|freq_counter\(13),
	datad => VCC,
	cin => \dbc|Add0~25\,
	combout => \dbc|Add0~26_combout\,
	cout => \dbc|Add0~27\);

-- Location: FF_X28_Y10_N27
\dbc|freq_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(13));

-- Location: LCCOMB_X28_Y10_N28
\dbc|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~28_combout\ = (\dbc|freq_counter\(14) & (\dbc|Add0~27\ $ (GND))) # (!\dbc|freq_counter\(14) & (!\dbc|Add0~27\ & VCC))
-- \dbc|Add0~29\ = CARRY((\dbc|freq_counter\(14) & !\dbc|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbc|freq_counter\(14),
	datad => VCC,
	cin => \dbc|Add0~27\,
	combout => \dbc|Add0~28_combout\,
	cout => \dbc|Add0~29\);

-- Location: LCCOMB_X29_Y10_N12
\dbc|freq_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|freq_counter~4_combout\ = (!\dbc|Equal0~4_combout\ & \dbc|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbc|Equal0~4_combout\,
	datad => \dbc|Add0~28_combout\,
	combout => \dbc|freq_counter~4_combout\);

-- Location: FF_X29_Y10_N13
\dbc|freq_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|freq_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|freq_counter\(14));

-- Location: LCCOMB_X28_Y10_N30
\dbc|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add0~30_combout\ = \dbc|Add0~29\ $ (\dbc|freq_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dbc|freq_counter\(15),
	cin => \dbc|Add0~29\,
	combout => \dbc|Add0~30_combout\);

-- Location: LCCOMB_X31_Y10_N4
\dbc|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Equal0~3_combout\ = (\dbc|Add0~30_combout\ & (!\dbc|Add0~26_combout\ & (!\dbc|Add0~24_combout\ & \dbc|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Add0~30_combout\,
	datab => \dbc|Add0~26_combout\,
	datac => \dbc|Add0~24_combout\,
	datad => \dbc|Add0~28_combout\,
	combout => \dbc|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y10_N16
\dbc|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Equal0~4_combout\ = (\dbc|Equal0~2_combout\ & (\dbc|Equal0~1_combout\ & (\dbc|Equal0~0_combout\ & \dbc|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Equal0~2_combout\,
	datab => \dbc|Equal0~1_combout\,
	datac => \dbc|Equal0~0_combout\,
	datad => \dbc|Equal0~3_combout\,
	combout => \dbc|Equal0~4_combout\);

-- Location: IOIBUF_X0_Y23_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X24_Y10_N22
\dbc|last_in~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|last_in~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \dbc|last_in~0_combout\);

-- Location: FF_X24_Y10_N23
\dbc|last_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|last_in~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|last_in~q\);

-- Location: LCCOMB_X24_Y10_N16
\dbc|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|process_0~0_combout\ = \dbc|last_in~q\ $ (\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|last_in~q\,
	datac => \KEY[1]~input_o\,
	combout => \dbc|process_0~0_combout\);

-- Location: LCCOMB_X24_Y10_N12
\dbc|enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|enable~0_combout\ = (\dbc|Equal1~1_combout\ & (!\dbc|Equal0~4_combout\ & ((\dbc|enable~q\) # (!\dbc|process_0~0_combout\)))) # (!\dbc|Equal1~1_combout\ & (((\dbc|enable~q\)) # (!\dbc|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Equal1~1_combout\,
	datab => \dbc|process_0~0_combout\,
	datac => \dbc|enable~q\,
	datad => \dbc|Equal0~4_combout\,
	combout => \dbc|enable~0_combout\);

-- Location: FF_X24_Y10_N13
\dbc|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|enable~q\);

-- Location: LCCOMB_X24_Y10_N10
\dbc|temp[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp[3]~13_combout\ = ((!\dbc|enable~q\ & (\KEY[1]~input_o\ $ (\dbc|last_in~q\)))) # (!\dbc|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|enable~q\,
	datab => \KEY[1]~input_o\,
	datac => \dbc|last_in~q\,
	datad => \dbc|Equal0~4_combout\,
	combout => \dbc|temp[3]~13_combout\);

-- Location: LCCOMB_X26_Y10_N8
\dbc|temp~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~7_combout\ = (\dbc|temp[3]~13_combout\ & (\dbc|process_0~0_combout\ & (\dbc|temp\(0)))) # (!\dbc|temp[3]~13_combout\ & (((\dbc|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp[3]~13_combout\,
	datab => \dbc|process_0~0_combout\,
	datac => \dbc|temp\(0),
	datad => \dbc|Add1~0_combout\,
	combout => \dbc|temp~7_combout\);

-- Location: FF_X26_Y10_N9
\dbc|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|temp~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|temp\(0));

-- Location: LCCOMB_X26_Y10_N12
\dbc|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add1~0_combout\ = (((\dbc|process_0~0_combout\ & \dbc|temp\(0))))
-- \dbc|Add1~1\ = CARRY((\dbc|process_0~0_combout\ & \dbc|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|process_0~0_combout\,
	datab => \dbc|temp\(0),
	datad => VCC,
	combout => \dbc|Add1~0_combout\,
	cout => \dbc|Add1~1\);

-- Location: LCCOMB_X26_Y10_N30
\dbc|temp~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~8_combout\ = (\dbc|temp[3]~13_combout\ & (\dbc|process_0~0_combout\ & (\dbc|temp\(3)))) # (!\dbc|temp[3]~13_combout\ & (((\dbc|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp[3]~13_combout\,
	datab => \dbc|process_0~0_combout\,
	datac => \dbc|temp\(3),
	datad => \dbc|Add1~6_combout\,
	combout => \dbc|temp~8_combout\);

-- Location: FF_X26_Y10_N31
\dbc|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|temp~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|temp\(3));

-- Location: LCCOMB_X24_Y10_N20
\dbc|temp~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~12_combout\ = (\dbc|enable~q\ & (!\dbc|Equal0~4_combout\ & (\KEY[1]~input_o\ $ (\dbc|last_in~q\)))) # (!\dbc|enable~q\ & (\KEY[1]~input_o\ $ ((\dbc|last_in~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|enable~q\,
	datab => \KEY[1]~input_o\,
	datac => \dbc|last_in~q\,
	datad => \dbc|Equal0~4_combout\,
	combout => \dbc|temp~12_combout\);

-- Location: LCCOMB_X24_Y10_N6
\dbc|temp~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~4_combout\ = (!\dbc|Equal1~1_combout\ & (\dbc|Equal0~4_combout\ & ((\dbc|enable~q\) # (!\dbc|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|enable~q\,
	datab => \dbc|process_0~0_combout\,
	datac => \dbc|Equal1~1_combout\,
	datad => \dbc|Equal0~4_combout\,
	combout => \dbc|temp~4_combout\);

-- Location: LCCOMB_X26_Y10_N14
\dbc|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add1~2_combout\ = (\dbc|Add1~1\ & (((!\dbc|temp\(1))) # (!\dbc|process_0~0_combout\))) # (!\dbc|Add1~1\ & (((\dbc|process_0~0_combout\ & \dbc|temp\(1))) # (GND)))
-- \dbc|Add1~3\ = CARRY(((!\dbc|Add1~1\) # (!\dbc|temp\(1))) # (!\dbc|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|process_0~0_combout\,
	datab => \dbc|temp\(1),
	datad => VCC,
	cin => \dbc|Add1~1\,
	combout => \dbc|Add1~2_combout\,
	cout => \dbc|Add1~3\);

-- Location: LCCOMB_X26_Y10_N2
\dbc|temp~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~6_combout\ = (\dbc|temp[3]~13_combout\ & (((\dbc|temp\(1) & \dbc|process_0~0_combout\)))) # (!\dbc|temp[3]~13_combout\ & (\dbc|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp[3]~13_combout\,
	datab => \dbc|Add1~2_combout\,
	datac => \dbc|temp\(1),
	datad => \dbc|process_0~0_combout\,
	combout => \dbc|temp~6_combout\);

-- Location: FF_X26_Y10_N3
\dbc|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|temp~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|temp\(1));

-- Location: LCCOMB_X26_Y10_N16
\dbc|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add1~4_combout\ = (\dbc|Add1~3\ & (\dbc|process_0~0_combout\ & (\dbc|temp\(2) & VCC))) # (!\dbc|Add1~3\ & ((((\dbc|process_0~0_combout\ & \dbc|temp\(2))))))
-- \dbc|Add1~5\ = CARRY((\dbc|process_0~0_combout\ & (\dbc|temp\(2) & !\dbc|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|process_0~0_combout\,
	datab => \dbc|temp\(2),
	datad => VCC,
	cin => \dbc|Add1~3\,
	combout => \dbc|Add1~4_combout\,
	cout => \dbc|Add1~5\);

-- Location: LCCOMB_X26_Y10_N4
\dbc|temp~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~5_combout\ = (\dbc|temp~12_combout\ & ((\dbc|temp\(2)) # ((\dbc|temp~4_combout\ & \dbc|Add1~4_combout\)))) # (!\dbc|temp~12_combout\ & (\dbc|temp~4_combout\ & ((\dbc|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp~12_combout\,
	datab => \dbc|temp~4_combout\,
	datac => \dbc|temp\(2),
	datad => \dbc|Add1~4_combout\,
	combout => \dbc|temp~5_combout\);

-- Location: FF_X26_Y10_N5
\dbc|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|temp~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|temp\(2));

-- Location: LCCOMB_X26_Y10_N18
\dbc|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add1~6_combout\ = (\dbc|Add1~5\ & (((!\dbc|process_0~0_combout\)) # (!\dbc|temp\(3)))) # (!\dbc|Add1~5\ & (((\dbc|temp\(3) & \dbc|process_0~0_combout\)) # (GND)))
-- \dbc|Add1~7\ = CARRY(((!\dbc|Add1~5\) # (!\dbc|process_0~0_combout\)) # (!\dbc|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp\(3),
	datab => \dbc|process_0~0_combout\,
	datad => VCC,
	cin => \dbc|Add1~5\,
	combout => \dbc|Add1~6_combout\,
	cout => \dbc|Add1~7\);

-- Location: LCCOMB_X26_Y10_N0
\dbc|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Equal1~0_combout\ = (!\dbc|Add1~0_combout\ & (!\dbc|Add1~6_combout\ & (!\dbc|Add1~2_combout\ & \dbc|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Add1~0_combout\,
	datab => \dbc|Add1~6_combout\,
	datac => \dbc|Add1~2_combout\,
	datad => \dbc|Add1~4_combout\,
	combout => \dbc|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y10_N28
\dbc|temp~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~11_combout\ = (\dbc|temp~12_combout\ & ((\dbc|temp\(6)) # ((\dbc|temp~4_combout\ & \dbc|Add1~12_combout\)))) # (!\dbc|temp~12_combout\ & (\dbc|temp~4_combout\ & ((\dbc|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp~12_combout\,
	datab => \dbc|temp~4_combout\,
	datac => \dbc|temp\(6),
	datad => \dbc|Add1~12_combout\,
	combout => \dbc|temp~11_combout\);

-- Location: FF_X26_Y10_N29
\dbc|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|temp~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|temp\(6));

-- Location: LCCOMB_X26_Y10_N20
\dbc|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add1~8_combout\ = (\dbc|Add1~7\ & (\dbc|temp\(4) & (\dbc|process_0~0_combout\ & VCC))) # (!\dbc|Add1~7\ & ((((\dbc|temp\(4) & \dbc|process_0~0_combout\)))))
-- \dbc|Add1~9\ = CARRY((\dbc|temp\(4) & (\dbc|process_0~0_combout\ & !\dbc|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp\(4),
	datab => \dbc|process_0~0_combout\,
	datad => VCC,
	cin => \dbc|Add1~7\,
	combout => \dbc|Add1~8_combout\,
	cout => \dbc|Add1~9\);

-- Location: LCCOMB_X26_Y10_N6
\dbc|temp~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~10_combout\ = (\dbc|temp[3]~13_combout\ & (\dbc|process_0~0_combout\ & (\dbc|temp\(4)))) # (!\dbc|temp[3]~13_combout\ & (((\dbc|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp[3]~13_combout\,
	datab => \dbc|process_0~0_combout\,
	datac => \dbc|temp\(4),
	datad => \dbc|Add1~8_combout\,
	combout => \dbc|temp~10_combout\);

-- Location: FF_X26_Y10_N7
\dbc|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|temp~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|temp\(4));

-- Location: LCCOMB_X26_Y10_N22
\dbc|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add1~10_combout\ = (\dbc|Add1~9\ & (((!\dbc|process_0~0_combout\)) # (!\dbc|temp\(5)))) # (!\dbc|Add1~9\ & (((\dbc|temp\(5) & \dbc|process_0~0_combout\)) # (GND)))
-- \dbc|Add1~11\ = CARRY(((!\dbc|Add1~9\) # (!\dbc|process_0~0_combout\)) # (!\dbc|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|temp\(5),
	datab => \dbc|process_0~0_combout\,
	datad => VCC,
	cin => \dbc|Add1~9\,
	combout => \dbc|Add1~10_combout\,
	cout => \dbc|Add1~11\);

-- Location: LCCOMB_X26_Y10_N10
\dbc|temp~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|temp~9_combout\ = (\dbc|Add1~10_combout\ & ((\dbc|temp~4_combout\) # ((\dbc|temp\(5) & \dbc|temp~12_combout\)))) # (!\dbc|Add1~10_combout\ & (((\dbc|temp\(5) & \dbc|temp~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Add1~10_combout\,
	datab => \dbc|temp~4_combout\,
	datac => \dbc|temp\(5),
	datad => \dbc|temp~12_combout\,
	combout => \dbc|temp~9_combout\);

-- Location: FF_X26_Y10_N11
\dbc|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|temp~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|temp\(5));

-- Location: LCCOMB_X26_Y10_N24
\dbc|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Add1~12_combout\ = \dbc|Add1~11\ $ (((!\dbc|temp\(6)) # (!\dbc|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dbc|process_0~0_combout\,
	datad => \dbc|temp\(6),
	cin => \dbc|Add1~11\,
	combout => \dbc|Add1~12_combout\);

-- Location: LCCOMB_X26_Y10_N26
\dbc|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|Equal1~1_combout\ = (\dbc|Equal1~0_combout\ & (\dbc|Add1~12_combout\ & (\dbc|Add1~10_combout\ & !\dbc|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|Equal1~0_combout\,
	datab => \dbc|Add1~12_combout\,
	datac => \dbc|Add1~10_combout\,
	datad => \dbc|Add1~8_combout\,
	combout => \dbc|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y10_N2
\dbc|pulse~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|pulse~0_combout\ = (\KEY[1]~input_o\) # ((!\dbc|enable~q\ & \dbc|last_in~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dbc|enable~q\,
	datab => \KEY[1]~input_o\,
	datac => \dbc|last_in~q\,
	combout => \dbc|pulse~0_combout\);

-- Location: LCCOMB_X24_Y10_N0
\dbc|pulse~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dbc|pulse~1_combout\ = (\dbc|Equal0~4_combout\ & (\dbc|Equal1~1_combout\ & !\dbc|pulse~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dbc|Equal0~4_combout\,
	datac => \dbc|Equal1~1_combout\,
	datad => \dbc|pulse~0_combout\,
	combout => \dbc|pulse~1_combout\);

-- Location: FF_X24_Y10_N1
\dbc|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dbc|pulse~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbc|pulse~q\);

-- Location: FF_X21_Y18_N31
\enemy2x[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(31));

-- Location: LCCOMB_X21_Y19_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (enemy2x(1) & (!\Add0~1\)) # (!enemy2x(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!enemy2x(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X21_Y19_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (enemy2x(2) & (\Add0~3\ $ (GND))) # (!enemy2x(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((enemy2x(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X22_Y19_N28
\enemy2x~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~2_combout\ = (\dbc|pulse~q\ & (((\Add0~4_combout\ & !\LessThan0~10_combout\)))) # (!\dbc|pulse~q\ & (enemy2x(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(2),
	datab => \Add0~4_combout\,
	datac => \LessThan0~10_combout\,
	datad => \dbc|pulse~q\,
	combout => \enemy2x~2_combout\);

-- Location: LCCOMB_X22_Y19_N6
\enemy2x[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x[2]~feeder_combout\ = \enemy2x~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \enemy2x~2_combout\,
	combout => \enemy2x[2]~feeder_combout\);

-- Location: FF_X22_Y19_N7
\enemy2x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x[2]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(2));

-- Location: LCCOMB_X21_Y19_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (enemy2x(3) & (!\Add0~5\)) # (!enemy2x(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!enemy2x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X22_Y19_N14
\enemy2x~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~3_combout\ = (\dbc|pulse~q\ & (((\Add0~6_combout\ & !\LessThan0~10_combout\)))) # (!\dbc|pulse~q\ & (enemy2x(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(3),
	datab => \Add0~6_combout\,
	datac => \LessThan0~10_combout\,
	datad => \dbc|pulse~q\,
	combout => \enemy2x~3_combout\);

-- Location: LCCOMB_X22_Y19_N12
\enemy2x[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x[3]~feeder_combout\ = \enemy2x~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enemy2x~3_combout\,
	combout => \enemy2x[3]~feeder_combout\);

-- Location: FF_X22_Y19_N13
\enemy2x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x[3]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(3));

-- Location: LCCOMB_X21_Y19_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (enemy2x(4) & (\Add0~7\ $ (GND))) # (!enemy2x(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((enemy2x(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X22_Y18_N14
\enemy2x~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~5_combout\ = (\Add0~8_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \LessThan0~10_combout\,
	combout => \enemy2x~5_combout\);

-- Location: FF_X22_Y18_N15
\enemy2x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~5_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(4));

-- Location: LCCOMB_X21_Y19_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (enemy2x(5) & (!\Add0~9\)) # (!enemy2x(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!enemy2x(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X21_Y15_N6
\enemy2x~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~4_combout\ = (\Add0~10_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~4_combout\);

-- Location: FF_X21_Y15_N7
\enemy2x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~4_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(5));

-- Location: LCCOMB_X21_Y19_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (enemy2x(6) & (\Add0~11\ $ (GND))) # (!enemy2x(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((enemy2x(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X21_Y15_N16
\enemy2x~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~6_combout\ = (\Add0~12_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~6_combout\);

-- Location: FF_X21_Y15_N17
\enemy2x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~6_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(6));

-- Location: LCCOMB_X21_Y19_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (enemy2x(7) & (!\Add0~13\)) # (!enemy2x(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!enemy2x(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X22_Y19_N18
\enemy2x~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~7_combout\ = (\Add0~62_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~14_combout\,
	combout => \enemy2x~7_combout\);

-- Location: FF_X22_Y19_N19
\enemy2x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~7_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(7));

-- Location: LCCOMB_X21_Y19_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (enemy2x(8) & (\Add0~15\ $ (GND))) # (!enemy2x(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((enemy2x(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X22_Y19_N24
\enemy2x~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~8_combout\ = (\Add0~62_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datac => \Add0~16_combout\,
	combout => \enemy2x~8_combout\);

-- Location: FF_X22_Y19_N25
\enemy2x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~8_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(8));

-- Location: LCCOMB_X21_Y19_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (enemy2x(9) & (!\Add0~17\)) # (!enemy2x(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!enemy2x(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X21_Y15_N30
\enemy2x~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~9_combout\ = (\Add0~18_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~9_combout\);

-- Location: FF_X21_Y15_N31
\enemy2x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~9_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(9));

-- Location: LCCOMB_X21_Y19_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (enemy2x(10) & (\Add0~19\ $ (GND))) # (!enemy2x(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((enemy2x(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X22_Y19_N0
\enemy2x~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~10_combout\ = (\Add0~62_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \Add0~20_combout\,
	combout => \enemy2x~10_combout\);

-- Location: FF_X22_Y19_N1
\enemy2x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~10_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(10));

-- Location: LCCOMB_X21_Y19_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (enemy2x(11) & (!\Add0~21\)) # (!enemy2x(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!enemy2x(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X22_Y18_N12
\enemy2x~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~11_combout\ = (\Add0~22_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~22_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~11_combout\);

-- Location: FF_X22_Y18_N13
\enemy2x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~11_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(11));

-- Location: LCCOMB_X21_Y19_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (enemy2x(12) & (\Add0~23\ $ (GND))) # (!enemy2x(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((enemy2x(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X22_Y18_N2
\enemy2x~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~12_combout\ = (\Add0~24_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~12_combout\);

-- Location: FF_X22_Y18_N3
\enemy2x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~12_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(12));

-- Location: LCCOMB_X21_Y19_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (enemy2x(13) & (!\Add0~25\)) # (!enemy2x(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!enemy2x(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X21_Y15_N8
\enemy2x~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~29_combout\ = (\Add0~26_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~29_combout\);

-- Location: FF_X21_Y15_N9
\enemy2x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~29_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(13));

-- Location: LCCOMB_X21_Y19_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (enemy2x(14) & (\Add0~27\ $ (GND))) # (!enemy2x(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((enemy2x(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X21_Y15_N18
\enemy2x~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~28_combout\ = (\Add0~28_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~28_combout\);

-- Location: FF_X21_Y15_N19
\enemy2x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~28_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(14));

-- Location: LCCOMB_X21_Y19_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (enemy2x(15) & (!\Add0~29\)) # (!enemy2x(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!enemy2x(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X21_Y15_N0
\enemy2x~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~27_combout\ = (\Add0~62_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datad => \Add0~30_combout\,
	combout => \enemy2x~27_combout\);

-- Location: FF_X21_Y15_N1
\enemy2x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~27_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(15));

-- Location: LCCOMB_X21_Y18_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (enemy2x(16) & (\Add0~31\ $ (GND))) # (!enemy2x(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((enemy2x(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X21_Y15_N26
\enemy2x~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~26_combout\ = (\Add0~32_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~26_combout\);

-- Location: FF_X21_Y15_N27
\enemy2x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~26_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(16));

-- Location: LCCOMB_X21_Y18_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (enemy2x(17) & (!\Add0~33\)) # (!enemy2x(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!enemy2x(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X22_Y18_N6
\enemy2x~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~25_combout\ = (\Add0~34_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~25_combout\);

-- Location: FF_X22_Y18_N7
\enemy2x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~25_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(17));

-- Location: LCCOMB_X21_Y18_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (enemy2x(18) & (\Add0~35\ $ (GND))) # (!enemy2x(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((enemy2x(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X22_Y18_N4
\enemy2x~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~24_combout\ = (\Add0~36_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~24_combout\);

-- Location: FF_X22_Y18_N5
\enemy2x[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~24_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(18));

-- Location: LCCOMB_X21_Y18_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (enemy2x(19) & (!\Add0~37\)) # (!enemy2x(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!enemy2x(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X22_Y18_N10
\enemy2x~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~23_combout\ = (\Add0~38_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~23_combout\);

-- Location: FF_X22_Y18_N11
\enemy2x[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~23_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(19));

-- Location: LCCOMB_X21_Y18_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (enemy2x(20) & (\Add0~39\ $ (GND))) # (!enemy2x(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((enemy2x(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X22_Y18_N24
\enemy2x~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~22_combout\ = (\Add0~62_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datad => \Add0~40_combout\,
	combout => \enemy2x~22_combout\);

-- Location: FF_X22_Y18_N25
\enemy2x[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~22_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(20));

-- Location: LCCOMB_X21_Y18_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (enemy2x(21) & (!\Add0~41\)) # (!enemy2x(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!enemy2x(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X21_Y15_N12
\enemy2x~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~21_combout\ = (\Add0~42_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~21_combout\);

-- Location: FF_X21_Y15_N13
\enemy2x[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~21_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(21));

-- Location: LCCOMB_X21_Y18_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (enemy2x(22) & (\Add0~43\ $ (GND))) # (!enemy2x(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((enemy2x(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X21_Y15_N14
\enemy2x~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~20_combout\ = (\Add0~44_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~44_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~20_combout\);

-- Location: FF_X21_Y15_N15
\enemy2x[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~20_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(22));

-- Location: LCCOMB_X21_Y18_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (enemy2x(23) & (!\Add0~45\)) # (!enemy2x(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!enemy2x(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X21_Y15_N20
\enemy2x~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~19_combout\ = (\Add0~46_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~19_combout\);

-- Location: FF_X21_Y15_N21
\enemy2x[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~19_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(23));

-- Location: LCCOMB_X21_Y18_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (enemy2x(24) & (\Add0~47\ $ (GND))) # (!enemy2x(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((enemy2x(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X21_Y15_N2
\enemy2x~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~18_combout\ = (\Add0~62_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datad => \Add0~48_combout\,
	combout => \enemy2x~18_combout\);

-- Location: FF_X21_Y15_N3
\enemy2x[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~18_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(24));

-- Location: LCCOMB_X21_Y18_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (enemy2x(25) & (!\Add0~49\)) # (!enemy2x(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!enemy2x(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X22_Y18_N30
\enemy2x~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~17_combout\ = (\Add0~50_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~17_combout\);

-- Location: FF_X22_Y18_N31
\enemy2x[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~17_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(25));

-- Location: LCCOMB_X21_Y18_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (enemy2x(26) & (\Add0~51\ $ (GND))) # (!enemy2x(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((enemy2x(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X22_Y18_N16
\enemy2x~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~16_combout\ = (\Add0~52_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~52_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~16_combout\);

-- Location: FF_X22_Y18_N17
\enemy2x[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~16_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(26));

-- Location: LCCOMB_X21_Y18_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (enemy2x(27) & (!\Add0~53\)) # (!enemy2x(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!enemy2x(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X22_Y18_N18
\enemy2x~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~15_combout\ = (\Add0~54_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~54_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~15_combout\);

-- Location: FF_X22_Y18_N19
\enemy2x[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~15_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(27));

-- Location: LCCOMB_X21_Y18_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (enemy2x(28) & (\Add0~55\ $ (GND))) # (!enemy2x(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((enemy2x(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X22_Y18_N20
\enemy2x~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~14_combout\ = (\Add0~62_combout\ & \Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~62_combout\,
	datad => \Add0~56_combout\,
	combout => \enemy2x~14_combout\);

-- Location: FF_X22_Y18_N21
\enemy2x[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~14_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(28));

-- Location: LCCOMB_X21_Y18_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (enemy2x(29) & (!\Add0~57\)) # (!enemy2x(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!enemy2x(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X21_Y15_N4
\enemy2x~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~13_combout\ = (\Add0~58_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~58_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~13_combout\);

-- Location: FF_X21_Y15_N5
\enemy2x[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~13_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(29));

-- Location: LCCOMB_X21_Y18_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (enemy2x(30) & (\Add0~59\ $ (GND))) # (!enemy2x(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((enemy2x(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X22_Y18_N8
\enemy2x~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~30_combout\ = (\Add0~60_combout\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~60_combout\,
	datad => \Add0~62_combout\,
	combout => \enemy2x~30_combout\);

-- Location: FF_X22_Y18_N9
\enemy2x[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x~30_combout\,
	clrn => \RESET~input_o\,
	ena => \dbc|pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(30));

-- Location: LCCOMB_X21_Y18_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = enemy2x(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => enemy2x(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X22_Y18_N22
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\Add0~56_combout\) # ((\Add0~54_combout\) # ((\Add0~52_combout\) # (\Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Add0~54_combout\,
	datac => \Add0~52_combout\,
	datad => \Add0~50_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X21_Y15_N10
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\Add0~32_combout\) # ((\Add0~30_combout\) # ((\Add0~26_combout\) # (\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~28_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X21_Y15_N24
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\Add0~42_combout\) # ((\Add0~48_combout\) # ((\Add0~44_combout\) # (\Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~44_combout\,
	datad => \Add0~46_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y18_N0
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\Add0~34_combout\) # ((\Add0~38_combout\) # ((\Add0~36_combout\) # (\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~38_combout\,
	datac => \Add0~36_combout\,
	datad => \Add0~40_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y19_N20
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~8_combout\) # ((\LessThan0~5_combout\) # ((\LessThan0~7_combout\) # (\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X22_Y18_N26
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\Add0~58_combout\) # (\Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~58_combout\,
	datad => \Add0~60_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y19_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~14_combout\) # ((\Add0~10_combout\) # ((\Add0~16_combout\) # (\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~12_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = enemy2x(0) $ (VCC)
-- \Add0~1\ = CARRY(enemy2x(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => enemy2x(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X22_Y19_N16
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Add0~0_combout\) # ((\Add0~6_combout\) # ((\Add0~4_combout\) # (\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y19_N26
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add0~22_combout\) # ((\Add0~18_combout\) # ((\Add0~24_combout\) # (\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~20_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y19_N2
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y19_N30
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!\Add0~62_combout\ & ((\LessThan0~9_combout\) # ((\LessThan0~4_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X22_Y19_N8
\enemy2x~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~0_combout\ = (\dbc|pulse~q\ & (!\LessThan0~10_combout\ & (\Add0~0_combout\))) # (!\dbc|pulse~q\ & (((enemy2x(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \dbc|pulse~q\,
	datac => \Add0~0_combout\,
	datad => enemy2x(0),
	combout => \enemy2x~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\enemy2x[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x[0]~feeder_combout\ = \enemy2x~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \enemy2x~0_combout\,
	combout => \enemy2x[0]~feeder_combout\);

-- Location: FF_X22_Y18_N29
\enemy2x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemy2x[0]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => enemy2x(0));

-- Location: LCCOMB_X22_Y19_N10
\enemy2x~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemy2x~1_combout\ = (\dbc|pulse~q\ & (\Add0~2_combout\ & ((!\LessThan0~10_combout\)))) # (!\dbc|pulse~q\ & (((enemy2x(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => enemy2x(1),
	datac => \LessThan0~10_combout\,
	datad => \dbc|pulse~q\,
	combout => \enemy2x~1_combout\);

-- Location: LCCOMB_X24_Y15_N18
\enemies[0][1][1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemies[0][1][1]~0_combout\ = !\enemy2x~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \enemy2x~1_combout\,
	combout => \enemies[0][1][1]~0_combout\);

-- Location: FF_X24_Y15_N19
\enemies[0][1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemies[0][1][1]~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enemies[0][1][1]~q\);

-- Location: LCCOMB_X24_Y15_N0
\C1|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal2~1_combout\ = \enemies[0][1][1]~q\ $ (((\C1|Add0~16_combout\ & (\C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\)) # (!\C1|Add0~16_combout\ & ((!\C1|Div1|auto_generated|divider|op_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|op_1~2_combout\,
	datad => \enemies[0][1][1]~q\,
	combout => \C1|Equal2~1_combout\);

-- Location: LCCOMB_X22_Y15_N28
\enemies[0][1][0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemies[0][1][0]~0_combout\ = !\enemy2x~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \enemy2x~0_combout\,
	combout => \enemies[0][1][0]~0_combout\);

-- Location: FF_X22_Y15_N29
\enemies[0][1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemies[0][1][0]~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enemies[0][1][0]~q\);

-- Location: LCCOMB_X22_Y15_N30
\C1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal2~0_combout\ = \enemies[0][1][0]~q\ $ (((\C1|Add0~16_combout\ & ((\C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\))) # (!\C1|Add0~16_combout\ & (!\C1|Div1|auto_generated|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Div1|auto_generated|divider|op_1~0_combout\,
	datac => \C1|Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	datad => \enemies[0][1][0]~q\,
	combout => \C1|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y15_N24
\enemies[0][0][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemies[0][0][2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \enemies[0][0][2]~feeder_combout\);

-- Location: FF_X24_Y15_N25
\enemies[0][0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemies[0][0][2]~feeder_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enemies[0][0][2]~q\);

-- Location: LCCOMB_X23_Y14_N26
\C1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal1~0_combout\ = \enemies[0][0][2]~q\ $ (((\C1|Add4~12_combout\ & (!\C1|Div0|auto_generated|divider|op_1~4_combout\)) # (!\C1|Add4~12_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|op_1~4_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \enemies[0][0][2]~q\,
	combout => \C1|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y14_N20
\C1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal1~1_combout\ = \enemies[0][0][2]~q\ $ (((\C1|Add4~12_combout\ & (!\C1|Div0|auto_generated|divider|op_1~6_combout\)) # (!\C1|Add4~12_combout\ & ((\C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|op_1~6_combout\,
	datab => \C1|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datac => \C1|Add4~12_combout\,
	datad => \enemies[0][0][2]~q\,
	combout => \C1|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y14_N30
\C1|drawProcess~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~5_combout\ = (!\C1|Equal2~1_combout\ & (!\C1|Equal2~0_combout\ & (!\C1|Equal1~0_combout\ & !\C1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal2~1_combout\,
	datab => \C1|Equal2~0_combout\,
	datac => \C1|Equal1~0_combout\,
	datad => \C1|Equal1~1_combout\,
	combout => \C1|drawProcess~5_combout\);

-- Location: LCCOMB_X24_Y14_N14
\C1|Div0|auto_generated|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~14_combout\ = !\C1|Div0|auto_generated|divider|op_1~13\
-- \C1|Div0|auto_generated|divider|op_1~15\ = CARRY(!\C1|Div0|auto_generated|divider|op_1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \C1|Div0|auto_generated|divider|op_1~13\,
	combout => \C1|Div0|auto_generated|divider|op_1~14_combout\,
	cout => \C1|Div0|auto_generated|divider|op_1~15\);

-- Location: LCCOMB_X24_Y14_N16
\C1|Div0|auto_generated|divider|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Div0|auto_generated|divider|op_1~16_combout\ = \C1|Div0|auto_generated|divider|op_1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Div0|auto_generated|divider|op_1~15\,
	combout => \C1|Div0|auto_generated|divider|op_1~16_combout\);

-- Location: LCCOMB_X22_Y14_N30
\C1|drawProcess~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~6_combout\ = (\C1|Add4~12_combout\ & (!\C1|Div0|auto_generated|divider|op_1~16_combout\ & (\C1|Div0|auto_generated|divider|op_1~2_combout\))) # (!\C1|Add4~12_combout\ & 
-- (((!\C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|op_1~16_combout\,
	datab => \C1|Add4~12_combout\,
	datac => \C1|Div0|auto_generated|divider|op_1~2_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	combout => \C1|drawProcess~6_combout\);

-- Location: LCCOMB_X23_Y14_N28
\C1|drawProcess~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~7_combout\ = (\C1|Add4~12_combout\ & (!\C1|Div0|auto_generated|divider|op_1~14_combout\ & (\C1|Div0|auto_generated|divider|op_1~0_combout\))) # (!\C1|Add4~12_combout\ & 
-- (((!\C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Div0|auto_generated|divider|op_1~14_combout\,
	datab => \C1|Add4~12_combout\,
	datac => \C1|Div0|auto_generated|divider|op_1~0_combout\,
	datad => \C1|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~10_combout\,
	combout => \C1|drawProcess~7_combout\);

-- Location: LCCOMB_X22_Y13_N0
\enemies[0][1][2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemies[0][1][2]~0_combout\ = !\enemy2x~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \enemy2x~2_combout\,
	combout => \enemies[0][1][2]~0_combout\);

-- Location: FF_X22_Y13_N1
\enemies[0][1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemies[0][1][2]~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enemies[0][1][2]~q\);

-- Location: LCCOMB_X22_Y13_N30
\C1|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal2~2_combout\ = \enemies[0][1][2]~q\ $ (((\C1|Add0~16_combout\ & (\C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)) # (!\C1|Add0~16_combout\ & ((!\C1|Div1|auto_generated|divider|op_1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|op_1~4_combout\,
	datad => \enemies[0][1][2]~q\,
	combout => \C1|Equal2~2_combout\);

-- Location: LCCOMB_X22_Y14_N20
\enemies[0][1][3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \enemies[0][1][3]~0_combout\ = !\enemy2x~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \enemy2x~3_combout\,
	combout => \enemies[0][1][3]~0_combout\);

-- Location: FF_X22_Y14_N21
\enemies[0][1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \enemies[0][1][3]~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enemies[0][1][3]~q\);

-- Location: LCCOMB_X22_Y13_N28
\C1|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal2~3_combout\ = \enemies[0][1][3]~q\ $ (((\C1|Add0~16_combout\ & (\C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)) # (!\C1|Add0~16_combout\ & ((!\C1|Div1|auto_generated|divider|op_1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => \C1|Div1|auto_generated|divider|op_1~6_combout\,
	datad => \enemies[0][1][3]~q\,
	combout => \C1|Equal2~3_combout\);

-- Location: LCCOMB_X22_Y13_N2
\C1|drawProcess~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~8_combout\ = (\C1|drawProcess~6_combout\ & (\C1|drawProcess~7_combout\ & (!\C1|Equal2~2_combout\ & !\C1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~6_combout\,
	datab => \C1|drawProcess~7_combout\,
	datac => \C1|Equal2~2_combout\,
	datad => \C1|Equal2~3_combout\,
	combout => \C1|drawProcess~8_combout\);

-- Location: LCCOMB_X22_Y13_N20
\C1|drawProcess~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~14_combout\ = (\C1|drawProcess~13_combout\ & (\C1|drawProcess~5_combout\ & \C1|drawProcess~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~13_combout\,
	datac => \C1|drawProcess~5_combout\,
	datad => \C1|drawProcess~8_combout\,
	combout => \C1|drawProcess~14_combout\);

-- Location: LCCOMB_X17_Y13_N26
\C1|Mod0|auto_generated|divider|my_abs_num|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|_~0_combout\ = \C1|Add1~10_combout\ $ (\C1|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add1~10_combout\,
	datad => \C1|Add1~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|_~0_combout\);

-- Location: LCCOMB_X19_Y13_N30
\C1|Mod0|auto_generated|divider|my_abs_num|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|_~2_combout\ = \C1|Add1~20_combout\ $ (\C1|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~20_combout\,
	datad => \C1|Add1~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|_~2_combout\);

-- Location: LCCOMB_X20_Y13_N0
\C1|Mod0|auto_generated|divider|my_abs_num|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|_~1_combout\ = \C1|Add1~12_combout\ $ (\C1|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add1~12_combout\,
	datad => \C1|Add1~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|_~1_combout\);

-- Location: LCCOMB_X20_Y14_N26
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~33_combout\ = (!\C1|VPOS\(0) & (!\C1|Add1~2_combout\ & (!\C1|Add1~0_combout\ & !\C1|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|Add1~2_combout\,
	datac => \C1|Add1~0_combout\,
	datad => \C1|Add1~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~33_combout\);

-- Location: LCCOMB_X19_Y13_N26
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\ = (!\C1|Add1~20_combout\ & (!\C1|Add1~8_combout\ & (!\C1|Add1~6_combout\ & \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Add1~8_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~33_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\);

-- Location: LCCOMB_X17_Y13_N28
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\ = (!\C1|Mod0|auto_generated|divider|my_abs_num|_~0_combout\ & (!\C1|Mod0|auto_generated|divider|my_abs_num|_~2_combout\ & (!\C1|Mod0|auto_generated|divider|my_abs_num|_~1_combout\ & 
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|_~0_combout\,
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|_~2_combout\,
	datac => \C1|Mod0|auto_generated|divider|my_abs_num|_~1_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\);

-- Location: LCCOMB_X17_Y13_N22
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\ = (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\ & ((\C1|Add1~18_combout\ & (\C1|Add1~20_combout\ & \C1|Add1~16_combout\)) # (!\C1|Add1~18_combout\ & (!\C1|Add1~20_combout\ & 
-- !\C1|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Add1~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\);

-- Location: LCCOMB_X17_Y13_N16
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\ = \C1|Add1~18_combout\ $ (((\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\ & ((!\C1|Add1~16_combout\))) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\ & 
-- (\C1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Add1~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\);

-- Location: LCCOMB_X17_Y13_N18
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[9]~38_combout\ = \C1|Add1~20_combout\ $ (\C1|Add1~16_combout\ $ (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datac => \C1|Add1~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[9]~38_combout\);

-- Location: LCCOMB_X17_Y13_N24
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\ = \C1|Mod0|auto_generated|divider|my_abs_num|_~2_combout\ $ (((!\C1|Mod0|auto_generated|divider|my_abs_num|_~0_combout\ & (!\C1|Mod0|auto_generated|divider|my_abs_num|_~1_combout\ & 
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|_~0_combout\,
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|_~2_combout\,
	datac => \C1|Mod0|auto_generated|divider|my_abs_num|_~1_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\);

-- Location: LCCOMB_X19_Y13_N22
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\ = \C1|Add1~12_combout\ $ (((\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\ & (!\C1|Add1~10_combout\)) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\ & 
-- ((\C1|Add1~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\,
	datad => \C1|Add1~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\);

-- Location: LCCOMB_X19_Y13_N28
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[6]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[6]~40_combout\ = \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\ $ (\C1|Add1~20_combout\ $ (\C1|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\,
	datab => \C1|Add1~20_combout\,
	datad => \C1|Add1~10_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[6]~40_combout\);

-- Location: LCCOMB_X17_Y13_N0
\C1|Mod0|auto_generated|divider|divider|op_6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_6~0_combout\ = \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[6]~40_combout\ $ (GND)
-- \C1|Mod0|auto_generated|divider|divider|op_6~1\ = CARRY(!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[6]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[6]~40_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X17_Y13_N2
\C1|Mod0|auto_generated|divider|divider|op_6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_6~1\)) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\ & 
-- (\C1|Mod0|auto_generated|divider|divider|op_6~1\ & VCC))
-- \C1|Mod0|auto_generated|divider|divider|op_6~3\ = CARRY((\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X17_Y13_N4
\C1|Mod0|auto_generated|divider|divider|op_6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_6~3\ & VCC)) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\ & 
-- (\C1|Mod0|auto_generated|divider|divider|op_6~3\ $ (GND)))
-- \C1|Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X17_Y13_N6
\C1|Mod0|auto_generated|divider|divider|op_6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_6~6_combout\ = (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[9]~38_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_6~5\) # (GND))) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[9]~38_combout\ & 
-- (!\C1|Mod0|auto_generated|divider|divider|op_6~5\))
-- \C1|Mod0|auto_generated|divider|divider|op_6~7\ = CARRY((\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[9]~38_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[9]~38_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_6~5\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X17_Y13_N8
\C1|Mod0|auto_generated|divider|divider|op_6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_6~8_combout\ = (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\ & (\C1|Mod0|auto_generated|divider|divider|op_6~7\ $ (GND))) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\ & 
-- ((GND) # (!\C1|Mod0|auto_generated|divider|divider|op_6~7\)))
-- \C1|Mod0|auto_generated|divider|divider|op_6~9\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|op_6~7\) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_6~7\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X17_Y13_N10
\C1|Mod0|auto_generated|divider|divider|op_6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_6~10_combout\ = (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_6~9\)) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|divider|op_6~9\) # (GND)))
-- \C1|Mod0|auto_generated|divider|divider|op_6~11\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|op_6~9\) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_6~9\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X17_Y13_N12
\C1|Mod0|auto_generated|divider|divider|op_6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ = \C1|Mod0|auto_generated|divider|divider|op_6~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|op_6~11\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X16_Y13_N26
\C1|Mod0|auto_generated|divider|divider|StageOut[65]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[65]~153_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \C1|Mod0|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[65]~153_combout\);

-- Location: LCCOMB_X16_Y13_N16
\C1|Mod0|auto_generated|divider|divider|StageOut[65]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\);

-- Location: LCCOMB_X17_Y13_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[64]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[64]~155_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~8_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[64]~155_combout\);

-- Location: LCCOMB_X16_Y13_N20
\C1|Mod0|auto_generated|divider|divider|StageOut[64]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[64]~154_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & !\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[64]~154_combout\);

-- Location: LCCOMB_X17_Y13_N20
\C1|Mod0|auto_generated|divider|divider|StageOut[63]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[63]~156_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[63]~156_combout\);

-- Location: LCCOMB_X16_Y13_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[63]~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & (\C1|Add1~20_combout\ $ (\C1|Add1~16_combout\ $ (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Add1~16_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~35_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\);

-- Location: LCCOMB_X16_Y13_N22
\C1|Mod0|auto_generated|divider|divider|StageOut[62]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[62]~157_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & !\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[62]~157_combout\);

-- Location: LCCOMB_X17_Y13_N14
\C1|Mod0|auto_generated|divider|divider|StageOut[62]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[62]~158_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~4_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[62]~158_combout\);

-- Location: LCCOMB_X14_Y13_N12
\C1|Mod0|auto_generated|divider|divider|StageOut[61]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[61]~160_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~2_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[61]~160_combout\);

-- Location: LCCOMB_X16_Y13_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[61]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[61]~159_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & !\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[61]~159_combout\);

-- Location: LCCOMB_X19_Y13_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[60]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & (\C1|Add1~10_combout\ $ (\C1|Add1~20_combout\ $ (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~34_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\);

-- Location: LCCOMB_X14_Y13_N22
\C1|Mod0|auto_generated|divider|divider|StageOut[60]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[60]~161_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_6~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[60]~161_combout\);

-- Location: LCCOMB_X20_Y14_N18
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\ = (!\C1|Add1~0_combout\ & (!\C1|VPOS\(0) & (!\C1|Add1~6_combout\ & !\C1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|VPOS\(0),
	datac => \C1|Add1~6_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\);

-- Location: LCCOMB_X20_Y14_N16
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\ = \C1|Add1~8_combout\ $ (((\C1|Add1~20_combout\) # ((!\C1|Add1~4_combout\ & \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|Add1~8_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\);

-- Location: LCCOMB_X16_Y13_N0
\C1|Mod0|auto_generated|divider|divider|op_7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_7~0_combout\ = \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\ $ (GND)
-- \C1|Mod0|auto_generated|divider|divider|op_7~1\ = CARRY(!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X16_Y13_N2
\C1|Mod0|auto_generated|divider|divider|op_7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_7~2_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~1\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[60]~161_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_7~1\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[60]~161_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_7~3\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[60]~161_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[60]~161_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_7~1\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X16_Y13_N4
\C1|Mod0|auto_generated|divider|divider|op_7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_7~4_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~3\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[61]~160_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[61]~159_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_7~3\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[61]~160_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[61]~159_combout\)))))
-- \C1|Mod0|auto_generated|divider|divider|op_7~5\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|op_7~3\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[61]~160_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[61]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[61]~160_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[61]~159_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_7~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X16_Y13_N6
\C1|Mod0|auto_generated|divider|divider|op_7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_7~6_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[62]~157_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_7~5\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[62]~157_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[62]~158_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_7~5\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[62]~158_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_7~5\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_7~7\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[62]~157_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[62]~158_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[62]~157_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[62]~158_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_7~5\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X16_Y13_N8
\C1|Mod0|auto_generated|divider|divider|op_7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_7~8_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~7\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[63]~156_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\))))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_7~7\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[63]~156_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_7~9\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[63]~156_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[63]~156_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_7~7\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X16_Y13_N10
\C1|Mod0|auto_generated|divider|divider|op_7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_7~10_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[64]~155_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_7~9\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[64]~155_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[64]~154_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_7~9\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[64]~154_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_7~9\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_7~11\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[64]~155_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[64]~154_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[64]~155_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[64]~154_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_7~9\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X16_Y13_N12
\C1|Mod0|auto_generated|divider|divider|op_7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_7~12_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~11\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[65]~153_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\))))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_7~11\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[65]~153_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_7~13\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[65]~153_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[65]~153_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[65]~152_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_7~11\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X16_Y13_N14
\C1|Mod0|auto_generated|divider|divider|op_7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ = !\C1|Mod0|auto_generated|divider|divider|op_7~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|op_7~13\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\);

-- Location: LCCOMB_X15_Y13_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[78]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[78]~162_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod0|auto_generated|divider|divider|op_7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[78]~162_combout\);

-- Location: LCCOMB_X15_Y13_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[78]~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\))) # (!\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & (\C1|Mod0|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_6~10_combout\,
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~36_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\);

-- Location: LCCOMB_X15_Y13_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[77]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[77]~163_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~10_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_7~10_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[77]~163_combout\);

-- Location: LCCOMB_X15_Y13_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[77]~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & 
-- (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[10]~37_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_6~8_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\);

-- Location: LCCOMB_X16_Y13_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[76]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_6~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[63]~223_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\);

-- Location: LCCOMB_X15_Y13_N8
\C1|Mod0|auto_generated|divider|divider|StageOut[76]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[76]~164_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod0|auto_generated|divider|divider|op_7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[76]~164_combout\);

-- Location: LCCOMB_X15_Y16_N20
\C1|Mod0|auto_generated|divider|divider|StageOut[75]~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\)) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_6~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[8]~39_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\);

-- Location: LCCOMB_X16_Y13_N18
\C1|Mod0|auto_generated|divider|divider|StageOut[75]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[75]~165_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[75]~165_combout\);

-- Location: LCCOMB_X14_Y13_N16
\C1|Mod0|auto_generated|divider|divider|StageOut[74]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[74]~166_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod0|auto_generated|divider|divider|op_7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[74]~166_combout\);

-- Location: LCCOMB_X14_Y13_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[74]~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\)) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[7]~45_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\);

-- Location: LCCOMB_X14_Y13_N14
\C1|Mod0|auto_generated|divider|divider|StageOut[73]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[73]~167_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~2_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[73]~167_combout\);

-- Location: LCCOMB_X14_Y13_N20
\C1|Mod0|auto_generated|divider|divider|StageOut[73]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_6~12_combout\ & \C1|Mod0|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_6~12_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[60]~224_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\);

-- Location: LCCOMB_X16_Y14_N20
\C1|Mod0|auto_generated|divider|divider|StageOut[72]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[72]~169_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_7~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[72]~169_combout\);

-- Location: LCCOMB_X20_Y13_N10
\C1|Mod0|auto_generated|divider|divider|StageOut[72]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[72]~168_combout\ = (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\ & \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[72]~168_combout\);

-- Location: LCCOMB_X20_Y14_N28
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\ = (!\C1|Add1~0_combout\ & (!\C1|VPOS\(0) & (!\C1|Add1~20_combout\ & !\C1|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|VPOS\(0),
	datac => \C1|Add1~20_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\);

-- Location: LCCOMB_X20_Y14_N14
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\ = \C1|Add1~6_combout\ $ (((\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\ & (!\C1|Add1~4_combout\)) # (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\ & 
-- ((\C1|Add1~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Add1~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\);

-- Location: LCCOMB_X15_Y13_N10
\C1|Mod0|auto_generated|divider|divider|op_8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~0_combout\ = \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\ $ (GND)
-- \C1|Mod0|auto_generated|divider|divider|op_8~1\ = CARRY(!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X15_Y13_N12
\C1|Mod0|auto_generated|divider|divider|op_8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~2_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~1\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[72]~169_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[72]~168_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_8~1\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[72]~169_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[72]~168_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_8~3\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[72]~169_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[72]~168_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[72]~169_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[72]~168_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_8~1\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X15_Y13_N14
\C1|Mod0|auto_generated|divider|divider|op_8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~4_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~3\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[73]~167_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_8~3\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[73]~167_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\)))))
-- \C1|Mod0|auto_generated|divider|divider|op_8~5\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|op_8~3\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[73]~167_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[73]~167_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_8~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X15_Y13_N16
\C1|Mod0|auto_generated|divider|divider|op_8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~6_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[74]~166_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_8~5\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[74]~166_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_8~5\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_8~5\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_8~7\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[74]~166_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[74]~166_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_8~5\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X15_Y13_N18
\C1|Mod0|auto_generated|divider|divider|op_8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~8_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~7\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[75]~165_combout\))))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_8~7\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[75]~165_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_8~9\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[75]~165_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[75]~165_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_8~7\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X15_Y13_N20
\C1|Mod0|auto_generated|divider|divider|op_8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~10_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_8~9\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[76]~164_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_8~9\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[76]~164_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_8~9\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_8~11\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[76]~164_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[76]~164_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_8~9\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X15_Y13_N22
\C1|Mod0|auto_generated|divider|divider|op_8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~12_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~11\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[77]~163_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\))))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_8~11\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[77]~163_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_8~13\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[77]~163_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[77]~163_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_8~11\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X15_Y13_N24
\C1|Mod0|auto_generated|divider|divider|op_8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~14_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~13\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[78]~162_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_8~13\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[78]~162_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_8~15\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[78]~162_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[78]~162_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_8~13\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X15_Y13_N26
\C1|Mod0|auto_generated|divider|divider|op_8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ = \C1|Mod0|auto_generated|divider|divider|op_8~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|op_8~15\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\);

-- Location: LCCOMB_X14_Y14_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[91]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[91]~170_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[91]~170_combout\);

-- Location: LCCOMB_X14_Y14_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[91]~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod0|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_7~12_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[78]~271_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\);

-- Location: LCCOMB_X14_Y14_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[90]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[90]~171_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[90]~171_combout\);

-- Location: LCCOMB_X14_Y14_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[90]~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod0|auto_generated|divider|divider|op_7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[77]~272_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\);

-- Location: LCCOMB_X16_Y14_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[89]~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_7~8_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[76]~225_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_7~8_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\);

-- Location: LCCOMB_X15_Y13_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[89]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[89]~172_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~10_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[89]~172_combout\);

-- Location: LCCOMB_X15_Y16_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[88]~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_7~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_7~6_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[75]~273_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\);

-- Location: LCCOMB_X15_Y13_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[88]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[88]~173_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[88]~173_combout\);

-- Location: LCCOMB_X14_Y13_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[87]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[87]~174_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[87]~174_combout\);

-- Location: LCCOMB_X14_Y13_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[87]~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_7~4_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[74]~274_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_7~4_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\);

-- Location: LCCOMB_X14_Y13_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[86]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[86]~175_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~4_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~4_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[86]~175_combout\);

-- Location: LCCOMB_X14_Y13_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[86]~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod0|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[73]~226_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\);

-- Location: LCCOMB_X16_Y14_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[85]~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\)) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[5]~47_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\);

-- Location: LCCOMB_X16_Y14_N26
\C1|Mod0|auto_generated|divider|divider|StageOut[85]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[85]~176_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[85]~176_combout\);

-- Location: LCCOMB_X15_Y15_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[84]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[84]~178_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_8~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~0_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[84]~178_combout\);

-- Location: LCCOMB_X14_Y16_N12
\C1|Mod0|auto_generated|divider|divider|StageOut[84]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[84]~177_combout\ = (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[84]~177_combout\);

-- Location: LCCOMB_X20_Y14_N12
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[3]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[3]~44_combout\ = \C1|Add1~4_combout\ $ (\C1|Add1~20_combout\ $ (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[3]~44_combout\);

-- Location: LCCOMB_X14_Y14_N6
\C1|Mod0|auto_generated|divider|divider|op_9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~0_combout\ = \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[3]~44_combout\ $ (GND)
-- \C1|Mod0|auto_generated|divider|divider|op_9~1\ = CARRY(!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[3]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[3]~44_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X14_Y14_N8
\C1|Mod0|auto_generated|divider|divider|op_9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~2_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~1\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[84]~178_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[84]~177_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_9~1\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[84]~178_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[84]~177_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_9~3\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[84]~178_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[84]~177_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[84]~178_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[84]~177_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~1\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X14_Y14_N10
\C1|Mod0|auto_generated|divider|divider|op_9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~4_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~3\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[85]~176_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_9~3\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[85]~176_combout\)))))
-- \C1|Mod0|auto_generated|divider|divider|op_9~5\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|op_9~3\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[85]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[85]~176_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X14_Y14_N12
\C1|Mod0|auto_generated|divider|divider|op_9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~6_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[86]~175_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_9~5\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[86]~175_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_9~5\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_9~5\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_9~7\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[86]~175_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[86]~175_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~5\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X14_Y14_N14
\C1|Mod0|auto_generated|divider|divider|op_9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~8_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~7\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[87]~174_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\))))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_9~7\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[87]~174_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_9~9\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[87]~174_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[87]~174_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~7\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X14_Y14_N16
\C1|Mod0|auto_generated|divider|divider|op_9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~10_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_9~9\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[88]~173_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_9~9\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[88]~173_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_9~9\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_9~11\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[88]~173_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[88]~173_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~9\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~11\);

-- Location: LCCOMB_X14_Y14_N18
\C1|Mod0|auto_generated|divider|divider|op_9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~12_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~11\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[89]~172_combout\))))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_9~11\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[89]~172_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_9~13\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[89]~172_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[89]~172_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~11\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~12_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~13\);

-- Location: LCCOMB_X14_Y14_N20
\C1|Mod0|auto_generated|divider|divider|op_9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~14_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~13\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[90]~171_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_9~13\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[90]~171_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_9~15\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[90]~171_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[90]~171_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~13\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~14_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~15\);

-- Location: LCCOMB_X14_Y14_N22
\C1|Mod0|auto_generated|divider|divider|op_9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~16_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~15\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[91]~170_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\))))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_9~15\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[91]~170_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_9~17\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[91]~170_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[91]~170_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~15\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~16_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_9~17\);

-- Location: LCCOMB_X14_Y14_N24
\C1|Mod0|auto_generated|divider|divider|op_9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ = !\C1|Mod0|auto_generated|divider|divider|op_9~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|op_9~17\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\);

-- Location: LCCOMB_X15_Y14_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[104]~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~14_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[91]~227_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\);

-- Location: LCCOMB_X15_Y14_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[104]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[104]~179_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod0|auto_generated|divider|divider|op_9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[104]~179_combout\);

-- Location: LCCOMB_X15_Y14_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[103]~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[90]~228_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\);

-- Location: LCCOMB_X14_Y14_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[103]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[103]~180_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod0|auto_generated|divider|divider|op_9~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[103]~180_combout\);

-- Location: LCCOMB_X14_Y14_N26
\C1|Mod0|auto_generated|divider|divider|StageOut[102]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[102]~181_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod0|auto_generated|divider|divider|op_9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[102]~181_combout\);

-- Location: LCCOMB_X16_Y14_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[102]~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_8~10_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_8~10_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[89]~229_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\);

-- Location: LCCOMB_X16_Y14_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[101]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[101]~182_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod0|auto_generated|divider|divider|op_9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[101]~182_combout\);

-- Location: LCCOMB_X15_Y16_N14
\C1|Mod0|auto_generated|divider|divider|StageOut[101]~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_8~8_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[88]~230_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\);

-- Location: LCCOMB_X17_Y14_N12
\C1|Mod0|auto_generated|divider|divider|StageOut[100]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[100]~183_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~8_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[100]~183_combout\);

-- Location: LCCOMB_X14_Y13_N10
\C1|Mod0|auto_generated|divider|divider|StageOut[100]~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_8~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[87]~231_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~6_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\);

-- Location: LCCOMB_X14_Y13_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[99]~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod0|auto_generated|divider|divider|op_8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~4_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[86]~232_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\);

-- Location: LCCOMB_X16_Y14_N18
\C1|Mod0|auto_generated|divider|divider|StageOut[99]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[99]~184_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[99]~184_combout\);

-- Location: LCCOMB_X16_Y14_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[98]~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_8~2_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[85]~275_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\);

-- Location: LCCOMB_X16_Y14_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[98]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[98]~185_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~4_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~4_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[98]~185_combout\);

-- Location: LCCOMB_X15_Y16_N26
\C1|Mod0|auto_generated|divider|divider|StageOut[97]~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\)) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[4]~46_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_8~16_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_8~0_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\);

-- Location: LCCOMB_X12_Y14_N16
\C1|Mod0|auto_generated|divider|divider|StageOut[97]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[97]~186_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~2_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~2_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[97]~186_combout\);

-- Location: LCCOMB_X20_Y14_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[96]~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & (\C1|Add1~4_combout\ $ (\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\ $ (!\C1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~41_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\);

-- Location: LCCOMB_X17_Y14_N10
\C1|Mod0|auto_generated|divider|divider|StageOut[96]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[96]~187_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_9~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~0_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[96]~187_combout\);

-- Location: LCCOMB_X20_Y14_N10
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\ = \C1|Add1~2_combout\ $ (((\C1|Add1~20_combout\) # ((!\C1|Add1~0_combout\ & !\C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|VPOS\(0),
	datac => \C1|Add1~20_combout\,
	datad => \C1|Add1~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\);

-- Location: LCCOMB_X15_Y14_N8
\C1|Mod0|auto_generated|divider|divider|op_10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~0_combout\ = \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\ $ (GND)
-- \C1|Mod0|auto_generated|divider|divider|op_10~1\ = CARRY(!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X15_Y14_N10
\C1|Mod0|auto_generated|divider|divider|op_10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~2_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~1\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[96]~187_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_10~1\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[96]~187_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_10~3\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[96]~187_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[96]~187_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~1\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X15_Y14_N12
\C1|Mod0|auto_generated|divider|divider|op_10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~4_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~3\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[97]~186_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_10~3\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[97]~186_combout\)))))
-- \C1|Mod0|auto_generated|divider|divider|op_10~5\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|op_10~3\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[97]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[97]~186_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X15_Y14_N14
\C1|Mod0|auto_generated|divider|divider|op_10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~6_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_10~5\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\ 
-- & ((\C1|Mod0|auto_generated|divider|divider|StageOut[98]~185_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_10~5\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[98]~185_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_10~5\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_10~7\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[98]~185_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[98]~185_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~5\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X15_Y14_N16
\C1|Mod0|auto_generated|divider|divider|op_10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~8_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~7\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[99]~184_combout\))))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_10~7\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[99]~184_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_10~9\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[99]~184_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[99]~184_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~7\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X15_Y14_N18
\C1|Mod0|auto_generated|divider|divider|op_10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~10_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[100]~183_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_10~9\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|StageOut[100]~183_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_10~9\)) # 
-- (!\C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_10~9\) # (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_10~11\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[100]~183_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[100]~183_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~9\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X15_Y14_N20
\C1|Mod0|auto_generated|divider|divider|op_10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~12_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~11\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[101]~182_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\))))) # (!\C1|Mod0|auto_generated|divider|divider|op_10~11\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[101]~182_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_10~13\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[101]~182_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[101]~182_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~11\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X15_Y14_N22
\C1|Mod0|auto_generated|divider|divider|op_10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~14_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~13\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[102]~181_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\)))) # (!\C1|Mod0|auto_generated|divider|divider|op_10~13\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[102]~181_combout\ & 
-- (!\C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_10~15\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[102]~181_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[102]~181_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~13\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~14_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X15_Y14_N24
\C1|Mod0|auto_generated|divider|divider|op_10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~16_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~15\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[103]~180_combout\))))) # (!\C1|Mod0|auto_generated|divider|divider|op_10~15\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[103]~180_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_10~17\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[103]~180_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[103]~180_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~15\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~16_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X15_Y14_N26
\C1|Mod0|auto_generated|divider|divider|op_10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~18_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~17\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[104]~179_combout\)))) # (!\C1|Mod0|auto_generated|divider|divider|op_10~17\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\ & 
-- (!\C1|Mod0|auto_generated|divider|divider|StageOut[104]~179_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_10~19\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[104]~179_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[104]~179_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~17\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~18_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X15_Y14_N28
\C1|Mod0|auto_generated|divider|divider|op_10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ = \C1|Mod0|auto_generated|divider|divider|op_10~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|op_10~19\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\);

-- Location: LCCOMB_X16_Y16_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[117]~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_9~16_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_9~16_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[104]~233_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\);

-- Location: LCCOMB_X16_Y16_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[117]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[117]~188_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~18_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[117]~188_combout\);

-- Location: LCCOMB_X15_Y14_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[116]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[116]~189_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[116]~189_combout\);

-- Location: LCCOMB_X19_Y16_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[116]~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_9~14_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_9~14_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[103]~234_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\);

-- Location: LCCOMB_X15_Y14_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[115]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[115]~190_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~14_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[115]~190_combout\);

-- Location: LCCOMB_X16_Y14_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[115]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_9~12_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_9~12_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[102]~235_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\);

-- Location: LCCOMB_X15_Y16_N16
\C1|Mod0|auto_generated|divider|divider|StageOut[114]~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_9~10_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[101]~236_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\);

-- Location: LCCOMB_X15_Y16_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[114]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[114]~191_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[114]~191_combout\);

-- Location: LCCOMB_X14_Y13_N18
\C1|Mod0|auto_generated|divider|divider|StageOut[113]~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_9~8_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[100]~237_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\);

-- Location: LCCOMB_X16_Y14_N14
\C1|Mod0|auto_generated|divider|divider|StageOut[113]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[113]~192_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~10_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[113]~192_combout\);

-- Location: LCCOMB_X15_Y16_N10
\C1|Mod0|auto_generated|divider|divider|StageOut[112]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[112]~193_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[112]~193_combout\);

-- Location: LCCOMB_X14_Y13_N8
\C1|Mod0|auto_generated|divider|divider|StageOut[112]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_9~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_9~6_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[99]~238_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\);

-- Location: LCCOMB_X16_Y14_N22
\C1|Mod0|auto_generated|divider|divider|StageOut[111]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_9~4_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_9~4_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[98]~239_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\);

-- Location: LCCOMB_X16_Y14_N12
\C1|Mod0|auto_generated|divider|divider|StageOut[111]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[111]~194_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[111]~194_combout\);

-- Location: LCCOMB_X15_Y16_N8
\C1|Mod0|auto_generated|divider|divider|StageOut[110]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[110]~195_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[110]~195_combout\);

-- Location: LCCOMB_X15_Y16_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[110]~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod0|auto_generated|divider|divider|op_9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[97]~276_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_9~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\);

-- Location: LCCOMB_X20_Y14_N20
\C1|Mod0|auto_generated|divider|divider|StageOut[109]~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_9~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_9~0_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[96]~240_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\);

-- Location: LCCOMB_X15_Y16_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[109]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[109]~196_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[109]~196_combout\);

-- Location: LCCOMB_X15_Y16_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[108]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[108]~198_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_10~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_10~0_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[108]~198_combout\);

-- Location: LCCOMB_X17_Y14_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[108]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[108]~197_combout\ = (!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[108]~197_combout\);

-- Location: LCCOMB_X20_Y15_N0
\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[1]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[1]~43_combout\ = \C1|Add1~0_combout\ $ (((\C1|Add1~20_combout\) # (!\C1|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add1~0_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|VPOS\(0),
	combout => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[1]~43_combout\);

-- Location: LCCOMB_X16_Y16_N8
\C1|Mod0|auto_generated|divider|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~0_combout\ = \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[1]~43_combout\ $ (GND)
-- \C1|Mod0|auto_generated|divider|divider|op_1~1\ = CARRY(!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[1]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[1]~43_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X16_Y16_N10
\C1|Mod0|auto_generated|divider|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~2_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~1\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[108]~198_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[108]~197_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_1~1\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[108]~198_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[108]~197_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_1~3\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[108]~198_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[108]~197_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[108]~198_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[108]~197_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~1\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X16_Y16_N12
\C1|Mod0|auto_generated|divider|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~4_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~3\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[109]~196_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_1~3\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[109]~196_combout\)))))
-- \C1|Mod0|auto_generated|divider|divider|op_1~5\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|op_1~3\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[109]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[109]~196_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X16_Y16_N14
\C1|Mod0|auto_generated|divider|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~6_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[110]~195_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_1~5\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[110]~195_combout\ 
-- & ((\C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_1~5\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_1~5\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_1~7\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[110]~195_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[110]~195_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~5\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~6_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X16_Y16_N16
\C1|Mod0|auto_generated|divider|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~8_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~7\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[111]~194_combout\))))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_1~7\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[111]~194_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_1~9\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[111]~194_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[111]~194_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~7\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~8_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X16_Y16_N18
\C1|Mod0|auto_generated|divider|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~10_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[112]~193_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_1~9\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[112]~193_combout\ 
-- & ((\C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_1~9\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_1~9\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_1~11\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[112]~193_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[112]~193_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~9\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~10_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X16_Y16_N20
\C1|Mod0|auto_generated|divider|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~12_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~11\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[113]~192_combout\))))) # (!\C1|Mod0|auto_generated|divider|divider|op_1~11\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[113]~192_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_1~13\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[113]~192_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[113]~192_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~11\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~12_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X16_Y16_N22
\C1|Mod0|auto_generated|divider|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~14_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~13\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[114]~191_combout\)))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_1~13\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[114]~191_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_1~15\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[114]~191_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[114]~191_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~13\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~14_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~15\);

-- Location: LCCOMB_X16_Y16_N24
\C1|Mod0|auto_generated|divider|divider|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~16_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~15\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[115]~190_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\))))) # (!\C1|Mod0|auto_generated|divider|divider|op_1~15\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[115]~190_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_1~17\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[115]~190_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[115]~190_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~15\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~16_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~17\);

-- Location: LCCOMB_X16_Y16_N26
\C1|Mod0|auto_generated|divider|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~18_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~17\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[116]~189_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\)))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_1~17\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[116]~189_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_1~19\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[116]~189_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[116]~189_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~17\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~18_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~19\);

-- Location: LCCOMB_X16_Y16_N28
\C1|Mod0|auto_generated|divider|divider|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~20_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~19\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[117]~188_combout\))))) # (!\C1|Mod0|auto_generated|divider|divider|op_1~19\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[117]~188_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_1~21\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[117]~188_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[117]~188_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~19\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~20_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_1~21\);

-- Location: LCCOMB_X16_Y16_N30
\C1|Mod0|auto_generated|divider|divider|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ = !\C1|Mod0|auto_generated|divider|divider|op_1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|op_1~21\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\);

-- Location: LCCOMB_X19_Y16_N20
\C1|Mod0|auto_generated|divider|divider|StageOut[130]~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[117]~241_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\);

-- Location: LCCOMB_X17_Y16_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[130]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[130]~199_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[130]~199_combout\);

-- Location: LCCOMB_X19_Y16_N18
\C1|Mod0|auto_generated|divider|divider|StageOut[129]~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_10~16_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_10~16_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[116]~242_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\);

-- Location: LCCOMB_X17_Y16_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[129]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[129]~200_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~18_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[129]~200_combout\);

-- Location: LCCOMB_X16_Y16_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[128]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[128]~201_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[128]~201_combout\);

-- Location: LCCOMB_X16_Y14_N16
\C1|Mod0|auto_generated|divider|divider|StageOut[128]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[115]~243_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\);

-- Location: LCCOMB_X15_Y16_N12
\C1|Mod0|auto_generated|divider|divider|StageOut[127]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_10~12_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[114]~244_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\);

-- Location: LCCOMB_X16_Y16_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[127]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[127]~202_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[127]~202_combout\);

-- Location: LCCOMB_X19_Y16_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[126]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[126]~203_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~12_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[126]~203_combout\);

-- Location: LCCOMB_X15_Y16_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[126]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_10~10_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~10_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[113]~245_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\);

-- Location: LCCOMB_X14_Y16_N14
\C1|Mod0|auto_generated|divider|divider|StageOut[125]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[125]~204_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~10_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~10_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[125]~204_combout\);

-- Location: LCCOMB_X14_Y13_N26
\C1|Mod0|auto_generated|divider|divider|StageOut[125]~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_10~8_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_10~8_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[112]~246_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\);

-- Location: LCCOMB_X16_Y14_N10
\C1|Mod0|auto_generated|divider|divider|StageOut[124]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[111]~247_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\);

-- Location: LCCOMB_X15_Y16_N18
\C1|Mod0|auto_generated|divider|divider|StageOut[124]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[124]~205_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[124]~205_combout\);

-- Location: LCCOMB_X15_Y16_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[123]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod0|auto_generated|divider|divider|op_10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[110]~248_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_10~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\);

-- Location: LCCOMB_X19_Y16_N26
\C1|Mod0|auto_generated|divider|divider|StageOut[123]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[123]~206_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[123]~206_combout\);

-- Location: LCCOMB_X14_Y16_N16
\C1|Mod0|auto_generated|divider|divider|StageOut[122]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[122]~207_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~4_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~4_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[122]~207_combout\);

-- Location: LCCOMB_X20_Y14_N22
\C1|Mod0|auto_generated|divider|divider|StageOut[122]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_10~2_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_10~2_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[109]~249_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\);

-- Location: LCCOMB_X19_Y16_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[121]~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & 
-- ((!\C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\))) # (!\C1|Mod0|auto_generated|divider|divider|op_10~20_combout\ & (\C1|Mod0|auto_generated|divider|divider|op_10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_10~0_combout\,
	datab => \C1|Mod0|auto_generated|divider|my_abs_num|cs1a[2]~42_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\);

-- Location: LCCOMB_X19_Y16_N16
\C1|Mod0|auto_generated|divider|divider|StageOut[121]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[121]~208_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~2_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~2_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[121]~208_combout\);

-- Location: LCCOMB_X14_Y16_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[120]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[120]~209_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~0_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[120]~209_combout\);

-- Location: LCCOMB_X21_Y16_N16
\C1|Mod0|auto_generated|divider|divider|StageOut[120]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & (\C1|Add1~0_combout\ $ (((!\C1|Add1~20_combout\ & \C1|VPOS\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|VPOS\(0),
	datac => \C1|Add1~0_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\);

-- Location: LCCOMB_X17_Y16_N6
\C1|Mod0|auto_generated|divider|divider|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~0_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|Mod0|auto_generated|divider|divider|op_2~1\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X17_Y16_N8
\C1|Mod0|auto_generated|divider|divider|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~2_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~1\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[120]~209_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_2~1\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[120]~209_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_2~3\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[120]~209_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[120]~209_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~1\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X17_Y16_N10
\C1|Mod0|auto_generated|divider|divider|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~4_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~3\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[121]~208_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|op_2~3\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[121]~208_combout\)))))
-- \C1|Mod0|auto_generated|divider|divider|op_2~5\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|op_2~3\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[121]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[121]~208_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X17_Y16_N12
\C1|Mod0|auto_generated|divider|divider|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~6_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[122]~207_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_2~5\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[122]~207_combout\ 
-- & ((\C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_2~5\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_2~5\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_2~7\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[122]~207_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[122]~207_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~5\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X17_Y16_N14
\C1|Mod0|auto_generated|divider|divider|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~8_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~7\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[123]~206_combout\))))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_2~7\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[123]~206_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_2~9\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[123]~206_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[123]~206_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~7\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X17_Y16_N16
\C1|Mod0|auto_generated|divider|divider|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~10_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|op_2~9\)))) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\ 
-- & ((\C1|Mod0|auto_generated|divider|divider|StageOut[124]~205_combout\ & (!\C1|Mod0|auto_generated|divider|divider|op_2~9\)) # (!\C1|Mod0|auto_generated|divider|divider|StageOut[124]~205_combout\ & ((\C1|Mod0|auto_generated|divider|divider|op_2~9\) # 
-- (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|op_2~11\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[124]~205_combout\)) # (!\C1|Mod0|auto_generated|divider|divider|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[124]~205_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~9\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~10_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X17_Y16_N18
\C1|Mod0|auto_generated|divider|divider|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~12_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~11\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[125]~204_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\))))) # (!\C1|Mod0|auto_generated|divider|divider|op_2~11\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[125]~204_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_2~13\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[125]~204_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[125]~204_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~11\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~12_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X17_Y16_N20
\C1|Mod0|auto_generated|divider|divider|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~14_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~13\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[126]~203_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\)))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_2~13\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[126]~203_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_2~15\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[126]~203_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[126]~203_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~13\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~14_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~15\);

-- Location: LCCOMB_X17_Y16_N22
\C1|Mod0|auto_generated|divider|divider|op_2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~16_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~15\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[127]~202_combout\))))) # (!\C1|Mod0|auto_generated|divider|divider|op_2~15\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[127]~202_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_2~17\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[127]~202_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[127]~202_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~15\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~17\);

-- Location: LCCOMB_X17_Y16_N24
\C1|Mod0|auto_generated|divider|divider|op_2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~18_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~17\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[128]~201_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\)))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_2~17\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[128]~201_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_2~19\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[128]~201_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[128]~201_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~17\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~18_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~19\);

-- Location: LCCOMB_X17_Y16_N26
\C1|Mod0|auto_generated|divider|divider|op_2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~20_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~19\ & ((((\C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\) # 
-- (\C1|Mod0|auto_generated|divider|divider|StageOut[129]~200_combout\))))) # (!\C1|Mod0|auto_generated|divider|divider|op_2~19\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[129]~200_combout\) # (GND))))
-- \C1|Mod0|auto_generated|divider|divider|op_2~21\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[129]~200_combout\) # (!\C1|Mod0|auto_generated|divider|divider|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[129]~200_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~19\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~20_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~21\);

-- Location: LCCOMB_X17_Y16_N28
\C1|Mod0|auto_generated|divider|divider|op_2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~22_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~21\ & (((\C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[130]~199_combout\)))) 
-- # (!\C1|Mod0|auto_generated|divider|divider|op_2~21\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[130]~199_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|op_2~23\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[130]~199_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[130]~199_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~21\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~22_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|op_2~23\);

-- Location: LCCOMB_X17_Y16_N30
\C1|Mod0|auto_generated|divider|divider|op_2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ = \C1|Mod0|auto_generated|divider|divider|op_2~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|op_2~23\,
	combout => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\);

-- Location: LCCOMB_X19_Y16_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[143]~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[143]~260_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_1~20_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_1~20_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[130]~250_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[143]~260_combout\);

-- Location: LCCOMB_X21_Y16_N8
\C1|Mod0|auto_generated|divider|divider|StageOut[143]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[143]~210_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod0|auto_generated|divider|divider|op_2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[143]~210_combout\);

-- Location: LCCOMB_X19_Y16_N14
\C1|Mod0|auto_generated|divider|divider|StageOut[142]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[129]~251_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\);

-- Location: LCCOMB_X17_Y16_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[142]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod0|auto_generated|divider|divider|op_2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~20_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\);

-- Location: LCCOMB_X21_Y16_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[141]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod0|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\);

-- Location: LCCOMB_X21_Y16_N26
\C1|Mod0|auto_generated|divider|divider|StageOut[141]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_1~16_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[128]~252_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\);

-- Location: LCCOMB_X21_Y16_N4
\C1|Mod0|auto_generated|divider|divider|StageOut[140]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod0|auto_generated|divider|divider|op_2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\);

-- Location: LCCOMB_X21_Y16_N12
\C1|Mod0|auto_generated|divider|divider|StageOut[140]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[127]~253_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_1~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\);

-- Location: LCCOMB_X19_Y16_N12
\C1|Mod0|auto_generated|divider|divider|StageOut[139]~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[126]~254_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\);

-- Location: LCCOMB_X19_Y16_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[139]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~14_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~14_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\);

-- Location: LCCOMB_X14_Y13_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[138]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~10_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[125]~255_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\);

-- Location: LCCOMB_X20_Y16_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[138]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~12_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\);

-- Location: LCCOMB_X16_Y14_N8
\C1|Mod0|auto_generated|divider|divider|StageOut[137]~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_1~8_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[124]~256_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~8_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\);

-- Location: LCCOMB_X21_Y16_N14
\C1|Mod0|auto_generated|divider|divider|StageOut[137]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod0|auto_generated|divider|divider|op_2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~10_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\);

-- Location: LCCOMB_X20_Y13_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[136]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~8_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\);

-- Location: LCCOMB_X15_Y16_N22
\C1|Mod0|auto_generated|divider|divider|StageOut[136]~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\) # 
-- ((!\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod0|auto_generated|divider|divider|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[123]~257_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\);

-- Location: LCCOMB_X21_Y16_N20
\C1|Mod0|auto_generated|divider|divider|StageOut[135]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\);

-- Location: LCCOMB_X20_Y14_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[135]~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_1~4_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_1~4_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[122]~258_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\);

-- Location: LCCOMB_X19_Y16_N8
\C1|Mod0|auto_generated|divider|divider|StageOut[134]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~4_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\);

-- Location: LCCOMB_X19_Y16_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[134]~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_1~2_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_1~2_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[121]~277_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\);

-- Location: LCCOMB_X21_Y16_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[133]~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\ = (\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|op_1~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|op_1~0_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[120]~259_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\);

-- Location: LCCOMB_X21_Y16_N18
\C1|Mod0|auto_generated|divider|divider|StageOut[133]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod0|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\);

-- Location: LCCOMB_X21_Y16_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[132]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[132]~222_combout\ = (!\C1|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod0|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[132]~222_combout\);

-- Location: LCCOMB_X21_Y16_N0
\C1|Mod0|auto_generated|divider|divider|StageOut[132]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[132]~221_combout\ = (\C1|VPOS\(0) & \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datac => \C1|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[132]~221_combout\);

-- Location: LCCOMB_X20_Y16_N2
\C1|Mod0|auto_generated|divider|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~0_combout\ = (((!\C1|Mod0|auto_generated|divider|divider|StageOut[132]~222_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[132]~221_combout\)))
-- \C1|Mod0|auto_generated|divider|op_2~1\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[132]~222_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[132]~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[132]~222_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[132]~221_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|op_2~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~1\);

-- Location: LCCOMB_X20_Y16_N4
\C1|Mod0|auto_generated|divider|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~2_combout\ = (\C1|Mod0|auto_generated|divider|op_2~1\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~1\ & (((!\C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\)) # (GND)))
-- \C1|Mod0|auto_generated|divider|op_2~3\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\) # (!\C1|Mod0|auto_generated|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~1\,
	combout => \C1|Mod0|auto_generated|divider|op_2~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~3\);

-- Location: LCCOMB_X20_Y16_N6
\C1|Mod0|auto_generated|divider|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~4_combout\ = (\C1|Mod0|auto_generated|divider|op_2~3\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\ & VCC))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~3\ & ((((!\C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\)))))
-- \C1|Mod0|auto_generated|divider|op_2~5\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\ & !\C1|Mod0|auto_generated|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~3\,
	combout => \C1|Mod0|auto_generated|divider|op_2~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~5\);

-- Location: LCCOMB_X20_Y16_N8
\C1|Mod0|auto_generated|divider|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~6_combout\ = (\C1|Mod0|auto_generated|divider|op_2~5\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~5\ & (((!\C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\)) # (GND)))
-- \C1|Mod0|auto_generated|divider|op_2~7\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\) # (!\C1|Mod0|auto_generated|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~5\,
	combout => \C1|Mod0|auto_generated|divider|op_2~6_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~7\);

-- Location: LCCOMB_X20_Y16_N10
\C1|Mod0|auto_generated|divider|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~8_combout\ = (\C1|Mod0|auto_generated|divider|op_2~7\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\ & VCC))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~7\ & ((((!\C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\)))))
-- \C1|Mod0|auto_generated|divider|op_2~9\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\ & !\C1|Mod0|auto_generated|divider|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~7\,
	combout => \C1|Mod0|auto_generated|divider|op_2~8_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~9\);

-- Location: LCCOMB_X20_Y16_N12
\C1|Mod0|auto_generated|divider|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~10_combout\ = (\C1|Mod0|auto_generated|divider|op_2~9\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~9\ & (((!\C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\)) # (GND)))
-- \C1|Mod0|auto_generated|divider|op_2~11\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\) # (!\C1|Mod0|auto_generated|divider|op_2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~9\,
	combout => \C1|Mod0|auto_generated|divider|op_2~10_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~11\);

-- Location: LCCOMB_X20_Y16_N14
\C1|Mod0|auto_generated|divider|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~12_combout\ = (\C1|Mod0|auto_generated|divider|op_2~11\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\ & VCC))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~11\ & ((((!\C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\)))))
-- \C1|Mod0|auto_generated|divider|op_2~13\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\ & !\C1|Mod0|auto_generated|divider|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~11\,
	combout => \C1|Mod0|auto_generated|divider|op_2~12_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~13\);

-- Location: LCCOMB_X20_Y16_N16
\C1|Mod0|auto_generated|divider|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~14_combout\ = (\C1|Mod0|auto_generated|divider|op_2~13\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~13\ & (((!\C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\)) # (GND)))
-- \C1|Mod0|auto_generated|divider|op_2~15\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\) # (!\C1|Mod0|auto_generated|divider|op_2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~13\,
	combout => \C1|Mod0|auto_generated|divider|op_2~14_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~15\);

-- Location: LCCOMB_X20_Y16_N18
\C1|Mod0|auto_generated|divider|op_2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~16_combout\ = (\C1|Mod0|auto_generated|divider|op_2~15\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\ & VCC))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~15\ & ((((!\C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\)))))
-- \C1|Mod0|auto_generated|divider|op_2~17\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\ & !\C1|Mod0|auto_generated|divider|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~15\,
	combout => \C1|Mod0|auto_generated|divider|op_2~16_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~17\);

-- Location: LCCOMB_X20_Y16_N20
\C1|Mod0|auto_generated|divider|op_2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~18_combout\ = (\C1|Mod0|auto_generated|divider|op_2~17\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\)))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~17\ & (((!\C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\)) # (GND)))
-- \C1|Mod0|auto_generated|divider|op_2~19\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\) # (!\C1|Mod0|auto_generated|divider|op_2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~17\,
	combout => \C1|Mod0|auto_generated|divider|op_2~18_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~19\);

-- Location: LCCOMB_X20_Y16_N22
\C1|Mod0|auto_generated|divider|op_2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~20_combout\ = (\C1|Mod0|auto_generated|divider|op_2~19\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\ & VCC))) # 
-- (!\C1|Mod0|auto_generated|divider|op_2~19\ & ((((!\C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\)))))
-- \C1|Mod0|auto_generated|divider|op_2~21\ = CARRY((!\C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\ & (!\C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\ & !\C1|Mod0|auto_generated|divider|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|op_2~19\,
	combout => \C1|Mod0|auto_generated|divider|op_2~20_combout\,
	cout => \C1|Mod0|auto_generated|divider|op_2~21\);

-- Location: LCCOMB_X20_Y16_N24
\C1|Mod0|auto_generated|divider|op_2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|op_2~22_combout\ = \C1|Mod0|auto_generated|divider|op_2~21\ $ (((!\C1|Mod0|auto_generated|divider|divider|StageOut[143]~210_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[143]~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[143]~210_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[143]~260_combout\,
	cin => \C1|Mod0|auto_generated|divider|op_2~21\,
	combout => \C1|Mod0|auto_generated|divider|op_2~22_combout\);

-- Location: LCCOMB_X20_Y16_N30
\C1|Mod0|auto_generated|divider|remainder[11]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[11]~0_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[143]~260_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[143]~210_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[143]~260_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[143]~210_combout\,
	datad => \C1|Mod0|auto_generated|divider|op_2~22_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[11]~0_combout\);

-- Location: LCCOMB_X20_Y16_N0
\C1|Mod0|auto_generated|divider|remainder[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[10]~1_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[142]~211_combout\,
	datac => \C1|Mod0|auto_generated|divider|op_2~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[142]~261_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[10]~1_combout\);

-- Location: LCCOMB_X21_Y16_N24
\C1|Mod0|auto_generated|divider|remainder[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[9]~2_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[141]~262_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[141]~212_combout\,
	datad => \C1|Mod0|auto_generated|divider|op_2~18_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[9]~2_combout\);

-- Location: LCCOMB_X21_Y16_N22
\C1|Mod0|auto_generated|divider|remainder[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[8]~3_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[140]~263_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[140]~213_combout\,
	datad => \C1|Mod0|auto_generated|divider|op_2~16_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[8]~3_combout\);

-- Location: LCCOMB_X19_Y16_N22
\C1|Mod0|auto_generated|divider|remainder[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[7]~4_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[139]~264_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[139]~214_combout\,
	datad => \C1|Mod0|auto_generated|divider|op_2~14_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[7]~4_combout\);

-- Location: LCCOMB_X20_Y16_N26
\C1|Mod0|auto_generated|divider|remainder[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[6]~5_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[138]~265_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|op_2~12_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[138]~215_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[6]~5_combout\);

-- Location: LCCOMB_X20_Y13_N26
\C1|Mod0|auto_generated|divider|remainder[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[5]~6_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[137]~266_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[137]~216_combout\,
	datad => \C1|Mod0|auto_generated|divider|op_2~10_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[5]~6_combout\);

-- Location: LCCOMB_X20_Y14_N0
\C1|drawProcess~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~15_combout\ = \C1|VPOS\(0) $ (\C1|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datac => \C1|Add1~20_combout\,
	combout => \C1|drawProcess~15_combout\);

-- Location: LCCOMB_X21_Y14_N6
\C1|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~0_combout\ = (\C1|drawProcess~15_combout\ & (!\C1|Add1~20_combout\ & VCC)) # (!\C1|drawProcess~15_combout\ & (\C1|Add1~20_combout\ $ (GND)))
-- \C1|Add5~1\ = CARRY((!\C1|drawProcess~15_combout\ & !\C1|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~15_combout\,
	datab => \C1|Add1~20_combout\,
	datad => VCC,
	combout => \C1|Add5~0_combout\,
	cout => \C1|Add5~1\);

-- Location: LCCOMB_X21_Y14_N8
\C1|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~2_combout\ = (\C1|Add5~1\ & (\C1|Add1~20_combout\ $ ((\C1|Add1~0_combout\)))) # (!\C1|Add5~1\ & ((\C1|Add1~20_combout\ $ (!\C1|Add1~0_combout\)) # (GND)))
-- \C1|Add5~3\ = CARRY((\C1|Add1~20_combout\ $ (\C1|Add1~0_combout\)) # (!\C1|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Add1~0_combout\,
	datad => VCC,
	cin => \C1|Add5~1\,
	combout => \C1|Add5~2_combout\,
	cout => \C1|Add5~3\);

-- Location: LCCOMB_X21_Y14_N10
\C1|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~4_combout\ = (\C1|Add5~3\ & ((\C1|Add1~20_combout\ $ (!\C1|Add1~2_combout\)))) # (!\C1|Add5~3\ & (\C1|Add1~20_combout\ $ (\C1|Add1~2_combout\ $ (GND))))
-- \C1|Add5~5\ = CARRY((!\C1|Add5~3\ & (\C1|Add1~20_combout\ $ (!\C1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Add1~2_combout\,
	datad => VCC,
	cin => \C1|Add5~3\,
	combout => \C1|Add5~4_combout\,
	cout => \C1|Add5~5\);

-- Location: LCCOMB_X21_Y14_N12
\C1|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~6_combout\ = (\C1|Add5~5\ & (\C1|Add1~20_combout\ $ ((\C1|Add1~4_combout\)))) # (!\C1|Add5~5\ & ((\C1|Add1~20_combout\ $ (!\C1|Add1~4_combout\)) # (GND)))
-- \C1|Add5~7\ = CARRY((\C1|Add1~20_combout\ $ (\C1|Add1~4_combout\)) # (!\C1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|Add5~5\,
	combout => \C1|Add5~6_combout\,
	cout => \C1|Add5~7\);

-- Location: LCCOMB_X21_Y14_N14
\C1|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~8_combout\ = (\C1|Add5~7\ & ((\C1|Add1~20_combout\ $ (!\C1|Add1~6_combout\)))) # (!\C1|Add5~7\ & (\C1|Add1~20_combout\ $ (\C1|Add1~6_combout\ $ (GND))))
-- \C1|Add5~9\ = CARRY((!\C1|Add5~7\ & (\C1|Add1~20_combout\ $ (!\C1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|Add5~7\,
	combout => \C1|Add5~8_combout\,
	cout => \C1|Add5~9\);

-- Location: LCCOMB_X21_Y14_N16
\C1|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~10_combout\ = (\C1|Add5~9\ & (\C1|Add1~8_combout\ $ ((\C1|Add1~20_combout\)))) # (!\C1|Add5~9\ & ((\C1|Add1~8_combout\ $ (!\C1|Add1~20_combout\)) # (GND)))
-- \C1|Add5~11\ = CARRY((\C1|Add1~8_combout\ $ (\C1|Add1~20_combout\)) # (!\C1|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add5~9\,
	combout => \C1|Add5~10_combout\,
	cout => \C1|Add5~11\);

-- Location: LCCOMB_X21_Y14_N18
\C1|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~12_combout\ = (\C1|Add5~11\ & ((\C1|Add1~10_combout\ $ (!\C1|Add1~20_combout\)))) # (!\C1|Add5~11\ & (\C1|Add1~10_combout\ $ (\C1|Add1~20_combout\ $ (GND))))
-- \C1|Add5~13\ = CARRY((!\C1|Add5~11\ & (\C1|Add1~10_combout\ $ (!\C1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add5~11\,
	combout => \C1|Add5~12_combout\,
	cout => \C1|Add5~13\);

-- Location: LCCOMB_X21_Y14_N20
\C1|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~14_combout\ = (\C1|Add5~13\ & (\C1|Add1~12_combout\ $ ((\C1|Add1~20_combout\)))) # (!\C1|Add5~13\ & ((\C1|Add1~12_combout\ $ (!\C1|Add1~20_combout\)) # (GND)))
-- \C1|Add5~15\ = CARRY((\C1|Add1~12_combout\ $ (\C1|Add1~20_combout\)) # (!\C1|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add5~13\,
	combout => \C1|Add5~14_combout\,
	cout => \C1|Add5~15\);

-- Location: LCCOMB_X21_Y14_N2
\C1|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal5~1_combout\ = (!\C1|Add5~14_combout\ & (!\C1|Add5~12_combout\ & (!\C1|Add5~8_combout\ & \C1|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~14_combout\,
	datab => \C1|Add5~12_combout\,
	datac => \C1|Add5~8_combout\,
	datad => \C1|Add5~10_combout\,
	combout => \C1|Equal5~1_combout\);

-- Location: LCCOMB_X21_Y14_N22
\C1|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~16_combout\ = (\C1|Add5~15\ & ((\C1|Add1~14_combout\ $ (!\C1|Add1~20_combout\)))) # (!\C1|Add5~15\ & (\C1|Add1~14_combout\ $ (\C1|Add1~20_combout\ $ (GND))))
-- \C1|Add5~17\ = CARRY((!\C1|Add5~15\ & (\C1|Add1~14_combout\ $ (!\C1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~14_combout\,
	datab => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add5~15\,
	combout => \C1|Add5~16_combout\,
	cout => \C1|Add5~17\);

-- Location: LCCOMB_X21_Y14_N24
\C1|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~18_combout\ = (\C1|Add5~17\ & (\C1|Add1~20_combout\ $ ((\C1|Add1~16_combout\)))) # (!\C1|Add5~17\ & ((\C1|Add1~20_combout\ $ (!\C1|Add1~16_combout\)) # (GND)))
-- \C1|Add5~19\ = CARRY((\C1|Add1~20_combout\ $ (\C1|Add1~16_combout\)) # (!\C1|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Add1~16_combout\,
	datad => VCC,
	cin => \C1|Add5~17\,
	combout => \C1|Add5~18_combout\,
	cout => \C1|Add5~19\);

-- Location: LCCOMB_X21_Y14_N26
\C1|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~20_combout\ = (\C1|Add5~19\ & ((\C1|Add1~18_combout\ $ (!\C1|Add1~20_combout\)))) # (!\C1|Add5~19\ & (\C1|Add1~18_combout\ $ (\C1|Add1~20_combout\ $ (GND))))
-- \C1|Add5~21\ = CARRY((!\C1|Add5~19\ & (\C1|Add1~18_combout\ $ (!\C1|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~18_combout\,
	datab => \C1|Add1~20_combout\,
	datad => VCC,
	cin => \C1|Add5~19\,
	combout => \C1|Add5~20_combout\,
	cout => \C1|Add5~21\);

-- Location: LCCOMB_X21_Y14_N28
\C1|Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add5~22_combout\ = \C1|Add5~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add5~21\,
	combout => \C1|Add5~22_combout\);

-- Location: LCCOMB_X21_Y14_N4
\C1|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal5~2_combout\ = (!\C1|Add5~20_combout\ & (!\C1|Add5~22_combout\ & (!\C1|Add5~16_combout\ & !\C1|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~20_combout\,
	datab => \C1|Add5~22_combout\,
	datac => \C1|Add5~16_combout\,
	datad => \C1|Add5~18_combout\,
	combout => \C1|Equal5~2_combout\);

-- Location: LCCOMB_X21_Y14_N0
\C1|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal5~0_combout\ = (\C1|Add5~6_combout\ & (\C1|Add5~4_combout\ & (!\C1|Add5~2_combout\ & \C1|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add5~6_combout\,
	datab => \C1|Add5~4_combout\,
	datac => \C1|Add5~2_combout\,
	datad => \C1|Add5~0_combout\,
	combout => \C1|Equal5~0_combout\);

-- Location: LCCOMB_X21_Y14_N30
\C1|drawProcess~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~16_combout\ = (\C1|Add1~20_combout\) # ((\C1|Equal5~1_combout\ & (\C1|Equal5~2_combout\ & \C1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Equal5~1_combout\,
	datac => \C1|Equal5~2_combout\,
	datad => \C1|Equal5~0_combout\,
	combout => \C1|drawProcess~16_combout\);

-- Location: LCCOMB_X20_Y13_N16
\C1|Mod0|auto_generated|divider|remainder[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[4]~7_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[136]~217_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[136]~267_combout\,
	datad => \C1|Mod0|auto_generated|divider|op_2~8_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[4]~7_combout\);

-- Location: LCCOMB_X20_Y14_N30
\C1|Mod0|auto_generated|divider|remainder[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[3]~8_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[135]~218_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|op_2~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[135]~268_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[3]~8_combout\);

-- Location: LCCOMB_X19_Y16_N0
\C1|Mod0|auto_generated|divider|remainder[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[2]~9_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[134]~269_combout\,
	datab => \C1|Add1~20_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|StageOut[134]~219_combout\,
	datad => \C1|Mod0|auto_generated|divider|op_2~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[2]~9_combout\);

-- Location: LCCOMB_X21_Y16_N28
\C1|Mod0|auto_generated|divider|remainder[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[1]~10_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[133]~270_combout\,
	datac => \C1|Mod0|auto_generated|divider|op_2~2_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|StageOut[133]~220_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[1]~10_combout\);

-- Location: LCCOMB_X21_Y16_N10
\C1|Mod0|auto_generated|divider|remainder[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|remainder[0]~11_combout\ = (\C1|Add1~20_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[132]~222_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[132]~221_combout\)))) # (!\C1|Add1~20_combout\ & 
-- (((\C1|Mod0|auto_generated|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[132]~222_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[132]~221_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|Mod0|auto_generated|divider|op_2~0_combout\,
	combout => \C1|Mod0|auto_generated|divider|remainder[0]~11_combout\);

-- Location: LCCOMB_X21_Y13_N6
\C1|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~0_combout\ = (\C1|drawProcess~16_combout\ & (\C1|Mod0|auto_generated|divider|remainder[0]~11_combout\ & VCC)) # (!\C1|drawProcess~16_combout\ & (\C1|Mod0|auto_generated|divider|remainder[0]~11_combout\ $ (VCC)))
-- \C1|Add6~1\ = CARRY((!\C1|drawProcess~16_combout\ & \C1|Mod0|auto_generated|divider|remainder[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~16_combout\,
	datab => \C1|Mod0|auto_generated|divider|remainder[0]~11_combout\,
	datad => VCC,
	combout => \C1|Add6~0_combout\,
	cout => \C1|Add6~1\);

-- Location: LCCOMB_X21_Y13_N8
\C1|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~2_combout\ = (\C1|Mod0|auto_generated|divider|remainder[1]~10_combout\ & (!\C1|Add6~1\)) # (!\C1|Mod0|auto_generated|divider|remainder[1]~10_combout\ & ((\C1|Add6~1\) # (GND)))
-- \C1|Add6~3\ = CARRY((!\C1|Add6~1\) # (!\C1|Mod0|auto_generated|divider|remainder[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|remainder[1]~10_combout\,
	datad => VCC,
	cin => \C1|Add6~1\,
	combout => \C1|Add6~2_combout\,
	cout => \C1|Add6~3\);

-- Location: LCCOMB_X21_Y13_N10
\C1|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~4_combout\ = ((\C1|Mod0|auto_generated|divider|remainder[2]~9_combout\ $ (\C1|drawProcess~16_combout\ $ (\C1|Add6~3\)))) # (GND)
-- \C1|Add6~5\ = CARRY((\C1|Mod0|auto_generated|divider|remainder[2]~9_combout\ & ((!\C1|Add6~3\) # (!\C1|drawProcess~16_combout\))) # (!\C1|Mod0|auto_generated|divider|remainder[2]~9_combout\ & (!\C1|drawProcess~16_combout\ & !\C1|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|remainder[2]~9_combout\,
	datab => \C1|drawProcess~16_combout\,
	datad => VCC,
	cin => \C1|Add6~3\,
	combout => \C1|Add6~4_combout\,
	cout => \C1|Add6~5\);

-- Location: LCCOMB_X21_Y13_N12
\C1|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~6_combout\ = (\C1|drawProcess~16_combout\ & ((\C1|Mod0|auto_generated|divider|remainder[3]~8_combout\ & (!\C1|Add6~5\)) # (!\C1|Mod0|auto_generated|divider|remainder[3]~8_combout\ & ((\C1|Add6~5\) # (GND))))) # (!\C1|drawProcess~16_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|remainder[3]~8_combout\ & (\C1|Add6~5\ & VCC)) # (!\C1|Mod0|auto_generated|divider|remainder[3]~8_combout\ & (!\C1|Add6~5\))))
-- \C1|Add6~7\ = CARRY((\C1|drawProcess~16_combout\ & ((!\C1|Add6~5\) # (!\C1|Mod0|auto_generated|divider|remainder[3]~8_combout\))) # (!\C1|drawProcess~16_combout\ & (!\C1|Mod0|auto_generated|divider|remainder[3]~8_combout\ & !\C1|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~16_combout\,
	datab => \C1|Mod0|auto_generated|divider|remainder[3]~8_combout\,
	datad => VCC,
	cin => \C1|Add6~5\,
	combout => \C1|Add6~6_combout\,
	cout => \C1|Add6~7\);

-- Location: LCCOMB_X21_Y13_N14
\C1|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~8_combout\ = (\C1|Mod0|auto_generated|divider|remainder[4]~7_combout\ & (\C1|Add6~7\ $ (GND))) # (!\C1|Mod0|auto_generated|divider|remainder[4]~7_combout\ & (!\C1|Add6~7\ & VCC))
-- \C1|Add6~9\ = CARRY((\C1|Mod0|auto_generated|divider|remainder[4]~7_combout\ & !\C1|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|remainder[4]~7_combout\,
	datad => VCC,
	cin => \C1|Add6~7\,
	combout => \C1|Add6~8_combout\,
	cout => \C1|Add6~9\);

-- Location: LCCOMB_X21_Y13_N16
\C1|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~10_combout\ = (\C1|Mod0|auto_generated|divider|remainder[5]~6_combout\ & ((\C1|drawProcess~16_combout\ & (!\C1|Add6~9\)) # (!\C1|drawProcess~16_combout\ & (\C1|Add6~9\ & VCC)))) # (!\C1|Mod0|auto_generated|divider|remainder[5]~6_combout\ & 
-- ((\C1|drawProcess~16_combout\ & ((\C1|Add6~9\) # (GND))) # (!\C1|drawProcess~16_combout\ & (!\C1|Add6~9\))))
-- \C1|Add6~11\ = CARRY((\C1|Mod0|auto_generated|divider|remainder[5]~6_combout\ & (\C1|drawProcess~16_combout\ & !\C1|Add6~9\)) # (!\C1|Mod0|auto_generated|divider|remainder[5]~6_combout\ & ((\C1|drawProcess~16_combout\) # (!\C1|Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|remainder[5]~6_combout\,
	datab => \C1|drawProcess~16_combout\,
	datad => VCC,
	cin => \C1|Add6~9\,
	combout => \C1|Add6~10_combout\,
	cout => \C1|Add6~11\);

-- Location: LCCOMB_X21_Y13_N18
\C1|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~12_combout\ = (\C1|Mod0|auto_generated|divider|remainder[6]~5_combout\ & (\C1|Add6~11\ $ (GND))) # (!\C1|Mod0|auto_generated|divider|remainder[6]~5_combout\ & (!\C1|Add6~11\ & VCC))
-- \C1|Add6~13\ = CARRY((\C1|Mod0|auto_generated|divider|remainder[6]~5_combout\ & !\C1|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|remainder[6]~5_combout\,
	datad => VCC,
	cin => \C1|Add6~11\,
	combout => \C1|Add6~12_combout\,
	cout => \C1|Add6~13\);

-- Location: LCCOMB_X21_Y13_N20
\C1|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~14_combout\ = (\C1|Mod0|auto_generated|divider|remainder[7]~4_combout\ & (!\C1|Add6~13\)) # (!\C1|Mod0|auto_generated|divider|remainder[7]~4_combout\ & ((\C1|Add6~13\) # (GND)))
-- \C1|Add6~15\ = CARRY((!\C1|Add6~13\) # (!\C1|Mod0|auto_generated|divider|remainder[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|remainder[7]~4_combout\,
	datad => VCC,
	cin => \C1|Add6~13\,
	combout => \C1|Add6~14_combout\,
	cout => \C1|Add6~15\);

-- Location: LCCOMB_X21_Y13_N22
\C1|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~16_combout\ = (\C1|Mod0|auto_generated|divider|remainder[8]~3_combout\ & (\C1|Add6~15\ $ (GND))) # (!\C1|Mod0|auto_generated|divider|remainder[8]~3_combout\ & (!\C1|Add6~15\ & VCC))
-- \C1|Add6~17\ = CARRY((\C1|Mod0|auto_generated|divider|remainder[8]~3_combout\ & !\C1|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|remainder[8]~3_combout\,
	datad => VCC,
	cin => \C1|Add6~15\,
	combout => \C1|Add6~16_combout\,
	cout => \C1|Add6~17\);

-- Location: LCCOMB_X21_Y13_N24
\C1|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~18_combout\ = (\C1|Mod0|auto_generated|divider|remainder[9]~2_combout\ & (!\C1|Add6~17\)) # (!\C1|Mod0|auto_generated|divider|remainder[9]~2_combout\ & ((\C1|Add6~17\) # (GND)))
-- \C1|Add6~19\ = CARRY((!\C1|Add6~17\) # (!\C1|Mod0|auto_generated|divider|remainder[9]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|remainder[9]~2_combout\,
	datad => VCC,
	cin => \C1|Add6~17\,
	combout => \C1|Add6~18_combout\,
	cout => \C1|Add6~19\);

-- Location: LCCOMB_X21_Y13_N26
\C1|Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~20_combout\ = (\C1|Mod0|auto_generated|divider|remainder[10]~1_combout\ & (\C1|Add6~19\ $ (GND))) # (!\C1|Mod0|auto_generated|divider|remainder[10]~1_combout\ & (!\C1|Add6~19\ & VCC))
-- \C1|Add6~21\ = CARRY((\C1|Mod0|auto_generated|divider|remainder[10]~1_combout\ & !\C1|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|remainder[10]~1_combout\,
	datad => VCC,
	cin => \C1|Add6~19\,
	combout => \C1|Add6~20_combout\,
	cout => \C1|Add6~21\);

-- Location: LCCOMB_X21_Y13_N28
\C1|Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~22_combout\ = (\C1|Mod0|auto_generated|divider|remainder[11]~0_combout\ & (!\C1|Add6~21\)) # (!\C1|Mod0|auto_generated|divider|remainder[11]~0_combout\ & ((\C1|Add6~21\) # (GND)))
-- \C1|Add6~23\ = CARRY((!\C1|Add6~21\) # (!\C1|Mod0|auto_generated|divider|remainder[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|remainder[11]~0_combout\,
	datad => VCC,
	cin => \C1|Add6~21\,
	combout => \C1|Add6~22_combout\,
	cout => \C1|Add6~23\);

-- Location: LCCOMB_X21_Y13_N30
\C1|Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~24_combout\ = \C1|Add6~23\ $ (!\C1|Mod0|auto_generated|divider|remainder[11]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|Mod0|auto_generated|divider|remainder[11]~0_combout\,
	cin => \C1|Add6~23\,
	combout => \C1|Add6~24_combout\);

-- Location: LCCOMB_X20_Y13_N6
\C1|drawProcess~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~17_combout\ = (!\C1|Add6~0_combout\ & (!\C1|Add6~2_combout\ & (!\C1|Add6~6_combout\ & !\C1|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~0_combout\,
	datab => \C1|Add6~2_combout\,
	datac => \C1|Add6~6_combout\,
	datad => \C1|Add6~4_combout\,
	combout => \C1|drawProcess~17_combout\);

-- Location: LCCOMB_X27_Y16_N26
\C1|drawProcess~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~18_combout\ = \C1|Add0~16_combout\ $ (\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add0~16_combout\,
	datad => \C1|HPOS\(0),
	combout => \C1|drawProcess~18_combout\);

-- Location: LCCOMB_X27_Y18_N6
\C1|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~0_combout\ = (\C1|Add0~16_combout\ & (!\C1|drawProcess~18_combout\ & VCC)) # (!\C1|Add0~16_combout\ & (\C1|drawProcess~18_combout\ $ (GND)))
-- \C1|Add7~1\ = CARRY((!\C1|Add0~16_combout\ & !\C1|drawProcess~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|drawProcess~18_combout\,
	datad => VCC,
	combout => \C1|Add7~0_combout\,
	cout => \C1|Add7~1\);

-- Location: LCCOMB_X27_Y18_N8
\C1|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~2_combout\ = (\C1|Add7~1\ & (\C1|Add0~16_combout\ $ ((\C1|HPOS\(1))))) # (!\C1|Add7~1\ & ((\C1|Add0~16_combout\ $ (!\C1|HPOS\(1))) # (GND)))
-- \C1|Add7~3\ = CARRY((\C1|Add0~16_combout\ $ (\C1|HPOS\(1))) # (!\C1|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|Add7~1\,
	combout => \C1|Add7~2_combout\,
	cout => \C1|Add7~3\);

-- Location: LCCOMB_X27_Y18_N10
\C1|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~4_combout\ = (\C1|Add7~3\ & ((\C1|Add0~16_combout\ $ (!\C1|HPOS\(2))))) # (!\C1|Add7~3\ & (\C1|Add0~16_combout\ $ (\C1|HPOS\(2) $ (GND))))
-- \C1|Add7~5\ = CARRY((!\C1|Add7~3\ & (\C1|Add0~16_combout\ $ (!\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|Add7~3\,
	combout => \C1|Add7~4_combout\,
	cout => \C1|Add7~5\);

-- Location: LCCOMB_X27_Y18_N12
\C1|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~6_combout\ = (\C1|Add7~5\ & (\C1|Add0~16_combout\ $ ((\C1|Add0~0_combout\)))) # (!\C1|Add7~5\ & ((\C1|Add0~16_combout\ $ (!\C1|Add0~0_combout\)) # (GND)))
-- \C1|Add7~7\ = CARRY((\C1|Add0~16_combout\ $ (\C1|Add0~0_combout\)) # (!\C1|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|Add7~5\,
	combout => \C1|Add7~6_combout\,
	cout => \C1|Add7~7\);

-- Location: LCCOMB_X27_Y18_N14
\C1|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~8_combout\ = (\C1|Add7~7\ & ((\C1|Add0~16_combout\ $ (!\C1|Add0~2_combout\)))) # (!\C1|Add7~7\ & (\C1|Add0~16_combout\ $ (\C1|Add0~2_combout\ $ (GND))))
-- \C1|Add7~9\ = CARRY((!\C1|Add7~7\ & (\C1|Add0~16_combout\ $ (!\C1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add0~2_combout\,
	datad => VCC,
	cin => \C1|Add7~7\,
	combout => \C1|Add7~8_combout\,
	cout => \C1|Add7~9\);

-- Location: LCCOMB_X27_Y18_N16
\C1|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~10_combout\ = (\C1|Add7~9\ & (\C1|Add0~16_combout\ $ ((\C1|Add0~4_combout\)))) # (!\C1|Add7~9\ & ((\C1|Add0~16_combout\ $ (!\C1|Add0~4_combout\)) # (GND)))
-- \C1|Add7~11\ = CARRY((\C1|Add0~16_combout\ $ (\C1|Add0~4_combout\)) # (!\C1|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|Add7~9\,
	combout => \C1|Add7~10_combout\,
	cout => \C1|Add7~11\);

-- Location: LCCOMB_X27_Y18_N18
\C1|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~12_combout\ = (\C1|Add7~11\ & ((\C1|Add0~16_combout\ $ (!\C1|Add0~6_combout\)))) # (!\C1|Add7~11\ & (\C1|Add0~16_combout\ $ (\C1|Add0~6_combout\ $ (GND))))
-- \C1|Add7~13\ = CARRY((!\C1|Add7~11\ & (\C1|Add0~16_combout\ $ (!\C1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|Add7~11\,
	combout => \C1|Add7~12_combout\,
	cout => \C1|Add7~13\);

-- Location: LCCOMB_X27_Y18_N20
\C1|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~14_combout\ = (\C1|Add7~13\ & (\C1|Add0~16_combout\ $ ((\C1|Add0~8_combout\)))) # (!\C1|Add7~13\ & ((\C1|Add0~16_combout\ $ (!\C1|Add0~8_combout\)) # (GND)))
-- \C1|Add7~15\ = CARRY((\C1|Add0~16_combout\ $ (\C1|Add0~8_combout\)) # (!\C1|Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add0~8_combout\,
	datad => VCC,
	cin => \C1|Add7~13\,
	combout => \C1|Add7~14_combout\,
	cout => \C1|Add7~15\);

-- Location: LCCOMB_X27_Y18_N2
\C1|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal7~1_combout\ = (!\C1|Add7~14_combout\ & (!\C1|Add7~12_combout\ & (!\C1|Add7~8_combout\ & \C1|Add7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add7~14_combout\,
	datab => \C1|Add7~12_combout\,
	datac => \C1|Add7~8_combout\,
	datad => \C1|Add7~10_combout\,
	combout => \C1|Equal7~1_combout\);

-- Location: LCCOMB_X27_Y18_N22
\C1|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~16_combout\ = (\C1|Add7~15\ & ((\C1|Add0~16_combout\ $ (!\C1|Add0~10_combout\)))) # (!\C1|Add7~15\ & (\C1|Add0~16_combout\ $ (\C1|Add0~10_combout\ $ (GND))))
-- \C1|Add7~17\ = CARRY((!\C1|Add7~15\ & (\C1|Add0~16_combout\ $ (!\C1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|Add7~15\,
	combout => \C1|Add7~16_combout\,
	cout => \C1|Add7~17\);

-- Location: LCCOMB_X27_Y18_N24
\C1|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~18_combout\ = (\C1|Add7~17\ & (\C1|Add0~16_combout\ $ ((\C1|Add0~12_combout\)))) # (!\C1|Add7~17\ & ((\C1|Add0~16_combout\ $ (!\C1|Add0~12_combout\)) # (GND)))
-- \C1|Add7~19\ = CARRY((\C1|Add0~16_combout\ $ (\C1|Add0~12_combout\)) # (!\C1|Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|Add7~17\,
	combout => \C1|Add7~18_combout\,
	cout => \C1|Add7~19\);

-- Location: LCCOMB_X27_Y18_N26
\C1|Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~20_combout\ = (\C1|Add7~19\ & ((\C1|Add0~16_combout\ $ (!\C1|Add0~14_combout\)))) # (!\C1|Add7~19\ & (\C1|Add0~16_combout\ $ (\C1|Add0~14_combout\ $ (GND))))
-- \C1|Add7~21\ = CARRY((!\C1|Add7~19\ & (\C1|Add0~16_combout\ $ (!\C1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Add0~14_combout\,
	datad => VCC,
	cin => \C1|Add7~19\,
	combout => \C1|Add7~20_combout\,
	cout => \C1|Add7~21\);

-- Location: LCCOMB_X27_Y18_N28
\C1|Add7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add7~22_combout\ = \C1|Add7~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add7~21\,
	combout => \C1|Add7~22_combout\);

-- Location: LCCOMB_X27_Y18_N4
\C1|Equal7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal7~2_combout\ = (!\C1|Add7~20_combout\ & (!\C1|Add7~22_combout\ & (!\C1|Add7~16_combout\ & !\C1|Add7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add7~20_combout\,
	datab => \C1|Add7~22_combout\,
	datac => \C1|Add7~16_combout\,
	datad => \C1|Add7~18_combout\,
	combout => \C1|Equal7~2_combout\);

-- Location: LCCOMB_X27_Y18_N0
\C1|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal7~0_combout\ = (\C1|Add7~4_combout\ & (\C1|Add7~6_combout\ & (\C1|Add7~2_combout\ & \C1|Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add7~4_combout\,
	datab => \C1|Add7~6_combout\,
	datac => \C1|Add7~2_combout\,
	datad => \C1|Add7~0_combout\,
	combout => \C1|Equal7~0_combout\);

-- Location: LCCOMB_X27_Y18_N30
\C1|drawProcess~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~19_combout\ = (\C1|Add0~16_combout\) # ((\C1|Equal7~1_combout\ & (\C1|Equal7~2_combout\ & \C1|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Equal7~1_combout\,
	datac => \C1|Equal7~2_combout\,
	datad => \C1|Equal7~0_combout\,
	combout => \C1|drawProcess~19_combout\);

-- Location: LCCOMB_X28_Y17_N12
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~15_combout\ = \C1|Add0~10_combout\ $ (\C1|Add0~16_combout\ $ (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~10_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~15_combout\);

-- Location: LCCOMB_X28_Y17_N16
\C1|Mod1|auto_generated|divider|divider|op_6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_6~0_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\ $ (GND)
-- \C1|Mod1|auto_generated|divider|divider|op_6~1\ = CARRY(!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|op_6~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X28_Y17_N18
\C1|Mod1|auto_generated|divider|divider|op_6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_6~2_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~1\) # (GND))) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|divider|op_6~1\))
-- \C1|Mod1|auto_generated|divider|divider|op_6~3\ = CARRY((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_6~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_6~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X28_Y17_N20
\C1|Mod1|auto_generated|divider|divider|op_6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_6~4_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~15_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_6~3\ & VCC)) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~15_combout\ & 
-- (\C1|Mod1|auto_generated|divider|divider|op_6~3\ $ (GND)))
-- \C1|Mod1|auto_generated|divider|divider|op_6~5\ = CARRY((!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~15_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~15_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_6~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_6~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X28_Y17_N22
\C1|Mod1|auto_generated|divider|divider|op_6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_6~6_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~5\) # (GND))) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|divider|op_6~5\))
-- \C1|Mod1|auto_generated|divider|divider|op_6~7\ = CARRY((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_6~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_6~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X28_Y17_N24
\C1|Mod1|auto_generated|divider|divider|op_6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_6~8_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ & (\C1|Mod1|auto_generated|divider|divider|op_6~7\ $ (GND))) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ & 
-- ((GND) # (!\C1|Mod1|auto_generated|divider|divider|op_6~7\)))
-- \C1|Mod1|auto_generated|divider|divider|op_6~9\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|op_6~7\) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_6~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_6~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X28_Y17_N26
\C1|Mod1|auto_generated|divider|divider|op_6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_6~10_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_6~9\)) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|op_6~9\) # (GND)))
-- \C1|Mod1|auto_generated|divider|divider|op_6~11\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|op_6~9\) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_6~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_6~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X28_Y17_N28
\C1|Mod1|auto_generated|divider|divider|op_6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ = \C1|Mod1|auto_generated|divider|divider|op_6~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|op_6~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\);

-- Location: LCCOMB_X29_Y15_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[65]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[65]~153_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & \C1|Mod1|auto_generated|divider|divider|op_6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[65]~153_combout\);

-- Location: LCCOMB_X29_Y15_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[65]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\ & \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\);

-- Location: LCCOMB_X29_Y15_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[64]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[64]~155_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_6~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_6~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[64]~155_combout\);

-- Location: LCCOMB_X29_Y15_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[64]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[64]~154_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\ & \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[64]~154_combout\);

-- Location: LCCOMB_X28_Y17_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[63]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_6~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_6~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\);

-- Location: LCCOMB_X29_Y15_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[63]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[63]~156_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[63]~156_combout\);

-- Location: LCCOMB_X28_Y17_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[62]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_6~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_6~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\);

-- Location: LCCOMB_X30_Y15_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[62]~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & (\C1|Add0~10_combout\ $ (\C1|Add0~16_combout\ $ (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~10_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~11_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\);

-- Location: LCCOMB_X28_Y17_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[61]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[61]~160_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_6~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_6~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[61]~160_combout\);

-- Location: LCCOMB_X28_Y17_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[61]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[61]~159_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\ & \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[61]~159_combout\);

-- Location: LCCOMB_X29_Y17_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[60]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[60]~161_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\ & \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[60]~161_combout\);

-- Location: LCCOMB_X29_Y17_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[60]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[60]~162_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_6~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_6~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[60]~162_combout\);

-- Location: LCCOMB_X26_Y17_N20
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\ = \C1|Add0~16_combout\ $ (\C1|Add0~4_combout\ $ (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add0~16_combout\,
	datac => \C1|Add0~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\);

-- Location: LCCOMB_X29_Y15_N0
\C1|Mod1|auto_generated|divider|divider|op_7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_7~0_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\ $ (GND)
-- \C1|Mod1|auto_generated|divider|divider|op_7~1\ = CARRY(!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~21_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|op_7~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X29_Y15_N2
\C1|Mod1|auto_generated|divider|divider|op_7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_7~2_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[60]~161_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_7~1\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[60]~161_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[60]~162_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_7~1\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[60]~162_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_7~1\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_7~3\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[60]~161_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[60]~162_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[60]~161_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[60]~162_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_7~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_7~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X29_Y15_N4
\C1|Mod1|auto_generated|divider|divider|op_7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_7~4_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~3\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[61]~160_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[61]~159_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_7~3\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[61]~160_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[61]~159_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|op_7~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|op_7~3\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[61]~160_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[61]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[61]~160_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[61]~159_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_7~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_7~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X29_Y15_N6
\C1|Mod1|auto_generated|divider|divider|op_7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_7~6_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_7~5\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_7~5\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_7~5\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_7~7\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[62]~158_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_7~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_7~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X29_Y15_N8
\C1|Mod1|auto_generated|divider|divider|op_7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_7~8_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~7\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[63]~156_combout\))))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_7~7\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[63]~156_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_7~9\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[63]~156_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[63]~157_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[63]~156_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_7~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_7~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X29_Y15_N10
\C1|Mod1|auto_generated|divider|divider|op_7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_7~10_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[64]~155_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_7~9\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[64]~155_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[64]~154_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_7~9\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[64]~154_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_7~9\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_7~11\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[64]~155_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[64]~154_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[64]~155_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[64]~154_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_7~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_7~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X29_Y15_N12
\C1|Mod1|auto_generated|divider|divider|op_7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_7~12_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~11\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[65]~153_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\))))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_7~11\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[65]~153_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_7~13\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[65]~153_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[65]~153_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[65]~152_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_7~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_7~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X29_Y15_N14
\C1|Mod1|auto_generated|divider|divider|op_7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ = !\C1|Mod1|auto_generated|divider|divider|op_7~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|op_7~13\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\);

-- Location: LCCOMB_X28_Y15_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[78]~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\))) # (!\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & (\C1|Mod1|auto_generated|divider|divider|op_6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_6~10_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\);

-- Location: LCCOMB_X28_Y15_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[78]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[78]~163_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[78]~163_combout\);

-- Location: LCCOMB_X28_Y15_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[77]~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[10]~13_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~8_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\);

-- Location: LCCOMB_X28_Y15_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[77]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[77]~164_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[77]~164_combout\);

-- Location: LCCOMB_X28_Y15_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[76]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[76]~165_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_7~8_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[76]~165_combout\);

-- Location: LCCOMB_X29_Y15_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[76]~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\)) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~14_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_6~6_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\);

-- Location: LCCOMB_X30_Y15_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[75]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & \C1|Mod1|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[62]~223_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_6~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\);

-- Location: LCCOMB_X29_Y15_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[75]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[75]~166_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~6_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[75]~166_combout\);

-- Location: LCCOMB_X30_Y15_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[74]~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\))) # (!\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & (\C1|Mod1|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_6~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\);

-- Location: LCCOMB_X29_Y15_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[74]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[74]~167_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~4_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[74]~167_combout\);

-- Location: LCCOMB_X27_Y16_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[73]~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & 
-- ((!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\))) # (!\C1|Mod1|auto_generated|divider|divider|op_6~12_combout\ & (\C1|Mod1|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_6~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~22_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_6~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\);

-- Location: LCCOMB_X30_Y15_N4
\C1|Mod1|auto_generated|divider|divider|StageOut[73]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[73]~168_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_7~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[73]~168_combout\);

-- Location: LCCOMB_X30_Y15_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[72]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[72]~169_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[72]~169_combout\);

-- Location: LCCOMB_X26_Y17_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[72]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\ $ (\C1|Add0~16_combout\ $ (!\C1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~10_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Add0~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\);

-- Location: LCCOMB_X28_Y15_N4
\C1|Mod1|auto_generated|divider|divider|op_8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~0_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ $ (GND)
-- \C1|Mod1|auto_generated|divider|divider|op_8~1\ = CARRY(!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X28_Y15_N6
\C1|Mod1|auto_generated|divider|divider|op_8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~2_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[72]~169_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_8~1\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[72]~169_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_8~1\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_8~1\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_8~3\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[72]~169_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[72]~169_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_8~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X28_Y15_N8
\C1|Mod1|auto_generated|divider|divider|op_8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~4_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~3\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[73]~168_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_8~3\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[73]~168_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|op_8~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|op_8~3\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[73]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[73]~168_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_8~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X28_Y15_N10
\C1|Mod1|auto_generated|divider|divider|op_8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~6_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_8~5\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[74]~167_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_8~5\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[74]~167_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_8~5\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_8~7\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[74]~167_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[74]~167_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_8~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X28_Y15_N12
\C1|Mod1|auto_generated|divider|divider|op_8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~8_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~7\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[75]~166_combout\))))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_8~7\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[75]~166_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_8~9\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[75]~166_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[75]~166_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_8~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X28_Y15_N14
\C1|Mod1|auto_generated|divider|divider|op_8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~10_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[76]~165_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_8~9\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[76]~165_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_8~9\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_8~9\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_8~11\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[76]~165_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[76]~165_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_8~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X28_Y15_N16
\C1|Mod1|auto_generated|divider|divider|op_8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~12_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~11\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[77]~164_combout\))))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_8~11\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[77]~164_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_8~13\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[77]~164_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[77]~164_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_8~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X28_Y15_N18
\C1|Mod1|auto_generated|divider|divider|op_8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~14_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~13\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[78]~163_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_8~13\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[78]~163_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_8~15\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[78]~163_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[78]~163_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_8~13\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X28_Y15_N20
\C1|Mod1|auto_generated|divider|divider|op_8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ = \C1|Mod1|auto_generated|divider|divider|op_8~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|op_8~15\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\);

-- Location: LCCOMB_X27_Y15_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[91]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_7~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_7~12_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[78]~271_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\);

-- Location: LCCOMB_X27_Y15_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[91]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[91]~170_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod1|auto_generated|divider|divider|op_8~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[91]~170_combout\);

-- Location: LCCOMB_X27_Y15_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[90]~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_7~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_7~10_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[77]~272_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\);

-- Location: LCCOMB_X27_Y15_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[90]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[90]~171_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod1|auto_generated|divider|divider|op_8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[90]~171_combout\);

-- Location: LCCOMB_X30_Y15_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[89]~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_7~8_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[76]~273_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\);

-- Location: LCCOMB_X28_Y15_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[89]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[89]~172_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[89]~172_combout\);

-- Location: LCCOMB_X28_Y15_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[88]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[88]~173_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_8~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[88]~173_combout\);

-- Location: LCCOMB_X30_Y15_N10
\C1|Mod1|auto_generated|divider|divider|StageOut[88]~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_7~6_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[75]~224_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\);

-- Location: LCCOMB_X30_Y15_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[87]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[87]~174_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod1|auto_generated|divider|divider|op_8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~6_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[87]~174_combout\);

-- Location: LCCOMB_X30_Y15_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[87]~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_7~4_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[74]~274_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\);

-- Location: LCCOMB_X27_Y16_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[86]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[86]~175_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_8~4_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[86]~175_combout\);

-- Location: LCCOMB_X27_Y16_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[86]~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_7~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_7~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[73]~275_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\);

-- Location: LCCOMB_X24_Y15_N10
\C1|Mod1|auto_generated|divider|divider|StageOut[85]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[85]~176_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod1|auto_generated|divider|divider|op_8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~2_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[85]~176_combout\);

-- Location: LCCOMB_X26_Y17_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[85]~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_7~14_combout\ & \C1|Mod1|auto_generated|divider|divider|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_7~14_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[72]~225_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_7~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\);

-- Location: LCCOMB_X28_Y14_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[84]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[84]~178_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_8~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[84]~178_combout\);

-- Location: LCCOMB_X28_Y14_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[84]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[84]~177_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ & \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[84]~177_combout\);

-- Location: LCCOMB_X27_Y16_N28
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[3]~18_combout\ = \C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\ $ (\C1|Add0~16_combout\ $ (\C1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|Add0~0_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[3]~18_combout\);

-- Location: LCCOMB_X27_Y15_N0
\C1|Mod1|auto_generated|divider|divider|op_9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~0_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[3]~18_combout\ $ (GND)
-- \C1|Mod1|auto_generated|divider|divider|op_9~1\ = CARRY(!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[3]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[3]~18_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X27_Y15_N2
\C1|Mod1|auto_generated|divider|divider|op_9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~2_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[84]~178_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_9~1\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[84]~178_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[84]~177_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_9~1\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[84]~177_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_9~1\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_9~3\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[84]~178_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[84]~177_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[84]~178_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[84]~177_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X27_Y15_N4
\C1|Mod1|auto_generated|divider|divider|op_9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~4_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~3\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[85]~176_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_9~3\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[85]~176_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|op_9~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|op_9~3\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[85]~176_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[85]~176_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X27_Y15_N6
\C1|Mod1|auto_generated|divider|divider|op_9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~6_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[86]~175_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_9~5\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[86]~175_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_9~5\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_9~5\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_9~7\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[86]~175_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[86]~175_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X27_Y15_N8
\C1|Mod1|auto_generated|divider|divider|op_9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~8_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~7\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[87]~174_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\))))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_9~7\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[87]~174_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_9~9\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[87]~174_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[87]~174_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X27_Y15_N10
\C1|Mod1|auto_generated|divider|divider|op_9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~10_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[88]~173_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_9~9\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[88]~173_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_9~9\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_9~9\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_9~11\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[88]~173_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[88]~173_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~11\);

-- Location: LCCOMB_X27_Y15_N12
\C1|Mod1|auto_generated|divider|divider|op_9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~12_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~11\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[89]~172_combout\))))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_9~11\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[89]~172_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_9~13\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[89]~172_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[89]~172_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~13\);

-- Location: LCCOMB_X27_Y15_N14
\C1|Mod1|auto_generated|divider|divider|op_9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~14_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~13\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[90]~171_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_9~13\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[90]~171_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_9~15\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[90]~171_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[90]~171_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~13\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~15\);

-- Location: LCCOMB_X27_Y15_N16
\C1|Mod1|auto_generated|divider|divider|op_9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~16_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~15\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[91]~170_combout\))))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_9~15\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[91]~170_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_9~17\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[91]~170_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[91]~170_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~15\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~16_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_9~17\);

-- Location: LCCOMB_X27_Y15_N18
\C1|Mod1|auto_generated|divider|divider|op_9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ = !\C1|Mod1|auto_generated|divider|divider|op_9~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|op_9~17\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\);

-- Location: LCCOMB_X26_Y15_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[104]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[104]~179_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod1|auto_generated|divider|divider|op_9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[104]~179_combout\);

-- Location: LCCOMB_X26_Y15_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[104]~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod1|auto_generated|divider|divider|op_8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_8~14_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[91]~226_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\);

-- Location: LCCOMB_X26_Y15_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[103]~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_8~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_8~12_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[90]~227_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\);

-- Location: LCCOMB_X27_Y15_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[103]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[103]~180_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[103]~180_combout\);

-- Location: LCCOMB_X27_Y15_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[102]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[102]~181_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod1|auto_generated|divider|divider|op_9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[102]~181_combout\);

-- Location: LCCOMB_X26_Y14_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[102]~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_8~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_8~10_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[89]~228_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\);

-- Location: LCCOMB_X30_Y15_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[101]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[101]~182_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[101]~182_combout\);

-- Location: LCCOMB_X30_Y15_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[101]~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & \C1|Mod1|auto_generated|divider|divider|op_8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[88]~229_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\);

-- Location: LCCOMB_X24_Y15_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[100]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[100]~183_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[100]~183_combout\);

-- Location: LCCOMB_X30_Y15_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[100]~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_8~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_8~6_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[87]~230_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\);

-- Location: LCCOMB_X27_Y16_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[99]~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_8~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[86]~231_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_8~4_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\);

-- Location: LCCOMB_X24_Y15_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[99]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[99]~184_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[99]~184_combout\);

-- Location: LCCOMB_X24_Y15_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[98]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[98]~185_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[98]~185_combout\);

-- Location: LCCOMB_X26_Y17_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[98]~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_8~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_8~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[85]~232_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\);

-- Location: LCCOMB_X26_Y14_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[97]~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & 
-- ((!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\))) # (!\C1|Mod1|auto_generated|divider|divider|op_8~16_combout\ & (\C1|Mod1|auto_generated|divider|divider|op_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_8~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_8~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\);

-- Location: LCCOMB_X26_Y14_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[97]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[97]~186_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[97]~186_combout\);

-- Location: LCCOMB_X26_Y13_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[96]~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & (\C1|Add0~0_combout\ $ (\C1|Add0~16_combout\ $ (!\C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Div1|auto_generated|divider|my_abs_num|cs1a[3]~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\);

-- Location: LCCOMB_X26_Y14_N10
\C1|Mod1|auto_generated|divider|divider|StageOut[96]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[96]~187_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_9~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[96]~187_combout\);

-- Location: LCCOMB_X26_Y13_N20
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\ = \C1|HPOS\(2) $ (((\C1|Add0~16_combout\) # ((!\C1|HPOS\(1) & !\C1|HPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(1),
	datac => \C1|HPOS\(0),
	datad => \C1|Add0~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\);

-- Location: LCCOMB_X26_Y15_N0
\C1|Mod1|auto_generated|divider|divider|op_10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~0_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\ $ (GND)
-- \C1|Mod1|auto_generated|divider|divider|op_10~1\ = CARRY(!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X26_Y15_N2
\C1|Mod1|auto_generated|divider|divider|op_10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~2_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_10~1\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\ 
-- & ((\C1|Mod1|auto_generated|divider|divider|StageOut[96]~187_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_10~1\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[96]~187_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_10~1\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_10~3\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[96]~187_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[96]~187_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X26_Y15_N4
\C1|Mod1|auto_generated|divider|divider|op_10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~4_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~3\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[97]~186_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_10~3\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[97]~186_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|op_10~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|op_10~3\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[97]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[97]~186_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X26_Y15_N6
\C1|Mod1|auto_generated|divider|divider|op_10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~6_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[98]~185_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_10~5\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[98]~185_combout\ 
-- & ((\C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_10~5\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_10~5\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_10~7\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[98]~185_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[98]~185_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X26_Y15_N8
\C1|Mod1|auto_generated|divider|divider|op_10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~8_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~7\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[99]~184_combout\))))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_10~7\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[99]~184_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_10~9\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[99]~184_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[99]~184_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X26_Y15_N10
\C1|Mod1|auto_generated|divider|divider|op_10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~10_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[100]~183_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_10~9\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[100]~183_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_10~9\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_10~9\) # (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_10~11\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[100]~183_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[100]~183_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X26_Y15_N12
\C1|Mod1|auto_generated|divider|divider|op_10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~12_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~11\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[101]~182_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\))))) # (!\C1|Mod1|auto_generated|divider|divider|op_10~11\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[101]~182_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_10~13\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[101]~182_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[101]~182_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X26_Y15_N14
\C1|Mod1|auto_generated|divider|divider|op_10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~14_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~13\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[102]~181_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|op_10~13\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[102]~181_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_10~15\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[102]~181_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[102]~181_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~13\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X26_Y15_N16
\C1|Mod1|auto_generated|divider|divider|op_10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~16_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~15\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[103]~180_combout\))))) # (!\C1|Mod1|auto_generated|divider|divider|op_10~15\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[103]~180_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_10~17\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[103]~180_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[103]~180_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~15\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~16_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X26_Y15_N18
\C1|Mod1|auto_generated|divider|divider|op_10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~18_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~17\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[104]~179_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|op_10~17\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[104]~179_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_10~19\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[104]~179_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[104]~179_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~17\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~18_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X26_Y15_N20
\C1|Mod1|auto_generated|divider|divider|op_10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ = \C1|Mod1|auto_generated|divider|divider|op_10~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|op_10~19\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\);

-- Location: LCCOMB_X27_Y12_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[117]~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod1|auto_generated|divider|divider|op_9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[104]~233_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\);

-- Location: LCCOMB_X27_Y12_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[117]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[117]~188_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod1|auto_generated|divider|divider|op_10~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[117]~188_combout\);

-- Location: LCCOMB_X26_Y12_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[116]~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_9~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_9~14_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[103]~234_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\);

-- Location: LCCOMB_X26_Y15_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[116]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[116]~189_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod1|auto_generated|divider|divider|op_10~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~189_combout\);

-- Location: LCCOMB_X26_Y14_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[115]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_9~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_9~12_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[102]~235_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\);

-- Location: LCCOMB_X26_Y15_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[115]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[115]~190_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~190_combout\);

-- Location: LCCOMB_X30_Y15_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[114]~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod1|auto_generated|divider|divider|op_9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[101]~236_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\);

-- Location: LCCOMB_X26_Y12_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[114]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[114]~191_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~191_combout\);

-- Location: LCCOMB_X26_Y12_N10
\C1|Mod1|auto_generated|divider|divider|StageOut[113]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[113]~192_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~192_combout\);

-- Location: LCCOMB_X30_Y15_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[113]~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_9~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_9~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[100]~237_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\);

-- Location: LCCOMB_X28_Y12_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[112]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[112]~193_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~193_combout\);

-- Location: LCCOMB_X27_Y16_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[112]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_9~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_9~6_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[99]~238_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\);

-- Location: LCCOMB_X26_Y12_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[111]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[111]~194_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_10~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~194_combout\);

-- Location: LCCOMB_X26_Y17_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[111]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_9~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[98]~239_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~4_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\);

-- Location: LCCOMB_X26_Y14_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[110]~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_9~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_9~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[97]~276_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\);

-- Location: LCCOMB_X26_Y12_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[110]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[110]~195_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~195_combout\);

-- Location: LCCOMB_X26_Y12_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[109]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[109]~196_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~196_combout\);

-- Location: LCCOMB_X26_Y13_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[109]~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_9~18_combout\ & \C1|Mod1|auto_generated|divider|divider|op_9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_9~18_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_9~0_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[96]~240_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\);

-- Location: LCCOMB_X26_Y12_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[108]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[108]~197_combout\ = (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\ & \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[108]~197_combout\);

-- Location: LCCOMB_X26_Y12_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[108]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[108]~198_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_10~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_10~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[108]~198_combout\);

-- Location: LCCOMB_X28_Y13_N20
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[1]~20_combout\ = \C1|HPOS\(1) $ (((\C1|Add0~16_combout\) # (!\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(1),
	datac => \C1|Add0~16_combout\,
	datad => \C1|HPOS\(0),
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[1]~20_combout\);

-- Location: LCCOMB_X27_Y12_N2
\C1|Mod1|auto_generated|divider|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~0_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[1]~20_combout\ $ (GND)
-- \C1|Mod1|auto_generated|divider|divider|op_1~1\ = CARRY(!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[1]~20_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X27_Y12_N4
\C1|Mod1|auto_generated|divider|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~2_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[108]~197_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_1~1\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[108]~197_combout\ 
-- & ((\C1|Mod1|auto_generated|divider|divider|StageOut[108]~198_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_1~1\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[108]~198_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_1~1\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_1~3\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[108]~197_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[108]~198_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[108]~197_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[108]~198_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X27_Y12_N6
\C1|Mod1|auto_generated|divider|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~4_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~3\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[109]~196_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_1~3\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[109]~196_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|op_1~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|op_1~3\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[109]~196_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~196_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X27_Y12_N8
\C1|Mod1|auto_generated|divider|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~6_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_1~5\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\ 
-- & ((\C1|Mod1|auto_generated|divider|divider|StageOut[110]~195_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_1~5\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[110]~195_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_1~5\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_1~7\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[110]~195_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~195_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X27_Y12_N10
\C1|Mod1|auto_generated|divider|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~8_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~7\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~194_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\))))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_1~7\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~194_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_1~9\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~194_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~194_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X27_Y12_N12
\C1|Mod1|auto_generated|divider|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~10_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[112]~193_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_1~9\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[112]~193_combout\ 
-- & ((\C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_1~9\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_1~9\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_1~11\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[112]~193_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~193_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X27_Y12_N14
\C1|Mod1|auto_generated|divider|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~12_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~11\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~192_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\))))) # (!\C1|Mod1|auto_generated|divider|divider|op_1~11\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~192_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_1~13\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~192_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~192_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X27_Y12_N16
\C1|Mod1|auto_generated|divider|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~14_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~13\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[114]~191_combout\)))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_1~13\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[114]~191_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_1~15\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[114]~191_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~191_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~13\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~15\);

-- Location: LCCOMB_X27_Y12_N18
\C1|Mod1|auto_generated|divider|divider|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~16_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~15\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[115]~190_combout\))))) # (!\C1|Mod1|auto_generated|divider|divider|op_1~15\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~190_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_1~17\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~190_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~190_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~15\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~16_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~17\);

-- Location: LCCOMB_X27_Y12_N20
\C1|Mod1|auto_generated|divider|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~18_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~17\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[116]~189_combout\)))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_1~17\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[116]~189_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_1~19\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[116]~189_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~189_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~17\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~18_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~19\);

-- Location: LCCOMB_X27_Y12_N22
\C1|Mod1|auto_generated|divider|divider|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~20_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~19\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[117]~188_combout\))))) # (!\C1|Mod1|auto_generated|divider|divider|op_1~19\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[117]~188_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_1~21\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[117]~188_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[117]~188_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~19\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~20_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_1~21\);

-- Location: LCCOMB_X27_Y12_N24
\C1|Mod1|auto_generated|divider|divider|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ = !\C1|Mod1|auto_generated|divider|divider|op_1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|op_1~21\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\);

-- Location: LCCOMB_X26_Y12_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[130]~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod1|auto_generated|divider|divider|op_10~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[117]~241_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\);

-- Location: LCCOMB_X27_Y14_N4
\C1|Mod1|auto_generated|divider|divider|StageOut[130]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[130]~199_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~20_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~199_combout\);

-- Location: LCCOMB_X27_Y12_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[129]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[129]~200_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~18_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~200_combout\);

-- Location: LCCOMB_X26_Y12_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[129]~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_10~16_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_10~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~242_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\);

-- Location: LCCOMB_X26_Y14_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[128]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_10~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~243_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~14_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\);

-- Location: LCCOMB_X27_Y12_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[128]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[128]~201_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~16_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~201_combout\);

-- Location: LCCOMB_X30_Y15_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[127]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_10~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_10~12_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~244_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\);

-- Location: LCCOMB_X28_Y14_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[127]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[127]~202_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~202_combout\);

-- Location: LCCOMB_X30_Y15_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[126]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod1|auto_generated|divider|divider|op_10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~245_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\);

-- Location: LCCOMB_X28_Y14_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[126]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[126]~203_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_1~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~203_combout\);

-- Location: LCCOMB_X26_Y14_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[125]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[125]~204_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~204_combout\);

-- Location: LCCOMB_X27_Y16_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[125]~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod1|auto_generated|divider|divider|op_10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~246_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_10~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\);

-- Location: LCCOMB_X26_Y14_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[124]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[124]~205_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_1~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~205_combout\);

-- Location: LCCOMB_X26_Y17_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[124]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_10~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_10~6_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~247_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\);

-- Location: LCCOMB_X26_Y14_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[123]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod1|auto_generated|divider|divider|op_10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~4_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~248_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\);

-- Location: LCCOMB_X26_Y14_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[123]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[123]~206_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~206_combout\);

-- Location: LCCOMB_X26_Y13_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[122]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & \C1|Mod1|auto_generated|divider|divider|op_10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~249_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_10~2_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\);

-- Location: LCCOMB_X26_Y12_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[122]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[122]~207_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~207_combout\);

-- Location: LCCOMB_X26_Y14_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[121]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[121]~208_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~208_combout\);

-- Location: LCCOMB_X26_Y12_N4
\C1|Mod1|auto_generated|divider|divider|StageOut[121]~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & 
-- ((!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\))) # (!\C1|Mod1|auto_generated|divider|divider|op_10~20_combout\ & (\C1|Mod1|auto_generated|divider|divider|op_10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_10~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_10~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~19_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\);

-- Location: LCCOMB_X26_Y13_N10
\C1|Mod1|auto_generated|divider|divider|StageOut[120]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & (\C1|HPOS\(1) $ (((\C1|HPOS\(0) & !\C1|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(1),
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datad => \C1|Add0~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\);

-- Location: LCCOMB_X26_Y14_N4
\C1|Mod1|auto_generated|divider|divider|StageOut[120]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[120]~209_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_1~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[120]~209_combout\);

-- Location: LCCOMB_X27_Y14_N6
\C1|Mod1|auto_generated|divider|divider|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~0_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|Mod1|auto_generated|divider|divider|op_2~1\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X27_Y14_N8
\C1|Mod1|auto_generated|divider|divider|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~2_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_2~1\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\ 
-- & ((\C1|Mod1|auto_generated|divider|divider|StageOut[120]~209_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_2~1\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[120]~209_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_2~1\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_2~3\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[120]~209_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[120]~209_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X27_Y14_N10
\C1|Mod1|auto_generated|divider|divider|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~4_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~3\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[121]~208_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|op_2~3\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[121]~208_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|op_2~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|op_2~3\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[121]~208_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~208_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X27_Y14_N12
\C1|Mod1|auto_generated|divider|divider|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~6_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_2~5\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\ 
-- & ((\C1|Mod1|auto_generated|divider|divider|StageOut[122]~207_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_2~5\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[122]~207_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_2~5\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_2~7\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[122]~207_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~207_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X27_Y14_N14
\C1|Mod1|auto_generated|divider|divider|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~8_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~7\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[123]~206_combout\))))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_2~7\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~206_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_2~9\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~206_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~206_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X27_Y14_N16
\C1|Mod1|auto_generated|divider|divider|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~10_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[124]~205_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|op_2~9\)))) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[124]~205_combout\ 
-- & ((\C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\ & (!\C1|Mod1|auto_generated|divider|divider|op_2~9\)) # (!\C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\ & ((\C1|Mod1|auto_generated|divider|divider|op_2~9\) # 
-- (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|op_2~11\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[124]~205_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~205_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X27_Y14_N18
\C1|Mod1|auto_generated|divider|divider|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~12_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~11\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~204_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\))))) # (!\C1|Mod1|auto_generated|divider|divider|op_2~11\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~204_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_2~13\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~204_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~204_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X27_Y14_N20
\C1|Mod1|auto_generated|divider|divider|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~14_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~13\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[126]~203_combout\)))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_2~13\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[126]~203_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_2~15\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[126]~203_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~203_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~13\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~15\);

-- Location: LCCOMB_X27_Y14_N22
\C1|Mod1|auto_generated|divider|divider|op_2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~16_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~15\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[127]~202_combout\))))) # (!\C1|Mod1|auto_generated|divider|divider|op_2~15\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~202_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_2~17\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~202_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~202_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~15\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~16_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~17\);

-- Location: LCCOMB_X27_Y14_N24
\C1|Mod1|auto_generated|divider|divider|op_2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~18_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~17\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[128]~201_combout\)))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_2~17\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[128]~201_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_2~19\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[128]~201_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~201_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~17\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~18_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~19\);

-- Location: LCCOMB_X27_Y14_N26
\C1|Mod1|auto_generated|divider|divider|op_2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~20_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~19\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[129]~200_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\))))) # (!\C1|Mod1|auto_generated|divider|divider|op_2~19\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[129]~200_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\) # (GND))))
-- \C1|Mod1|auto_generated|divider|divider|op_2~21\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[129]~200_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\) # (!\C1|Mod1|auto_generated|divider|divider|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~200_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~19\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~20_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~21\);

-- Location: LCCOMB_X27_Y14_N28
\C1|Mod1|auto_generated|divider|divider|op_2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~22_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~21\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[130]~199_combout\)))) 
-- # (!\C1|Mod1|auto_generated|divider|divider|op_2~21\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[130]~199_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|op_2~23\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[130]~199_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~199_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~21\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~22_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|op_2~23\);

-- Location: LCCOMB_X27_Y14_N30
\C1|Mod1|auto_generated|divider|divider|op_2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ = \C1|Mod1|auto_generated|divider|divider|op_2~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|op_2~23\,
	combout => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\);

-- Location: LCCOMB_X28_Y13_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[132]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[132]~210_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|HPOS\(0),
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~210_combout\);

-- Location: LCCOMB_X28_Y13_N4
\C1|Mod1|auto_generated|divider|divider|StageOut[132]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[132]~211_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~0_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~211_combout\);

-- Location: LCCOMB_X27_Y13_N2
\C1|Mod1|auto_generated|divider|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~0_combout\ = (((!\C1|Mod1|auto_generated|divider|divider|StageOut[132]~211_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[132]~210_combout\)))
-- \C1|Mod1|auto_generated|divider|op_2~1\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[132]~211_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[132]~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~211_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~210_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|op_2~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~1\);

-- Location: LCCOMB_X28_Y13_N22
\C1|Mod1|auto_generated|divider|remainder[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[0]~0_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[132]~210_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[132]~211_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~210_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~211_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~0_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[0]~0_combout\);

-- Location: LCCOMB_X23_Y13_N0
\C1|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~0_combout\ = (\C1|drawProcess~19_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~0_combout\ & VCC)) # (!\C1|drawProcess~19_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~0_combout\ $ (VCC)))
-- \C1|Add8~1\ = CARRY((!\C1|drawProcess~19_combout\ & \C1|Mod1|auto_generated|divider|remainder[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~19_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~0_combout\,
	datad => VCC,
	combout => \C1|Add8~0_combout\,
	cout => \C1|Add8~1\);

-- Location: LCCOMB_X26_Y13_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[133]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~2_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\);

-- Location: LCCOMB_X26_Y13_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[133]~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod1|auto_generated|divider|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[120]~259_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~0_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\);

-- Location: LCCOMB_X27_Y13_N4
\C1|Mod1|auto_generated|divider|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~2_combout\ = (\C1|Mod1|auto_generated|divider|op_2~1\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~1\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~3\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~1\,
	combout => \C1|Mod1|auto_generated|divider|op_2~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~3\);

-- Location: LCCOMB_X26_Y13_N8
\C1|Mod1|auto_generated|divider|remainder[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[1]~1_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~212_combout\,
	datac => \C1|Mod1|auto_generated|divider|op_2~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~260_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[1]~1_combout\);

-- Location: LCCOMB_X23_Y13_N2
\C1|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~2_combout\ = (\C1|drawProcess~19_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~1_combout\ & (!\C1|Add8~1\)) # (!\C1|Mod1|auto_generated|divider|remainder[1]~1_combout\ & ((\C1|Add8~1\) # (GND))))) # (!\C1|drawProcess~19_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|remainder[1]~1_combout\ & (\C1|Add8~1\ & VCC)) # (!\C1|Mod1|auto_generated|divider|remainder[1]~1_combout\ & (!\C1|Add8~1\))))
-- \C1|Add8~3\ = CARRY((\C1|drawProcess~19_combout\ & ((!\C1|Add8~1\) # (!\C1|Mod1|auto_generated|divider|remainder[1]~1_combout\))) # (!\C1|drawProcess~19_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[1]~1_combout\ & !\C1|Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~19_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~1_combout\,
	datad => VCC,
	cin => \C1|Add8~1\,
	combout => \C1|Add8~2_combout\,
	cout => \C1|Add8~3\);

-- Location: LCCOMB_X26_Y13_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[134]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~4_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\);

-- Location: LCCOMB_X26_Y12_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[134]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_1~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_1~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~277_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\);

-- Location: LCCOMB_X27_Y13_N6
\C1|Mod1|auto_generated|divider|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~4_combout\ = (\C1|Mod1|auto_generated|divider|op_2~3\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\ & VCC))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~3\ & ((((!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\)))))
-- \C1|Mod1|auto_generated|divider|op_2~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\ & !\C1|Mod1|auto_generated|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~3\,
	combout => \C1|Mod1|auto_generated|divider|op_2~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~5\);

-- Location: LCCOMB_X26_Y13_N24
\C1|Mod1|auto_generated|divider|remainder[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[2]~2_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~213_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~261_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~4_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[2]~2_combout\);

-- Location: LCCOMB_X23_Y13_N4
\C1|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~4_combout\ = ((\C1|Mod1|auto_generated|divider|remainder[2]~2_combout\ $ (\C1|drawProcess~19_combout\ $ (\C1|Add8~3\)))) # (GND)
-- \C1|Add8~5\ = CARRY((\C1|Mod1|auto_generated|divider|remainder[2]~2_combout\ & ((!\C1|Add8~3\) # (!\C1|drawProcess~19_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[2]~2_combout\ & (!\C1|drawProcess~19_combout\ & !\C1|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[2]~2_combout\,
	datab => \C1|drawProcess~19_combout\,
	datad => VCC,
	cin => \C1|Add8~3\,
	combout => \C1|Add8~4_combout\,
	cout => \C1|Add8~5\);

-- Location: LCCOMB_X20_Y13_N12
\C1|drawProcess~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~20_combout\ = (!\C1|Add8~0_combout\ & (!\C1|Add8~2_combout\ & (!\C1|Add6~8_combout\ & !\C1|Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~0_combout\,
	datab => \C1|Add8~2_combout\,
	datac => \C1|Add6~8_combout\,
	datad => \C1|Add8~4_combout\,
	combout => \C1|drawProcess~20_combout\);

-- Location: LCCOMB_X21_Y13_N0
\C1|drawProcess~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~21_combout\ = (!\C1|Add6~10_combout\ & (!\C1|Add6~12_combout\ & (\C1|drawProcess~17_combout\ & \C1|drawProcess~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~10_combout\,
	datab => \C1|Add6~12_combout\,
	datac => \C1|drawProcess~17_combout\,
	datad => \C1|drawProcess~20_combout\,
	combout => \C1|drawProcess~21_combout\);

-- Location: LCCOMB_X21_Y13_N2
\C1|drawProcess~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~22_combout\ = (!\C1|Add6~16_combout\ & (!\C1|Add6~18_combout\ & (!\C1|Add6~14_combout\ & \C1|drawProcess~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~16_combout\,
	datab => \C1|Add6~18_combout\,
	datac => \C1|Add6~14_combout\,
	datad => \C1|drawProcess~21_combout\,
	combout => \C1|drawProcess~22_combout\);

-- Location: LCCOMB_X21_Y13_N4
\C1|drawProcess~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~23_combout\ = (!\C1|Add6~24_combout\ & (!\C1|Add6~22_combout\ & (!\C1|Add6~20_combout\ & \C1|drawProcess~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~24_combout\,
	datab => \C1|Add6~22_combout\,
	datac => \C1|Add6~20_combout\,
	datad => \C1|drawProcess~22_combout\,
	combout => \C1|drawProcess~23_combout\);

-- Location: LCCOMB_X27_Y13_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[143]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[143]~222_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[143]~222_combout\);

-- Location: LCCOMB_X26_Y12_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[143]~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[143]~270_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_1~20_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~250_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[143]~270_combout\);

-- Location: LCCOMB_X26_Y12_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[142]~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_1~18_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_1~18_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~251_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\);

-- Location: LCCOMB_X27_Y14_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[142]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~20_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_2~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\);

-- Location: LCCOMB_X26_Y14_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[141]~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_1~16_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_1~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~252_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\);

-- Location: LCCOMB_X27_Y13_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[141]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\);

-- Location: LCCOMB_X27_Y14_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[140]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\);

-- Location: LCCOMB_X28_Y13_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[140]~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_1~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~253_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~14_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\);

-- Location: LCCOMB_X28_Y13_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[139]~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_1~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~254_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~12_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\);

-- Location: LCCOMB_X28_Y13_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[139]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_2~14_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\);

-- Location: LCCOMB_X27_Y16_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[138]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod1|auto_generated|divider|divider|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~255_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\);

-- Location: LCCOMB_X28_Y13_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[138]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\);

-- Location: LCCOMB_X26_Y17_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[137]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\);

-- Location: LCCOMB_X26_Y17_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[137]~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_1~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_1~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~256_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\);

-- Location: LCCOMB_X26_Y14_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[136]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\ & \C1|Mod1|auto_generated|divider|divider|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~257_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_1~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\);

-- Location: LCCOMB_X26_Y14_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[136]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\);

-- Location: LCCOMB_X26_Y13_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[135]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\ = (!\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & \C1|Mod1|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~6_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\);

-- Location: LCCOMB_X26_Y13_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[135]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\ = (\C1|Mod1|auto_generated|divider|divider|op_2~24_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|op_1~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|op_1~4_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|op_1~22_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|op_2~24_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~258_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\);

-- Location: LCCOMB_X27_Y13_N8
\C1|Mod1|auto_generated|divider|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~6_combout\ = (\C1|Mod1|auto_generated|divider|op_2~5\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~5\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~7\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~5\,
	combout => \C1|Mod1|auto_generated|divider|op_2~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~7\);

-- Location: LCCOMB_X27_Y13_N10
\C1|Mod1|auto_generated|divider|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~8_combout\ = (\C1|Mod1|auto_generated|divider|op_2~7\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\ & VCC))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~7\ & ((((!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\)))))
-- \C1|Mod1|auto_generated|divider|op_2~9\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\ & !\C1|Mod1|auto_generated|divider|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~7\,
	combout => \C1|Mod1|auto_generated|divider|op_2~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~9\);

-- Location: LCCOMB_X27_Y13_N12
\C1|Mod1|auto_generated|divider|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~10_combout\ = (\C1|Mod1|auto_generated|divider|op_2~9\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~9\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~11\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~9\,
	combout => \C1|Mod1|auto_generated|divider|op_2~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~11\);

-- Location: LCCOMB_X27_Y13_N14
\C1|Mod1|auto_generated|divider|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~12_combout\ = (\C1|Mod1|auto_generated|divider|op_2~11\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\ & VCC))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~11\ & ((((!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\)))))
-- \C1|Mod1|auto_generated|divider|op_2~13\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\ & !\C1|Mod1|auto_generated|divider|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~11\,
	combout => \C1|Mod1|auto_generated|divider|op_2~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~13\);

-- Location: LCCOMB_X27_Y13_N16
\C1|Mod1|auto_generated|divider|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~14_combout\ = (\C1|Mod1|auto_generated|divider|op_2~13\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~13\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~15\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~13\,
	combout => \C1|Mod1|auto_generated|divider|op_2~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~15\);

-- Location: LCCOMB_X27_Y13_N18
\C1|Mod1|auto_generated|divider|op_2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~16_combout\ = (\C1|Mod1|auto_generated|divider|op_2~15\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\ & VCC))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~15\ & ((((!\C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\)))))
-- \C1|Mod1|auto_generated|divider|op_2~17\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\ & !\C1|Mod1|auto_generated|divider|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~15\,
	combout => \C1|Mod1|auto_generated|divider|op_2~16_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~17\);

-- Location: LCCOMB_X27_Y13_N20
\C1|Mod1|auto_generated|divider|op_2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~18_combout\ = (\C1|Mod1|auto_generated|divider|op_2~17\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~17\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~19\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~17\,
	combout => \C1|Mod1|auto_generated|divider|op_2~18_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~19\);

-- Location: LCCOMB_X27_Y13_N22
\C1|Mod1|auto_generated|divider|op_2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~20_combout\ = (\C1|Mod1|auto_generated|divider|op_2~19\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\ & VCC))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~19\ & ((((!\C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\)))))
-- \C1|Mod1|auto_generated|divider|op_2~21\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\ & !\C1|Mod1|auto_generated|divider|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~19\,
	combout => \C1|Mod1|auto_generated|divider|op_2~20_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~21\);

-- Location: LCCOMB_X27_Y13_N24
\C1|Mod1|auto_generated|divider|op_2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~22_combout\ = \C1|Mod1|auto_generated|divider|op_2~21\ $ (((!\C1|Mod1|auto_generated|divider|divider|StageOut[143]~222_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[143]~270_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[143]~222_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[143]~270_combout\,
	cin => \C1|Mod1|auto_generated|divider|op_2~21\,
	combout => \C1|Mod1|auto_generated|divider|op_2~22_combout\);

-- Location: LCCOMB_X27_Y13_N30
\C1|Mod1|auto_generated|divider|remainder[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[11]~11_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[143]~222_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[143]~270_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[143]~222_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[143]~270_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~22_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[11]~11_combout\);

-- Location: LCCOMB_X26_Y13_N26
\C1|Mod1|auto_generated|divider|remainder[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[10]~10_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[142]~269_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[142]~221_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[10]~10_combout\);

-- Location: LCCOMB_X27_Y13_N26
\C1|Mod1|auto_generated|divider|remainder[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[9]~9_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[141]~220_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[141]~268_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[9]~9_combout\);

-- Location: LCCOMB_X28_Y13_N16
\C1|Mod1|auto_generated|divider|remainder[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[8]~8_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~219_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~267_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[8]~8_combout\);

-- Location: LCCOMB_X28_Y13_N10
\C1|Mod1|auto_generated|divider|remainder[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[7]~7_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~266_combout\,
	datac => \C1|Mod1|auto_generated|divider|op_2~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~218_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[7]~7_combout\);

-- Location: LCCOMB_X28_Y13_N14
\C1|Mod1|auto_generated|divider|remainder[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[6]~6_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~217_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~265_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[6]~6_combout\);

-- Location: LCCOMB_X26_Y17_N2
\C1|Mod1|auto_generated|divider|remainder[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[5]~5_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~216_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|op_2~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~264_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[5]~5_combout\);

-- Location: LCCOMB_X24_Y13_N4
\C1|Mod1|auto_generated|divider|remainder[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[4]~4_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~263_combout\,
	datab => \C1|Add0~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~215_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~8_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[4]~4_combout\);

-- Location: LCCOMB_X26_Y13_N4
\C1|Mod1|auto_generated|divider|remainder[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ = (\C1|Add0~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\)))) # (!\C1|Add0~16_combout\ & 
-- (((\C1|Mod1|auto_generated|divider|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~214_combout\,
	datac => \C1|Mod1|auto_generated|divider|op_2~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~262_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[3]~3_combout\);

-- Location: LCCOMB_X23_Y13_N6
\C1|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~6_combout\ = (\C1|drawProcess~19_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ & (!\C1|Add8~5\)) # (!\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ & ((\C1|Add8~5\) # (GND))))) # (!\C1|drawProcess~19_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ & (\C1|Add8~5\ & VCC)) # (!\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ & (!\C1|Add8~5\))))
-- \C1|Add8~7\ = CARRY((\C1|drawProcess~19_combout\ & ((!\C1|Add8~5\) # (!\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\))) # (!\C1|drawProcess~19_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ & !\C1|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~19_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[3]~3_combout\,
	datad => VCC,
	cin => \C1|Add8~5\,
	combout => \C1|Add8~6_combout\,
	cout => \C1|Add8~7\);

-- Location: LCCOMB_X23_Y13_N8
\C1|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~8_combout\ = (\C1|Mod1|auto_generated|divider|remainder[4]~4_combout\ & (\C1|Add8~7\ $ (GND))) # (!\C1|Mod1|auto_generated|divider|remainder[4]~4_combout\ & (!\C1|Add8~7\ & VCC))
-- \C1|Add8~9\ = CARRY((\C1|Mod1|auto_generated|divider|remainder[4]~4_combout\ & !\C1|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[4]~4_combout\,
	datad => VCC,
	cin => \C1|Add8~7\,
	combout => \C1|Add8~8_combout\,
	cout => \C1|Add8~9\);

-- Location: LCCOMB_X23_Y13_N10
\C1|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~10_combout\ = (\C1|Mod1|auto_generated|divider|remainder[5]~5_combout\ & ((\C1|drawProcess~19_combout\ & (!\C1|Add8~9\)) # (!\C1|drawProcess~19_combout\ & (\C1|Add8~9\ & VCC)))) # (!\C1|Mod1|auto_generated|divider|remainder[5]~5_combout\ & 
-- ((\C1|drawProcess~19_combout\ & ((\C1|Add8~9\) # (GND))) # (!\C1|drawProcess~19_combout\ & (!\C1|Add8~9\))))
-- \C1|Add8~11\ = CARRY((\C1|Mod1|auto_generated|divider|remainder[5]~5_combout\ & (\C1|drawProcess~19_combout\ & !\C1|Add8~9\)) # (!\C1|Mod1|auto_generated|divider|remainder[5]~5_combout\ & ((\C1|drawProcess~19_combout\) # (!\C1|Add8~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[5]~5_combout\,
	datab => \C1|drawProcess~19_combout\,
	datad => VCC,
	cin => \C1|Add8~9\,
	combout => \C1|Add8~10_combout\,
	cout => \C1|Add8~11\);

-- Location: LCCOMB_X23_Y13_N12
\C1|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~12_combout\ = (\C1|Mod1|auto_generated|divider|remainder[6]~6_combout\ & (\C1|Add8~11\ $ (GND))) # (!\C1|Mod1|auto_generated|divider|remainder[6]~6_combout\ & (!\C1|Add8~11\ & VCC))
-- \C1|Add8~13\ = CARRY((\C1|Mod1|auto_generated|divider|remainder[6]~6_combout\ & !\C1|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|remainder[6]~6_combout\,
	datad => VCC,
	cin => \C1|Add8~11\,
	combout => \C1|Add8~12_combout\,
	cout => \C1|Add8~13\);

-- Location: LCCOMB_X23_Y13_N14
\C1|Add8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~14_combout\ = (\C1|Mod1|auto_generated|divider|remainder[7]~7_combout\ & (!\C1|Add8~13\)) # (!\C1|Mod1|auto_generated|divider|remainder[7]~7_combout\ & ((\C1|Add8~13\) # (GND)))
-- \C1|Add8~15\ = CARRY((!\C1|Add8~13\) # (!\C1|Mod1|auto_generated|divider|remainder[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|remainder[7]~7_combout\,
	datad => VCC,
	cin => \C1|Add8~13\,
	combout => \C1|Add8~14_combout\,
	cout => \C1|Add8~15\);

-- Location: LCCOMB_X23_Y13_N16
\C1|Add8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~16_combout\ = (\C1|Mod1|auto_generated|divider|remainder[8]~8_combout\ & (\C1|Add8~15\ $ (GND))) # (!\C1|Mod1|auto_generated|divider|remainder[8]~8_combout\ & (!\C1|Add8~15\ & VCC))
-- \C1|Add8~17\ = CARRY((\C1|Mod1|auto_generated|divider|remainder[8]~8_combout\ & !\C1|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[8]~8_combout\,
	datad => VCC,
	cin => \C1|Add8~15\,
	combout => \C1|Add8~16_combout\,
	cout => \C1|Add8~17\);

-- Location: LCCOMB_X23_Y13_N18
\C1|Add8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~18_combout\ = (\C1|Mod1|auto_generated|divider|remainder[9]~9_combout\ & (!\C1|Add8~17\)) # (!\C1|Mod1|auto_generated|divider|remainder[9]~9_combout\ & ((\C1|Add8~17\) # (GND)))
-- \C1|Add8~19\ = CARRY((!\C1|Add8~17\) # (!\C1|Mod1|auto_generated|divider|remainder[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|remainder[9]~9_combout\,
	datad => VCC,
	cin => \C1|Add8~17\,
	combout => \C1|Add8~18_combout\,
	cout => \C1|Add8~19\);

-- Location: LCCOMB_X23_Y13_N20
\C1|Add8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~20_combout\ = (\C1|Mod1|auto_generated|divider|remainder[10]~10_combout\ & (\C1|Add8~19\ $ (GND))) # (!\C1|Mod1|auto_generated|divider|remainder[10]~10_combout\ & (!\C1|Add8~19\ & VCC))
-- \C1|Add8~21\ = CARRY((\C1|Mod1|auto_generated|divider|remainder[10]~10_combout\ & !\C1|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[10]~10_combout\,
	datad => VCC,
	cin => \C1|Add8~19\,
	combout => \C1|Add8~20_combout\,
	cout => \C1|Add8~21\);

-- Location: LCCOMB_X23_Y13_N22
\C1|Add8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~22_combout\ = (\C1|Mod1|auto_generated|divider|remainder[11]~11_combout\ & (!\C1|Add8~21\)) # (!\C1|Mod1|auto_generated|divider|remainder[11]~11_combout\ & ((\C1|Add8~21\) # (GND)))
-- \C1|Add8~23\ = CARRY((!\C1|Add8~21\) # (!\C1|Mod1|auto_generated|divider|remainder[11]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|remainder[11]~11_combout\,
	datad => VCC,
	cin => \C1|Add8~21\,
	combout => \C1|Add8~22_combout\,
	cout => \C1|Add8~23\);

-- Location: LCCOMB_X23_Y13_N24
\C1|Add8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add8~24_combout\ = \C1|Add8~23\ $ (!\C1|Mod1|auto_generated|divider|remainder[11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|Mod1|auto_generated|divider|remainder[11]~11_combout\,
	cin => \C1|Add8~23\,
	combout => \C1|Add8~24_combout\);

-- Location: LCCOMB_X23_Y13_N26
\C1|drawProcess~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~24_combout\ = (!\C1|Add8~6_combout\ & (!\C1|Add8~8_combout\ & (!\C1|Add8~10_combout\ & !\C1|Add8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~6_combout\,
	datab => \C1|Add8~8_combout\,
	datac => \C1|Add8~10_combout\,
	datad => \C1|Add8~12_combout\,
	combout => \C1|drawProcess~24_combout\);

-- Location: LCCOMB_X23_Y13_N28
\C1|drawProcess~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~25_combout\ = (!\C1|Add8~14_combout\ & (!\C1|Add8~18_combout\ & (!\C1|Add8~16_combout\ & !\C1|Add8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~14_combout\,
	datab => \C1|Add8~18_combout\,
	datac => \C1|Add8~16_combout\,
	datad => \C1|Add8~20_combout\,
	combout => \C1|drawProcess~25_combout\);

-- Location: LCCOMB_X23_Y13_N30
\C1|drawProcess~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~26_combout\ = (!\C1|Add8~22_combout\ & (!\C1|Add8~24_combout\ & (\C1|drawProcess~24_combout\ & \C1|drawProcess~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add8~22_combout\,
	datab => \C1|Add8~24_combout\,
	datac => \C1|drawProcess~24_combout\,
	datad => \C1|drawProcess~25_combout\,
	combout => \C1|drawProcess~26_combout\);

-- Location: LCCOMB_X22_Y13_N6
\C1|drawProcess~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|drawProcess~27_combout\ = (\C1|drawProcess~23_combout\ & \C1|drawProcess~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|drawProcess~23_combout\,
	datad => \C1|drawProcess~26_combout\,
	combout => \C1|drawProcess~27_combout\);

-- Location: LCCOMB_X22_Y13_N24
\C1|R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (\C1|drawProcess~4_combout\ & (((\C1|drawProcess~14_combout\) # (\C1|drawProcess~27_combout\)) # (!\C1|drawProcess~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~4_combout\,
	datab => \C1|drawProcess~31_combout\,
	datac => \C1|drawProcess~14_combout\,
	datad => \C1|drawProcess~27_combout\,
	combout => \C1|R~0_combout\);

-- Location: LCCOMB_X20_Y15_N20
\C1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal0~1_combout\ = (!\C1|Add1~16_combout\ & (!\C1|Add1~12_combout\ & (!\C1|Add1~18_combout\ & !\C1|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~16_combout\,
	datab => \C1|Add1~12_combout\,
	datac => \C1|Add1~18_combout\,
	datad => \C1|Add1~14_combout\,
	combout => \C1|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y13_N2
\C1|R[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R[0]~1_combout\ = (\C1|Add1~20_combout\ & ((\C1|Add1~10_combout\) # (!\C1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~20_combout\,
	datac => \C1|Equal0~1_combout\,
	datad => \C1|Add1~10_combout\,
	combout => \C1|R[0]~1_combout\);

-- Location: LCCOMB_X29_Y13_N4
\C1|R[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R[0]~2_combout\ = (\RESET~input_o\ & ((\C1|R[0]~1_combout\) # (!\C1|drawProcess~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|drawProcess~4_combout\,
	datac => \RESET~input_o\,
	datad => \C1|R[0]~1_combout\,
	combout => \C1|R[0]~2_combout\);

-- Location: FF_X22_Y13_N25
\C1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~0_combout\,
	ena => \C1|R[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(0));

-- Location: LCCOMB_X20_Y15_N6
\C1|R~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~5_combout\ = (\C1|drawProcess~4_combout\ & \C1|drawProcess~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|drawProcess~4_combout\,
	datac => \C1|drawProcess~31_combout\,
	combout => \C1|R~5_combout\);

-- Location: LCCOMB_X22_Y14_N16
\C1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Equal0~2_combout\ = (((!\C1|Equal0~0_combout\) # (!\C1|Add1~20_combout\)) # (!\C1|Equal0~1_combout\)) # (!\C1|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|Equal0~1_combout\,
	datac => \C1|Add1~20_combout\,
	datad => \C1|Equal0~0_combout\,
	combout => \C1|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y14_N4
\C1|R~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~3_combout\ = (\C1|drawProcess~4_combout\ & ((\C1|drawProcess~31_combout\ & ((\C1|drawProcess~13_combout\))) # (!\C1|drawProcess~31_combout\ & (!\C1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~31_combout\,
	datab => \C1|drawProcess~4_combout\,
	datac => \C1|Equal0~2_combout\,
	datad => \C1|drawProcess~13_combout\,
	combout => \C1|R~3_combout\);

-- Location: LCCOMB_X22_Y13_N4
\C1|R~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~4_combout\ = (\C1|R~3_combout\ & (((\C1|drawProcess~5_combout\ & \C1|drawProcess~8_combout\)) # (!\C1|drawProcess~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~31_combout\,
	datab => \C1|R~3_combout\,
	datac => \C1|drawProcess~5_combout\,
	datad => \C1|drawProcess~8_combout\,
	combout => \C1|R~4_combout\);

-- Location: LCCOMB_X22_Y13_N26
\C1|R~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~6_combout\ = (\C1|R~4_combout\) # ((\C1|R~5_combout\ & (\C1|drawProcess~23_combout\ & \C1|drawProcess~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~5_combout\,
	datab => \C1|R~4_combout\,
	datac => \C1|drawProcess~23_combout\,
	datad => \C1|drawProcess~26_combout\,
	combout => \C1|R~6_combout\);

-- Location: FF_X22_Y13_N27
\C1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~6_combout\,
	ena => \C1|R[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(1));

-- Location: LCCOMB_X22_Y13_N18
\C1|B~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~0_combout\ = (\C1|Equal0~2_combout\ & (\C1|drawProcess~4_combout\ & ((\C1|drawProcess~26_combout\) # (!\C1|drawProcess~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~2_combout\,
	datab => \C1|drawProcess~31_combout\,
	datac => \C1|drawProcess~26_combout\,
	datad => \C1|drawProcess~4_combout\,
	combout => \C1|B~0_combout\);

-- Location: LCCOMB_X22_Y13_N12
\C1|B~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~1_combout\ = (\C1|B~0_combout\ & (((!\C1|drawProcess~14_combout\ & \C1|drawProcess~23_combout\)) # (!\C1|drawProcess~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|drawProcess~31_combout\,
	datab => \C1|drawProcess~14_combout\,
	datac => \C1|drawProcess~23_combout\,
	datad => \C1|B~0_combout\,
	combout => \C1|B~1_combout\);

-- Location: FF_X22_Y13_N13
\C1|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|B~1_combout\,
	ena => \C1|R[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(0));

-- Location: LCCOMB_X22_Y13_N8
\C1|B~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~2_combout\ = (\C1|Equal0~2_combout\ & (((!\C1|drawProcess~8_combout\) # (!\C1|drawProcess~13_combout\)) # (!\C1|drawProcess~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~2_combout\,
	datab => \C1|drawProcess~5_combout\,
	datac => \C1|drawProcess~13_combout\,
	datad => \C1|drawProcess~8_combout\,
	combout => \C1|B~2_combout\);

-- Location: LCCOMB_X22_Y13_N14
\C1|B~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~3_combout\ = (\C1|R~5_combout\ & (\C1|B~2_combout\ & (\C1|drawProcess~23_combout\ & \C1|drawProcess~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~5_combout\,
	datab => \C1|B~2_combout\,
	datac => \C1|drawProcess~23_combout\,
	datad => \C1|drawProcess~26_combout\,
	combout => \C1|B~3_combout\);

-- Location: FF_X22_Y13_N15
\C1|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|B~3_combout\,
	ena => \C1|R[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(1));

-- Location: LCCOMB_X22_Y13_N10
\C1|G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|G~0_combout\ = (\C1|drawProcess~23_combout\ & (\C1|drawProcess~26_combout\ & !\C1|drawProcess~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|drawProcess~23_combout\,
	datac => \C1|drawProcess~26_combout\,
	datad => \C1|drawProcess~14_combout\,
	combout => \C1|G~0_combout\);

-- Location: LCCOMB_X22_Y13_N16
\C1|G~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|G~1_combout\ = (\C1|drawProcess~4_combout\ & (((\C1|G~0_combout\) # (!\C1|drawProcess~31_combout\)) # (!\C1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~2_combout\,
	datab => \C1|drawProcess~31_combout\,
	datac => \C1|drawProcess~4_combout\,
	datad => \C1|G~0_combout\,
	combout => \C1|G~1_combout\);

-- Location: FF_X22_Y13_N17
\C1|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|G~1_combout\,
	ena => \C1|R[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(0));

-- Location: LCCOMB_X29_Y13_N14
\C1|R~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~7_combout\ = (\C1|drawProcess~4_combout\ & !\C1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|drawProcess~4_combout\,
	datad => \C1|Equal0~2_combout\,
	combout => \C1|R~7_combout\);

-- Location: LCCOMB_X22_Y13_N22
\C1|G~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|G~2_combout\ = (\C1|R~7_combout\) # ((\C1|R~5_combout\ & (!\C1|drawProcess~14_combout\ & \C1|drawProcess~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|R~5_combout\,
	datab => \C1|drawProcess~14_combout\,
	datac => \C1|R~7_combout\,
	datad => \C1|drawProcess~27_combout\,
	combout => \C1|G~2_combout\);

-- Location: FF_X22_Y13_N23
\C1|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|G~2_combout\,
	ena => \C1|R[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|G\(1));

-- Location: IOIBUF_X23_Y29_N8
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\KEY[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


