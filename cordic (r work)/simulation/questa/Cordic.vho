-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "01/01/2025 17:13:01"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	theta_encoder IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	theta_in : IN IEEE.NUMERIC_STD.signed(31 DOWNTO 0);
	theta_encoded : OUT IEEE.NUMERIC_STD.signed(31 DOWNTO 0)
	);
END theta_encoder;

-- Design Ports Information
-- theta_encoded[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[1]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[4]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[6]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[7]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[8]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[9]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[10]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[11]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[12]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[13]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[14]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[15]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[16]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[17]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[18]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[19]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[20]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[21]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[22]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[23]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[24]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[25]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[26]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[27]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[28]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[29]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[30]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_encoded[31]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[5]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[6]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[7]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[8]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[9]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[10]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[11]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[12]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[13]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[14]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[15]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[16]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[17]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[18]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[19]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[20]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[21]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[22]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[23]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[24]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[25]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[26]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[27]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[28]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[29]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[30]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- theta_in[31]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF theta_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_theta_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_theta_encoded : std_logic_vector(31 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \theta_encoded[0]~output_o\ : std_logic;
SIGNAL \theta_encoded[1]~output_o\ : std_logic;
SIGNAL \theta_encoded[2]~output_o\ : std_logic;
SIGNAL \theta_encoded[3]~output_o\ : std_logic;
SIGNAL \theta_encoded[4]~output_o\ : std_logic;
SIGNAL \theta_encoded[5]~output_o\ : std_logic;
SIGNAL \theta_encoded[6]~output_o\ : std_logic;
SIGNAL \theta_encoded[7]~output_o\ : std_logic;
SIGNAL \theta_encoded[8]~output_o\ : std_logic;
SIGNAL \theta_encoded[9]~output_o\ : std_logic;
SIGNAL \theta_encoded[10]~output_o\ : std_logic;
SIGNAL \theta_encoded[11]~output_o\ : std_logic;
SIGNAL \theta_encoded[12]~output_o\ : std_logic;
SIGNAL \theta_encoded[13]~output_o\ : std_logic;
SIGNAL \theta_encoded[14]~output_o\ : std_logic;
SIGNAL \theta_encoded[15]~output_o\ : std_logic;
SIGNAL \theta_encoded[16]~output_o\ : std_logic;
SIGNAL \theta_encoded[17]~output_o\ : std_logic;
SIGNAL \theta_encoded[18]~output_o\ : std_logic;
SIGNAL \theta_encoded[19]~output_o\ : std_logic;
SIGNAL \theta_encoded[20]~output_o\ : std_logic;
SIGNAL \theta_encoded[21]~output_o\ : std_logic;
SIGNAL \theta_encoded[22]~output_o\ : std_logic;
SIGNAL \theta_encoded[23]~output_o\ : std_logic;
SIGNAL \theta_encoded[24]~output_o\ : std_logic;
SIGNAL \theta_encoded[25]~output_o\ : std_logic;
SIGNAL \theta_encoded[26]~output_o\ : std_logic;
SIGNAL \theta_encoded[27]~output_o\ : std_logic;
SIGNAL \theta_encoded[28]~output_o\ : std_logic;
SIGNAL \theta_encoded[29]~output_o\ : std_logic;
SIGNAL \theta_encoded[30]~output_o\ : std_logic;
SIGNAL \theta_encoded[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \theta_in[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.ADJUST~0_combout\ : std_logic;
SIGNAL \state.ADJUST~q\ : std_logic;
SIGNAL \theta_in[31]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \theta_in[26]~input_o\ : std_logic;
SIGNAL \temp_theta[31]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \theta_in[27]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \theta_in[28]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \theta_in[29]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \theta_in[30]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \theta_in[25]~input_o\ : std_logic;
SIGNAL \theta_in[4]~input_o\ : std_logic;
SIGNAL \temp_theta[4]~feeder_combout\ : std_logic;
SIGNAL \theta_in[3]~input_o\ : std_logic;
SIGNAL \temp_theta[3]~feeder_combout\ : std_logic;
SIGNAL \theta_in[1]~input_o\ : std_logic;
SIGNAL \temp_theta[1]~feeder_combout\ : std_logic;
SIGNAL \theta_in[2]~input_o\ : std_logic;
SIGNAL \temp_theta[2]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \theta_in[8]~input_o\ : std_logic;
SIGNAL \temp_theta[8]~feeder_combout\ : std_logic;
SIGNAL \theta_in[6]~input_o\ : std_logic;
SIGNAL \temp_theta[6]~feeder_combout\ : std_logic;
SIGNAL \theta_in[5]~input_o\ : std_logic;
SIGNAL \theta_in[7]~input_o\ : std_logic;
SIGNAL \temp_theta[7]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \theta_in[19]~input_o\ : std_logic;
SIGNAL \temp_theta[19]~feeder_combout\ : std_logic;
SIGNAL \theta_in[17]~input_o\ : std_logic;
SIGNAL \temp_theta[17]~feeder_combout\ : std_logic;
SIGNAL \theta_in[18]~input_o\ : std_logic;
SIGNAL \theta_in[20]~input_o\ : std_logic;
SIGNAL \temp_theta[20]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \theta_in[9]~input_o\ : std_logic;
SIGNAL \theta_in[12]~input_o\ : std_logic;
SIGNAL \theta_in[10]~input_o\ : std_logic;
SIGNAL \theta_in[11]~input_o\ : std_logic;
SIGNAL \temp_theta[11]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \theta_in[23]~input_o\ : std_logic;
SIGNAL \temp_theta[23]~feeder_combout\ : std_logic;
SIGNAL \theta_in[21]~input_o\ : std_logic;
SIGNAL \temp_theta[21]~feeder_combout\ : std_logic;
SIGNAL \theta_in[22]~input_o\ : std_logic;
SIGNAL \theta_in[24]~input_o\ : std_logic;
SIGNAL \temp_theta[24]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \theta_in[14]~input_o\ : std_logic;
SIGNAL \theta_in[15]~input_o\ : std_logic;
SIGNAL \temp_theta[15]~feeder_combout\ : std_logic;
SIGNAL \theta_in[13]~input_o\ : std_logic;
SIGNAL \theta_in[16]~input_o\ : std_logic;
SIGNAL \temp_theta[16]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state.NORMALIZE~q\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.DONE~q\ : std_logic;
SIGNAL \state.IDLE~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \theta_encoded[0]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[0]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[1]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[2]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[3]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[4]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[5]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[6]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[6]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[7]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[7]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[8]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[8]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[9]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[9]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[10]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[10]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[11]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[11]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[12]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[12]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[13]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[13]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[14]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[14]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[15]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[15]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[16]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[16]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[17]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[17]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[18]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[18]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[19]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[19]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[20]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[20]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[21]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[21]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[22]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[22]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[23]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[23]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[24]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[24]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[25]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[25]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[26]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[26]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[27]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[27]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[28]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[28]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[29]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[29]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[30]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[30]~reg0_q\ : std_logic;
SIGNAL \theta_encoded[31]~reg0feeder_combout\ : std_logic;
SIGNAL \theta_encoded[31]~reg0_q\ : std_logic;
SIGNAL temp_theta : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_state.IDLE~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_theta_in <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(theta_in);
theta_encoded <= IEEE.NUMERIC_STD.SIGNED(ww_theta_encoded);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_state.IDLE~q\ <= NOT \state.IDLE~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N9
\theta_encoded[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[0]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\theta_encoded[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[1]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\theta_encoded[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[2]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\theta_encoded[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[3]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\theta_encoded[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[4]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\theta_encoded[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[5]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[5]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\theta_encoded[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[6]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\theta_encoded[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[7]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[7]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\theta_encoded[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[8]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\theta_encoded[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[9]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\theta_encoded[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[10]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[10]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\theta_encoded[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[11]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[11]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\theta_encoded[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[12]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[12]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\theta_encoded[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[13]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[13]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\theta_encoded[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[14]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[14]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\theta_encoded[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[15]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[15]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\theta_encoded[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[16]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[16]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\theta_encoded[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[17]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[17]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\theta_encoded[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[18]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[18]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\theta_encoded[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[19]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[19]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\theta_encoded[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[20]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[20]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\theta_encoded[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[21]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[21]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\theta_encoded[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[22]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[22]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\theta_encoded[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[23]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[23]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\theta_encoded[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[24]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[24]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\theta_encoded[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[25]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[25]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\theta_encoded[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[26]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[26]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\theta_encoded[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[27]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[27]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\theta_encoded[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[28]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[28]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\theta_encoded[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[29]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[29]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\theta_encoded[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[30]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[30]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\theta_encoded[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \theta_encoded[31]~reg0_q\,
	devoe => ww_devoe,
	o => \theta_encoded[31]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y0_N1
\theta_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(0),
	o => \theta_in[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y20_N30
\state.ADJUST~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.ADJUST~0_combout\ = !\state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.IDLE~q\,
	combout => \state.ADJUST~0_combout\);

-- Location: FF_X25_Y20_N31
\state.ADJUST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.ADJUST~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ADJUST~q\);

-- Location: IOIBUF_X34_Y20_N8
\theta_in[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(31),
	o => \theta_in[31]~input_o\);

-- Location: LCCOMB_X26_Y20_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = temp_theta(26) $ (VCC)
-- \Add0~1\ = CARRY(temp_theta(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(26),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X23_Y24_N15
\theta_in[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(26),
	o => \theta_in[26]~input_o\);

-- Location: LCCOMB_X26_Y20_N24
\temp_theta[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[31]~0_combout\ = (!\state.DONE~q\ & (((!\state.ADJUST~q\ & !\state.NORMALIZE~q\)) # (!\state~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datab => \state.ADJUST~q\,
	datac => \state.NORMALIZE~q\,
	datad => \state~15_combout\,
	combout => \temp_theta[31]~0_combout\);

-- Location: FF_X26_Y20_N7
\temp_theta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	asdata => \theta_in[26]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.IDLE~q\,
	ena => \temp_theta[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(26));

-- Location: LCCOMB_X26_Y20_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\LessThan0~10_combout\ & ((temp_theta(27) & (\Add0~1\ & VCC)) # (!temp_theta(27) & (!\Add0~1\)))) # (!\LessThan0~10_combout\ & ((temp_theta(27) & (!\Add0~1\)) # (!temp_theta(27) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\LessThan0~10_combout\ & (!temp_theta(27) & !\Add0~1\)) # (!\LessThan0~10_combout\ & ((!\Add0~1\) # (!temp_theta(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => temp_theta(27),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X23_Y24_N1
\theta_in[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(27),
	o => \theta_in[27]~input_o\);

-- Location: FF_X26_Y20_N9
\temp_theta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	asdata => \theta_in[27]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.IDLE~q\,
	ena => \temp_theta[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(27));

-- Location: LCCOMB_X26_Y20_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\LessThan0~10_combout\ $ (temp_theta(28) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\LessThan0~10_combout\ & ((temp_theta(28)) # (!\Add0~3\))) # (!\LessThan0~10_combout\ & (temp_theta(28) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => temp_theta(28),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X18_Y0_N15
\theta_in[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(28),
	o => \theta_in[28]~input_o\);

-- Location: FF_X26_Y20_N11
\temp_theta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	asdata => \theta_in[28]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.IDLE~q\,
	ena => \temp_theta[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(28));

-- Location: LCCOMB_X26_Y20_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\LessThan0~10_combout\ & ((temp_theta(29) & (!\Add0~5\)) # (!temp_theta(29) & ((\Add0~5\) # (GND))))) # (!\LessThan0~10_combout\ & ((temp_theta(29) & (\Add0~5\ & VCC)) # (!temp_theta(29) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\LessThan0~10_combout\ & ((!\Add0~5\) # (!temp_theta(29)))) # (!\LessThan0~10_combout\ & (!temp_theta(29) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => temp_theta(29),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X34_Y9_N15
\theta_in[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(29),
	o => \theta_in[29]~input_o\);

-- Location: FF_X26_Y20_N13
\temp_theta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	asdata => \theta_in[29]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \ALT_INV_state.IDLE~q\,
	ena => \temp_theta[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(29));

-- Location: LCCOMB_X26_Y20_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\LessThan0~10_combout\ $ (temp_theta(30) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\LessThan0~10_combout\ & (temp_theta(30) & !\Add0~7\)) # (!\LessThan0~10_combout\ & ((temp_theta(30)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => temp_theta(30),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: IOIBUF_X30_Y0_N1
\theta_in[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(30),
	o => \theta_in[30]~input_o\);

-- Location: LCCOMB_X26_Y20_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.IDLE~q\ & (\Add0~8_combout\)) # (!\state.IDLE~q\ & ((\theta_in[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \Add0~8_combout\,
	datad => \theta_in[30]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X26_Y20_N23
\temp_theta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temp_theta[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(30));

-- Location: IOIBUF_X30_Y24_N1
\theta_in[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(25),
	o => \theta_in[25]~input_o\);

-- Location: FF_X25_Y20_N15
\temp_theta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[25]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(25));

-- Location: IOIBUF_X28_Y24_N22
\theta_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(4),
	o => \theta_in[4]~input_o\);

-- Location: LCCOMB_X28_Y20_N12
\temp_theta[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[4]~feeder_combout\ = \theta_in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[4]~input_o\,
	combout => \temp_theta[4]~feeder_combout\);

-- Location: FF_X28_Y20_N13
\temp_theta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(4));

-- Location: IOIBUF_X34_Y19_N15
\theta_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(3),
	o => \theta_in[3]~input_o\);

-- Location: LCCOMB_X28_Y20_N2
\temp_theta[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[3]~feeder_combout\ = \theta_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[3]~input_o\,
	combout => \temp_theta[3]~feeder_combout\);

-- Location: FF_X28_Y20_N3
\temp_theta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(3));

-- Location: IOIBUF_X32_Y0_N15
\theta_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(1),
	o => \theta_in[1]~input_o\);

-- Location: LCCOMB_X28_Y20_N8
\temp_theta[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[1]~feeder_combout\ = \theta_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[1]~input_o\,
	combout => \temp_theta[1]~feeder_combout\);

-- Location: FF_X28_Y20_N9
\temp_theta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(1));

-- Location: IOIBUF_X28_Y24_N8
\theta_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(2),
	o => \theta_in[2]~input_o\);

-- Location: LCCOMB_X28_Y20_N24
\temp_theta[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[2]~feeder_combout\ = \theta_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[2]~input_o\,
	combout => \temp_theta[2]~feeder_combout\);

-- Location: FF_X28_Y20_N25
\temp_theta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(2));

-- Location: LCCOMB_X28_Y20_N18
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (temp_theta(4)) # ((temp_theta(3)) # ((temp_theta(1)) # (temp_theta(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(4),
	datab => temp_theta(3),
	datac => temp_theta(1),
	datad => temp_theta(2),
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X34_Y7_N8
\theta_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(8),
	o => \theta_in[8]~input_o\);

-- Location: LCCOMB_X28_Y20_N22
\temp_theta[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[8]~feeder_combout\ = \theta_in[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[8]~input_o\,
	combout => \temp_theta[8]~feeder_combout\);

-- Location: FF_X28_Y20_N23
\temp_theta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(8));

-- Location: IOIBUF_X1_Y24_N1
\theta_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(6),
	o => \theta_in[6]~input_o\);

-- Location: LCCOMB_X28_Y20_N20
\temp_theta[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[6]~feeder_combout\ = \theta_in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[6]~input_o\,
	combout => \temp_theta[6]~feeder_combout\);

-- Location: FF_X28_Y20_N21
\temp_theta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(6));

-- Location: IOIBUF_X34_Y2_N22
\theta_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(5),
	o => \theta_in[5]~input_o\);

-- Location: FF_X28_Y20_N15
\temp_theta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(5));

-- Location: IOIBUF_X34_Y4_N15
\theta_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(7),
	o => \theta_in[7]~input_o\);

-- Location: LCCOMB_X28_Y20_N28
\temp_theta[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[7]~feeder_combout\ = \theta_in[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[7]~input_o\,
	combout => \temp_theta[7]~feeder_combout\);

-- Location: FF_X28_Y20_N29
\temp_theta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(7));

-- Location: LCCOMB_X28_Y20_N10
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (temp_theta(8)) # ((temp_theta(6)) # ((temp_theta(5)) # (temp_theta(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(8),
	datab => temp_theta(6),
	datac => temp_theta(5),
	datad => temp_theta(7),
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\theta_in[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(19),
	o => \theta_in[19]~input_o\);

-- Location: LCCOMB_X25_Y20_N22
\temp_theta[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[19]~feeder_combout\ = \theta_in[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[19]~input_o\,
	combout => \temp_theta[19]~feeder_combout\);

-- Location: FF_X25_Y20_N23
\temp_theta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[19]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(19));

-- Location: IOIBUF_X3_Y24_N22
\theta_in[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(17),
	o => \theta_in[17]~input_o\);

-- Location: LCCOMB_X25_Y20_N2
\temp_theta[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[17]~feeder_combout\ = \theta_in[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[17]~input_o\,
	combout => \temp_theta[17]~feeder_combout\);

-- Location: FF_X25_Y20_N3
\temp_theta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[17]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(17));

-- Location: IOIBUF_X30_Y0_N8
\theta_in[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(18),
	o => \theta_in[18]~input_o\);

-- Location: FF_X25_Y20_N13
\temp_theta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[18]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(18));

-- Location: IOIBUF_X25_Y0_N1
\theta_in[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(20),
	o => \theta_in[20]~input_o\);

-- Location: LCCOMB_X25_Y20_N16
\temp_theta[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[20]~feeder_combout\ = \theta_in[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[20]~input_o\,
	combout => \temp_theta[20]~feeder_combout\);

-- Location: FF_X25_Y20_N17
\temp_theta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[20]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(20));

-- Location: LCCOMB_X25_Y20_N12
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (temp_theta(19)) # ((temp_theta(17)) # ((temp_theta(18)) # (temp_theta(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(19),
	datab => temp_theta(17),
	datac => temp_theta(18),
	datad => temp_theta(20),
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X28_Y24_N1
\theta_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(9),
	o => \theta_in[9]~input_o\);

-- Location: FF_X25_Y20_N27
\temp_theta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(9));

-- Location: IOIBUF_X1_Y24_N8
\theta_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(12),
	o => \theta_in[12]~input_o\);

-- Location: FF_X25_Y20_N1
\temp_theta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(12));

-- Location: IOIBUF_X23_Y24_N8
\theta_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(10),
	o => \theta_in[10]~input_o\);

-- Location: FF_X25_Y20_N5
\temp_theta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(10));

-- Location: IOIBUF_X28_Y0_N22
\theta_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(11),
	o => \theta_in[11]~input_o\);

-- Location: LCCOMB_X25_Y20_N10
\temp_theta[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[11]~feeder_combout\ = \theta_in[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[11]~input_o\,
	combout => \temp_theta[11]~feeder_combout\);

-- Location: FF_X25_Y20_N11
\temp_theta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(11));

-- Location: LCCOMB_X25_Y20_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (temp_theta(9)) # ((temp_theta(12)) # ((temp_theta(10)) # (temp_theta(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(9),
	datab => temp_theta(12),
	datac => temp_theta(10),
	datad => temp_theta(11),
	combout => \LessThan0~5_combout\);

-- Location: IOIBUF_X30_Y24_N22
\theta_in[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(23),
	o => \theta_in[23]~input_o\);

-- Location: LCCOMB_X25_Y20_N6
\temp_theta[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[23]~feeder_combout\ = \theta_in[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[23]~input_o\,
	combout => \temp_theta[23]~feeder_combout\);

-- Location: FF_X25_Y20_N7
\temp_theta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[23]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(23));

-- Location: IOIBUF_X0_Y18_N22
\theta_in[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(21),
	o => \theta_in[21]~input_o\);

-- Location: LCCOMB_X25_Y20_N18
\temp_theta[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[21]~feeder_combout\ = \theta_in[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[21]~input_o\,
	combout => \temp_theta[21]~feeder_combout\);

-- Location: FF_X25_Y20_N19
\temp_theta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[21]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(21));

-- Location: IOIBUF_X18_Y24_N22
\theta_in[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(22),
	o => \theta_in[22]~input_o\);

-- Location: FF_X25_Y20_N9
\temp_theta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[22]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(22));

-- Location: IOIBUF_X0_Y18_N15
\theta_in[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(24),
	o => \theta_in[24]~input_o\);

-- Location: LCCOMB_X25_Y20_N20
\temp_theta[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[24]~feeder_combout\ = \theta_in[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[24]~input_o\,
	combout => \temp_theta[24]~feeder_combout\);

-- Location: FF_X25_Y20_N21
\temp_theta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[24]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(24));

-- Location: LCCOMB_X25_Y20_N8
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (temp_theta(23)) # ((temp_theta(21)) # ((temp_theta(22)) # (temp_theta(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(23),
	datab => temp_theta(21),
	datac => temp_theta(22),
	datad => temp_theta(24),
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X23_Y0_N8
\theta_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(14),
	o => \theta_in[14]~input_o\);

-- Location: FF_X24_Y20_N27
\temp_theta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[14]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(14));

-- Location: IOIBUF_X5_Y24_N8
\theta_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(15),
	o => \theta_in[15]~input_o\);

-- Location: LCCOMB_X24_Y20_N28
\temp_theta[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[15]~feeder_combout\ = \theta_in[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[15]~input_o\,
	combout => \temp_theta[15]~feeder_combout\);

-- Location: FF_X24_Y20_N29
\temp_theta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(15));

-- Location: IOIBUF_X0_Y21_N8
\theta_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(13),
	o => \theta_in[13]~input_o\);

-- Location: FF_X24_Y20_N5
\temp_theta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(13));

-- Location: IOIBUF_X0_Y23_N1
\theta_in[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_theta_in(16),
	o => \theta_in[16]~input_o\);

-- Location: LCCOMB_X24_Y20_N18
\temp_theta[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_theta[16]~feeder_combout\ = \theta_in[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \theta_in[16]~input_o\,
	combout => \temp_theta[16]~feeder_combout\);

-- Location: FF_X24_Y20_N19
\temp_theta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp_theta[16]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(16));

-- Location: LCCOMB_X24_Y20_N14
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (temp_theta(14)) # ((temp_theta(15)) # ((temp_theta(13)) # (temp_theta(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(14),
	datab => temp_theta(15),
	datac => temp_theta(13),
	datad => temp_theta(16),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X25_Y20_N28
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~3_combout\) # ((\LessThan0~5_combout\) # ((\LessThan0~2_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X25_Y20_N24
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~0_combout\) # ((temp_theta(0)) # (\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => temp_theta(0),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X25_Y20_N14
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (temp_theta(26)) # ((temp_theta(27)) # ((temp_theta(25) & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(26),
	datab => temp_theta(27),
	datac => temp_theta(25),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X26_Y20_N0
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (temp_theta(30)) # ((temp_theta(28) & (temp_theta(29) & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(28),
	datab => temp_theta(29),
	datac => temp_theta(30),
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X26_Y20_N26
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!temp_theta(31) & \LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_theta(31),
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X26_Y20_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = temp_theta(31) $ (\Add0~9\ $ (\LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_theta(31),
	datad => \LessThan0~10_combout\,
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X26_Y20_N4
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.IDLE~q\ & ((\Add0~10_combout\))) # (!\state.IDLE~q\ & (\theta_in[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \theta_in[31]~input_o\,
	datad => \Add0~10_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X26_Y20_N5
\temp_theta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \temp_theta[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(31));

-- Location: LCCOMB_X26_Y20_N28
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (temp_theta(29)) # ((temp_theta(26) & (temp_theta(27) & temp_theta(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(26),
	datab => temp_theta(29),
	datac => temp_theta(27),
	datad => temp_theta(25),
	combout => \state~12_combout\);

-- Location: LCCOMB_X26_Y20_N30
\state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (temp_theta(30) & (temp_theta(31) & ((\state~12_combout\) # (temp_theta(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_theta(30),
	datab => temp_theta(31),
	datac => \state~12_combout\,
	datad => temp_theta(28),
	combout => \state~13_combout\);

-- Location: LCCOMB_X26_Y20_N18
\state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\state~13_combout\) # ((!temp_theta(31) & !\LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_theta(31),
	datac => \state~13_combout\,
	datad => \LessThan0~9_combout\,
	combout => \state~15_combout\);

-- Location: LCCOMB_X26_Y20_N2
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.ADJUST~q\) # ((\state.NORMALIZE~q\ & !\state~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ADJUST~q\,
	datac => \state.NORMALIZE~q\,
	datad => \state~15_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X26_Y20_N3
\state.NORMALIZE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.NORMALIZE~q\);

-- Location: LCCOMB_X26_Y20_N20
\state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\state.NORMALIZE~q\ & ((\state~13_combout\) # ((!temp_theta(31) & !\LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.NORMALIZE~q\,
	datab => temp_theta(31),
	datac => \state~13_combout\,
	datad => \LessThan0~9_combout\,
	combout => \state~14_combout\);

-- Location: FF_X26_Y20_N21
\state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE~q\);

-- Location: LCCOMB_X24_Y20_N24
\state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~0_combout\ = !\state.DONE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.DONE~q\,
	combout => \state.IDLE~0_combout\);

-- Location: FF_X24_Y20_N25
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.IDLE~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: FF_X25_Y20_N25
\temp_theta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \theta_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_theta(0));

-- Location: LCCOMB_X21_Y20_N16
\theta_encoded[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[0]~reg0feeder_combout\ = temp_theta(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(0),
	combout => \theta_encoded[0]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N17
\theta_encoded[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[0]~reg0_q\);

-- Location: FF_X28_Y20_N19
\theta_encoded[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => temp_theta(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[1]~reg0_q\);

-- Location: FF_X28_Y20_N27
\theta_encoded[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => temp_theta(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[2]~reg0_q\);

-- Location: FF_X28_Y20_N31
\theta_encoded[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => temp_theta(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[3]~reg0_q\);

-- Location: FF_X28_Y20_N5
\theta_encoded[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => temp_theta(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[4]~reg0_q\);

-- Location: FF_X28_Y20_N11
\theta_encoded[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => temp_theta(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[5]~reg0_q\);

-- Location: LCCOMB_X28_Y20_N16
\theta_encoded[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[6]~reg0feeder_combout\ = temp_theta(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(6),
	combout => \theta_encoded[6]~reg0feeder_combout\);

-- Location: FF_X28_Y20_N17
\theta_encoded[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[6]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[6]~reg0_q\);

-- Location: LCCOMB_X28_Y20_N0
\theta_encoded[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[7]~reg0feeder_combout\ = temp_theta(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(7),
	combout => \theta_encoded[7]~reg0feeder_combout\);

-- Location: FF_X28_Y20_N1
\theta_encoded[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[7]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[7]~reg0_q\);

-- Location: LCCOMB_X28_Y20_N6
\theta_encoded[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[8]~reg0feeder_combout\ = temp_theta(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(8),
	combout => \theta_encoded[8]~reg0feeder_combout\);

-- Location: FF_X28_Y20_N7
\theta_encoded[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[8]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[8]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N2
\theta_encoded[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[9]~reg0feeder_combout\ = temp_theta(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(9),
	combout => \theta_encoded[9]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N3
\theta_encoded[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[9]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[9]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N4
\theta_encoded[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[10]~reg0feeder_combout\ = temp_theta(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_theta(10),
	combout => \theta_encoded[10]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N5
\theta_encoded[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[10]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[10]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N6
\theta_encoded[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[11]~reg0feeder_combout\ = temp_theta(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(11),
	combout => \theta_encoded[11]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N7
\theta_encoded[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[11]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[11]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N12
\theta_encoded[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[12]~reg0feeder_combout\ = temp_theta(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_theta(12),
	combout => \theta_encoded[12]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N13
\theta_encoded[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[12]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[12]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N0
\theta_encoded[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[13]~reg0feeder_combout\ = temp_theta(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(13),
	combout => \theta_encoded[13]~reg0feeder_combout\);

-- Location: FF_X23_Y20_N1
\theta_encoded[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[13]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[13]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N2
\theta_encoded[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[14]~reg0feeder_combout\ = temp_theta(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(14),
	combout => \theta_encoded[14]~reg0feeder_combout\);

-- Location: FF_X23_Y20_N3
\theta_encoded[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[14]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[14]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N4
\theta_encoded[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[15]~reg0feeder_combout\ = temp_theta(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(15),
	combout => \theta_encoded[15]~reg0feeder_combout\);

-- Location: FF_X23_Y20_N5
\theta_encoded[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[15]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[15]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N18
\theta_encoded[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[16]~reg0feeder_combout\ = temp_theta(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_theta(16),
	combout => \theta_encoded[16]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N19
\theta_encoded[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[16]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[16]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N24
\theta_encoded[17]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[17]~reg0feeder_combout\ = temp_theta(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_theta(17),
	combout => \theta_encoded[17]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N25
\theta_encoded[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[17]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[17]~reg0_q\);

-- Location: LCCOMB_X26_Y17_N20
\theta_encoded[18]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[18]~reg0feeder_combout\ = temp_theta(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(18),
	combout => \theta_encoded[18]~reg0feeder_combout\);

-- Location: FF_X26_Y17_N21
\theta_encoded[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[18]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[18]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N22
\theta_encoded[19]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[19]~reg0feeder_combout\ = temp_theta(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(19),
	combout => \theta_encoded[19]~reg0feeder_combout\);

-- Location: FF_X23_Y20_N23
\theta_encoded[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[19]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[19]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N10
\theta_encoded[20]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[20]~reg0feeder_combout\ = temp_theta(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(20),
	combout => \theta_encoded[20]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N11
\theta_encoded[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[20]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[20]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N20
\theta_encoded[21]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[21]~reg0feeder_combout\ = temp_theta(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(21),
	combout => \theta_encoded[21]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N21
\theta_encoded[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[21]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[21]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N30
\theta_encoded[22]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[22]~reg0feeder_combout\ = temp_theta(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(22),
	combout => \theta_encoded[22]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N31
\theta_encoded[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[22]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[22]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N28
\theta_encoded[23]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[23]~reg0feeder_combout\ = temp_theta(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(23),
	combout => \theta_encoded[23]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N29
\theta_encoded[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[23]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[23]~reg0_q\);

-- Location: LCCOMB_X21_Y20_N26
\theta_encoded[24]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[24]~reg0feeder_combout\ = temp_theta(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(24),
	combout => \theta_encoded[24]~reg0feeder_combout\);

-- Location: FF_X21_Y20_N27
\theta_encoded[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[24]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[24]~reg0_q\);

-- Location: LCCOMB_X26_Y17_N6
\theta_encoded[25]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[25]~reg0feeder_combout\ = temp_theta(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_theta(25),
	combout => \theta_encoded[25]~reg0feeder_combout\);

-- Location: FF_X26_Y17_N7
\theta_encoded[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[25]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[25]~reg0_q\);

-- Location: LCCOMB_X26_Y17_N0
\theta_encoded[26]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[26]~reg0feeder_combout\ = temp_theta(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_theta(26),
	combout => \theta_encoded[26]~reg0feeder_combout\);

-- Location: FF_X26_Y17_N1
\theta_encoded[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[26]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[26]~reg0_q\);

-- Location: LCCOMB_X26_Y17_N22
\theta_encoded[27]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[27]~reg0feeder_combout\ = temp_theta(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(27),
	combout => \theta_encoded[27]~reg0feeder_combout\);

-- Location: FF_X26_Y17_N23
\theta_encoded[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[27]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[27]~reg0_q\);

-- Location: LCCOMB_X26_Y17_N4
\theta_encoded[28]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[28]~reg0feeder_combout\ = temp_theta(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(28),
	combout => \theta_encoded[28]~reg0feeder_combout\);

-- Location: FF_X26_Y17_N5
\theta_encoded[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[28]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[28]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N12
\theta_encoded[29]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[29]~reg0feeder_combout\ = temp_theta(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(29),
	combout => \theta_encoded[29]~reg0feeder_combout\);

-- Location: FF_X23_Y20_N13
\theta_encoded[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[29]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[29]~reg0_q\);

-- Location: LCCOMB_X26_Y17_N10
\theta_encoded[30]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[30]~reg0feeder_combout\ = temp_theta(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(30),
	combout => \theta_encoded[30]~reg0feeder_combout\);

-- Location: FF_X26_Y17_N11
\theta_encoded[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[30]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[30]~reg0_q\);

-- Location: LCCOMB_X26_Y17_N12
\theta_encoded[31]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \theta_encoded[31]~reg0feeder_combout\ = temp_theta(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_theta(31),
	combout => \theta_encoded[31]~reg0feeder_combout\);

-- Location: FF_X26_Y17_N13
\theta_encoded[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \theta_encoded[31]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \theta_encoded[31]~reg0_q\);

ww_theta_encoded(0) <= \theta_encoded[0]~output_o\;

ww_theta_encoded(1) <= \theta_encoded[1]~output_o\;

ww_theta_encoded(2) <= \theta_encoded[2]~output_o\;

ww_theta_encoded(3) <= \theta_encoded[3]~output_o\;

ww_theta_encoded(4) <= \theta_encoded[4]~output_o\;

ww_theta_encoded(5) <= \theta_encoded[5]~output_o\;

ww_theta_encoded(6) <= \theta_encoded[6]~output_o\;

ww_theta_encoded(7) <= \theta_encoded[7]~output_o\;

ww_theta_encoded(8) <= \theta_encoded[8]~output_o\;

ww_theta_encoded(9) <= \theta_encoded[9]~output_o\;

ww_theta_encoded(10) <= \theta_encoded[10]~output_o\;

ww_theta_encoded(11) <= \theta_encoded[11]~output_o\;

ww_theta_encoded(12) <= \theta_encoded[12]~output_o\;

ww_theta_encoded(13) <= \theta_encoded[13]~output_o\;

ww_theta_encoded(14) <= \theta_encoded[14]~output_o\;

ww_theta_encoded(15) <= \theta_encoded[15]~output_o\;

ww_theta_encoded(16) <= \theta_encoded[16]~output_o\;

ww_theta_encoded(17) <= \theta_encoded[17]~output_o\;

ww_theta_encoded(18) <= \theta_encoded[18]~output_o\;

ww_theta_encoded(19) <= \theta_encoded[19]~output_o\;

ww_theta_encoded(20) <= \theta_encoded[20]~output_o\;

ww_theta_encoded(21) <= \theta_encoded[21]~output_o\;

ww_theta_encoded(22) <= \theta_encoded[22]~output_o\;

ww_theta_encoded(23) <= \theta_encoded[23]~output_o\;

ww_theta_encoded(24) <= \theta_encoded[24]~output_o\;

ww_theta_encoded(25) <= \theta_encoded[25]~output_o\;

ww_theta_encoded(26) <= \theta_encoded[26]~output_o\;

ww_theta_encoded(27) <= \theta_encoded[27]~output_o\;

ww_theta_encoded(28) <= \theta_encoded[28]~output_o\;

ww_theta_encoded(29) <= \theta_encoded[29]~output_o\;

ww_theta_encoded(30) <= \theta_encoded[30]~output_o\;

ww_theta_encoded(31) <= \theta_encoded[31]~output_o\;
END structure;


