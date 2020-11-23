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

-- DATE "11/23/2020 19:51:40"

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
	entA : IN std_logic_vector(3 DOWNTO 0);
	entB : IN std_logic_vector(3 DOWNTO 0);
	pronto : OUT std_logic;
	resto : OUT std_logic_vector(3 DOWNTO 0);
	resultado : OUT std_logic_vector(3 DOWNTO 0)
	);
END divisao;

-- Design Ports Information
-- pronto	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[0]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[2]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[3]	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[0]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[1]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[2]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[3]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_resto : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_resultado : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCportMap|pronto~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|comparadorAB|LessThan0~2_combout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \BOportMap|registradorB|q[1]~feeder_combout\ : std_logic;
SIGNAL \BCportMap|state~8_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \BCportMap|state.S1~regout\ : std_logic;
SIGNAL \BCportMap|cB~combout\ : std_logic;
SIGNAL \BOportMap|registradorB|q[0]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[0]~4_combout\ : std_logic;
SIGNAL \BCportMap|mA~combout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~1_combout\ : std_logic;
SIGNAL \BOportMap|registradorB|q[3]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorB|q[2]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[0]~5\ : std_logic;
SIGNAL \BOportMap|registradorA|q[1]~7\ : std_logic;
SIGNAL \BOportMap|registradorA|q[2]~9\ : std_logic;
SIGNAL \BOportMap|registradorA|q[3]~10_combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[2]~8_combout\ : std_logic;
SIGNAL \BOportMap|comparadorAB|LessThan0~0_combout\ : std_logic;
SIGNAL \BCportMap|Selector2~0_combout\ : std_logic;
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
SIGNAL \BCportMap|cResto~combout\ : std_logic;
SIGNAL \BOportMap|registradorA|q[1]~6_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[2]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorResto|q[3]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|muxContador|y[0]~0_combout\ : std_logic;
SIGNAL \BOportMap|registradorResultado|q[0]~feeder_combout\ : std_logic;
SIGNAL \BCportMap|cResultado~1_combout\ : std_logic;
SIGNAL \BCportMap|cResultado~combout\ : std_logic;
SIGNAL \BOportMap|muxContador|y[1]~1_combout\ : std_logic;
SIGNAL \BOportMap|registradorResultado|q[1]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|muxContador|y[2]~2_combout\ : std_logic;
SIGNAL \BOportMap|registradorResultado|q[2]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|somaContador|Add0~0_combout\ : std_logic;
SIGNAL \BOportMap|muxContador|y[3]~3_combout\ : std_logic;
SIGNAL \BOportMap|registradorResultado|q[3]~feeder_combout\ : std_logic;
SIGNAL \BOportMap|registradorB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|registradorResto|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|registradorContador|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|registradorResultado|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOportMap|registradorA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entB~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \entA~combout\ : std_logic_vector(3 DOWNTO 0);

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

-- Location: LCCOMB_X19_Y6_N30
\BOportMap|comparadorAB|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~2_combout\ = (\BOportMap|registradorB|q\(2) & (\BOportMap|registradorA|q\(2) & (\BOportMap|registradorB|q\(3) $ (!\BOportMap|registradorA|q\(3))))) # (!\BOportMap|registradorB|q\(2) & (!\BOportMap|registradorA|q\(2) & 
-- (\BOportMap|registradorB|q\(3) $ (!\BOportMap|registradorA|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorB|q\(2),
	datab => \BOportMap|registradorA|q\(2),
	datac => \BOportMap|registradorB|q\(3),
	datad => \BOportMap|registradorA|q\(3),
	combout => \BOportMap|comparadorAB|LessThan0~2_combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y6_N8
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

-- Location: LCCOMB_X19_Y6_N12
\BCportMap|state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|state~8_combout\ = (\inicio~combout\ & !\BCportMap|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inicio~combout\,
	datad => \BCportMap|state.S0~regout\,
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

-- Location: LCFF_X19_Y6_N13
\BCportMap|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \BCportMap|state~8_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S1~regout\);

-- Location: LCCOMB_X19_Y6_N18
\BCportMap|cB\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cB~combout\ = (GLOBAL(\BCportMap|pronto~1clkctrl_outclk\) & (\BCportMap|cB~combout\)) # (!GLOBAL(\BCportMap|pronto~1clkctrl_outclk\) & ((\BCportMap|state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|cB~combout\,
	datac => \BCportMap|pronto~1clkctrl_outclk\,
	datad => \BCportMap|state.S1~regout\,
	combout => \BCportMap|cB~combout\);

-- Location: LCFF_X19_Y6_N9
\BOportMap|registradorB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorB|q[1]~feeder_combout\,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(1));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y6_N16
\BOportMap|registradorB|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorB|q[0]~feeder_combout\ = \entB~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(0),
	combout => \BOportMap|registradorB|q[0]~feeder_combout\);

