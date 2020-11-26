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

-- DATE "11/23/2020 20:21:43"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	divisao IS
    PORT (
	Reset : IN std_logic;
	clk : IN std_logic;
	inicio : IN std_logic;
	entA : IN std_logic_vector(7 DOWNTO 0);
	entB : IN std_logic_vector(7 DOWNTO 0);
	pronto : OUT std_logic;
	resto : OUT std_logic_vector(7 DOWNTO 0);
	resultado : OUT std_logic_vector(7 DOWNTO 0)
	);
END divisao;

-- Design Ports Information
-- pronto	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[0]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[1]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[6]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[7]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[1]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[2]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[4]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[5]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[6]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[7]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[5]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[6]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[7]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[7]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[5]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF divisao IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_entA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_resto : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_resultado : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCportMap|pronto~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|registradorB|q[2]~feeder_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \BCportMap|state~8_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \BCportMap|state.S1~regout\ : std_logic;
SIGNAL \BCportMap|cB~combout\ : std_logic;
SIGNAL \BOportMap|registradorB|q[1]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[0]~9\ : std_logic;
SIGNAL \BOportMap|registradorA|q[1]~11\ : std_logic;
SIGNAL \BOportMap|registradorA|q[2]~12_combout\ : std_logic;
SIGNAL \BCportMap|mA~combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[2]~13\ : std_logic;
SIGNAL \BOportMap|registradorA|q[3]~15\ : std_logic;
SIGNAL \BOportMap|registradorA|q[4]~17\ : std_logic;
SIGNAL \BOportMap|registradorA|q[5]~18_combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[5]~19\ : std_logic;
SIGNAL \BOportMap|registradorA|q[6]~21\ : std_logic;
SIGNAL \BOportMap|registradorA|q[7]~22_combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[3]~14_combout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~1_cout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~3_cout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~5_cout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~7_cout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~9_cout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~11_cout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~13_cout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~14_combout\ : std_logic;
SIGNAL \BCportMap|Selector0~0_combout\ : std_logic;
SIGNAL \BCportMap|state.S0~regout\ : std_logic;
SIGNAL \BCportMap|cA~0_combout\ : std_logic;
SIGNAL \BCportMap|state.S2~regout\ : std_logic;
SIGNAL \BCportMap|state~9_combout\ : std_logic;
SIGNAL \BCportMap|state.S3~regout\ : std_logic;
SIGNAL \BCportMap|pronto~1_combout\ : std_logic;
SIGNAL \BCportMap|pronto~1clkctrl_outclk\ : std_logic;
SIGNAL \BCportMap|pronto~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \BOportMap|registradorA|q[0]~8_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[0]~feeder_combout\ : std_logic;
SIGNAL \BCportMap|Selector2~0_combout\ : std_logic;
SIGNAL \BCportMap|cResto~combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[1]~10_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[1]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[2]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[3]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[4]~16_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[4]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[5]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[6]~20_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[6]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[7]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[0]~8_combout\ : std_logic;
SIGNAL \BCportMap|cResultado~1_combout\ : std_logic;
SIGNAL \BCportMap|cResultado~combout\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[0]~9\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[1]~10_combout\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[1]~11\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[2]~12_combout\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[2]~13\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[3]~14_combout\ : std_logic;
SIGNAL \BOportMap|registradorResultado|q[3]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[3]~15\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[4]~16_combout\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[4]~17\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[5]~18_combout\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[5]~19\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[6]~20_combout\ : std_logic;
SIGNAL \BOportMap|registradorResultado|q[6]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[6]~21\ : std_logic;
SIGNAL \BOportMap|registradorContador|q[7]~22_combout\ : std_logic;
SIGNAL \BOportMap|registradorResultado|q[7]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorB|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BOportMap|registradorResto|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BOportMap|registradorContador|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BOportMap|registradorResultado|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BOportMap|registradorA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Reset <= Reset;
ww_clk <= clk;
ww_inicio <= inicio;
ww_entA <= entA;
ww_entB <= entB;
pronto <= ww_pronto;
resto <= ww_resto;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);

\BCportMap|pronto~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \BCportMap|pronto~1_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X14_Y9_N21
\BOportMap|registradorB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorB|q[2]~feeder_combout\,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(2));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(2),
	combout => \entB~combout\(2));

-- Location: LCCOMB_X14_Y9_N20
\BOportMap|registradorB|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorB|q[2]~feeder_combout\ = \entB~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(2),
	combout => \BOportMap|registradorB|q[2]~feeder_combout\);

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inicio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_inicio,
	combout => \inicio~combout\);

-- Location: LCCOMB_X13_Y9_N14
\BCportMap|state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|state~8_combout\ = (!\BCportMap|state.S0~regout\ & \inicio~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \BCportMap|state~8_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G1
\Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: LCFF_X13_Y9_N15
\BCportMap|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \BCportMap|state~8_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S1~regout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(7),
	combout => \entB~combout\(7));

