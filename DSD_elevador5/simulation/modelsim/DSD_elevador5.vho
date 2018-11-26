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

-- DATE "11/15/2018 22:50:59"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	ES201917EL IS
    PORT (
	reloj : IN std_logic;
	boton_PB : IN std_logic;
	boton_P1 : IN std_logic;
	boton_P2 : IN std_logic;
	boton_P3 : IN std_logic;
	sensor_PB : IN std_logic;
	sensor_P1 : IN std_logic;
	sensor_P2 : IN std_logic;
	sensor_P3 : IN std_logic;
	SUBIR : OUT std_logic;
	BAJAR : OUT std_logic;
	buzzer : OUT std_logic;
	B : INOUT std_logic
	);
END ES201917EL;

-- Design Ports Information
-- sensor_P3	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sensor_P2	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sensor_PB	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sensor_P1	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reloj	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton_P1	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton_P2	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton_PB	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton_P3	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUBIR	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- BAJAR	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- buzzer	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- B	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF ES201917EL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_boton_PB : std_logic;
SIGNAL ww_boton_P1 : std_logic;
SIGNAL ww_boton_P2 : std_logic;
SIGNAL ww_boton_P3 : std_logic;
SIGNAL ww_sensor_PB : std_logic;
SIGNAL ww_sensor_P1 : std_logic;
SIGNAL ww_sensor_P2 : std_logic;
SIGNAL ww_sensor_P3 : std_logic;
SIGNAL ww_SUBIR : std_logic;
SIGNAL ww_BAJAR : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL \reloj~combout\ : std_logic;
SIGNAL \sensor_P1~combout\ : std_logic;
SIGNAL \boton_P1~combout\ : std_logic;
SIGNAL \boton_P3~combout\ : std_logic;
SIGNAL \boton_P2~combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \sensor_PB~combout\ : std_logic;
SIGNAL \boton_PB~combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \sensor_P2~combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \edo_pres.BP2~regout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \edo_pres.SP2~regout\ : std_logic;
SIGNAL \edo_pres.DP2~regout\ : std_logic;
SIGNAL \edo_pres.P2~regout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \edo_pres.SP3~regout\ : std_logic;
SIGNAL \edo_pres.DP3~regout\ : std_logic;
SIGNAL \edo_pres.P3~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \edo_pres.BP1~regout\ : std_logic;
SIGNAL \edo_pres.DP1~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \edo_pres.P1~regout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \edo_pres.BPB~regout\ : std_logic;
SIGNAL \edo_pres.DPB~regout\ : std_logic;
SIGNAL \edo_pres.PB~regout\ : std_logic;
SIGNAL \edo_pres.SP1~regout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Selector14~4_combout\ : std_logic;
SIGNAL \Selector14~5_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \SUBIR$latch~combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \BAJAR$latch~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \B$latch~combout\ : std_logic;
SIGNAL \buzzer~0_combout\ : std_logic;
SIGNAL divi : std_logic_vector(2 DOWNTO 0);
SIGNAL div_b : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_reloj <= reloj;
ww_boton_PB <= boton_PB;
ww_boton_P1 <= boton_P1;
ww_boton_P2 <= boton_P2;
ww_boton_P3 <= boton_P3;
ww_sensor_PB <= sensor_PB;
ww_sensor_P1 <= sensor_P1;
ww_sensor_P2 <= sensor_P2;
ww_sensor_P3 <= sensor_P3;
SUBIR <= ww_SUBIR;
BAJAR <= ww_BAJAR;
buzzer <= ww_buzzer;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reloj~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reloj,
	combout => \reloj~combout\);