-- Location: LCFF_X19_Y6_N17
\BOportMap|registradorB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorB|q[0]~feeder_combout\,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(0));

-- Location: LCCOMB_X18_Y6_N12
\BOportMap|registradorA|q[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[0]~4_combout\ = (\BOportMap|registradorA|q\(0) & ((GND) # (!\BOportMap|registradorB|q\(0)))) # (!\BOportMap|registradorA|q\(0) & (\BOportMap|registradorB|q\(0) $ (GND)))
-- \BOportMap|registradorA|q[0]~5\ = CARRY((\BOportMap|registradorA|q\(0)) # (!\BOportMap|registradorB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(0),
	datab => \BOportMap|registradorB|q\(0),
	datad => VCC,
	combout => \BOportMap|registradorA|q[0]~4_combout\,
	cout => \BOportMap|registradorA|q[0]~5\);

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y6_N10
\BCportMap|mA\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|mA~combout\ = (\BCportMap|state.S2~regout\ & (\BCportMap|mA~combout\)) # (!\BCportMap|state.S2~regout\ & ((\BCportMap|state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCportMap|mA~combout\,
	datac => \BCportMap|state.S2~regout\,
	datad => \BCportMap|state.S1~regout\,
	combout => \BCportMap|mA~combout\);

-- Location: LCFF_X18_Y6_N13
\BOportMap|registradorA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[0]~4_combout\,
	sdata => \entA~combout\(0),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(0));

-- Location: LCCOMB_X19_Y6_N6
\BOportMap|comparadorAB|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~1_combout\ = (\BOportMap|registradorA|q\(1) & (\BOportMap|registradorB|q\(1) & (\BOportMap|registradorB|q\(0) & !\BOportMap|registradorA|q\(0)))) # (!\BOportMap|registradorA|q\(1) & ((\BOportMap|registradorB|q\(1)) # 
-- ((\BOportMap|registradorB|q\(0) & !\BOportMap|registradorA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(1),
	datab => \BOportMap|registradorB|q\(1),
	datac => \BOportMap|registradorB|q\(0),
	datad => \BOportMap|registradorA|q\(0),
	combout => \BOportMap|comparadorAB|LessThan0~1_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y6_N20
\BOportMap|registradorB|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorB|q[3]~feeder_combout\ = \entB~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entB~combout\(3),
	combout => \BOportMap|registradorB|q[3]~feeder_combout\);

-- Location: LCFF_X19_Y6_N21
\BOportMap|registradorB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorB|q[3]~feeder_combout\,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(3));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y6_N24
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

-- Location: LCFF_X19_Y6_N25
\BOportMap|registradorB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorB|q[2]~feeder_combout\,
	ena => \BCportMap|cB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorB|q\(2));

