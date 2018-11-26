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

-- DATE "09/29/2018 10:36:35"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	matrix IS
    PORT (
	ck : IN std_logic;
	rst : IN std_logic;
	Q : INOUT std_logic_vector(6 DOWNTO 0);
	rs : OUT std_logic;
	rw : OUT std_logic;
	REN : OUT std_logic_vector(7 DOWNTO 0)
	);
END matrix;

-- Design Ports Information
-- ck	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rw	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REN[0]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REN[1]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REN[2]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REN[3]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REN[4]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REN[5]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REN[6]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- REN[7]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[0]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[2]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[3]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[4]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[5]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[6]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF matrix IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_REN : std_logic_vector(7 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Q[0]~5\ : std_logic;
SIGNAL \Q[0]~5COUT1_35\ : std_logic;
SIGNAL \Q[1]~reg0_regout\ : std_logic;
SIGNAL \Q[1]~1\ : std_logic;
SIGNAL \Q[1]~1COUT1_37\ : std_logic;
SIGNAL \Q[2]~reg0_regout\ : std_logic;
SIGNAL \Q[2]~9\ : std_logic;
SIGNAL \Q[2]~9COUT1_39\ : std_logic;
SIGNAL \Q[3]~reg0_regout\ : std_logic;
SIGNAL \Q[3]~11\ : std_logic;
SIGNAL \Q[4]~reg0_regout\ : std_logic;
SIGNAL \Q[4]~7\ : std_logic;
SIGNAL \Q[4]~7COUT1_41\ : std_logic;
SIGNAL \Q[5]~reg0_regout\ : std_logic;
SIGNAL \Q[5]~13\ : std_logic;
SIGNAL \Q[5]~13COUT1_43\ : std_logic;
SIGNAL \Q[6]~reg0_regout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \Q[0]~reg0_regout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rst <= rst;
rs <= ww_rs;
rw <= ww_rw;
REN <= ww_REN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ck~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ck,
	combout => \ck~combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X4_Y4_N1
\Q[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[0]~reg0_regout\ = DFFEAS(((!\Q[0]~reg0_regout\)), GLOBAL(\ck~combout\), VCC, , , , , \contador~0_combout\, )
-- \Q[0]~5\ = CARRY(((\Q[0]~reg0_regout\)))
-- \Q[0]~5COUT1_35\ = CARRY(((\Q[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	datab => \Q[0]~reg0_regout\,
	aclr => GND,
	sclr => \contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[0]~reg0_regout\,
	cout0 => \Q[0]~5\,
	cout1 => \Q[0]~5COUT1_35\);

-- Location: LC_X4_Y4_N2
\Q[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[1]~reg0_regout\ = DFFEAS((\Q[1]~reg0_regout\ $ ((\Q[0]~5\))), GLOBAL(\ck~combout\), VCC, , , , , \contador~0_combout\, )
-- \Q[1]~1\ = CARRY(((!\Q[0]~5\) # (!\Q[1]~reg0_regout\)))
-- \Q[1]~1COUT1_37\ = CARRY(((!\Q[0]~5COUT1_35\) # (!\Q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	datab => \Q[1]~reg0_regout\,
	aclr => GND,
	sclr => \contador~0_combout\,
	cin0 => \Q[0]~5\,
	cin1 => \Q[0]~5COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[1]~reg0_regout\,
	cout0 => \Q[1]~1\,
	cout1 => \Q[1]~1COUT1_37\);

-- Location: LC_X4_Y4_N3
\Q[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[2]~reg0_regout\ = DFFEAS(\Q[2]~reg0_regout\ $ ((((!\Q[1]~1\)))), GLOBAL(\ck~combout\), VCC, , , , , \contador~0_combout\, )
-- \Q[2]~9\ = CARRY((\Q[2]~reg0_regout\ & ((!\Q[1]~1\))))
-- \Q[2]~9COUT1_39\ = CARRY((\Q[2]~reg0_regout\ & ((!\Q[1]~1COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	dataa => \Q[2]~reg0_regout\,
	aclr => GND,
	sclr => \contador~0_combout\,
	cin0 => \Q[1]~1\,
	cin1 => \Q[1]~1COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[2]~reg0_regout\,
	cout0 => \Q[2]~9\,
	cout1 => \Q[2]~9COUT1_39\);

-- Location: LC_X4_Y4_N4
\Q[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[3]~reg0_regout\ = DFFEAS(\Q[3]~reg0_regout\ $ ((((\Q[2]~9\)))), GLOBAL(\ck~combout\), VCC, , , , , \contador~0_combout\, )
-- \Q[3]~11\ = CARRY(((!\Q[2]~9COUT1_39\)) # (!\Q[3]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	dataa => \Q[3]~reg0_regout\,
	aclr => GND,
	sclr => \contador~0_combout\,
	cin0 => \Q[2]~9\,
	cin1 => \Q[2]~9COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[3]~reg0_regout\,
	cout => \Q[3]~11\);

-- Location: LC_X4_Y4_N5
\Q[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[4]~reg0_regout\ = DFFEAS(\Q[4]~reg0_regout\ $ ((((!\Q[3]~11\)))), GLOBAL(\ck~combout\), VCC, , , , , \contador~0_combout\, )
-- \Q[4]~7\ = CARRY((\Q[4]~reg0_regout\ & ((!\Q[3]~11\))))
-- \Q[4]~7COUT1_41\ = CARRY((\Q[4]~reg0_regout\ & ((!\Q[3]~11\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	dataa => \Q[4]~reg0_regout\,
	aclr => GND,
	sclr => \contador~0_combout\,
	cin => \Q[3]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[4]~reg0_regout\,
	cout0 => \Q[4]~7\,
	cout1 => \Q[4]~7COUT1_41\);

-- Location: LC_X4_Y4_N6
\Q[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[5]~reg0_regout\ = DFFEAS((\Q[5]~reg0_regout\ $ (((!\Q[3]~11\ & \Q[4]~7\) # (\Q[3]~11\ & \Q[4]~7COUT1_41\)))), GLOBAL(\ck~combout\), VCC, , , , , \contador~0_combout\, )
-- \Q[5]~13\ = CARRY(((!\Q[4]~7\) # (!\Q[5]~reg0_regout\)))
-- \Q[5]~13COUT1_43\ = CARRY(((!\Q[4]~7COUT1_41\) # (!\Q[5]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	datab => \Q[5]~reg0_regout\,
	aclr => GND,
	sclr => \contador~0_combout\,
	cin => \Q[3]~11\,
	cin0 => \Q[4]~7\,
	cin1 => \Q[4]~7COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[5]~reg0_regout\,
	cout0 => \Q[5]~13\,
	cout1 => \Q[5]~13COUT1_43\);

-- Location: LC_X4_Y4_N7
\Q[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[6]~reg0_regout\ = DFFEAS(\Q[6]~reg0_regout\ $ ((((!(!\Q[3]~11\ & \Q[5]~13\) # (\Q[3]~11\ & \Q[5]~13COUT1_43\))))), GLOBAL(\ck~combout\), VCC, , , , , \contador~0_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	dataa => \Q[6]~reg0_regout\,
	aclr => GND,
	sclr => \contador~0_combout\,
	cin => \Q[3]~11\,
	cin0 => \Q[5]~13\,
	cin1 => \Q[5]~13COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[6]~reg0_regout\);

-- Location: LC_X4_Y4_N0
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = ((\Q[6]~reg0_regout\ & (!\Q[4]~reg0_regout\ & !\Q[5]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q[6]~reg0_regout\,
	datac => \Q[4]~reg0_regout\,
	datad => \Q[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X4_Y4_N8
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = ((!\Q[1]~reg0_regout\ & (!\Q[2]~reg0_regout\ & !\Q[0]~reg0_regout\)))

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
	datab => \Q[1]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X4_Y4_N9
\contador~0\ : maxii_lcell
-- Equation(s):
-- \contador~0_combout\ = (\rst~combout\) # ((!\Q[3]~reg0_regout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Q[3]~reg0_regout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \contador~0_combout\);

-- Location: LC_X4_Y3_N9
\Mux7~8\ : maxii_lcell
-- Equation(s):
-- \Mux7~8_combout\ = (\Q[4]~reg0_regout\) # ((\Q[0]~reg0_regout\ & (\Q[1]~reg0_regout\ & \Q[2]~reg0_regout\)) # (!\Q[0]~reg0_regout\ & ((!\Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecdd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Q[1]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~8_combout\);

-- Location: LC_X4_Y3_N8
\Mux7~7\ : maxii_lcell
-- Equation(s):
-- \Mux7~7_combout\ = (\Q[0]~reg0_regout\ & (\Q[1]~reg0_regout\ & ((\Q[2]~reg0_regout\) # (!\Q[4]~reg0_regout\)))) # (!\Q[0]~reg0_regout\ & (\Q[1]~reg0_regout\ $ (((!\Q[2]~reg0_regout\) # (!\Q[4]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e125",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Q[1]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~7_combout\);

-- Location: LC_X4_Y3_N4
\Mux7~6\ : maxii_lcell
-- Equation(s):
-- \Mux7~6_combout\ = ((\Q[3]~reg0_regout\ & (\Mux7~8_combout\)) # (!\Q[3]~reg0_regout\ & ((\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~8_combout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~6_combout\);

-- Location: LC_X4_Y3_N3
\Mux7~12\ : maxii_lcell
-- Equation(s):
-- \Mux7~12_combout\ = (\Q[0]~reg0_regout\ & (!\Q[4]~reg0_regout\ & (!\Q[3]~reg0_regout\))) # (!\Q[0]~reg0_regout\ & (((!\Q[4]~reg0_regout\ & !\Q[3]~reg0_regout\)) # (!\Q[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0357",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~12_combout\);

-- Location: LC_X4_Y3_N0
\Mux7~13\ : maxii_lcell
-- Equation(s):
-- \Mux7~13_combout\ = (\Q[0]~reg0_regout\ & ((\Q[2]~reg0_regout\ & ((\Q[1]~reg0_regout\) # (\Mux7~12_combout\))) # (!\Q[2]~reg0_regout\ & (\Q[1]~reg0_regout\ & \Mux7~12_combout\)))) # (!\Q[0]~reg0_regout\ & (\Mux7~12_combout\ & (\Q[2]~reg0_regout\ $ 
-- (!\Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e980",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[2]~reg0_regout\,
	datac => \Q[1]~reg0_regout\,
	datad => \Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~13_combout\);

-- Location: LC_X4_Y3_N5
\Mux7~11\ : maxii_lcell
-- Equation(s):
-- \Mux7~11_combout\ = (!\Q[6]~reg0_regout\ & ((\Q[5]~reg0_regout\ & (\Mux7~6_combout\)) # (!\Q[5]~reg0_regout\ & ((\Mux7~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Q[6]~reg0_regout\,
	datac => \Mux7~13_combout\,
	datad => \Q[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~11_combout\);

-- Location: LC_X4_Y3_N7
\Mux6~1\ : maxii_lcell
-- Equation(s):
-- \Mux6~1_combout\ = (\Q[0]~reg0_regout\ & ((\Q[1]~reg0_regout\ & (!\Q[4]~reg0_regout\)) # (!\Q[1]~reg0_regout\ & ((\Q[2]~reg0_regout\))))) # (!\Q[0]~reg0_regout\ & ((\Q[4]~reg0_regout\ & (\Q[1]~reg0_regout\)) # (!\Q[4]~reg0_regout\ & 
-- ((\Q[2]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Q[1]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1_combout\);

-- Location: LC_X4_Y3_N1
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\Q[0]~reg0_regout\ & (!\Q[1]~reg0_regout\ & (\Q[4]~reg0_regout\ $ (!\Q[2]~reg0_regout\)))) # (!\Q[0]~reg0_regout\ & (\Q[4]~reg0_regout\ & (\Q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4842",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Q[1]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X4_Y3_N6
\Mux6~2\ : maxii_lcell
-- Equation(s):
-- \Mux6~2_combout\ = ((\Mux6~1_combout\ & (!\Q[3]~reg0_regout\)) # (!\Mux6~1_combout\ & (\Q[3]~reg0_regout\ & \Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

-- Location: LC_X4_Y3_N2
\Mux6~3\ : maxii_lcell
-- Equation(s):
-- \Mux6~3_combout\ = (!\Q[6]~reg0_regout\ & ((\Mux6~2_combout\ & ((!\Mux6~0_combout\))) # (!\Mux6~2_combout\ & (\Q[5]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1032",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Q[6]~reg0_regout\,
	datac => \Q[5]~reg0_regout\,
	datad => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~3_combout\);

-- Location: LC_X3_Y3_N5
\Mux5~4\ : maxii_lcell
-- Equation(s):
-- \Mux5~4_combout\ = (\Q[1]~reg0_regout\ & (!\Q[5]~reg0_regout\)) # (!\Q[1]~reg0_regout\ & (((\Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7722",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[5]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~4_combout\);

-- Location: LC_X3_Y3_N7
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\Q[1]~reg0_regout\ & (((\Q[5]~reg0_regout\ & \Q[0]~reg0_regout\)) # (!\Q[2]~reg0_regout\))) # (!\Q[1]~reg0_regout\ & ((\Q[5]~reg0_regout\ & (!\Q[0]~reg0_regout\)) # (!\Q[5]~reg0_regout\ & ((\Q[2]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "95ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[5]~reg0_regout\,
	datac => \Q[0]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X3_Y3_N4
\Mux5~2\ : maxii_lcell
-- Equation(s):
-- \Mux5~2_combout\ = (!\Q[1]~reg0_regout\ & (!\Q[5]~reg0_regout\ & (!\Q[0]~reg0_regout\ & !\Q[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[5]~reg0_regout\,
	datac => \Q[0]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2_combout\);

-- Location: LC_X3_Y3_N9
\Mux5~1\ : maxii_lcell
-- Equation(s):
-- \Mux5~1_combout\ = (\Q[1]~reg0_regout\ & (\Q[5]~reg0_regout\ $ (((\Q[0]~reg0_regout\ & !\Q[2]~reg0_regout\))))) # (!\Q[1]~reg0_regout\ & ((\Q[5]~reg0_regout\) # ((!\Q[0]~reg0_regout\ & \Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[5]~reg0_regout\,
	datac => \Q[0]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~1_combout\);

-- Location: LC_X3_Y3_N2
\Mux5~3\ : maxii_lcell
-- Equation(s):
-- \Mux5~3_combout\ = (\Q[4]~reg0_regout\ & (\Q[3]~reg0_regout\)) # (!\Q[4]~reg0_regout\ & ((\Q[3]~reg0_regout\ & ((\Mux5~1_combout\))) # (!\Q[3]~reg0_regout\ & (!\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd89",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[4]~reg0_regout\,
	datab => \Q[3]~reg0_regout\,
	datac => \Mux5~2_combout\,
	datad => \Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3_combout\);

-- Location: LC_X3_Y3_N8
\Mux5~5\ : maxii_lcell
-- Equation(s):
-- \Mux5~5_combout\ = (\Q[4]~reg0_regout\ & ((\Mux5~3_combout\ & (\Mux5~4_combout\)) # (!\Mux5~3_combout\ & ((\Mux5~0_combout\))))) # (!\Q[4]~reg0_regout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Mux5~0_combout\,
	datad => \Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~5_combout\);

-- Location: LC_X3_Y3_N6
\Mux5~6\ : maxii_lcell
-- Equation(s):
-- \Mux5~6_combout\ = (((!\Q[6]~reg0_regout\ & \Mux5~5_combout\)))

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
	datac => \Q[6]~reg0_regout\,
	datad => \Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~6_combout\);

-- Location: LC_X4_Y2_N3
\Mux4~4\ : maxii_lcell
-- Equation(s):
-- \Mux4~4_combout\ = (\Q[2]~reg0_regout\ & (!\Q[1]~reg0_regout\ & ((!\Q[3]~reg0_regout\)))) # (!\Q[2]~reg0_regout\ & (\Q[0]~reg0_regout\ & ((!\Q[3]~reg0_regout\) # (!\Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "045c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[0]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~4_combout\);

-- Location: LC_X3_Y2_N0
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\Q[3]~reg0_regout\ & ((\Q[2]~reg0_regout\ & ((!\Q[1]~reg0_regout\))) # (!\Q[2]~reg0_regout\ & (!\Q[0]~reg0_regout\ & \Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[2]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X4_Y2_N4
\Mux4~1\ : maxii_lcell
-- Equation(s):
-- \Mux4~1_combout\ = (\Q[3]~reg0_regout\ & (((!\Q[1]~reg0_regout\ & !\Q[0]~reg0_regout\)) # (!\Q[2]~reg0_regout\))) # (!\Q[3]~reg0_regout\ & (\Q[2]~reg0_regout\ $ (((\Q[1]~reg0_regout\ & \Q[0]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[0]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

-- Location: LC_X4_Y2_N9
\Mux4~2\ : maxii_lcell
-- Equation(s):
-- \Mux4~2_combout\ = ((\Q[2]~reg0_regout\ $ (\Q[1]~reg0_regout\)) # (!\Q[3]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q[2]~reg0_regout\,
	datac => \Q[1]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2_combout\);

-- Location: LC_X4_Y2_N1
\Mux4~3\ : maxii_lcell
-- Equation(s):
-- \Mux4~3_combout\ = (\Q[4]~reg0_regout\ & (((\Q[5]~reg0_regout\)) # (!\Mux4~1_combout\))) # (!\Q[4]~reg0_regout\ & (((!\Q[5]~reg0_regout\ & \Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c7c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Q[5]~reg0_regout\,
	datad => \Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~3_combout\);

-- Location: LC_X3_Y2_N1
\Mux4~5\ : maxii_lcell
-- Equation(s):
-- \Mux4~5_combout\ = (\Q[5]~reg0_regout\ & ((\Mux4~3_combout\ & (!\Mux4~4_combout\)) # (!\Mux4~3_combout\ & ((!\Mux4~0_combout\))))) # (!\Q[5]~reg0_regout\ & (((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Q[5]~reg0_regout\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~5_combout\);

-- Location: LC_X3_Y2_N4
\Mux4~6\ : maxii_lcell
-- Equation(s):
-- \Mux4~6_combout\ = (!\Q[6]~reg0_regout\ & (((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[6]~reg0_regout\,
	datad => \Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~6_combout\);

-- Location: LC_X4_Y2_N5
\Mux3~1\ : maxii_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (\Q[1]~reg0_regout\ & (((!\Q[2]~reg0_regout\)))) # (!\Q[1]~reg0_regout\ & ((\Q[0]~reg0_regout\ & (!\Q[2]~reg0_regout\)) # (!\Q[0]~reg0_regout\ & ((\Q[2]~reg0_regout\) # (\Q[3]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f1e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[0]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: LC_X4_Y2_N6
\Mux3~2\ : maxii_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (\Q[4]~reg0_regout\ & (((\Q[5]~reg0_regout\)) # (!\Mux3~1_combout\))) # (!\Q[4]~reg0_regout\ & (((!\Q[5]~reg0_regout\ & \Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c7c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Q[5]~reg0_regout\,
	datad => \Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X4_Y2_N7
\Mux3~3\ : maxii_lcell
-- Equation(s):
-- \Mux3~3_combout\ = (\Q[1]~reg0_regout\ & (!\Q[0]~reg0_regout\ & (\Q[2]~reg0_regout\ $ (\Q[3]~reg0_regout\)))) # (!\Q[1]~reg0_regout\ & (\Q[0]~reg0_regout\ & (\Q[2]~reg0_regout\ & !\Q[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0260",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[0]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: LC_X4_Y2_N2
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\Q[1]~reg0_regout\ & (!\Q[0]~reg0_regout\ & (\Q[2]~reg0_regout\ $ (!\Q[3]~reg0_regout\)))) # (!\Q[1]~reg0_regout\ & (\Q[0]~reg0_regout\ & (\Q[2]~reg0_regout\ & \Q[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \Q[0]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X4_Y2_N8
\Mux3~4\ : maxii_lcell
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~2_combout\ & (((!\Q[5]~reg0_regout\)) # (!\Mux3~3_combout\))) # (!\Mux3~2_combout\ & (((\Q[5]~reg0_regout\ & !\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a7a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux3~3_combout\,
	datac => \Q[5]~reg0_regout\,
	datad => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4_combout\);

-- Location: LC_X4_Y2_N0
\Mux3~5\ : maxii_lcell
-- Equation(s):
-- \Mux3~5_combout\ = (((!\Q[6]~reg0_regout\ & \Mux3~4_combout\)))

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
	datac => \Q[6]~reg0_regout\,
	datad => \Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~5_combout\);

-- Location: LC_X3_Y2_N6
\Mux2~2\ : maxii_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (\Q[4]~reg0_regout\ & ((\Q[1]~reg0_regout\ & ((\Q[2]~reg0_regout\) # (!\Q[0]~reg0_regout\))) # (!\Q[1]~reg0_regout\ & ((!\Q[2]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X3_Y2_N9
\Mux2~1\ : maxii_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (\Q[0]~reg0_regout\ & ((\Q[2]~reg0_regout\ & ((\Q[4]~reg0_regout\))) # (!\Q[2]~reg0_regout\ & (\Q[1]~reg0_regout\)))) # (!\Q[0]~reg0_regout\ & ((\Q[1]~reg0_regout\ & ((\Q[4]~reg0_regout\))) # (!\Q[1]~reg0_regout\ & 
-- (\Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc18",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X3_Y2_N5
\Mux2~3\ : maxii_lcell
-- Equation(s):
-- \Mux2~3_combout\ = (\Q[5]~reg0_regout\ & (((\Q[3]~reg0_regout\)))) # (!\Q[5]~reg0_regout\ & ((\Q[3]~reg0_regout\ & ((\Mux2~1_combout\))) # (!\Q[3]~reg0_regout\ & (!\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1c1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Q[5]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X3_Y2_N7
\Mux2~4\ : maxii_lcell
-- Equation(s):
-- \Mux2~4_combout\ = (\Q[4]~reg0_regout\ & (\Q[0]~reg0_regout\ & (\Q[1]~reg0_regout\ & !\Q[2]~reg0_regout\))) # (!\Q[4]~reg0_regout\ & (\Q[0]~reg0_regout\ $ ((\Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0866",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~4_combout\);

-- Location: LC_X3_Y2_N8
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\Q[4]~reg0_regout\ & ((\Q[0]~reg0_regout\ & (!\Q[1]~reg0_regout\)) # (!\Q[0]~reg0_regout\ & (\Q[1]~reg0_regout\ & \Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X3_Y2_N3
\Mux2~5\ : maxii_lcell
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~3_combout\ & (((!\Mux2~4_combout\)) # (!\Q[5]~reg0_regout\))) # (!\Mux2~3_combout\ & (\Q[5]~reg0_regout\ & ((!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a6e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Q[5]~reg0_regout\,
	datac => \Mux2~4_combout\,
	datad => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~5_combout\);

-- Location: LC_X3_Y2_N2
\Mux2~6\ : maxii_lcell
-- Equation(s):
-- \Mux2~6_combout\ = (!\Q[6]~reg0_regout\ & (((\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[6]~reg0_regout\,
	datad => \Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~6_combout\);

-- Location: LC_X3_Y4_N7
\Mux1~1\ : maxii_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (!\Q[3]~reg0_regout\ & ((\Q[0]~reg0_regout\ & (\Q[1]~reg0_regout\ & !\Q[2]~reg0_regout\)) # (!\Q[0]~reg0_regout\ & (!\Q[1]~reg0_regout\ & \Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0018",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X3_Y4_N8
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\Q[2]~reg0_regout\ & ((\Q[1]~reg0_regout\) # (\Q[4]~reg0_regout\ $ (!\Q[3]~reg0_regout\)))) # (!\Q[2]~reg0_regout\ & ((\Q[4]~reg0_regout\ $ (!\Q[3]~reg0_regout\)) # (!\Q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "edb7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_regout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Q[1]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X3_Y4_N6
\Mux1~2\ : maxii_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (\Q[5]~reg0_regout\ & (((\Mux1~0_combout\)))) # (!\Q[5]~reg0_regout\ & (!\Q[4]~reg0_regout\ & (\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[5]~reg0_regout\,
	datab => \Q[4]~reg0_regout\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X3_Y4_N5
\Mux1~3\ : maxii_lcell
-- Equation(s):
-- \Mux1~3_combout\ = (!\Q[6]~reg0_regout\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[6]~reg0_regout\,
	datac => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: LC_X3_Y4_N9
\Mux0~2\ : maxii_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\Q[0]~reg0_regout\ & (((!\Q[2]~reg0_regout\ & \Q[3]~reg0_regout\)) # (!\Q[1]~reg0_regout\))) # (!\Q[0]~reg0_regout\ & ((\Q[1]~reg0_regout\) # ((\Q[2]~reg0_regout\ & \Q[3]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X3_Y4_N4
\Mux0~3\ : maxii_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (\Q[5]~reg0_regout\ $ (((\Q[4]~reg0_regout\ & !\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q[4]~reg0_regout\,
	datac => \Q[5]~reg0_regout\,
	datad => \Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X3_Y4_N1
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\Q[1]~reg0_regout\ & (\Q[0]~reg0_regout\ & (!\Q[2]~reg0_regout\ & !\Q[3]~reg0_regout\))) # (!\Q[1]~reg0_regout\ & (\Q[2]~reg0_regout\ & ((\Q[3]~reg0_regout\) # (!\Q[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3018",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X3_Y4_N2
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = ((\Q[4]~reg0_regout\ & ((\Mux0~0_combout\))) # (!\Q[4]~reg0_regout\ & (\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q[4]~reg0_regout\,
	datac => \Mux1~1_combout\,
	datad => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X3_Y4_N3
\Mux0~4\ : maxii_lcell
-- Equation(s):
-- \Mux0~4_combout\ = (!\Q[6]~reg0_regout\ & ((\Mux0~3_combout\ & ((!\Mux0~1_combout\))) # (!\Mux0~3_combout\ & (!\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0151",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[6]~reg0_regout\,
	datab => \Mux0~2_combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~4_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_rs);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rw~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_rw);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\REN[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~11_combout\,
	oe => VCC,
	padio => ww_REN(0));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\REN[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~3_combout\,
	oe => VCC,
	padio => ww_REN(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\REN[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~6_combout\,
	oe => VCC,
	padio => ww_REN(2));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\REN[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~6_combout\,
	oe => VCC,
	padio => ww_REN(3));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\REN[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~5_combout\,
	oe => VCC,
	padio => ww_REN(4));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\REN[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~6_combout\,
	oe => VCC,
	padio => ww_REN(5));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\REN[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~3_combout\,
	oe => VCC,
	padio => ww_REN(6));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\REN[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~4_combout\,
	oe => VCC,
	padio => ww_REN(7));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[0]~reg0_regout\,
	oe => VCC,
	padio => Q(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[1]~reg0_regout\,
	oe => VCC,
	padio => Q(1));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[2]~reg0_regout\,
	oe => VCC,
	padio => Q(2));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[3]~reg0_regout\,
	oe => VCC,
	padio => Q(3));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[4]~reg0_regout\,
	oe => VCC,
	padio => Q(4));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[5]~reg0_regout\,
	oe => VCC,
	padio => Q(5));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[6]~reg0_regout\,
	oe => VCC,
	padio => Q(6));
END structure;


