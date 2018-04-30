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

-- DATE "12/08/2017 16:36:12"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Processador IS
    PORT (
	rst : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0);
	Q1 : OUT std_logic_vector(6 DOWNTO 0);
	Q2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Processador;

-- Design Ports Information
-- output[0]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1[0]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1[1]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1[2]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1[3]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1[4]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1[5]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2[0]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2[1]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2[2]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2[3]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2[4]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2[5]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2[6]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Q2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|state.done~regout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux0~2_combout\ : std_logic;
SIGNAL \controller|state.done~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|out2~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|out0~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|out0~2_combout\ : std_logic;
SIGNAL \datapath|RF_use|out3~2_combout\ : std_logic;
SIGNAL \datapath|RF_use|out3~3_combout\ : std_logic;
SIGNAL \datapath|RF_use|out2~4_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \controller|state.s0~0_combout\ : std_logic;
SIGNAL \controller|state.s0~regout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \controller|Selector31~0_combout\ : std_logic;
SIGNAL \controller|CODE[1]~feeder_combout\ : std_logic;
SIGNAL \controller|Mux1~0_combout\ : std_logic;
SIGNAL \controller|Selector40~0_combout\ : std_logic;
SIGNAL \controller|state.s5~regout\ : std_logic;
SIGNAL \controller|Selector37~0_combout\ : std_logic;
SIGNAL \controller|Selector37~1_combout\ : std_logic;
SIGNAL \controller|state.s1~regout\ : std_logic;
SIGNAL \controller|state.s2~regout\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|PC[1]~2_combout\ : std_logic;
SIGNAL \controller|Mux1~1_combout\ : std_logic;
SIGNAL \controller|state.s4~regout\ : std_logic;
SIGNAL \controller|Selector41~0_combout\ : std_logic;
SIGNAL \controller|state.s13~0_combout\ : std_logic;
SIGNAL \controller|state.s13~regout\ : std_logic;
SIGNAL \controller|state.s6~0_combout\ : std_logic;
SIGNAL \controller|state.s6~regout\ : std_logic;
SIGNAL \controller|Selector51~1_combout\ : std_logic;
SIGNAL \controller|state.s7~4_combout\ : std_logic;
SIGNAL \controller|state.s7~regout\ : std_logic;
SIGNAL \controller|Selector51~0_combout\ : std_logic;
SIGNAL \controller|Selector51~2_combout\ : std_logic;
SIGNAL \controller|enb_acc~regout\ : std_logic;
SIGNAL \datapath|ALU_use|output[3]~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|output[3]~1_combout\ : std_logic;
SIGNAL \controller|Mux2~0_combout\ : std_logic;
SIGNAL \controller|Selector35~0_combout\ : std_logic;
SIGNAL \controller|Selector35~1_combout\ : std_logic;
SIGNAL \controller|Selector50~0_combout\ : std_logic;
SIGNAL \controller|enb_rf~regout\ : std_logic;
SIGNAL \controller|state.s8~0_combout\ : std_logic;
SIGNAL \controller|state.s8~regout\ : std_logic;
SIGNAL \controller|WideOr13~combout\ : std_logic;
SIGNAL \datapath|RF_use|out3~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|out3[3]~1_combout\ : std_logic;
SIGNAL \datapath|RF_use|out1~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|out1[1]~1_combout\ : std_logic;
SIGNAL \datapath|RF_use|Mux19~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|Mux19~1_combout\ : std_logic;
SIGNAL \controller|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|in_rf~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|output[3]~2_combout\ : std_logic;
SIGNAL \datapath|ACC_use|output~3_combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \datapath|ALU_use|Mux2~1_combout\ : std_logic;
SIGNAL \datapath|RF_use|out1~2_combout\ : std_logic;
SIGNAL \datapath|RF_use|out2~2_combout\ : std_logic;
SIGNAL \datapath|RF_use|out2[0]~1_combout\ : std_logic;
SIGNAL \datapath|RF_use|Mux18~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|Mux18~1_combout\ : std_logic;
SIGNAL \controller|Selector34~0_combout\ : std_logic;
SIGNAL \datapath|in_rf~1_combout\ : std_logic;
SIGNAL \datapath|ALU_use|soma|FA_1|s~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux2~2_combout\ : std_logic;
SIGNAL \datapath|ACC_use|temp[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|ACC_use|output~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|soma|FA_1|cout~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|out1~3_combout\ : std_logic;
SIGNAL \datapath|RF_use|out0~3_combout\ : std_logic;
SIGNAL \datapath|RF_use|out0[3]~1_combout\ : std_logic;
SIGNAL \datapath|RF_use|out2~3_combout\ : std_logic;
SIGNAL \datapath|RF_use|Mux17~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|Mux17~1_combout\ : std_logic;
SIGNAL \datapath|in_rf~2_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux1~1_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux1~2_combout\ : std_logic;
SIGNAL \datapath|ACC_use|output~1_combout\ : std_logic;
SIGNAL \datapath|output_dp~1_combout\ : std_logic;
SIGNAL \datapath|RF_use|out3~4_combout\ : std_logic;
SIGNAL \datapath|RF_use|out0~4_combout\ : std_logic;
SIGNAL \datapath|RF_use|out1~4_combout\ : std_logic;
SIGNAL \datapath|RF_use|Mux16~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|Mux16~1_combout\ : std_logic;
SIGNAL \datapath|in_rf~3_combout\ : std_logic;
SIGNAL \datapath|ALU_use|soma|FA_3|s~0_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux0~1_combout\ : std_logic;
SIGNAL \datapath|ALU_use|Mux0~3_combout\ : std_logic;
SIGNAL \datapath|ACC_use|output~2_combout\ : std_logic;
SIGNAL \datapath|output_dp~2_combout\ : std_logic;
SIGNAL \datapath|output_dp~0_combout\ : std_logic;
SIGNAL \Conversor|Mux0~0_combout\ : std_logic;
SIGNAL \Conversor|Q1[1]~feeder_combout\ : std_logic;
SIGNAL \Conversor|Q1[2]~feeder_combout\ : std_logic;
SIGNAL \Conversor|Q1[3]~feeder_combout\ : std_logic;
SIGNAL \Conversor|Q1[6]~feeder_combout\ : std_logic;
SIGNAL \datapath|output_dp~3_combout\ : std_logic;
SIGNAL \Conversor|Mux7~0_combout\ : std_logic;
SIGNAL \Conversor|Mux6~0_combout\ : std_logic;
SIGNAL \Conversor|Mux5~0_combout\ : std_logic;
SIGNAL \Conversor|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor|Mux2~0_combout\ : std_logic;
SIGNAL \Conversor|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|RF_use|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|RF_use|out3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|RF_use|out2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|RF_use|out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|RF_use|out0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Conversor|Q2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Conversor|Q1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \controller|imm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|ACC_use|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|in_rf\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|ADDRESS_OUT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \datapath|output_dp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controller|CODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|ALU_use|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|ADDRESS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|ACC_use|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \controller|ALT_INV_enb_rf~regout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_start <= start;
ww_clk <= clk;
output <= ww_output;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\controller|ALT_INV_enb_rf~regout\ <= NOT \controller|enb_rf~regout\;

-- Location: LCFF_X60_Y32_N11
\datapath|ACC_use|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \datapath|ACC_use|output~1_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACC_use|temp\(2));

-- Location: LCFF_X61_Y32_N21
\controller|state.done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|state.done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.done~regout\);

-- Location: LCCOMB_X58_Y32_N10
\datapath|ALU_use|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux0~2_combout\ = (\controller|CODE\(3) & (((\datapath|in_rf\(3))))) # (!\controller|CODE\(3) & ((\controller|CODE\(0) & (\datapath|ACC_use|output\(3))) # (!\controller|CODE\(0) & ((\datapath|in_rf\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACC_use|output\(3),
	datab => \controller|CODE\(3),
	datac => \datapath|in_rf\(3),
	datad => \controller|CODE\(0),
	combout => \datapath|ALU_use|Mux0~2_combout\);