-- Location: LCCOMB_X14_Y9_N24
\BCportMap|cB\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cB~combout\ = (GLOBAL(\BCportMap|pronto~1clkctrl_outclk\) & (\BCportMap|cB~combout\)) # (!GLOBAL(\BCportMap|pronto~1clkctrl_outclk\) & ((\BCportMap|state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|cB~combout\,
	datab => \BCportMap|pronto~1clkctrl_outclk\,
	datad => \BCportMap|state.S1~regout\,
	combout => \BCportMap|cB~combout\);

-- Location: LCFF_X14_Y9_N19
\BOportMap|registradorB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(7),
	sload => VCC,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(6),
	combout => \entB~combout\(6));

-- Location: LCFF_X14_Y9_N17
\BOportMap|registradorB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(6),
	sload => VCC,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(6));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(4),
	combout => \entB~combout\(4));

-- Location: LCFF_X14_Y9_N25
\BOportMap|registradorB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(4),
	sload => VCC,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(4));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(3),
	combout => \entB~combout\(3));

-- Location: LCFF_X14_Y9_N23
\BOportMap|registradorB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(3),
	sload => VCC,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(3));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(1),
	combout => \entB~combout\(1));

-- Location: LCCOMB_X14_Y9_N26
\BOportMap|registradorB|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorB|q[1]~feeder_combout\ = \entB~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(1),
	combout => \BOportMap|registradorB|q[1]~feeder_combout\);

-- Location: LCFF_X14_Y9_N27
\BOportMap|registradorB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorB|q[1]~feeder_combout\,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(1));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(0),
	combout => \entB~combout\(0));

-- Location: LCFF_X14_Y9_N29
\BOportMap|registradorB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(0),
	sload => VCC,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(0));