-- Location: LCCOMB_X18_Y6_N14
\BOportMap|registradorA|q[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[1]~6_combout\ = (\BOportMap|registradorA|q\(1) & ((\BOportMap|registradorB|q\(1) & (!\BOportMap|registradorA|q[0]~5\)) # (!\BOportMap|registradorB|q\(1) & (\BOportMap|registradorA|q[0]~5\ & VCC)))) # 
-- (!\BOportMap|registradorA|q\(1) & ((\BOportMap|registradorB|q\(1) & ((\BOportMap|registradorA|q[0]~5\) # (GND))) # (!\BOportMap|registradorB|q\(1) & (!\BOportMap|registradorA|q[0]~5\))))
-- \BOportMap|registradorA|q[1]~7\ = CARRY((\BOportMap|registradorA|q\(1) & (\BOportMap|registradorB|q\(1) & !\BOportMap|registradorA|q[0]~5\)) # (!\BOportMap|registradorA|q\(1) & ((\BOportMap|registradorB|q\(1)) # (!\BOportMap|registradorA|q[0]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(1),
	datab => \BOportMap|registradorB|q\(1),
	datad => VCC,
	cin => \BOportMap|registradorA|q[0]~5\,
	combout => \BOportMap|registradorA|q[1]~6_combout\,
	cout => \BOportMap|registradorA|q[1]~7\);

-- Location: LCCOMB_X18_Y6_N16
\BOportMap|registradorA|q[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[2]~8_combout\ = ((\BOportMap|registradorA|q\(2) $ (\BOportMap|registradorB|q\(2) $ (\BOportMap|registradorA|q[1]~7\)))) # (GND)
-- \BOportMap|registradorA|q[2]~9\ = CARRY((\BOportMap|registradorA|q\(2) & ((!\BOportMap|registradorA|q[1]~7\) # (!\BOportMap|registradorB|q\(2)))) # (!\BOportMap|registradorA|q\(2) & (!\BOportMap|registradorB|q\(2) & !\BOportMap|registradorA|q[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorA|q\(2),
	datab => \BOportMap|registradorB|q\(2),
	datad => VCC,
	cin => \BOportMap|registradorA|q[1]~7\,
	combout => \BOportMap|registradorA|q[2]~8_combout\,
	cout => \BOportMap|registradorA|q[2]~9\);

-- Location: LCCOMB_X18_Y6_N18
\BOportMap|registradorA|q[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorA|q[3]~10_combout\ = \BOportMap|registradorA|q\(3) $ (\BOportMap|registradorA|q[2]~9\ $ (!\BOportMap|registradorB|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BOportMap|registradorA|q\(3),
	datad => \BOportMap|registradorB|q\(3),
	cin => \BOportMap|registradorA|q[2]~9\,
	combout => \BOportMap|registradorA|q[3]~10_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X18_Y6_N19
\BOportMap|registradorA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[3]~10_combout\,
	sdata => \entA~combout\(3),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X18_Y6_N17
\BOportMap|registradorA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[2]~8_combout\,
	sdata => \entA~combout\(2),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(2));

-- Location: LCCOMB_X19_Y6_N14
\BOportMap|comparadorAB|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|comparadorAB|LessThan0~0_combout\ = (\BOportMap|registradorA|q\(3) & (\BOportMap|registradorB|q\(2) & (\BOportMap|registradorB|q\(3) & !\BOportMap|registradorA|q\(2)))) # (!\BOportMap|registradorA|q\(3) & ((\BOportMap|registradorB|q\(3)) # 
-- ((\BOportMap|registradorB|q\(2) & !\BOportMap|registradorA|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorB|q\(2),
	datab => \BOportMap|registradorA|q\(3),
	datac => \BOportMap|registradorB|q\(3),
	datad => \BOportMap|registradorA|q\(2),
	combout => \BOportMap|comparadorAB|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y6_N22
\BCportMap|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|Selector2~0_combout\ = (\BCportMap|state.S2~regout\ & ((\BOportMap|comparadorAB|LessThan0~0_combout\) # ((\BOportMap|comparadorAB|LessThan0~2_combout\ & \BOportMap|comparadorAB|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|comparadorAB|LessThan0~2_combout\,
	datab => \BCportMap|state.S2~regout\,
	datac => \BOportMap|comparadorAB|LessThan0~1_combout\,
	datad => \BOportMap|comparadorAB|LessThan0~0_combout\,
	combout => \BCportMap|Selector2~0_combout\);

-- Location: LCCOMB_X20_Y6_N28
\BCportMap|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|Selector0~0_combout\ = (!\BCportMap|Selector2~0_combout\ & ((\inicio~combout\) # (\BCportMap|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inicio~combout\,
	datac => \BCportMap|state.S0~regout\,
	datad => \BCportMap|Selector2~0_combout\,
	combout => \BCportMap|Selector0~0_combout\);

-- Location: LCFF_X20_Y6_N29
\BCportMap|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|Selector0~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S0~regout\);

-- Location: LCCOMB_X20_Y6_N16
\BCportMap|cA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cA~0_combout\ = (!\BCportMap|state.S2~regout\ & \BCportMap|state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S2~regout\,
	datad => \BCportMap|state.S0~regout\,
	combout => \BCportMap|cA~0_combout\);

-- Location: LCFF_X20_Y6_N15
\BCportMap|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BCportMap|cA~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S2~regout\);

-- Location: LCCOMB_X20_Y6_N30
\BCportMap|state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|state~9_combout\ = (\BCportMap|state.S2~regout\ & (!\BOportMap|comparadorAB|LessThan0~0_combout\ & ((!\BOportMap|comparadorAB|LessThan0~1_combout\) # (!\BOportMap|comparadorAB|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|comparadorAB|LessThan0~2_combout\,
	datab => \BOportMap|comparadorAB|LessThan0~1_combout\,
	datac => \BCportMap|state.S2~regout\,
	datad => \BOportMap|comparadorAB|LessThan0~0_combout\,
	combout => \BCportMap|state~9_combout\);

-- Location: LCFF_X20_Y6_N31
\BCportMap|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BCportMap|state~9_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BCportMap|state.S3~regout\);

-- Location: LCCOMB_X20_Y6_N10
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

-- Location: LCCOMB_X19_Y6_N26
\BCportMap|pronto\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|pronto~combout\ = (GLOBAL(\BCportMap|pronto~1clkctrl_outclk\) & (\BCportMap|pronto~combout\)) # (!GLOBAL(\BCportMap|pronto~1clkctrl_outclk\) & ((!\BCportMap|state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|pronto~combout\,
	datac => \BCportMap|pronto~1clkctrl_outclk\,
	datad => \BCportMap|state.S1~regout\,
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

-- Location: LCCOMB_X20_Y6_N24
\BCportMap|cResto\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cResto~combout\ = (\BCportMap|state.S3~regout\ & (\BCportMap|cResto~combout\)) # (!\BCportMap|state.S3~regout\ & ((\BCportMap|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|state.S3~regout\,
	datac => \BCportMap|cResto~combout\,
	datad => \BCportMap|Selector2~0_combout\,
	combout => \BCportMap|cResto~combout\);

-- Location: LCFF_X20_Y6_N17
\BOportMap|registradorResto|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|registradorA|q\(0),
	sload => VCC,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(0));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X18_Y6_N15
\BOportMap|registradorA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorA|q[1]~6_combout\,
	sdata => \entA~combout\(1),
	sload => \BCportMap|mA~combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorA|q\(1));

-- Location: LCFF_X20_Y6_N13
\BOportMap|registradorResto|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \BOportMap|registradorA|q\(1),
	sload => VCC,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(1));

-- Location: LCCOMB_X20_Y6_N18
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

-- Location: LCFF_X20_Y6_N19
\BOportMap|registradorResto|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[2]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(2));

-- Location: LCCOMB_X20_Y6_N20
\BOportMap|registradorResto|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResto|q[3]~feeder_combout\ = \BOportMap|registradorA|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorA|q\(3),
	combout => \BOportMap|registradorResto|q[3]~feeder_combout\);

-- Location: LCFF_X20_Y6_N21
\BOportMap|registradorResto|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResto|q[3]~feeder_combout\,
	ena => \BCportMap|cResto~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResto|q\(3));

-- Location: LCCOMB_X18_Y6_N0
\BOportMap|muxContador|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|muxContador|y[0]~0_combout\ = (!\BCportMap|mA~combout\ & !\BOportMap|registradorContador|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|mA~combout\,
	datac => \BOportMap|registradorContador|q\(0),
	combout => \BOportMap|muxContador|y[0]~0_combout\);

-- Location: LCFF_X18_Y6_N1
\BOportMap|registradorContador|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|muxContador|y[0]~0_combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(0));

-- Location: LCCOMB_X18_Y6_N20
\BOportMap|registradorResultado|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResultado|q[0]~feeder_combout\ = \BOportMap|registradorContador|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorContador|q\(0),
	combout => \BOportMap|registradorResultado|q[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y6_N8
\BCportMap|cResultado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cResultado~1_combout\ = (\BCportMap|state.S3~regout\) # (\BCportMap|state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCportMap|state.S3~regout\,
	datad => \BCportMap|state.S1~regout\,
	combout => \BCportMap|cResultado~1_combout\);

-- Location: LCCOMB_X20_Y6_N26
\BCportMap|cResultado\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCportMap|cResultado~combout\ = (\BCportMap|cResultado~1_combout\ & (\BCportMap|cResultado~combout\)) # (!\BCportMap|cResultado~1_combout\ & ((\BCportMap|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|cResultado~combout\,
	datac => \BCportMap|cResultado~1_combout\,
	datad => \BCportMap|Selector2~0_combout\,
	combout => \BCportMap|cResultado~combout\);

-- Location: LCFF_X18_Y6_N21
\BOportMap|registradorResultado|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResultado|q[0]~feeder_combout\,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(0));

-- Location: LCCOMB_X18_Y6_N2
\BOportMap|muxContador|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|muxContador|y[1]~1_combout\ = (!\BCportMap|mA~combout\ & (\BOportMap|registradorContador|q\(1) $ (\BOportMap|registradorContador|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|mA~combout\,
	datac => \BOportMap|registradorContador|q\(1),
	datad => \BOportMap|registradorContador|q\(0),
	combout => \BOportMap|muxContador|y[1]~1_combout\);

-- Location: LCFF_X18_Y6_N3
\BOportMap|registradorContador|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|muxContador|y[1]~1_combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(1));

-- Location: LCCOMB_X18_Y6_N22
\BOportMap|registradorResultado|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResultado|q[1]~feeder_combout\ = \BOportMap|registradorContador|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOportMap|registradorContador|q\(1),
	combout => \BOportMap|registradorResultado|q[1]~feeder_combout\);

-- Location: LCFF_X18_Y6_N23
\BOportMap|registradorResultado|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResultado|q[1]~feeder_combout\,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(1));

-- Location: LCCOMB_X18_Y6_N24
\BOportMap|muxContador|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|muxContador|y[2]~2_combout\ = (!\BCportMap|mA~combout\ & (\BOportMap|registradorContador|q\(2) $ (((\BOportMap|registradorContador|q\(1) & \BOportMap|registradorContador|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorContador|q\(1),
	datab => \BCportMap|mA~combout\,
	datac => \BOportMap|registradorContador|q\(2),
	datad => \BOportMap|registradorContador|q\(0),
	combout => \BOportMap|muxContador|y[2]~2_combout\);

-- Location: LCFF_X18_Y6_N25
\BOportMap|registradorContador|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|muxContador|y[2]~2_combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(2));

-- Location: LCCOMB_X18_Y6_N28
\BOportMap|registradorResultado|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|registradorResultado|q[2]~feeder_combout\ = \BOportMap|registradorContador|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BOportMap|registradorContador|q\(2),
	combout => \BOportMap|registradorResultado|q[2]~feeder_combout\);

-- Location: LCFF_X18_Y6_N29
\BOportMap|registradorResultado|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResultado|q[2]~feeder_combout\,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(2));

-- Location: LCCOMB_X18_Y6_N8
\BOportMap|somaContador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|somaContador|Add0~0_combout\ = \BOportMap|registradorContador|q\(3) $ (((\BOportMap|registradorContador|q\(0) & (\BOportMap|registradorContador|q\(2) & \BOportMap|registradorContador|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOportMap|registradorContador|q\(3),
	datab => \BOportMap|registradorContador|q\(0),
	datac => \BOportMap|registradorContador|q\(2),
	datad => \BOportMap|registradorContador|q\(1),
	combout => \BOportMap|somaContador|Add0~0_combout\);

-- Location: LCCOMB_X18_Y6_N10
\BOportMap|muxContador|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BOportMap|muxContador|y[3]~3_combout\ = (!\BCportMap|mA~combout\ & \BOportMap|somaContador|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCportMap|mA~combout\,
	datac => \BOportMap|somaContador|Add0~0_combout\,
	combout => \BOportMap|muxContador|y[3]~3_combout\);

-- Location: LCFF_X18_Y6_N11
\BOportMap|registradorContador|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|muxContador|y[3]~3_combout\,
	ena => \BCportMap|cA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorContador|q\(3));

-- Location: LCCOMB_X18_Y6_N26
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

-- Location: LCFF_X18_Y6_N27
\BOportMap|registradorResultado|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \BOportMap|registradorResultado|q[3]~feeder_combout\,
	ena => \BCportMap|cResultado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BOportMap|registradorResultado|q\(3));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