-- Location: LCCOMB_X61_Y32_N20
\controller|state.done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.done~0_combout\ = (\controller|state.done~regout\) # ((\controller|CODE\(3) & (\controller|CODE\(0) & \controller|Selector41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|CODE\(3),
	datab => \controller|CODE\(0),
	datac => \controller|state.done~regout\,
	datad => \controller|Selector41~0_combout\,
	combout => \controller|state.done~0_combout\);

-- Location: LCFF_X63_Y32_N5
\datapath|RF_use|out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out2~0_combout\,
	ena => \datapath|RF_use|out2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out2\(0));

-- Location: LCFF_X62_Y32_N25
\datapath|RF_use|out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out0~0_combout\,
	ena => \datapath|RF_use|out0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out0\(0));

-- Location: LCFF_X62_Y32_N21
\datapath|RF_use|out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out0~2_combout\,
	ena => \datapath|RF_use|out0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out0\(1));

-- Location: LCFF_X60_Y32_N27
\datapath|RF_use|out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out3~2_combout\,
	ena => \datapath|RF_use|out3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out3\(1));

-- Location: LCFF_X60_Y32_N17
\datapath|RF_use|out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out3~3_combout\,
	ena => \datapath|RF_use|out3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out3\(2));

-- Location: LCFF_X63_Y32_N21
\datapath|RF_use|out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out2~4_combout\,
	ena => \datapath|RF_use|out2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out2\(3));

-- Location: LCCOMB_X63_Y32_N4
\datapath|RF_use|out2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out2~0_combout\ = (!\controller|ADDRESS_OUT\(0) & (\controller|ADDRESS_OUT\(1) & (\datapath|ALU_use|output\(0) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \datapath|ALU_use|output\(0),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out2~0_combout\);

-- Location: LCCOMB_X62_Y32_N24
\datapath|RF_use|out0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out0~0_combout\ = (\datapath|ALU_use|output\(0) & (\controller|enb_rf~regout\ & (!\controller|ADDRESS_OUT\(1) & !\controller|ADDRESS_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ALU_use|output\(0),
	datab => \controller|enb_rf~regout\,
	datac => \controller|ADDRESS_OUT\(1),
	datad => \controller|ADDRESS_OUT\(0),
	combout => \datapath|RF_use|out0~0_combout\);

-- Location: LCCOMB_X62_Y32_N20
\datapath|RF_use|out0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out0~2_combout\ = (\controller|enb_rf~regout\ & (\datapath|ALU_use|output\(1) & (!\controller|ADDRESS_OUT\(1) & !\controller|ADDRESS_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|enb_rf~regout\,
	datab => \datapath|ALU_use|output\(1),
	datac => \controller|ADDRESS_OUT\(1),
	datad => \controller|ADDRESS_OUT\(0),
	combout => \datapath|RF_use|out0~2_combout\);

-- Location: LCCOMB_X60_Y32_N26
\datapath|RF_use|out3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out3~2_combout\ = (\controller|ADDRESS_OUT\(0) & (\controller|enb_rf~regout\ & (\datapath|ALU_use|output\(1) & \controller|ADDRESS_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|enb_rf~regout\,
	datac => \datapath|ALU_use|output\(1),
	datad => \controller|ADDRESS_OUT\(1),
	combout => \datapath|RF_use|out3~2_combout\);

-- Location: LCCOMB_X60_Y32_N16
\datapath|RF_use|out3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out3~3_combout\ = (\controller|ADDRESS_OUT\(0) & (\datapath|ALU_use|output\(2) & (\controller|enb_rf~regout\ & \controller|ADDRESS_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \datapath|ALU_use|output\(2),
	datac => \controller|enb_rf~regout\,
	datad => \controller|ADDRESS_OUT\(1),
	combout => \datapath|RF_use|out3~3_combout\);

-- Location: LCCOMB_X63_Y32_N20
\datapath|RF_use|out2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out2~4_combout\ = (!\controller|ADDRESS_OUT\(0) & (\controller|ADDRESS_OUT\(1) & (\controller|enb_rf~regout\ & \datapath|ALU_use|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \controller|enb_rf~regout\,
	datad => \datapath|ALU_use|output\(3),
	combout => \datapath|RF_use|out2~4_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X61_Y32_N26
\controller|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s0~0_combout\ = (\start~combout\) # (\controller|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datac => \controller|state.s0~regout\,
	combout => \controller|state.s0~0_combout\);

-- Location: LCFF_X61_Y32_N27
\controller|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|state.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s0~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X57_Y32_N14
\controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~0_combout\ = \controller|PC\(0) $ (GND)
-- \controller|Add0~1\ = CARRY(!\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datad => VCC,
	combout => \controller|Add0~0_combout\,
	cout => \controller|Add0~1\);

-- Location: LCCOMB_X57_Y32_N8
\controller|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector31~0_combout\ = (\controller|state.s2~regout\ & (!\controller|Add0~0_combout\)) # (!\controller|state.s2~regout\ & (((\controller|PC\(0)) # (!\controller|state.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|Add0~0_combout\,
	datac => \controller|PC\(0),
	datad => \controller|state.s0~regout\,
	combout => \controller|Selector31~0_combout\);

-- Location: LCFF_X57_Y32_N9
\controller|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(0));

-- Location: LCCOMB_X57_Y32_N22
\controller|CODE[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|CODE[1]~feeder_combout\ = \controller|PC\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|PC\(0),
	combout => \controller|CODE[1]~feeder_combout\);

-- Location: LCFF_X57_Y32_N23
\controller|CODE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|CODE[1]~feeder_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|CODE\(1));

-- Location: LCCOMB_X57_Y32_N20
\controller|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~0_combout\ = (!\controller|PC\(0) & \controller|PC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(0),
	datad => \controller|PC\(1),
	combout => \controller|Mux1~0_combout\);

-- Location: LCFF_X57_Y32_N21
\controller|CODE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Mux1~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|CODE\(3));

-- Location: LCCOMB_X61_Y32_N18
\controller|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector40~0_combout\ = (\controller|state.s4~regout\ & (!\controller|CODE\(0) & (!\controller|CODE\(3) & \controller|CODE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s4~regout\,
	datab => \controller|CODE\(0),
	datac => \controller|CODE\(3),
	datad => \controller|CODE\(1),
	combout => \controller|Selector40~0_combout\);

-- Location: LCFF_X61_Y32_N19
\controller|state.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Selector40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s5~regout\);

-- Location: LCCOMB_X61_Y32_N22
\controller|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~0_combout\ = (\controller|state.s5~regout\) # ((\controller|state.s4~regout\ & (\controller|CODE\(1) & \controller|CODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s4~regout\,
	datab => \controller|CODE\(1),
	datac => \controller|CODE\(3),
	datad => \controller|state.s5~regout\,
	combout => \controller|Selector37~0_combout\);

-- Location: LCCOMB_X61_Y32_N4
\controller|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~1_combout\ = (\controller|Selector37~0_combout\) # ((!\controller|state.s0~regout\ & \start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s0~regout\,
	datac => \start~combout\,
	datad => \controller|Selector37~0_combout\,
	combout => \controller|Selector37~1_combout\);

-- Location: LCFF_X61_Y32_N5
\controller|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s1~regout\);

-- Location: LCFF_X61_Y32_N11
\controller|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controller|state.s1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s2~regout\);

-- Location: LCCOMB_X57_Y32_N16
\controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = \controller|Add0~1\ $ (\controller|PC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller|PC\(1),
	cin => \controller|Add0~1\,
	combout => \controller|Add0~2_combout\);

-- Location: LCCOMB_X57_Y32_N6
\controller|PC[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|PC[1]~2_combout\ = (\controller|state.s2~regout\ & (((\controller|Add0~2_combout\)))) # (!\controller|state.s2~regout\ & (\controller|state.s0~regout\ & (\controller|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datab => \controller|state.s2~regout\,
	datac => \controller|PC\(1),
	datad => \controller|Add0~2_combout\,
	combout => \controller|PC[1]~2_combout\);

-- Location: LCFF_X57_Y32_N7
\controller|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|PC[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(1));

-- Location: LCCOMB_X57_Y32_N12
\controller|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux1~1_combout\ = (\controller|PC\(1)) # (!\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(0),
	datad => \controller|PC\(1),
	combout => \controller|Mux1~1_combout\);

-- Location: LCFF_X57_Y32_N13
\controller|CODE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Mux1~1_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|CODE\(0));

-- Location: LCFF_X61_Y32_N13
\controller|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controller|state.s2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s4~regout\);

-- Location: LCCOMB_X61_Y32_N12
\controller|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector41~0_combout\ = (\controller|state.s4~regout\ & !\controller|CODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.s4~regout\,
	datad => \controller|CODE\(1),
	combout => \controller|Selector41~0_combout\);

-- Location: LCCOMB_X61_Y32_N30
\controller|state.s13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s13~0_combout\ = (\controller|state.s13~regout\) # ((\controller|CODE\(3) & (!\controller|CODE\(0) & \controller|Selector41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|CODE\(3),
	datab => \controller|CODE\(0),
	datac => \controller|state.s13~regout\,
	datad => \controller|Selector41~0_combout\,
	combout => \controller|state.s13~0_combout\);

-- Location: LCFF_X61_Y32_N31
\controller|state.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|state.s13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s13~regout\);

