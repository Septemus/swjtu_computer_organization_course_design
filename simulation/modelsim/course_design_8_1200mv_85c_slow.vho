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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "06/07/2023 19:09:27"

-- 
-- Device: Altera EP3C40F780C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg_function IS
    PORT (
	en : IN std_logic;
	ra : IN std_logic_vector(1 DOWNTO 0);
	data_input : IN std_logic_vector(7 DOWNTO 0);
	R0 : OUT std_logic_vector(7 DOWNTO 0);
	R1 : OUT std_logic_vector(7 DOWNTO 0);
	R2 : OUT std_logic_vector(7 DOWNTO 0);
	R3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END reg_function;

-- Design Ports Information
-- R0[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[6]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[2]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[7]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ra[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ra[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg_function IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_ra : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_data_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \Decoder0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Decoder0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R0[0]~output_o\ : std_logic;
SIGNAL \R0[1]~output_o\ : std_logic;
SIGNAL \R0[2]~output_o\ : std_logic;
SIGNAL \R0[3]~output_o\ : std_logic;
SIGNAL \R0[4]~output_o\ : std_logic;
SIGNAL \R0[5]~output_o\ : std_logic;
SIGNAL \R0[6]~output_o\ : std_logic;
SIGNAL \R0[7]~output_o\ : std_logic;
SIGNAL \R1[0]~output_o\ : std_logic;
SIGNAL \R1[1]~output_o\ : std_logic;
SIGNAL \R1[2]~output_o\ : std_logic;
SIGNAL \R1[3]~output_o\ : std_logic;
SIGNAL \R1[4]~output_o\ : std_logic;
SIGNAL \R1[5]~output_o\ : std_logic;
SIGNAL \R1[6]~output_o\ : std_logic;
SIGNAL \R1[7]~output_o\ : std_logic;
SIGNAL \R2[0]~output_o\ : std_logic;
SIGNAL \R2[1]~output_o\ : std_logic;
SIGNAL \R2[2]~output_o\ : std_logic;
SIGNAL \R2[3]~output_o\ : std_logic;
SIGNAL \R2[4]~output_o\ : std_logic;
SIGNAL \R2[5]~output_o\ : std_logic;
SIGNAL \R2[6]~output_o\ : std_logic;
SIGNAL \R2[7]~output_o\ : std_logic;
SIGNAL \R3[0]~output_o\ : std_logic;
SIGNAL \R3[1]~output_o\ : std_logic;
SIGNAL \R3[2]~output_o\ : std_logic;
SIGNAL \R3[3]~output_o\ : std_logic;
SIGNAL \R3[4]~output_o\ : std_logic;
SIGNAL \R3[5]~output_o\ : std_logic;
SIGNAL \R3[6]~output_o\ : std_logic;
SIGNAL \R3[7]~output_o\ : std_logic;
SIGNAL \data_input[0]~input_o\ : std_logic;
SIGNAL \ra[1]~input_o\ : std_logic;
SIGNAL \ra[0]~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~0clkctrl_outclk\ : std_logic;
SIGNAL \R0[0]$latch~combout\ : std_logic;
SIGNAL \data_input[1]~input_o\ : std_logic;
SIGNAL \R0[1]$latch~combout\ : std_logic;
SIGNAL \data_input[2]~input_o\ : std_logic;
SIGNAL \R0[2]$latch~combout\ : std_logic;
SIGNAL \data_input[3]~input_o\ : std_logic;
SIGNAL \R0[3]$latch~combout\ : std_logic;
SIGNAL \data_input[4]~input_o\ : std_logic;
SIGNAL \R0[4]$latch~combout\ : std_logic;
SIGNAL \data_input[5]~input_o\ : std_logic;
SIGNAL \R0[5]$latch~combout\ : std_logic;
SIGNAL \data_input[6]~input_o\ : std_logic;
SIGNAL \R0[6]$latch~combout\ : std_logic;
SIGNAL \data_input[7]~input_o\ : std_logic;
SIGNAL \R0[7]$latch~combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~1clkctrl_outclk\ : std_logic;
SIGNAL \R1[0]$latch~combout\ : std_logic;
SIGNAL \R1[1]$latch~combout\ : std_logic;
SIGNAL \R1[2]$latch~combout\ : std_logic;
SIGNAL \R1[3]$latch~combout\ : std_logic;
SIGNAL \R1[4]$latch~combout\ : std_logic;
SIGNAL \R1[5]$latch~combout\ : std_logic;
SIGNAL \R1[6]$latch~combout\ : std_logic;
SIGNAL \R1[7]$latch~combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~2clkctrl_outclk\ : std_logic;
SIGNAL \R2[0]$latch~combout\ : std_logic;
SIGNAL \R2[1]$latch~combout\ : std_logic;
SIGNAL \R2[2]$latch~combout\ : std_logic;
SIGNAL \R2[3]$latch~combout\ : std_logic;
SIGNAL \R2[4]$latch~combout\ : std_logic;
SIGNAL \R2[5]$latch~combout\ : std_logic;
SIGNAL \R2[6]$latch~combout\ : std_logic;
SIGNAL \R2[7]$latch~combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~3clkctrl_outclk\ : std_logic;
SIGNAL \R3[0]$latch~combout\ : std_logic;
SIGNAL \R3[1]$latch~combout\ : std_logic;
SIGNAL \R3[2]$latch~combout\ : std_logic;
SIGNAL \R3[3]$latch~combout\ : std_logic;
SIGNAL \R3[4]$latch~combout\ : std_logic;
SIGNAL \R3[5]$latch~combout\ : std_logic;
SIGNAL \R3[6]$latch~combout\ : std_logic;
SIGNAL \R3[7]$latch~combout\ : std_logic;

BEGIN

ww_en <= en;
ww_ra <= ra;
ww_data_input <= data_input;
R0 <= ww_R0;
R1 <= ww_R1;
R2 <= ww_R2;
R3 <= ww_R3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Decoder0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~1_combout\);

\Decoder0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~0_combout\);

\Decoder0~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~3_combout\);

\Decoder0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Decoder0~2_combout\);

