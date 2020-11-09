-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/08/2020 22:29:15"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART_TOP IS
    PORT (
	i_CLOCK : IN std_logic;
	i_DATA : IN std_logic_vector(7 DOWNTO 0);
	i_SEND : IN std_logic;
	o_TX : OUT std_logic;
	i_RX : IN std_logic;
	o_LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END UART_TOP;

-- Design Ports Information
-- o_TX	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLOCK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RX	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SEND	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLOCK : std_logic;
SIGNAL ww_i_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_SEND : std_logic;
SIGNAL ww_o_TX : std_logic;
SIGNAL ww_i_RX : std_logic;
SIGNAL ww_o_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_RX|o_BUSY~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \o_TX~output_o\ : std_logic;
SIGNAL \o_LEDR[0]~output_o\ : std_logic;
SIGNAL \o_LEDR[1]~output_o\ : std_logic;
SIGNAL \o_LEDR[2]~output_o\ : std_logic;
SIGNAL \o_LEDR[3]~output_o\ : std_logic;
SIGNAL \o_LEDR[4]~output_o\ : std_logic;
SIGNAL \o_LEDR[5]~output_o\ : std_logic;
SIGNAL \o_LEDR[6]~output_o\ : std_logic;
SIGNAL \o_LEDR[7]~output_o\ : std_logic;
SIGNAL \i_CLOCK~input_o\ : std_logic;
SIGNAL \i_CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_TX|r_INDEX~2_combout\ : std_logic;
SIGNAL \u_TX|LessThan1~0_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[0]~13_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[1]~16\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[2]~17_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[2]~18\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[3]~19_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[3]~20\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[4]~21_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[4]~22\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[5]~23_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[5]~24\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[6]~25_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[6]~26\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[7]~27_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[7]~28\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[8]~29_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[8]~30\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[9]~31_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[9]~32\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[10]~33_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[10]~34\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[11]~35_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[11]~36\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[12]~37_combout\ : std_logic;
SIGNAL \u_TX|LessThan0~9_combout\ : std_logic;
SIGNAL \u_TX|LessThan0~6_combout\ : std_logic;
SIGNAL \u_TX|LessThan0~3_combout\ : std_logic;
SIGNAL \u_TX|LessThan0~29_combout\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[0]~14\ : std_logic;
SIGNAL \u_TX|r_PRESCALER[1]~15_combout\ : std_logic;
SIGNAL \u_TX|Equal0~0_combout\ : std_logic;
SIGNAL \u_TX|Equal0~2_combout\ : std_logic;
SIGNAL \u_TX|Equal0~1_combout\ : std_logic;
SIGNAL \u_TX|Equal0~3_combout\ : std_logic;
SIGNAL \u_TX|o_BUSY~0_combout\ : std_logic;
SIGNAL \i_SEND~input_o\ : std_logic;
SIGNAL \p_TRANSMIT~0_combout\ : std_logic;
SIGNAL \s_TX_START~q\ : std_logic;
SIGNAL \u_TX|o_BUSY~q\ : std_logic;
SIGNAL \u_TX|r_INDEX[0]~0_combout\ : std_logic;
SIGNAL \u_TX|r_INDEX~4_combout\ : std_logic;
SIGNAL \u_TX|r_INDEX~1_combout\ : std_logic;
SIGNAL \u_TX|r_INDEX~3_combout\ : std_logic;
SIGNAL \i_DATA[2]~input_o\ : std_logic;
SIGNAL \r_TX_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \u_TX|r_DATA_BUFFER[3]~feeder_combout\ : std_logic;
SIGNAL \u_TX|process_0~0_combout\ : std_logic;
SIGNAL \i_DATA[1]~input_o\ : std_logic;
SIGNAL \r_TX_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \u_TX|Mux0~1_combout\ : std_logic;
SIGNAL \i_DATA[7]~input_o\ : std_logic;
SIGNAL \r_TX_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \u_TX|r_DATA_BUFFER[8]~feeder_combout\ : std_logic;
SIGNAL \i_DATA[0]~input_o\ : std_logic;
SIGNAL \u_TX|Mux0~0_combout\ : std_logic;
SIGNAL \u_TX|Mux0~2_combout\ : std_logic;
SIGNAL \i_DATA[5]~input_o\ : std_logic;
SIGNAL \r_TX_DATA[5]~feeder_combout\ : std_logic;
SIGNAL \u_TX|r_DATA_BUFFER[6]~feeder_combout\ : std_logic;
SIGNAL \i_DATA[6]~input_o\ : std_logic;
SIGNAL \i_DATA[4]~input_o\ : std_logic;
SIGNAL \u_TX|r_DATA_BUFFER[5]~feeder_combout\ : std_logic;
SIGNAL \i_DATA[3]~input_o\ : std_logic;
SIGNAL \r_TX_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \u_TX|Mux0~3_combout\ : std_logic;
SIGNAL \u_TX|Mux0~4_combout\ : std_logic;
SIGNAL \u_TX|Mux0~5_combout\ : std_logic;
SIGNAL \u_TX|o_TX_LINE~q\ : std_logic;
SIGNAL \i_RX~input_o\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[0]~13_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[11]~40\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[12]~41_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER~24_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[0]~21_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[0]~22_combout\ : std_logic;
SIGNAL \u_RX|LessThan0~0_combout\ : std_logic;
SIGNAL \u_RX|LessThan0~1_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[0]~23_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[0]~14\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[1]~15_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[1]~16\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[2]~17_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[2]~18\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[3]~19_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[3]~20\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[4]~25_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[4]~26\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[5]~27_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[5]~28\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[6]~29_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[6]~30\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[7]~31_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[7]~32\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[8]~33_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[8]~34\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[9]~35_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[9]~36\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[10]~37_combout\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[10]~38\ : std_logic;
SIGNAL \u_RX|r_PRESCALER[11]~39_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX~3_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX~1_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX~0_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX~2_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX~4_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX[3]~6_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX[1]~9_combout\ : std_logic;
SIGNAL \u_RX|Add1~1_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX[2]~10_combout\ : std_logic;
SIGNAL \u_RX|Add1~0_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX[3]~7_combout\ : std_logic;
SIGNAL \u_RX|Decoder0~0_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX~5_combout\ : std_logic;
SIGNAL \u_RX|r_INDEX[0]~8_combout\ : std_logic;
SIGNAL \u_RX|LessThan1~0_combout\ : std_logic;
SIGNAL \u_RX|s_RECIEVING_FLAG~0_combout\ : std_logic;
SIGNAL \u_RX|s_RECIEVING_FLAG~q\ : std_logic;
SIGNAL \u_RX|o_DATA[0]~1_combout\ : std_logic;
SIGNAL \u_RX|o_BUSY~0_combout\ : std_logic;
SIGNAL \u_RX|o_BUSY~q\ : std_logic;
SIGNAL \u_RX|o_BUSY~clkctrl_outclk\ : std_logic;
SIGNAL \u_RX|Decoder0~2_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[1]~1_combout\ : std_logic;
SIGNAL \u_RX|Decoder0~3_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[0]~2_combout\ : std_logic;
SIGNAL \u_RX|Decoder0~1_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[9]~0_combout\ : std_logic;
SIGNAL \u_RX|o_DATA~0_combout\ : std_logic;
SIGNAL \o_LEDR[0]~reg0feeder_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[8]~3_combout\ : std_logic;
SIGNAL \u_RX|o_DATA~2_combout\ : std_logic;
SIGNAL \u_RX|Decoder0~4_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[7]~4_combout\ : std_logic;
SIGNAL \u_RX|o_DATA~3_combout\ : std_logic;
SIGNAL \u_RX|Decoder0~5_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[5]~5_combout\ : std_logic;
SIGNAL \u_RX|o_DATA~4_combout\ : std_logic;
SIGNAL \u_RX|Decoder0~6_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[2]~6_combout\ : std_logic;
SIGNAL \u_RX|o_DATA~5_combout\ : std_logic;
SIGNAL \p_RECIEVE~0_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[4]~9_combout\ : std_logic;
SIGNAL \u_RX|o_DATA~8_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[6]~7_combout\ : std_logic;
SIGNAL \u_RX|o_DATA~6_combout\ : std_logic;
SIGNAL \u_RX|r_DATA_BUFFER[3]~8_combout\ : std_logic;
SIGNAL \u_RX|o_DATA~7_combout\ : std_logic;
SIGNAL \p_RECIEVE~1_combout\ : std_logic;
SIGNAL \p_RECIEVE~2_combout\ : std_logic;
SIGNAL \o_LEDR[0]~reg0_q\ : std_logic;
SIGNAL \o_LEDR[1]~reg0_q\ : std_logic;
SIGNAL \o_LEDR[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_LEDR[2]~reg0_q\ : std_logic;
SIGNAL \o_LEDR[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_LEDR[3]~reg0_q\ : std_logic;
SIGNAL \o_LEDR[4]~reg0_q\ : std_logic;
SIGNAL \o_LEDR[5]~reg0_q\ : std_logic;
SIGNAL \o_LEDR[6]~reg0_q\ : std_logic;
SIGNAL \o_LEDR[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_LEDR[7]~reg0_q\ : std_logic;
SIGNAL \u_TX|r_PRESCALER\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_RX|r_PRESCALER\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_TX|r_INDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_TX|r_DATA_BUFFER\ : std_logic_vector(9 DOWNTO 0);
SIGNAL r_TX_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_RX|o_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_RX|r_DATA_BUFFER\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_RX|r_INDEX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_TX|ALT_INV_o_BUSY~q\ : std_logic;
SIGNAL \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLOCK <= i_CLOCK;
ww_i_DATA <= i_DATA;
ww_i_SEND <= i_SEND;
o_TX <= ww_o_TX;
ww_i_RX <= i_RX;
o_LEDR <= ww_o_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\u_RX|o_BUSY~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_RX|o_BUSY~q\);

\i_CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLOCK~input_o\);
\u_TX|ALT_INV_o_BUSY~q\ <= NOT \u_TX|o_BUSY~q\;
\u_RX|ALT_INV_o_BUSY~clkctrl_outclk\ <= NOT \u_RX|o_BUSY~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y46_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X56_Y0_N2
\o_TX~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_TX|o_TX_LINE~q\,
	devoe => ww_devoe,
	o => \o_TX~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\o_LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LEDR[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\o_LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LEDR[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\o_LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LEDR[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\o_LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LEDR[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\o_LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LEDR[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\o_LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LEDR[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\o_LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LEDR[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\o_LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_LEDR[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_LEDR[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\i_CLOCK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLOCK,
	o => \i_CLOCK~input_o\);

-- Location: CLKCTRL_G19
\i_CLOCK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y47_N28
\u_TX|r_INDEX~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_INDEX~2_combout\ = (\u_TX|r_INDEX\(1) & (\u_TX|r_INDEX\(0) & (!\u_TX|r_INDEX\(3) & \u_TX|r_INDEX\(2)))) # (!\u_TX|r_INDEX\(1) & (!\u_TX|r_INDEX\(0) & (\u_TX|r_INDEX\(3) & !\u_TX|r_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_INDEX\(1),
	datab => \u_TX|r_INDEX\(0),
	datac => \u_TX|r_INDEX\(3),
	datad => \u_TX|r_INDEX\(2),
	combout => \u_TX|r_INDEX~2_combout\);

-- Location: LCCOMB_X55_Y47_N18
\u_TX|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|LessThan1~0_combout\ = ((!\u_TX|r_INDEX\(0) & (!\u_TX|r_INDEX\(2) & !\u_TX|r_INDEX\(1)))) # (!\u_TX|r_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_INDEX\(0),
	datab => \u_TX|r_INDEX\(2),
	datac => \u_TX|r_INDEX\(1),
	datad => \u_TX|r_INDEX\(3),
	combout => \u_TX|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y47_N0
\u_TX|r_PRESCALER[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[0]~13_combout\ = \u_TX|r_PRESCALER\(0) $ (VCC)
-- \u_TX|r_PRESCALER[0]~14\ = CARRY(\u_TX|r_PRESCALER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|r_PRESCALER\(0),
	datad => VCC,
	combout => \u_TX|r_PRESCALER[0]~13_combout\,
	cout => \u_TX|r_PRESCALER[0]~14\);

-- Location: LCCOMB_X56_Y47_N2
\u_TX|r_PRESCALER[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[1]~15_combout\ = (\u_TX|r_PRESCALER\(1) & (!\u_TX|r_PRESCALER[0]~14\)) # (!\u_TX|r_PRESCALER\(1) & ((\u_TX|r_PRESCALER[0]~14\) # (GND)))
-- \u_TX|r_PRESCALER[1]~16\ = CARRY((!\u_TX|r_PRESCALER[0]~14\) # (!\u_TX|r_PRESCALER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(1),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[0]~14\,
	combout => \u_TX|r_PRESCALER[1]~15_combout\,
	cout => \u_TX|r_PRESCALER[1]~16\);

-- Location: LCCOMB_X56_Y47_N4
\u_TX|r_PRESCALER[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[2]~17_combout\ = (\u_TX|r_PRESCALER\(2) & (\u_TX|r_PRESCALER[1]~16\ $ (GND))) # (!\u_TX|r_PRESCALER\(2) & (!\u_TX|r_PRESCALER[1]~16\ & VCC))
-- \u_TX|r_PRESCALER[2]~18\ = CARRY((\u_TX|r_PRESCALER\(2) & !\u_TX|r_PRESCALER[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|r_PRESCALER\(2),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[1]~16\,
	combout => \u_TX|r_PRESCALER[2]~17_combout\,
	cout => \u_TX|r_PRESCALER[2]~18\);

-- Location: FF_X56_Y47_N5
\u_TX|r_PRESCALER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[2]~17_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(2));

-- Location: LCCOMB_X56_Y47_N6
\u_TX|r_PRESCALER[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[3]~19_combout\ = (\u_TX|r_PRESCALER\(3) & (!\u_TX|r_PRESCALER[2]~18\)) # (!\u_TX|r_PRESCALER\(3) & ((\u_TX|r_PRESCALER[2]~18\) # (GND)))
-- \u_TX|r_PRESCALER[3]~20\ = CARRY((!\u_TX|r_PRESCALER[2]~18\) # (!\u_TX|r_PRESCALER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|r_PRESCALER\(3),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[2]~18\,
	combout => \u_TX|r_PRESCALER[3]~19_combout\,
	cout => \u_TX|r_PRESCALER[3]~20\);

-- Location: FF_X56_Y47_N7
\u_TX|r_PRESCALER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[3]~19_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(3));

-- Location: LCCOMB_X56_Y47_N8
\u_TX|r_PRESCALER[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[4]~21_combout\ = (\u_TX|r_PRESCALER\(4) & (\u_TX|r_PRESCALER[3]~20\ $ (GND))) # (!\u_TX|r_PRESCALER\(4) & (!\u_TX|r_PRESCALER[3]~20\ & VCC))
-- \u_TX|r_PRESCALER[4]~22\ = CARRY((\u_TX|r_PRESCALER\(4) & !\u_TX|r_PRESCALER[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|r_PRESCALER\(4),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[3]~20\,
	combout => \u_TX|r_PRESCALER[4]~21_combout\,
	cout => \u_TX|r_PRESCALER[4]~22\);

-- Location: FF_X56_Y47_N9
\u_TX|r_PRESCALER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[4]~21_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(4));

-- Location: LCCOMB_X56_Y47_N10
\u_TX|r_PRESCALER[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[5]~23_combout\ = (\u_TX|r_PRESCALER\(5) & (!\u_TX|r_PRESCALER[4]~22\)) # (!\u_TX|r_PRESCALER\(5) & ((\u_TX|r_PRESCALER[4]~22\) # (GND)))
-- \u_TX|r_PRESCALER[5]~24\ = CARRY((!\u_TX|r_PRESCALER[4]~22\) # (!\u_TX|r_PRESCALER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|r_PRESCALER\(5),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[4]~22\,
	combout => \u_TX|r_PRESCALER[5]~23_combout\,
	cout => \u_TX|r_PRESCALER[5]~24\);

-- Location: FF_X56_Y47_N11
\u_TX|r_PRESCALER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[5]~23_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(5));

-- Location: LCCOMB_X56_Y47_N12
\u_TX|r_PRESCALER[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[6]~25_combout\ = (\u_TX|r_PRESCALER\(6) & (\u_TX|r_PRESCALER[5]~24\ $ (GND))) # (!\u_TX|r_PRESCALER\(6) & (!\u_TX|r_PRESCALER[5]~24\ & VCC))
-- \u_TX|r_PRESCALER[6]~26\ = CARRY((\u_TX|r_PRESCALER\(6) & !\u_TX|r_PRESCALER[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(6),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[5]~24\,
	combout => \u_TX|r_PRESCALER[6]~25_combout\,
	cout => \u_TX|r_PRESCALER[6]~26\);

-- Location: FF_X56_Y47_N13
\u_TX|r_PRESCALER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[6]~25_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(6));

-- Location: LCCOMB_X56_Y47_N14
\u_TX|r_PRESCALER[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[7]~27_combout\ = (\u_TX|r_PRESCALER\(7) & (!\u_TX|r_PRESCALER[6]~26\)) # (!\u_TX|r_PRESCALER\(7) & ((\u_TX|r_PRESCALER[6]~26\) # (GND)))
-- \u_TX|r_PRESCALER[7]~28\ = CARRY((!\u_TX|r_PRESCALER[6]~26\) # (!\u_TX|r_PRESCALER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|r_PRESCALER\(7),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[6]~26\,
	combout => \u_TX|r_PRESCALER[7]~27_combout\,
	cout => \u_TX|r_PRESCALER[7]~28\);

-- Location: FF_X56_Y47_N15
\u_TX|r_PRESCALER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[7]~27_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(7));

-- Location: LCCOMB_X56_Y47_N16
\u_TX|r_PRESCALER[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[8]~29_combout\ = (\u_TX|r_PRESCALER\(8) & (\u_TX|r_PRESCALER[7]~28\ $ (GND))) # (!\u_TX|r_PRESCALER\(8) & (!\u_TX|r_PRESCALER[7]~28\ & VCC))
-- \u_TX|r_PRESCALER[8]~30\ = CARRY((\u_TX|r_PRESCALER\(8) & !\u_TX|r_PRESCALER[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|r_PRESCALER\(8),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[7]~28\,
	combout => \u_TX|r_PRESCALER[8]~29_combout\,
	cout => \u_TX|r_PRESCALER[8]~30\);

-- Location: FF_X56_Y47_N17
\u_TX|r_PRESCALER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[8]~29_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(8));

-- Location: LCCOMB_X56_Y47_N18
\u_TX|r_PRESCALER[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[9]~31_combout\ = (\u_TX|r_PRESCALER\(9) & (!\u_TX|r_PRESCALER[8]~30\)) # (!\u_TX|r_PRESCALER\(9) & ((\u_TX|r_PRESCALER[8]~30\) # (GND)))
-- \u_TX|r_PRESCALER[9]~32\ = CARRY((!\u_TX|r_PRESCALER[8]~30\) # (!\u_TX|r_PRESCALER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(9),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[8]~30\,
	combout => \u_TX|r_PRESCALER[9]~31_combout\,
	cout => \u_TX|r_PRESCALER[9]~32\);

-- Location: FF_X56_Y47_N19
\u_TX|r_PRESCALER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[9]~31_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(9));

-- Location: LCCOMB_X56_Y47_N20
\u_TX|r_PRESCALER[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[10]~33_combout\ = (\u_TX|r_PRESCALER\(10) & (\u_TX|r_PRESCALER[9]~32\ $ (GND))) # (!\u_TX|r_PRESCALER\(10) & (!\u_TX|r_PRESCALER[9]~32\ & VCC))
-- \u_TX|r_PRESCALER[10]~34\ = CARRY((\u_TX|r_PRESCALER\(10) & !\u_TX|r_PRESCALER[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|r_PRESCALER\(10),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[9]~32\,
	combout => \u_TX|r_PRESCALER[10]~33_combout\,
	cout => \u_TX|r_PRESCALER[10]~34\);

-- Location: FF_X56_Y47_N21
\u_TX|r_PRESCALER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[10]~33_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(10));

-- Location: LCCOMB_X56_Y47_N22
\u_TX|r_PRESCALER[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[11]~35_combout\ = (\u_TX|r_PRESCALER\(11) & (!\u_TX|r_PRESCALER[10]~34\)) # (!\u_TX|r_PRESCALER\(11) & ((\u_TX|r_PRESCALER[10]~34\) # (GND)))
-- \u_TX|r_PRESCALER[11]~36\ = CARRY((!\u_TX|r_PRESCALER[10]~34\) # (!\u_TX|r_PRESCALER\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(11),
	datad => VCC,
	cin => \u_TX|r_PRESCALER[10]~34\,
	combout => \u_TX|r_PRESCALER[11]~35_combout\,
	cout => \u_TX|r_PRESCALER[11]~36\);

-- Location: FF_X56_Y47_N23
\u_TX|r_PRESCALER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[11]~35_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(11));

-- Location: LCCOMB_X56_Y47_N24
\u_TX|r_PRESCALER[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_PRESCALER[12]~37_combout\ = \u_TX|r_PRESCALER[11]~36\ $ (!\u_TX|r_PRESCALER\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_TX|r_PRESCALER\(12),
	cin => \u_TX|r_PRESCALER[11]~36\,
	combout => \u_TX|r_PRESCALER[12]~37_combout\);

-- Location: FF_X56_Y47_N25
\u_TX|r_PRESCALER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[12]~37_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(12));

-- Location: LCCOMB_X55_Y47_N14
\u_TX|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|LessThan0~9_combout\ = (!\u_TX|r_PRESCALER\(3) & (((!\u_TX|r_PRESCALER\(1) & !\u_TX|r_PRESCALER\(0))) # (!\u_TX|r_PRESCALER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(2),
	datab => \u_TX|r_PRESCALER\(1),
	datac => \u_TX|r_PRESCALER\(0),
	datad => \u_TX|r_PRESCALER\(3),
	combout => \u_TX|LessThan0~9_combout\);

-- Location: LCCOMB_X56_Y47_N30
\u_TX|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|LessThan0~6_combout\ = ((!\u_TX|r_PRESCALER\(5) & ((\u_TX|LessThan0~9_combout\) # (!\u_TX|r_PRESCALER\(4))))) # (!\u_TX|r_PRESCALER\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(6),
	datab => \u_TX|r_PRESCALER\(5),
	datac => \u_TX|r_PRESCALER\(4),
	datad => \u_TX|LessThan0~9_combout\,
	combout => \u_TX|LessThan0~6_combout\);

-- Location: LCCOMB_X56_Y47_N28
\u_TX|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|LessThan0~3_combout\ = (!\u_TX|r_PRESCALER\(9) & (!\u_TX|r_PRESCALER\(8) & (\u_TX|LessThan0~6_combout\ & !\u_TX|r_PRESCALER\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(9),
	datab => \u_TX|r_PRESCALER\(8),
	datac => \u_TX|LessThan0~6_combout\,
	datad => \u_TX|r_PRESCALER\(7),
	combout => \u_TX|LessThan0~3_combout\);

-- Location: LCCOMB_X56_Y47_N26
\u_TX|LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|LessThan0~29_combout\ = (\u_TX|r_PRESCALER\(12) & ((\u_TX|r_PRESCALER\(11)) # ((\u_TX|r_PRESCALER\(10) & !\u_TX|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(12),
	datab => \u_TX|r_PRESCALER\(10),
	datac => \u_TX|r_PRESCALER\(11),
	datad => \u_TX|LessThan0~3_combout\,
	combout => \u_TX|LessThan0~29_combout\);

-- Location: FF_X56_Y47_N1
\u_TX|r_PRESCALER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[0]~13_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(0));

-- Location: FF_X56_Y47_N3
\u_TX|r_PRESCALER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_PRESCALER[1]~15_combout\,
	sclr => \u_TX|LessThan0~29_combout\,
	ena => \u_TX|o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_PRESCALER\(1));

-- Location: LCCOMB_X55_Y47_N26
\u_TX|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Equal0~0_combout\ = (\u_TX|r_PRESCALER\(1) & (!\u_TX|r_PRESCALER\(7) & (\u_TX|r_PRESCALER\(0) & !\u_TX|r_PRESCALER\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(1),
	datab => \u_TX|r_PRESCALER\(7),
	datac => \u_TX|r_PRESCALER\(0),
	datad => \u_TX|r_PRESCALER\(8),
	combout => \u_TX|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y47_N30
\u_TX|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Equal0~2_combout\ = (!\u_TX|r_PRESCALER\(10) & (\u_TX|r_PRESCALER\(9) & (!\u_TX|r_PRESCALER\(6) & \u_TX|r_PRESCALER\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(10),
	datab => \u_TX|r_PRESCALER\(9),
	datac => \u_TX|r_PRESCALER\(6),
	datad => \u_TX|r_PRESCALER\(11),
	combout => \u_TX|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y47_N24
\u_TX|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Equal0~1_combout\ = (\u_TX|r_PRESCALER\(3) & (!\u_TX|r_PRESCALER\(4) & (\u_TX|r_PRESCALER\(5) & \u_TX|r_PRESCALER\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_PRESCALER\(3),
	datab => \u_TX|r_PRESCALER\(4),
	datac => \u_TX|r_PRESCALER\(5),
	datad => \u_TX|r_PRESCALER\(2),
	combout => \u_TX|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y47_N10
\u_TX|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Equal0~3_combout\ = (\u_TX|Equal0~0_combout\ & (!\u_TX|r_PRESCALER\(12) & (\u_TX|Equal0~2_combout\ & \u_TX|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|Equal0~0_combout\,
	datab => \u_TX|r_PRESCALER\(12),
	datac => \u_TX|Equal0~2_combout\,
	datad => \u_TX|Equal0~1_combout\,
	combout => \u_TX|Equal0~3_combout\);

-- Location: LCCOMB_X55_Y47_N6
\u_TX|o_BUSY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|o_BUSY~0_combout\ = (\u_TX|LessThan1~0_combout\) # (!\u_TX|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_TX|LessThan1~0_combout\,
	datad => \u_TX|Equal0~3_combout\,
	combout => \u_TX|o_BUSY~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\i_SEND~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SEND,
	o => \i_SEND~input_o\);

-- Location: LCCOMB_X55_Y47_N8
\p_TRANSMIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_TRANSMIT~0_combout\ = (!\i_SEND~input_o\ & !\u_TX|o_BUSY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_SEND~input_o\,
	datad => \u_TX|o_BUSY~q\,
	combout => \p_TRANSMIT~0_combout\);

-- Location: FF_X55_Y47_N9
s_TX_START : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_TX_START~q\);

-- Location: FF_X55_Y47_N7
\u_TX|o_BUSY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|o_BUSY~0_combout\,
	asdata => \s_TX_START~q\,
	sload => \u_TX|ALT_INV_o_BUSY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|o_BUSY~q\);

-- Location: LCCOMB_X55_Y47_N20
\u_TX|r_INDEX[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_INDEX[0]~0_combout\ = (\u_TX|o_BUSY~q\ & \u_TX|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|o_BUSY~q\,
	datad => \u_TX|Equal0~3_combout\,
	combout => \u_TX|r_INDEX[0]~0_combout\);

-- Location: FF_X55_Y47_N29
\u_TX|r_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_INDEX~2_combout\,
	ena => \u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_INDEX\(3));

-- Location: LCCOMB_X55_Y47_N16
\u_TX|r_INDEX~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_INDEX~4_combout\ = (!\u_TX|r_INDEX\(3) & (\u_TX|r_INDEX\(2) $ (((\u_TX|r_INDEX\(1) & \u_TX|r_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_INDEX\(1),
	datab => \u_TX|r_INDEX\(0),
	datac => \u_TX|r_INDEX\(2),
	datad => \u_TX|r_INDEX\(3),
	combout => \u_TX|r_INDEX~4_combout\);

-- Location: FF_X55_Y47_N17
\u_TX|r_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_INDEX~4_combout\,
	ena => \u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_INDEX\(2));

-- Location: LCCOMB_X55_Y47_N22
\u_TX|r_INDEX~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_INDEX~1_combout\ = (!\u_TX|r_INDEX\(0) & (((!\u_TX|r_INDEX\(1) & !\u_TX|r_INDEX\(2))) # (!\u_TX|r_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_INDEX\(1),
	datab => \u_TX|r_INDEX\(2),
	datac => \u_TX|r_INDEX\(0),
	datad => \u_TX|r_INDEX\(3),
	combout => \u_TX|r_INDEX~1_combout\);

-- Location: FF_X55_Y47_N23
\u_TX|r_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_INDEX~1_combout\,
	ena => \u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_INDEX\(0));

-- Location: LCCOMB_X55_Y47_N2
\u_TX|r_INDEX~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_INDEX~3_combout\ = (!\u_TX|r_INDEX\(3) & (\u_TX|r_INDEX\(0) $ (\u_TX|r_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_INDEX\(0),
	datac => \u_TX|r_INDEX\(1),
	datad => \u_TX|r_INDEX\(3),
	combout => \u_TX|r_INDEX~3_combout\);

-- Location: FF_X55_Y47_N3
\u_TX|r_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_INDEX~3_combout\,
	ena => \u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_INDEX\(1));

-- Location: IOIBUF_X51_Y54_N1
\i_DATA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(2),
	o => \i_DATA[2]~input_o\);

-- Location: LCCOMB_X54_Y47_N18
\r_TX_DATA[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_TX_DATA[2]~feeder_combout\ = \i_DATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[2]~input_o\,
	combout => \r_TX_DATA[2]~feeder_combout\);

-- Location: FF_X54_Y47_N19
\r_TX_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \r_TX_DATA[2]~feeder_combout\,
	ena => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_DATA(2));

-- Location: LCCOMB_X54_Y47_N12
\u_TX|r_DATA_BUFFER[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_DATA_BUFFER[3]~feeder_combout\ = r_TX_DATA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_TX_DATA(2),
	combout => \u_TX|r_DATA_BUFFER[3]~feeder_combout\);

-- Location: LCCOMB_X55_Y47_N4
\u_TX|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|process_0~0_combout\ = (\s_TX_START~q\ & !\u_TX|o_BUSY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_TX_START~q\,
	datad => \u_TX|o_BUSY~q\,
	combout => \u_TX|process_0~0_combout\);

-- Location: FF_X54_Y47_N13
\u_TX|r_DATA_BUFFER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_DATA_BUFFER[3]~feeder_combout\,
	ena => \u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_DATA_BUFFER\(3));

-- Location: IOIBUF_X51_Y54_N22
\i_DATA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(1),
	o => \i_DATA[1]~input_o\);

-- Location: LCCOMB_X54_Y47_N8
\r_TX_DATA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_TX_DATA[1]~feeder_combout\ = \i_DATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[1]~input_o\,
	combout => \r_TX_DATA[1]~feeder_combout\);

-- Location: FF_X54_Y47_N9
\r_TX_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \r_TX_DATA[1]~feeder_combout\,
	ena => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_DATA(1));

-- Location: FF_X54_Y47_N7
\u_TX|r_DATA_BUFFER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	asdata => r_TX_DATA(1),
	sload => VCC,
	ena => \u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_DATA_BUFFER\(2));

-- Location: LCCOMB_X54_Y47_N6
\u_TX|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Mux0~1_combout\ = (\u_TX|r_INDEX\(1) & ((\u_TX|r_INDEX\(0) & (\u_TX|r_DATA_BUFFER\(3))) # (!\u_TX|r_INDEX\(0) & ((\u_TX|r_DATA_BUFFER\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_DATA_BUFFER\(3),
	datab => \u_TX|r_INDEX\(0),
	datac => \u_TX|r_DATA_BUFFER\(2),
	datad => \u_TX|r_INDEX\(1),
	combout => \u_TX|Mux0~1_combout\);

-- Location: IOIBUF_X58_Y54_N29
\i_DATA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(7),
	o => \i_DATA[7]~input_o\);

-- Location: LCCOMB_X54_Y47_N0
\r_TX_DATA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_TX_DATA[7]~feeder_combout\ = \i_DATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[7]~input_o\,
	combout => \r_TX_DATA[7]~feeder_combout\);

-- Location: FF_X54_Y47_N1
\r_TX_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \r_TX_DATA[7]~feeder_combout\,
	ena => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_DATA(7));

-- Location: LCCOMB_X54_Y47_N26
\u_TX|r_DATA_BUFFER[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_DATA_BUFFER[8]~feeder_combout\ = r_TX_DATA(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_TX_DATA(7),
	combout => \u_TX|r_DATA_BUFFER[8]~feeder_combout\);

-- Location: FF_X54_Y47_N27
\u_TX|r_DATA_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_DATA_BUFFER[8]~feeder_combout\,
	ena => \u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_DATA_BUFFER\(8));

-- Location: IOIBUF_X51_Y54_N29
\i_DATA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(0),
	o => \i_DATA[0]~input_o\);

-- Location: FF_X54_Y47_N5
\r_TX_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	asdata => \i_DATA[0]~input_o\,
	sload => VCC,
	ena => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_DATA(0));

-- Location: FF_X54_Y47_N15
\u_TX|r_DATA_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	asdata => r_TX_DATA(0),
	sload => VCC,
	ena => \u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_DATA_BUFFER\(1));

-- Location: LCCOMB_X54_Y47_N14
\u_TX|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Mux0~0_combout\ = (\u_TX|r_INDEX\(3) & ((\u_TX|r_DATA_BUFFER\(8)) # ((\u_TX|r_INDEX\(0))))) # (!\u_TX|r_INDEX\(3) & (((\u_TX|r_DATA_BUFFER\(1) & \u_TX|r_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_DATA_BUFFER\(8),
	datab => \u_TX|r_INDEX\(3),
	datac => \u_TX|r_DATA_BUFFER\(1),
	datad => \u_TX|r_INDEX\(0),
	combout => \u_TX|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y47_N12
\u_TX|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Mux0~2_combout\ = (\u_TX|r_INDEX\(1) & (!\u_TX|r_INDEX\(3) & (\u_TX|Mux0~1_combout\))) # (!\u_TX|r_INDEX\(1) & ((\u_TX|Mux0~0_combout\) # ((!\u_TX|r_INDEX\(3) & \u_TX|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_INDEX\(1),
	datab => \u_TX|r_INDEX\(3),
	datac => \u_TX|Mux0~1_combout\,
	datad => \u_TX|Mux0~0_combout\,
	combout => \u_TX|Mux0~2_combout\);

-- Location: IOIBUF_X49_Y54_N1
\i_DATA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(5),
	o => \i_DATA[5]~input_o\);

-- Location: LCCOMB_X54_Y47_N20
\r_TX_DATA[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_TX_DATA[5]~feeder_combout\ = \i_DATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[5]~input_o\,
	combout => \r_TX_DATA[5]~feeder_combout\);

-- Location: FF_X54_Y47_N21
\r_TX_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \r_TX_DATA[5]~feeder_combout\,
	ena => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_DATA(5));

-- Location: LCCOMB_X54_Y47_N28
\u_TX|r_DATA_BUFFER[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_DATA_BUFFER[6]~feeder_combout\ = r_TX_DATA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_TX_DATA(5),
	combout => \u_TX|r_DATA_BUFFER[6]~feeder_combout\);

-- Location: FF_X54_Y47_N29
\u_TX|r_DATA_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_DATA_BUFFER[6]~feeder_combout\,
	ena => \u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_DATA_BUFFER\(6));

-- Location: IOIBUF_X54_Y54_N15
\i_DATA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(6),
	o => \i_DATA[6]~input_o\);

-- Location: FF_X54_Y47_N31
\r_TX_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	asdata => \i_DATA[6]~input_o\,
	sload => VCC,
	ena => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_DATA(6));

-- Location: FF_X54_Y47_N17
\u_TX|r_DATA_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	asdata => r_TX_DATA(6),
	sload => VCC,
	ena => \u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_DATA_BUFFER\(7));

-- Location: IOIBUF_X54_Y54_N22
\i_DATA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(4),
	o => \i_DATA[4]~input_o\);

-- Location: FF_X54_Y47_N25
\r_TX_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	asdata => \i_DATA[4]~input_o\,
	sload => VCC,
	ena => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_DATA(4));

-- Location: LCCOMB_X54_Y47_N10
\u_TX|r_DATA_BUFFER[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|r_DATA_BUFFER[5]~feeder_combout\ = r_TX_DATA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_TX_DATA(4),
	combout => \u_TX|r_DATA_BUFFER[5]~feeder_combout\);

-- Location: FF_X54_Y47_N11
\u_TX|r_DATA_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|r_DATA_BUFFER[5]~feeder_combout\,
	ena => \u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_DATA_BUFFER\(5));

-- Location: IOIBUF_X54_Y54_N29
\i_DATA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(3),
	o => \i_DATA[3]~input_o\);

-- Location: LCCOMB_X54_Y47_N22
\r_TX_DATA[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_TX_DATA[3]~feeder_combout\ = \i_DATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[3]~input_o\,
	combout => \r_TX_DATA[3]~feeder_combout\);

-- Location: FF_X54_Y47_N23
\r_TX_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \r_TX_DATA[3]~feeder_combout\,
	ena => \p_TRANSMIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_DATA(3));

-- Location: FF_X54_Y47_N3
\u_TX|r_DATA_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	asdata => r_TX_DATA(3),
	sload => VCC,
	ena => \u_TX|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|r_DATA_BUFFER\(4));

-- Location: LCCOMB_X54_Y47_N2
\u_TX|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Mux0~3_combout\ = (\u_TX|r_INDEX\(0) & ((\u_TX|r_DATA_BUFFER\(5)) # ((\u_TX|r_INDEX\(1))))) # (!\u_TX|r_INDEX\(0) & (((\u_TX|r_DATA_BUFFER\(4) & !\u_TX|r_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_DATA_BUFFER\(5),
	datab => \u_TX|r_INDEX\(0),
	datac => \u_TX|r_DATA_BUFFER\(4),
	datad => \u_TX|r_INDEX\(1),
	combout => \u_TX|Mux0~3_combout\);

-- Location: LCCOMB_X54_Y47_N16
\u_TX|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Mux0~4_combout\ = (\u_TX|r_INDEX\(1) & ((\u_TX|Mux0~3_combout\ & ((\u_TX|r_DATA_BUFFER\(7)))) # (!\u_TX|Mux0~3_combout\ & (\u_TX|r_DATA_BUFFER\(6))))) # (!\u_TX|r_INDEX\(1) & (((\u_TX|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|r_INDEX\(1),
	datab => \u_TX|r_DATA_BUFFER\(6),
	datac => \u_TX|r_DATA_BUFFER\(7),
	datad => \u_TX|Mux0~3_combout\,
	combout => \u_TX|Mux0~4_combout\);

-- Location: LCCOMB_X55_Y47_N0
\u_TX|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TX|Mux0~5_combout\ = (\u_TX|r_INDEX\(2) & (((!\u_TX|r_INDEX\(3) & \u_TX|Mux0~4_combout\)))) # (!\u_TX|r_INDEX\(2) & (\u_TX|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TX|Mux0~2_combout\,
	datab => \u_TX|r_INDEX\(3),
	datac => \u_TX|Mux0~4_combout\,
	datad => \u_TX|r_INDEX\(2),
	combout => \u_TX|Mux0~5_combout\);

-- Location: FF_X55_Y47_N1
\u_TX|o_TX_LINE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_TX|Mux0~5_combout\,
	ena => \u_TX|r_INDEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TX|o_TX_LINE~q\);

-- Location: IOIBUF_X62_Y0_N15
\i_RX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RX,
	o => \i_RX~input_o\);

-- Location: LCCOMB_X58_Y51_N2
\u_RX|r_PRESCALER[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[0]~13_combout\ = \u_RX|r_PRESCALER\(0) $ (VCC)
-- \u_RX|r_PRESCALER[0]~14\ = CARRY(\u_RX|r_PRESCALER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_PRESCALER\(0),
	datad => VCC,
	combout => \u_RX|r_PRESCALER[0]~13_combout\,
	cout => \u_RX|r_PRESCALER[0]~14\);

-- Location: LCCOMB_X58_Y51_N24
\u_RX|r_PRESCALER[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[11]~39_combout\ = (\u_RX|r_PRESCALER\(11) & (!\u_RX|r_PRESCALER[10]~38\)) # (!\u_RX|r_PRESCALER\(11) & ((\u_RX|r_PRESCALER[10]~38\) # (GND)))
-- \u_RX|r_PRESCALER[11]~40\ = CARRY((!\u_RX|r_PRESCALER[10]~38\) # (!\u_RX|r_PRESCALER\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_PRESCALER\(11),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[10]~38\,
	combout => \u_RX|r_PRESCALER[11]~39_combout\,
	cout => \u_RX|r_PRESCALER[11]~40\);

-- Location: LCCOMB_X58_Y51_N26
\u_RX|r_PRESCALER[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[12]~41_combout\ = \u_RX|r_PRESCALER\(12) $ (!\u_RX|r_PRESCALER[11]~40\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(12),
	cin => \u_RX|r_PRESCALER[11]~40\,
	combout => \u_RX|r_PRESCALER[12]~41_combout\);

-- Location: LCCOMB_X59_Y51_N28
\u_RX|r_PRESCALER~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER~24_combout\ = (\u_RX|s_RECIEVING_FLAG~q\) # (!\i_RX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RX|s_RECIEVING_FLAG~q\,
	datad => \i_RX~input_o\,
	combout => \u_RX|r_PRESCALER~24_combout\);

-- Location: FF_X58_Y51_N27
\u_RX|r_PRESCALER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[12]~41_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(12));

-- Location: LCCOMB_X57_Y51_N6
\u_RX|r_PRESCALER[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[0]~21_combout\ = (\u_RX|s_RECIEVING_FLAG~q\ & (((!\u_RX|r_PRESCALER\(10) & !\u_RX|r_PRESCALER\(11))) # (!\u_RX|r_PRESCALER\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|s_RECIEVING_FLAG~q\,
	datab => \u_RX|r_PRESCALER\(10),
	datac => \u_RX|r_PRESCALER\(11),
	datad => \u_RX|r_PRESCALER\(12),
	combout => \u_RX|r_PRESCALER[0]~21_combout\);

-- Location: LCCOMB_X59_Y51_N30
\u_RX|r_PRESCALER[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[0]~22_combout\ = (!\u_RX|r_PRESCALER\(7) & (!\u_RX|r_PRESCALER\(8) & (\u_RX|s_RECIEVING_FLAG~q\ & !\u_RX|r_PRESCALER\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(7),
	datab => \u_RX|r_PRESCALER\(8),
	datac => \u_RX|s_RECIEVING_FLAG~q\,
	datad => \u_RX|r_PRESCALER\(11),
	combout => \u_RX|r_PRESCALER[0]~22_combout\);

-- Location: LCCOMB_X59_Y51_N24
\u_RX|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|LessThan0~0_combout\ = (\u_RX|r_PRESCALER\(3)) # ((\u_RX|r_PRESCALER\(2) & (\u_RX|r_PRESCALER\(1) & \u_RX|r_PRESCALER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(3),
	datab => \u_RX|r_PRESCALER\(2),
	datac => \u_RX|r_PRESCALER\(1),
	datad => \u_RX|r_PRESCALER\(0),
	combout => \u_RX|LessThan0~0_combout\);

-- Location: LCCOMB_X58_Y51_N0
\u_RX|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|LessThan0~1_combout\ = ((!\u_RX|r_PRESCALER\(5) & ((!\u_RX|LessThan0~0_combout\) # (!\u_RX|r_PRESCALER\(4))))) # (!\u_RX|r_PRESCALER\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(4),
	datab => \u_RX|r_PRESCALER\(6),
	datac => \u_RX|r_PRESCALER\(5),
	datad => \u_RX|LessThan0~0_combout\,
	combout => \u_RX|LessThan0~1_combout\);

-- Location: LCCOMB_X58_Y51_N30
\u_RX|r_PRESCALER[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[0]~23_combout\ = (!\u_RX|r_PRESCALER[0]~21_combout\ & ((\u_RX|r_PRESCALER\(9)) # ((!\u_RX|LessThan0~1_combout\) # (!\u_RX|r_PRESCALER[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(9),
	datab => \u_RX|r_PRESCALER[0]~21_combout\,
	datac => \u_RX|r_PRESCALER[0]~22_combout\,
	datad => \u_RX|LessThan0~1_combout\,
	combout => \u_RX|r_PRESCALER[0]~23_combout\);

-- Location: FF_X58_Y51_N3
\u_RX|r_PRESCALER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[0]~13_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(0));

-- Location: LCCOMB_X58_Y51_N4
\u_RX|r_PRESCALER[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[1]~15_combout\ = (\u_RX|r_PRESCALER\(1) & (!\u_RX|r_PRESCALER[0]~14\)) # (!\u_RX|r_PRESCALER\(1) & ((\u_RX|r_PRESCALER[0]~14\) # (GND)))
-- \u_RX|r_PRESCALER[1]~16\ = CARRY((!\u_RX|r_PRESCALER[0]~14\) # (!\u_RX|r_PRESCALER\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_PRESCALER\(1),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[0]~14\,
	combout => \u_RX|r_PRESCALER[1]~15_combout\,
	cout => \u_RX|r_PRESCALER[1]~16\);

-- Location: FF_X58_Y51_N5
\u_RX|r_PRESCALER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[1]~15_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(1));

-- Location: LCCOMB_X58_Y51_N6
\u_RX|r_PRESCALER[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[2]~17_combout\ = (\u_RX|r_PRESCALER\(2) & (\u_RX|r_PRESCALER[1]~16\ $ (GND))) # (!\u_RX|r_PRESCALER\(2) & (!\u_RX|r_PRESCALER[1]~16\ & VCC))
-- \u_RX|r_PRESCALER[2]~18\ = CARRY((\u_RX|r_PRESCALER\(2) & !\u_RX|r_PRESCALER[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(2),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[1]~16\,
	combout => \u_RX|r_PRESCALER[2]~17_combout\,
	cout => \u_RX|r_PRESCALER[2]~18\);

-- Location: FF_X58_Y51_N7
\u_RX|r_PRESCALER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[2]~17_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(2));

-- Location: LCCOMB_X58_Y51_N8
\u_RX|r_PRESCALER[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[3]~19_combout\ = (\u_RX|r_PRESCALER\(3) & (!\u_RX|r_PRESCALER[2]~18\)) # (!\u_RX|r_PRESCALER\(3) & ((\u_RX|r_PRESCALER[2]~18\) # (GND)))
-- \u_RX|r_PRESCALER[3]~20\ = CARRY((!\u_RX|r_PRESCALER[2]~18\) # (!\u_RX|r_PRESCALER\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_PRESCALER\(3),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[2]~18\,
	combout => \u_RX|r_PRESCALER[3]~19_combout\,
	cout => \u_RX|r_PRESCALER[3]~20\);

-- Location: FF_X58_Y51_N9
\u_RX|r_PRESCALER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[3]~19_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(3));

-- Location: LCCOMB_X58_Y51_N10
\u_RX|r_PRESCALER[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[4]~25_combout\ = (\u_RX|r_PRESCALER\(4) & (\u_RX|r_PRESCALER[3]~20\ $ (GND))) # (!\u_RX|r_PRESCALER\(4) & (!\u_RX|r_PRESCALER[3]~20\ & VCC))
-- \u_RX|r_PRESCALER[4]~26\ = CARRY((\u_RX|r_PRESCALER\(4) & !\u_RX|r_PRESCALER[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(4),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[3]~20\,
	combout => \u_RX|r_PRESCALER[4]~25_combout\,
	cout => \u_RX|r_PRESCALER[4]~26\);

-- Location: FF_X58_Y51_N11
\u_RX|r_PRESCALER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[4]~25_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(4));

-- Location: LCCOMB_X58_Y51_N12
\u_RX|r_PRESCALER[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[5]~27_combout\ = (\u_RX|r_PRESCALER\(5) & (!\u_RX|r_PRESCALER[4]~26\)) # (!\u_RX|r_PRESCALER\(5) & ((\u_RX|r_PRESCALER[4]~26\) # (GND)))
-- \u_RX|r_PRESCALER[5]~28\ = CARRY((!\u_RX|r_PRESCALER[4]~26\) # (!\u_RX|r_PRESCALER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(5),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[4]~26\,
	combout => \u_RX|r_PRESCALER[5]~27_combout\,
	cout => \u_RX|r_PRESCALER[5]~28\);

-- Location: FF_X58_Y51_N13
\u_RX|r_PRESCALER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[5]~27_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(5));

-- Location: LCCOMB_X58_Y51_N14
\u_RX|r_PRESCALER[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[6]~29_combout\ = (\u_RX|r_PRESCALER\(6) & (\u_RX|r_PRESCALER[5]~28\ $ (GND))) # (!\u_RX|r_PRESCALER\(6) & (!\u_RX|r_PRESCALER[5]~28\ & VCC))
-- \u_RX|r_PRESCALER[6]~30\ = CARRY((\u_RX|r_PRESCALER\(6) & !\u_RX|r_PRESCALER[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(6),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[5]~28\,
	combout => \u_RX|r_PRESCALER[6]~29_combout\,
	cout => \u_RX|r_PRESCALER[6]~30\);

-- Location: FF_X58_Y51_N15
\u_RX|r_PRESCALER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[6]~29_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(6));

-- Location: LCCOMB_X58_Y51_N16
\u_RX|r_PRESCALER[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[7]~31_combout\ = (\u_RX|r_PRESCALER\(7) & (!\u_RX|r_PRESCALER[6]~30\)) # (!\u_RX|r_PRESCALER\(7) & ((\u_RX|r_PRESCALER[6]~30\) # (GND)))
-- \u_RX|r_PRESCALER[7]~32\ = CARRY((!\u_RX|r_PRESCALER[6]~30\) # (!\u_RX|r_PRESCALER\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_PRESCALER\(7),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[6]~30\,
	combout => \u_RX|r_PRESCALER[7]~31_combout\,
	cout => \u_RX|r_PRESCALER[7]~32\);

-- Location: FF_X58_Y51_N17
\u_RX|r_PRESCALER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[7]~31_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(7));

-- Location: LCCOMB_X58_Y51_N18
\u_RX|r_PRESCALER[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[8]~33_combout\ = (\u_RX|r_PRESCALER\(8) & (\u_RX|r_PRESCALER[7]~32\ $ (GND))) # (!\u_RX|r_PRESCALER\(8) & (!\u_RX|r_PRESCALER[7]~32\ & VCC))
-- \u_RX|r_PRESCALER[8]~34\ = CARRY((\u_RX|r_PRESCALER\(8) & !\u_RX|r_PRESCALER[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(8),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[7]~32\,
	combout => \u_RX|r_PRESCALER[8]~33_combout\,
	cout => \u_RX|r_PRESCALER[8]~34\);

-- Location: FF_X58_Y51_N19
\u_RX|r_PRESCALER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[8]~33_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(8));

-- Location: LCCOMB_X58_Y51_N20
\u_RX|r_PRESCALER[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[9]~35_combout\ = (\u_RX|r_PRESCALER\(9) & (!\u_RX|r_PRESCALER[8]~34\)) # (!\u_RX|r_PRESCALER\(9) & ((\u_RX|r_PRESCALER[8]~34\) # (GND)))
-- \u_RX|r_PRESCALER[9]~36\ = CARRY((!\u_RX|r_PRESCALER[8]~34\) # (!\u_RX|r_PRESCALER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(9),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[8]~34\,
	combout => \u_RX|r_PRESCALER[9]~35_combout\,
	cout => \u_RX|r_PRESCALER[9]~36\);

-- Location: FF_X58_Y51_N21
\u_RX|r_PRESCALER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[9]~35_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(9));

-- Location: LCCOMB_X58_Y51_N22
\u_RX|r_PRESCALER[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_PRESCALER[10]~37_combout\ = (\u_RX|r_PRESCALER\(10) & (\u_RX|r_PRESCALER[9]~36\ $ (GND))) # (!\u_RX|r_PRESCALER\(10) & (!\u_RX|r_PRESCALER[9]~36\ & VCC))
-- \u_RX|r_PRESCALER[10]~38\ = CARRY((\u_RX|r_PRESCALER\(10) & !\u_RX|r_PRESCALER[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(10),
	datad => VCC,
	cin => \u_RX|r_PRESCALER[9]~36\,
	combout => \u_RX|r_PRESCALER[10]~37_combout\,
	cout => \u_RX|r_PRESCALER[10]~38\);

-- Location: FF_X58_Y51_N23
\u_RX|r_PRESCALER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[10]~37_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(10));

-- Location: FF_X58_Y51_N25
\u_RX|r_PRESCALER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_PRESCALER[11]~39_combout\,
	sclr => \u_RX|r_PRESCALER[0]~23_combout\,
	ena => \u_RX|r_PRESCALER~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_PRESCALER\(11));

-- Location: LCCOMB_X57_Y51_N26
\u_RX|r_INDEX~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX~3_combout\ = (\u_RX|r_PRESCALER\(11) & !\u_RX|r_PRESCALER\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RX|r_PRESCALER\(11),
	datad => \u_RX|r_PRESCALER\(10),
	combout => \u_RX|r_INDEX~3_combout\);

-- Location: LCCOMB_X57_Y51_N4
\u_RX|r_INDEX~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX~1_combout\ = (!\u_RX|r_PRESCALER\(1) & (!\u_RX|r_PRESCALER\(4) & (\u_RX|r_PRESCALER\(2) & !\u_RX|r_PRESCALER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(1),
	datab => \u_RX|r_PRESCALER\(4),
	datac => \u_RX|r_PRESCALER\(2),
	datad => \u_RX|r_PRESCALER\(0),
	combout => \u_RX|r_INDEX~1_combout\);

-- Location: LCCOMB_X57_Y51_N30
\u_RX|r_INDEX~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX~0_combout\ = (\u_RX|s_RECIEVING_FLAG~q\ & (!\u_RX|r_PRESCALER\(5) & (!\u_RX|r_PRESCALER\(3) & !\u_RX|r_PRESCALER\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|s_RECIEVING_FLAG~q\,
	datab => \u_RX|r_PRESCALER\(5),
	datac => \u_RX|r_PRESCALER\(3),
	datad => \u_RX|r_PRESCALER\(12),
	combout => \u_RX|r_INDEX~0_combout\);

-- Location: LCCOMB_X58_Y51_N28
\u_RX|r_INDEX~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX~2_combout\ = (!\u_RX|r_PRESCALER\(9) & (\u_RX|r_PRESCALER\(7) & (\u_RX|r_PRESCALER\(6) & \u_RX|r_PRESCALER\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_PRESCALER\(9),
	datab => \u_RX|r_PRESCALER\(7),
	datac => \u_RX|r_PRESCALER\(6),
	datad => \u_RX|r_PRESCALER\(8),
	combout => \u_RX|r_INDEX~2_combout\);

-- Location: LCCOMB_X57_Y51_N20
\u_RX|r_INDEX~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX~4_combout\ = (\u_RX|r_INDEX~3_combout\ & (\u_RX|r_INDEX~1_combout\ & (\u_RX|r_INDEX~0_combout\ & \u_RX|r_INDEX~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX~3_combout\,
	datab => \u_RX|r_INDEX~1_combout\,
	datac => \u_RX|r_INDEX~0_combout\,
	datad => \u_RX|r_INDEX~2_combout\,
	combout => \u_RX|r_INDEX~4_combout\);

-- Location: LCCOMB_X57_Y51_N18
\u_RX|r_INDEX[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX[3]~6_combout\ = (\u_RX|s_RECIEVING_FLAG~q\ & (((!\u_RX|r_INDEX~4_combout\) # (!\u_RX|LessThan1~0_combout\)))) # (!\u_RX|s_RECIEVING_FLAG~q\ & (\i_RX~input_o\ $ (((\u_RX|LessThan1~0_combout\ & \u_RX|r_INDEX~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|s_RECIEVING_FLAG~q\,
	datab => \i_RX~input_o\,
	datac => \u_RX|LessThan1~0_combout\,
	datad => \u_RX|r_INDEX~4_combout\,
	combout => \u_RX|r_INDEX[3]~6_combout\);

-- Location: LCCOMB_X57_Y51_N12
\u_RX|r_INDEX[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX[1]~9_combout\ = (\u_RX|r_INDEX[3]~6_combout\ & (((\u_RX|r_INDEX\(1))))) # (!\u_RX|r_INDEX[3]~6_combout\ & (\u_RX|r_INDEX~5_combout\ & (\u_RX|r_INDEX\(0) $ (\u_RX|r_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(0),
	datab => \u_RX|r_INDEX[3]~6_combout\,
	datac => \u_RX|r_INDEX\(1),
	datad => \u_RX|r_INDEX~5_combout\,
	combout => \u_RX|r_INDEX[1]~9_combout\);

-- Location: FF_X57_Y51_N13
\u_RX|r_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_INDEX[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_INDEX\(1));

-- Location: LCCOMB_X56_Y51_N0
\u_RX|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Add1~1_combout\ = \u_RX|r_INDEX\(2) $ (((\u_RX|r_INDEX\(1) & \u_RX|r_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(2),
	datab => \u_RX|r_INDEX\(1),
	datad => \u_RX|r_INDEX\(0),
	combout => \u_RX|Add1~1_combout\);

-- Location: LCCOMB_X57_Y51_N16
\u_RX|r_INDEX[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX[2]~10_combout\ = (\u_RX|r_INDEX[3]~6_combout\ & (((\u_RX|r_INDEX\(2))))) # (!\u_RX|r_INDEX[3]~6_combout\ & (\u_RX|Add1~1_combout\ & ((\u_RX|r_INDEX~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|Add1~1_combout\,
	datab => \u_RX|r_INDEX[3]~6_combout\,
	datac => \u_RX|r_INDEX\(2),
	datad => \u_RX|r_INDEX~5_combout\,
	combout => \u_RX|r_INDEX[2]~10_combout\);

-- Location: FF_X57_Y51_N17
\u_RX|r_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_INDEX[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_INDEX\(2));

-- Location: LCCOMB_X57_Y50_N2
\u_RX|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Add1~0_combout\ = \u_RX|r_INDEX\(3) $ (((\u_RX|r_INDEX\(2) & (\u_RX|r_INDEX\(0) & \u_RX|r_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(2),
	datab => \u_RX|r_INDEX\(3),
	datac => \u_RX|r_INDEX\(0),
	datad => \u_RX|r_INDEX\(1),
	combout => \u_RX|Add1~0_combout\);

-- Location: LCCOMB_X57_Y51_N24
\u_RX|r_INDEX[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX[3]~7_combout\ = (\u_RX|r_INDEX[3]~6_combout\ & (((\u_RX|r_INDEX\(3))))) # (!\u_RX|r_INDEX[3]~6_combout\ & (\u_RX|Add1~0_combout\ & ((\u_RX|r_INDEX~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|Add1~0_combout\,
	datab => \u_RX|r_INDEX[3]~6_combout\,
	datac => \u_RX|r_INDEX\(3),
	datad => \u_RX|r_INDEX~5_combout\,
	combout => \u_RX|r_INDEX[3]~7_combout\);

-- Location: FF_X57_Y51_N25
\u_RX|r_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_INDEX[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_INDEX\(3));

-- Location: LCCOMB_X57_Y51_N14
\u_RX|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Decoder0~0_combout\ = (!\u_RX|r_INDEX\(2) & !\u_RX|r_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_INDEX\(2),
	datad => \u_RX|r_INDEX\(1),
	combout => \u_RX|Decoder0~0_combout\);

-- Location: LCCOMB_X57_Y51_N0
\u_RX|r_INDEX~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX~5_combout\ = (\u_RX|r_INDEX~4_combout\ & (((!\u_RX|r_INDEX\(0) & \u_RX|Decoder0~0_combout\)) # (!\u_RX|r_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(0),
	datab => \u_RX|r_INDEX\(3),
	datac => \u_RX|Decoder0~0_combout\,
	datad => \u_RX|r_INDEX~4_combout\,
	combout => \u_RX|r_INDEX~5_combout\);

-- Location: LCCOMB_X57_Y51_N22
\u_RX|r_INDEX[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_INDEX[0]~8_combout\ = (\u_RX|r_INDEX\(0) & (\u_RX|r_INDEX~5_combout\ $ (((\u_RX|s_RECIEVING_FLAG~q\) # (\i_RX~input_o\))))) # (!\u_RX|r_INDEX\(0) & (\u_RX|r_INDEX~5_combout\ & ((\u_RX|s_RECIEVING_FLAG~q\) # (\i_RX~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|s_RECIEVING_FLAG~q\,
	datab => \i_RX~input_o\,
	datac => \u_RX|r_INDEX\(0),
	datad => \u_RX|r_INDEX~5_combout\,
	combout => \u_RX|r_INDEX[0]~8_combout\);

-- Location: FF_X57_Y51_N23
\u_RX|r_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_INDEX[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_INDEX\(0));

-- Location: LCCOMB_X57_Y51_N8
\u_RX|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|LessThan1~0_combout\ = ((!\u_RX|r_INDEX\(0) & (!\u_RX|r_INDEX\(1) & !\u_RX|r_INDEX\(2)))) # (!\u_RX|r_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(0),
	datab => \u_RX|r_INDEX\(3),
	datac => \u_RX|r_INDEX\(1),
	datad => \u_RX|r_INDEX\(2),
	combout => \u_RX|LessThan1~0_combout\);

-- Location: LCCOMB_X57_Y51_N10
\u_RX|s_RECIEVING_FLAG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|s_RECIEVING_FLAG~0_combout\ = (\u_RX|s_RECIEVING_FLAG~q\ & ((\u_RX|LessThan1~0_combout\) # ((!\u_RX|r_INDEX~4_combout\)))) # (!\u_RX|s_RECIEVING_FLAG~q\ & (((!\i_RX~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|LessThan1~0_combout\,
	datab => \i_RX~input_o\,
	datac => \u_RX|s_RECIEVING_FLAG~q\,
	datad => \u_RX|r_INDEX~4_combout\,
	combout => \u_RX|s_RECIEVING_FLAG~0_combout\);

-- Location: FF_X57_Y51_N11
\u_RX|s_RECIEVING_FLAG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|s_RECIEVING_FLAG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|s_RECIEVING_FLAG~q\);

-- Location: LCCOMB_X57_Y51_N28
\u_RX|o_DATA[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA[0]~1_combout\ = (\u_RX|r_INDEX\(3) & (\u_RX|r_INDEX~4_combout\ & ((\u_RX|r_INDEX\(0)) # (!\u_RX|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(0),
	datab => \u_RX|r_INDEX\(3),
	datac => \u_RX|Decoder0~0_combout\,
	datad => \u_RX|r_INDEX~4_combout\,
	combout => \u_RX|o_DATA[0]~1_combout\);

-- Location: LCCOMB_X57_Y51_N2
\u_RX|o_BUSY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_BUSY~0_combout\ = (\u_RX|s_RECIEVING_FLAG~q\ & (((\u_RX|o_BUSY~q\ & !\u_RX|o_DATA[0]~1_combout\)))) # (!\u_RX|s_RECIEVING_FLAG~q\ & (((\u_RX|o_BUSY~q\ & !\u_RX|o_DATA[0]~1_combout\)) # (!\i_RX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|s_RECIEVING_FLAG~q\,
	datab => \i_RX~input_o\,
	datac => \u_RX|o_BUSY~q\,
	datad => \u_RX|o_DATA[0]~1_combout\,
	combout => \u_RX|o_BUSY~0_combout\);

-- Location: FF_X57_Y51_N15
\u_RX|o_BUSY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	asdata => \u_RX|o_BUSY~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_BUSY~q\);

-- Location: CLKCTRL_G13
\u_RX|o_BUSY~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_RX|o_BUSY~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_RX|o_BUSY~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y50_N18
\u_RX|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Decoder0~2_combout\ = (\u_RX|s_RECIEVING_FLAG~q\ & (\u_RX|r_INDEX\(0) & !\u_RX|r_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|s_RECIEVING_FLAG~q\,
	datac => \u_RX|r_INDEX\(0),
	datad => \u_RX|r_INDEX\(3),
	combout => \u_RX|Decoder0~2_combout\);

-- Location: LCCOMB_X57_Y50_N14
\u_RX|r_DATA_BUFFER[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[1]~1_combout\ = (\u_RX|Decoder0~2_combout\ & ((\u_RX|Decoder0~0_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~0_combout\ & ((\u_RX|r_DATA_BUFFER\(1)))))) # (!\u_RX|Decoder0~2_combout\ & (((\u_RX|r_DATA_BUFFER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|Decoder0~2_combout\,
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(1),
	datad => \u_RX|Decoder0~0_combout\,
	combout => \u_RX|r_DATA_BUFFER[1]~1_combout\);

-- Location: FF_X57_Y50_N15
\u_RX|r_DATA_BUFFER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(1));

-- Location: LCCOMB_X57_Y50_N20
\u_RX|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Decoder0~3_combout\ = (\u_RX|s_RECIEVING_FLAG~q\ & (!\u_RX|r_INDEX\(0) & !\u_RX|r_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|s_RECIEVING_FLAG~q\,
	datac => \u_RX|r_INDEX\(0),
	datad => \u_RX|r_INDEX\(3),
	combout => \u_RX|Decoder0~3_combout\);

-- Location: LCCOMB_X57_Y50_N28
\u_RX|r_DATA_BUFFER[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[0]~2_combout\ = (\u_RX|Decoder0~3_combout\ & ((\u_RX|Decoder0~0_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~0_combout\ & ((\u_RX|r_DATA_BUFFER\(0)))))) # (!\u_RX|Decoder0~3_combout\ & (((\u_RX|r_DATA_BUFFER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|Decoder0~3_combout\,
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(0),
	datad => \u_RX|Decoder0~0_combout\,
	combout => \u_RX|r_DATA_BUFFER[0]~2_combout\);

-- Location: FF_X57_Y50_N29
\u_RX|r_DATA_BUFFER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(0));

-- Location: LCCOMB_X57_Y50_N16
\u_RX|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Decoder0~1_combout\ = (!\u_RX|r_INDEX\(2) & (\u_RX|r_INDEX\(3) & (!\u_RX|r_INDEX\(1) & \u_RX|s_RECIEVING_FLAG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(2),
	datab => \u_RX|r_INDEX\(3),
	datac => \u_RX|r_INDEX\(1),
	datad => \u_RX|s_RECIEVING_FLAG~q\,
	combout => \u_RX|Decoder0~1_combout\);

-- Location: LCCOMB_X57_Y50_N0
\u_RX|r_DATA_BUFFER[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[9]~0_combout\ = (\u_RX|r_INDEX\(0) & ((\u_RX|Decoder0~1_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~1_combout\ & ((\u_RX|r_DATA_BUFFER\(9)))))) # (!\u_RX|r_INDEX\(0) & (((\u_RX|r_DATA_BUFFER\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(0),
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(9),
	datad => \u_RX|Decoder0~1_combout\,
	combout => \u_RX|r_DATA_BUFFER[9]~0_combout\);

-- Location: FF_X57_Y50_N1
\u_RX|r_DATA_BUFFER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(9));

-- Location: LCCOMB_X56_Y51_N16
\u_RX|o_DATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA~0_combout\ = (\u_RX|r_DATA_BUFFER\(1) & (!\u_RX|r_DATA_BUFFER\(0) & \u_RX|r_DATA_BUFFER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_DATA_BUFFER\(1),
	datac => \u_RX|r_DATA_BUFFER\(0),
	datad => \u_RX|r_DATA_BUFFER\(9),
	combout => \u_RX|o_DATA~0_combout\);

-- Location: FF_X56_Y51_N17
\u_RX|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|o_DATA~0_combout\,
	ena => \u_RX|o_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_DATA\(0));

-- Location: LCCOMB_X56_Y51_N26
\o_LEDR[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_LEDR[0]~reg0feeder_combout\ = \u_RX|o_DATA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_RX|o_DATA\(0),
	combout => \o_LEDR[0]~reg0feeder_combout\);

-- Location: LCCOMB_X57_Y50_N6
\u_RX|r_DATA_BUFFER[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[8]~3_combout\ = (\u_RX|r_INDEX\(0) & (((\u_RX|r_DATA_BUFFER\(8))))) # (!\u_RX|r_INDEX\(0) & ((\u_RX|Decoder0~1_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~1_combout\ & ((\u_RX|r_DATA_BUFFER\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(0),
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(8),
	datad => \u_RX|Decoder0~1_combout\,
	combout => \u_RX|r_DATA_BUFFER[8]~3_combout\);

-- Location: FF_X57_Y50_N7
\u_RX|r_DATA_BUFFER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(8));

-- Location: LCCOMB_X56_Y51_N10
\u_RX|o_DATA~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA~2_combout\ = (\u_RX|r_DATA_BUFFER\(8) & (!\u_RX|r_DATA_BUFFER\(0) & \u_RX|r_DATA_BUFFER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_DATA_BUFFER\(8),
	datac => \u_RX|r_DATA_BUFFER\(0),
	datad => \u_RX|r_DATA_BUFFER\(9),
	combout => \u_RX|o_DATA~2_combout\);

-- Location: FF_X56_Y51_N11
\u_RX|o_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|o_DATA~2_combout\,
	ena => \u_RX|o_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_DATA\(7));

-- Location: LCCOMB_X57_Y50_N24
\u_RX|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Decoder0~4_combout\ = (\u_RX|r_INDEX\(1) & (!\u_RX|r_INDEX\(3) & (\u_RX|r_INDEX\(0) & \u_RX|s_RECIEVING_FLAG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(1),
	datab => \u_RX|r_INDEX\(3),
	datac => \u_RX|r_INDEX\(0),
	datad => \u_RX|s_RECIEVING_FLAG~q\,
	combout => \u_RX|Decoder0~4_combout\);

-- Location: LCCOMB_X57_Y50_N8
\u_RX|r_DATA_BUFFER[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[7]~4_combout\ = (\u_RX|r_INDEX\(2) & ((\u_RX|Decoder0~4_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~4_combout\ & ((\u_RX|r_DATA_BUFFER\(7)))))) # (!\u_RX|r_INDEX\(2) & (((\u_RX|r_DATA_BUFFER\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(2),
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(7),
	datad => \u_RX|Decoder0~4_combout\,
	combout => \u_RX|r_DATA_BUFFER[7]~4_combout\);

-- Location: FF_X57_Y50_N9
\u_RX|r_DATA_BUFFER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(7));

-- Location: LCCOMB_X56_Y51_N22
\u_RX|o_DATA~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA~3_combout\ = (\u_RX|r_DATA_BUFFER\(7) & (!\u_RX|r_DATA_BUFFER\(0) & \u_RX|r_DATA_BUFFER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_DATA_BUFFER\(7),
	datac => \u_RX|r_DATA_BUFFER\(0),
	datad => \u_RX|r_DATA_BUFFER\(9),
	combout => \u_RX|o_DATA~3_combout\);

-- Location: FF_X56_Y51_N23
\u_RX|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|o_DATA~3_combout\,
	ena => \u_RX|o_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_DATA\(6));

-- Location: LCCOMB_X56_Y50_N16
\u_RX|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Decoder0~5_combout\ = (\u_RX|r_INDEX\(2) & !\u_RX|r_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RX|r_INDEX\(2),
	datad => \u_RX|r_INDEX\(1),
	combout => \u_RX|Decoder0~5_combout\);

-- Location: LCCOMB_X57_Y50_N22
\u_RX|r_DATA_BUFFER[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[5]~5_combout\ = (\u_RX|Decoder0~5_combout\ & ((\u_RX|Decoder0~2_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~2_combout\ & ((\u_RX|r_DATA_BUFFER\(5)))))) # (!\u_RX|Decoder0~5_combout\ & (((\u_RX|r_DATA_BUFFER\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|Decoder0~5_combout\,
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(5),
	datad => \u_RX|Decoder0~2_combout\,
	combout => \u_RX|r_DATA_BUFFER[5]~5_combout\);

-- Location: FF_X57_Y50_N23
\u_RX|r_DATA_BUFFER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(5));

-- Location: LCCOMB_X56_Y51_N4
\u_RX|o_DATA~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA~4_combout\ = (\u_RX|r_DATA_BUFFER\(5) & (!\u_RX|r_DATA_BUFFER\(0) & \u_RX|r_DATA_BUFFER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_DATA_BUFFER\(5),
	datac => \u_RX|r_DATA_BUFFER\(0),
	datad => \u_RX|r_DATA_BUFFER\(9),
	combout => \u_RX|o_DATA~4_combout\);

-- Location: FF_X56_Y51_N5
\u_RX|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|o_DATA~4_combout\,
	ena => \u_RX|o_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_DATA\(4));

-- Location: LCCOMB_X57_Y50_N10
\u_RX|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|Decoder0~6_combout\ = (\u_RX|r_INDEX\(1) & (!\u_RX|r_INDEX\(3) & (!\u_RX|r_INDEX\(0) & \u_RX|s_RECIEVING_FLAG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(1),
	datab => \u_RX|r_INDEX\(3),
	datac => \u_RX|r_INDEX\(0),
	datad => \u_RX|s_RECIEVING_FLAG~q\,
	combout => \u_RX|Decoder0~6_combout\);

-- Location: LCCOMB_X57_Y50_N12
\u_RX|r_DATA_BUFFER[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[2]~6_combout\ = (\u_RX|r_INDEX\(2) & (((\u_RX|r_DATA_BUFFER\(2))))) # (!\u_RX|r_INDEX\(2) & ((\u_RX|Decoder0~6_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~6_combout\ & ((\u_RX|r_DATA_BUFFER\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(2),
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(2),
	datad => \u_RX|Decoder0~6_combout\,
	combout => \u_RX|r_DATA_BUFFER[2]~6_combout\);

-- Location: FF_X57_Y50_N13
\u_RX|r_DATA_BUFFER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(2));

-- Location: LCCOMB_X56_Y51_N14
\u_RX|o_DATA~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA~5_combout\ = (!\u_RX|r_DATA_BUFFER\(0) & (\u_RX|r_DATA_BUFFER\(2) & \u_RX|r_DATA_BUFFER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_DATA_BUFFER\(0),
	datac => \u_RX|r_DATA_BUFFER\(2),
	datad => \u_RX|r_DATA_BUFFER\(9),
	combout => \u_RX|o_DATA~5_combout\);

-- Location: FF_X56_Y51_N15
\u_RX|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|o_DATA~5_combout\,
	ena => \u_RX|o_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_DATA\(1));

-- Location: LCCOMB_X56_Y51_N8
\p_RECIEVE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_RECIEVE~0_combout\ = (\u_RX|o_DATA\(6)) # ((\u_RX|o_DATA\(4)) # ((\u_RX|o_DATA\(1)) # (\u_RX|o_DATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|o_DATA\(6),
	datab => \u_RX|o_DATA\(4),
	datac => \u_RX|o_DATA\(1),
	datad => \u_RX|o_DATA\(0),
	combout => \p_RECIEVE~0_combout\);

-- Location: LCCOMB_X57_Y50_N30
\u_RX|r_DATA_BUFFER[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[4]~9_combout\ = (\u_RX|Decoder0~5_combout\ & ((\u_RX|Decoder0~3_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~3_combout\ & ((\u_RX|r_DATA_BUFFER\(4)))))) # (!\u_RX|Decoder0~5_combout\ & (((\u_RX|r_DATA_BUFFER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|Decoder0~5_combout\,
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(4),
	datad => \u_RX|Decoder0~3_combout\,
	combout => \u_RX|r_DATA_BUFFER[4]~9_combout\);

-- Location: FF_X57_Y50_N31
\u_RX|r_DATA_BUFFER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(4));

-- Location: LCCOMB_X56_Y51_N6
\u_RX|o_DATA~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA~8_combout\ = (!\u_RX|r_DATA_BUFFER\(0) & (\u_RX|r_DATA_BUFFER\(4) & \u_RX|r_DATA_BUFFER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_DATA_BUFFER\(0),
	datac => \u_RX|r_DATA_BUFFER\(4),
	datad => \u_RX|r_DATA_BUFFER\(9),
	combout => \u_RX|o_DATA~8_combout\);

-- Location: FF_X56_Y51_N7
\u_RX|o_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|o_DATA~8_combout\,
	ena => \u_RX|o_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_DATA\(3));

-- Location: LCCOMB_X57_Y50_N26
\u_RX|r_DATA_BUFFER[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[6]~7_combout\ = (\u_RX|r_INDEX\(2) & ((\u_RX|Decoder0~6_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~6_combout\ & ((\u_RX|r_DATA_BUFFER\(6)))))) # (!\u_RX|r_INDEX\(2) & (((\u_RX|r_DATA_BUFFER\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(2),
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(6),
	datad => \u_RX|Decoder0~6_combout\,
	combout => \u_RX|r_DATA_BUFFER[6]~7_combout\);

-- Location: FF_X57_Y50_N27
\u_RX|r_DATA_BUFFER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(6));

-- Location: LCCOMB_X56_Y51_N30
\u_RX|o_DATA~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA~6_combout\ = (\u_RX|r_DATA_BUFFER\(6) & (!\u_RX|r_DATA_BUFFER\(0) & \u_RX|r_DATA_BUFFER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RX|r_DATA_BUFFER\(6),
	datac => \u_RX|r_DATA_BUFFER\(0),
	datad => \u_RX|r_DATA_BUFFER\(9),
	combout => \u_RX|o_DATA~6_combout\);

-- Location: FF_X56_Y51_N31
\u_RX|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|o_DATA~6_combout\,
	ena => \u_RX|o_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_DATA\(5));

-- Location: LCCOMB_X57_Y50_N4
\u_RX|r_DATA_BUFFER[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|r_DATA_BUFFER[3]~8_combout\ = (\u_RX|r_INDEX\(2) & (((\u_RX|r_DATA_BUFFER\(3))))) # (!\u_RX|r_INDEX\(2) & ((\u_RX|Decoder0~4_combout\ & (\i_RX~input_o\)) # (!\u_RX|Decoder0~4_combout\ & ((\u_RX|r_DATA_BUFFER\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_INDEX\(2),
	datab => \i_RX~input_o\,
	datac => \u_RX|r_DATA_BUFFER\(3),
	datad => \u_RX|Decoder0~4_combout\,
	combout => \u_RX|r_DATA_BUFFER[3]~8_combout\);

-- Location: FF_X57_Y50_N5
\u_RX|r_DATA_BUFFER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|r_DATA_BUFFER[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|r_DATA_BUFFER\(3));

-- Location: LCCOMB_X56_Y51_N24
\u_RX|o_DATA~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RX|o_DATA~7_combout\ = (\u_RX|r_DATA_BUFFER\(3) & (!\u_RX|r_DATA_BUFFER\(0) & \u_RX|r_DATA_BUFFER\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|r_DATA_BUFFER\(3),
	datac => \u_RX|r_DATA_BUFFER\(0),
	datad => \u_RX|r_DATA_BUFFER\(9),
	combout => \u_RX|o_DATA~7_combout\);

-- Location: FF_X56_Y51_N25
\u_RX|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLOCK~inputclkctrl_outclk\,
	d => \u_RX|o_DATA~7_combout\,
	ena => \u_RX|o_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RX|o_DATA\(2));

-- Location: LCCOMB_X56_Y51_N20
\p_RECIEVE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_RECIEVE~1_combout\ = (\u_RX|o_DATA\(7) & ((\u_RX|o_DATA\(3)) # ((\u_RX|o_DATA\(5)) # (\u_RX|o_DATA\(2))))) # (!\u_RX|o_DATA\(7) & (((!\u_RX|o_DATA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|o_DATA\(7),
	datab => \u_RX|o_DATA\(3),
	datac => \u_RX|o_DATA\(5),
	datad => \u_RX|o_DATA\(2),
	combout => \p_RECIEVE~1_combout\);

-- Location: LCCOMB_X56_Y51_N12
\p_RECIEVE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_RECIEVE~2_combout\ = (\u_RX|o_DATA\(7) & (!\p_RECIEVE~0_combout\ & ((!\p_RECIEVE~1_combout\)))) # (!\u_RX|o_DATA\(7) & (((\u_RX|o_DATA\(6)) # (!\p_RECIEVE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RX|o_DATA\(7),
	datab => \p_RECIEVE~0_combout\,
	datac => \u_RX|o_DATA\(6),
	datad => \p_RECIEVE~1_combout\,
	combout => \p_RECIEVE~2_combout\);

-- Location: FF_X56_Y51_N27
\o_LEDR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\,
	d => \o_LEDR[0]~reg0feeder_combout\,
	ena => \p_RECIEVE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LEDR[0]~reg0_q\);

-- Location: FF_X56_Y51_N9
\o_LEDR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\,
	asdata => \u_RX|o_DATA\(1),
	sload => VCC,
	ena => \p_RECIEVE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LEDR[1]~reg0_q\);

-- Location: LCCOMB_X56_Y51_N28
\o_LEDR[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_LEDR[2]~reg0feeder_combout\ = \u_RX|o_DATA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RX|o_DATA\(2),
	combout => \o_LEDR[2]~reg0feeder_combout\);

-- Location: FF_X56_Y51_N29
\o_LEDR[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\,
	d => \o_LEDR[2]~reg0feeder_combout\,
	ena => \p_RECIEVE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LEDR[2]~reg0_q\);

-- Location: LCCOMB_X56_Y51_N18
\o_LEDR[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_LEDR[3]~reg0feeder_combout\ = \u_RX|o_DATA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_RX|o_DATA\(3),
	combout => \o_LEDR[3]~reg0feeder_combout\);

-- Location: FF_X56_Y51_N19
\o_LEDR[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\,
	d => \o_LEDR[3]~reg0feeder_combout\,
	ena => \p_RECIEVE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LEDR[3]~reg0_q\);

-- Location: FF_X56_Y51_N1
\o_LEDR[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\,
	asdata => \u_RX|o_DATA\(4),
	sload => VCC,
	ena => \p_RECIEVE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LEDR[4]~reg0_q\);

-- Location: FF_X56_Y51_N21
\o_LEDR[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\,
	asdata => \u_RX|o_DATA\(5),
	sload => VCC,
	ena => \p_RECIEVE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LEDR[5]~reg0_q\);

-- Location: FF_X56_Y51_N13
\o_LEDR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\,
	asdata => \u_RX|o_DATA\(6),
	sload => VCC,
	ena => \p_RECIEVE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LEDR[6]~reg0_q\);

-- Location: LCCOMB_X56_Y51_N2
\o_LEDR[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_LEDR[7]~reg0feeder_combout\ = \u_RX|o_DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_RX|o_DATA\(7),
	combout => \o_LEDR[7]~reg0feeder_combout\);

-- Location: FF_X56_Y51_N3
\o_LEDR[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_RX|ALT_INV_o_BUSY~clkctrl_outclk\,
	d => \o_LEDR[7]~reg0feeder_combout\,
	ena => \p_RECIEVE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_LEDR[7]~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_o_TX <= \o_TX~output_o\;

ww_o_LEDR(0) <= \o_LEDR[0]~output_o\;

ww_o_LEDR(1) <= \o_LEDR[1]~output_o\;

ww_o_LEDR(2) <= \o_LEDR[2]~output_o\;

ww_o_LEDR(3) <= \o_LEDR[3]~output_o\;

ww_o_LEDR(4) <= \o_LEDR[4]~output_o\;

ww_o_LEDR(5) <= \o_LEDR[5]~output_o\;

ww_o_LEDR(6) <= \o_LEDR[6]~output_o\;

ww_o_LEDR(7) <= \o_LEDR[7]~output_o\;
END structure;