-- Location: LCCOMB_X61_Y32_N16
\controller|state.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s6~0_combout\ = (\controller|state.s6~regout\) # ((!\controller|CODE\(3) & (!\controller|CODE\(0) & \controller|Selector41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|CODE\(3),
	datab => \controller|CODE\(0),
	datac => \controller|state.s6~regout\,
	datad => \controller|Selector41~0_combout\,
	combout => \controller|state.s6~0_combout\);

-- Location: LCFF_X61_Y32_N17
\controller|state.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|state.s6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s6~regout\);

-- Location: LCCOMB_X60_Y32_N30
\controller|Selector51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector51~1_combout\ = (\controller|state.s8~regout\) # ((\controller|state.s13~regout\) # ((\controller|state.s6~regout\) # (\controller|state.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s8~regout\,
	datab => \controller|state.s13~regout\,
	datac => \controller|state.s6~regout\,
	datad => \controller|state.s5~regout\,
	combout => \controller|Selector51~1_combout\);

-- Location: LCCOMB_X61_Y32_N0
\controller|state.s7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s7~4_combout\ = (\controller|state.s7~regout\) # ((!\controller|CODE\(3) & (\controller|CODE\(0) & \controller|Selector41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|CODE\(3),
	datab => \controller|CODE\(0),
	datac => \controller|state.s7~regout\,
	datad => \controller|Selector41~0_combout\,
	combout => \controller|state.s7~4_combout\);

-- Location: LCFF_X61_Y32_N1
\controller|state.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|state.s7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s7~regout\);

-- Location: LCCOMB_X61_Y32_N28
\controller|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector51~0_combout\ = (!\controller|state.done~regout\ & (!\controller|state.s7~regout\ & (!\controller|state.s4~regout\ & \controller|state.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.done~regout\,
	datab => \controller|state.s7~regout\,
	datac => \controller|state.s4~regout\,
	datad => \controller|state.s0~regout\,
	combout => \controller|Selector51~0_combout\);

-- Location: LCCOMB_X59_Y32_N26
\controller|Selector51~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector51~2_combout\ = (\controller|Selector51~1_combout\) # ((\controller|enb_acc~regout\ & ((\controller|state.s2~regout\) # (!\controller|Selector51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s2~regout\,
	datab => \controller|Selector51~1_combout\,
	datac => \controller|enb_acc~regout\,
	datad => \controller|Selector51~0_combout\,
	combout => \controller|Selector51~2_combout\);

-- Location: LCFF_X59_Y32_N27
\controller|enb_acc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Selector51~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enb_acc~regout\);

-- Location: LCFF_X60_Y32_N15
\datapath|ACC_use|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \datapath|ACC_use|output~3_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACC_use|temp\(0));

-- Location: LCCOMB_X57_Y32_N18
\datapath|ALU_use|output[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|output[3]~0_combout\ = (\controller|CODE\(3)) # ((\controller|CODE\(1) & \controller|CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|CODE\(1),
	datac => \controller|CODE\(3),
	datad => \controller|CODE\(0),
	combout => \datapath|ALU_use|output[3]~0_combout\);

-- Location: LCCOMB_X57_Y32_N0
\datapath|ALU_use|output[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|output[3]~1_combout\ = (!\controller|CODE\(3) & \controller|CODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|CODE\(3),
	datad => \controller|CODE\(0),
	combout => \datapath|ALU_use|output[3]~1_combout\);

-- Location: LCCOMB_X57_Y32_N26
\controller|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux2~0_combout\ = \controller|PC\(0) $ (\controller|PC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|PC\(0),
	datad => \controller|PC\(1),
	combout => \controller|Mux2~0_combout\);

-- Location: LCFF_X57_Y32_N27
\controller|ADDRESS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Mux2~0_combout\,
	ena => \controller|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(0));

-- Location: LCCOMB_X61_Y32_N24
\controller|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~0_combout\ = (\controller|state.s5~regout\ & \controller|ADDRESS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s5~regout\,
	datad => \controller|ADDRESS\(0),
	combout => \controller|Selector35~0_combout\);

-- Location: LCCOMB_X61_Y32_N10
\controller|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~1_combout\ = (\controller|state.s5~regout\) # (!\controller|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s0~regout\,
	datad => \controller|state.s5~regout\,
	combout => \controller|Selector35~1_combout\);

-- Location: LCFF_X61_Y32_N25
\controller|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Selector35~0_combout\,
	ena => \controller|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(0));

-- Location: LCCOMB_X61_Y32_N14
\controller|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector50~0_combout\ = (\controller|state.s7~regout\) # ((!\controller|state.s1~regout\ & \controller|enb_rf~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s1~regout\,
	datac => \controller|enb_rf~regout\,
	datad => \controller|state.s7~regout\,
	combout => \controller|Selector50~0_combout\);

-- Location: LCFF_X61_Y32_N15
\controller|enb_rf\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|enb_rf~regout\);

-- Location: LCCOMB_X61_Y32_N2
\controller|state.s8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s8~0_combout\ = (\controller|state.s8~regout\) # ((\controller|state.s4~regout\ & (\controller|CODE\(1) & \datapath|ALU_use|output[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s4~regout\,
	datab => \controller|CODE\(1),
	datac => \controller|state.s8~regout\,
	datad => \datapath|ALU_use|output[3]~1_combout\,
	combout => \controller|state.s8~0_combout\);

-- Location: LCFF_X61_Y32_N3
\controller|state.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|state.s8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s8~regout\);

-- Location: LCCOMB_X61_Y32_N6
\controller|WideOr13\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|WideOr13~combout\ = (\controller|state.s8~regout\) # ((\controller|state.s6~regout\) # (\controller|state.s7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|state.s8~regout\,
	datac => \controller|state.s6~regout\,
	datad => \controller|state.s7~regout\,
	combout => \controller|WideOr13~combout\);

-- Location: LCFF_X62_Y32_N29
\controller|ADDRESS_OUT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controller|CODE\(3),
	sload => VCC,
	ena => \controller|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS_OUT\(1));