-- Location: IOOBUF_X32_Y43_N9
\R0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \R0[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\R0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \R0[1]~output_o\);

-- Location: IOOBUF_X0_Y41_N23
\R0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \R0[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\R0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \R0[3]~output_o\);

-- Location: IOOBUF_X5_Y43_N30
\R0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[4]$latch~combout\,
	devoe => ww_devoe,
	o => \R0[4]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\R0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[5]$latch~combout\,
	devoe => ww_devoe,
	o => \R0[5]~output_o\);

-- Location: IOOBUF_X14_Y43_N30
\R0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[6]$latch~combout\,
	devoe => ww_devoe,
	o => \R0[6]~output_o\);

-- Location: IOOBUF_X3_Y43_N9
\R0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[7]$latch~combout\,
	devoe => ww_devoe,
	o => \R0[7]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\R1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \R1[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N2
\R1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \R1[1]~output_o\);

-- Location: IOOBUF_X0_Y41_N2
\R1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \R1[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\R1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \R1[3]~output_o\);

-- Location: IOOBUF_X7_Y43_N9
\R1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[4]$latch~combout\,
	devoe => ww_devoe,
	o => \R1[4]~output_o\);

-- Location: IOOBUF_X25_Y43_N30
\R1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \R1[5]~output_o\);

-- Location: IOOBUF_X16_Y43_N9
\R1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[6]$latch~combout\,
	devoe => ww_devoe,
	o => \R1[6]~output_o\);

-- Location: IOOBUF_X3_Y43_N16
\R1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[7]$latch~combout\,
	devoe => ww_devoe,
	o => \R1[7]~output_o\);

-- Location: IOOBUF_X32_Y43_N2
\R2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \R2[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N9
\R2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \R2[1]~output_o\);

-- Location: IOOBUF_X0_Y40_N16
\R2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[2]$latch~combout\,
	devoe => ww_devoe,
	o => \R2[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\R2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[3]$latch~combout\,
	devoe => ww_devoe,
	o => \R2[3]~output_o\);

-- Location: IOOBUF_X5_Y43_N23
\R2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[4]$latch~combout\,
	devoe => ww_devoe,
	o => \R2[4]~output_o\);

-- Location: IOOBUF_X25_Y43_N16
\R2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[5]$latch~combout\,
	devoe => ww_devoe,
	o => \R2[5]~output_o\);

-- Location: IOOBUF_X11_Y43_N9
\R2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[6]$latch~combout\,
	devoe => ww_devoe,
	o => \R2[6]~output_o\);

-- Location: IOOBUF_X5_Y43_N9
\R2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[7]$latch~combout\,
	devoe => ww_devoe,
	o => \R2[7]~output_o\);

-- Location: IOOBUF_X41_Y43_N16
\R3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[0]$latch~combout\,
	devoe => ww_devoe,
	o => \R3[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\R3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[1]$latch~combout\,
	devoe => ww_devoe,
	o => \R3[1]~output_o\);