-- Location: LCCOMB_X15_Y9_N4
\BOportMap|registradorA|q[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[0]~8_combout\ = (\BOportMap|registradorA|q\(0) & ((GND) # (!\BOportMap|registradorB|q\(0)))) # (!\BOportMap|registradorA|q\(0) & (\BOportMap|registradorB|q\(0) $ (GND)))
-- \BOportMap|registradorA|q[0]~9\ = CARRY((\BOportMap|registradorA|q\(0)) # (!\BOportMap|registradorB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(0),
	datab => \BOportMap|registradorB|q\(0),
	datad => VCC,
	combout => \BOportMap|registradorA|q[0]~8_combout\,
	cout => \BOportMap|registradorA|q[0]~9\);

-- Location: LCCOMB_X15_Y9_N6
\BOportMap|registradorA|q[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[1]~10_combout\ = (\BOportMap|registradorA|q\(1) & ((\BOportMap|registradorB|q\(1) & (!\BOportMap|registradorA|q[0]~9\)) # (!\BOportMap|registradorB|q\(1) & (\BOportMap|registradorA|q[0]~9\ & VCC)))) # 
-- (!\BOportMap|registradorA|q\(1) & ((\BOportMap|registradorB|q\(1) & ((\BOportMap|registradorA|q[0]~9\) # (GND))) # (!\BOportMap|registradorB|q\(1) & (!\BOportMap|registradorA|q[0]~9\))))
-- \BOportMap|registradorA|q[1]~11\ = CARRY((\BOportMap|registradorA|q\(1) & (\BOportMap|registradorB|q\(1) & !\BOportMap|registradorA|q[0]~9\)) # (!\BOportMap|registradorA|q\(1) & ((\BOportMap|registradorB|q\(1)) # (!\BOportMap|registradorA|q[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(1),
	datab => \BOportMap|registradorB|q\(1),
	datad => VCC,
	cin => \BOportMap|registradorA|q[0]~9\,
	combout => \BOportMap|registradorA|q[1]~10_combout\,
	cout => \BOportMap|registradorA|q[1]~11\);

-- Location: LCCOMB_X15_Y9_N8
\BOportMap|registradorA|q[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[2]~12_combout\ = ((\BOportMap|registradorB|q\(2) $ (\BOportMap|registradorA|q\(2) $ (\BOportMap|registradorA|q[1]~11\)))) # (GND)
-- \BOportMap|registradorA|q[2]~13\ = CARRY((\BOportMap|registradorB|q\(2) & (\BOportMap|registradorA|q\(2) & !\BOportMap|registradorA|q[1]~11\)) # (!\BOportMap|registradorB|q\(2) & ((\BOportMap|registradorA|q\(2)) # (!\BOportMap|registradorA|q[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorB|q\(2),
	datab => \BOportMap|registradorA|q\(2),
	datad => VCC,
	cin => \BOportMap|registradorA|q[1]~11\,
	combout => \BOportMap|registradorA|q[2]~12_combout\,
	cout => \BOportMap|registradorA|q[2]~13\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(2),
	combout => \entA~combout\(2));

-- Location: LCCOMB_X13_Y9_N26
\BCportMap|mA\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|mA~combout\ = (\BCportMap|state.S2~regout\ & ((\BCportMap|mA~combout\))) # (!\BCportMap|state.S2~regout\ & (\BCportMap|state.S1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S2~regout\,
	datac => \BCportMap|state.S1~regout\,
	datad => \BCportMap|mA~combout\,
	combout => \BCportMap|mA~combout\);

-- Location: LCFF_X15_Y9_N9
\BOportMap|registradorA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[2]~12_combout\,
	sdata => \entA~combout\(2),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(2));

-- Location: LCCOMB_X15_Y9_N10
\BOportMap|registradorA|q[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[3]~14_combout\ = (\BOportMap|registradorA|q\(3) & ((\BOportMap|registradorB|q\(3) & (!\BOportMap|registradorA|q[2]~13\)) # (!\BOportMap|registradorB|q\(3) & (\BOportMap|registradorA|q[2]~13\ & VCC)))) # 
-- (!\BOportMap|registradorA|q\(3) & ((\BOportMap|registradorB|q\(3) & ((\BOportMap|registradorA|q[2]~13\) # (GND))) # (!\BOportMap|registradorB|q\(3) & (!\BOportMap|registradorA|q[2]~13\))))
-- \BOportMap|registradorA|q[3]~15\ = CARRY((\BOportMap|registradorA|q\(3) & (\BOportMap|registradorB|q\(3) & !\BOportMap|registradorA|q[2]~13\)) # (!\BOportMap|registradorA|q\(3) & ((\BOportMap|registradorB|q\(3)) # (!\BOportMap|registradorA|q[2]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(3),
	datab => \BOportMap|registradorB|q\(3),
	datad => VCC,
	cin => \BOportMap|registradorA|q[2]~13\,
	combout => \BOportMap|registradorA|q[3]~14_combout\,
	cout => \BOportMap|registradorA|q[3]~15\);

-- Location: LCCOMB_X15_Y9_N12
\BOportMap|registradorA|q[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[4]~16_combout\ = ((\BOportMap|registradorA|q\(4) $ (\BOportMap|registradorB|q\(4) $ (\BOportMap|registradorA|q[3]~15\)))) # (GND)
-- \BOportMap|registradorA|q[4]~17\ = CARRY((\BOportMap|registradorA|q\(4) & ((!\BOportMap|registradorA|q[3]~15\) # (!\BOportMap|registradorB|q\(4)))) # (!\BOportMap|registradorA|q\(4) & (!\BOportMap|registradorB|q\(4) & !\BOportMap|registradorA|q[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(4),
	datab => \BOportMap|registradorB|q\(4),
	datad => VCC,
	cin => \BOportMap|registradorA|q[3]~15\,
	combout => \BOportMap|registradorA|q[4]~16_combout\,
	cout => \BOportMap|registradorA|q[4]~17\);

-- Location: LCCOMB_X15_Y9_N14
\BOportMap|registradorA|q[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[5]~18_combout\ = (\BOportMap|registradorB|q\(5) & ((\BOportMap|registradorA|q\(5) & (!\BOportMap|registradorA|q[4]~17\)) # (!\BOportMap|registradorA|q\(5) & ((\BOportMap|registradorA|q[4]~17\) # (GND))))) # 
-- (!\BOportMap|registradorB|q\(5) & ((\BOportMap|registradorA|q\(5) & (\BOportMap|registradorA|q[4]~17\ & VCC)) # (!\BOportMap|registradorA|q\(5) & (!\BOportMap|registradorA|q[4]~17\))))
-- \BOportMap|registradorA|q[5]~19\ = CARRY((\BOportMap|registradorB|q\(5) & ((!\BOportMap|registradorA|q[4]~17\) # (!\BOportMap|registradorA|q\(5)))) # (!\BOportMap|registradorB|q\(5) & (!\BOportMap|registradorA|q\(5) & !\BOportMap|registradorA|q[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorB|q\(5),
	datab => \BOportMap|registradorA|q\(5),
	datad => VCC,
	cin => \BOportMap|registradorA|q[4]~17\,
	combout => \BOportMap|registradorA|q[5]~18_combout\,
	cout => \BOportMap|registradorA|q[5]~19\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(5),
	combout => \entA~combout\(5));

-- Location: LCFF_X15_Y9_N15
\BOportMap|registradorA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[5]~18_combout\,
	sdata => \entA~combout\(5),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(5));

-- Location: LCCOMB_X15_Y9_N16
\BOportMap|registradorA|q[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[6]~20_combout\ = ((\BOportMap|registradorA|q\(6) $ (\BOportMap|registradorB|q\(6) $ (\BOportMap|registradorA|q[5]~19\)))) # (GND)
-- \BOportMap|registradorA|q[6]~21\ = CARRY((\BOportMap|registradorA|q\(6) & ((!\BOportMap|registradorA|q[5]~19\) # (!\BOportMap|registradorB|q\(6)))) # (!\BOportMap|registradorA|q\(6) & (!\BOportMap|registradorB|q\(6) & !\BOportMap|registradorA|q[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(6),
	datab => \BOportMap|registradorB|q\(6),
	datad => VCC,
	cin => \BOportMap|registradorA|q[5]~19\,
	combout => \BOportMap|registradorA|q[6]~20_combout\,
	cout => \BOportMap|registradorA|q[6]~21\);

-- Location: LCCOMB_X15_Y9_N18
\BOportMap|registradorA|q[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[7]~22_combout\ = \BOportMap|registradorA|q\(7) $ (\BOportMap|registradorA|q[6]~21\ $ (!\BOportMap|registradorB|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BOportMap|registradorA|q\(7),
	datad => \BOportMap|registradorB|q\(7),
	cin => \BOportMap|registradorA|q[6]~21\,
	combout => \BOportMap|registradorA|q[7]~22_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(7),
	combout => \entA~combout\(7));

-- Location: LCFF_X15_Y9_N19
\BOportMap|registradorA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[7]~22_combout\,
	sdata => \entA~combout\(7),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(7));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entB[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entB(5),
	combout => \entB~combout\(5));

-- Location: LCFF_X14_Y9_N15
\BOportMap|registradorB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \entB~combout\(5),
	sload => VCC,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(5));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(3),
	combout => \entA~combout\(3));

-- Location: LCFF_X15_Y9_N11
\BOportMap|registradorA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[3]~14_combout\,
	sdata => \entA~combout\(3),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(3));

-- Location: LCCOMB_X14_Y9_N4
\BOportMap|comparadorAB|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~1_cout\ = CARRY((!\BOportMap|registradorA|q\(0) & \BOportMap|registradorB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(0),
	datab => \BOportMap|registradorB|q\(0),
	datad => VCC,
	cout => \BOportMap|comparadorAB|LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y9_N6
\BOportMap|comparadorAB|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~3_cout\ = CARRY((\BOportMap|registradorA|q\(1) & ((!\BOportMap|comparadorAB|LessThan0~1_cout\) # (!\BOportMap|registradorB|q\(1)))) # (!\BOportMap|registradorA|q\(1) & (!\BOportMap|registradorB|q\(1) & 
-- !\BOportMap|comparadorAB|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(1),
	datab => \BOportMap|registradorB|q\(1),
	datad => VCC,
	cin => \BOportMap|comparadorAB|LessThan0~1_cout\,
	cout => \BOportMap|comparadorAB|LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y9_N8
\BOportMap|comparadorAB|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~5_cout\ = CARRY((\BOportMap|registradorB|q\(2) & ((!\BOportMap|comparadorAB|LessThan0~3_cout\) # (!\BOportMap|registradorA|q\(2)))) # (!\BOportMap|registradorB|q\(2) & (!\BOportMap|registradorA|q\(2) & 
-- !\BOportMap|comparadorAB|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorB|q\(2),
	datab => \BOportMap|registradorA|q\(2),
	datad => VCC,
	cin => \BOportMap|comparadorAB|LessThan0~3_cout\,
	cout => \BOportMap|comparadorAB|LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y9_N10
\BOportMap|comparadorAB|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~7_cout\ = CARRY((\BOportMap|registradorB|q\(3) & (\BOportMap|registradorA|q\(3) & !\BOportMap|comparadorAB|LessThan0~5_cout\)) # (!\BOportMap|registradorB|q\(3) & ((\BOportMap|registradorA|q\(3)) # 
-- (!\BOportMap|comparadorAB|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorB|q\(3),
	datab => \BOportMap|registradorA|q\(3),
	datad => VCC,
	cin => \BOportMap|comparadorAB|LessThan0~5_cout\,
	cout => \BOportMap|comparadorAB|LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y9_N12
\BOportMap|comparadorAB|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~9_cout\ = CARRY((\BOportMap|registradorA|q\(4) & (\BOportMap|registradorB|q\(4) & !\BOportMap|comparadorAB|LessThan0~7_cout\)) # (!\BOportMap|registradorA|q\(4) & ((\BOportMap|registradorB|q\(4)) # 
-- (!\BOportMap|comparadorAB|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(4),
	datab => \BOportMap|registradorB|q\(4),
	datad => VCC,
	cin => \BOportMap|comparadorAB|LessThan0~7_cout\,
	cout => \BOportMap|comparadorAB|LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y9_N14
\BOportMap|comparadorAB|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~11_cout\ = CARRY((\BOportMap|registradorA|q\(5) & ((!\BOportMap|comparadorAB|LessThan0~9_cout\) # (!\BOportMap|registradorB|q\(5)))) # (!\BOportMap|registradorA|q\(5) & (!\BOportMap|registradorB|q\(5) & 
-- !\BOportMap|comparadorAB|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(5),
	datab => \BOportMap|registradorB|q\(5),
	datad => VCC,
	cin => \BOportMap|comparadorAB|LessThan0~9_cout\,
	cout => \BOportMap|comparadorAB|LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y9_N16
\BOportMap|comparadorAB|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~13_cout\ = CARRY((\BOportMap|registradorA|q\(6) & (\BOportMap|registradorB|q\(6) & !\BOportMap|comparadorAB|LessThan0~11_cout\)) # (!\BOportMap|registradorA|q\(6) & ((\BOportMap|registradorB|q\(6)) # 
-- (!\BOportMap|comparadorAB|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(6),
	datab => \BOportMap|registradorB|q\(6),
	datad => VCC,
	cin => \BOportMap|comparadorAB|LessThan0~11_cout\,
	cout => \BOportMap|comparadorAB|LessThan0~13_cout\);

-- Location: LCCOMB_X14_Y9_N18
\BOportMap|comparadorAB|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~14_combout\ = (\BOportMap|registradorB|q\(7) & ((\BOportMap|comparadorAB|LessThan0~13_cout\) # (!\BOportMap|registradorA|q\(7)))) # (!\BOportMap|registradorB|q\(7) & (\BOportMap|comparadorAB|LessThan0~13_cout\ & 
-- !\BOportMap|registradorA|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorB|q\(7),
	datad => \BOportMap|registradorA|q\(7),
	cin => \BOportMap|comparadorAB|LessThan0~13_cout\,
	combout => \BOportMap|comparadorAB|LessThan0~14_combout\);

-- Location: LCCOMB_X14_Y9_N2
\BCportMap|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|Selector0~0_combout\ = (\BCportMap|state.S2~regout\ & (!\BOportMap|comparadorAB|LessThan0~14_combout\ & ((\inicio~combout\) # (\BCportMap|state.S0~regout\)))) # (!\BCportMap|state.S2~regout\ & ((\inicio~combout\) # 
-- ((\BCportMap|state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S2~regout\,
	datab => \inicio~combout\,
	datac => \BCportMap|state.S0~regout\,
	datad => \BOportMap|comparadorAB|LessThan0~14_combout\,
	combout => \BCportMap|Selector0~0_combout\);

-- Location: LCFF_X14_Y9_N3
\BCportMap|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|Selector0~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S0~regout\);

-- Location: LCCOMB_X15_Y9_N20
\BCportMap|cA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cA~0_combout\ = (!\BCportMap|state.S2~regout\ & \BCportMap|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S2~regout\,
	datad => \BCportMap|state.S0~regout\,
	combout => \BCportMap|cA~0_combout\);

-- Location: LCFF_X14_Y9_N1
\BCportMap|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BCportMap|cA~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S2~regout\);

-- Location: LCCOMB_X14_Y9_N30
\BCportMap|state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|state~9_combout\ = (\BCportMap|state.S2~regout\ & !\BOportMap|comparadorAB|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCportMap|state.S2~regout\,
	datad => \BOportMap|comparadorAB|LessThan0~14_combout\,
	combout => \BCportMap|state~9_combout\);

-- Location: LCFF_X14_Y9_N31
\BCportMap|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|state~9_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S3~regout\);

-- Location: LCCOMB_X14_Y9_N0
\BCportMap|pronto~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|pronto~1_combout\ = (\BCportMap|state.S2~regout\) # (\BCportMap|state.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCportMap|state.S2~regout\,
	datad => \BCportMap|state.S3~regout\,
	combout => \BCportMap|pronto~1_combout\);

-- Location: CLKCTRL_G4
\BCportMap|pronto~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BCportMap|pronto~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BCportMap|pronto~1clkctrl_outclk\);

-- Location: LCCOMB_X13_Y9_N16
\BCportMap|pronto\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|pronto~combout\ = (GLOBAL(\BCportMap|pronto~1clkctrl_outclk\) & ((\BCportMap|pronto~combout\))) # (!GLOBAL(\BCportMap|pronto~1clkctrl_outclk\) & (!\BCportMap|state.S1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S1~regout\,
	datac => \BCportMap|pronto~combout\,
	datad => \BCportMap|pronto~1clkctrl_outclk\,
	combout => \BCportMap|pronto~combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(0),
	combout => \entA~combout\(0));

-- Location: LCFF_X15_Y9_N5
\BOportMap|registradorA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[0]~8_combout\,
	sdata => \entA~combout\(0),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(0));

-- Location: LCCOMB_X17_Y9_N8
\BOportMap|registradorResto|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[0]~feeder_combout\ = \BOportMap|registradorA|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOportMap|registradorA|q\(0),
	combout => \BOportMap|registradorResto|q[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y9_N22
\BCportMap|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|Selector2~0_combout\ = (\BCportMap|state.S2~regout\ & \BOportMap|comparadorAB|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S2~regout\,
	datad => \BOportMap|comparadorAB|LessThan0~14_combout\,
	combout => \BCportMap|Selector2~0_combout\);

-- Location: LCCOMB_X14_Y9_N28
\BCportMap|cResto\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cResto~combout\ = (\BCportMap|state.S3~regout\ & (\BCportMap|cResto~combout\)) # (!\BCportMap|state.S3~regout\ & ((\BCportMap|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S3~regout\,
	datab => \BCportMap|cResto~combout\,
	datad => \BCportMap|Selector2~0_combout\,
	combout => \BCportMap|cResto~combout\);

-- Location: LCFF_X17_Y9_N9
\BOportMap|registradorResto|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[0]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(0));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(1),
	combout => \entA~combout\(1));

-- Location: LCFF_X15_Y9_N7
\BOportMap|registradorA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[1]~10_combout\,
	sdata => \entA~combout\(1),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(1));

-- Location: LCCOMB_X17_Y9_N6
\BOportMap|registradorResto|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[1]~feeder_combout\ = \BOportMap|registradorA|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorA|q\(1),
	combout => \BOportMap|registradorResto|q[1]~feeder_combout\);

-- Location: LCFF_X17_Y9_N7
\BOportMap|registradorResto|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[1]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(1));

-- Location: LCCOMB_X17_Y9_N12
\BOportMap|registradorResto|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[2]~feeder_combout\ = \BOportMap|registradorA|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorA|q\(2),
	combout => \BOportMap|registradorResto|q[2]~feeder_combout\);

-- Location: LCFF_X17_Y9_N13
\BOportMap|registradorResto|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[2]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(2));

-- Location: LCCOMB_X17_Y9_N10
\BOportMap|registradorResto|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[3]~feeder_combout\ = \BOportMap|registradorA|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOportMap|registradorA|q\(3),
	combout => \BOportMap|registradorResto|q[3]~feeder_combout\);

-- Location: LCFF_X17_Y9_N11
\BOportMap|registradorResto|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[3]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(4),
	combout => \entA~combout\(4));

-- Location: LCFF_X15_Y9_N13
\BOportMap|registradorA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[4]~16_combout\,
	sdata => \entA~combout\(4),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(4));

-- Location: LCCOMB_X17_Y9_N4
\BOportMap|registradorResto|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[4]~feeder_combout\ = \BOportMap|registradorA|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOportMap|registradorA|q\(4),
	combout => \BOportMap|registradorResto|q[4]~feeder_combout\);

-- Location: LCFF_X17_Y9_N5
\BOportMap|registradorResto|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[4]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(4));

-- Location: LCCOMB_X17_Y9_N2
\BOportMap|registradorResto|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[5]~feeder_combout\ = \BOportMap|registradorA|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorA|q\(5),
	combout => \BOportMap|registradorResto|q[5]~feeder_combout\);

-- Location: LCFF_X17_Y9_N3
\BOportMap|registradorResto|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[5]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(5));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entA(6),
	combout => \entA~combout\(6));

-- Location: LCFF_X15_Y9_N17
\BOportMap|registradorA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[6]~20_combout\,
	sdata => \entA~combout\(6),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(6));

-- Location: LCCOMB_X17_Y9_N0
\BOportMap|registradorResto|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[6]~feeder_combout\ = \BOportMap|registradorA|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOportMap|registradorA|q\(6),
	combout => \BOportMap|registradorResto|q[6]~feeder_combout\);

-- Location: LCFF_X17_Y9_N1
\BOportMap|registradorResto|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[6]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(6));

-- Location: LCCOMB_X17_Y9_N30
\BOportMap|registradorResto|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[7]~feeder_combout\ = \BOportMap|registradorA|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOportMap|registradorA|q\(7),
	combout => \BOportMap|registradorResto|q[7]~feeder_combout\);

-- Location: LCFF_X17_Y9_N31
\BOportMap|registradorResto|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[7]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(7));

-- Location: LCCOMB_X17_Y9_N14
\BOportMap|registradorContador|q[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorContador|q[0]~8_combout\ = \BOportMap|registradorContador|q\(0) $ (VCC)
-- \BOportMap|registradorContador|q[0]~9\ = CARRY(\BOportMap|registradorContador|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BOportMap|registradorContador|q\(0),
	datad => VCC,
	combout => \BOportMap|registradorContador|q[0]~8_combout\,
	cout => \BOportMap|registradorContador|q[0]~9\);

-- Location: LCFF_X17_Y9_N15
\BOportMap|registradorContador|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorContador|q[0]~8_combout\,
	sclr => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(0));

-- Location: LCCOMB_X13_Y9_N30
\BCportMap|cResultado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cResultado~1_combout\ = (\BCportMap|state.S3~regout\) # (\BCportMap|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|state.S3~regout\,
	datac => \BCportMap|state.S1~regout\,
	combout => \BCportMap|cResultado~1_combout\);

-- Location: LCCOMB_X13_Y9_N28
\BCportMap|cResultado\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cResultado~combout\ = (\BCportMap|cResultado~1_combout\ & (\BCportMap|cResultado~combout\)) # (!\BCportMap|cResultado~1_combout\ & ((\BCportMap|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|cResultado~combout\,
	datab => \BCportMap|cResultado~1_combout\,
	datad => \BCportMap|Selector2~0_combout\,
	combout => \BCportMap|cResultado~combout\);

-- Location: LCFF_X13_Y9_N29
\BOportMap|registradorResultado|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|registradorContador|q\(0),
	sload => VCC,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(0));

-- Location: LCCOMB_X17_Y9_N16
\BOportMap|registradorContador|q[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorContador|q[1]~10_combout\ = (\BOportMap|registradorContador|q\(1) & (!\BOportMap|registradorContador|q[0]~9\)) # (!\BOportMap|registradorContador|q\(1) & ((\BOportMap|registradorContador|q[0]~9\) # (GND)))
-- \BOportMap|registradorContador|q[1]~11\ = CARRY((!\BOportMap|registradorContador|q[0]~9\) # (!\BOportMap|registradorContador|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorContador|q\(1),
	datad => VCC,
	cin => \BOportMap|registradorContador|q[0]~9\,
	combout => \BOportMap|registradorContador|q[1]~10_combout\,
	cout => \BOportMap|registradorContador|q[1]~11\);

-- Location: LCFF_X17_Y9_N17
\BOportMap|registradorContador|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorContador|q[1]~10_combout\,
	sclr => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(1));

-- Location: LCFF_X13_Y9_N13
\BOportMap|registradorResultado|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|registradorContador|q\(1),
	sload => VCC,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(1));

-- Location: LCCOMB_X17_Y9_N18
\BOportMap|registradorContador|q[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorContador|q[2]~12_combout\ = (\BOportMap|registradorContador|q\(2) & (\BOportMap|registradorContador|q[1]~11\ $ (GND))) # (!\BOportMap|registradorContador|q\(2) & (!\BOportMap|registradorContador|q[1]~11\ & VCC))
-- \BOportMap|registradorContador|q[2]~13\ = CARRY((\BOportMap|registradorContador|q\(2) & !\BOportMap|registradorContador|q[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BOportMap|registradorContador|q\(2),
	datad => VCC,
	cin => \BOportMap|registradorContador|q[1]~11\,
	combout => \BOportMap|registradorContador|q[2]~12_combout\,
	cout => \BOportMap|registradorContador|q[2]~13\);

-- Location: LCFF_X17_Y9_N19
\BOportMap|registradorContador|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorContador|q[2]~12_combout\,
	sclr => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(2));

-- Location: LCFF_X13_Y9_N11
\BOportMap|registradorResultado|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|registradorContador|q\(2),
	sload => VCC,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(2));

-- Location: LCCOMB_X17_Y9_N20
\BOportMap|registradorContador|q[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorContador|q[3]~14_combout\ = (\BOportMap|registradorContador|q\(3) & (!\BOportMap|registradorContador|q[2]~13\)) # (!\BOportMap|registradorContador|q\(3) & ((\BOportMap|registradorContador|q[2]~13\) # (GND)))
-- \BOportMap|registradorContador|q[3]~15\ = CARRY((!\BOportMap|registradorContador|q[2]~13\) # (!\BOportMap|registradorContador|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorContador|q\(3),
	datad => VCC,
	cin => \BOportMap|registradorContador|q[2]~13\,
	combout => \BOportMap|registradorContador|q[3]~14_combout\,
	cout => \BOportMap|registradorContador|q[3]~15\);

-- Location: LCFF_X17_Y9_N21
\BOportMap|registradorContador|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorContador|q[3]~14_combout\,
	sclr => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(3));

-- Location: LCCOMB_X13_Y9_N24
\BOportMap|registradorResultado|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResultado|q[3]~feeder_combout\ = \BOportMap|registradorContador|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorContador|q\(3),
	combout => \BOportMap|registradorResultado|q[3]~feeder_combout\);

-- Location: LCFF_X13_Y9_N25
\BOportMap|registradorResultado|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResultado|q[3]~feeder_combout\,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(3));

-- Location: LCCOMB_X17_Y9_N22
\BOportMap|registradorContador|q[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorContador|q[4]~16_combout\ = (\BOportMap|registradorContador|q\(4) & (\BOportMap|registradorContador|q[3]~15\ $ (GND))) # (!\BOportMap|registradorContador|q\(4) & (!\BOportMap|registradorContador|q[3]~15\ & VCC))
-- \BOportMap|registradorContador|q[4]~17\ = CARRY((\BOportMap|registradorContador|q\(4) & !\BOportMap|registradorContador|q[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BOportMap|registradorContador|q\(4),
	datad => VCC,
	cin => \BOportMap|registradorContador|q[3]~15\,
	combout => \BOportMap|registradorContador|q[4]~16_combout\,
	cout => \BOportMap|registradorContador|q[4]~17\);

-- Location: LCFF_X17_Y9_N23
\BOportMap|registradorContador|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorContador|q[4]~16_combout\,
	sclr => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(4));

-- Location: LCFF_X13_Y9_N23
\BOportMap|registradorResultado|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|registradorContador|q\(4),
	sload => VCC,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(4));

-- Location: LCCOMB_X17_Y9_N24
\BOportMap|registradorContador|q[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorContador|q[5]~18_combout\ = (\BOportMap|registradorContador|q\(5) & (!\BOportMap|registradorContador|q[4]~17\)) # (!\BOportMap|registradorContador|q\(5) & ((\BOportMap|registradorContador|q[4]~17\) # (GND)))
-- \BOportMap|registradorContador|q[5]~19\ = CARRY((!\BOportMap|registradorContador|q[4]~17\) # (!\BOportMap|registradorContador|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorContador|q\(5),
	datad => VCC,
	cin => \BOportMap|registradorContador|q[4]~17\,
	combout => \BOportMap|registradorContador|q[5]~18_combout\,
	cout => \BOportMap|registradorContador|q[5]~19\);

-- Location: LCFF_X17_Y9_N25
\BOportMap|registradorContador|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorContador|q[5]~18_combout\,
	sclr => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(5));

-- Location: LCFF_X13_Y9_N19
\BOportMap|registradorResultado|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|registradorContador|q\(5),
	sload => VCC,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(5));

-- Location: LCCOMB_X17_Y9_N26
\BOportMap|registradorContador|q[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorContador|q[6]~20_combout\ = (\BOportMap|registradorContador|q\(6) & (\BOportMap|registradorContador|q[5]~19\ $ (GND))) # (!\BOportMap|registradorContador|q\(6) & (!\BOportMap|registradorContador|q[5]~19\ & VCC))
-- \BOportMap|registradorContador|q[6]~21\ = CARRY((\BOportMap|registradorContador|q\(6) & !\BOportMap|registradorContador|q[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BOportMap|registradorContador|q\(6),
	datad => VCC,
	cin => \BOportMap|registradorContador|q[5]~19\,
	combout => \BOportMap|registradorContador|q[6]~20_combout\,
	cout => \BOportMap|registradorContador|q[6]~21\);

-- Location: LCFF_X17_Y9_N27
\BOportMap|registradorContador|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorContador|q[6]~20_combout\,
	sclr => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(6));

-- Location: LCCOMB_X13_Y9_N20
\BOportMap|registradorResultado|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResultado|q[6]~feeder_combout\ = \BOportMap|registradorContador|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorContador|q\(6),
	combout => \BOportMap|registradorResultado|q[6]~feeder_combout\);

-- Location: LCFF_X13_Y9_N21
\BOportMap|registradorResultado|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResultado|q[6]~feeder_combout\,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(6));

-- Location: LCCOMB_X17_Y9_N28
\BOportMap|registradorContador|q[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorContador|q[7]~22_combout\ = \BOportMap|registradorContador|q[6]~21\ $ (\BOportMap|registradorContador|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorContador|q\(7),
	cin => \BOportMap|registradorContador|q[6]~21\,
	combout => \BOportMap|registradorContador|q[7]~22_combout\);

-- Location: LCFF_X17_Y9_N29
\BOportMap|registradorContador|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorContador|q[7]~22_combout\,
	sclr => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(7));

-- Location: LCCOMB_X13_Y9_N6
\BOportMap|registradorResultado|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResultado|q[7]~feeder_combout\ = \BOportMap|registradorContador|q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorContador|q\(7),
	combout => \BOportMap|registradorResultado|q[7]~feeder_combout\);

-- Location: LCFF_X13_Y9_N7
\BOportMap|registradorResultado|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResultado|q[7]~feeder_combout\,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(7));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pronto~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BCportMap|pronto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResto|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(0));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResto|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResto|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(2));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResto|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(3));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResto|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResto|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(5));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResto|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(6));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResto|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(7));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResultado|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resultado(0));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResultado|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resultado(1));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResultado|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resultado(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResultado|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resultado(3));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResultado|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resultado(4));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResultado|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resultado(5));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResultado|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resultado(6));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BOportMap|registradorResultado|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resultado(7));
END structure;