-- Location: LCCOMB_X60_Y32_N28
\datapath|RF_use|out3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out3~0_combout\ = (\controller|ADDRESS_OUT\(0) & (\datapath|ALU_use|output\(0) & (\controller|enb_rf~regout\ & \controller|ADDRESS_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \datapath|ALU_use|output\(0),
	datac => \controller|enb_rf~regout\,
	datad => \controller|ADDRESS_OUT\(1),
	combout => \datapath|RF_use|out3~0_combout\);

-- Location: LCFF_X62_Y32_N31
\controller|ADDRESS_OUT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \controller|ADDRESS\(0),
	sload => VCC,
	ena => \controller|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS_OUT\(0));

-- Location: LCCOMB_X60_Y32_N8
\datapath|RF_use|out3[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out3[3]~1_combout\ = (\rst~combout\) # ((\controller|enb_rf~regout\ & (\controller|ADDRESS_OUT\(0) & \controller|ADDRESS_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|enb_rf~regout\,
	datac => \controller|ADDRESS_OUT\(0),
	datad => \controller|ADDRESS_OUT\(1),
	combout => \datapath|RF_use|out3[3]~1_combout\);

-- Location: LCFF_X60_Y32_N29
\datapath|RF_use|out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out3~0_combout\,
	ena => \datapath|RF_use|out3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out3\(0));

-- Location: LCCOMB_X63_Y32_N30
\datapath|RF_use|out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out1~0_combout\ = (\controller|ADDRESS_OUT\(0) & (!\controller|ADDRESS_OUT\(1) & (\datapath|ALU_use|output\(0) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \datapath|ALU_use|output\(0),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out1~0_combout\);

-- Location: LCCOMB_X62_Y32_N14
\datapath|RF_use|out1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out1[1]~1_combout\ = (\rst~combout\) # ((\controller|ADDRESS_OUT\(0) & (!\controller|ADDRESS_OUT\(1) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|ADDRESS_OUT\(0),
	datac => \controller|ADDRESS_OUT\(1),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out1[1]~1_combout\);

-- Location: LCFF_X63_Y32_N31
\datapath|RF_use|out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out1~0_combout\,
	ena => \datapath|RF_use|out1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out1\(0));

-- Location: LCCOMB_X62_Y32_N22
\datapath|RF_use|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|Mux19~0_combout\ = (\controller|ADDRESS_OUT\(1) & (((\controller|ADDRESS_OUT\(0))))) # (!\controller|ADDRESS_OUT\(1) & ((\controller|ADDRESS_OUT\(0) & ((\datapath|RF_use|out1\(0)))) # (!\controller|ADDRESS_OUT\(0) & 
-- (\datapath|RF_use|out0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|RF_use|out0\(0),
	datab => \datapath|RF_use|out1\(0),
	datac => \controller|ADDRESS_OUT\(1),
	datad => \controller|ADDRESS_OUT\(0),
	combout => \datapath|RF_use|Mux19~0_combout\);