-- Location: IOOBUF_X1_Y43_N9
\R3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[2]$latch~combout\,
	devoe => ww_devoe,
	o => \R3[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\R3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[3]$latch~combout\,
	devoe => ww_devoe,
	o => \R3[3]~output_o\);

-- Location: IOOBUF_X7_Y43_N16
\R3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[4]$latch~combout\,
	devoe => ww_devoe,
	o => \R3[4]~output_o\);

-- Location: IOOBUF_X25_Y43_N2
\R3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[5]$latch~combout\,
	devoe => ww_devoe,
	o => \R3[5]~output_o\);

-- Location: IOOBUF_X14_Y43_N23
\R3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[6]$latch~combout\,
	devoe => ww_devoe,
	o => \R3[6]~output_o\);

-- Location: IOOBUF_X3_Y43_N23
\R3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[7]$latch~combout\,
	devoe => ww_devoe,
	o => \R3[7]~output_o\);

-- Location: IOIBUF_X43_Y43_N15
\data_input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input(0),
	o => \data_input[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\ra[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ra(1),
	o => \ra[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\ra[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ra(0),
	o => \ra[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X37_Y1_N10
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\ra[1]~input_o\ & (!\ra[0]~input_o\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra[1]~input_o\,
	datac => \ra[0]~input_o\,
	datad => \en~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: CLKCTRL_G18
\Decoder0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~0clkctrl_outclk\);

-- Location: LCCOMB_X33_Y42_N8
\R0[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0[0]$latch~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_input[0]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\R0[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[0]~input_o\,
	datac => \R0[0]$latch~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \R0[0]$latch~combout\);

-- Location: IOIBUF_X0_Y33_N1
\data_input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input(1),
	o => \data_input[1]~input_o\);

-- Location: LCCOMB_X1_Y33_N16
\R0[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0[1]$latch~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_input[1]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\R0[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[1]~input_o\,
	datab => \R0[1]$latch~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \R0[1]$latch~combout\);

-- Location: IOIBUF_X1_Y43_N29
\data_input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input(2),
	o => \data_input[2]~input_o\);

-- Location: LCCOMB_X1_Y42_N8
\R0[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0[2]$latch~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_input[2]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\R0[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[2]~input_o\,
	datac => \R0[2]$latch~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \R0[2]$latch~combout\);

-- Location: IOIBUF_X0_Y27_N8
\data_input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input(3),
	o => \data_input[3]~input_o\);

-- Location: LCCOMB_X1_Y28_N8
\R0[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0[3]$latch~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_input[3]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\R0[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_input[3]~input_o\,
	datac => \R0[3]$latch~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \R0[3]$latch~combout\);

-- Location: IOIBUF_X7_Y43_N29
\data_input[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input(4),
	o => \data_input[4]~input_o\);

-- Location: LCCOMB_X7_Y42_N0
\R0[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0[4]$latch~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\data_input[4]~input_o\))) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & (\R0[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R0[4]$latch~combout\,
	datac => \data_input[4]~input_o\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \R0[4]$latch~combout\);

-- Location: IOIBUF_X27_Y43_N1
\data_input[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input(5),
	o => \data_input[5]~input_o\);

-- Location: LCCOMB_X26_Y42_N0
\R0[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0[5]$latch~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\data_input[5]~input_o\))) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & (\R0[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R0[5]$latch~combout\,
	datac => \data_input[5]~input_o\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \R0[5]$latch~combout\);

-- Location: IOIBUF_X11_Y43_N15
\data_input[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input(6),
	o => \data_input[6]~input_o\);

-- Location: LCCOMB_X14_Y42_N8
\R0[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0[6]$latch~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & (\data_input[6]~input_o\)) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\R0[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[6]~input_o\,
	datac => \R0[6]$latch~combout\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \R0[6]$latch~combout\);

-- Location: IOIBUF_X5_Y43_N1
\data_input[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input(7),
	o => \data_input[7]~input_o\);

-- Location: LCCOMB_X4_Y42_N0
\R0[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0[7]$latch~combout\ = (GLOBAL(\Decoder0~0clkctrl_outclk\) & ((\data_input[7]~input_o\))) # (!GLOBAL(\Decoder0~0clkctrl_outclk\) & (\R0[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R0[7]$latch~combout\,
	datac => \data_input[7]~input_o\,
	datad => \Decoder0~0clkctrl_outclk\,
	combout => \R0[7]$latch~combout\);

-- Location: LCCOMB_X37_Y1_N30
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\ra[1]~input_o\ & (\ra[0]~input_o\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra[1]~input_o\,
	datac => \ra[0]~input_o\,
	datad => \en~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: CLKCTRL_G15
\Decoder0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~1clkctrl_outclk\);

-- Location: LCCOMB_X33_Y42_N18
\R1[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[0]$latch~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_input[0]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\R1[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[0]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \R1[0]$latch~combout\,
	combout => \R1[0]$latch~combout\);

-- Location: LCCOMB_X1_Y33_N18
\R1[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[1]$latch~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_input[1]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\R1[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[1]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \R1[1]$latch~combout\,
	combout => \R1[1]$latch~combout\);

-- Location: LCCOMB_X1_Y42_N18
\R1[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[2]$latch~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_input[2]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\R1[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[2]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \R1[2]$latch~combout\,
	combout => \R1[2]$latch~combout\);

-- Location: LCCOMB_X1_Y28_N18
\R1[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[3]$latch~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_input[3]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\R1[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_input[3]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \R1[3]$latch~combout\,
	combout => \R1[3]$latch~combout\);

-- Location: LCCOMB_X7_Y42_N2
\R1[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[4]$latch~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_input[4]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\R1[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[4]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \R1[4]$latch~combout\,
	combout => \R1[4]$latch~combout\);

-- Location: LCCOMB_X26_Y42_N2
\R1[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[5]$latch~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_input[5]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\R1[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[5]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \R1[5]$latch~combout\,
	combout => \R1[5]$latch~combout\);

-- Location: LCCOMB_X14_Y42_N18
\R1[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[6]$latch~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_input[6]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\R1[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[6]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \R1[6]$latch~combout\,
	combout => \R1[6]$latch~combout\);

-- Location: LCCOMB_X4_Y42_N2
\R1[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[7]$latch~combout\ = (GLOBAL(\Decoder0~1clkctrl_outclk\) & (\data_input[7]~input_o\)) # (!GLOBAL(\Decoder0~1clkctrl_outclk\) & ((\R1[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_input[7]~input_o\,
	datac => \Decoder0~1clkctrl_outclk\,
	datad => \R1[7]$latch~combout\,
	combout => \R1[7]$latch~combout\);

-- Location: LCCOMB_X37_Y1_N4
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\ra[1]~input_o\ & (!\ra[0]~input_o\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra[1]~input_o\,
	datac => \ra[0]~input_o\,
	datad => \en~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: CLKCTRL_G16
\Decoder0~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~2clkctrl_outclk\);

-- Location: LCCOMB_X33_Y42_N20
\R2[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[0]$latch~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_input[0]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\R2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[0]~input_o\,
	datab => \R2[0]$latch~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \R2[0]$latch~combout\);

-- Location: LCCOMB_X1_Y33_N20
\R2[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[1]$latch~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_input[1]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\R2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[1]~input_o\,
	datab => \R2[1]$latch~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \R2[1]$latch~combout\);

-- Location: LCCOMB_X1_Y42_N20
\R2[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[2]$latch~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_input[2]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\R2[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[2]~input_o\,
	datab => \R2[2]$latch~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \R2[2]$latch~combout\);

-- Location: LCCOMB_X1_Y28_N20
\R2[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[3]$latch~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_input[3]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\R2[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_input[3]~input_o\,
	datac => \R2[3]$latch~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \R2[3]$latch~combout\);

-- Location: LCCOMB_X6_Y42_N0
\R2[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[4]$latch~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\data_input[4]~input_o\))) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & (\R2[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R2[4]$latch~combout\,
	datac => \data_input[4]~input_o\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \R2[4]$latch~combout\);

-- Location: LCCOMB_X25_Y42_N0
\R2[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[5]$latch~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\data_input[5]~input_o\))) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & (\R2[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R2[5]$latch~combout\,
	datac => \data_input[5]~input_o\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \R2[5]$latch~combout\);

-- Location: LCCOMB_X11_Y42_N8
\R2[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[6]$latch~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & (\data_input[6]~input_o\)) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\R2[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[6]~input_o\,
	datac => \R2[6]$latch~combout\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \R2[6]$latch~combout\);

-- Location: LCCOMB_X5_Y42_N0
\R2[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[7]$latch~combout\ = (GLOBAL(\Decoder0~2clkctrl_outclk\) & ((\data_input[7]~input_o\))) # (!GLOBAL(\Decoder0~2clkctrl_outclk\) & (\R2[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R2[7]$latch~combout\,
	datac => \data_input[7]~input_o\,
	datad => \Decoder0~2clkctrl_outclk\,
	combout => \R2[7]$latch~combout\);

-- Location: LCCOMB_X37_Y1_N28
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\ra[1]~input_o\ & (\ra[0]~input_o\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra[1]~input_o\,
	datac => \ra[0]~input_o\,
	datad => \en~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: CLKCTRL_G17
\Decoder0~3clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Decoder0~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Decoder0~3clkctrl_outclk\);

-- Location: LCCOMB_X42_Y42_N0
\R3[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[0]$latch~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_input[0]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\R3[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[0]~input_o\,
	datac => \Decoder0~3clkctrl_outclk\,
	datad => \R3[0]$latch~combout\,
	combout => \R3[0]$latch~combout\);

-- Location: LCCOMB_X1_Y32_N16
\R3[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[1]$latch~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\data_input[1]~input_o\))) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & (\R3[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R3[1]$latch~combout\,
	datac => \data_input[1]~input_o\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \R3[1]$latch~combout\);

-- Location: LCCOMB_X2_Y42_N8
\R3[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[2]$latch~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_input[2]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\R3[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[2]~input_o\,
	datac => \R3[2]$latch~combout\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \R3[2]$latch~combout\);

-- Location: LCCOMB_X1_Y27_N16
\R3[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[3]$latch~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_input[3]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\R3[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_input[3]~input_o\,
	datac => \R3[3]$latch~combout\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \R3[3]$latch~combout\);

-- Location: LCCOMB_X7_Y42_N20
\R3[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[4]$latch~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\data_input[4]~input_o\))) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & (\R3[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R3[4]$latch~combout\,
	datac => \data_input[4]~input_o\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \R3[4]$latch~combout\);

-- Location: LCCOMB_X26_Y42_N20
\R3[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[5]$latch~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\data_input[5]~input_o\))) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & (\R3[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R3[5]$latch~combout\,
	datac => \data_input[5]~input_o\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \R3[5]$latch~combout\);

-- Location: LCCOMB_X14_Y42_N12
\R3[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[6]$latch~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & (\data_input[6]~input_o\)) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\R3[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_input[6]~input_o\,
	datac => \R3[6]$latch~combout\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \R3[6]$latch~combout\);

-- Location: LCCOMB_X4_Y42_N12
\R3[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[7]$latch~combout\ = (GLOBAL(\Decoder0~3clkctrl_outclk\) & ((\data_input[7]~input_o\))) # (!GLOBAL(\Decoder0~3clkctrl_outclk\) & (\R3[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3[7]$latch~combout\,
	datac => \data_input[7]~input_o\,
	datad => \Decoder0~3clkctrl_outclk\,
	combout => \R3[7]$latch~combout\);

ww_R0(0) <= \R0[0]~output_o\;

ww_R0(1) <= \R0[1]~output_o\;

ww_R0(2) <= \R0[2]~output_o\;

ww_R0(3) <= \R0[3]~output_o\;

ww_R0(4) <= \R0[4]~output_o\;

ww_R0(5) <= \R0[5]~output_o\;

ww_R0(6) <= \R0[6]~output_o\;

ww_R0(7) <= \R0[7]~output_o\;

ww_R1(0) <= \R1[0]~output_o\;

ww_R1(1) <= \R1[1]~output_o\;

ww_R1(2) <= \R1[2]~output_o\;

ww_R1(3) <= \R1[3]~output_o\;

ww_R1(4) <= \R1[4]~output_o\;

ww_R1(5) <= \R1[5]~output_o\;

ww_R1(6) <= \R1[6]~output_o\;

ww_R1(7) <= \R1[7]~output_o\;

ww_R2(0) <= \R2[0]~output_o\;

ww_R2(1) <= \R2[1]~output_o\;

ww_R2(2) <= \R2[2]~output_o\;

ww_R2(3) <= \R2[3]~output_o\;

ww_R2(4) <= \R2[4]~output_o\;

ww_R2(5) <= \R2[5]~output_o\;

ww_R2(6) <= \R2[6]~output_o\;

ww_R2(7) <= \R2[7]~output_o\;

ww_R3(0) <= \R3[0]~output_o\;

ww_R3(1) <= \R3[1]~output_o\;

ww_R3(2) <= \R3[2]~output_o\;

ww_R3(3) <= \R3[3]~output_o\;

ww_R3(4) <= \R3[4]~output_o\;

ww_R3(5) <= \R3[5]~output_o\;

ww_R3(6) <= \R3[6]~output_o\;

ww_R3(7) <= \R3[7]~output_o\;
END structure;


