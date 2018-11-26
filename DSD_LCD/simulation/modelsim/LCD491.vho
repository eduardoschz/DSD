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

-- DATE "09/25/2018 17:17:28"

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

ENTITY 	lcd IS
    PORT (
	ck : IN std_logic;
	rst : IN std_logic;
	Q : INOUT std_logic_vector(3 DOWNTO 0);
	rs : OUT std_logic;
	rw : OUT std_logic;
	D : OUT std_logic_vector(7 DOWNTO 0)
	);
END lcd;

-- Design Ports Information
-- rst	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ck	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rs	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rw	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- D[0]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- D[1]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- D[2]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- D[3]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- D[4]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- D[5]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- D[6]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- D[7]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[1]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[2]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Q[3]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF lcd IS
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
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL \ck~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Q[0]~reg0_regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \Q[1]~reg0_regout\ : std_logic;
SIGNAL \Q[2]~reg0_regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Q[3]~reg0_regout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \rs$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_rst <= rst;
rs <= ww_rs;
rw <= ww_rw;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;

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

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X3_Y1_N5
\Q[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[0]~reg0_regout\ = DFFEAS(((!\rst~combout\ & (!\Q[0]~reg0_regout\))), GLOBAL(\ck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	datab => \rst~combout\,
	datac => \Q[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[0]~reg0_regout\);

-- Location: LC_X3_Y1_N0
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!\Q[2]~reg0_regout\ & (((\Q[0]~reg0_regout\ & !\Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_regout\,
	datac => \Q[0]~reg0_regout\,
	datad => \Q[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X3_Y1_N1
\contador~0\ : maxii_lcell
-- Equation(s):
-- \contador~0_combout\ = ((\rst~combout\) # ((\Q[3]~reg0_regout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Q[3]~reg0_regout\,
	datac => \rst~combout\,
	datad => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \contador~0_combout\);

-- Location: LC_X3_Y1_N8
\Q[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[1]~reg0_regout\ = DFFEAS(((!\contador~0_combout\ & (\Q[0]~reg0_regout\ $ (\Q[1]~reg0_regout\)))), GLOBAL(\ck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0066",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datad => \contador~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[1]~reg0_regout\);

-- Location: LC_X3_Y1_N6
\Q[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[2]~reg0_regout\ = DFFEAS((!\contador~0_combout\ & (\Q[2]~reg0_regout\ $ (((\Q[1]~reg0_regout\ & \Q[0]~reg0_regout\))))), GLOBAL(\ck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "006a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	dataa => \Q[2]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[0]~reg0_regout\,
	datad => \contador~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[2]~reg0_regout\);

-- Location: LC_X3_Y1_N4
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (((\Q[0]~reg0_regout\ & \Q[1]~reg0_regout\)))

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
	datac => \Q[0]~reg0_regout\,
	datad => \Q[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X3_Y1_N9
\Q[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \Q[3]~reg0_regout\ = DFFEAS((!\contador~0_combout\ & (\Q[3]~reg0_regout\ $ (((\Q[2]~reg0_regout\ & \Add0~0_combout\))))), GLOBAL(\ck~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "006c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ck~combout\,
	dataa => \Q[2]~reg0_regout\,
	datab => \Q[3]~reg0_regout\,
	datac => \Add0~0_combout\,
	datad => \contador~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[3]~reg0_regout\);

-- Location: LC_X3_Y1_N7
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (\Q[3]~reg0_regout\) # ((\Q[0]~reg0_regout\ & (\Q[2]~reg0_regout\ & \Q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[3]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X3_Y1_N2
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = ((\Q[2]~reg0_regout\ & (\Q[0]~reg0_regout\ $ (\Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datac => \Q[2]~reg0_regout\,
	datad => \Q[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X3_Y1_N3
\rs$latch\ : maxii_lcell
-- Equation(s):
-- \rs$latch~combout\ = ((\Mux10~0_combout\ & (\rs$latch~combout\)) # (!\Mux10~0_combout\ & ((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rs$latch~combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rs$latch~combout\);

-- Location: LC_X2_Y1_N5
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\Q[0]~reg0_regout\ & (!\Q[1]~reg0_regout\ & (!\Q[3]~reg0_regout\ & !\Q[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X2_Y1_N3
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\Q[1]~reg0_regout\ & (!\Q[3]~reg0_regout\ & ((!\Q[2]~reg0_regout\) # (!\Q[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "040c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X2_Y1_N4
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = ((\Q[1]~reg0_regout\ & (!\Q[3]~reg0_regout\ & !\Q[2]~reg0_regout\)))

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
	datab => \Q[1]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X2_Y1_N2
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\Q[3]~reg0_regout\) # ((\Q[2]~reg0_regout\) # (\Q[0]~reg0_regout\ $ (\Q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X2_Y1_N6
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\Q[3]~reg0_regout\) # ((\Q[0]~reg0_regout\ & ((\Q[1]~reg0_regout\) # (!\Q[2]~reg0_regout\))) # (!\Q[0]~reg0_regout\ & (\Q[1]~reg0_regout\ $ (\Q[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f9fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X2_Y1_N7
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (!\Q[0]~reg0_regout\ & (!\Q[1]~reg0_regout\ & (!\Q[3]~reg0_regout\ & !\Q[2]~reg0_regout\)))

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
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X2_Y1_N8
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (!\Q[3]~reg0_regout\ & (\Q[2]~reg0_regout\ & (\Q[0]~reg0_regout\ $ (\Q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X2_Y1_N1
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (!\Q[0]~reg0_regout\ & (!\Q[1]~reg0_regout\ & (!\Q[3]~reg0_regout\ & \Q[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~reg0_regout\,
	datab => \Q[1]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rs~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rs$latch~combout\,
	oe => VCC,
	padio => ww_rs);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rw~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_rw);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~0_combout\,
	oe => VCC,
	padio => ww_D(0));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_D(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~0_combout\,
	oe => VCC,
	padio => ww_D(2));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_D(3));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_D(4));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	oe => VCC,
	padio => ww_D(5));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	oe => VCC,
	padio => ww_D(6));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\D[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	oe => VCC,
	padio => ww_D(7));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[0]~reg0_regout\,
	oe => VCC,
	padio => Q(0));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[1]~reg0_regout\,
	oe => VCC,
	padio => Q(1));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[2]~reg0_regout\,
	oe => VCC,
	padio => Q(2));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Q[3]~reg0_regout\,
	oe => VCC,
	padio => Q(3));
END structure;