-- Location: LCCOMB_X59_Y32_N12
\datapath|RF_use|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|Mux19~1_combout\ = (\controller|ADDRESS_OUT\(1) & ((\datapath|RF_use|Mux19~0_combout\ & ((\datapath|RF_use|out3\(0)))) # (!\datapath|RF_use|Mux19~0_combout\ & (\datapath|RF_use|out2\(0))))) # (!\controller|ADDRESS_OUT\(1) & 
-- (((\datapath|RF_use|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|RF_use|out2\(0),
	datab => \datapath|RF_use|out3\(0),
	datac => \controller|ADDRESS_OUT\(1),
	datad => \datapath|RF_use|Mux19~0_combout\,
	combout => \datapath|RF_use|Mux19~1_combout\);

-- Location: LCFF_X59_Y32_N13
\datapath|RF_use|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|Mux19~1_combout\,
	ena => \controller|ALT_INV_enb_rf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|output\(0));

-- Location: LCCOMB_X59_Y32_N30
\controller|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux5~0_combout\ = (!\controller|CODE\(0) & (!\controller|CODE\(3) & \controller|CODE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|CODE\(0),
	datac => \controller|CODE\(3),
	datad => \controller|CODE\(1),
	combout => \controller|Mux5~0_combout\);

-- Location: LCCOMB_X58_Y32_N6
\datapath|in_rf~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|in_rf~0_combout\ = (\controller|Mux5~0_combout\ & (\controller|imm\(0))) # (!\controller|Mux5~0_combout\ & ((\datapath|RF_use|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|imm\(0),
	datac => \datapath|RF_use|output\(0),
	datad => \controller|Mux5~0_combout\,
	combout => \datapath|in_rf~0_combout\);

-- Location: LCFF_X58_Y32_N7
\datapath|in_rf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|in_rf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|in_rf\(0));

-- Location: LCCOMB_X58_Y32_N4
\datapath|ALU_use|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux3~0_combout\ = (\datapath|ALU_use|output[3]~0_combout\ & (\datapath|ACC_use|output\(0) $ (((\datapath|in_rf\(0)) # (!\datapath|ALU_use|output[3]~1_combout\))))) # (!\datapath|ALU_use|output[3]~0_combout\ & 
-- ((\datapath|ALU_use|output[3]~1_combout\ & (\datapath|ACC_use|output\(0))) # (!\datapath|ALU_use|output[3]~1_combout\ & ((\datapath|in_rf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACC_use|output\(0),
	datab => \datapath|ALU_use|output[3]~0_combout\,
	datac => \datapath|ALU_use|output[3]~1_combout\,
	datad => \datapath|in_rf\(0),
	combout => \datapath|ALU_use|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y32_N30
\datapath|ALU_use|output[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|output[3]~2_combout\ = ((!\controller|CODE\(1) & !\controller|CODE\(0))) # (!\controller|CODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|CODE\(1),
	datac => \controller|CODE\(3),
	datad => \controller|CODE\(0),
	combout => \datapath|ALU_use|output[3]~2_combout\);

-- Location: LCFF_X58_Y32_N5
\datapath|ALU_use|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|ALU_use|Mux3~0_combout\,
	ena => \datapath|ALU_use|output[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ALU_use|output\(0));

-- Location: LCCOMB_X60_Y32_N4
\datapath|ACC_use|output~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACC_use|output~3_combout\ = (\controller|enb_acc~regout\ & ((\datapath|ALU_use|output\(0)))) # (!\controller|enb_acc~regout\ & (\datapath|ACC_use|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enb_acc~regout\,
	datac => \datapath|ACC_use|temp\(0),
	datad => \datapath|ALU_use|output\(0),
	combout => \datapath|ACC_use|output~3_combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X58_Y32_N9
\datapath|ACC_use|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \datapath|ACC_use|output~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACC_use|output\(0));

-- Location: LCCOMB_X58_Y32_N16
\datapath|ALU_use|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux2~1_combout\ = (\controller|CODE\(3) & (\datapath|in_rf\(1))) # (!\controller|CODE\(3) & ((\controller|CODE\(0) & ((\datapath|ACC_use|output\(1)))) # (!\controller|CODE\(0) & (\datapath|in_rf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_rf\(1),
	datab => \controller|CODE\(3),
	datac => \datapath|ACC_use|output\(1),
	datad => \controller|CODE\(0),
	combout => \datapath|ALU_use|Mux2~1_combout\);

-- Location: LCCOMB_X63_Y32_N0
\datapath|RF_use|out1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out1~2_combout\ = (\controller|ADDRESS_OUT\(0) & (!\controller|ADDRESS_OUT\(1) & (\datapath|ALU_use|output\(1) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \datapath|ALU_use|output\(1),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out1~2_combout\);

-- Location: LCFF_X63_Y32_N1
\datapath|RF_use|out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out1~2_combout\,
	ena => \datapath|RF_use|out1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out1\(1));

-- Location: LCCOMB_X63_Y32_N14
\datapath|RF_use|out2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out2~2_combout\ = (!\controller|ADDRESS_OUT\(0) & (\controller|ADDRESS_OUT\(1) & (\datapath|ALU_use|output\(1) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \datapath|ALU_use|output\(1),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out2~2_combout\);

-- Location: LCCOMB_X62_Y32_N16
\datapath|RF_use|out2[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out2[0]~1_combout\ = (\rst~combout\) # ((!\controller|ADDRESS_OUT\(0) & (\controller|ADDRESS_OUT\(1) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|ADDRESS_OUT\(0),
	datac => \controller|ADDRESS_OUT\(1),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out2[0]~1_combout\);

-- Location: LCFF_X63_Y32_N15
\datapath|RF_use|out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out2~2_combout\,
	ena => \datapath|RF_use|out2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out2\(1));

-- Location: LCCOMB_X62_Y32_N18
\datapath|RF_use|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|Mux18~0_combout\ = (\controller|ADDRESS_OUT\(1) & (((\datapath|RF_use|out2\(1)) # (\controller|ADDRESS_OUT\(0))))) # (!\controller|ADDRESS_OUT\(1) & (\datapath|RF_use|out0\(1) & ((!\controller|ADDRESS_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|RF_use|out0\(1),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \datapath|RF_use|out2\(1),
	datad => \controller|ADDRESS_OUT\(0),
	combout => \datapath|RF_use|Mux18~0_combout\);

-- Location: LCCOMB_X59_Y32_N24
\datapath|RF_use|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|Mux18~1_combout\ = (\controller|ADDRESS_OUT\(0) & ((\datapath|RF_use|Mux18~0_combout\ & (\datapath|RF_use|out3\(1))) # (!\datapath|RF_use|Mux18~0_combout\ & ((\datapath|RF_use|out1\(1)))))) # (!\controller|ADDRESS_OUT\(0) & 
-- (((\datapath|RF_use|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|RF_use|out3\(1),
	datab => \controller|ADDRESS_OUT\(0),
	datac => \datapath|RF_use|out1\(1),
	datad => \datapath|RF_use|Mux18~0_combout\,
	combout => \datapath|RF_use|Mux18~1_combout\);

-- Location: LCFF_X59_Y32_N25
\datapath|RF_use|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|Mux18~1_combout\,
	ena => \controller|ALT_INV_enb_rf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|output\(1));

-- Location: LCCOMB_X61_Y32_N8
\controller|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector34~0_combout\ = (\controller|CODE\(3) & \controller|state.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|CODE\(3),
	datad => \controller|state.s5~regout\,
	combout => \controller|Selector34~0_combout\);

-- Location: LCFF_X61_Y32_N9
\controller|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \controller|Selector34~0_combout\,
	ena => \controller|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(1));

-- Location: LCCOMB_X58_Y32_N12
\datapath|in_rf~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|in_rf~1_combout\ = (\controller|Mux5~0_combout\ & ((\controller|imm\(1)))) # (!\controller|Mux5~0_combout\ & (\datapath|RF_use|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|RF_use|output\(1),
	datac => \controller|imm\(1),
	datad => \controller|Mux5~0_combout\,
	combout => \datapath|in_rf~1_combout\);

-- Location: LCFF_X58_Y32_N13
\datapath|in_rf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|in_rf~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|in_rf\(1));

-- Location: LCCOMB_X58_Y32_N8
\datapath|ALU_use|soma|FA_1|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|soma|FA_1|s~0_combout\ = \datapath|ACC_use|output\(1) $ (\datapath|in_rf\(1) $ (((\datapath|ACC_use|output\(0) & \datapath|in_rf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACC_use|output\(1),
	datab => \datapath|in_rf\(1),
	datac => \datapath|ACC_use|output\(0),
	datad => \datapath|in_rf\(0),
	combout => \datapath|ALU_use|soma|FA_1|s~0_combout\);

-- Location: LCCOMB_X58_Y32_N22
\datapath|ALU_use|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux2~0_combout\ = (\datapath|ALU_use|output[3]~0_combout\ & ((\datapath|ALU_use|output[3]~1_combout\ & ((\datapath|ALU_use|soma|FA_1|s~0_combout\))) # (!\datapath|ALU_use|output[3]~1_combout\ & (!\datapath|ACC_use|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACC_use|output\(1),
	datab => \datapath|ALU_use|output[3]~0_combout\,
	datac => \datapath|ALU_use|output[3]~1_combout\,
	datad => \datapath|ALU_use|soma|FA_1|s~0_combout\,
	combout => \datapath|ALU_use|Mux2~0_combout\);

-- Location: LCCOMB_X58_Y32_N30
\datapath|ALU_use|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux2~2_combout\ = (\datapath|ALU_use|Mux2~0_combout\) # ((!\datapath|ALU_use|output[3]~0_combout\ & \datapath|ALU_use|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|ALU_use|output[3]~0_combout\,
	datac => \datapath|ALU_use|Mux2~1_combout\,
	datad => \datapath|ALU_use|Mux2~0_combout\,
	combout => \datapath|ALU_use|Mux2~2_combout\);

-- Location: LCFF_X58_Y32_N31
\datapath|ALU_use|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|ALU_use|Mux2~2_combout\,
	ena => \datapath|ALU_use|output[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ALU_use|output\(1));

-- Location: LCCOMB_X60_Y32_N24
\datapath|ACC_use|temp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACC_use|temp[1]~feeder_combout\ = \datapath|ACC_use|output~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|ACC_use|output~0_combout\,
	combout => \datapath|ACC_use|temp[1]~feeder_combout\);

-- Location: LCFF_X60_Y32_N25
\datapath|ACC_use|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|ACC_use|temp[1]~feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACC_use|temp\(1));

-- Location: LCCOMB_X59_Y32_N16
\datapath|ACC_use|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACC_use|output~0_combout\ = (\controller|enb_acc~regout\ & (\datapath|ALU_use|output\(1))) # (!\controller|enb_acc~regout\ & ((\datapath|ACC_use|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enb_acc~regout\,
	datac => \datapath|ALU_use|output\(1),
	datad => \datapath|ACC_use|temp\(1),
	combout => \datapath|ACC_use|output~0_combout\);

-- Location: LCFF_X58_Y32_N17
\datapath|ACC_use|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \datapath|ACC_use|output~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACC_use|output\(1));

-- Location: LCCOMB_X58_Y32_N0
\datapath|ALU_use|soma|FA_1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|soma|FA_1|cout~0_combout\ = (\datapath|ACC_use|output\(1) & ((\datapath|in_rf\(1)) # ((\datapath|in_rf\(0) & \datapath|ACC_use|output\(0))))) # (!\datapath|ACC_use|output\(1) & (\datapath|in_rf\(0) & (\datapath|ACC_use|output\(0) & 
-- \datapath|in_rf\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_rf\(0),
	datab => \datapath|ACC_use|output\(0),
	datac => \datapath|ACC_use|output\(1),
	datad => \datapath|in_rf\(1),
	combout => \datapath|ALU_use|soma|FA_1|cout~0_combout\);

-- Location: LCCOMB_X57_Y32_N28
\datapath|ALU_use|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux0~0_combout\ = (\controller|CODE\(1) & (!\controller|CODE\(3) & \controller|CODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|CODE\(1),
	datac => \controller|CODE\(3),
	datad => \controller|CODE\(0),
	combout => \datapath|ALU_use|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y32_N26
\datapath|ALU_use|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux1~0_combout\ = (\datapath|ALU_use|Mux0~0_combout\ & (\datapath|in_rf\(2) $ (\datapath|ALU_use|soma|FA_1|cout~0_combout\ $ (\datapath|ACC_use|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|in_rf\(2),
	datab => \datapath|ALU_use|soma|FA_1|cout~0_combout\,
	datac => \datapath|ACC_use|output\(2),
	datad => \datapath|ALU_use|Mux0~0_combout\,
	combout => \datapath|ALU_use|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y32_N12
\datapath|RF_use|out1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out1~3_combout\ = (\controller|ADDRESS_OUT\(0) & (!\controller|ADDRESS_OUT\(1) & (\datapath|ALU_use|output\(2) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \datapath|ALU_use|output\(2),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out1~3_combout\);

-- Location: LCFF_X63_Y32_N13
\datapath|RF_use|out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out1~3_combout\,
	ena => \datapath|RF_use|out1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out1\(2));

-- Location: LCCOMB_X62_Y32_N30
\datapath|RF_use|out0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out0~3_combout\ = (!\controller|ADDRESS_OUT\(1) & (\controller|enb_rf~regout\ & (!\controller|ADDRESS_OUT\(0) & \datapath|ALU_use|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(1),
	datab => \controller|enb_rf~regout\,
	datac => \controller|ADDRESS_OUT\(0),
	datad => \datapath|ALU_use|output\(2),
	combout => \datapath|RF_use|out0~3_combout\);

-- Location: LCCOMB_X62_Y32_N12
\datapath|RF_use|out0[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out0[3]~1_combout\ = (\rst~combout\) # ((!\controller|ADDRESS_OUT\(0) & (!\controller|ADDRESS_OUT\(1) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \rst~combout\,
	datac => \controller|ADDRESS_OUT\(1),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out0[3]~1_combout\);

-- Location: LCFF_X62_Y32_N9
\datapath|RF_use|out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \datapath|RF_use|out0~3_combout\,
	sload => VCC,
	ena => \datapath|RF_use|out0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out0\(2));

-- Location: LCCOMB_X63_Y32_N18
\datapath|RF_use|out2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out2~3_combout\ = (!\controller|ADDRESS_OUT\(0) & (\controller|ADDRESS_OUT\(1) & (\datapath|ALU_use|output\(2) & \controller|enb_rf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \datapath|ALU_use|output\(2),
	datad => \controller|enb_rf~regout\,
	combout => \datapath|RF_use|out2~3_combout\);

-- Location: LCFF_X63_Y32_N19
\datapath|RF_use|out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out2~3_combout\,
	ena => \datapath|RF_use|out2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out2\(2));

-- Location: LCCOMB_X62_Y32_N8
\datapath|RF_use|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|Mux17~0_combout\ = (\controller|ADDRESS_OUT\(1) & ((\controller|ADDRESS_OUT\(0)) # ((\datapath|RF_use|out2\(2))))) # (!\controller|ADDRESS_OUT\(1) & (!\controller|ADDRESS_OUT\(0) & (\datapath|RF_use|out0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(1),
	datab => \controller|ADDRESS_OUT\(0),
	datac => \datapath|RF_use|out0\(2),
	datad => \datapath|RF_use|out2\(2),
	combout => \datapath|RF_use|Mux17~0_combout\);

-- Location: LCCOMB_X59_Y32_N18
\datapath|RF_use|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|Mux17~1_combout\ = (\controller|ADDRESS_OUT\(0) & ((\datapath|RF_use|Mux17~0_combout\ & (\datapath|RF_use|out3\(2))) # (!\datapath|RF_use|Mux17~0_combout\ & ((\datapath|RF_use|out1\(2)))))) # (!\controller|ADDRESS_OUT\(0) & 
-- (((\datapath|RF_use|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|RF_use|out3\(2),
	datab => \controller|ADDRESS_OUT\(0),
	datac => \datapath|RF_use|out1\(2),
	datad => \datapath|RF_use|Mux17~0_combout\,
	combout => \datapath|RF_use|Mux17~1_combout\);

-- Location: LCFF_X59_Y32_N19
\datapath|RF_use|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|Mux17~1_combout\,
	ena => \controller|ALT_INV_enb_rf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|output\(2));

-- Location: LCCOMB_X59_Y32_N14
\datapath|in_rf~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|in_rf~2_combout\ = (\controller|Mux5~0_combout\ & ((\controller|imm\(0)))) # (!\controller|Mux5~0_combout\ & (\datapath|RF_use|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|RF_use|output\(2),
	datac => \controller|imm\(0),
	datad => \controller|Mux5~0_combout\,
	combout => \datapath|in_rf~2_combout\);

-- Location: LCFF_X59_Y32_N15
\datapath|in_rf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|in_rf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|in_rf\(2));

-- Location: LCCOMB_X58_Y32_N18
\datapath|ALU_use|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux1~1_combout\ = (!\datapath|ALU_use|output[3]~0_combout\ & ((\datapath|ALU_use|output[3]~1_combout\ & (\datapath|ACC_use|output\(2))) # (!\datapath|ALU_use|output[3]~1_combout\ & ((\datapath|in_rf\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACC_use|output\(2),
	datab => \datapath|in_rf\(2),
	datac => \datapath|ALU_use|output[3]~1_combout\,
	datad => \datapath|ALU_use|output[3]~0_combout\,
	combout => \datapath|ALU_use|Mux1~1_combout\);

-- Location: LCCOMB_X58_Y32_N24
\datapath|ALU_use|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux1~2_combout\ = (\datapath|ALU_use|Mux1~0_combout\) # ((\datapath|ALU_use|Mux1~1_combout\) # ((!\datapath|ACC_use|output\(2) & \controller|CODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACC_use|output\(2),
	datab => \datapath|ALU_use|Mux1~0_combout\,
	datac => \controller|CODE\(3),
	datad => \datapath|ALU_use|Mux1~1_combout\,
	combout => \datapath|ALU_use|Mux1~2_combout\);

-- Location: LCFF_X58_Y32_N25
\datapath|ALU_use|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|ALU_use|Mux1~2_combout\,
	ena => \datapath|ALU_use|output[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ALU_use|output\(2));

-- Location: LCCOMB_X60_Y32_N20
\datapath|ACC_use|output~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACC_use|output~1_combout\ = (\controller|enb_acc~regout\ & ((\datapath|ALU_use|output\(2)))) # (!\controller|enb_acc~regout\ & (\datapath|ACC_use|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACC_use|temp\(2),
	datab => \controller|enb_acc~regout\,
	datad => \datapath|ALU_use|output\(2),
	combout => \datapath|ACC_use|output~1_combout\);

-- Location: LCFF_X58_Y32_N27
\datapath|ACC_use|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \datapath|ACC_use|output~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACC_use|output\(2));

-- Location: LCCOMB_X58_Y35_N28
\datapath|output_dp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|output_dp~1_combout\ = (!\rst~combout\ & \datapath|ACC_use|output\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \datapath|ACC_use|output\(2),
	combout => \datapath|output_dp~1_combout\);

-- Location: LCFF_X58_Y35_N29
\datapath|output_dp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|output_dp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|output_dp\(2));

-- Location: LCFF_X60_Y32_N21
\datapath|ACC_use|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \datapath|ACC_use|output~2_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACC_use|temp\(3));

-- Location: LCCOMB_X60_Y32_N22
\datapath|RF_use|out3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out3~4_combout\ = (\datapath|ALU_use|output\(3) & (\controller|ADDRESS_OUT\(0) & (\controller|enb_rf~regout\ & \controller|ADDRESS_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ALU_use|output\(3),
	datab => \controller|ADDRESS_OUT\(0),
	datac => \controller|enb_rf~regout\,
	datad => \controller|ADDRESS_OUT\(1),
	combout => \datapath|RF_use|out3~4_combout\);

-- Location: LCFF_X60_Y32_N23
\datapath|RF_use|out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out3~4_combout\,
	ena => \datapath|RF_use|out3[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out3\(3));

-- Location: LCCOMB_X62_Y32_N28
\datapath|RF_use|out0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out0~4_combout\ = (\controller|enb_rf~regout\ & (!\controller|ADDRESS_OUT\(0) & (!\controller|ADDRESS_OUT\(1) & \datapath|ALU_use|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|enb_rf~regout\,
	datab => \controller|ADDRESS_OUT\(0),
	datac => \controller|ADDRESS_OUT\(1),
	datad => \datapath|ALU_use|output\(3),
	combout => \datapath|RF_use|out0~4_combout\);

-- Location: LCFF_X62_Y32_N27
\datapath|RF_use|out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \datapath|RF_use|out0~4_combout\,
	sload => VCC,
	ena => \datapath|RF_use|out0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out0\(3));

-- Location: LCCOMB_X63_Y32_N6
\datapath|RF_use|out1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|out1~4_combout\ = (\controller|ADDRESS_OUT\(0) & (!\controller|ADDRESS_OUT\(1) & (\controller|enb_rf~regout\ & \datapath|ALU_use|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(0),
	datab => \controller|ADDRESS_OUT\(1),
	datac => \controller|enb_rf~regout\,
	datad => \datapath|ALU_use|output\(3),
	combout => \datapath|RF_use|out1~4_combout\);

-- Location: LCFF_X63_Y32_N7
\datapath|RF_use|out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|out1~4_combout\,
	ena => \datapath|RF_use|out1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|out1\(3));

-- Location: LCCOMB_X62_Y32_N26
\datapath|RF_use|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|Mux16~0_combout\ = (\controller|ADDRESS_OUT\(1) & (\controller|ADDRESS_OUT\(0))) # (!\controller|ADDRESS_OUT\(1) & ((\controller|ADDRESS_OUT\(0) & ((\datapath|RF_use|out1\(3)))) # (!\controller|ADDRESS_OUT\(0) & 
-- (\datapath|RF_use|out0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|ADDRESS_OUT\(1),
	datab => \controller|ADDRESS_OUT\(0),
	datac => \datapath|RF_use|out0\(3),
	datad => \datapath|RF_use|out1\(3),
	combout => \datapath|RF_use|Mux16~0_combout\);

-- Location: LCCOMB_X59_Y32_N28
\datapath|RF_use|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|RF_use|Mux16~1_combout\ = (\controller|ADDRESS_OUT\(1) & ((\datapath|RF_use|Mux16~0_combout\ & ((\datapath|RF_use|out3\(3)))) # (!\datapath|RF_use|Mux16~0_combout\ & (\datapath|RF_use|out2\(3))))) # (!\controller|ADDRESS_OUT\(1) & 
-- (((\datapath|RF_use|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|RF_use|out2\(3),
	datab => \datapath|RF_use|out3\(3),
	datac => \controller|ADDRESS_OUT\(1),
	datad => \datapath|RF_use|Mux16~0_combout\,
	combout => \datapath|RF_use|Mux16~1_combout\);

-- Location: LCFF_X59_Y32_N29
\datapath|RF_use|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|RF_use|Mux16~1_combout\,
	ena => \controller|ALT_INV_enb_rf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|RF_use|output\(3));

-- Location: LCCOMB_X58_Y32_N20
\datapath|in_rf~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|in_rf~3_combout\ = (\controller|Mux5~0_combout\ & (\controller|imm\(1))) # (!\controller|Mux5~0_combout\ & ((\datapath|RF_use|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|imm\(1),
	datac => \datapath|RF_use|output\(3),
	datad => \controller|Mux5~0_combout\,
	combout => \datapath|in_rf~3_combout\);

-- Location: LCFF_X58_Y32_N21
\datapath|in_rf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|in_rf~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|in_rf\(3));

-- Location: LCCOMB_X58_Y32_N2
\datapath|ALU_use|soma|FA_3|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|soma|FA_3|s~0_combout\ = \datapath|in_rf\(3) $ (((\datapath|ACC_use|output\(2) & ((\datapath|in_rf\(2)) # (\datapath|ALU_use|soma|FA_1|cout~0_combout\))) # (!\datapath|ACC_use|output\(2) & (\datapath|in_rf\(2) & 
-- \datapath|ALU_use|soma|FA_1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ACC_use|output\(2),
	datab => \datapath|in_rf\(2),
	datac => \datapath|in_rf\(3),
	datad => \datapath|ALU_use|soma|FA_1|cout~0_combout\,
	combout => \datapath|ALU_use|soma|FA_3|s~0_combout\);

-- Location: LCCOMB_X58_Y32_N28
\datapath|ALU_use|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux0~1_combout\ = (\datapath|ACC_use|output\(3) & (((\datapath|ALU_use|Mux0~0_combout\ & !\datapath|ALU_use|soma|FA_3|s~0_combout\)))) # (!\datapath|ACC_use|output\(3) & ((\controller|CODE\(3)) # ((\datapath|ALU_use|Mux0~0_combout\ & 
-- \datapath|ALU_use|soma|FA_3|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|CODE\(3),
	datab => \datapath|ALU_use|Mux0~0_combout\,
	datac => \datapath|ACC_use|output\(3),
	datad => \datapath|ALU_use|soma|FA_3|s~0_combout\,
	combout => \datapath|ALU_use|Mux0~1_combout\);

-- Location: LCCOMB_X58_Y32_N14
\datapath|ALU_use|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ALU_use|Mux0~3_combout\ = (\datapath|ALU_use|Mux0~1_combout\) # ((\datapath|ALU_use|Mux0~2_combout\ & !\datapath|ALU_use|output[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|ALU_use|Mux0~2_combout\,
	datab => \datapath|ALU_use|output[3]~0_combout\,
	datad => \datapath|ALU_use|Mux0~1_combout\,
	combout => \datapath|ALU_use|Mux0~3_combout\);

-- Location: LCFF_X58_Y32_N15
\datapath|ALU_use|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|ALU_use|Mux0~3_combout\,
	ena => \datapath|ALU_use|output[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ALU_use|output\(3));

-- Location: LCCOMB_X59_Y32_N20
\datapath|ACC_use|output~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|ACC_use|output~2_combout\ = (\controller|enb_acc~regout\ & ((\datapath|ALU_use|output\(3)))) # (!\controller|enb_acc~regout\ & (\datapath|ACC_use|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|enb_acc~regout\,
	datac => \datapath|ACC_use|temp\(3),
	datad => \datapath|ALU_use|output\(3),
	combout => \datapath|ACC_use|output~2_combout\);

-- Location: LCFF_X59_Y32_N21
\datapath|ACC_use|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|ACC_use|output~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|ACC_use|output\(3));

-- Location: LCCOMB_X58_Y35_N14
\datapath|output_dp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|output_dp~2_combout\ = (!\rst~combout\ & \datapath|ACC_use|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \datapath|ACC_use|output\(3),
	combout => \datapath|output_dp~2_combout\);

-- Location: LCFF_X58_Y35_N15
\datapath|output_dp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|output_dp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|output_dp\(3));

-- Location: LCCOMB_X58_Y35_N10
\datapath|output_dp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|output_dp~0_combout\ = (!\rst~combout\ & \datapath|ACC_use|output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \datapath|ACC_use|output\(1),
	combout => \datapath|output_dp~0_combout\);

-- Location: LCFF_X58_Y35_N11
\datapath|output_dp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|output_dp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|output_dp\(1));

-- Location: LCCOMB_X58_Y35_N8
\Conversor|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Mux0~0_combout\ = (\datapath|output_dp\(3) & ((\datapath|output_dp\(2)) # (\datapath|output_dp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|output_dp\(2),
	datac => \datapath|output_dp\(3),
	datad => \datapath|output_dp\(1),
	combout => \Conversor|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y35_N12
\Conversor|Q1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Q1[1]~feeder_combout\ = \Conversor|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Conversor|Mux0~0_combout\,
	combout => \Conversor|Q1[1]~feeder_combout\);

-- Location: LCFF_X54_Y35_N13
\Conversor|Q1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Q1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q1\(1));

-- Location: LCCOMB_X54_Y35_N2
\Conversor|Q1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Q1[2]~feeder_combout\ = \Conversor|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Conversor|Mux0~0_combout\,
	combout => \Conversor|Q1[2]~feeder_combout\);

-- Location: LCFF_X54_Y35_N3
\Conversor|Q1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Q1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q1\(2));

-- Location: LCCOMB_X54_Y35_N0
\Conversor|Q1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Q1[3]~feeder_combout\ = \Conversor|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Conversor|Mux0~0_combout\,
	combout => \Conversor|Q1[3]~feeder_combout\);

-- Location: LCFF_X54_Y35_N1
\Conversor|Q1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Q1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q1\(3));

-- Location: LCCOMB_X54_Y35_N10
\Conversor|Q1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Q1[6]~feeder_combout\ = \Conversor|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Conversor|Mux0~0_combout\,
	combout => \Conversor|Q1[6]~feeder_combout\);

-- Location: LCFF_X54_Y35_N11
\Conversor|Q1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Q1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q1\(6));

-- Location: LCCOMB_X58_Y35_N6
\datapath|output_dp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|output_dp~3_combout\ = (!\rst~combout\ & \datapath|ACC_use|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \datapath|ACC_use|output\(0),
	combout => \datapath|output_dp~3_combout\);

-- Location: LCFF_X58_Y35_N7
\datapath|output_dp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \datapath|output_dp~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|output_dp\(0));

-- Location: LCCOMB_X58_Y35_N16
\Conversor|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Mux7~0_combout\ = (\datapath|output_dp\(2) & (\datapath|output_dp\(1) & (!\datapath|output_dp\(3) & \datapath|output_dp\(0)))) # (!\datapath|output_dp\(2) & (\datapath|output_dp\(1) $ ((!\datapath|output_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|output_dp\(1),
	datab => \datapath|output_dp\(2),
	datac => \datapath|output_dp\(3),
	datad => \datapath|output_dp\(0),
	combout => \Conversor|Mux7~0_combout\);

-- Location: LCFF_X58_Y35_N17
\Conversor|Q2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q2\(0));

-- Location: LCCOMB_X58_Y35_N26
\Conversor|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Mux6~0_combout\ = (\datapath|output_dp\(2) & ((\datapath|output_dp\(1) & (!\datapath|output_dp\(3) & \datapath|output_dp\(0))) # (!\datapath|output_dp\(1) & (\datapath|output_dp\(3))))) # (!\datapath|output_dp\(2) & ((\datapath|output_dp\(0)) # 
-- ((\datapath|output_dp\(1) & !\datapath|output_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|output_dp\(1),
	datab => \datapath|output_dp\(2),
	datac => \datapath|output_dp\(3),
	datad => \datapath|output_dp\(0),
	combout => \Conversor|Mux6~0_combout\);

-- Location: LCFF_X58_Y35_N27
\Conversor|Q2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q2\(1));

-- Location: LCCOMB_X58_Y35_N0
\Conversor|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Mux5~0_combout\ = (\datapath|output_dp\(2) & ((\datapath|output_dp\(0)) # (\datapath|output_dp\(1) $ (!\datapath|output_dp\(3))))) # (!\datapath|output_dp\(2) & (\datapath|output_dp\(0) & ((\datapath|output_dp\(1)) # 
-- (!\datapath|output_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|output_dp\(1),
	datab => \datapath|output_dp\(2),
	datac => \datapath|output_dp\(3),
	datad => \datapath|output_dp\(0),
	combout => \Conversor|Mux5~0_combout\);

-- Location: LCFF_X58_Y35_N1
\Conversor|Q2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q2\(2));

-- Location: LCCOMB_X58_Y35_N2
\Conversor|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Mux4~0_combout\ = (\datapath|output_dp\(1) & ((\datapath|output_dp\(2) & (\datapath|output_dp\(3) $ (\datapath|output_dp\(0)))) # (!\datapath|output_dp\(2) & (\datapath|output_dp\(3) & \datapath|output_dp\(0))))) # (!\datapath|output_dp\(1) & 
-- (!\datapath|output_dp\(3) & (\datapath|output_dp\(2) $ (\datapath|output_dp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|output_dp\(1),
	datab => \datapath|output_dp\(2),
	datac => \datapath|output_dp\(3),
	datad => \datapath|output_dp\(0),
	combout => \Conversor|Mux4~0_combout\);

-- Location: LCFF_X58_Y35_N3
\Conversor|Q2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q2\(3));

-- Location: LCCOMB_X58_Y35_N12
\Conversor|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Mux3~0_combout\ = (!\datapath|output_dp\(0) & ((\datapath|output_dp\(1) & (!\datapath|output_dp\(2) & !\datapath|output_dp\(3))) # (!\datapath|output_dp\(1) & (\datapath|output_dp\(2) & \datapath|output_dp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|output_dp\(1),
	datab => \datapath|output_dp\(2),
	datac => \datapath|output_dp\(3),
	datad => \datapath|output_dp\(0),
	combout => \Conversor|Mux3~0_combout\);

-- Location: LCFF_X58_Y35_N13
\Conversor|Q2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q2\(4));

-- Location: LCCOMB_X58_Y35_N18
\Conversor|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Mux2~0_combout\ = (\datapath|output_dp\(2) & ((\datapath|output_dp\(1) & (\datapath|output_dp\(3) $ (!\datapath|output_dp\(0)))) # (!\datapath|output_dp\(1) & (!\datapath|output_dp\(3) & \datapath|output_dp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|output_dp\(1),
	datab => \datapath|output_dp\(2),
	datac => \datapath|output_dp\(3),
	datad => \datapath|output_dp\(0),
	combout => \Conversor|Mux2~0_combout\);

-- Location: LCFF_X58_Y35_N19
\Conversor|Q2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q2\(5));

-- Location: LCCOMB_X58_Y35_N24
\Conversor|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor|Mux1~0_combout\ = (\datapath|output_dp\(1) & (\datapath|output_dp\(3) & (\datapath|output_dp\(2) $ (\datapath|output_dp\(0))))) # (!\datapath|output_dp\(1) & (!\datapath|output_dp\(3) & (\datapath|output_dp\(2) $ (\datapath|output_dp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|output_dp\(1),
	datab => \datapath|output_dp\(2),
	datac => \datapath|output_dp\(3),
	datad => \datapath|output_dp\(0),
	combout => \Conversor|Mux1~0_combout\);

-- Location: LCFF_X58_Y35_N25
\Conversor|Q2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Conversor|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor|Q2\(6));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(0));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1[1]~I\ : cycloneii_io
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
	datain => \Conversor|Q1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(1));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1[2]~I\ : cycloneii_io
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
	datain => \Conversor|Q1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(2));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1[3]~I\ : cycloneii_io
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
	datain => \Conversor|Q1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(3));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(4));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1[6]~I\ : cycloneii_io
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
	datain => \Conversor|Q1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1(6));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2[0]~I\ : cycloneii_io
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
	datain => \Conversor|Q2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(0));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2[1]~I\ : cycloneii_io
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
	datain => \Conversor|Q2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(1));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2[2]~I\ : cycloneii_io
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
	datain => \Conversor|Q2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(2));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2[3]~I\ : cycloneii_io
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
	datain => \Conversor|Q2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(3));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2[4]~I\ : cycloneii_io
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
	datain => \Conversor|Q2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(4));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2[5]~I\ : cycloneii_io
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
	datain => \Conversor|Q2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(5));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2[6]~I\ : cycloneii_io
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
	datain => \Conversor|Q2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2(6));
END structure;