-- Location: LC_X2_Y4_N3
\divi[2]\ : maxii_lcell
-- Equation(s):
-- divi(2) = DFFEAS(divi(2) $ ((((div_b(1) & div_b(0))))), GLOBAL(\reloj~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \reloj~combout\,
	dataa => divi(2),
	datac => div_b(1),
	datad => div_b(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => divi(2));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sensor_P1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sensor_P1,
	combout => \sensor_P1~combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\boton_P1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_boton_P1,
	combout => \boton_P1~combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\boton_P3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_boton_P3,
	combout => \boton_P3~combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\boton_P2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_boton_P2,
	combout => \boton_P2~combout\);

-- Location: LC_X5_Y4_N7
\Selector9~0\ : maxii_lcell
-- Equation(s):
-- \Selector9~0_combout\ = (((!\boton_P1~combout\ & !\edo_pres.PB~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \boton_P1~combout\,
	datad => \edo_pres.PB~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~0_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sensor_PB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sensor_PB,
	combout => \sensor_PB~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\boton_PB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_boton_PB,
	combout => \boton_PB~combout\);

-- Location: LC_X5_Y4_N2
\Selector8~0\ : maxii_lcell
-- Equation(s):
-- \Selector8~0_combout\ = (((!\boton_P1~combout\ & !\boton_PB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \boton_P1~combout\,
	datad => \boton_PB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~0_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sensor_P2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sensor_P2,
	combout => \sensor_P2~combout\);

-- Location: LC_X3_Y4_N8
\Selector14~2\ : maxii_lcell
-- Equation(s):
-- \Selector14~2_combout\ = ((\edo_pres.BP2~regout\ & (!\sensor_P2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \edo_pres.BP2~regout\,
	datac => \sensor_P2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~2_combout\);

-- Location: LC_X3_Y4_N0
\edo_pres.BP2\ : maxii_lcell
-- Equation(s):
-- \edo_pres.BP2~regout\ = DFFEAS((\Selector14~2_combout\) # ((\boton_P2~combout\ & (\Selector8~0_combout\ & \edo_pres.P3~regout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \boton_P2~combout\,
	datab => \Selector8~0_combout\,
	datac => \edo_pres.P3~regout\,
	datad => \Selector14~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.BP2~regout\);

-- Location: LC_X4_Y4_N4
\Selector14~1\ : maxii_lcell
-- Equation(s):
-- \Selector14~1_combout\ = (((!\sensor_P2~combout\ & \edo_pres.SP2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sensor_P2~combout\,
	datad => \edo_pres.SP2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~1_combout\);

-- Location: LC_X5_Y4_N5
\Selector9~1\ : maxii_lcell
-- Equation(s):
-- \Selector9~1_combout\ = ((!\boton_PB~combout\ & (\edo_pres.P1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \boton_PB~combout\,
	datac => \edo_pres.P1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~1_combout\);

-- Location: LC_X4_Y4_N8
\edo_pres.SP2\ : maxii_lcell
-- Equation(s):
-- \edo_pres.SP2~regout\ = DFFEAS((\Selector14~1_combout\) # ((\boton_P2~combout\ & ((\Selector9~0_combout\) # (\Selector9~1_combout\)))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \Selector9~0_combout\,
	datab => \boton_P2~combout\,
	datac => \Selector14~1_combout\,
	datad => \Selector9~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.SP2~regout\);

-- Location: LC_X2_Y4_N9
\edo_pres.DP2\ : maxii_lcell
-- Equation(s):
-- \edo_pres.DP2~regout\ = DFFEAS((\sensor_P2~combout\ & (((\edo_pres.BP2~regout\) # (\edo_pres.SP2~regout\)))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \sensor_P2~combout\,
	datac => \edo_pres.BP2~regout\,
	datad => \edo_pres.SP2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.DP2~regout\);

-- Location: LC_X5_Y4_N8
\edo_pres.P2\ : maxii_lcell
-- Equation(s):
-- \edo_pres.P2~regout\ = DFFEAS((\edo_pres.DP2~regout\) # ((\Selector8~0_combout\ & (!\boton_P3~combout\ & \edo_pres.P2~regout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \Selector8~0_combout\,
	datab => \edo_pres.DP2~regout\,
	datac => \boton_P3~combout\,
	datad => \edo_pres.P2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.P2~regout\);

-- Location: LC_X5_Y4_N3
\Selector12~1\ : maxii_lcell
-- Equation(s):
-- \Selector12~1_combout\ = (\boton_P1~combout\ & (!\boton_P2~combout\ & (\edo_pres.P1~regout\))) # (!\boton_P1~combout\ & ((\edo_pres.P2~regout\) # ((!\boton_P2~combout\ & \edo_pres.P1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7530",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \boton_P1~combout\,
	datab => \boton_P2~combout\,
	datac => \edo_pres.P1~regout\,
	datad => \edo_pres.P2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~1_combout\);

-- Location: LC_X4_Y4_N9
\Selector14~0\ : maxii_lcell
-- Equation(s):
-- \Selector14~0_combout\ = (((!\sensor_P2~combout\ & \edo_pres.SP3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sensor_P2~combout\,
	datad => \edo_pres.SP3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~0_combout\);

-- Location: LC_X4_Y4_N0
\Selector12~0\ : maxii_lcell
-- Equation(s):
-- \Selector12~0_combout\ = (\Selector14~0_combout\) # ((!\boton_P2~combout\ & (\boton_P3~combout\ & \Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \boton_P2~combout\,
	datab => \Selector14~0_combout\,
	datac => \boton_P3~combout\,
	datad => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~0_combout\);

-- Location: LC_X4_Y4_N1
\edo_pres.SP3\ : maxii_lcell
-- Equation(s):
-- \edo_pres.SP3~regout\ = DFFEAS((\Selector12~0_combout\) # ((!\boton_PB~combout\ & (\boton_P3~combout\ & \Selector12~1_combout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \boton_PB~combout\,
	datab => \boton_P3~combout\,
	datac => \Selector12~1_combout\,
	datad => \Selector12~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.SP3~regout\);

-- Location: LC_X2_Y4_N0
\edo_pres.DP3\ : maxii_lcell
-- Equation(s):
-- \edo_pres.DP3~regout\ = DFFEAS((((\sensor_P2~combout\ & \edo_pres.SP3~regout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	datac => \sensor_P2~combout\,
	datad => \edo_pres.SP3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.DP3~regout\);

-- Location: LC_X5_Y4_N6
\edo_pres.P3\ : maxii_lcell
-- Equation(s):
-- \edo_pres.P3~regout\ = DFFEAS((\edo_pres.DP3~regout\) # ((\Selector8~0_combout\ & (!\boton_P2~combout\ & \edo_pres.P3~regout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \Selector8~0_combout\,
	datab => \boton_P2~combout\,
	datac => \edo_pres.P3~regout\,
	datad => \edo_pres.DP3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.P3~regout\);

-- Location: LC_X4_Y4_N5
\Selector7~0\ : maxii_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (\boton_P1~combout\ & (!\boton_PB~combout\ & ((\edo_pres.P3~regout\) # (\edo_pres.P2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \boton_P1~combout\,
	datab => \boton_PB~combout\,
	datac => \edo_pres.P3~regout\,
	datad => \edo_pres.P2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X3_Y4_N7
\edo_pres.BP1\ : maxii_lcell
-- Equation(s):
-- \edo_pres.BP1~regout\ = DFFEAS(((\Selector7~0_combout\) # ((!\sensor_P1~combout\ & \edo_pres.BP1~regout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \sensor_P1~combout\,
	datac => \edo_pres.BP1~regout\,
	datad => \Selector7~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.BP1~regout\);

-- Location: LC_X2_Y4_N2
\edo_pres.DP1\ : maxii_lcell
-- Equation(s):
-- \edo_pres.DP1~regout\ = DFFEAS((\sensor_P1~combout\ & (((\edo_pres.SP1~regout\) # (\edo_pres.BP1~regout\)))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \sensor_P1~combout\,
	datac => \edo_pres.SP1~regout\,
	datad => \edo_pres.BP1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.DP1~regout\);

-- Location: LC_X5_Y4_N9
\Selector5~0\ : maxii_lcell
-- Equation(s):
-- \Selector5~0_combout\ = ((!\boton_P2~combout\ & (\edo_pres.P1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \boton_P2~combout\,
	datac => \edo_pres.P1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~0_combout\);

-- Location: LC_X5_Y4_N4
\edo_pres.P1\ : maxii_lcell
-- Equation(s):
-- \edo_pres.P1~regout\ = DFFEAS((\edo_pres.DP1~regout\) # ((!\boton_P3~combout\ & (!\boton_PB~combout\ & \Selector5~0_combout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \boton_P3~combout\,
	datab => \boton_PB~combout\,
	datac => \edo_pres.DP1~regout\,
	datad => \Selector5~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.P1~regout\);

-- Location: LC_X4_Y4_N7
\Selector4~2\ : maxii_lcell
-- Equation(s):
-- \Selector4~2_combout\ = (\boton_PB~combout\ & ((\edo_pres.P1~regout\) # ((\edo_pres.P3~regout\) # (\edo_pres.P2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \boton_PB~combout\,
	datab => \edo_pres.P1~regout\,
	datac => \edo_pres.P3~regout\,
	datad => \edo_pres.P2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~2_combout\);

-- Location: LC_X3_Y4_N9
\edo_pres.BPB\ : maxii_lcell
-- Equation(s):
-- \edo_pres.BPB~regout\ = DFFEAS(((\Selector4~2_combout\) # ((!\sensor_PB~combout\ & \edo_pres.BPB~regout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \sensor_PB~combout\,
	datab => \edo_pres.BPB~regout\,
	datad => \Selector4~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.BPB~regout\);

-- Location: LC_X2_Y4_N4
\edo_pres.DPB\ : maxii_lcell
-- Equation(s):
-- \edo_pres.DPB~regout\ = DFFEAS((((\edo_pres.BPB~regout\ & \sensor_PB~combout\))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	datac => \edo_pres.BPB~regout\,
	datad => \sensor_PB~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.DPB~regout\);

-- Location: LC_X5_Y4_N1
\edo_pres.PB\ : maxii_lcell
-- Equation(s):
-- \edo_pres.PB~regout\ = DFFEAS((!\edo_pres.DPB~regout\ & ((\boton_P3~combout\) # ((\boton_P2~combout\) # (!\Selector9~0_combout\)))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ef",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \boton_P3~combout\,
	datab => \boton_P2~combout\,
	datac => \Selector9~0_combout\,
	datad => \edo_pres.DPB~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.PB~regout\);

-- Location: LC_X4_Y4_N6
\edo_pres.SP1\ : maxii_lcell
-- Equation(s):
-- \edo_pres.SP1~regout\ = DFFEAS((\sensor_P1~combout\ & (((\boton_P1~combout\ & !\edo_pres.PB~regout\)))) # (!\sensor_P1~combout\ & ((\edo_pres.SP1~regout\) # ((\boton_P1~combout\ & !\edo_pres.PB~regout\)))), GLOBAL(divi(2)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => divi(2),
	dataa => \sensor_P1~combout\,
	datab => \edo_pres.SP1~regout\,
	datac => \boton_P1~combout\,
	datad => \edo_pres.PB~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \edo_pres.SP1~regout\);

-- Location: LC_X2_Y4_N5
\WideOr13~0\ : maxii_lcell
-- Equation(s):
-- \WideOr13~0_combout\ = (\edo_pres.DPB~regout\) # ((\edo_pres.DP1~regout\) # ((\edo_pres.DP3~regout\) # (\edo_pres.DP2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \edo_pres.DPB~regout\,
	datab => \edo_pres.DP1~regout\,
	datac => \edo_pres.DP3~regout\,
	datad => \edo_pres.DP2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr13~0_combout\);

-- Location: LC_X3_Y4_N4
\Selector14~3\ : maxii_lcell
-- Equation(s):
-- \Selector14~3_combout\ = (\WideOr13~0_combout\) # ((\Selector14~1_combout\) # ((\Selector14~0_combout\) # (\Selector14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~0_combout\,
	datab => \Selector14~1_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~3_combout\);

-- Location: LC_X3_Y4_N5
\Selector14~4\ : maxii_lcell
-- Equation(s):
-- \Selector14~4_combout\ = ((\Selector14~3_combout\) # ((\edo_pres.BPB~regout\ & !\sensor_PB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \edo_pres.BPB~regout\,
	datac => \sensor_PB~combout\,
	datad => \Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~4_combout\);

-- Location: LC_X3_Y4_N6
\Selector14~5\ : maxii_lcell
-- Equation(s):
-- \Selector14~5_combout\ = (\Selector14~4_combout\) # ((!\sensor_P1~combout\ & ((\edo_pres.SP1~regout\) # (\edo_pres.BP1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \edo_pres.SP1~regout\,
	datab => \sensor_P1~combout\,
	datac => \edo_pres.BP1~regout\,
	datad => \Selector14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~5_combout\);

-- Location: LC_X4_Y4_N2
\WideOr0~0\ : maxii_lcell
-- Equation(s):
-- \WideOr0~0_combout\ = ((!\edo_pres.SP3~regout\ & (!\edo_pres.SP1~regout\ & !\edo_pres.SP2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \edo_pres.SP3~regout\,
	datac => \edo_pres.SP1~regout\,
	datad => \edo_pres.SP2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~0_combout\);

-- Location: LC_X4_Y4_N3
\SUBIR$latch\ : maxii_lcell
-- Equation(s):
-- \SUBIR$latch~combout\ = ((GLOBAL(\Selector14~5_combout\) & ((!\WideOr0~0_combout\))) # (!GLOBAL(\Selector14~5_combout\) & (\SUBIR$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0afa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SUBIR$latch~combout\,
	datac => \Selector14~5_combout\,
	datad => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SUBIR$latch~combout\);

-- Location: LC_X3_Y4_N1
\WideOr0~1\ : maxii_lcell
-- Equation(s):
-- \WideOr0~1_combout\ = ((!\edo_pres.BP1~regout\ & (!\edo_pres.BP2~regout\ & !\edo_pres.BPB~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \edo_pres.BP1~regout\,
	datac => \edo_pres.BP2~regout\,
	datad => \edo_pres.BPB~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~1_combout\);

-- Location: LC_X3_Y4_N2
\BAJAR$latch\ : maxii_lcell
-- Equation(s):
-- \BAJAR$latch~combout\ = ((GLOBAL(\Selector14~5_combout\) & ((!\WideOr0~1_combout\))) # (!GLOBAL(\Selector14~5_combout\) & (\BAJAR$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \BAJAR$latch~combout\,
	datac => \Selector14~5_combout\,
	datad => \WideOr0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BAJAR$latch~combout\);

-- Location: LC_X3_Y4_N3
WideOr0 : maxii_lcell
-- Equation(s):
-- \WideOr0~combout\ = (\edo_pres.SP3~regout\) # ((\edo_pres.SP2~regout\) # ((\edo_pres.SP1~regout\) # (!\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \edo_pres.SP3~regout\,
	datab => \edo_pres.SP2~regout\,
	datac => \WideOr0~1_combout\,
	datad => \edo_pres.SP1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~combout\);

-- Location: LC_X2_Y4_N6
\B$latch\ : maxii_lcell
-- Equation(s):
-- \B$latch~combout\ = ((\WideOr0~combout\ & (\B$latch~combout\)) # (!\WideOr0~combout\ & ((\WideOr13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~combout\,
	datac => \B$latch~combout\,
	datad => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B$latch~combout\);

-- Location: LC_X2_Y4_N1
\div_b[0]\ : maxii_lcell
-- Equation(s):
-- div_b(0) = DFFEAS((((!div_b(0)))), GLOBAL(\reloj~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \reloj~combout\,
	datad => div_b(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_b(0));

-- Location: LC_X2_Y4_N7
\div_b[1]\ : maxii_lcell
-- Equation(s):
-- div_b(1) = DFFEAS(((div_b(1) $ (div_b(0)))), GLOBAL(\reloj~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \reloj~combout\,
	datac => div_b(1),
	datad => div_b(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => div_b(1));

-- Location: LC_X2_Y4_N8
\buzzer~0\ : maxii_lcell
-- Equation(s):
-- \buzzer~0_combout\ = (((\B$latch~combout\ & div_b(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \B$latch~combout\,
	datad => div_b(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \buzzer~0_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sensor_P3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sensor_P3);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SUBIR~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \SUBIR$latch~combout\,
	oe => VCC,
	padio => ww_SUBIR);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BAJAR~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \BAJAR$latch~combout\,
	oe => VCC,
	padio => ww_BAJAR);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\buzzer~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \buzzer~0_combout\,
	oe => VCC,
	padio => ww_buzzer);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \B$latch~combout\,
	oe => VCC,
	padio => B);
END structure;


