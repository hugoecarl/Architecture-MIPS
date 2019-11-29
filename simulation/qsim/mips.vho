-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/28/2019 18:36:34"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	clk : IN std_logic;
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	saida_da_ula : OUT std_logic_vector(31 DOWNTO 0);
	pc_out : OUT std_logic_vector(31 DOWNTO 0)
	);
END mips;

ARCHITECTURE structure OF mips IS
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida_da_ula : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pc_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~29_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~21_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~22_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~25_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~32_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[2]~31\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[3]~33\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[4]~35\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[5]~37\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[6]~39\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[7]~40_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~20_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~24_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[9]~0_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|memacess_andbq_out~q\ : std_logic;
SIGNAL \FD|id_ex_reg|execute_muxula_out~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|wb_ucBR_out~q\ : std_logic;
SIGNAL \FD|ex_mem_reg|wb_regwrite_out~q\ : std_logic;
SIGNAL \FD|mem_wb_reg|wb_BR_out~q\ : std_logic;
SIGNAL \UC|Equal2~1_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|memacess_memwrite_out~q\ : std_logic;
SIGNAL \FD|ex_mem_reg|memacess_memwrite_out~q\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \UC|Equal3~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|wb_memtoregmux_out~q\ : std_logic;
SIGNAL \FD|ex_mem_reg|wb_memtoregmux_out~q\ : std_logic;
SIGNAL \FD|mem_wb_reg|wb_memtoreg_out~q\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[7]~25_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~28_combout\ : std_logic;
SIGNAL \UC|Equal4~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|execute_muxrtrd_out~q\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[1]~1_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[2]~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~30_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[3]~3_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \FD|BR|bancoReg~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~39_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~50_combout\ : std_logic;
SIGNAL \FD|BR|Equal1~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~51_combout\ : std_logic;
SIGNAL \UC|Equal2~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|execute_muxula_out~q\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[7]~25_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~23_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~31_combout\ : std_logic;
SIGNAL \FD|BR|Equal0~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \FD|BR|bancoReg~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~41_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~50_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~51_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~53_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~54_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~55_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~56_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~57_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~59_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~61_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[2]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~61_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~62_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~63_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~1_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[3]~0_combout\ : std_logic;
SIGNAL \FD|UCULA|d_funct[3]~0_combout\ : std_logic;
SIGNAL \FD|UCULA|Equal4~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~1_combout\ : std_logic;
SIGNAL \FD|UCULA|d_funct~1_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~0_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~1_combout\ : std_logic;
SIGNAL \FD|UCULA|Equal10~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~3_combout\ : std_logic;
SIGNAL \FD|UCULA|d_funct[3]~2_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[3]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~2_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \FD|ULA|Mux13~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~4_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~5_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~7_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~8_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~9_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~10_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~11_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~12_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~13_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~14_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~15_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~17_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~19_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~21_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~22_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~23_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~24_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~25_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~26_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~27_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~28_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~29_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~31_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~32_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~33_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~34_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~35_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~37_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~38_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~39_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~41_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~42_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~43_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~44_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~45_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~46_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~47_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~48_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~49_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~15\ : std_logic;
SIGNAL \FD|ULA|Add1~16_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~1\ : std_logic;
SIGNAL \FD|ULA|soma[1]~3\ : std_logic;
SIGNAL \FD|ULA|soma[2]~5\ : std_logic;
SIGNAL \FD|ULA|soma[3]~7\ : std_logic;
SIGNAL \FD|ULA|soma[4]~9\ : std_logic;
SIGNAL \FD|ULA|soma[5]~11\ : std_logic;
SIGNAL \FD|ULA|soma[6]~13\ : std_logic;
SIGNAL \FD|ULA|soma[7]~15\ : std_logic;
SIGNAL \FD|ULA|soma[8]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[8]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~48_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~49_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[8]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~17\ : std_logic;
SIGNAL \FD|ULA|Add1~18_combout\ : std_logic;
SIGNAL \FD|ULA|soma[8]~17\ : std_logic;
SIGNAL \FD|ULA|soma[9]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[9]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~46_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~47_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[9]~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~19\ : std_logic;
SIGNAL \FD|ULA|Add1~20_combout\ : std_logic;
SIGNAL \FD|ULA|soma[9]~19\ : std_logic;
SIGNAL \FD|ULA|soma[10]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[10]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~44_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~45_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[10]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~21\ : std_logic;
SIGNAL \FD|ULA|Add1~22_combout\ : std_logic;
SIGNAL \FD|ULA|soma[10]~21\ : std_logic;
SIGNAL \FD|ULA|soma[11]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[11]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~42_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~43_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[11]~21_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~23\ : std_logic;
SIGNAL \FD|ULA|Add1~24_combout\ : std_logic;
SIGNAL \FD|ULA|soma[11]~23\ : std_logic;
SIGNAL \FD|ULA|soma[12]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~41_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~25\ : std_logic;
SIGNAL \FD|ULA|Add1~26_combout\ : std_logic;
SIGNAL \FD|ULA|soma[12]~25\ : std_logic;
SIGNAL \FD|ULA|soma[13]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[13]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~38_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~39_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[13]~19_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~27\ : std_logic;
SIGNAL \FD|ULA|Add1~28_combout\ : std_logic;
SIGNAL \FD|ULA|soma[13]~27\ : std_logic;
SIGNAL \FD|ULA|soma[14]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[14]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~37_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[14]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~29\ : std_logic;
SIGNAL \FD|ULA|Add1~30_combout\ : std_logic;
SIGNAL \FD|ULA|soma[14]~29\ : std_logic;
SIGNAL \FD|ULA|soma[15]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[15]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~34_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~35_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[15]~17_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~31\ : std_logic;
SIGNAL \FD|ULA|Add1~32_combout\ : std_logic;
SIGNAL \FD|ULA|soma[15]~31\ : std_logic;
SIGNAL \FD|ULA|soma[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[16]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~32_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~33_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[16]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~33\ : std_logic;
SIGNAL \FD|ULA|Add1~34_combout\ : std_logic;
SIGNAL \FD|ULA|soma[16]~33\ : std_logic;
SIGNAL \FD|ULA|soma[17]~34_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~31_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[17]~15_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~35\ : std_logic;
SIGNAL \FD|ULA|Add1~36_combout\ : std_logic;
SIGNAL \FD|ULA|soma[17]~35\ : std_logic;
SIGNAL \FD|ULA|soma[18]~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~6_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[18]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~28_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~29_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[18]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~37\ : std_logic;
SIGNAL \FD|ULA|Add1~38_combout\ : std_logic;
SIGNAL \FD|ULA|soma[18]~37\ : std_logic;
SIGNAL \FD|ULA|soma[19]~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[19]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~26_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~27_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[19]~13_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~39\ : std_logic;
SIGNAL \FD|ULA|Add1~40_combout\ : std_logic;
SIGNAL \FD|ULA|soma[19]~39\ : std_logic;
SIGNAL \FD|ULA|soma[20]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[20]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~24_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~25_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[20]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~41\ : std_logic;
SIGNAL \FD|ULA|Add1~42_combout\ : std_logic;
SIGNAL \FD|ULA|soma[20]~41\ : std_logic;
SIGNAL \FD|ULA|soma[21]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[21]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~22_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~23_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[21]~11_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~43\ : std_logic;
SIGNAL \FD|ULA|Add1~44_combout\ : std_logic;
SIGNAL \FD|ULA|soma[21]~43\ : std_logic;
SIGNAL \FD|ULA|soma[22]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[22]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~20_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[22]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~45\ : std_logic;
SIGNAL \FD|ULA|Add1~46_combout\ : std_logic;
SIGNAL \FD|ULA|soma[22]~45\ : std_logic;
SIGNAL \FD|ULA|soma[23]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[23]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~19_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[23]~9_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~47\ : std_logic;
SIGNAL \FD|ULA|Add1~48_combout\ : std_logic;
SIGNAL \FD|ULA|soma[23]~47\ : std_logic;
SIGNAL \FD|ULA|soma[24]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[24]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~17_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[24]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~49\ : std_logic;
SIGNAL \FD|ULA|Add1~50_combout\ : std_logic;
SIGNAL \FD|ULA|soma[24]~49\ : std_logic;
SIGNAL \FD|ULA|soma[25]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[25]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~14_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~15_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[25]~7_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~51\ : std_logic;
SIGNAL \FD|ULA|Add1~52_combout\ : std_logic;
SIGNAL \FD|ULA|soma[25]~51\ : std_logic;
SIGNAL \FD|ULA|soma[26]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[26]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~12_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~13_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[26]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~53\ : std_logic;
SIGNAL \FD|ULA|Add1~54_combout\ : std_logic;
SIGNAL \FD|ULA|soma[26]~53\ : std_logic;
SIGNAL \FD|ULA|soma[27]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~10_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~11_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~55\ : std_logic;
SIGNAL \FD|ULA|Add1~56_combout\ : std_logic;
SIGNAL \FD|ULA|soma[27]~55\ : std_logic;
SIGNAL \FD|ULA|soma[28]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[28]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~8_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~9_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[28]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~57\ : std_logic;
SIGNAL \FD|ULA|Add1~58_combout\ : std_logic;
SIGNAL \FD|ULA|soma[28]~57\ : std_logic;
SIGNAL \FD|ULA|soma[29]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[29]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~7_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[29]~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~59\ : std_logic;
SIGNAL \FD|ULA|Add1~60_combout\ : std_logic;
SIGNAL \FD|ULA|soma[29]~59\ : std_logic;
SIGNAL \FD|ULA|soma[30]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[30]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~4_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~5_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[30]~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[30]~61\ : std_logic;
SIGNAL \FD|ULA|soma[31]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~7_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~0_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~1_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~1\ : std_logic;
SIGNAL \FD|ULA|Add1~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[1]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~62_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~63_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[1]~31_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~3\ : std_logic;
SIGNAL \FD|ULA|Add1~5\ : std_logic;
SIGNAL \FD|ULA|Add1~7\ : std_logic;
SIGNAL \FD|ULA|Add1~9\ : std_logic;
SIGNAL \FD|ULA|Add1~11\ : std_logic;
SIGNAL \FD|ULA|Add1~13\ : std_logic;
SIGNAL \FD|ULA|Add1~14_combout\ : std_logic;
SIGNAL \FD|ULA|soma[7]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[6]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~53_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[6]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~12_combout\ : std_logic;
SIGNAL \FD|ULA|soma[6]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[5]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~54_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[5]~27_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[5]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[4]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~56_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~57_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[4]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~8_combout\ : std_logic;
SIGNAL \FD|ULA|soma[4]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[3]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~59_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[3]~29_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~6_combout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \FD|ULA|Mux0~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[31]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~2_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~3_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[31]~1_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~61\ : std_logic;
SIGNAL \FD|ULA|Add1~62_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~4_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~5_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~8_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~10_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|zerout~q\ : std_logic;
SIGNAL \FD|sel_mux_beq~combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~5_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[0]~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~27_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~33_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[5]~36_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~3_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[6]~38_combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~4_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[2]~30_combout\ : std_logic;
SIGNAL \FD|PC|data_s[2]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[3]~32_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[4]~34_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~26_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[2]~30_combout\ : std_logic;
SIGNAL \FD|ULA|soma[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~3_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hex7seg|display5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \hex7seg|display5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \hex7seg|display5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \hex7seg|display5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \hex7seg|display5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \hex7seg|display5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[7]~11\ : std_logic;
SIGNAL \FD|Somador|saida[8]~12_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[7]~41\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[8]~42_combout\ : std_logic;
SIGNAL \FD|PC|data_s[8]~6_combout\ : std_logic;
SIGNAL \FD|Somador|saida[8]~13\ : std_logic;
SIGNAL \FD|Somador|saida[9]~14_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[8]~43\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[9]~44_combout\ : std_logic;
SIGNAL \FD|PC|data_s[9]~7_combout\ : std_logic;
SIGNAL \FD|Somador|saida[9]~15\ : std_logic;
SIGNAL \FD|Somador|saida[10]~16_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[9]~45\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[10]~46_combout\ : std_logic;
SIGNAL \FD|PC|data_s[10]~8_combout\ : std_logic;
SIGNAL \FD|Somador|saida[10]~17\ : std_logic;
SIGNAL \FD|Somador|saida[11]~18_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[10]~47\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[11]~48_combout\ : std_logic;
SIGNAL \FD|PC|data_s[11]~9_combout\ : std_logic;
SIGNAL \FD|Somador|saida[11]~19\ : std_logic;
SIGNAL \FD|Somador|saida[12]~20_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[11]~49\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[12]~50_combout\ : std_logic;
SIGNAL \FD|PC|data_s[12]~10_combout\ : std_logic;
SIGNAL \FD|Somador|saida[12]~21\ : std_logic;
SIGNAL \FD|Somador|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[12]~51\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[13]~52_combout\ : std_logic;
SIGNAL \FD|PC|data_s[13]~11_combout\ : std_logic;
SIGNAL \FD|Somador|saida[13]~23\ : std_logic;
SIGNAL \FD|Somador|saida[14]~24_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[13]~53\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[14]~54_combout\ : std_logic;
SIGNAL \FD|PC|data_s[14]~12_combout\ : std_logic;
SIGNAL \FD|Somador|saida[14]~25\ : std_logic;
SIGNAL \FD|Somador|saida[15]~26_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[14]~55\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[15]~56_combout\ : std_logic;
SIGNAL \FD|PC|data_s[15]~13_combout\ : std_logic;
SIGNAL \FD|Somador|saida[15]~27\ : std_logic;
SIGNAL \FD|Somador|saida[16]~28_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[15]~57\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[16]~58_combout\ : std_logic;
SIGNAL \FD|PC|data_s[16]~14_combout\ : std_logic;
SIGNAL \FD|Somador|saida[16]~29\ : std_logic;
SIGNAL \FD|Somador|saida[17]~30_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[16]~59\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[17]~60_combout\ : std_logic;
SIGNAL \FD|PC|data_s[17]~15_combout\ : std_logic;
SIGNAL \FD|Somador|saida[17]~31\ : std_logic;
SIGNAL \FD|Somador|saida[18]~32_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[17]~61\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[18]~62_combout\ : std_logic;
SIGNAL \FD|PC|data_s[18]~16_combout\ : std_logic;
SIGNAL \FD|Somador|saida[18]~33\ : std_logic;
SIGNAL \FD|Somador|saida[19]~34_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[18]~63\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[19]~64_combout\ : std_logic;
SIGNAL \FD|PC|data_s[19]~17_combout\ : std_logic;
SIGNAL \FD|Somador|saida[19]~35\ : std_logic;
SIGNAL \FD|Somador|saida[20]~36_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[19]~65\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[20]~66_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[20]~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[20]~37\ : std_logic;
SIGNAL \FD|Somador|saida[21]~38_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[20]~67\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[21]~68_combout\ : std_logic;
SIGNAL \FD|PC|data_s[21]~18_combout\ : std_logic;
SIGNAL \FD|Somador|saida[21]~39\ : std_logic;
SIGNAL \FD|Somador|saida[22]~40_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[21]~69\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[22]~70_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[22]~2_combout\ : std_logic;
SIGNAL \FD|Somador|saida[22]~41\ : std_logic;
SIGNAL \FD|Somador|saida[23]~42_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[22]~71\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[23]~72_combout\ : std_logic;
SIGNAL \FD|PC|data_s[23]~19_combout\ : std_logic;
SIGNAL \FD|Somador|saida[23]~43\ : std_logic;
SIGNAL \FD|Somador|saida[24]~44_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[23]~73\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[24]~74_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[24]~3_combout\ : std_logic;
SIGNAL \FD|Somador|saida[24]~45\ : std_logic;
SIGNAL \FD|Somador|saida[25]~46_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[24]~75\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[25]~76_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[25]~4_combout\ : std_logic;
SIGNAL \FD|Somador|saida[25]~47\ : std_logic;
SIGNAL \FD|Somador|saida[26]~48_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[25]~77\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[26]~78_combout\ : std_logic;
SIGNAL \FD|PC|data_s[26]~20_combout\ : std_logic;
SIGNAL \FD|Somador|saida[26]~49\ : std_logic;
SIGNAL \FD|Somador|saida[27]~50_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[26]~79\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[27]~80_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[27]~5_combout\ : std_logic;
SIGNAL \FD|Somador|saida[27]~51\ : std_logic;
SIGNAL \FD|Somador|saida[28]~52_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[27]~81\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[28]~82_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[28]~6_combout\ : std_logic;
SIGNAL \FD|Somador|saida[28]~53\ : std_logic;
SIGNAL \FD|Somador|saida[29]~54_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[28]~83\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[29]~84_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[29]~7_combout\ : std_logic;
SIGNAL \FD|Somador|saida[29]~55\ : std_logic;
SIGNAL \FD|Somador|saida[30]~56_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[29]~85\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[30]~86_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[30]~8_combout\ : std_logic;
SIGNAL \FD|Somador|saida[30]~57\ : std_logic;
SIGNAL \FD|Somador|saida[31]~58_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[30]~87\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[31]~88_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[31]~9_combout\ : std_logic;
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|id_ex_reg|inShifter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|mem_wb_reg|rd_memwbreg_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \hex7seg|reg0|reg4_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|ex_mem_reg|inMuxPc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \hex7seg|reg1|reg4_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hex7seg|reg2|reg4_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|id_ex_reg|rtout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \hex7seg|reg3|reg4_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|if_id_reg|rom_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|id_ex_reg|execute_ulaop_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \hex7seg|reg4|reg4_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hex7seg|reg5|reg4_o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|id_ex_reg|inMux\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|id_ex_reg|inAlu\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|mem_wb_reg|mux_0ent\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|id_ex_reg|inAdder\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ex_mem_reg|inregmemwd\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ex_mem_reg|in_memwb_rd\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|ex_mem_reg|ramAdd\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|if_id_reg|pc_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \hex7seg|display3|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display2|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display1|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display5|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \hex7seg|display4|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
saida_da_ula <= ww_saida_da_ula;
pc_out <= ww_pc_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[0]~0_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[0]~0_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[31]~1_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[31]~1_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[30]~2_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[30]~2_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[29]~3_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[29]~3_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[28]~4_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[28]~4_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[27]~5_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[27]~5_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[26]~6_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[26]~6_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[25]~7_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[25]~7_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[24]~8_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[24]~8_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[23]~9_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[23]~9_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[22]~10_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[22]~10_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[21]~11_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[21]~11_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[20]~12_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[20]~12_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[19]~13_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[19]~13_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[18]~14_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[18]~14_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[17]~15_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[17]~15_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[16]~16_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[16]~16_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[15]~17_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[15]~17_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[14]~18_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[14]~18_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[13]~19_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[13]~19_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[12]~20_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[12]~20_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[11]~21_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[11]~21_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[10]~22_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[10]~22_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[9]~23_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[9]~23_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[8]~24_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[8]~24_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[7]~25_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[7]~25_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[6]~26_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[6]~26_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[5]~27_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[5]~27_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[4]~28_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[4]~28_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[3]~29_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[3]~29_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[2]~30_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[2]~30_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[1]~31_combout\;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \FD|mux_Ula_Memoria|saida[1]~31_combout\;

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(31);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(30);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(29);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(28);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(27);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(26);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(25);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(24);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(23);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(22);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(21);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(20);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(19);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(18);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(17);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(16);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(15);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(14);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(13);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(12);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(11);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(10);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(9);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(8);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(7);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(6);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(5);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(4);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(3);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(2);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \FD|ex_mem_reg|inregmemwd\(1);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\hex7seg|reg1|reg4_o\(3) & \hex7seg|reg1|reg4_o\(2) & \hex7seg|reg1|reg4_o\(1) & \hex7seg|reg1|reg4_o\(0) & \hex7seg|reg0|reg4_o\(3) & \hex7seg|reg0|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\hex7seg|display3|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \hex7seg|display3|rascSaida7seg[2]~2_combout\;
\hex7seg|display2|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \hex7seg|display2|rascSaida7seg[2]~2_combout\;
\hex7seg|display1|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \hex7seg|display1|rascSaida7seg[2]~2_combout\;
\hex7seg|display0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \hex7seg|display0|rascSaida7seg[2]~2_combout\;
\hex7seg|display5|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \hex7seg|display5|rascSaida7seg[2]~2_combout\;
\hex7seg|display4|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \hex7seg|display4|rascSaida7seg[2]~2_combout\;

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\saida_da_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux31~7_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(0));

\saida_da_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux30~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(1));

\saida_da_ula[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux29~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(2));

\saida_da_ula[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux28~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(3));

\saida_da_ula[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux27~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(4));

\saida_da_ula[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux26~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(5));

\saida_da_ula[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux25~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(6));

\saida_da_ula[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux24~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(7));

\saida_da_ula[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux23~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(8));

\saida_da_ula[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux22~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(9));

\saida_da_ula[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux21~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(10));

\saida_da_ula[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux20~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(11));

\saida_da_ula[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux19~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(12));

\saida_da_ula[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux18~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(13));

\saida_da_ula[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux17~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(14));

\saida_da_ula[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux16~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(15));

\saida_da_ula[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux15~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(16));

\saida_da_ula[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux14~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(17));

\saida_da_ula[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux13~6_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(18));

\saida_da_ula[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux12~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(19));

\saida_da_ula[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux11~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(20));

\saida_da_ula[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux10~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(21));

\saida_da_ula[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux9~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(22));

\saida_da_ula[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux8~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(23));

\saida_da_ula[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux7~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(24));

\saida_da_ula[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux6~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(25));

\saida_da_ula[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux5~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(26));

\saida_da_ula[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux4~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(27));

\saida_da_ula[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux3~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(28));

\saida_da_ula[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux2~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(29));

\saida_da_ula[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux1~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(30));

\saida_da_ula[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ULA|Mux0~3_combout\,
	devoe => ww_devoe,
	o => ww_saida_da_ula(31));

\pc_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => ww_pc_out(0));

\pc_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(0),
	devoe => ww_devoe,
	o => ww_pc_out(1));

\pc_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => ww_pc_out(2));

\pc_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => ww_pc_out(3));

\pc_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => ww_pc_out(4));

\pc_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => ww_pc_out(5));

\pc_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => ww_pc_out(6));

\pc_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => ww_pc_out(7));

\pc_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => ww_pc_out(8));

\pc_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => ww_pc_out(9));

\pc_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => ww_pc_out(10));

\pc_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(11),
	devoe => ww_devoe,
	o => ww_pc_out(11));

\pc_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(12),
	devoe => ww_devoe,
	o => ww_pc_out(12));

\pc_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(13),
	devoe => ww_devoe,
	o => ww_pc_out(13));

\pc_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(14),
	devoe => ww_devoe,
	o => ww_pc_out(14));

\pc_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(15),
	devoe => ww_devoe,
	o => ww_pc_out(15));

\pc_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(16),
	devoe => ww_devoe,
	o => ww_pc_out(16));

\pc_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(17),
	devoe => ww_devoe,
	o => ww_pc_out(17));

\pc_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(18),
	devoe => ww_devoe,
	o => ww_pc_out(18));

\pc_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(19),
	devoe => ww_devoe,
	o => ww_pc_out(19));

\pc_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(20),
	devoe => ww_devoe,
	o => ww_pc_out(20));

\pc_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(21),
	devoe => ww_devoe,
	o => ww_pc_out(21));

\pc_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(22),
	devoe => ww_devoe,
	o => ww_pc_out(22));

\pc_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(23),
	devoe => ww_devoe,
	o => ww_pc_out(23));

\pc_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(24),
	devoe => ww_devoe,
	o => ww_pc_out(24));

\pc_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(25),
	devoe => ww_devoe,
	o => ww_pc_out(25));

\pc_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(26),
	devoe => ww_devoe,
	o => ww_pc_out(26));

\pc_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(27),
	devoe => ww_devoe,
	o => ww_pc_out(27));

\pc_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(28),
	devoe => ww_devoe,
	o => ww_pc_out(28));

\pc_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(29),
	devoe => ww_devoe,
	o => ww_pc_out(29));

\pc_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(30),
	devoe => ww_devoe,
	o => ww_pc_out(30));

\pc_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(31),
	devoe => ww_devoe,
	o => ww_pc_out(31));

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\FD|Somador|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[2]~0_combout\ = \FD|PC|data_s\(2) $ (VCC)
-- \FD|Somador|saida[2]~1\ = CARRY(\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|Somador|saida[2]~0_combout\,
	cout => \FD|Somador|saida[2]~1\);

\FD|if_id_reg|pc_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(2));

\FD|id_ex_reg|inAdder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(2));

\FD|Somador|saida[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[4]~4_combout\ = (\FD|PC|data_s\(4) & (\FD|Somador|saida[3]~3\ $ (GND))) # (!\FD|PC|data_s\(4) & (!\FD|Somador|saida[3]~3\ & VCC))
-- \FD|Somador|saida[4]~5\ = CARRY((\FD|PC|data_s\(4) & !\FD|Somador|saida[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|Somador|saida[3]~3\,
	combout => \FD|Somador|saida[4]~4_combout\,
	cout => \FD|Somador|saida[4]~5\);

\FD|Somador|saida[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[5]~6_combout\ = (\FD|PC|data_s\(5) & (!\FD|Somador|saida[4]~5\)) # (!\FD|PC|data_s\(5) & ((\FD|Somador|saida[4]~5\) # (GND)))
-- \FD|Somador|saida[5]~7\ = CARRY((!\FD|Somador|saida[4]~5\) # (!\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|Somador|saida[4]~5\,
	combout => \FD|Somador|saida[5]~6_combout\,
	cout => \FD|Somador|saida[5]~7\);

\FD|if_id_reg|pc_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(5));

\FD|id_ex_reg|inAdder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(5));

\FD|Somador|saida[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[6]~8_combout\ = (\FD|PC|data_s\(6) & (\FD|Somador|saida[5]~7\ $ (GND))) # (!\FD|PC|data_s\(6) & (!\FD|Somador|saida[5]~7\ & VCC))
-- \FD|Somador|saida[6]~9\ = CARRY((\FD|PC|data_s\(6) & !\FD|Somador|saida[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datad => VCC,
	cin => \FD|Somador|saida[5]~7\,
	combout => \FD|Somador|saida[6]~8_combout\,
	cout => \FD|Somador|saida[6]~9\);

\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = (\FD|PC|data_s\(7) & (!\FD|Somador|saida[6]~9\)) # (!\FD|PC|data_s\(7) & ((\FD|Somador|saida[6]~9\) # (GND)))
-- \FD|Somador|saida[7]~11\ = CARRY((!\FD|Somador|saida[6]~9\) # (!\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\,
	cout => \FD|Somador|saida[7]~11\);

\FD|if_id_reg|pc_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(7));

\FD|id_ex_reg|inAdder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(7));

\FD|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(4) & !\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~16_combout\);

\FD|ROM|memROM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~29_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~16_combout\,
	combout => \FD|ROM|memROM~29_combout\);

\FD|if_id_reg|rom_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(5));

\FD|id_ex_reg|rtout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|rom_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|rtout\(1));

\FD|if_id_reg|pc_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(6));

\FD|id_ex_reg|inAdder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(6));

\FD|ROM|memROM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~21_combout\ = (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(2) & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~21_combout\);

\FD|ROM|memROM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~22_combout\ = (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) & \FD|ROM|memROM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(5),
	datac => \FD|ROM|memROM~21_combout\,
	combout => \FD|ROM|memROM~22_combout\);

\FD|if_id_reg|rom_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(4));

\FD|id_ex_reg|inShifter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|rom_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(4));

\FD|if_id_reg|pc_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(4));

\FD|id_ex_reg|inAdder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(4));

\FD|if_id_reg|pc_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(3));

\FD|id_ex_reg|inAdder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(3));

\FD|ROM|memROM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~25_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2) & (!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5))) # (!\FD|PC|data_s\(2) & (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~25_combout\);

\FD|ROM|memROM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~32_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~25_combout\,
	combout => \FD|ROM|memROM~32_combout\);

\FD|if_id_reg|rom_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(1));

\FD|id_ex_reg|inShifter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|rom_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(1));

\FD|ex_mem_reg|inMuxPc[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[2]~30_combout\ = (\FD|id_ex_reg|inAdder\(2) & (\FD|id_ex_reg|inShifter\(0) $ (VCC))) # (!\FD|id_ex_reg|inAdder\(2) & (\FD|id_ex_reg|inShifter\(0) & VCC))
-- \FD|ex_mem_reg|inMuxPc[2]~31\ = CARRY((\FD|id_ex_reg|inAdder\(2) & \FD|id_ex_reg|inShifter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(2),
	datab => \FD|id_ex_reg|inShifter\(0),
	datad => VCC,
	combout => \FD|ex_mem_reg|inMuxPc[2]~30_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[2]~31\);

\FD|ex_mem_reg|inMuxPc[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[3]~32_combout\ = (\FD|id_ex_reg|inAdder\(3) & ((\FD|id_ex_reg|inShifter\(1) & (\FD|ex_mem_reg|inMuxPc[2]~31\ & VCC)) # (!\FD|id_ex_reg|inShifter\(1) & (!\FD|ex_mem_reg|inMuxPc[2]~31\)))) # (!\FD|id_ex_reg|inAdder\(3) & 
-- ((\FD|id_ex_reg|inShifter\(1) & (!\FD|ex_mem_reg|inMuxPc[2]~31\)) # (!\FD|id_ex_reg|inShifter\(1) & ((\FD|ex_mem_reg|inMuxPc[2]~31\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[3]~33\ = CARRY((\FD|id_ex_reg|inAdder\(3) & (!\FD|id_ex_reg|inShifter\(1) & !\FD|ex_mem_reg|inMuxPc[2]~31\)) # (!\FD|id_ex_reg|inAdder\(3) & ((!\FD|ex_mem_reg|inMuxPc[2]~31\) # (!\FD|id_ex_reg|inShifter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(3),
	datab => \FD|id_ex_reg|inShifter\(1),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[2]~31\,
	combout => \FD|ex_mem_reg|inMuxPc[3]~32_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[3]~33\);

\FD|ex_mem_reg|inMuxPc[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[4]~34_combout\ = ((\FD|id_ex_reg|inAdder\(4) $ (\FD|id_ex_reg|inShifter\(2) $ (!\FD|ex_mem_reg|inMuxPc[3]~33\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[4]~35\ = CARRY((\FD|id_ex_reg|inAdder\(4) & ((\FD|id_ex_reg|inShifter\(2)) # (!\FD|ex_mem_reg|inMuxPc[3]~33\))) # (!\FD|id_ex_reg|inAdder\(4) & (\FD|id_ex_reg|inShifter\(2) & !\FD|ex_mem_reg|inMuxPc[3]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(4),
	datab => \FD|id_ex_reg|inShifter\(2),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[3]~33\,
	combout => \FD|ex_mem_reg|inMuxPc[4]~34_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[4]~35\);

\FD|ex_mem_reg|inMuxPc[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[5]~36_combout\ = (\FD|id_ex_reg|inAdder\(5) & ((\FD|id_ex_reg|inShifter\(3) & (\FD|ex_mem_reg|inMuxPc[4]~35\ & VCC)) # (!\FD|id_ex_reg|inShifter\(3) & (!\FD|ex_mem_reg|inMuxPc[4]~35\)))) # (!\FD|id_ex_reg|inAdder\(5) & 
-- ((\FD|id_ex_reg|inShifter\(3) & (!\FD|ex_mem_reg|inMuxPc[4]~35\)) # (!\FD|id_ex_reg|inShifter\(3) & ((\FD|ex_mem_reg|inMuxPc[4]~35\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[5]~37\ = CARRY((\FD|id_ex_reg|inAdder\(5) & (!\FD|id_ex_reg|inShifter\(3) & !\FD|ex_mem_reg|inMuxPc[4]~35\)) # (!\FD|id_ex_reg|inAdder\(5) & ((!\FD|ex_mem_reg|inMuxPc[4]~35\) # (!\FD|id_ex_reg|inShifter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(5),
	datab => \FD|id_ex_reg|inShifter\(3),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[4]~35\,
	combout => \FD|ex_mem_reg|inMuxPc[5]~36_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[5]~37\);

\FD|ex_mem_reg|inMuxPc[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[6]~38_combout\ = ((\FD|id_ex_reg|inAdder\(6) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[5]~37\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[6]~39\ = CARRY((\FD|id_ex_reg|inAdder\(6) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[5]~37\))) # (!\FD|id_ex_reg|inAdder\(6) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[5]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(6),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[5]~37\,
	combout => \FD|ex_mem_reg|inMuxPc[6]~38_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[6]~39\);

\FD|ex_mem_reg|inMuxPc[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[7]~40_combout\ = (\FD|id_ex_reg|inAdder\(7) & ((\FD|id_ex_reg|rtout\(1) & (\FD|ex_mem_reg|inMuxPc[6]~39\ & VCC)) # (!\FD|id_ex_reg|rtout\(1) & (!\FD|ex_mem_reg|inMuxPc[6]~39\)))) # (!\FD|id_ex_reg|inAdder\(7) & 
-- ((\FD|id_ex_reg|rtout\(1) & (!\FD|ex_mem_reg|inMuxPc[6]~39\)) # (!\FD|id_ex_reg|rtout\(1) & ((\FD|ex_mem_reg|inMuxPc[6]~39\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[7]~41\ = CARRY((\FD|id_ex_reg|inAdder\(7) & (!\FD|id_ex_reg|rtout\(1) & !\FD|ex_mem_reg|inMuxPc[6]~39\)) # (!\FD|id_ex_reg|inAdder\(7) & ((!\FD|ex_mem_reg|inMuxPc[6]~39\) # (!\FD|id_ex_reg|rtout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(7),
	datab => \FD|id_ex_reg|rtout\(1),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[6]~39\,
	combout => \FD|ex_mem_reg|inMuxPc[7]~40_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[7]~41\);

\FD|ex_mem_reg|inMuxPc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(7));

\FD|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~15_combout\);

\FD|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = (\FD|ROM|memROM~15_combout\ & (!\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~15_combout\,
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~18_combout\);

\FD|if_id_reg|rom_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(26));

\FD|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = (\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~19_combout\);

\FD|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~20_combout\ = (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(5),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~19_combout\,
	combout => \FD|ROM|memROM~20_combout\);

\FD|if_id_reg|rom_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(27));

\FD|ROM|memROM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~24_combout\ = (\FD|ROM|memROM~18_combout\ & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~18_combout\,
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~24_combout\);

\FD|if_id_reg|rom_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(29));

\UC|pontosDeControle[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[9]~0_combout\ = (\FD|if_id_reg|rom_out\(4) & (!\FD|if_id_reg|rom_out\(26) & (!\FD|if_id_reg|rom_out\(27) & !\FD|if_id_reg|rom_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(4),
	datab => \FD|if_id_reg|rom_out\(26),
	datac => \FD|if_id_reg|rom_out\(27),
	datad => \FD|if_id_reg|rom_out\(29),
	combout => \UC|pontosDeControle[9]~0_combout\);

\FD|id_ex_reg|execute_ulaop_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|pontosDeControle[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|execute_ulaop_out\(1));

\FD|ex_mem_reg|memacess_andbq_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|execute_ulaop_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|memacess_andbq_out~q\);

\FD|id_ex_reg|execute_muxula_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|execute_muxula_out~0_combout\ = (!\FD|if_id_reg|rom_out\(4) & (!\FD|if_id_reg|rom_out\(29) & (\FD|if_id_reg|rom_out\(26) $ (!\FD|if_id_reg|rom_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(26),
	datab => \FD|if_id_reg|rom_out\(27),
	datac => \FD|if_id_reg|rom_out\(4),
	datad => \FD|if_id_reg|rom_out\(29),
	combout => \FD|id_ex_reg|execute_muxula_out~0_combout\);

\FD|id_ex_reg|wb_ucBR_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|execute_muxula_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|wb_ucBR_out~q\);

\FD|ex_mem_reg|wb_regwrite_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|wb_ucBR_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|wb_regwrite_out~q\);

\FD|mem_wb_reg|wb_BR_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|wb_regwrite_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|wb_BR_out~q\);

\UC|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~1_combout\ = (\FD|if_id_reg|rom_out\(26) & (\FD|if_id_reg|rom_out\(27) & (\FD|if_id_reg|rom_out\(29) & !\FD|if_id_reg|rom_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(26),
	datab => \FD|if_id_reg|rom_out\(27),
	datac => \FD|if_id_reg|rom_out\(29),
	datad => \FD|if_id_reg|rom_out\(4),
	combout => \UC|Equal2~1_combout\);

\FD|id_ex_reg|memacess_memwrite_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|memacess_memwrite_out~q\);

\FD|ex_mem_reg|memacess_memwrite_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|memacess_memwrite_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|memacess_memwrite_out~q\);

\FD|ex_mem_reg|inregmemwd[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(31));

\FD|ex_mem_reg|inregmemwd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(3));

\FD|ex_mem_reg|inregmemwd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(4));

\FD|ex_mem_reg|inregmemwd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(5));

\FD|ex_mem_reg|inregmemwd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(6));

\FD|ex_mem_reg|inregmemwd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(7));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\FD|mem_wb_reg|mux_0ent[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg1|reg4_o\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(7));

\UC|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal3~0_combout\ = (\FD|if_id_reg|rom_out\(26) & (\FD|if_id_reg|rom_out\(27) & (!\FD|if_id_reg|rom_out\(4) & !\FD|if_id_reg|rom_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(26),
	datab => \FD|if_id_reg|rom_out\(27),
	datac => \FD|if_id_reg|rom_out\(4),
	datad => \FD|if_id_reg|rom_out\(29),
	combout => \UC|Equal3~0_combout\);

\FD|id_ex_reg|wb_memtoregmux_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|wb_memtoregmux_out~q\);

\FD|ex_mem_reg|wb_memtoregmux_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|wb_memtoregmux_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|wb_memtoregmux_out~q\);

\FD|mem_wb_reg|wb_memtoreg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|wb_memtoregmux_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|wb_memtoreg_out~q\);

\FD|mux_Ula_Memoria|saida[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[7]~25_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(7),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[7]~25_combout\);

\FD|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = (\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(3) & ((!\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4)))) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~14_combout\);

\FD|ROM|memROM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~28_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~14_combout\,
	combout => \FD|ROM|memROM~28_combout\);

\FD|if_id_reg|rom_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(16));

\FD|id_ex_reg|rtout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|rom_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|rtout\(0));

\UC|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal4~0_combout\ = (!\FD|if_id_reg|rom_out\(4) & (!\FD|if_id_reg|rom_out\(26) & (!\FD|if_id_reg|rom_out\(27) & !\FD|if_id_reg|rom_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(4),
	datab => \FD|if_id_reg|rom_out\(26),
	datac => \FD|if_id_reg|rom_out\(27),
	datad => \FD|if_id_reg|rom_out\(29),
	combout => \UC|Equal4~0_combout\);

\FD|id_ex_reg|execute_muxrtrd_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|execute_muxrtrd_out~q\);

\FD|mux_Rd_Rt|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[0]~0_combout\ = (\FD|id_ex_reg|execute_muxrtrd_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxrtrd_out~q\ & ((\FD|id_ex_reg|rtout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|rtout\(0),
	datad => \FD|id_ex_reg|execute_muxrtrd_out~q\,
	combout => \FD|mux_Rd_Rt|saida[0]~0_combout\);

\FD|ex_mem_reg|in_memwb_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|in_memwb_rd\(0));

\FD|mem_wb_reg|rd_memwbreg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|in_memwb_rd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|mux_Rd_Rt|saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[1]~1_combout\ = (\FD|id_ex_reg|execute_muxrtrd_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxrtrd_out~q\ & ((\FD|id_ex_reg|rtout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|rtout\(1),
	datad => \FD|id_ex_reg|execute_muxrtrd_out~q\,
	combout => \FD|mux_Rd_Rt|saida[1]~1_combout\);

\FD|ex_mem_reg|in_memwb_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|in_memwb_rd\(1));

\FD|mem_wb_reg|rd_memwbreg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|in_memwb_rd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|rd_memwbreg_out\(1));

\FD|mux_Rd_Rt|saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[2]~2_combout\ = (\FD|id_ex_reg|inShifter\(4) & \FD|id_ex_reg|execute_muxrtrd_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|execute_muxrtrd_out~q\,
	combout => \FD|mux_Rd_Rt|saida[2]~2_combout\);

\FD|ex_mem_reg|in_memwb_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|in_memwb_rd\(2));

\FD|mem_wb_reg|rd_memwbreg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|in_memwb_rd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|rd_memwbreg_out\(2));

\FD|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~17_combout\);

\FD|ROM|memROM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~30_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~17_combout\,
	combout => \FD|ROM|memROM~30_combout\);

\FD|if_id_reg|rom_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(19));

\FD|id_ex_reg|rtout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|rom_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|rtout\(3));

\FD|mux_Rd_Rt|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[3]~3_combout\ = (\FD|id_ex_reg|execute_muxrtrd_out~q\ & (\FD|id_ex_reg|rtout\(1))) # (!\FD|id_ex_reg|execute_muxrtrd_out~q\ & ((\FD|id_ex_reg|rtout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|rtout\(1),
	datab => \FD|id_ex_reg|rtout\(3),
	datad => \FD|id_ex_reg|execute_muxrtrd_out~q\,
	combout => \FD|mux_Rd_Rt|saida[3]~3_combout\);

\FD|ex_mem_reg|in_memwb_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Rd_Rt|saida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|in_memwb_rd\(3));

\FD|mem_wb_reg|rd_memwbreg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|in_memwb_rd\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|rd_memwbreg_out\(3));

\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(25));

\FD|BR|bancoReg_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(26));

\FD|BR|bancoReg_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(9));

\FD|BR|bancoReg_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(1));

\FD|BR|bancoReg_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(3));

\FD|BR|bancoReg_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(4));

\FD|BR|bancoReg_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(2));

\FD|BR|bancoReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(1) & (\FD|BR|bancoReg_rtl_1_bypass\(2) & (\FD|BR|bancoReg_rtl_1_bypass\(3) $ (!\FD|BR|bancoReg_rtl_1_bypass\(4))))) # (!\FD|BR|bancoReg_rtl_1_bypass\(1) & (!\FD|BR|bancoReg_rtl_1_bypass\(2) & 
-- (\FD|BR|bancoReg_rtl_1_bypass\(3) $ (!\FD|BR|bancoReg_rtl_1_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(1),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(3),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(4),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(2),
	combout => \FD|BR|bancoReg~38_combout\);

\FD|BR|bancoReg_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|wb_BR_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(0));

\FD|BR|bancoReg_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(7));

\FD|BR|bancoReg_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(8));

\FD|BR|bancoReg_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(5));

\FD|BR|bancoReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~39_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(0) & (!\FD|BR|bancoReg_rtl_1_bypass\(5) & (\FD|BR|bancoReg_rtl_1_bypass\(7) $ (!\FD|BR|bancoReg_rtl_1_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(0),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(7),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(8),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(5),
	combout => \FD|BR|bancoReg~39_combout\);

\FD|BR|saidaB[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~50_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(26) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(26),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[7]~50_combout\);

\FD|BR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal1~0_combout\ = (!\FD|if_id_reg|rom_out\(5) & (!\FD|if_id_reg|rom_out\(16) & !\FD|if_id_reg|rom_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|if_id_reg|rom_out\(5),
	datac => \FD|if_id_reg|rom_out\(16),
	datad => \FD|if_id_reg|rom_out\(19),
	combout => \FD|BR|Equal1~0_combout\);

\FD|BR|saidaB[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~51_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[7]~50_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7~portbdataout\)) # (!\FD|BR|saidaB[7]~50_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(25),
	datac => \FD|BR|saidaB[7]~50_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[7]~51_combout\);

\FD|id_ex_reg|inMux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[7]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(7));

\UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~0_combout\ = (\FD|if_id_reg|rom_out\(26) & (\FD|if_id_reg|rom_out\(27) & !\FD|if_id_reg|rom_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(26),
	datab => \FD|if_id_reg|rom_out\(27),
	datad => \FD|if_id_reg|rom_out\(4),
	combout => \UC|Equal2~0_combout\);

\FD|id_ex_reg|execute_muxula_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UC|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|execute_muxula_out~q\);

\FD|mux_Banco_Ula|saida[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[7]~25_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(7),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[7]~25_combout\);

\FD|ROM|memROM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~23_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(2) & \FD|PC|data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~23_combout\);

\FD|ROM|memROM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~31_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & \FD|ROM|memROM~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~23_combout\,
	combout => \FD|ROM|memROM~31_combout\);

\FD|if_id_reg|rom_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(21));

\FD|BR|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal0~0_combout\ = (\FD|if_id_reg|rom_out\(5)) # (\FD|if_id_reg|rom_out\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(5),
	datab => \FD|if_id_reg|rom_out\(21),
	combout => \FD|BR|Equal0~0_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(25));

\FD|BR|bancoReg_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(26));

\FD|BR|bancoReg_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(1));

\FD|BR|bancoReg_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(7));

\FD|BR|bancoReg_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(8));

\FD|BR|bancoReg_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(2));

\FD|BR|bancoReg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(1) & (\FD|BR|bancoReg_rtl_0_bypass\(2) & (\FD|BR|bancoReg_rtl_0_bypass\(7) $ (!\FD|BR|bancoReg_rtl_0_bypass\(8))))) # (!\FD|BR|bancoReg_rtl_0_bypass\(1) & (!\FD|BR|bancoReg_rtl_0_bypass\(2) & 
-- (\FD|BR|bancoReg_rtl_0_bypass\(7) $ (!\FD|BR|bancoReg_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(1),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(7),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(8),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(2),
	combout => \FD|BR|bancoReg~40_combout\);

\FD|BR|bancoReg_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|wb_BR_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(0));

\FD|BR|bancoReg_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(3));

\FD|BR|bancoReg_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(5));

\FD|BR|bancoReg_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mem_wb_reg|rd_memwbreg_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(9));

\FD|BR|bancoReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~41_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(0) & (!\FD|BR|bancoReg_rtl_0_bypass\(3) & (!\FD|BR|bancoReg_rtl_0_bypass\(5) & !\FD|BR|bancoReg_rtl_0_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(0),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(3),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(5),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(9),
	combout => \FD|BR|bancoReg~41_combout\);

\FD|BR|saidaA[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~50_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(26) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(26),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[7]~50_combout\);

\FD|BR|saidaA[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~51_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[7]~50_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7~portbdataout\)) # (!\FD|BR|saidaA[7]~50_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(25),
	datad => \FD|BR|saidaA[7]~50_combout\,
	combout => \FD|BR|saidaA[7]~51_combout\);

\FD|id_ex_reg|inAlu[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[7]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(7));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(23));

\FD|BR|bancoReg_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(24));

\FD|BR|saidaA[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~52_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(24) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(24),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[6]~52_combout\);

\FD|BR|saidaA[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~53_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[6]~52_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6~portbdataout\)) # (!\FD|BR|saidaA[6]~52_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(23),
	datad => \FD|BR|saidaA[6]~52_combout\,
	combout => \FD|BR|saidaA[6]~53_combout\);

\FD|id_ex_reg|inAlu[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[6]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(6));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(21));

\FD|BR|bancoReg_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(22));

\FD|BR|saidaA[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~54_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(22) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(22),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[5]~54_combout\);

\FD|BR|saidaA[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~55_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[5]~54_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5~portbdataout\)) # (!\FD|BR|saidaA[5]~54_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(21),
	datad => \FD|BR|saidaA[5]~54_combout\,
	combout => \FD|BR|saidaA[5]~55_combout\);

\FD|id_ex_reg|inAlu[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[5]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(5));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(19));

\FD|BR|bancoReg_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(20));

\FD|BR|saidaA[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~56_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(20) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(20),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[4]~56_combout\);

\FD|BR|saidaA[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~57_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[4]~56_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4~portbdataout\)) # (!\FD|BR|saidaA[4]~56_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(19),
	datad => \FD|BR|saidaA[4]~56_combout\,
	combout => \FD|BR|saidaA[4]~57_combout\);

\FD|id_ex_reg|inAlu[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(4));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00003F80",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(17));

\FD|BR|bancoReg_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(18));

\FD|BR|saidaA[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~58_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(18) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(18),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[3]~58_combout\);

\FD|BR|saidaA[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~59_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[3]~58_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3~portbdataout\)) # (!\FD|BR|saidaA[3]~58_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(17),
	datad => \FD|BR|saidaA[3]~58_combout\,
	combout => \FD|BR|saidaA[3]~59_combout\);

\FD|id_ex_reg|inAlu[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(3));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00003840",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(15));

\FD|BR|bancoReg_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(16));

\FD|BR|saidaB[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~60_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(16) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(16),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[2]~60_combout\);

\FD|BR|saidaB[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~61_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[2]~60_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2~portbdataout\)) # (!\FD|BR|saidaB[2]~60_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(15),
	datac => \FD|BR|saidaB[2]~60_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[2]~61_combout\);

\FD|id_ex_reg|inMux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(2));

\FD|ex_mem_reg|inregmemwd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\FD|mem_wb_reg|mux_0ent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg0|reg4_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(2));

\FD|mux_Ula_Memoria|saida[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[2]~30_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(2),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[2]~30_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00003840",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(15));

\FD|BR|bancoReg_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(16));

\FD|BR|saidaA[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~60_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(16) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(16),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[2]~60_combout\);

\FD|BR|saidaA[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~61_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[2]~60_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2~portbdataout\)) # (!\FD|BR|saidaA[2]~60_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(15),
	datad => \FD|BR|saidaA[2]~60_combout\,
	combout => \FD|BR|saidaA[2]~61_combout\);

\FD|id_ex_reg|inAlu[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[2]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(2));

\FD|ex_mem_reg|inregmemwd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(1));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000026C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(13));

\FD|BR|bancoReg_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(14));

\FD|BR|saidaA[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~62_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(14) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(14),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[1]~62_combout\);

\FD|BR|saidaA[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~63_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[1]~62_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1~portbdataout\)) # (!\FD|BR|saidaA[1]~62_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(13),
	datad => \FD|BR|saidaA[1]~62_combout\,
	combout => \FD|BR|saidaA[1]~63_combout\);

\FD|id_ex_reg|inAlu[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[1]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(1));

\FD|ex_mem_reg|inregmemwd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(0));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00001500",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(11));

\FD|BR|bancoReg_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(12));

\FD|BR|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~0_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(12) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(12),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[0]~0_combout\);

\FD|BR|saidaA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~1_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[0]~0_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\FD|BR|saidaA[0]~0_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(11),
	datad => \FD|BR|saidaA[0]~0_combout\,
	combout => \FD|BR|saidaA[0]~1_combout\);

\FD|id_ex_reg|inAlu[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(0));

\FD|UCULA|ALUctr[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[3]~0_combout\ = (!\FD|id_ex_reg|execute_muxula_out~q\ & !\FD|id_ex_reg|execute_ulaop_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|execute_ulaop_out\(1),
	combout => \FD|UCULA|ALUctr[3]~0_combout\);

\FD|UCULA|d_funct[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|d_funct[3]~0_combout\ = (\FD|id_ex_reg|inShifter\(1) & \FD|id_ex_reg|inShifter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(1),
	datab => \FD|id_ex_reg|inShifter\(2),
	combout => \FD|UCULA|d_funct[3]~0_combout\);

\FD|UCULA|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Equal4~0_combout\ = (\FD|id_ex_reg|rtout\(1) & (!\FD|id_ex_reg|inShifter\(3) & !\FD|id_ex_reg|inShifter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|rtout\(1),
	datac => \FD|id_ex_reg|inShifter\(3),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|UCULA|Equal4~0_combout\);

\FD|UCULA|ALUctr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~1_combout\ = (\FD|UCULA|ALUctr[3]~0_combout\ & ((\FD|id_ex_reg|inShifter\(0)) # ((\FD|UCULA|d_funct[3]~0_combout\) # (!\FD|UCULA|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~0_combout\,
	datab => \FD|id_ex_reg|inShifter\(0),
	datac => \FD|UCULA|d_funct[3]~0_combout\,
	datad => \FD|UCULA|Equal4~0_combout\,
	combout => \FD|UCULA|ALUctr[0]~1_combout\);

\FD|UCULA|d_funct~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|d_funct~1_combout\ = (\FD|id_ex_reg|rtout\(1) & (!\FD|id_ex_reg|inShifter\(1) & (!\FD|id_ex_reg|inShifter\(3) & !\FD|id_ex_reg|inShifter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|rtout\(1),
	datab => \FD|id_ex_reg|inShifter\(1),
	datac => \FD|id_ex_reg|inShifter\(3),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|UCULA|d_funct~1_combout\);

\FD|UCULA|ALUctr[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~2_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (((!\FD|id_ex_reg|execute_ulaop_out\(1))))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (((\FD|id_ex_reg|execute_ulaop_out\(1)) # (!\FD|UCULA|d_funct~1_combout\)) # 
-- (!\FD|id_ex_reg|inShifter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(2),
	datab => \FD|UCULA|d_funct~1_combout\,
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|execute_ulaop_out\(1),
	combout => \FD|UCULA|ALUctr[1]~2_combout\);

\FD|ULA|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~0_combout\ = (!\FD|UCULA|ALUctr[1]~2_combout\ & ((\FD|mux_Banco_Ula|saida[0]~0_combout\ & ((\FD|id_ex_reg|inAlu\(0)) # (\FD|UCULA|ALUctr[0]~1_combout\))) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\ & (\FD|id_ex_reg|inAlu\(0) & 
-- \FD|UCULA|ALUctr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datab => \FD|id_ex_reg|inAlu\(0),
	datac => \FD|UCULA|ALUctr[0]~1_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux31~0_combout\);

\FD|ULA|soma[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[0]~0_combout\ = (\FD|mux_Banco_Ula|saida[0]~0_combout\ & (\FD|id_ex_reg|inAlu\(0) $ (VCC))) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\ & (\FD|id_ex_reg|inAlu\(0) & VCC))
-- \FD|ULA|soma[0]~1\ = CARRY((\FD|mux_Banco_Ula|saida[0]~0_combout\ & \FD|id_ex_reg|inAlu\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datab => \FD|id_ex_reg|inAlu\(0),
	datad => VCC,
	combout => \FD|ULA|soma[0]~0_combout\,
	cout => \FD|ULA|soma[0]~1\);

\FD|ULA|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~1_combout\ = (\FD|ULA|Mux31~0_combout\) # ((\FD|ULA|soma[0]~0_combout\ & (\FD|UCULA|ALUctr[1]~2_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~0_combout\,
	datab => \FD|ULA|soma[0]~0_combout\,
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux31~1_combout\);

\FD|UCULA|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|Equal10~0_combout\ = (\FD|id_ex_reg|inShifter\(1)) # (((\FD|id_ex_reg|inShifter\(0) & !\FD|id_ex_reg|inShifter\(2))) # (!\FD|UCULA|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(1),
	datab => \FD|id_ex_reg|inShifter\(0),
	datac => \FD|id_ex_reg|inShifter\(2),
	datad => \FD|UCULA|Equal4~0_combout\,
	combout => \FD|UCULA|Equal10~0_combout\);

\FD|UCULA|ALUctr[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~3_combout\ = (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|execute_ulaop_out\(1)) # (\FD|UCULA|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_ulaop_out\(1),
	datab => \FD|UCULA|Equal10~0_combout\,
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|UCULA|ALUctr[2]~3_combout\);

\FD|UCULA|d_funct[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|d_funct[3]~2_combout\ = (\FD|id_ex_reg|inShifter\(2) & (((\FD|id_ex_reg|inShifter\(3)) # (\FD|id_ex_reg|inShifter\(1))))) # (!\FD|id_ex_reg|inShifter\(2) & ((\FD|id_ex_reg|inShifter\(0)) # ((\FD|id_ex_reg|inShifter\(3) & 
-- !\FD|id_ex_reg|inShifter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(0),
	datab => \FD|id_ex_reg|inShifter\(2),
	datac => \FD|id_ex_reg|inShifter\(3),
	datad => \FD|id_ex_reg|inShifter\(1),
	combout => \FD|UCULA|d_funct[3]~2_combout\);

\FD|UCULA|ALUctr[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[3]~4_combout\ = (\FD|UCULA|ALUctr[3]~0_combout\ & ((\FD|id_ex_reg|inShifter\(4)) # ((\FD|UCULA|d_funct[3]~2_combout\) # (!\FD|id_ex_reg|rtout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~0_combout\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|UCULA|d_funct[3]~2_combout\,
	datad => \FD|id_ex_reg|rtout\(1),
	combout => \FD|UCULA|ALUctr[3]~4_combout\);

\FD|ULA|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~2_combout\ = (\FD|ULA|Mux31~1_combout\ & (!\FD|UCULA|ALUctr[2]~3_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~1_combout\,
	datac => \FD|UCULA|ALUctr[2]~3_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux31~2_combout\);

\FD|ULA|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~3_combout\ = (!\FD|id_ex_reg|execute_muxula_out~q\ & (!\FD|UCULA|ALUctr[3]~4_combout\ & ((\FD|id_ex_reg|execute_ulaop_out\(1)) # (\FD|UCULA|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_ulaop_out\(1),
	datab => \FD|UCULA|Equal10~0_combout\,
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux31~3_combout\);

\FD|ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~0_combout\ = (\FD|mux_Banco_Ula|saida[0]~0_combout\ & (\FD|id_ex_reg|inAlu\(0) $ (VCC))) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\ & ((\FD|id_ex_reg|inAlu\(0)) # (GND)))
-- \FD|ULA|Add1~1\ = CARRY((\FD|id_ex_reg|inAlu\(0)) # (!\FD|mux_Banco_Ula|saida[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~0_combout\,
	datab => \FD|id_ex_reg|inAlu\(0),
	datad => VCC,
	combout => \FD|ULA|Add1~0_combout\,
	cout => \FD|ULA|Add1~1\);

\FD|ULA|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~4_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Add1~0_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|ULA|Add1~0_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux31~4_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(73));

\FD|BR|bancoReg_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(74));

\FD|BR|saidaA[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~2_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(74) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(74),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[31]~2_combout\);

\FD|BR|saidaA[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~3_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[31]~2_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31~portbdataout\)) # (!\FD|BR|saidaA[31]~2_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(73),
	datad => \FD|BR|saidaA[31]~2_combout\,
	combout => \FD|BR|saidaA[31]~3_combout\);

\FD|id_ex_reg|inAlu[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(31));

\FD|ex_mem_reg|inregmemwd[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(30));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

\FD|ULA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~2_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\) # ((!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|execute_ulaop_out\(1)) # (\FD|UCULA|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datab => \FD|id_ex_reg|execute_ulaop_out\(1),
	datac => \FD|UCULA|Equal10~0_combout\,
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|ULA|Mux13~2_combout\);

\FD|ULA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~0_combout\ = (\FD|UCULA|ALUctr[1]~2_combout\ & ((!\FD|UCULA|ALUctr[2]~3_combout\) # (!\FD|UCULA|ALUctr[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[1]~2_combout\,
	datac => \FD|UCULA|ALUctr[0]~1_combout\,
	datad => \FD|UCULA|ALUctr[2]~3_combout\,
	combout => \FD|ULA|Mux13~0_combout\);

\FD|ULA|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~1_combout\ = (\FD|UCULA|ALUctr[2]~3_combout\) # ((\FD|UCULA|ALUctr[0]~1_combout\ & !\FD|UCULA|ALUctr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~3_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datad => \FD|UCULA|ALUctr[1]~2_combout\,
	combout => \FD|ULA|Mux13~1_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(71));

\FD|BR|bancoReg_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(72));

\FD|BR|saidaA[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~4_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(72) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(72),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[30]~4_combout\);

\FD|BR|saidaA[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~5_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[30]~4_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30~portbdataout\)) # (!\FD|BR|saidaA[30]~4_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(71),
	datad => \FD|BR|saidaA[30]~4_combout\,
	combout => \FD|BR|saidaA[30]~5_combout\);

\FD|id_ex_reg|inAlu[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(30));

\FD|ex_mem_reg|inregmemwd[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(29));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(69));

\FD|BR|bancoReg_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(70));

\FD|BR|saidaA[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~6_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(70) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(70),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[29]~6_combout\);

\FD|BR|saidaA[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~7_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[29]~6_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29~portbdataout\)) # (!\FD|BR|saidaA[29]~6_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(69),
	datad => \FD|BR|saidaA[29]~6_combout\,
	combout => \FD|BR|saidaA[29]~7_combout\);

\FD|id_ex_reg|inAlu[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(29));

\FD|ex_mem_reg|inregmemwd[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(28));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(67));

\FD|BR|bancoReg_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(68));

\FD|BR|saidaA[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~8_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(68) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(68),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[28]~8_combout\);

\FD|BR|saidaA[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~9_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[28]~8_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28~portbdataout\)) # (!\FD|BR|saidaA[28]~8_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(67),
	datad => \FD|BR|saidaA[28]~8_combout\,
	combout => \FD|BR|saidaA[28]~9_combout\);

\FD|id_ex_reg|inAlu[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(28));

\FD|ex_mem_reg|inregmemwd[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(27));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(65));

\FD|BR|bancoReg_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(66));

\FD|BR|saidaA[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~10_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(66) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(66),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[27]~10_combout\);

\FD|BR|saidaA[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~11_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[27]~10_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27~portbdataout\)) # (!\FD|BR|saidaA[27]~10_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(65),
	datad => \FD|BR|saidaA[27]~10_combout\,
	combout => \FD|BR|saidaA[27]~11_combout\);

\FD|id_ex_reg|inAlu[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(27));

\FD|ex_mem_reg|inregmemwd[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(26));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(63));

\FD|BR|bancoReg_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(64));

\FD|BR|saidaA[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~12_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(64) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(64),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[26]~12_combout\);

\FD|BR|saidaA[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~13_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[26]~12_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26~portbdataout\)) # (!\FD|BR|saidaA[26]~12_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(63),
	datad => \FD|BR|saidaA[26]~12_combout\,
	combout => \FD|BR|saidaA[26]~13_combout\);

\FD|id_ex_reg|inAlu[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(26));

\FD|ex_mem_reg|inregmemwd[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(25));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(61));

\FD|BR|bancoReg_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(62));

\FD|BR|saidaA[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~14_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(62) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(62),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[25]~14_combout\);

\FD|BR|saidaA[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~15_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[25]~14_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25~portbdataout\)) # (!\FD|BR|saidaA[25]~14_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(61))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(61),
	datad => \FD|BR|saidaA[25]~14_combout\,
	combout => \FD|BR|saidaA[25]~15_combout\);

\FD|id_ex_reg|inAlu[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(25));

\FD|ex_mem_reg|inregmemwd[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(24));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(59));

\FD|BR|bancoReg_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(60));

\FD|BR|saidaA[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~16_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(60) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(60),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[24]~16_combout\);

\FD|BR|saidaA[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~17_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[24]~16_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24~portbdataout\)) # (!\FD|BR|saidaA[24]~16_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(59))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(59),
	datad => \FD|BR|saidaA[24]~16_combout\,
	combout => \FD|BR|saidaA[24]~17_combout\);

\FD|id_ex_reg|inAlu[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(24));

\FD|ex_mem_reg|inregmemwd[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(23));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(57));

\FD|BR|bancoReg_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(58));

\FD|BR|saidaA[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~18_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(58) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(58),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[23]~18_combout\);

\FD|BR|saidaA[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~19_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[23]~18_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23~portbdataout\)) # (!\FD|BR|saidaA[23]~18_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(57),
	datad => \FD|BR|saidaA[23]~18_combout\,
	combout => \FD|BR|saidaA[23]~19_combout\);

\FD|id_ex_reg|inAlu[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(23));

\FD|ex_mem_reg|inregmemwd[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(22));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(55));

\FD|BR|bancoReg_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(56));

\FD|BR|saidaA[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~20_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(56) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(56),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[22]~20_combout\);

\FD|BR|saidaA[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~21_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[22]~20_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22~portbdataout\)) # (!\FD|BR|saidaA[22]~20_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(55),
	datad => \FD|BR|saidaA[22]~20_combout\,
	combout => \FD|BR|saidaA[22]~21_combout\);

\FD|id_ex_reg|inAlu[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(22));

\FD|ex_mem_reg|inregmemwd[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(21));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(53));

\FD|BR|bancoReg_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(54));

\FD|BR|saidaA[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~22_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(54) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(54),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[21]~22_combout\);

\FD|BR|saidaA[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~23_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[21]~22_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21~portbdataout\)) # (!\FD|BR|saidaA[21]~22_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(53),
	datad => \FD|BR|saidaA[21]~22_combout\,
	combout => \FD|BR|saidaA[21]~23_combout\);

\FD|id_ex_reg|inAlu[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[21]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(21));

\FD|ex_mem_reg|inregmemwd[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(20));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(51));

\FD|BR|bancoReg_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(52));

\FD|BR|saidaA[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~24_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(52) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(52),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[20]~24_combout\);

\FD|BR|saidaA[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~25_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[20]~24_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20~portbdataout\)) # (!\FD|BR|saidaA[20]~24_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(51),
	datad => \FD|BR|saidaA[20]~24_combout\,
	combout => \FD|BR|saidaA[20]~25_combout\);

\FD|id_ex_reg|inAlu[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(20));

\FD|ex_mem_reg|inregmemwd[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(19));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(49));

\FD|BR|bancoReg_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(50));

\FD|BR|saidaA[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~26_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(50) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(50),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[19]~26_combout\);

\FD|BR|saidaA[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~27_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[19]~26_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19~portbdataout\)) # (!\FD|BR|saidaA[19]~26_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(49),
	datad => \FD|BR|saidaA[19]~26_combout\,
	combout => \FD|BR|saidaA[19]~27_combout\);

\FD|id_ex_reg|inAlu[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(19));

\FD|ex_mem_reg|inregmemwd[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(18));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(47));

\FD|BR|bancoReg_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(48));

\FD|BR|saidaA[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~28_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(48) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(48),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[18]~28_combout\);

\FD|BR|saidaA[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~29_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[18]~28_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18~portbdataout\)) # (!\FD|BR|saidaA[18]~28_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(47),
	datad => \FD|BR|saidaA[18]~28_combout\,
	combout => \FD|BR|saidaA[18]~29_combout\);

\FD|id_ex_reg|inAlu[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(18));

\FD|ex_mem_reg|inregmemwd[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(17));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(45));

\FD|BR|bancoReg_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(46));

\FD|BR|saidaA[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~30_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(46) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(46),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[17]~30_combout\);

\FD|BR|saidaA[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~31_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[17]~30_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17~portbdataout\)) # (!\FD|BR|saidaA[17]~30_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(45),
	datad => \FD|BR|saidaA[17]~30_combout\,
	combout => \FD|BR|saidaA[17]~31_combout\);

\FD|id_ex_reg|inAlu[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[17]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(17));

\FD|ex_mem_reg|inregmemwd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(16));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(43));

\FD|BR|bancoReg_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(44));

\FD|BR|saidaA[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~32_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(44) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(44),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[16]~32_combout\);

\FD|BR|saidaA[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~33_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[16]~32_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16~portbdataout\)) # (!\FD|BR|saidaA[16]~32_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(43),
	datad => \FD|BR|saidaA[16]~32_combout\,
	combout => \FD|BR|saidaA[16]~33_combout\);

\FD|id_ex_reg|inAlu[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(16));

\FD|ex_mem_reg|inregmemwd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(15));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(41));

\FD|BR|bancoReg_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(42));

\FD|BR|saidaA[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~34_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(42) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(42),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[15]~34_combout\);

\FD|BR|saidaA[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~35_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[15]~34_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15~portbdataout\)) # (!\FD|BR|saidaA[15]~34_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(41),
	datad => \FD|BR|saidaA[15]~34_combout\,
	combout => \FD|BR|saidaA[15]~35_combout\);

\FD|id_ex_reg|inAlu[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(15));

\FD|ex_mem_reg|inregmemwd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(14));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(39));

\FD|BR|bancoReg_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(40));

\FD|BR|saidaA[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~36_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(40) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(40),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[14]~36_combout\);

\FD|BR|saidaA[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~37_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[14]~36_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14~portbdataout\)) # (!\FD|BR|saidaA[14]~36_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(39),
	datad => \FD|BR|saidaA[14]~36_combout\,
	combout => \FD|BR|saidaA[14]~37_combout\);

\FD|id_ex_reg|inAlu[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(14));

\FD|ex_mem_reg|inregmemwd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(13));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(37));

\FD|BR|bancoReg_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(38));

\FD|BR|saidaA[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~38_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(38) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(38),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[13]~38_combout\);

\FD|BR|saidaA[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~39_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[13]~38_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13~portbdataout\)) # (!\FD|BR|saidaA[13]~38_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(37),
	datad => \FD|BR|saidaA[13]~38_combout\,
	combout => \FD|BR|saidaA[13]~39_combout\);

\FD|id_ex_reg|inAlu[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(13));

\FD|ex_mem_reg|inregmemwd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(12));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(35));

\FD|BR|bancoReg_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(36));

\FD|BR|saidaA[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(36) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(36),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[12]~40_combout\);

\FD|BR|saidaA[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~41_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[12]~40_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12~portbdataout\)) # (!\FD|BR|saidaA[12]~40_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(35),
	datad => \FD|BR|saidaA[12]~40_combout\,
	combout => \FD|BR|saidaA[12]~41_combout\);

\FD|id_ex_reg|inAlu[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(12));

\FD|ex_mem_reg|inregmemwd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(11));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(33));

\FD|BR|bancoReg_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(34));

\FD|BR|saidaA[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~42_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(34) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(34),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[11]~42_combout\);

\FD|BR|saidaA[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~43_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[11]~42_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11~portbdataout\)) # (!\FD|BR|saidaA[11]~42_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(33),
	datad => \FD|BR|saidaA[11]~42_combout\,
	combout => \FD|BR|saidaA[11]~43_combout\);

\FD|id_ex_reg|inAlu[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(11));

\FD|ex_mem_reg|inregmemwd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(10));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(31));

\FD|BR|bancoReg_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(32));

\FD|BR|saidaA[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~44_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(32) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(32),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[10]~44_combout\);

\FD|BR|saidaA[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~45_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[10]~44_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10~portbdataout\)) # (!\FD|BR|saidaA[10]~44_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(31),
	datad => \FD|BR|saidaA[10]~44_combout\,
	combout => \FD|BR|saidaA[10]~45_combout\);

\FD|id_ex_reg|inAlu[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(10));

\FD|ex_mem_reg|inregmemwd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(9));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(29));

\FD|BR|bancoReg_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(30));

\FD|BR|saidaA[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~46_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(30) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(30),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[9]~46_combout\);

\FD|BR|saidaA[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~47_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[9]~46_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9~portbdataout\)) # (!\FD|BR|saidaA[9]~46_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(29),
	datad => \FD|BR|saidaA[9]~46_combout\,
	combout => \FD|BR|saidaA[9]~47_combout\);

\FD|id_ex_reg|inAlu[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(9));

\FD|ex_mem_reg|inregmemwd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inMux\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(8));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(27));

\FD|BR|bancoReg_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(28));

\FD|BR|saidaA[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~48_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(28) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(28),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[8]~48_combout\);

\FD|BR|saidaA[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~49_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[8]~48_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8~portbdataout\)) # (!\FD|BR|saidaA[8]~48_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(27),
	datad => \FD|BR|saidaA[8]~48_combout\,
	combout => \FD|BR|saidaA[8]~49_combout\);

\FD|id_ex_reg|inAlu[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaA[8]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(8));

\FD|ULA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~14_combout\ = (\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|id_ex_reg|inAlu\(7) & (!\FD|ULA|Add1~13\)) # (!\FD|id_ex_reg|inAlu\(7) & ((\FD|ULA|Add1~13\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|id_ex_reg|inAlu\(7) & 
-- (\FD|ULA|Add1~13\ & VCC)) # (!\FD|id_ex_reg|inAlu\(7) & (!\FD|ULA|Add1~13\))))
-- \FD|ULA|Add1~15\ = CARRY((\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((!\FD|ULA|Add1~13\) # (!\FD|id_ex_reg|inAlu\(7)))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & (!\FD|id_ex_reg|inAlu\(7) & !\FD|ULA|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datab => \FD|id_ex_reg|inAlu\(7),
	datad => VCC,
	cin => \FD|ULA|Add1~13\,
	combout => \FD|ULA|Add1~14_combout\,
	cout => \FD|ULA|Add1~15\);

\FD|ULA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~16_combout\ = ((\FD|mux_Banco_Ula|saida[8]~24_combout\ $ (\FD|id_ex_reg|inAlu\(8) $ (\FD|ULA|Add1~15\)))) # (GND)
-- \FD|ULA|Add1~17\ = CARRY((\FD|mux_Banco_Ula|saida[8]~24_combout\ & (\FD|id_ex_reg|inAlu\(8) & !\FD|ULA|Add1~15\)) # (!\FD|mux_Banco_Ula|saida[8]~24_combout\ & ((\FD|id_ex_reg|inAlu\(8)) # (!\FD|ULA|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datab => \FD|id_ex_reg|inAlu\(8),
	datad => VCC,
	cin => \FD|ULA|Add1~15\,
	combout => \FD|ULA|Add1~16_combout\,
	cout => \FD|ULA|Add1~17\);

\FD|ULA|soma[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[1]~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|id_ex_reg|inAlu\(1) & (\FD|ULA|soma[0]~1\ & VCC)) # (!\FD|id_ex_reg|inAlu\(1) & (!\FD|ULA|soma[0]~1\)))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|id_ex_reg|inAlu\(1) & 
-- (!\FD|ULA|soma[0]~1\)) # (!\FD|id_ex_reg|inAlu\(1) & ((\FD|ULA|soma[0]~1\) # (GND)))))
-- \FD|ULA|soma[1]~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~31_combout\ & (!\FD|id_ex_reg|inAlu\(1) & !\FD|ULA|soma[0]~1\)) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((!\FD|ULA|soma[0]~1\) # (!\FD|id_ex_reg|inAlu\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datab => \FD|id_ex_reg|inAlu\(1),
	datad => VCC,
	cin => \FD|ULA|soma[0]~1\,
	combout => \FD|ULA|soma[1]~2_combout\,
	cout => \FD|ULA|soma[1]~3\);

\FD|ULA|soma[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[2]~4_combout\ = ((\FD|mux_Banco_Ula|saida[2]~30_combout\ $ (\FD|id_ex_reg|inAlu\(2) $ (!\FD|ULA|soma[1]~3\)))) # (GND)
-- \FD|ULA|soma[2]~5\ = CARRY((\FD|mux_Banco_Ula|saida[2]~30_combout\ & ((\FD|id_ex_reg|inAlu\(2)) # (!\FD|ULA|soma[1]~3\))) # (!\FD|mux_Banco_Ula|saida[2]~30_combout\ & (\FD|id_ex_reg|inAlu\(2) & !\FD|ULA|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|id_ex_reg|inAlu\(2),
	datad => VCC,
	cin => \FD|ULA|soma[1]~3\,
	combout => \FD|ULA|soma[2]~4_combout\,
	cout => \FD|ULA|soma[2]~5\);

\FD|ULA|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[3]~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|id_ex_reg|inAlu\(3) & (\FD|ULA|soma[2]~5\ & VCC)) # (!\FD|id_ex_reg|inAlu\(3) & (!\FD|ULA|soma[2]~5\)))) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|id_ex_reg|inAlu\(3) & 
-- (!\FD|ULA|soma[2]~5\)) # (!\FD|id_ex_reg|inAlu\(3) & ((\FD|ULA|soma[2]~5\) # (GND)))))
-- \FD|ULA|soma[3]~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|id_ex_reg|inAlu\(3) & !\FD|ULA|soma[2]~5\)) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((!\FD|ULA|soma[2]~5\) # (!\FD|id_ex_reg|inAlu\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datab => \FD|id_ex_reg|inAlu\(3),
	datad => VCC,
	cin => \FD|ULA|soma[2]~5\,
	combout => \FD|ULA|soma[3]~6_combout\,
	cout => \FD|ULA|soma[3]~7\);

\FD|ULA|soma[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[4]~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~28_combout\ $ (\FD|id_ex_reg|inAlu\(4) $ (!\FD|ULA|soma[3]~7\)))) # (GND)
-- \FD|ULA|soma[4]~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~28_combout\ & ((\FD|id_ex_reg|inAlu\(4)) # (!\FD|ULA|soma[3]~7\))) # (!\FD|mux_Banco_Ula|saida[4]~28_combout\ & (\FD|id_ex_reg|inAlu\(4) & !\FD|ULA|soma[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datab => \FD|id_ex_reg|inAlu\(4),
	datad => VCC,
	cin => \FD|ULA|soma[3]~7\,
	combout => \FD|ULA|soma[4]~8_combout\,
	cout => \FD|ULA|soma[4]~9\);

\FD|ULA|soma[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[5]~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|id_ex_reg|inAlu\(5) & (\FD|ULA|soma[4]~9\ & VCC)) # (!\FD|id_ex_reg|inAlu\(5) & (!\FD|ULA|soma[4]~9\)))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|id_ex_reg|inAlu\(5) & 
-- (!\FD|ULA|soma[4]~9\)) # (!\FD|id_ex_reg|inAlu\(5) & ((\FD|ULA|soma[4]~9\) # (GND)))))
-- \FD|ULA|soma[5]~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|id_ex_reg|inAlu\(5) & !\FD|ULA|soma[4]~9\)) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((!\FD|ULA|soma[4]~9\) # (!\FD|id_ex_reg|inAlu\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datab => \FD|id_ex_reg|inAlu\(5),
	datad => VCC,
	cin => \FD|ULA|soma[4]~9\,
	combout => \FD|ULA|soma[5]~10_combout\,
	cout => \FD|ULA|soma[5]~11\);

\FD|ULA|soma[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[6]~12_combout\ = ((\FD|mux_Banco_Ula|saida[6]~26_combout\ $ (\FD|id_ex_reg|inAlu\(6) $ (!\FD|ULA|soma[5]~11\)))) # (GND)
-- \FD|ULA|soma[6]~13\ = CARRY((\FD|mux_Banco_Ula|saida[6]~26_combout\ & ((\FD|id_ex_reg|inAlu\(6)) # (!\FD|ULA|soma[5]~11\))) # (!\FD|mux_Banco_Ula|saida[6]~26_combout\ & (\FD|id_ex_reg|inAlu\(6) & !\FD|ULA|soma[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datab => \FD|id_ex_reg|inAlu\(6),
	datad => VCC,
	cin => \FD|ULA|soma[5]~11\,
	combout => \FD|ULA|soma[6]~12_combout\,
	cout => \FD|ULA|soma[6]~13\);

\FD|ULA|soma[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[7]~14_combout\ = (\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|id_ex_reg|inAlu\(7) & (\FD|ULA|soma[6]~13\ & VCC)) # (!\FD|id_ex_reg|inAlu\(7) & (!\FD|ULA|soma[6]~13\)))) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((\FD|id_ex_reg|inAlu\(7) 
-- & (!\FD|ULA|soma[6]~13\)) # (!\FD|id_ex_reg|inAlu\(7) & ((\FD|ULA|soma[6]~13\) # (GND)))))
-- \FD|ULA|soma[7]~15\ = CARRY((\FD|mux_Banco_Ula|saida[7]~25_combout\ & (!\FD|id_ex_reg|inAlu\(7) & !\FD|ULA|soma[6]~13\)) # (!\FD|mux_Banco_Ula|saida[7]~25_combout\ & ((!\FD|ULA|soma[6]~13\) # (!\FD|id_ex_reg|inAlu\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datab => \FD|id_ex_reg|inAlu\(7),
	datad => VCC,
	cin => \FD|ULA|soma[6]~13\,
	combout => \FD|ULA|soma[7]~14_combout\,
	cout => \FD|ULA|soma[7]~15\);

\FD|ULA|soma[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[8]~16_combout\ = ((\FD|mux_Banco_Ula|saida[8]~24_combout\ $ (\FD|id_ex_reg|inAlu\(8) $ (!\FD|ULA|soma[7]~15\)))) # (GND)
-- \FD|ULA|soma[8]~17\ = CARRY((\FD|mux_Banco_Ula|saida[8]~24_combout\ & ((\FD|id_ex_reg|inAlu\(8)) # (!\FD|ULA|soma[7]~15\))) # (!\FD|mux_Banco_Ula|saida[8]~24_combout\ & (\FD|id_ex_reg|inAlu\(8) & !\FD|ULA|soma[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datab => \FD|id_ex_reg|inAlu\(8),
	datad => VCC,
	cin => \FD|ULA|soma[7]~15\,
	combout => \FD|ULA|soma[8]~16_combout\,
	cout => \FD|ULA|soma[8]~17\);

\FD|ULA|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~0_combout\ = (\FD|ULA|soma[8]~16_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[8]~16_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux23~0_combout\);

\FD|ULA|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~16_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux23~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~16_combout\,
	datab => \FD|ULA|Mux23~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux23~1_combout\);

\FD|ULA|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~2_combout\ = (\FD|ULA|Mux23~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[8]~24_combout\ & \FD|id_ex_reg|inAlu\(8))))) # (!\FD|ULA|Mux23~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[8]~24_combout\) # (\FD|id_ex_reg|inAlu\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~24_combout\,
	datab => \FD|id_ex_reg|inAlu\(8),
	datac => \FD|ULA|Mux23~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux23~2_combout\);

\FD|ULA|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~3_combout\ = (\FD|ULA|Mux23~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux23~3_combout\);

\hex7seg|reg2|reg4_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux23~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg2|reg4_o\(0));

\FD|mem_wb_reg|mux_0ent[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg2|reg4_o\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(8));

\FD|mux_Ula_Memoria|saida[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[8]~24_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(8),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[8]~24_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(27));

\FD|BR|bancoReg_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(28));

\FD|BR|saidaB[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~48_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(28) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(28),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[8]~48_combout\);

\FD|BR|saidaB[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~49_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[8]~48_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8~portbdataout\)) # (!\FD|BR|saidaB[8]~48_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(27),
	datac => \FD|BR|saidaB[8]~48_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[8]~49_combout\);

\FD|id_ex_reg|inMux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[8]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(8));

\FD|mux_Banco_Ula|saida[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[8]~24_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(8),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[8]~24_combout\);

\FD|ULA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|id_ex_reg|inAlu\(9) & (!\FD|ULA|Add1~17\)) # (!\FD|id_ex_reg|inAlu\(9) & ((\FD|ULA|Add1~17\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|id_ex_reg|inAlu\(9) & 
-- (\FD|ULA|Add1~17\ & VCC)) # (!\FD|id_ex_reg|inAlu\(9) & (!\FD|ULA|Add1~17\))))
-- \FD|ULA|Add1~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((!\FD|ULA|Add1~17\) # (!\FD|id_ex_reg|inAlu\(9)))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|id_ex_reg|inAlu\(9) & !\FD|ULA|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datab => \FD|id_ex_reg|inAlu\(9),
	datad => VCC,
	cin => \FD|ULA|Add1~17\,
	combout => \FD|ULA|Add1~18_combout\,
	cout => \FD|ULA|Add1~19\);

\FD|ULA|soma[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[9]~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|id_ex_reg|inAlu\(9) & (\FD|ULA|soma[8]~17\ & VCC)) # (!\FD|id_ex_reg|inAlu\(9) & (!\FD|ULA|soma[8]~17\)))) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((\FD|id_ex_reg|inAlu\(9) 
-- & (!\FD|ULA|soma[8]~17\)) # (!\FD|id_ex_reg|inAlu\(9) & ((\FD|ULA|soma[8]~17\) # (GND)))))
-- \FD|ULA|soma[9]~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~23_combout\ & (!\FD|id_ex_reg|inAlu\(9) & !\FD|ULA|soma[8]~17\)) # (!\FD|mux_Banco_Ula|saida[9]~23_combout\ & ((!\FD|ULA|soma[8]~17\) # (!\FD|id_ex_reg|inAlu\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datab => \FD|id_ex_reg|inAlu\(9),
	datad => VCC,
	cin => \FD|ULA|soma[8]~17\,
	combout => \FD|ULA|soma[9]~18_combout\,
	cout => \FD|ULA|soma[9]~19\);

\FD|ULA|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~0_combout\ = (\FD|ULA|soma[9]~18_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[9]~18_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux22~0_combout\);

\FD|ULA|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~18_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux22~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~18_combout\,
	datab => \FD|ULA|Mux22~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux22~1_combout\);

\FD|ULA|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~2_combout\ = (\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[9]~23_combout\ & \FD|id_ex_reg|inAlu\(9))))) # (!\FD|ULA|Mux22~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[9]~23_combout\) # (\FD|id_ex_reg|inAlu\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~23_combout\,
	datab => \FD|id_ex_reg|inAlu\(9),
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux22~2_combout\);

\FD|ULA|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~3_combout\ = (\FD|ULA|Mux22~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux22~3_combout\);

\hex7seg|reg2|reg4_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg2|reg4_o\(1));

\FD|mem_wb_reg|mux_0ent[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg2|reg4_o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(9));

\FD|mux_Ula_Memoria|saida[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[9]~23_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(9),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[9]~23_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(29));

\FD|BR|bancoReg_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(30));

\FD|BR|saidaB[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~46_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(30) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(30),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[9]~46_combout\);

\FD|BR|saidaB[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~47_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[9]~46_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9~portbdataout\)) # (!\FD|BR|saidaB[9]~46_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(29),
	datac => \FD|BR|saidaB[9]~46_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[9]~47_combout\);

\FD|id_ex_reg|inMux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(9));

\FD|mux_Banco_Ula|saida[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[9]~23_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(9),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[9]~23_combout\);

\FD|ULA|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~20_combout\ = ((\FD|mux_Banco_Ula|saida[10]~22_combout\ $ (\FD|id_ex_reg|inAlu\(10) $ (\FD|ULA|Add1~19\)))) # (GND)
-- \FD|ULA|Add1~21\ = CARRY((\FD|mux_Banco_Ula|saida[10]~22_combout\ & (\FD|id_ex_reg|inAlu\(10) & !\FD|ULA|Add1~19\)) # (!\FD|mux_Banco_Ula|saida[10]~22_combout\ & ((\FD|id_ex_reg|inAlu\(10)) # (!\FD|ULA|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datab => \FD|id_ex_reg|inAlu\(10),
	datad => VCC,
	cin => \FD|ULA|Add1~19\,
	combout => \FD|ULA|Add1~20_combout\,
	cout => \FD|ULA|Add1~21\);

\FD|ULA|soma[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[10]~20_combout\ = ((\FD|mux_Banco_Ula|saida[10]~22_combout\ $ (\FD|id_ex_reg|inAlu\(10) $ (!\FD|ULA|soma[9]~19\)))) # (GND)
-- \FD|ULA|soma[10]~21\ = CARRY((\FD|mux_Banco_Ula|saida[10]~22_combout\ & ((\FD|id_ex_reg|inAlu\(10)) # (!\FD|ULA|soma[9]~19\))) # (!\FD|mux_Banco_Ula|saida[10]~22_combout\ & (\FD|id_ex_reg|inAlu\(10) & !\FD|ULA|soma[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datab => \FD|id_ex_reg|inAlu\(10),
	datad => VCC,
	cin => \FD|ULA|soma[9]~19\,
	combout => \FD|ULA|soma[10]~20_combout\,
	cout => \FD|ULA|soma[10]~21\);

\FD|ULA|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~0_combout\ = (\FD|ULA|soma[10]~20_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[10]~20_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux21~0_combout\);

\FD|ULA|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~20_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux21~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~20_combout\,
	datab => \FD|ULA|Mux21~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux21~1_combout\);

\FD|ULA|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~2_combout\ = (\FD|ULA|Mux21~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[10]~22_combout\ & \FD|id_ex_reg|inAlu\(10))))) # (!\FD|ULA|Mux21~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[10]~22_combout\) # (\FD|id_ex_reg|inAlu\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~22_combout\,
	datab => \FD|id_ex_reg|inAlu\(10),
	datac => \FD|ULA|Mux21~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux21~2_combout\);

\FD|ULA|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~3_combout\ = (\FD|ULA|Mux21~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux21~3_combout\);

\hex7seg|reg2|reg4_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg2|reg4_o\(2));

\FD|mem_wb_reg|mux_0ent[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg2|reg4_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(10));

\FD|mux_Ula_Memoria|saida[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[10]~22_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(10),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[10]~22_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(31));

\FD|BR|bancoReg_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(32));

\FD|BR|saidaB[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~44_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(32) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(32),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[10]~44_combout\);

\FD|BR|saidaB[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~45_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[10]~44_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10~portbdataout\)) # (!\FD|BR|saidaB[10]~44_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(31),
	datac => \FD|BR|saidaB[10]~44_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[10]~45_combout\);

\FD|id_ex_reg|inMux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[10]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(10));

\FD|mux_Banco_Ula|saida[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[10]~22_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(10),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[10]~22_combout\);

\FD|ULA|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~22_combout\ = (\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|id_ex_reg|inAlu\(11) & (!\FD|ULA|Add1~21\)) # (!\FD|id_ex_reg|inAlu\(11) & ((\FD|ULA|Add1~21\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|id_ex_reg|inAlu\(11) 
-- & (\FD|ULA|Add1~21\ & VCC)) # (!\FD|id_ex_reg|inAlu\(11) & (!\FD|ULA|Add1~21\))))
-- \FD|ULA|Add1~23\ = CARRY((\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((!\FD|ULA|Add1~21\) # (!\FD|id_ex_reg|inAlu\(11)))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & (!\FD|id_ex_reg|inAlu\(11) & !\FD|ULA|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|id_ex_reg|inAlu\(11),
	datad => VCC,
	cin => \FD|ULA|Add1~21\,
	combout => \FD|ULA|Add1~22_combout\,
	cout => \FD|ULA|Add1~23\);

\FD|ULA|soma[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[11]~22_combout\ = (\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((\FD|id_ex_reg|inAlu\(11) & (\FD|ULA|soma[10]~21\ & VCC)) # (!\FD|id_ex_reg|inAlu\(11) & (!\FD|ULA|soma[10]~21\)))) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(11) & (!\FD|ULA|soma[10]~21\)) # (!\FD|id_ex_reg|inAlu\(11) & ((\FD|ULA|soma[10]~21\) # (GND)))))
-- \FD|ULA|soma[11]~23\ = CARRY((\FD|mux_Banco_Ula|saida[11]~21_combout\ & (!\FD|id_ex_reg|inAlu\(11) & !\FD|ULA|soma[10]~21\)) # (!\FD|mux_Banco_Ula|saida[11]~21_combout\ & ((!\FD|ULA|soma[10]~21\) # (!\FD|id_ex_reg|inAlu\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|id_ex_reg|inAlu\(11),
	datad => VCC,
	cin => \FD|ULA|soma[10]~21\,
	combout => \FD|ULA|soma[11]~22_combout\,
	cout => \FD|ULA|soma[11]~23\);

\FD|ULA|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~0_combout\ = (\FD|ULA|soma[11]~22_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[11]~22_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux20~0_combout\);

\FD|ULA|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~22_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux20~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~22_combout\,
	datab => \FD|ULA|Mux20~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux20~1_combout\);

\FD|ULA|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~2_combout\ = (\FD|ULA|Mux20~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[11]~21_combout\ & \FD|id_ex_reg|inAlu\(11))))) # (!\FD|ULA|Mux20~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[11]~21_combout\) # (\FD|id_ex_reg|inAlu\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~21_combout\,
	datab => \FD|id_ex_reg|inAlu\(11),
	datac => \FD|ULA|Mux20~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux20~2_combout\);

\FD|ULA|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~3_combout\ = (\FD|ULA|Mux20~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux20~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux20~3_combout\);

\hex7seg|reg2|reg4_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg2|reg4_o\(3));

\FD|mem_wb_reg|mux_0ent[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg2|reg4_o\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(11));

\FD|mux_Ula_Memoria|saida[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[11]~21_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(11),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[11]~21_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(33));

\FD|BR|bancoReg_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(34));

\FD|BR|saidaB[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~42_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(34) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(34),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[11]~42_combout\);

\FD|BR|saidaB[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~43_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[11]~42_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11~portbdataout\)) # (!\FD|BR|saidaB[11]~42_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(33),
	datac => \FD|BR|saidaB[11]~42_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[11]~43_combout\);

\FD|id_ex_reg|inMux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(11));

\FD|mux_Banco_Ula|saida[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[11]~21_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(11),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[11]~21_combout\);

\FD|ULA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~20_combout\ $ (\FD|id_ex_reg|inAlu\(12) $ (\FD|ULA|Add1~23\)))) # (GND)
-- \FD|ULA|Add1~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~20_combout\ & (\FD|id_ex_reg|inAlu\(12) & !\FD|ULA|Add1~23\)) # (!\FD|mux_Banco_Ula|saida[12]~20_combout\ & ((\FD|id_ex_reg|inAlu\(12)) # (!\FD|ULA|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|id_ex_reg|inAlu\(12),
	datad => VCC,
	cin => \FD|ULA|Add1~23\,
	combout => \FD|ULA|Add1~24_combout\,
	cout => \FD|ULA|Add1~25\);

\FD|ULA|soma[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[12]~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~20_combout\ $ (\FD|id_ex_reg|inAlu\(12) $ (!\FD|ULA|soma[11]~23\)))) # (GND)
-- \FD|ULA|soma[12]~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~20_combout\ & ((\FD|id_ex_reg|inAlu\(12)) # (!\FD|ULA|soma[11]~23\))) # (!\FD|mux_Banco_Ula|saida[12]~20_combout\ & (\FD|id_ex_reg|inAlu\(12) & !\FD|ULA|soma[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|id_ex_reg|inAlu\(12),
	datad => VCC,
	cin => \FD|ULA|soma[11]~23\,
	combout => \FD|ULA|soma[12]~24_combout\,
	cout => \FD|ULA|soma[12]~25\);

\FD|ULA|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~0_combout\ = (\FD|ULA|soma[12]~24_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[12]~24_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux19~0_combout\);

\FD|ULA|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~24_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux19~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~24_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux19~1_combout\);

\FD|ULA|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~2_combout\ = (\FD|ULA|Mux19~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[12]~20_combout\ & \FD|id_ex_reg|inAlu\(12))))) # (!\FD|ULA|Mux19~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[12]~20_combout\) # (\FD|id_ex_reg|inAlu\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~20_combout\,
	datab => \FD|id_ex_reg|inAlu\(12),
	datac => \FD|ULA|Mux19~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux19~2_combout\);

\FD|ULA|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~3_combout\ = (\FD|ULA|Mux19~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux19~3_combout\);

\hex7seg|reg3|reg4_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux19~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg3|reg4_o\(0));

\FD|mem_wb_reg|mux_0ent[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg3|reg4_o\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(12));

\FD|mux_Ula_Memoria|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[12]~20_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(12),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[12]~20_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(35));

\FD|BR|bancoReg_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(36));

\FD|BR|saidaB[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~40_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(36) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(36),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[12]~40_combout\);

\FD|BR|saidaB[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~41_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[12]~40_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12~portbdataout\)) # (!\FD|BR|saidaB[12]~40_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(35),
	datac => \FD|BR|saidaB[12]~40_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[12]~41_combout\);

\FD|id_ex_reg|inMux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(12));

\FD|mux_Banco_Ula|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[12]~20_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(12),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[12]~20_combout\);

\FD|ULA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~26_combout\ = (\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|id_ex_reg|inAlu\(13) & (!\FD|ULA|Add1~25\)) # (!\FD|id_ex_reg|inAlu\(13) & ((\FD|ULA|Add1~25\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|id_ex_reg|inAlu\(13) 
-- & (\FD|ULA|Add1~25\ & VCC)) # (!\FD|id_ex_reg|inAlu\(13) & (!\FD|ULA|Add1~25\))))
-- \FD|ULA|Add1~27\ = CARRY((\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((!\FD|ULA|Add1~25\) # (!\FD|id_ex_reg|inAlu\(13)))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|id_ex_reg|inAlu\(13) & !\FD|ULA|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datab => \FD|id_ex_reg|inAlu\(13),
	datad => VCC,
	cin => \FD|ULA|Add1~25\,
	combout => \FD|ULA|Add1~26_combout\,
	cout => \FD|ULA|Add1~27\);

\FD|ULA|soma[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[13]~26_combout\ = (\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((\FD|id_ex_reg|inAlu\(13) & (\FD|ULA|soma[12]~25\ & VCC)) # (!\FD|id_ex_reg|inAlu\(13) & (!\FD|ULA|soma[12]~25\)))) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(13) & (!\FD|ULA|soma[12]~25\)) # (!\FD|id_ex_reg|inAlu\(13) & ((\FD|ULA|soma[12]~25\) # (GND)))))
-- \FD|ULA|soma[13]~27\ = CARRY((\FD|mux_Banco_Ula|saida[13]~19_combout\ & (!\FD|id_ex_reg|inAlu\(13) & !\FD|ULA|soma[12]~25\)) # (!\FD|mux_Banco_Ula|saida[13]~19_combout\ & ((!\FD|ULA|soma[12]~25\) # (!\FD|id_ex_reg|inAlu\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datab => \FD|id_ex_reg|inAlu\(13),
	datad => VCC,
	cin => \FD|ULA|soma[12]~25\,
	combout => \FD|ULA|soma[13]~26_combout\,
	cout => \FD|ULA|soma[13]~27\);

\FD|ULA|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~0_combout\ = (\FD|ULA|soma[13]~26_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[13]~26_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux18~0_combout\);

\FD|ULA|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~26_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux18~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~26_combout\,
	datab => \FD|ULA|Mux18~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux18~1_combout\);

\FD|ULA|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~2_combout\ = (\FD|ULA|Mux18~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[13]~19_combout\ & \FD|id_ex_reg|inAlu\(13))))) # (!\FD|ULA|Mux18~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[13]~19_combout\) # (\FD|id_ex_reg|inAlu\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~19_combout\,
	datab => \FD|id_ex_reg|inAlu\(13),
	datac => \FD|ULA|Mux18~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux18~2_combout\);

\FD|ULA|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~3_combout\ = (\FD|ULA|Mux18~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux18~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux18~3_combout\);

\hex7seg|reg3|reg4_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg3|reg4_o\(1));

\FD|mem_wb_reg|mux_0ent[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg3|reg4_o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(13));

\FD|mux_Ula_Memoria|saida[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[13]~19_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(13),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[13]~19_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(37));

\FD|BR|bancoReg_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(38));

\FD|BR|saidaB[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(38) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(38),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[13]~38_combout\);

\FD|BR|saidaB[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~39_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[13]~38_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13~portbdataout\)) # (!\FD|BR|saidaB[13]~38_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(37),
	datac => \FD|BR|saidaB[13]~38_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[13]~39_combout\);

\FD|id_ex_reg|inMux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(13));

\FD|mux_Banco_Ula|saida[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[13]~19_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(13),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[13]~19_combout\);

\FD|ULA|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~28_combout\ = ((\FD|mux_Banco_Ula|saida[14]~18_combout\ $ (\FD|id_ex_reg|inAlu\(14) $ (\FD|ULA|Add1~27\)))) # (GND)
-- \FD|ULA|Add1~29\ = CARRY((\FD|mux_Banco_Ula|saida[14]~18_combout\ & (\FD|id_ex_reg|inAlu\(14) & !\FD|ULA|Add1~27\)) # (!\FD|mux_Banco_Ula|saida[14]~18_combout\ & ((\FD|id_ex_reg|inAlu\(14)) # (!\FD|ULA|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|id_ex_reg|inAlu\(14),
	datad => VCC,
	cin => \FD|ULA|Add1~27\,
	combout => \FD|ULA|Add1~28_combout\,
	cout => \FD|ULA|Add1~29\);

\FD|ULA|soma[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[14]~28_combout\ = ((\FD|mux_Banco_Ula|saida[14]~18_combout\ $ (\FD|id_ex_reg|inAlu\(14) $ (!\FD|ULA|soma[13]~27\)))) # (GND)
-- \FD|ULA|soma[14]~29\ = CARRY((\FD|mux_Banco_Ula|saida[14]~18_combout\ & ((\FD|id_ex_reg|inAlu\(14)) # (!\FD|ULA|soma[13]~27\))) # (!\FD|mux_Banco_Ula|saida[14]~18_combout\ & (\FD|id_ex_reg|inAlu\(14) & !\FD|ULA|soma[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|id_ex_reg|inAlu\(14),
	datad => VCC,
	cin => \FD|ULA|soma[13]~27\,
	combout => \FD|ULA|soma[14]~28_combout\,
	cout => \FD|ULA|soma[14]~29\);

\FD|ULA|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~0_combout\ = (\FD|ULA|soma[14]~28_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[14]~28_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux17~0_combout\);

\FD|ULA|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~28_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux17~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~28_combout\,
	datab => \FD|ULA|Mux17~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux17~1_combout\);

\FD|ULA|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~2_combout\ = (\FD|ULA|Mux17~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[14]~18_combout\ & \FD|id_ex_reg|inAlu\(14))))) # (!\FD|ULA|Mux17~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[14]~18_combout\) # (\FD|id_ex_reg|inAlu\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~18_combout\,
	datab => \FD|id_ex_reg|inAlu\(14),
	datac => \FD|ULA|Mux17~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux17~2_combout\);

\FD|ULA|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~3_combout\ = (\FD|ULA|Mux17~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux17~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux17~3_combout\);

\hex7seg|reg3|reg4_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux17~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg3|reg4_o\(2));

\FD|mem_wb_reg|mux_0ent[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg3|reg4_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(14));

\FD|mux_Ula_Memoria|saida[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[14]~18_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(14),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[14]~18_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(39));

\FD|BR|bancoReg_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(40));

\FD|BR|saidaB[14]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~36_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(40) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(40),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[14]~36_combout\);

\FD|BR|saidaB[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~37_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[14]~36_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14~portbdataout\)) # (!\FD|BR|saidaB[14]~36_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(39),
	datac => \FD|BR|saidaB[14]~36_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[14]~37_combout\);

\FD|id_ex_reg|inMux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[14]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(14));

\FD|mux_Banco_Ula|saida[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[14]~18_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|rtout\(1))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|rtout\(1),
	datab => \FD|id_ex_reg|inMux\(14),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[14]~18_combout\);

\FD|ULA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~30_combout\ = (\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|id_ex_reg|inAlu\(15) & (!\FD|ULA|Add1~29\)) # (!\FD|id_ex_reg|inAlu\(15) & ((\FD|ULA|Add1~29\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|id_ex_reg|inAlu\(15) 
-- & (\FD|ULA|Add1~29\ & VCC)) # (!\FD|id_ex_reg|inAlu\(15) & (!\FD|ULA|Add1~29\))))
-- \FD|ULA|Add1~31\ = CARRY((\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((!\FD|ULA|Add1~29\) # (!\FD|id_ex_reg|inAlu\(15)))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|id_ex_reg|inAlu\(15) & !\FD|ULA|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datab => \FD|id_ex_reg|inAlu\(15),
	datad => VCC,
	cin => \FD|ULA|Add1~29\,
	combout => \FD|ULA|Add1~30_combout\,
	cout => \FD|ULA|Add1~31\);

\FD|ULA|soma[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[15]~30_combout\ = (\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((\FD|id_ex_reg|inAlu\(15) & (\FD|ULA|soma[14]~29\ & VCC)) # (!\FD|id_ex_reg|inAlu\(15) & (!\FD|ULA|soma[14]~29\)))) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(15) & (!\FD|ULA|soma[14]~29\)) # (!\FD|id_ex_reg|inAlu\(15) & ((\FD|ULA|soma[14]~29\) # (GND)))))
-- \FD|ULA|soma[15]~31\ = CARRY((\FD|mux_Banco_Ula|saida[15]~17_combout\ & (!\FD|id_ex_reg|inAlu\(15) & !\FD|ULA|soma[14]~29\)) # (!\FD|mux_Banco_Ula|saida[15]~17_combout\ & ((!\FD|ULA|soma[14]~29\) # (!\FD|id_ex_reg|inAlu\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datab => \FD|id_ex_reg|inAlu\(15),
	datad => VCC,
	cin => \FD|ULA|soma[14]~29\,
	combout => \FD|ULA|soma[15]~30_combout\,
	cout => \FD|ULA|soma[15]~31\);

\FD|ULA|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~0_combout\ = (\FD|ULA|soma[15]~30_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[15]~30_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux16~0_combout\);

\FD|ULA|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~30_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux16~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~30_combout\,
	datab => \FD|ULA|Mux16~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux16~1_combout\);

\FD|ULA|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~2_combout\ = (\FD|ULA|Mux16~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[15]~17_combout\ & \FD|id_ex_reg|inAlu\(15))))) # (!\FD|ULA|Mux16~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[15]~17_combout\) # (\FD|id_ex_reg|inAlu\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~17_combout\,
	datab => \FD|id_ex_reg|inAlu\(15),
	datac => \FD|ULA|Mux16~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux16~2_combout\);

\FD|ULA|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~3_combout\ = (\FD|ULA|Mux16~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux16~3_combout\);

\hex7seg|reg3|reg4_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg3|reg4_o\(3));

\FD|mem_wb_reg|mux_0ent[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg3|reg4_o\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(15));

\FD|mux_Ula_Memoria|saida[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[15]~17_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(15),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[15]~17_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(41));

\FD|BR|bancoReg_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(42));

\FD|BR|saidaB[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~34_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(42) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(42),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[15]~34_combout\);

\FD|BR|saidaB[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~35_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[15]~34_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15~portbdataout\)) # (!\FD|BR|saidaB[15]~34_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(41),
	datac => \FD|BR|saidaB[15]~34_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[15]~35_combout\);

\FD|id_ex_reg|inMux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(15));

\FD|mux_Banco_Ula|saida[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[15]~17_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(15),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[15]~17_combout\);

\FD|ULA|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~32_combout\ = ((\FD|mux_Banco_Ula|saida[16]~16_combout\ $ (\FD|id_ex_reg|inAlu\(16) $ (\FD|ULA|Add1~31\)))) # (GND)
-- \FD|ULA|Add1~33\ = CARRY((\FD|mux_Banco_Ula|saida[16]~16_combout\ & (\FD|id_ex_reg|inAlu\(16) & !\FD|ULA|Add1~31\)) # (!\FD|mux_Banco_Ula|saida[16]~16_combout\ & ((\FD|id_ex_reg|inAlu\(16)) # (!\FD|ULA|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datab => \FD|id_ex_reg|inAlu\(16),
	datad => VCC,
	cin => \FD|ULA|Add1~31\,
	combout => \FD|ULA|Add1~32_combout\,
	cout => \FD|ULA|Add1~33\);

\FD|ULA|soma[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[16]~32_combout\ = ((\FD|mux_Banco_Ula|saida[16]~16_combout\ $ (\FD|id_ex_reg|inAlu\(16) $ (!\FD|ULA|soma[15]~31\)))) # (GND)
-- \FD|ULA|soma[16]~33\ = CARRY((\FD|mux_Banco_Ula|saida[16]~16_combout\ & ((\FD|id_ex_reg|inAlu\(16)) # (!\FD|ULA|soma[15]~31\))) # (!\FD|mux_Banco_Ula|saida[16]~16_combout\ & (\FD|id_ex_reg|inAlu\(16) & !\FD|ULA|soma[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datab => \FD|id_ex_reg|inAlu\(16),
	datad => VCC,
	cin => \FD|ULA|soma[15]~31\,
	combout => \FD|ULA|soma[16]~32_combout\,
	cout => \FD|ULA|soma[16]~33\);

\FD|ULA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~0_combout\ = (\FD|ULA|soma[16]~32_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[16]~32_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux15~0_combout\);

\FD|ULA|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~32_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux15~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~32_combout\,
	datab => \FD|ULA|Mux15~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux15~1_combout\);

\FD|ULA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~2_combout\ = (\FD|ULA|Mux15~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[16]~16_combout\ & \FD|id_ex_reg|inAlu\(16))))) # (!\FD|ULA|Mux15~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[16]~16_combout\) # (\FD|id_ex_reg|inAlu\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~16_combout\,
	datab => \FD|id_ex_reg|inAlu\(16),
	datac => \FD|ULA|Mux15~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux15~2_combout\);

\FD|ULA|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~3_combout\ = (\FD|ULA|Mux15~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux15~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux15~3_combout\);

\hex7seg|reg4|reg4_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg4|reg4_o\(0));

\FD|mem_wb_reg|mux_0ent[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg4|reg4_o\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(16));

\FD|mux_Ula_Memoria|saida[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[16]~16_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(16),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[16]~16_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(43));

\FD|BR|bancoReg_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(44));

\FD|BR|saidaB[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~32_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(44) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(44),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[16]~32_combout\);

\FD|BR|saidaB[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~33_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[16]~32_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16~portbdataout\)) # (!\FD|BR|saidaB[16]~32_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(43),
	datac => \FD|BR|saidaB[16]~32_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[16]~33_combout\);

\FD|id_ex_reg|inMux[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[16]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(16));

\FD|mux_Banco_Ula|saida[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[16]~16_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(16),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[16]~16_combout\);

\FD|ULA|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|id_ex_reg|inAlu\(17) & (!\FD|ULA|Add1~33\)) # (!\FD|id_ex_reg|inAlu\(17) & ((\FD|ULA|Add1~33\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|id_ex_reg|inAlu\(17) 
-- & (\FD|ULA|Add1~33\ & VCC)) # (!\FD|id_ex_reg|inAlu\(17) & (!\FD|ULA|Add1~33\))))
-- \FD|ULA|Add1~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((!\FD|ULA|Add1~33\) # (!\FD|id_ex_reg|inAlu\(17)))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|id_ex_reg|inAlu\(17) & !\FD|ULA|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datab => \FD|id_ex_reg|inAlu\(17),
	datad => VCC,
	cin => \FD|ULA|Add1~33\,
	combout => \FD|ULA|Add1~34_combout\,
	cout => \FD|ULA|Add1~35\);

\FD|ULA|soma[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[17]~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((\FD|id_ex_reg|inAlu\(17) & (\FD|ULA|soma[16]~33\ & VCC)) # (!\FD|id_ex_reg|inAlu\(17) & (!\FD|ULA|soma[16]~33\)))) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(17) & (!\FD|ULA|soma[16]~33\)) # (!\FD|id_ex_reg|inAlu\(17) & ((\FD|ULA|soma[16]~33\) # (GND)))))
-- \FD|ULA|soma[17]~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~15_combout\ & (!\FD|id_ex_reg|inAlu\(17) & !\FD|ULA|soma[16]~33\)) # (!\FD|mux_Banco_Ula|saida[17]~15_combout\ & ((!\FD|ULA|soma[16]~33\) # (!\FD|id_ex_reg|inAlu\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datab => \FD|id_ex_reg|inAlu\(17),
	datad => VCC,
	cin => \FD|ULA|soma[16]~33\,
	combout => \FD|ULA|soma[17]~34_combout\,
	cout => \FD|ULA|soma[17]~35\);

\FD|ULA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~0_combout\ = (\FD|ULA|soma[17]~34_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[17]~34_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux14~0_combout\);

\FD|ULA|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~34_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux14~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~34_combout\,
	datab => \FD|ULA|Mux14~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux14~1_combout\);

\FD|ULA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~2_combout\ = (\FD|ULA|Mux14~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[17]~15_combout\ & \FD|id_ex_reg|inAlu\(17))))) # (!\FD|ULA|Mux14~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[17]~15_combout\) # (\FD|id_ex_reg|inAlu\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~15_combout\,
	datab => \FD|id_ex_reg|inAlu\(17),
	datac => \FD|ULA|Mux14~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux14~2_combout\);

\FD|ULA|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~3_combout\ = (\FD|ULA|Mux14~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux14~3_combout\);

\hex7seg|reg4|reg4_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg4|reg4_o\(1));

\FD|mem_wb_reg|mux_0ent[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg4|reg4_o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(17));

\FD|mux_Ula_Memoria|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[17]~15_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(17),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[17]~15_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(45));

\FD|BR|bancoReg_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(46));

\FD|BR|saidaB[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~30_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(46) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(46),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[17]~30_combout\);

\FD|BR|saidaB[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~31_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[17]~30_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17~portbdataout\)) # (!\FD|BR|saidaB[17]~30_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(45),
	datac => \FD|BR|saidaB[17]~30_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[17]~31_combout\);

\FD|id_ex_reg|inMux[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[17]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(17));

\FD|mux_Banco_Ula|saida[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[17]~15_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(17),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[17]~15_combout\);

\FD|ULA|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~36_combout\ = ((\FD|mux_Banco_Ula|saida[18]~14_combout\ $ (\FD|id_ex_reg|inAlu\(18) $ (\FD|ULA|Add1~35\)))) # (GND)
-- \FD|ULA|Add1~37\ = CARRY((\FD|mux_Banco_Ula|saida[18]~14_combout\ & (\FD|id_ex_reg|inAlu\(18) & !\FD|ULA|Add1~35\)) # (!\FD|mux_Banco_Ula|saida[18]~14_combout\ & ((\FD|id_ex_reg|inAlu\(18)) # (!\FD|ULA|Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|id_ex_reg|inAlu\(18),
	datad => VCC,
	cin => \FD|ULA|Add1~35\,
	combout => \FD|ULA|Add1~36_combout\,
	cout => \FD|ULA|Add1~37\);

\FD|ULA|soma[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[18]~36_combout\ = ((\FD|mux_Banco_Ula|saida[18]~14_combout\ $ (\FD|id_ex_reg|inAlu\(18) $ (!\FD|ULA|soma[17]~35\)))) # (GND)
-- \FD|ULA|soma[18]~37\ = CARRY((\FD|mux_Banco_Ula|saida[18]~14_combout\ & ((\FD|id_ex_reg|inAlu\(18)) # (!\FD|ULA|soma[17]~35\))) # (!\FD|mux_Banco_Ula|saida[18]~14_combout\ & (\FD|id_ex_reg|inAlu\(18) & !\FD|ULA|soma[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|id_ex_reg|inAlu\(18),
	datad => VCC,
	cin => \FD|ULA|soma[17]~35\,
	combout => \FD|ULA|soma[18]~36_combout\,
	cout => \FD|ULA|soma[18]~37\);

\FD|ULA|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~3_combout\ = (\FD|ULA|soma[18]~36_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[18]~36_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux13~3_combout\);

\FD|ULA|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~4_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~36_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux13~3_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~36_combout\,
	datab => \FD|ULA|Mux13~3_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux13~4_combout\);

\FD|ULA|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~5_combout\ = (\FD|ULA|Mux13~4_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[18]~14_combout\ & \FD|id_ex_reg|inAlu\(18))))) # (!\FD|ULA|Mux13~4_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[18]~14_combout\) # (\FD|id_ex_reg|inAlu\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~14_combout\,
	datab => \FD|id_ex_reg|inAlu\(18),
	datac => \FD|ULA|Mux13~4_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux13~5_combout\);

\FD|ULA|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~6_combout\ = (\FD|ULA|Mux13~5_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux13~5_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux13~6_combout\);

\hex7seg|reg4|reg4_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux13~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg4|reg4_o\(2));

\FD|mem_wb_reg|mux_0ent[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg4|reg4_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(18));

\FD|mux_Ula_Memoria|saida[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[18]~14_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(18),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[18]~14_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(47));

\FD|BR|bancoReg_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(48));

\FD|BR|saidaB[18]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~28_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(48) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(48),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[18]~28_combout\);

\FD|BR|saidaB[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~29_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[18]~28_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18~portbdataout\)) # (!\FD|BR|saidaB[18]~28_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(47),
	datac => \FD|BR|saidaB[18]~28_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[18]~29_combout\);

\FD|id_ex_reg|inMux[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[18]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(18));

\FD|mux_Banco_Ula|saida[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[18]~14_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(18),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[18]~14_combout\);

\FD|ULA|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~38_combout\ = (\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|id_ex_reg|inAlu\(19) & (!\FD|ULA|Add1~37\)) # (!\FD|id_ex_reg|inAlu\(19) & ((\FD|ULA|Add1~37\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|id_ex_reg|inAlu\(19) 
-- & (\FD|ULA|Add1~37\ & VCC)) # (!\FD|id_ex_reg|inAlu\(19) & (!\FD|ULA|Add1~37\))))
-- \FD|ULA|Add1~39\ = CARRY((\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((!\FD|ULA|Add1~37\) # (!\FD|id_ex_reg|inAlu\(19)))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|id_ex_reg|inAlu\(19) & !\FD|ULA|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|id_ex_reg|inAlu\(19),
	datad => VCC,
	cin => \FD|ULA|Add1~37\,
	combout => \FD|ULA|Add1~38_combout\,
	cout => \FD|ULA|Add1~39\);

\FD|ULA|soma[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[19]~38_combout\ = (\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((\FD|id_ex_reg|inAlu\(19) & (\FD|ULA|soma[18]~37\ & VCC)) # (!\FD|id_ex_reg|inAlu\(19) & (!\FD|ULA|soma[18]~37\)))) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(19) & (!\FD|ULA|soma[18]~37\)) # (!\FD|id_ex_reg|inAlu\(19) & ((\FD|ULA|soma[18]~37\) # (GND)))))
-- \FD|ULA|soma[19]~39\ = CARRY((\FD|mux_Banco_Ula|saida[19]~13_combout\ & (!\FD|id_ex_reg|inAlu\(19) & !\FD|ULA|soma[18]~37\)) # (!\FD|mux_Banco_Ula|saida[19]~13_combout\ & ((!\FD|ULA|soma[18]~37\) # (!\FD|id_ex_reg|inAlu\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|id_ex_reg|inAlu\(19),
	datad => VCC,
	cin => \FD|ULA|soma[18]~37\,
	combout => \FD|ULA|soma[19]~38_combout\,
	cout => \FD|ULA|soma[19]~39\);

\FD|ULA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~0_combout\ = (\FD|ULA|soma[19]~38_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[19]~38_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux12~0_combout\);

\FD|ULA|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~38_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux12~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~38_combout\,
	datab => \FD|ULA|Mux12~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux12~1_combout\);

\FD|ULA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~2_combout\ = (\FD|ULA|Mux12~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[19]~13_combout\ & \FD|id_ex_reg|inAlu\(19))))) # (!\FD|ULA|Mux12~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[19]~13_combout\) # (\FD|id_ex_reg|inAlu\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[19]~13_combout\,
	datab => \FD|id_ex_reg|inAlu\(19),
	datac => \FD|ULA|Mux12~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux12~2_combout\);

\FD|ULA|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~3_combout\ = (\FD|ULA|Mux12~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux12~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux12~3_combout\);

\hex7seg|reg4|reg4_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg4|reg4_o\(3));

\FD|mem_wb_reg|mux_0ent[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg4|reg4_o\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(19));

\FD|mux_Ula_Memoria|saida[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[19]~13_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(19),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[19]~13_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(49));

\FD|BR|bancoReg_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(50));

\FD|BR|saidaB[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~26_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(50) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(50),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[19]~26_combout\);

\FD|BR|saidaB[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~27_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[19]~26_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19~portbdataout\)) # (!\FD|BR|saidaB[19]~26_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(49),
	datac => \FD|BR|saidaB[19]~26_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[19]~27_combout\);

\FD|id_ex_reg|inMux[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(19));

\FD|mux_Banco_Ula|saida[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[19]~13_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(19),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[19]~13_combout\);

\FD|ULA|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~40_combout\ = ((\FD|mux_Banco_Ula|saida[20]~12_combout\ $ (\FD|id_ex_reg|inAlu\(20) $ (\FD|ULA|Add1~39\)))) # (GND)
-- \FD|ULA|Add1~41\ = CARRY((\FD|mux_Banco_Ula|saida[20]~12_combout\ & (\FD|id_ex_reg|inAlu\(20) & !\FD|ULA|Add1~39\)) # (!\FD|mux_Banco_Ula|saida[20]~12_combout\ & ((\FD|id_ex_reg|inAlu\(20)) # (!\FD|ULA|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datab => \FD|id_ex_reg|inAlu\(20),
	datad => VCC,
	cin => \FD|ULA|Add1~39\,
	combout => \FD|ULA|Add1~40_combout\,
	cout => \FD|ULA|Add1~41\);

\FD|ULA|soma[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[20]~40_combout\ = ((\FD|mux_Banco_Ula|saida[20]~12_combout\ $ (\FD|id_ex_reg|inAlu\(20) $ (!\FD|ULA|soma[19]~39\)))) # (GND)
-- \FD|ULA|soma[20]~41\ = CARRY((\FD|mux_Banco_Ula|saida[20]~12_combout\ & ((\FD|id_ex_reg|inAlu\(20)) # (!\FD|ULA|soma[19]~39\))) # (!\FD|mux_Banco_Ula|saida[20]~12_combout\ & (\FD|id_ex_reg|inAlu\(20) & !\FD|ULA|soma[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datab => \FD|id_ex_reg|inAlu\(20),
	datad => VCC,
	cin => \FD|ULA|soma[19]~39\,
	combout => \FD|ULA|soma[20]~40_combout\,
	cout => \FD|ULA|soma[20]~41\);

\FD|ULA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~0_combout\ = (\FD|ULA|soma[20]~40_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[20]~40_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux11~0_combout\);

\FD|ULA|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~40_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux11~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~40_combout\,
	datab => \FD|ULA|Mux11~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux11~1_combout\);

\FD|ULA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~2_combout\ = (\FD|ULA|Mux11~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[20]~12_combout\ & \FD|id_ex_reg|inAlu\(20))))) # (!\FD|ULA|Mux11~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[20]~12_combout\) # (\FD|id_ex_reg|inAlu\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~12_combout\,
	datab => \FD|id_ex_reg|inAlu\(20),
	datac => \FD|ULA|Mux11~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux11~2_combout\);

\FD|ULA|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~3_combout\ = (\FD|ULA|Mux11~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux11~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux11~3_combout\);

\hex7seg|reg5|reg4_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg5|reg4_o\(0));

\FD|mem_wb_reg|mux_0ent[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg5|reg4_o\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(20));

\FD|mux_Ula_Memoria|saida[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[20]~12_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(20),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[20]~12_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(51));

\FD|BR|bancoReg_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(52));

\FD|BR|saidaB[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~24_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(52) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(52),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[20]~24_combout\);

\FD|BR|saidaB[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~25_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[20]~24_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20~portbdataout\)) # (!\FD|BR|saidaB[20]~24_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(51),
	datac => \FD|BR|saidaB[20]~24_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[20]~25_combout\);

\FD|id_ex_reg|inMux[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[20]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(20));

\FD|mux_Banco_Ula|saida[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[20]~12_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(20),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[20]~12_combout\);

\FD|ULA|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~42_combout\ = (\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|id_ex_reg|inAlu\(21) & (!\FD|ULA|Add1~41\)) # (!\FD|id_ex_reg|inAlu\(21) & ((\FD|ULA|Add1~41\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|id_ex_reg|inAlu\(21) 
-- & (\FD|ULA|Add1~41\ & VCC)) # (!\FD|id_ex_reg|inAlu\(21) & (!\FD|ULA|Add1~41\))))
-- \FD|ULA|Add1~43\ = CARRY((\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((!\FD|ULA|Add1~41\) # (!\FD|id_ex_reg|inAlu\(21)))) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|id_ex_reg|inAlu\(21) & !\FD|ULA|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datab => \FD|id_ex_reg|inAlu\(21),
	datad => VCC,
	cin => \FD|ULA|Add1~41\,
	combout => \FD|ULA|Add1~42_combout\,
	cout => \FD|ULA|Add1~43\);

\FD|ULA|soma[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[21]~42_combout\ = (\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((\FD|id_ex_reg|inAlu\(21) & (\FD|ULA|soma[20]~41\ & VCC)) # (!\FD|id_ex_reg|inAlu\(21) & (!\FD|ULA|soma[20]~41\)))) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(21) & (!\FD|ULA|soma[20]~41\)) # (!\FD|id_ex_reg|inAlu\(21) & ((\FD|ULA|soma[20]~41\) # (GND)))))
-- \FD|ULA|soma[21]~43\ = CARRY((\FD|mux_Banco_Ula|saida[21]~11_combout\ & (!\FD|id_ex_reg|inAlu\(21) & !\FD|ULA|soma[20]~41\)) # (!\FD|mux_Banco_Ula|saida[21]~11_combout\ & ((!\FD|ULA|soma[20]~41\) # (!\FD|id_ex_reg|inAlu\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datab => \FD|id_ex_reg|inAlu\(21),
	datad => VCC,
	cin => \FD|ULA|soma[20]~41\,
	combout => \FD|ULA|soma[21]~42_combout\,
	cout => \FD|ULA|soma[21]~43\);

\FD|ULA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~0_combout\ = (\FD|ULA|soma[21]~42_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[21]~42_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux10~0_combout\);

\FD|ULA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~42_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux10~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~42_combout\,
	datab => \FD|ULA|Mux10~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux10~1_combout\);

\FD|ULA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~2_combout\ = (\FD|ULA|Mux10~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[21]~11_combout\ & \FD|id_ex_reg|inAlu\(21))))) # (!\FD|ULA|Mux10~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[21]~11_combout\) # (\FD|id_ex_reg|inAlu\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~11_combout\,
	datab => \FD|id_ex_reg|inAlu\(21),
	datac => \FD|ULA|Mux10~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux10~2_combout\);

\FD|ULA|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~3_combout\ = (\FD|ULA|Mux10~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux10~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux10~3_combout\);

\hex7seg|reg5|reg4_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg5|reg4_o\(1));

\FD|mem_wb_reg|mux_0ent[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg5|reg4_o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(21));

\FD|mux_Ula_Memoria|saida[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[21]~11_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(21),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[21]~11_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(53));

\FD|BR|bancoReg_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(54));

\FD|BR|saidaB[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~22_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(54) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(54),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[21]~22_combout\);

\FD|BR|saidaB[21]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~23_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[21]~22_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21~portbdataout\)) # (!\FD|BR|saidaB[21]~22_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(53),
	datac => \FD|BR|saidaB[21]~22_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[21]~23_combout\);

\FD|id_ex_reg|inMux[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[21]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(21));

\FD|mux_Banco_Ula|saida[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[21]~11_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(21),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[21]~11_combout\);

\FD|ULA|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~44_combout\ = ((\FD|mux_Banco_Ula|saida[22]~10_combout\ $ (\FD|id_ex_reg|inAlu\(22) $ (\FD|ULA|Add1~43\)))) # (GND)
-- \FD|ULA|Add1~45\ = CARRY((\FD|mux_Banco_Ula|saida[22]~10_combout\ & (\FD|id_ex_reg|inAlu\(22) & !\FD|ULA|Add1~43\)) # (!\FD|mux_Banco_Ula|saida[22]~10_combout\ & ((\FD|id_ex_reg|inAlu\(22)) # (!\FD|ULA|Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datab => \FD|id_ex_reg|inAlu\(22),
	datad => VCC,
	cin => \FD|ULA|Add1~43\,
	combout => \FD|ULA|Add1~44_combout\,
	cout => \FD|ULA|Add1~45\);

\FD|ULA|soma[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[22]~44_combout\ = ((\FD|mux_Banco_Ula|saida[22]~10_combout\ $ (\FD|id_ex_reg|inAlu\(22) $ (!\FD|ULA|soma[21]~43\)))) # (GND)
-- \FD|ULA|soma[22]~45\ = CARRY((\FD|mux_Banco_Ula|saida[22]~10_combout\ & ((\FD|id_ex_reg|inAlu\(22)) # (!\FD|ULA|soma[21]~43\))) # (!\FD|mux_Banco_Ula|saida[22]~10_combout\ & (\FD|id_ex_reg|inAlu\(22) & !\FD|ULA|soma[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datab => \FD|id_ex_reg|inAlu\(22),
	datad => VCC,
	cin => \FD|ULA|soma[21]~43\,
	combout => \FD|ULA|soma[22]~44_combout\,
	cout => \FD|ULA|soma[22]~45\);

\FD|ULA|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~0_combout\ = (\FD|ULA|soma[22]~44_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[22]~44_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux9~0_combout\);

\FD|ULA|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~44_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux9~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~44_combout\,
	datab => \FD|ULA|Mux9~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux9~1_combout\);

\FD|ULA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~2_combout\ = (\FD|ULA|Mux9~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[22]~10_combout\ & \FD|id_ex_reg|inAlu\(22))))) # (!\FD|ULA|Mux9~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[22]~10_combout\) # (\FD|id_ex_reg|inAlu\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~10_combout\,
	datab => \FD|id_ex_reg|inAlu\(22),
	datac => \FD|ULA|Mux9~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux9~2_combout\);

\FD|ULA|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~3_combout\ = (\FD|ULA|Mux9~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux9~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux9~3_combout\);

\hex7seg|reg5|reg4_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg5|reg4_o\(2));

\FD|mem_wb_reg|mux_0ent[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg5|reg4_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(22));

\FD|mux_Ula_Memoria|saida[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[22]~10_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(22),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[22]~10_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(55));

\FD|BR|bancoReg_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(56));

\FD|BR|saidaB[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~20_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(56) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(56),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[22]~20_combout\);

\FD|BR|saidaB[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~21_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[22]~20_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22~portbdataout\)) # (!\FD|BR|saidaB[22]~20_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(55),
	datac => \FD|BR|saidaB[22]~20_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[22]~21_combout\);

\FD|id_ex_reg|inMux[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[22]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(22));

\FD|mux_Banco_Ula|saida[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[22]~10_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(22),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[22]~10_combout\);

\FD|ULA|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~46_combout\ = (\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|id_ex_reg|inAlu\(23) & (!\FD|ULA|Add1~45\)) # (!\FD|id_ex_reg|inAlu\(23) & ((\FD|ULA|Add1~45\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|id_ex_reg|inAlu\(23) & 
-- (\FD|ULA|Add1~45\ & VCC)) # (!\FD|id_ex_reg|inAlu\(23) & (!\FD|ULA|Add1~45\))))
-- \FD|ULA|Add1~47\ = CARRY((\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((!\FD|ULA|Add1~45\) # (!\FD|id_ex_reg|inAlu\(23)))) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & (!\FD|id_ex_reg|inAlu\(23) & !\FD|ULA|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datab => \FD|id_ex_reg|inAlu\(23),
	datad => VCC,
	cin => \FD|ULA|Add1~45\,
	combout => \FD|ULA|Add1~46_combout\,
	cout => \FD|ULA|Add1~47\);

\FD|ULA|soma[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[23]~46_combout\ = (\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((\FD|id_ex_reg|inAlu\(23) & (\FD|ULA|soma[22]~45\ & VCC)) # (!\FD|id_ex_reg|inAlu\(23) & (!\FD|ULA|soma[22]~45\)))) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(23) & (!\FD|ULA|soma[22]~45\)) # (!\FD|id_ex_reg|inAlu\(23) & ((\FD|ULA|soma[22]~45\) # (GND)))))
-- \FD|ULA|soma[23]~47\ = CARRY((\FD|mux_Banco_Ula|saida[23]~9_combout\ & (!\FD|id_ex_reg|inAlu\(23) & !\FD|ULA|soma[22]~45\)) # (!\FD|mux_Banco_Ula|saida[23]~9_combout\ & ((!\FD|ULA|soma[22]~45\) # (!\FD|id_ex_reg|inAlu\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datab => \FD|id_ex_reg|inAlu\(23),
	datad => VCC,
	cin => \FD|ULA|soma[22]~45\,
	combout => \FD|ULA|soma[23]~46_combout\,
	cout => \FD|ULA|soma[23]~47\);

\FD|ULA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~0_combout\ = (\FD|ULA|soma[23]~46_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[23]~46_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux8~0_combout\);

\FD|ULA|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~46_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux8~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~46_combout\,
	datab => \FD|ULA|Mux8~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux8~1_combout\);

\FD|ULA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~2_combout\ = (\FD|ULA|Mux8~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[23]~9_combout\ & \FD|id_ex_reg|inAlu\(23))))) # (!\FD|ULA|Mux8~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & ((\FD|mux_Banco_Ula|saida[23]~9_combout\) 
-- # (\FD|id_ex_reg|inAlu\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~9_combout\,
	datab => \FD|id_ex_reg|inAlu\(23),
	datac => \FD|ULA|Mux8~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux8~2_combout\);

\FD|ULA|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~3_combout\ = (\FD|ULA|Mux8~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux8~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux8~3_combout\);

\hex7seg|reg5|reg4_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg5|reg4_o\(3));

\FD|mem_wb_reg|mux_0ent[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg5|reg4_o\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(23));

\FD|mux_Ula_Memoria|saida[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[23]~9_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(23),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[23]~9_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(57));

\FD|BR|bancoReg_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(58));

\FD|BR|saidaB[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~18_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(58) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(58),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[23]~18_combout\);

\FD|BR|saidaB[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~19_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[23]~18_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23~portbdataout\)) # (!\FD|BR|saidaB[23]~18_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(57),
	datac => \FD|BR|saidaB[23]~18_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[23]~19_combout\);

\FD|id_ex_reg|inMux[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(23));

\FD|mux_Banco_Ula|saida[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[23]~9_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(23),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[23]~9_combout\);

\FD|ULA|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~48_combout\ = ((\FD|mux_Banco_Ula|saida[24]~8_combout\ $ (\FD|id_ex_reg|inAlu\(24) $ (\FD|ULA|Add1~47\)))) # (GND)
-- \FD|ULA|Add1~49\ = CARRY((\FD|mux_Banco_Ula|saida[24]~8_combout\ & (\FD|id_ex_reg|inAlu\(24) & !\FD|ULA|Add1~47\)) # (!\FD|mux_Banco_Ula|saida[24]~8_combout\ & ((\FD|id_ex_reg|inAlu\(24)) # (!\FD|ULA|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datab => \FD|id_ex_reg|inAlu\(24),
	datad => VCC,
	cin => \FD|ULA|Add1~47\,
	combout => \FD|ULA|Add1~48_combout\,
	cout => \FD|ULA|Add1~49\);

\FD|ULA|soma[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[24]~48_combout\ = ((\FD|mux_Banco_Ula|saida[24]~8_combout\ $ (\FD|id_ex_reg|inAlu\(24) $ (!\FD|ULA|soma[23]~47\)))) # (GND)
-- \FD|ULA|soma[24]~49\ = CARRY((\FD|mux_Banco_Ula|saida[24]~8_combout\ & ((\FD|id_ex_reg|inAlu\(24)) # (!\FD|ULA|soma[23]~47\))) # (!\FD|mux_Banco_Ula|saida[24]~8_combout\ & (\FD|id_ex_reg|inAlu\(24) & !\FD|ULA|soma[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datab => \FD|id_ex_reg|inAlu\(24),
	datad => VCC,
	cin => \FD|ULA|soma[23]~47\,
	combout => \FD|ULA|soma[24]~48_combout\,
	cout => \FD|ULA|soma[24]~49\);

\FD|ULA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~0_combout\ = (\FD|ULA|soma[24]~48_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[24]~48_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux7~0_combout\);

\FD|ULA|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~48_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux7~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~48_combout\,
	datab => \FD|ULA|Mux7~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux7~1_combout\);

\FD|ULA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~2_combout\ = (\FD|ULA|Mux7~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[24]~8_combout\ & \FD|id_ex_reg|inAlu\(24))))) # (!\FD|ULA|Mux7~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & ((\FD|mux_Banco_Ula|saida[24]~8_combout\) 
-- # (\FD|id_ex_reg|inAlu\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[24]~8_combout\,
	datab => \FD|id_ex_reg|inAlu\(24),
	datac => \FD|ULA|Mux7~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux7~2_combout\);

\FD|ULA|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~3_combout\ = (\FD|ULA|Mux7~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux7~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux7~3_combout\);

\FD|ex_mem_reg|ramAdd[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(24));

\FD|mem_wb_reg|mux_0ent[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|ramAdd\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(24));

\FD|mux_Ula_Memoria|saida[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[24]~8_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(24),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[24]~8_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(59));

\FD|BR|bancoReg_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(60));

\FD|BR|saidaB[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~16_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(60) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(60),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[24]~16_combout\);

\FD|BR|saidaB[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~17_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[24]~16_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24~portbdataout\)) # (!\FD|BR|saidaB[24]~16_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(59))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(59),
	datac => \FD|BR|saidaB[24]~16_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[24]~17_combout\);

\FD|id_ex_reg|inMux[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(24));

\FD|mux_Banco_Ula|saida[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[24]~8_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(24),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[24]~8_combout\);

\FD|ULA|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~50_combout\ = (\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|id_ex_reg|inAlu\(25) & (!\FD|ULA|Add1~49\)) # (!\FD|id_ex_reg|inAlu\(25) & ((\FD|ULA|Add1~49\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|id_ex_reg|inAlu\(25) & 
-- (\FD|ULA|Add1~49\ & VCC)) # (!\FD|id_ex_reg|inAlu\(25) & (!\FD|ULA|Add1~49\))))
-- \FD|ULA|Add1~51\ = CARRY((\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((!\FD|ULA|Add1~49\) # (!\FD|id_ex_reg|inAlu\(25)))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|id_ex_reg|inAlu\(25) & !\FD|ULA|Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datab => \FD|id_ex_reg|inAlu\(25),
	datad => VCC,
	cin => \FD|ULA|Add1~49\,
	combout => \FD|ULA|Add1~50_combout\,
	cout => \FD|ULA|Add1~51\);

\FD|ULA|soma[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[25]~50_combout\ = (\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((\FD|id_ex_reg|inAlu\(25) & (\FD|ULA|soma[24]~49\ & VCC)) # (!\FD|id_ex_reg|inAlu\(25) & (!\FD|ULA|soma[24]~49\)))) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(25) & (!\FD|ULA|soma[24]~49\)) # (!\FD|id_ex_reg|inAlu\(25) & ((\FD|ULA|soma[24]~49\) # (GND)))))
-- \FD|ULA|soma[25]~51\ = CARRY((\FD|mux_Banco_Ula|saida[25]~7_combout\ & (!\FD|id_ex_reg|inAlu\(25) & !\FD|ULA|soma[24]~49\)) # (!\FD|mux_Banco_Ula|saida[25]~7_combout\ & ((!\FD|ULA|soma[24]~49\) # (!\FD|id_ex_reg|inAlu\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datab => \FD|id_ex_reg|inAlu\(25),
	datad => VCC,
	cin => \FD|ULA|soma[24]~49\,
	combout => \FD|ULA|soma[25]~50_combout\,
	cout => \FD|ULA|soma[25]~51\);

\FD|ULA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~0_combout\ = (\FD|ULA|soma[25]~50_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[25]~50_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux6~0_combout\);

\FD|ULA|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~50_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux6~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~50_combout\,
	datab => \FD|ULA|Mux6~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux6~1_combout\);

\FD|ULA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~2_combout\ = (\FD|ULA|Mux6~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[25]~7_combout\ & \FD|id_ex_reg|inAlu\(25))))) # (!\FD|ULA|Mux6~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & ((\FD|mux_Banco_Ula|saida[25]~7_combout\) 
-- # (\FD|id_ex_reg|inAlu\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~7_combout\,
	datab => \FD|id_ex_reg|inAlu\(25),
	datac => \FD|ULA|Mux6~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux6~2_combout\);

\FD|ULA|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~3_combout\ = (\FD|ULA|Mux6~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux6~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux6~3_combout\);

\FD|ex_mem_reg|ramAdd[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(25));

\FD|mem_wb_reg|mux_0ent[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|ramAdd\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(25));

\FD|mux_Ula_Memoria|saida[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[25]~7_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(25),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[25]~7_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(61));

\FD|BR|bancoReg_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(62));

\FD|BR|saidaB[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~14_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(62) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(62),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[25]~14_combout\);

\FD|BR|saidaB[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~15_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[25]~14_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25~portbdataout\)) # (!\FD|BR|saidaB[25]~14_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(61))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(61),
	datac => \FD|BR|saidaB[25]~14_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[25]~15_combout\);

\FD|id_ex_reg|inMux[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(25));

\FD|mux_Banco_Ula|saida[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[25]~7_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(25),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[25]~7_combout\);

\FD|ULA|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~52_combout\ = ((\FD|mux_Banco_Ula|saida[26]~6_combout\ $ (\FD|id_ex_reg|inAlu\(26) $ (\FD|ULA|Add1~51\)))) # (GND)
-- \FD|ULA|Add1~53\ = CARRY((\FD|mux_Banco_Ula|saida[26]~6_combout\ & (\FD|id_ex_reg|inAlu\(26) & !\FD|ULA|Add1~51\)) # (!\FD|mux_Banco_Ula|saida[26]~6_combout\ & ((\FD|id_ex_reg|inAlu\(26)) # (!\FD|ULA|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datab => \FD|id_ex_reg|inAlu\(26),
	datad => VCC,
	cin => \FD|ULA|Add1~51\,
	combout => \FD|ULA|Add1~52_combout\,
	cout => \FD|ULA|Add1~53\);

\FD|ULA|soma[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[26]~52_combout\ = ((\FD|mux_Banco_Ula|saida[26]~6_combout\ $ (\FD|id_ex_reg|inAlu\(26) $ (!\FD|ULA|soma[25]~51\)))) # (GND)
-- \FD|ULA|soma[26]~53\ = CARRY((\FD|mux_Banco_Ula|saida[26]~6_combout\ & ((\FD|id_ex_reg|inAlu\(26)) # (!\FD|ULA|soma[25]~51\))) # (!\FD|mux_Banco_Ula|saida[26]~6_combout\ & (\FD|id_ex_reg|inAlu\(26) & !\FD|ULA|soma[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datab => \FD|id_ex_reg|inAlu\(26),
	datad => VCC,
	cin => \FD|ULA|soma[25]~51\,
	combout => \FD|ULA|soma[26]~52_combout\,
	cout => \FD|ULA|soma[26]~53\);

\FD|ULA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~0_combout\ = (\FD|ULA|soma[26]~52_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[26]~52_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux5~0_combout\);

\FD|ULA|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~52_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux5~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~52_combout\,
	datab => \FD|ULA|Mux5~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux5~1_combout\);

\FD|ULA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~2_combout\ = (\FD|ULA|Mux5~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[26]~6_combout\ & \FD|id_ex_reg|inAlu\(26))))) # (!\FD|ULA|Mux5~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & ((\FD|mux_Banco_Ula|saida[26]~6_combout\) 
-- # (\FD|id_ex_reg|inAlu\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~6_combout\,
	datab => \FD|id_ex_reg|inAlu\(26),
	datac => \FD|ULA|Mux5~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux5~2_combout\);

\FD|ULA|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~3_combout\ = (\FD|ULA|Mux5~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux5~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux5~3_combout\);

\FD|ex_mem_reg|ramAdd[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(26));

\FD|mem_wb_reg|mux_0ent[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|ramAdd\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(26));

\FD|mux_Ula_Memoria|saida[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[26]~6_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(26),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[26]~6_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(63));

\FD|BR|bancoReg_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(64));

\FD|BR|saidaB[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~12_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(64) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(64),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[26]~12_combout\);

\FD|BR|saidaB[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~13_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[26]~12_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26~portbdataout\)) # (!\FD|BR|saidaB[26]~12_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(63),
	datac => \FD|BR|saidaB[26]~12_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[26]~13_combout\);

\FD|id_ex_reg|inMux[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(26));

\FD|mux_Banco_Ula|saida[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[26]~6_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(26),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[26]~6_combout\);

\FD|ULA|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~54_combout\ = (\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|id_ex_reg|inAlu\(27) & (!\FD|ULA|Add1~53\)) # (!\FD|id_ex_reg|inAlu\(27) & ((\FD|ULA|Add1~53\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|id_ex_reg|inAlu\(27) & 
-- (\FD|ULA|Add1~53\ & VCC)) # (!\FD|id_ex_reg|inAlu\(27) & (!\FD|ULA|Add1~53\))))
-- \FD|ULA|Add1~55\ = CARRY((\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((!\FD|ULA|Add1~53\) # (!\FD|id_ex_reg|inAlu\(27)))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|id_ex_reg|inAlu\(27) & !\FD|ULA|Add1~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datab => \FD|id_ex_reg|inAlu\(27),
	datad => VCC,
	cin => \FD|ULA|Add1~53\,
	combout => \FD|ULA|Add1~54_combout\,
	cout => \FD|ULA|Add1~55\);

\FD|ULA|soma[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[27]~54_combout\ = (\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((\FD|id_ex_reg|inAlu\(27) & (\FD|ULA|soma[26]~53\ & VCC)) # (!\FD|id_ex_reg|inAlu\(27) & (!\FD|ULA|soma[26]~53\)))) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(27) & (!\FD|ULA|soma[26]~53\)) # (!\FD|id_ex_reg|inAlu\(27) & ((\FD|ULA|soma[26]~53\) # (GND)))))
-- \FD|ULA|soma[27]~55\ = CARRY((\FD|mux_Banco_Ula|saida[27]~5_combout\ & (!\FD|id_ex_reg|inAlu\(27) & !\FD|ULA|soma[26]~53\)) # (!\FD|mux_Banco_Ula|saida[27]~5_combout\ & ((!\FD|ULA|soma[26]~53\) # (!\FD|id_ex_reg|inAlu\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datab => \FD|id_ex_reg|inAlu\(27),
	datad => VCC,
	cin => \FD|ULA|soma[26]~53\,
	combout => \FD|ULA|soma[27]~54_combout\,
	cout => \FD|ULA|soma[27]~55\);

\FD|ULA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~0_combout\ = (\FD|ULA|soma[27]~54_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[27]~54_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux4~0_combout\);

\FD|ULA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~54_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux4~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~54_combout\,
	datab => \FD|ULA|Mux4~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux4~1_combout\);

\FD|ULA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~2_combout\ = (\FD|ULA|Mux4~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[27]~5_combout\ & \FD|id_ex_reg|inAlu\(27))))) # (!\FD|ULA|Mux4~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & ((\FD|mux_Banco_Ula|saida[27]~5_combout\) 
-- # (\FD|id_ex_reg|inAlu\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[27]~5_combout\,
	datab => \FD|id_ex_reg|inAlu\(27),
	datac => \FD|ULA|Mux4~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux4~2_combout\);

\FD|ULA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~3_combout\ = (\FD|ULA|Mux4~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux4~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux4~3_combout\);

\FD|ex_mem_reg|ramAdd[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(27));

\FD|mem_wb_reg|mux_0ent[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|ramAdd\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(27));

\FD|mux_Ula_Memoria|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[27]~5_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(27),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[27]~5_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(65));

\FD|BR|bancoReg_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(66));

\FD|BR|saidaB[27]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~10_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(66) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(66),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[27]~10_combout\);

\FD|BR|saidaB[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~11_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[27]~10_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27~portbdataout\)) # (!\FD|BR|saidaB[27]~10_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(65),
	datac => \FD|BR|saidaB[27]~10_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[27]~11_combout\);

\FD|id_ex_reg|inMux[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(27));

\FD|mux_Banco_Ula|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[27]~5_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(27),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[27]~5_combout\);

\FD|ULA|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~56_combout\ = ((\FD|mux_Banco_Ula|saida[28]~4_combout\ $ (\FD|id_ex_reg|inAlu\(28) $ (\FD|ULA|Add1~55\)))) # (GND)
-- \FD|ULA|Add1~57\ = CARRY((\FD|mux_Banco_Ula|saida[28]~4_combout\ & (\FD|id_ex_reg|inAlu\(28) & !\FD|ULA|Add1~55\)) # (!\FD|mux_Banco_Ula|saida[28]~4_combout\ & ((\FD|id_ex_reg|inAlu\(28)) # (!\FD|ULA|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datab => \FD|id_ex_reg|inAlu\(28),
	datad => VCC,
	cin => \FD|ULA|Add1~55\,
	combout => \FD|ULA|Add1~56_combout\,
	cout => \FD|ULA|Add1~57\);

\FD|ULA|soma[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[28]~56_combout\ = ((\FD|mux_Banco_Ula|saida[28]~4_combout\ $ (\FD|id_ex_reg|inAlu\(28) $ (!\FD|ULA|soma[27]~55\)))) # (GND)
-- \FD|ULA|soma[28]~57\ = CARRY((\FD|mux_Banco_Ula|saida[28]~4_combout\ & ((\FD|id_ex_reg|inAlu\(28)) # (!\FD|ULA|soma[27]~55\))) # (!\FD|mux_Banco_Ula|saida[28]~4_combout\ & (\FD|id_ex_reg|inAlu\(28) & !\FD|ULA|soma[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datab => \FD|id_ex_reg|inAlu\(28),
	datad => VCC,
	cin => \FD|ULA|soma[27]~55\,
	combout => \FD|ULA|soma[28]~56_combout\,
	cout => \FD|ULA|soma[28]~57\);

\FD|ULA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~0_combout\ = (\FD|ULA|soma[28]~56_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[28]~56_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux3~0_combout\);

\FD|ULA|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~56_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux3~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~56_combout\,
	datab => \FD|ULA|Mux3~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux3~1_combout\);

\FD|ULA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~2_combout\ = (\FD|ULA|Mux3~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[28]~4_combout\ & \FD|id_ex_reg|inAlu\(28))))) # (!\FD|ULA|Mux3~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & ((\FD|mux_Banco_Ula|saida[28]~4_combout\) 
-- # (\FD|id_ex_reg|inAlu\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~4_combout\,
	datab => \FD|id_ex_reg|inAlu\(28),
	datac => \FD|ULA|Mux3~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux3~2_combout\);

\FD|ULA|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~3_combout\ = (\FD|ULA|Mux3~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux3~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux3~3_combout\);

\FD|ex_mem_reg|ramAdd[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(28));

\FD|mem_wb_reg|mux_0ent[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|ramAdd\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(28));

\FD|mux_Ula_Memoria|saida[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[28]~4_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(28),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[28]~4_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(67));

\FD|BR|bancoReg_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(68));

\FD|BR|saidaB[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~8_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(68) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(68),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[28]~8_combout\);

\FD|BR|saidaB[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~9_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[28]~8_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28~portbdataout\)) # (!\FD|BR|saidaB[28]~8_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(67),
	datac => \FD|BR|saidaB[28]~8_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[28]~9_combout\);

\FD|id_ex_reg|inMux[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[28]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(28));

\FD|mux_Banco_Ula|saida[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[28]~4_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(28),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[28]~4_combout\);

\FD|ULA|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~58_combout\ = (\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|id_ex_reg|inAlu\(29) & (!\FD|ULA|Add1~57\)) # (!\FD|id_ex_reg|inAlu\(29) & ((\FD|ULA|Add1~57\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|id_ex_reg|inAlu\(29) & 
-- (\FD|ULA|Add1~57\ & VCC)) # (!\FD|id_ex_reg|inAlu\(29) & (!\FD|ULA|Add1~57\))))
-- \FD|ULA|Add1~59\ = CARRY((\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((!\FD|ULA|Add1~57\) # (!\FD|id_ex_reg|inAlu\(29)))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|id_ex_reg|inAlu\(29) & !\FD|ULA|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datab => \FD|id_ex_reg|inAlu\(29),
	datad => VCC,
	cin => \FD|ULA|Add1~57\,
	combout => \FD|ULA|Add1~58_combout\,
	cout => \FD|ULA|Add1~59\);

\FD|ULA|soma[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[29]~58_combout\ = (\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|id_ex_reg|inAlu\(29) & (\FD|ULA|soma[28]~57\ & VCC)) # (!\FD|id_ex_reg|inAlu\(29) & (!\FD|ULA|soma[28]~57\)))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(29) & (!\FD|ULA|soma[28]~57\)) # (!\FD|id_ex_reg|inAlu\(29) & ((\FD|ULA|soma[28]~57\) # (GND)))))
-- \FD|ULA|soma[29]~59\ = CARRY((\FD|mux_Banco_Ula|saida[29]~3_combout\ & (!\FD|id_ex_reg|inAlu\(29) & !\FD|ULA|soma[28]~57\)) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((!\FD|ULA|soma[28]~57\) # (!\FD|id_ex_reg|inAlu\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datab => \FD|id_ex_reg|inAlu\(29),
	datad => VCC,
	cin => \FD|ULA|soma[28]~57\,
	combout => \FD|ULA|soma[29]~58_combout\,
	cout => \FD|ULA|soma[29]~59\);

\FD|ULA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~0_combout\ = (\FD|ULA|soma[29]~58_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[29]~58_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux2~0_combout\);

\FD|ULA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (!\FD|ULA|Add1~58_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((!\FD|ULA|Mux2~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (\FD|ULA|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux13~0_combout\,
	datab => \FD|ULA|Mux13~1_combout\,
	datac => \FD|ULA|Add1~58_combout\,
	datad => \FD|ULA|Mux2~0_combout\,
	combout => \FD|ULA|Mux2~1_combout\);

\FD|ULA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~2_combout\ = (\FD|mux_Banco_Ula|saida[29]~3_combout\ & ((\FD|id_ex_reg|inAlu\(29)) # (\FD|ULA|Mux2~1_combout\))) # (!\FD|mux_Banco_Ula|saida[29]~3_combout\ & (\FD|id_ex_reg|inAlu\(29) & \FD|ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~3_combout\,
	datab => \FD|id_ex_reg|inAlu\(29),
	datac => \FD|ULA|Mux2~1_combout\,
	combout => \FD|ULA|Mux2~2_combout\);

\FD|ULA|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~3_combout\ = (!\FD|UCULA|ALUctr[3]~4_combout\ & ((\FD|ULA|Mux13~2_combout\ & (!\FD|ULA|Mux2~1_combout\)) # (!\FD|ULA|Mux13~2_combout\ & ((\FD|ULA|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~4_combout\,
	datab => \FD|ULA|Mux13~2_combout\,
	datac => \FD|ULA|Mux2~1_combout\,
	datad => \FD|ULA|Mux2~2_combout\,
	combout => \FD|ULA|Mux2~3_combout\);

\FD|ex_mem_reg|ramAdd[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(29));

\FD|mem_wb_reg|mux_0ent[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|ramAdd\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(29));

\FD|mux_Ula_Memoria|saida[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[29]~3_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(29),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[29]~3_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(69));

\FD|BR|bancoReg_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(70));

\FD|BR|saidaB[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~6_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(70) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(70),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[29]~6_combout\);

\FD|BR|saidaB[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~7_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[29]~6_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29~portbdataout\)) # (!\FD|BR|saidaB[29]~6_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(69),
	datac => \FD|BR|saidaB[29]~6_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[29]~7_combout\);

\FD|id_ex_reg|inMux[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(29));

\FD|mux_Banco_Ula|saida[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[29]~3_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(29),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[29]~3_combout\);

\FD|ULA|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~2_combout\ $ (\FD|id_ex_reg|inAlu\(30) $ (\FD|ULA|Add1~59\)))) # (GND)
-- \FD|ULA|Add1~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~2_combout\ & (\FD|id_ex_reg|inAlu\(30) & !\FD|ULA|Add1~59\)) # (!\FD|mux_Banco_Ula|saida[30]~2_combout\ & ((\FD|id_ex_reg|inAlu\(30)) # (!\FD|ULA|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datab => \FD|id_ex_reg|inAlu\(30),
	datad => VCC,
	cin => \FD|ULA|Add1~59\,
	combout => \FD|ULA|Add1~60_combout\,
	cout => \FD|ULA|Add1~61\);

\FD|ULA|soma[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[30]~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~2_combout\ $ (\FD|id_ex_reg|inAlu\(30) $ (!\FD|ULA|soma[29]~59\)))) # (GND)
-- \FD|ULA|soma[30]~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~2_combout\ & ((\FD|id_ex_reg|inAlu\(30)) # (!\FD|ULA|soma[29]~59\))) # (!\FD|mux_Banco_Ula|saida[30]~2_combout\ & (\FD|id_ex_reg|inAlu\(30) & !\FD|ULA|soma[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datab => \FD|id_ex_reg|inAlu\(30),
	datad => VCC,
	cin => \FD|ULA|soma[29]~59\,
	combout => \FD|ULA|soma[30]~60_combout\,
	cout => \FD|ULA|soma[30]~61\);

\FD|ULA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~0_combout\ = (\FD|ULA|soma[30]~60_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[30]~60_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux1~0_combout\);

\FD|ULA|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (!\FD|ULA|Add1~60_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((!\FD|ULA|Mux1~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (\FD|ULA|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux13~0_combout\,
	datab => \FD|ULA|Mux13~1_combout\,
	datac => \FD|ULA|Add1~60_combout\,
	datad => \FD|ULA|Mux1~0_combout\,
	combout => \FD|ULA|Mux1~1_combout\);

\FD|ULA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~2_combout\ = (\FD|mux_Banco_Ula|saida[30]~2_combout\ & ((\FD|id_ex_reg|inAlu\(30)) # (\FD|ULA|Mux1~1_combout\))) # (!\FD|mux_Banco_Ula|saida[30]~2_combout\ & (\FD|id_ex_reg|inAlu\(30) & \FD|ULA|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~2_combout\,
	datab => \FD|id_ex_reg|inAlu\(30),
	datac => \FD|ULA|Mux1~1_combout\,
	combout => \FD|ULA|Mux1~2_combout\);

\FD|ULA|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~3_combout\ = (!\FD|UCULA|ALUctr[3]~4_combout\ & ((\FD|ULA|Mux13~2_combout\ & (!\FD|ULA|Mux1~1_combout\)) # (!\FD|ULA|Mux13~2_combout\ & ((\FD|ULA|Mux1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~4_combout\,
	datab => \FD|ULA|Mux13~2_combout\,
	datac => \FD|ULA|Mux1~1_combout\,
	datad => \FD|ULA|Mux1~2_combout\,
	combout => \FD|ULA|Mux1~3_combout\);

\FD|ex_mem_reg|ramAdd[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(30));

\FD|mem_wb_reg|mux_0ent[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|ramAdd\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(30));

\FD|mux_Ula_Memoria|saida[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[30]~2_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(30),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[30]~2_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(71));

\FD|BR|bancoReg_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(72));

\FD|BR|saidaB[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~4_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(72) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(72),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[30]~4_combout\);

\FD|BR|saidaB[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~5_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[30]~4_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30~portbdataout\)) # (!\FD|BR|saidaB[30]~4_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(71),
	datac => \FD|BR|saidaB[30]~4_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[30]~5_combout\);

\FD|id_ex_reg|inMux[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(30));

\FD|mux_Banco_Ula|saida[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[30]~2_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(30),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[30]~2_combout\);

\FD|ULA|soma[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[31]~62_combout\ = \FD|mux_Banco_Ula|saida[31]~1_combout\ $ (\FD|id_ex_reg|inAlu\(31) $ (\FD|ULA|soma[30]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|id_ex_reg|inAlu\(31),
	cin => \FD|ULA|soma[30]~61\,
	combout => \FD|ULA|soma[31]~62_combout\);

\FD|ULA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~0_combout\ = (\FD|ULA|soma[31]~62_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[31]~62_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux0~0_combout\);

\FD|ULA|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~62_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux0~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~62_combout\,
	datab => \FD|ULA|Mux0~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux0~1_combout\);

\FD|ULA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~2_combout\ = (\FD|ULA|Mux0~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[31]~1_combout\ & \FD|id_ex_reg|inAlu\(31))))) # (!\FD|ULA|Mux0~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & ((\FD|mux_Banco_Ula|saida[31]~1_combout\) 
-- # (\FD|id_ex_reg|inAlu\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|id_ex_reg|inAlu\(31),
	datac => \FD|ULA|Mux0~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux0~2_combout\);

\FD|ULA|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~5_combout\ = (\FD|id_ex_reg|inAlu\(31) & (\FD|mux_Banco_Ula|saida[31]~1_combout\ & ((\FD|UCULA|ALUctr[3]~4_combout\) # (!\FD|ULA|Mux0~2_combout\)))) # (!\FD|id_ex_reg|inAlu\(31) & (!\FD|mux_Banco_Ula|saida[31]~1_combout\ & 
-- (!\FD|UCULA|ALUctr[3]~4_combout\ & \FD|ULA|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(31),
	datab => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datac => \FD|UCULA|ALUctr[3]~4_combout\,
	datad => \FD|ULA|Mux0~2_combout\,
	combout => \FD|ULA|Mux31~5_combout\);

\FD|ULA|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~6_combout\ = (\FD|UCULA|ALUctr[0]~1_combout\ & (\FD|UCULA|ALUctr[1]~2_combout\ & (\FD|ULA|Add1~62_combout\ $ (\FD|ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~1_combout\,
	datab => \FD|ULA|Add1~62_combout\,
	datac => \FD|UCULA|ALUctr[1]~2_combout\,
	datad => \FD|ULA|Mux31~5_combout\,
	combout => \FD|ULA|Mux31~6_combout\);

\FD|ULA|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~7_combout\ = (\FD|ULA|Mux31~2_combout\) # ((\FD|ULA|Mux31~3_combout\ & ((\FD|ULA|Mux31~4_combout\) # (\FD|ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~2_combout\,
	datab => \FD|ULA|Mux31~3_combout\,
	datac => \FD|ULA|Mux31~4_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \FD|ULA|Mux31~7_combout\);

\hex7seg|reg0|reg4_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux31~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg0|reg4_o\(0));

\FD|mem_wb_reg|mux_0ent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg0|reg4_o\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(0));

\FD|mux_Ula_Memoria|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[0]~0_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(0),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[0]~0_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00001500",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(11));

\FD|BR|bancoReg_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(12));

\FD|BR|saidaB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~0_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(12) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(12),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[0]~0_combout\);

\FD|BR|saidaB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~1_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[0]~0_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\)) # (!\FD|BR|saidaB[0]~0_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(11),
	datac => \FD|BR|saidaB[0]~0_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[0]~1_combout\);

\FD|id_ex_reg|inMux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(0));

\FD|mux_Banco_Ula|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[0]~0_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(0))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(0),
	datab => \FD|id_ex_reg|inMux\(0),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[0]~0_combout\);

\FD|ULA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|id_ex_reg|inAlu\(1) & (!\FD|ULA|Add1~1\)) # (!\FD|id_ex_reg|inAlu\(1) & ((\FD|ULA|Add1~1\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((\FD|id_ex_reg|inAlu\(1) & 
-- (\FD|ULA|Add1~1\ & VCC)) # (!\FD|id_ex_reg|inAlu\(1) & (!\FD|ULA|Add1~1\))))
-- \FD|ULA|Add1~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~31_combout\ & ((!\FD|ULA|Add1~1\) # (!\FD|id_ex_reg|inAlu\(1)))) # (!\FD|mux_Banco_Ula|saida[1]~31_combout\ & (!\FD|id_ex_reg|inAlu\(1) & !\FD|ULA|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datab => \FD|id_ex_reg|inAlu\(1),
	datad => VCC,
	cin => \FD|ULA|Add1~1\,
	combout => \FD|ULA|Add1~2_combout\,
	cout => \FD|ULA|Add1~3\);

\FD|ULA|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~0_combout\ = (\FD|ULA|soma[1]~2_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[1]~2_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux30~0_combout\);

\FD|ULA|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~2_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux30~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~2_combout\,
	datab => \FD|ULA|Mux30~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux30~1_combout\);

\FD|ULA|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~2_combout\ = (\FD|ULA|Mux30~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[1]~31_combout\ & \FD|id_ex_reg|inAlu\(1))))) # (!\FD|ULA|Mux30~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[1]~31_combout\) # (\FD|id_ex_reg|inAlu\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~31_combout\,
	datab => \FD|id_ex_reg|inAlu\(1),
	datac => \FD|ULA|Mux30~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux30~2_combout\);

\FD|ULA|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~3_combout\ = (\FD|ULA|Mux30~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux30~3_combout\);

\hex7seg|reg0|reg4_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg0|reg4_o\(1));

\FD|mem_wb_reg|mux_0ent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg0|reg4_o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(1));

\FD|mux_Ula_Memoria|saida[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[1]~31_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(1),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[1]~31_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000026C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(13));

\FD|BR|bancoReg_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(14));

\FD|BR|saidaB[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~62_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(14) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(14),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[1]~62_combout\);

\FD|BR|saidaB[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~63_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[1]~62_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1~portbdataout\)) # (!\FD|BR|saidaB[1]~62_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(13),
	datac => \FD|BR|saidaB[1]~62_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[1]~63_combout\);

\FD|id_ex_reg|inMux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[1]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(1));

\FD|mux_Banco_Ula|saida[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[1]~31_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(1))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(1),
	datab => \FD|id_ex_reg|inMux\(1),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[1]~31_combout\);

\FD|ULA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~4_combout\ = ((\FD|mux_Banco_Ula|saida[2]~30_combout\ $ (\FD|id_ex_reg|inAlu\(2) $ (\FD|ULA|Add1~3\)))) # (GND)
-- \FD|ULA|Add1~5\ = CARRY((\FD|mux_Banco_Ula|saida[2]~30_combout\ & (\FD|id_ex_reg|inAlu\(2) & !\FD|ULA|Add1~3\)) # (!\FD|mux_Banco_Ula|saida[2]~30_combout\ & ((\FD|id_ex_reg|inAlu\(2)) # (!\FD|ULA|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|id_ex_reg|inAlu\(2),
	datad => VCC,
	cin => \FD|ULA|Add1~3\,
	combout => \FD|ULA|Add1~4_combout\,
	cout => \FD|ULA|Add1~5\);

\FD|ULA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|id_ex_reg|inAlu\(3) & (!\FD|ULA|Add1~5\)) # (!\FD|id_ex_reg|inAlu\(3) & ((\FD|ULA|Add1~5\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((\FD|id_ex_reg|inAlu\(3) & 
-- (\FD|ULA|Add1~5\ & VCC)) # (!\FD|id_ex_reg|inAlu\(3) & (!\FD|ULA|Add1~5\))))
-- \FD|ULA|Add1~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~29_combout\ & ((!\FD|ULA|Add1~5\) # (!\FD|id_ex_reg|inAlu\(3)))) # (!\FD|mux_Banco_Ula|saida[3]~29_combout\ & (!\FD|id_ex_reg|inAlu\(3) & !\FD|ULA|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datab => \FD|id_ex_reg|inAlu\(3),
	datad => VCC,
	cin => \FD|ULA|Add1~5\,
	combout => \FD|ULA|Add1~6_combout\,
	cout => \FD|ULA|Add1~7\);

\FD|ULA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~28_combout\ $ (\FD|id_ex_reg|inAlu\(4) $ (\FD|ULA|Add1~7\)))) # (GND)
-- \FD|ULA|Add1~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~28_combout\ & (\FD|id_ex_reg|inAlu\(4) & !\FD|ULA|Add1~7\)) # (!\FD|mux_Banco_Ula|saida[4]~28_combout\ & ((\FD|id_ex_reg|inAlu\(4)) # (!\FD|ULA|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datab => \FD|id_ex_reg|inAlu\(4),
	datad => VCC,
	cin => \FD|ULA|Add1~7\,
	combout => \FD|ULA|Add1~8_combout\,
	cout => \FD|ULA|Add1~9\);

\FD|ULA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|id_ex_reg|inAlu\(5) & (!\FD|ULA|Add1~9\)) # (!\FD|id_ex_reg|inAlu\(5) & ((\FD|ULA|Add1~9\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((\FD|id_ex_reg|inAlu\(5) & 
-- (\FD|ULA|Add1~9\ & VCC)) # (!\FD|id_ex_reg|inAlu\(5) & (!\FD|ULA|Add1~9\))))
-- \FD|ULA|Add1~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~27_combout\ & ((!\FD|ULA|Add1~9\) # (!\FD|id_ex_reg|inAlu\(5)))) # (!\FD|mux_Banco_Ula|saida[5]~27_combout\ & (!\FD|id_ex_reg|inAlu\(5) & !\FD|ULA|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datab => \FD|id_ex_reg|inAlu\(5),
	datad => VCC,
	cin => \FD|ULA|Add1~9\,
	combout => \FD|ULA|Add1~10_combout\,
	cout => \FD|ULA|Add1~11\);

\FD|ULA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~12_combout\ = ((\FD|mux_Banco_Ula|saida[6]~26_combout\ $ (\FD|id_ex_reg|inAlu\(6) $ (\FD|ULA|Add1~11\)))) # (GND)
-- \FD|ULA|Add1~13\ = CARRY((\FD|mux_Banco_Ula|saida[6]~26_combout\ & (\FD|id_ex_reg|inAlu\(6) & !\FD|ULA|Add1~11\)) # (!\FD|mux_Banco_Ula|saida[6]~26_combout\ & ((\FD|id_ex_reg|inAlu\(6)) # (!\FD|ULA|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datab => \FD|id_ex_reg|inAlu\(6),
	datad => VCC,
	cin => \FD|ULA|Add1~11\,
	combout => \FD|ULA|Add1~12_combout\,
	cout => \FD|ULA|Add1~13\);

\FD|ULA|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~0_combout\ = (\FD|ULA|soma[7]~14_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[7]~14_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux24~0_combout\);

\FD|ULA|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~14_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux24~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Mux24~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux24~1_combout\);

\FD|ULA|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~2_combout\ = (\FD|ULA|Mux24~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[7]~25_combout\ & \FD|id_ex_reg|inAlu\(7))))) # (!\FD|ULA|Mux24~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[7]~25_combout\) # (\FD|id_ex_reg|inAlu\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~25_combout\,
	datab => \FD|id_ex_reg|inAlu\(7),
	datac => \FD|ULA|Mux24~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux24~2_combout\);

\FD|ULA|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~3_combout\ = (\FD|ULA|Mux24~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux24~3_combout\);

\hex7seg|reg1|reg4_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg1|reg4_o\(3));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\FD|mem_wb_reg|mux_0ent[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg1|reg4_o\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(6));

\FD|mux_Ula_Memoria|saida[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[6]~26_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(6),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[6]~26_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(23));

\FD|BR|bancoReg_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(24));

\FD|BR|saidaB[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~52_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(24) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(24),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[6]~52_combout\);

\FD|BR|saidaB[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~53_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[6]~52_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6~portbdataout\)) # (!\FD|BR|saidaB[6]~52_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(23),
	datac => \FD|BR|saidaB[6]~52_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[6]~53_combout\);

\FD|id_ex_reg|inMux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[6]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(6));

\FD|mux_Banco_Ula|saida[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[6]~26_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(6),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[6]~26_combout\);

\FD|ULA|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~0_combout\ = (\FD|ULA|soma[6]~12_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[6]~12_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux25~0_combout\);

\FD|ULA|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~12_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux25~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~12_combout\,
	datab => \FD|ULA|Mux25~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux25~1_combout\);

\FD|ULA|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~2_combout\ = (\FD|ULA|Mux25~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[6]~26_combout\ & \FD|id_ex_reg|inAlu\(6))))) # (!\FD|ULA|Mux25~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[6]~26_combout\) # (\FD|id_ex_reg|inAlu\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[6]~26_combout\,
	datab => \FD|id_ex_reg|inAlu\(6),
	datac => \FD|ULA|Mux25~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux25~2_combout\);

\FD|ULA|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~3_combout\ = (\FD|ULA|Mux25~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux25~3_combout\);

\hex7seg|reg1|reg4_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux25~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg1|reg4_o\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\FD|mem_wb_reg|mux_0ent[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg1|reg4_o\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(5));

\FD|mux_Ula_Memoria|saida[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[5]~27_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(5),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[5]~27_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(21));

\FD|BR|bancoReg_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(22));

\FD|BR|saidaB[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~54_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(22) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(22),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[5]~54_combout\);

\FD|BR|saidaB[5]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~55_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[5]~54_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5~portbdataout\)) # (!\FD|BR|saidaB[5]~54_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(21),
	datac => \FD|BR|saidaB[5]~54_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[5]~55_combout\);

\FD|id_ex_reg|inMux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[5]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(5));

\FD|mux_Banco_Ula|saida[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[5]~27_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|rtout\(1))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|rtout\(1),
	datab => \FD|id_ex_reg|inMux\(5),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[5]~27_combout\);

\FD|ULA|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~0_combout\ = (\FD|ULA|soma[5]~10_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[5]~10_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux26~0_combout\);

\FD|ULA|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~10_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux26~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~10_combout\,
	datab => \FD|ULA|Mux26~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux26~1_combout\);

\FD|ULA|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~2_combout\ = (\FD|ULA|Mux26~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[5]~27_combout\ & \FD|id_ex_reg|inAlu\(5))))) # (!\FD|ULA|Mux26~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[5]~27_combout\) # (\FD|id_ex_reg|inAlu\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~27_combout\,
	datab => \FD|id_ex_reg|inAlu\(5),
	datac => \FD|ULA|Mux26~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux26~2_combout\);

\FD|ULA|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~3_combout\ = (\FD|ULA|Mux26~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux26~3_combout\);

\hex7seg|reg1|reg4_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg1|reg4_o\(1));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\FD|mem_wb_reg|mux_0ent[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg1|reg4_o\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(4));

\FD|mux_Ula_Memoria|saida[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[4]~28_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(4),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[4]~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(19));

\FD|BR|bancoReg_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(20));

\FD|BR|saidaB[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~56_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(20) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(20),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[4]~56_combout\);

\FD|BR|saidaB[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~57_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[4]~56_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4~portbdataout\)) # (!\FD|BR|saidaB[4]~56_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(19),
	datac => \FD|BR|saidaB[4]~56_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[4]~57_combout\);

\FD|id_ex_reg|inMux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[4]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(4));

\FD|mux_Banco_Ula|saida[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[4]~28_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(4),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[4]~28_combout\);

\FD|ULA|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~0_combout\ = (\FD|ULA|soma[4]~8_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[4]~8_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux27~0_combout\);

\FD|ULA|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~8_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux27~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~8_combout\,
	datab => \FD|ULA|Mux27~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux27~1_combout\);

\FD|ULA|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~2_combout\ = (\FD|ULA|Mux27~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[4]~28_combout\ & \FD|id_ex_reg|inAlu\(4))))) # (!\FD|ULA|Mux27~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[4]~28_combout\) # (\FD|id_ex_reg|inAlu\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~28_combout\,
	datab => \FD|id_ex_reg|inAlu\(4),
	datac => \FD|ULA|Mux27~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux27~2_combout\);

\FD|ULA|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~3_combout\ = (\FD|ULA|Mux27~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux27~3_combout\);

\hex7seg|reg1|reg4_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg1|reg4_o\(0));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\FD|mem_wb_reg|mux_0ent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \hex7seg|reg0|reg4_o\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(3));

\FD|mux_Ula_Memoria|saida[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[3]~29_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(3),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[3]~29_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00003F80",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(17));

\FD|BR|bancoReg_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(18));

\FD|BR|saidaB[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~58_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(18) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(18),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[3]~58_combout\);

\FD|BR|saidaB[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~59_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[3]~58_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3~portbdataout\)) # (!\FD|BR|saidaB[3]~58_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(17),
	datac => \FD|BR|saidaB[3]~58_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[3]~59_combout\);

\FD|id_ex_reg|inMux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(3));

\FD|mux_Banco_Ula|saida[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[3]~29_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(3))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(3),
	datab => \FD|id_ex_reg|inMux\(3),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[3]~29_combout\);

\FD|ULA|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~0_combout\ = (\FD|ULA|soma[3]~6_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[3]~6_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux28~0_combout\);

\FD|ULA|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~6_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux28~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~6_combout\,
	datab => \FD|ULA|Mux28~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux28~1_combout\);

\FD|ULA|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~2_combout\ = (\FD|ULA|Mux28~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[3]~29_combout\ & \FD|id_ex_reg|inAlu\(3))))) # (!\FD|ULA|Mux28~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[3]~29_combout\) # (\FD|id_ex_reg|inAlu\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~29_combout\,
	datab => \FD|id_ex_reg|inAlu\(3),
	datac => \FD|ULA|Mux28~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux28~2_combout\);

\FD|ULA|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~3_combout\ = (\FD|ULA|Mux28~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux28~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux28~3_combout\);

\hex7seg|reg0|reg4_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux28~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg0|reg4_o\(3));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_single_port_RAM_e86d28ce.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|single_port_RAM:RAM|altsyncram:ram_rtl_0|altsyncram_2jd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

\FD|ULA|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~3_combout\ = (\FD|ULA|Mux0~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux0~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux0~3_combout\);

\FD|ex_mem_reg|ramAdd[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(31));

\FD|mem_wb_reg|mux_0ent[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|ramAdd\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(31));

\FD|mux_Ula_Memoria|saida[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[31]~1_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31~portadataout\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31~portadataout\,
	datab => \FD|mem_wb_reg|mux_0ent\(31),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[31]~1_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|mem_wb_reg|wb_BR_out~q\,
	portbre => VCC,
	clk0 => \clk~input_o\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\FD|BR|bancoReg_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_Ula_Memoria|saida[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(73));

\FD|BR|bancoReg_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(74));

\FD|BR|saidaB[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~2_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(74) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(74),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg~39_combout\,
	combout => \FD|BR|saidaB[31]~2_combout\);

\FD|BR|saidaB[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~3_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[31]~2_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31~portbdataout\)) # (!\FD|BR|saidaB[31]~2_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31~portbdataout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(73),
	datac => \FD|BR|saidaB[31]~2_combout\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[31]~3_combout\);

\FD|id_ex_reg|inMux[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|BR|saidaB[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(31));

\FD|mux_Banco_Ula|saida[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[31]~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inMux\(31),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[31]~1_combout\);

\FD|ULA|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~62_combout\ = \FD|mux_Banco_Ula|saida[31]~1_combout\ $ (\FD|id_ex_reg|inAlu\(31) $ (!\FD|ULA|Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~1_combout\,
	datab => \FD|id_ex_reg|inAlu\(31),
	cin => \FD|ULA|Add1~61\,
	combout => \FD|ULA|Add1~62_combout\);

\FD|ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~0_combout\ = (!\FD|ULA|Add1~46_combout\ & (!\FD|ULA|Add1~48_combout\ & (!\FD|ULA|Add1~50_combout\ & !\FD|ULA|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~46_combout\,
	datab => \FD|ULA|Add1~48_combout\,
	datac => \FD|ULA|Add1~50_combout\,
	datad => \FD|ULA|Add1~52_combout\,
	combout => \FD|ULA|Equal0~0_combout\);

\FD|ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~1_combout\ = (!\FD|ULA|Add1~14_combout\ & (!\FD|ULA|Add1~16_combout\ & (!\FD|ULA|Add1~18_combout\ & !\FD|ULA|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~14_combout\,
	datab => \FD|ULA|Add1~16_combout\,
	datac => \FD|ULA|Add1~18_combout\,
	datad => \FD|ULA|Add1~20_combout\,
	combout => \FD|ULA|Equal0~1_combout\);

\FD|ULA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~2_combout\ = (!\FD|ULA|Add1~22_combout\ & (!\FD|ULA|Add1~24_combout\ & (!\FD|ULA|Add1~26_combout\ & !\FD|ULA|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~22_combout\,
	datab => \FD|ULA|Add1~24_combout\,
	datac => \FD|ULA|Add1~26_combout\,
	datad => \FD|ULA|Add1~28_combout\,
	combout => \FD|ULA|Equal0~2_combout\);

\FD|ULA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~3_combout\ = (!\FD|ULA|Add1~38_combout\ & (!\FD|ULA|Add1~40_combout\ & (!\FD|ULA|Add1~42_combout\ & !\FD|ULA|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~38_combout\,
	datab => \FD|ULA|Add1~40_combout\,
	datac => \FD|ULA|Add1~42_combout\,
	datad => \FD|ULA|Add1~44_combout\,
	combout => \FD|ULA|Equal0~3_combout\);

\FD|ULA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~4_combout\ = (!\FD|ULA|Add1~2_combout\ & !\FD|ULA|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Add1~2_combout\,
	datad => \FD|ULA|Add1~4_combout\,
	combout => \FD|ULA|Equal0~4_combout\);

\FD|ULA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~5_combout\ = (!\FD|ULA|Add1~6_combout\ & (!\FD|ULA|Add1~8_combout\ & (!\FD|ULA|Add1~10_combout\ & !\FD|ULA|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~6_combout\,
	datab => \FD|ULA|Add1~8_combout\,
	datac => \FD|ULA|Add1~10_combout\,
	datad => \FD|ULA|Add1~12_combout\,
	combout => \FD|ULA|Equal0~5_combout\);

\FD|ULA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~6_combout\ = (!\FD|ULA|Add1~30_combout\ & (!\FD|ULA|Add1~32_combout\ & (!\FD|ULA|Add1~34_combout\ & !\FD|ULA|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~30_combout\,
	datab => \FD|ULA|Add1~32_combout\,
	datac => \FD|ULA|Add1~34_combout\,
	datad => \FD|ULA|Add1~36_combout\,
	combout => \FD|ULA|Equal0~6_combout\);

\FD|ULA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~7_combout\ = (\FD|ULA|Equal0~4_combout\ & (\FD|ULA|Equal0~5_combout\ & (!\FD|ULA|Add1~0_combout\ & \FD|ULA|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~4_combout\,
	datab => \FD|ULA|Equal0~5_combout\,
	datac => \FD|ULA|Add1~0_combout\,
	datad => \FD|ULA|Equal0~6_combout\,
	combout => \FD|ULA|Equal0~7_combout\);

\FD|ULA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~8_combout\ = (\FD|ULA|Equal0~1_combout\ & (\FD|ULA|Equal0~2_combout\ & (\FD|ULA|Equal0~3_combout\ & \FD|ULA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~1_combout\,
	datab => \FD|ULA|Equal0~2_combout\,
	datac => \FD|ULA|Equal0~3_combout\,
	datad => \FD|ULA|Equal0~7_combout\,
	combout => \FD|ULA|Equal0~8_combout\);

\FD|ULA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~9_combout\ = (\FD|ULA|Equal0~0_combout\ & (!\FD|ULA|Add1~54_combout\ & (!\FD|ULA|Add1~56_combout\ & \FD|ULA|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~0_combout\,
	datab => \FD|ULA|Add1~54_combout\,
	datac => \FD|ULA|Add1~56_combout\,
	datad => \FD|ULA|Equal0~8_combout\,
	combout => \FD|ULA|Equal0~9_combout\);

\FD|ULA|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~10_combout\ = (!\FD|ULA|Add1~62_combout\ & (!\FD|ULA|Add1~58_combout\ & (!\FD|ULA|Add1~60_combout\ & \FD|ULA|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~62_combout\,
	datab => \FD|ULA|Add1~58_combout\,
	datac => \FD|ULA|Add1~60_combout\,
	datad => \FD|ULA|Equal0~9_combout\,
	combout => \FD|ULA|Equal0~10_combout\);

\FD|ex_mem_reg|zerout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|zerout~q\);

\FD|sel_mux_beq\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|sel_mux_beq~combout\ = (\FD|ex_mem_reg|memacess_andbq_out~q\ & \FD|ex_mem_reg|zerout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|memacess_andbq_out~q\,
	datab => \FD|ex_mem_reg|zerout~q\,
	combout => \FD|sel_mux_beq~combout\);

\FD|PC|data_s[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~5_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(7)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[7]~10_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(7),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[7]~5_combout\);

\UC|pontosDeControle[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[0]~1_combout\ = (\FD|if_id_reg|rom_out\(27) & (!\FD|if_id_reg|rom_out\(4) & (!\FD|if_id_reg|rom_out\(26) & !\FD|if_id_reg|rom_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(27),
	datab => \FD|if_id_reg|rom_out\(4),
	datac => \FD|if_id_reg|rom_out\(26),
	datad => \FD|if_id_reg|rom_out\(29),
	combout => \UC|pontosDeControle[0]~1_combout\);

\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[7]~5_combout\,
	asdata => \FD|if_id_reg|rom_out\(5),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

\FD|ROM|memROM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~27_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # ((!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~27_combout\);

\FD|ROM|memROM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~33_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~27_combout\,
	combout => \FD|ROM|memROM~33_combout\);

\FD|if_id_reg|rom_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(3));

\FD|id_ex_reg|inShifter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|rom_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(3));

\FD|ex_mem_reg|inMuxPc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(5));

\FD|PC|data_s[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~3_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(5)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[5]~6_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(5),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[5]~3_combout\);

\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[5]~3_combout\,
	asdata => \FD|if_id_reg|rom_out\(3),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

\FD|ex_mem_reg|inMuxPc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(6));

\FD|PC|data_s[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~4_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(6)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[6]~8_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(6),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[6]~4_combout\);

\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[6]~4_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

\FD|ROM|memROM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = (\FD|PC|data_s\(2) & (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & !\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(2) & (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(4) & \FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~12_combout\);

\FD|ROM|memROM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = (\FD|ROM|memROM~12_combout\ & (!\FD|PC|data_s\(5) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~12_combout\,
	datac => \FD|PC|data_s\(5),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~13_combout\);

\FD|if_id_reg|rom_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(0));

\FD|id_ex_reg|inShifter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|rom_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(0));

\FD|ex_mem_reg|inMuxPc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(2));

\FD|PC|data_s[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[2]~0_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(2)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[2]~0_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(2),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[2]~0_combout\);

\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[2]~0_combout\,
	asdata => \FD|if_id_reg|rom_out\(0),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

\FD|Somador|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[3]~2_combout\ = (\FD|PC|data_s\(3) & (!\FD|Somador|saida[2]~1\)) # (!\FD|PC|data_s\(3) & ((\FD|Somador|saida[2]~1\) # (GND)))
-- \FD|Somador|saida[3]~3\ = CARRY((!\FD|Somador|saida[2]~1\) # (!\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datad => VCC,
	cin => \FD|Somador|saida[2]~1\,
	combout => \FD|Somador|saida[3]~2_combout\,
	cout => \FD|Somador|saida[3]~3\);

\FD|ex_mem_reg|inMuxPc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(3));

\FD|PC|data_s[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[3]~1_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(3)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[3]~2_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(3),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[3]~1_combout\);

\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[3]~1_combout\,
	asdata => \FD|if_id_reg|rom_out\(1),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

\FD|ex_mem_reg|inMuxPc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(4));

\FD|PC|data_s[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~2_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(4)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[4]~4_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(4),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[4]~2_combout\);

\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[4]~2_combout\,
	asdata => \FD|if_id_reg|rom_out\(2),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

\FD|ROM|memROM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~26_combout\ = (\FD|PC|data_s\(4) & (\FD|ROM|memROM~15_combout\ & (!\FD|PC|data_s\(3) & !\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|ROM|memROM~15_combout\,
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~26_combout\);

\FD|if_id_reg|rom_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ROM|memROM~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(2));

\FD|id_ex_reg|inShifter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|rom_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(2));

\FD|mux_Banco_Ula|saida[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[2]~30_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(2))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(2),
	datab => \FD|id_ex_reg|inMux\(2),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[2]~30_combout\);

\FD|ULA|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~0_combout\ = (\FD|ULA|soma[2]~4_combout\ & !\FD|UCULA|ALUctr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[2]~4_combout\,
	datad => \FD|UCULA|ALUctr[0]~1_combout\,
	combout => \FD|ULA|Mux29~0_combout\);

\FD|ULA|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~1_combout\ = (\FD|ULA|Mux13~0_combout\ & ((\FD|ULA|Mux13~1_combout\ & (\FD|ULA|Add1~4_combout\)) # (!\FD|ULA|Mux13~1_combout\ & ((\FD|ULA|Mux29~0_combout\))))) # (!\FD|ULA|Mux13~0_combout\ & (((!\FD|ULA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~4_combout\,
	datab => \FD|ULA|Mux29~0_combout\,
	datac => \FD|ULA|Mux13~0_combout\,
	datad => \FD|ULA|Mux13~1_combout\,
	combout => \FD|ULA|Mux29~1_combout\);

\FD|ULA|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~2_combout\ = (\FD|ULA|Mux29~1_combout\ & ((\FD|ULA|Mux13~2_combout\) # ((\FD|mux_Banco_Ula|saida[2]~30_combout\ & \FD|id_ex_reg|inAlu\(2))))) # (!\FD|ULA|Mux29~1_combout\ & (!\FD|ULA|Mux13~2_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[2]~30_combout\) # (\FD|id_ex_reg|inAlu\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~30_combout\,
	datab => \FD|id_ex_reg|inAlu\(2),
	datac => \FD|ULA|Mux29~1_combout\,
	datad => \FD|ULA|Mux13~2_combout\,
	combout => \FD|ULA|Mux29~2_combout\);

\FD|ULA|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~3_combout\ = (\FD|ULA|Mux29~2_combout\ & !\FD|UCULA|ALUctr[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux29~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~4_combout\,
	combout => \FD|ULA|Mux29~3_combout\);

\hex7seg|reg0|reg4_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ULA|Mux29~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7seg|reg0|reg4_o\(2));

\hex7seg|display0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[0]~0_combout\ = (\hex7seg|reg0|reg4_o\(2) & (!\hex7seg|reg0|reg4_o\(1) & (\hex7seg|reg0|reg4_o\(0) $ (!\hex7seg|reg0|reg4_o\(3))))) # (!\hex7seg|reg0|reg4_o\(2) & (\hex7seg|reg0|reg4_o\(0) & (\hex7seg|reg0|reg4_o\(1) $ 
-- (!\hex7seg|reg0|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg0|reg4_o\(2),
	datab => \hex7seg|reg0|reg4_o\(1),
	datac => \hex7seg|reg0|reg4_o\(0),
	datad => \hex7seg|reg0|reg4_o\(3),
	combout => \hex7seg|display0|rascSaida7seg[0]~0_combout\);

\hex7seg|display0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[1]~1_combout\ = (\hex7seg|reg0|reg4_o\(1) & ((\hex7seg|reg0|reg4_o\(0) & (\hex7seg|reg0|reg4_o\(3))) # (!\hex7seg|reg0|reg4_o\(0) & ((\hex7seg|reg0|reg4_o\(2)))))) # (!\hex7seg|reg0|reg4_o\(1) & (\hex7seg|reg0|reg4_o\(2) & 
-- (\hex7seg|reg0|reg4_o\(3) $ (\hex7seg|reg0|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg0|reg4_o\(1),
	datab => \hex7seg|reg0|reg4_o\(3),
	datac => \hex7seg|reg0|reg4_o\(2),
	datad => \hex7seg|reg0|reg4_o\(0),
	combout => \hex7seg|display0|rascSaida7seg[1]~1_combout\);

\hex7seg|display0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[2]~2_combout\ = (\hex7seg|reg0|reg4_o\(2) & (((\hex7seg|reg0|reg4_o\(0) & !\hex7seg|reg0|reg4_o\(1))) # (!\hex7seg|reg0|reg4_o\(3)))) # (!\hex7seg|reg0|reg4_o\(2) & ((\hex7seg|reg0|reg4_o\(0)) # ((\hex7seg|reg0|reg4_o\(3)) 
-- # (!\hex7seg|reg0|reg4_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg0|reg4_o\(0),
	datab => \hex7seg|reg0|reg4_o\(1),
	datac => \hex7seg|reg0|reg4_o\(2),
	datad => \hex7seg|reg0|reg4_o\(3),
	combout => \hex7seg|display0|rascSaida7seg[2]~2_combout\);

\hex7seg|display0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[3]~3_combout\ = (\hex7seg|reg0|reg4_o\(1) & ((\hex7seg|reg0|reg4_o\(2) & ((\hex7seg|reg0|reg4_o\(0)))) # (!\hex7seg|reg0|reg4_o\(2) & (\hex7seg|reg0|reg4_o\(3) & !\hex7seg|reg0|reg4_o\(0))))) # (!\hex7seg|reg0|reg4_o\(1) & 
-- (!\hex7seg|reg0|reg4_o\(3) & (\hex7seg|reg0|reg4_o\(2) $ (\hex7seg|reg0|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg0|reg4_o\(3),
	datab => \hex7seg|reg0|reg4_o\(2),
	datac => \hex7seg|reg0|reg4_o\(1),
	datad => \hex7seg|reg0|reg4_o\(0),
	combout => \hex7seg|display0|rascSaida7seg[3]~3_combout\);

\hex7seg|display0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[4]~4_combout\ = (\hex7seg|reg0|reg4_o\(1) & (!\hex7seg|reg0|reg4_o\(3) & (\hex7seg|reg0|reg4_o\(0)))) # (!\hex7seg|reg0|reg4_o\(1) & ((\hex7seg|reg0|reg4_o\(2) & (!\hex7seg|reg0|reg4_o\(3))) # (!\hex7seg|reg0|reg4_o\(2) & 
-- ((\hex7seg|reg0|reg4_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg0|reg4_o\(3),
	datab => \hex7seg|reg0|reg4_o\(1),
	datac => \hex7seg|reg0|reg4_o\(0),
	datad => \hex7seg|reg0|reg4_o\(2),
	combout => \hex7seg|display0|rascSaida7seg[4]~4_combout\);

\hex7seg|display0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[5]~5_combout\ = (\hex7seg|reg0|reg4_o\(0) & (\hex7seg|reg0|reg4_o\(3) $ (((\hex7seg|reg0|reg4_o\(1)) # (!\hex7seg|reg0|reg4_o\(2)))))) # (!\hex7seg|reg0|reg4_o\(0) & (!\hex7seg|reg0|reg4_o\(2) & (\hex7seg|reg0|reg4_o\(1) & 
-- !\hex7seg|reg0|reg4_o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg0|reg4_o\(0),
	datab => \hex7seg|reg0|reg4_o\(2),
	datac => \hex7seg|reg0|reg4_o\(1),
	datad => \hex7seg|reg0|reg4_o\(3),
	combout => \hex7seg|display0|rascSaida7seg[5]~5_combout\);

\hex7seg|display0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[6]~6_combout\ = (\hex7seg|reg0|reg4_o\(0) & (!\hex7seg|reg0|reg4_o\(3) & (\hex7seg|reg0|reg4_o\(2) $ (!\hex7seg|reg0|reg4_o\(1))))) # (!\hex7seg|reg0|reg4_o\(0) & (!\hex7seg|reg0|reg4_o\(1) & (\hex7seg|reg0|reg4_o\(2) $ 
-- (!\hex7seg|reg0|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg0|reg4_o\(2),
	datab => \hex7seg|reg0|reg4_o\(0),
	datac => \hex7seg|reg0|reg4_o\(1),
	datad => \hex7seg|reg0|reg4_o\(3),
	combout => \hex7seg|display0|rascSaida7seg[6]~6_combout\);

\hex7seg|display1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[0]~0_combout\ = (\hex7seg|reg1|reg4_o\(2) & (!\hex7seg|reg1|reg4_o\(1) & (\hex7seg|reg1|reg4_o\(0) $ (!\hex7seg|reg1|reg4_o\(3))))) # (!\hex7seg|reg1|reg4_o\(2) & (\hex7seg|reg1|reg4_o\(0) & (\hex7seg|reg1|reg4_o\(1) $ 
-- (!\hex7seg|reg1|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg1|reg4_o\(2),
	datab => \hex7seg|reg1|reg4_o\(1),
	datac => \hex7seg|reg1|reg4_o\(0),
	datad => \hex7seg|reg1|reg4_o\(3),
	combout => \hex7seg|display1|rascSaida7seg[0]~0_combout\);

\hex7seg|display1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[1]~1_combout\ = (\hex7seg|reg1|reg4_o\(1) & ((\hex7seg|reg1|reg4_o\(0) & (\hex7seg|reg1|reg4_o\(3))) # (!\hex7seg|reg1|reg4_o\(0) & ((\hex7seg|reg1|reg4_o\(2)))))) # (!\hex7seg|reg1|reg4_o\(1) & (\hex7seg|reg1|reg4_o\(2) & 
-- (\hex7seg|reg1|reg4_o\(3) $ (\hex7seg|reg1|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg1|reg4_o\(1),
	datab => \hex7seg|reg1|reg4_o\(3),
	datac => \hex7seg|reg1|reg4_o\(2),
	datad => \hex7seg|reg1|reg4_o\(0),
	combout => \hex7seg|display1|rascSaida7seg[1]~1_combout\);

\hex7seg|display1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[2]~2_combout\ = (\hex7seg|reg1|reg4_o\(2) & (((\hex7seg|reg1|reg4_o\(0) & !\hex7seg|reg1|reg4_o\(1))) # (!\hex7seg|reg1|reg4_o\(3)))) # (!\hex7seg|reg1|reg4_o\(2) & ((\hex7seg|reg1|reg4_o\(0)) # ((\hex7seg|reg1|reg4_o\(3)) 
-- # (!\hex7seg|reg1|reg4_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg1|reg4_o\(0),
	datab => \hex7seg|reg1|reg4_o\(1),
	datac => \hex7seg|reg1|reg4_o\(2),
	datad => \hex7seg|reg1|reg4_o\(3),
	combout => \hex7seg|display1|rascSaida7seg[2]~2_combout\);

\hex7seg|display1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[3]~3_combout\ = (\hex7seg|reg1|reg4_o\(1) & ((\hex7seg|reg1|reg4_o\(2) & ((\hex7seg|reg1|reg4_o\(0)))) # (!\hex7seg|reg1|reg4_o\(2) & (\hex7seg|reg1|reg4_o\(3) & !\hex7seg|reg1|reg4_o\(0))))) # (!\hex7seg|reg1|reg4_o\(1) & 
-- (!\hex7seg|reg1|reg4_o\(3) & (\hex7seg|reg1|reg4_o\(2) $ (\hex7seg|reg1|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg1|reg4_o\(3),
	datab => \hex7seg|reg1|reg4_o\(2),
	datac => \hex7seg|reg1|reg4_o\(1),
	datad => \hex7seg|reg1|reg4_o\(0),
	combout => \hex7seg|display1|rascSaida7seg[3]~3_combout\);

\hex7seg|display1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[4]~4_combout\ = (\hex7seg|reg1|reg4_o\(1) & (!\hex7seg|reg1|reg4_o\(3) & (\hex7seg|reg1|reg4_o\(0)))) # (!\hex7seg|reg1|reg4_o\(1) & ((\hex7seg|reg1|reg4_o\(2) & (!\hex7seg|reg1|reg4_o\(3))) # (!\hex7seg|reg1|reg4_o\(2) & 
-- ((\hex7seg|reg1|reg4_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg1|reg4_o\(3),
	datab => \hex7seg|reg1|reg4_o\(1),
	datac => \hex7seg|reg1|reg4_o\(0),
	datad => \hex7seg|reg1|reg4_o\(2),
	combout => \hex7seg|display1|rascSaida7seg[4]~4_combout\);

\hex7seg|display1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[5]~5_combout\ = (\hex7seg|reg1|reg4_o\(0) & (\hex7seg|reg1|reg4_o\(3) $ (((\hex7seg|reg1|reg4_o\(1)) # (!\hex7seg|reg1|reg4_o\(2)))))) # (!\hex7seg|reg1|reg4_o\(0) & (!\hex7seg|reg1|reg4_o\(2) & (\hex7seg|reg1|reg4_o\(1) & 
-- !\hex7seg|reg1|reg4_o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg1|reg4_o\(0),
	datab => \hex7seg|reg1|reg4_o\(2),
	datac => \hex7seg|reg1|reg4_o\(1),
	datad => \hex7seg|reg1|reg4_o\(3),
	combout => \hex7seg|display1|rascSaida7seg[5]~5_combout\);

\hex7seg|display1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[6]~6_combout\ = (\hex7seg|reg1|reg4_o\(0) & (!\hex7seg|reg1|reg4_o\(3) & (\hex7seg|reg1|reg4_o\(2) $ (!\hex7seg|reg1|reg4_o\(1))))) # (!\hex7seg|reg1|reg4_o\(0) & (!\hex7seg|reg1|reg4_o\(1) & (\hex7seg|reg1|reg4_o\(2) $ 
-- (!\hex7seg|reg1|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg1|reg4_o\(2),
	datab => \hex7seg|reg1|reg4_o\(0),
	datac => \hex7seg|reg1|reg4_o\(1),
	datad => \hex7seg|reg1|reg4_o\(3),
	combout => \hex7seg|display1|rascSaida7seg[6]~6_combout\);

\hex7seg|display2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[0]~0_combout\ = (\hex7seg|reg2|reg4_o\(2) & (!\hex7seg|reg2|reg4_o\(1) & (\hex7seg|reg2|reg4_o\(0) $ (!\hex7seg|reg2|reg4_o\(3))))) # (!\hex7seg|reg2|reg4_o\(2) & (\hex7seg|reg2|reg4_o\(0) & (\hex7seg|reg2|reg4_o\(1) $ 
-- (!\hex7seg|reg2|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg2|reg4_o\(2),
	datab => \hex7seg|reg2|reg4_o\(1),
	datac => \hex7seg|reg2|reg4_o\(0),
	datad => \hex7seg|reg2|reg4_o\(3),
	combout => \hex7seg|display2|rascSaida7seg[0]~0_combout\);

\hex7seg|display2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[1]~1_combout\ = (\hex7seg|reg2|reg4_o\(1) & ((\hex7seg|reg2|reg4_o\(0) & (\hex7seg|reg2|reg4_o\(3))) # (!\hex7seg|reg2|reg4_o\(0) & ((\hex7seg|reg2|reg4_o\(2)))))) # (!\hex7seg|reg2|reg4_o\(1) & (\hex7seg|reg2|reg4_o\(2) & 
-- (\hex7seg|reg2|reg4_o\(3) $ (\hex7seg|reg2|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg2|reg4_o\(1),
	datab => \hex7seg|reg2|reg4_o\(3),
	datac => \hex7seg|reg2|reg4_o\(2),
	datad => \hex7seg|reg2|reg4_o\(0),
	combout => \hex7seg|display2|rascSaida7seg[1]~1_combout\);

\hex7seg|display2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[2]~2_combout\ = (\hex7seg|reg2|reg4_o\(2) & (((\hex7seg|reg2|reg4_o\(0) & !\hex7seg|reg2|reg4_o\(1))) # (!\hex7seg|reg2|reg4_o\(3)))) # (!\hex7seg|reg2|reg4_o\(2) & ((\hex7seg|reg2|reg4_o\(0)) # ((\hex7seg|reg2|reg4_o\(3)) 
-- # (!\hex7seg|reg2|reg4_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg2|reg4_o\(0),
	datab => \hex7seg|reg2|reg4_o\(1),
	datac => \hex7seg|reg2|reg4_o\(2),
	datad => \hex7seg|reg2|reg4_o\(3),
	combout => \hex7seg|display2|rascSaida7seg[2]~2_combout\);

\hex7seg|display2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[3]~3_combout\ = (\hex7seg|reg2|reg4_o\(1) & ((\hex7seg|reg2|reg4_o\(2) & ((\hex7seg|reg2|reg4_o\(0)))) # (!\hex7seg|reg2|reg4_o\(2) & (\hex7seg|reg2|reg4_o\(3) & !\hex7seg|reg2|reg4_o\(0))))) # (!\hex7seg|reg2|reg4_o\(1) & 
-- (!\hex7seg|reg2|reg4_o\(3) & (\hex7seg|reg2|reg4_o\(2) $ (\hex7seg|reg2|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg2|reg4_o\(3),
	datab => \hex7seg|reg2|reg4_o\(2),
	datac => \hex7seg|reg2|reg4_o\(1),
	datad => \hex7seg|reg2|reg4_o\(0),
	combout => \hex7seg|display2|rascSaida7seg[3]~3_combout\);

\hex7seg|display2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[4]~4_combout\ = (\hex7seg|reg2|reg4_o\(1) & (!\hex7seg|reg2|reg4_o\(3) & (\hex7seg|reg2|reg4_o\(0)))) # (!\hex7seg|reg2|reg4_o\(1) & ((\hex7seg|reg2|reg4_o\(2) & (!\hex7seg|reg2|reg4_o\(3))) # (!\hex7seg|reg2|reg4_o\(2) & 
-- ((\hex7seg|reg2|reg4_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg2|reg4_o\(3),
	datab => \hex7seg|reg2|reg4_o\(1),
	datac => \hex7seg|reg2|reg4_o\(0),
	datad => \hex7seg|reg2|reg4_o\(2),
	combout => \hex7seg|display2|rascSaida7seg[4]~4_combout\);

\hex7seg|display2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[5]~5_combout\ = (\hex7seg|reg2|reg4_o\(0) & (\hex7seg|reg2|reg4_o\(3) $ (((\hex7seg|reg2|reg4_o\(1)) # (!\hex7seg|reg2|reg4_o\(2)))))) # (!\hex7seg|reg2|reg4_o\(0) & (!\hex7seg|reg2|reg4_o\(2) & (\hex7seg|reg2|reg4_o\(1) & 
-- !\hex7seg|reg2|reg4_o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg2|reg4_o\(0),
	datab => \hex7seg|reg2|reg4_o\(2),
	datac => \hex7seg|reg2|reg4_o\(1),
	datad => \hex7seg|reg2|reg4_o\(3),
	combout => \hex7seg|display2|rascSaida7seg[5]~5_combout\);

\hex7seg|display2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[6]~6_combout\ = (\hex7seg|reg2|reg4_o\(0) & (!\hex7seg|reg2|reg4_o\(3) & (\hex7seg|reg2|reg4_o\(2) $ (!\hex7seg|reg2|reg4_o\(1))))) # (!\hex7seg|reg2|reg4_o\(0) & (!\hex7seg|reg2|reg4_o\(1) & (\hex7seg|reg2|reg4_o\(2) $ 
-- (!\hex7seg|reg2|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg2|reg4_o\(2),
	datab => \hex7seg|reg2|reg4_o\(0),
	datac => \hex7seg|reg2|reg4_o\(1),
	datad => \hex7seg|reg2|reg4_o\(3),
	combout => \hex7seg|display2|rascSaida7seg[6]~6_combout\);

\hex7seg|display3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[0]~0_combout\ = (\hex7seg|reg3|reg4_o\(2) & (!\hex7seg|reg3|reg4_o\(1) & (\hex7seg|reg3|reg4_o\(0) $ (!\hex7seg|reg3|reg4_o\(3))))) # (!\hex7seg|reg3|reg4_o\(2) & (\hex7seg|reg3|reg4_o\(0) & (\hex7seg|reg3|reg4_o\(1) $ 
-- (!\hex7seg|reg3|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg3|reg4_o\(2),
	datab => \hex7seg|reg3|reg4_o\(1),
	datac => \hex7seg|reg3|reg4_o\(0),
	datad => \hex7seg|reg3|reg4_o\(3),
	combout => \hex7seg|display3|rascSaida7seg[0]~0_combout\);

\hex7seg|display3|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[1]~1_combout\ = (\hex7seg|reg3|reg4_o\(1) & ((\hex7seg|reg3|reg4_o\(0) & (\hex7seg|reg3|reg4_o\(3))) # (!\hex7seg|reg3|reg4_o\(0) & ((\hex7seg|reg3|reg4_o\(2)))))) # (!\hex7seg|reg3|reg4_o\(1) & (\hex7seg|reg3|reg4_o\(2) & 
-- (\hex7seg|reg3|reg4_o\(3) $ (\hex7seg|reg3|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg3|reg4_o\(1),
	datab => \hex7seg|reg3|reg4_o\(3),
	datac => \hex7seg|reg3|reg4_o\(2),
	datad => \hex7seg|reg3|reg4_o\(0),
	combout => \hex7seg|display3|rascSaida7seg[1]~1_combout\);

\hex7seg|display3|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[2]~2_combout\ = (\hex7seg|reg3|reg4_o\(2) & (((\hex7seg|reg3|reg4_o\(0) & !\hex7seg|reg3|reg4_o\(1))) # (!\hex7seg|reg3|reg4_o\(3)))) # (!\hex7seg|reg3|reg4_o\(2) & ((\hex7seg|reg3|reg4_o\(0)) # ((\hex7seg|reg3|reg4_o\(3)) 
-- # (!\hex7seg|reg3|reg4_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg3|reg4_o\(0),
	datab => \hex7seg|reg3|reg4_o\(1),
	datac => \hex7seg|reg3|reg4_o\(2),
	datad => \hex7seg|reg3|reg4_o\(3),
	combout => \hex7seg|display3|rascSaida7seg[2]~2_combout\);

\hex7seg|display3|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[3]~3_combout\ = (\hex7seg|reg3|reg4_o\(1) & ((\hex7seg|reg3|reg4_o\(2) & ((\hex7seg|reg3|reg4_o\(0)))) # (!\hex7seg|reg3|reg4_o\(2) & (\hex7seg|reg3|reg4_o\(3) & !\hex7seg|reg3|reg4_o\(0))))) # (!\hex7seg|reg3|reg4_o\(1) & 
-- (!\hex7seg|reg3|reg4_o\(3) & (\hex7seg|reg3|reg4_o\(2) $ (\hex7seg|reg3|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg3|reg4_o\(3),
	datab => \hex7seg|reg3|reg4_o\(2),
	datac => \hex7seg|reg3|reg4_o\(1),
	datad => \hex7seg|reg3|reg4_o\(0),
	combout => \hex7seg|display3|rascSaida7seg[3]~3_combout\);

\hex7seg|display3|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[4]~4_combout\ = (\hex7seg|reg3|reg4_o\(1) & (!\hex7seg|reg3|reg4_o\(3) & (\hex7seg|reg3|reg4_o\(0)))) # (!\hex7seg|reg3|reg4_o\(1) & ((\hex7seg|reg3|reg4_o\(2) & (!\hex7seg|reg3|reg4_o\(3))) # (!\hex7seg|reg3|reg4_o\(2) & 
-- ((\hex7seg|reg3|reg4_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg3|reg4_o\(3),
	datab => \hex7seg|reg3|reg4_o\(1),
	datac => \hex7seg|reg3|reg4_o\(0),
	datad => \hex7seg|reg3|reg4_o\(2),
	combout => \hex7seg|display3|rascSaida7seg[4]~4_combout\);

\hex7seg|display3|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[5]~5_combout\ = (\hex7seg|reg3|reg4_o\(0) & (\hex7seg|reg3|reg4_o\(3) $ (((\hex7seg|reg3|reg4_o\(1)) # (!\hex7seg|reg3|reg4_o\(2)))))) # (!\hex7seg|reg3|reg4_o\(0) & (!\hex7seg|reg3|reg4_o\(2) & (\hex7seg|reg3|reg4_o\(1) & 
-- !\hex7seg|reg3|reg4_o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg3|reg4_o\(0),
	datab => \hex7seg|reg3|reg4_o\(2),
	datac => \hex7seg|reg3|reg4_o\(1),
	datad => \hex7seg|reg3|reg4_o\(3),
	combout => \hex7seg|display3|rascSaida7seg[5]~5_combout\);

\hex7seg|display3|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[6]~6_combout\ = (\hex7seg|reg3|reg4_o\(0) & (!\hex7seg|reg3|reg4_o\(3) & (\hex7seg|reg3|reg4_o\(2) $ (!\hex7seg|reg3|reg4_o\(1))))) # (!\hex7seg|reg3|reg4_o\(0) & (!\hex7seg|reg3|reg4_o\(1) & (\hex7seg|reg3|reg4_o\(2) $ 
-- (!\hex7seg|reg3|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg3|reg4_o\(2),
	datab => \hex7seg|reg3|reg4_o\(0),
	datac => \hex7seg|reg3|reg4_o\(1),
	datad => \hex7seg|reg3|reg4_o\(3),
	combout => \hex7seg|display3|rascSaida7seg[6]~6_combout\);

\hex7seg|display4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[0]~0_combout\ = (\hex7seg|reg4|reg4_o\(2) & (!\hex7seg|reg4|reg4_o\(1) & (\hex7seg|reg4|reg4_o\(0) $ (!\hex7seg|reg4|reg4_o\(3))))) # (!\hex7seg|reg4|reg4_o\(2) & (\hex7seg|reg4|reg4_o\(0) & (\hex7seg|reg4|reg4_o\(1) $ 
-- (!\hex7seg|reg4|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg4|reg4_o\(2),
	datab => \hex7seg|reg4|reg4_o\(1),
	datac => \hex7seg|reg4|reg4_o\(0),
	datad => \hex7seg|reg4|reg4_o\(3),
	combout => \hex7seg|display4|rascSaida7seg[0]~0_combout\);

\hex7seg|display4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[1]~1_combout\ = (\hex7seg|reg4|reg4_o\(1) & ((\hex7seg|reg4|reg4_o\(0) & (\hex7seg|reg4|reg4_o\(3))) # (!\hex7seg|reg4|reg4_o\(0) & ((\hex7seg|reg4|reg4_o\(2)))))) # (!\hex7seg|reg4|reg4_o\(1) & (\hex7seg|reg4|reg4_o\(2) & 
-- (\hex7seg|reg4|reg4_o\(3) $ (\hex7seg|reg4|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg4|reg4_o\(1),
	datab => \hex7seg|reg4|reg4_o\(3),
	datac => \hex7seg|reg4|reg4_o\(2),
	datad => \hex7seg|reg4|reg4_o\(0),
	combout => \hex7seg|display4|rascSaida7seg[1]~1_combout\);

\hex7seg|display4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[2]~2_combout\ = (\hex7seg|reg4|reg4_o\(2) & (((\hex7seg|reg4|reg4_o\(0) & !\hex7seg|reg4|reg4_o\(1))) # (!\hex7seg|reg4|reg4_o\(3)))) # (!\hex7seg|reg4|reg4_o\(2) & ((\hex7seg|reg4|reg4_o\(0)) # ((\hex7seg|reg4|reg4_o\(3)) 
-- # (!\hex7seg|reg4|reg4_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg4|reg4_o\(0),
	datab => \hex7seg|reg4|reg4_o\(1),
	datac => \hex7seg|reg4|reg4_o\(2),
	datad => \hex7seg|reg4|reg4_o\(3),
	combout => \hex7seg|display4|rascSaida7seg[2]~2_combout\);

\hex7seg|display4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[3]~3_combout\ = (\hex7seg|reg4|reg4_o\(1) & ((\hex7seg|reg4|reg4_o\(2) & ((\hex7seg|reg4|reg4_o\(0)))) # (!\hex7seg|reg4|reg4_o\(2) & (\hex7seg|reg4|reg4_o\(3) & !\hex7seg|reg4|reg4_o\(0))))) # (!\hex7seg|reg4|reg4_o\(1) & 
-- (!\hex7seg|reg4|reg4_o\(3) & (\hex7seg|reg4|reg4_o\(2) $ (\hex7seg|reg4|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg4|reg4_o\(3),
	datab => \hex7seg|reg4|reg4_o\(2),
	datac => \hex7seg|reg4|reg4_o\(1),
	datad => \hex7seg|reg4|reg4_o\(0),
	combout => \hex7seg|display4|rascSaida7seg[3]~3_combout\);

\hex7seg|display4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[4]~4_combout\ = (\hex7seg|reg4|reg4_o\(1) & (!\hex7seg|reg4|reg4_o\(3) & (\hex7seg|reg4|reg4_o\(0)))) # (!\hex7seg|reg4|reg4_o\(1) & ((\hex7seg|reg4|reg4_o\(2) & (!\hex7seg|reg4|reg4_o\(3))) # (!\hex7seg|reg4|reg4_o\(2) & 
-- ((\hex7seg|reg4|reg4_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg4|reg4_o\(3),
	datab => \hex7seg|reg4|reg4_o\(1),
	datac => \hex7seg|reg4|reg4_o\(0),
	datad => \hex7seg|reg4|reg4_o\(2),
	combout => \hex7seg|display4|rascSaida7seg[4]~4_combout\);

\hex7seg|display4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[5]~5_combout\ = (\hex7seg|reg4|reg4_o\(0) & (\hex7seg|reg4|reg4_o\(3) $ (((\hex7seg|reg4|reg4_o\(1)) # (!\hex7seg|reg4|reg4_o\(2)))))) # (!\hex7seg|reg4|reg4_o\(0) & (!\hex7seg|reg4|reg4_o\(2) & (\hex7seg|reg4|reg4_o\(1) & 
-- !\hex7seg|reg4|reg4_o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg4|reg4_o\(0),
	datab => \hex7seg|reg4|reg4_o\(2),
	datac => \hex7seg|reg4|reg4_o\(1),
	datad => \hex7seg|reg4|reg4_o\(3),
	combout => \hex7seg|display4|rascSaida7seg[5]~5_combout\);

\hex7seg|display4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[6]~6_combout\ = (\hex7seg|reg4|reg4_o\(0) & (!\hex7seg|reg4|reg4_o\(3) & (\hex7seg|reg4|reg4_o\(2) $ (!\hex7seg|reg4|reg4_o\(1))))) # (!\hex7seg|reg4|reg4_o\(0) & (!\hex7seg|reg4|reg4_o\(1) & (\hex7seg|reg4|reg4_o\(2) $ 
-- (!\hex7seg|reg4|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg4|reg4_o\(2),
	datab => \hex7seg|reg4|reg4_o\(0),
	datac => \hex7seg|reg4|reg4_o\(1),
	datad => \hex7seg|reg4|reg4_o\(3),
	combout => \hex7seg|display4|rascSaida7seg[6]~6_combout\);

\hex7seg|display5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[0]~0_combout\ = (\hex7seg|reg5|reg4_o\(2) & (!\hex7seg|reg5|reg4_o\(1) & (\hex7seg|reg5|reg4_o\(0) $ (!\hex7seg|reg5|reg4_o\(3))))) # (!\hex7seg|reg5|reg4_o\(2) & (\hex7seg|reg5|reg4_o\(0) & (\hex7seg|reg5|reg4_o\(1) $ 
-- (!\hex7seg|reg5|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg5|reg4_o\(2),
	datab => \hex7seg|reg5|reg4_o\(1),
	datac => \hex7seg|reg5|reg4_o\(0),
	datad => \hex7seg|reg5|reg4_o\(3),
	combout => \hex7seg|display5|rascSaida7seg[0]~0_combout\);

\hex7seg|display5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[1]~1_combout\ = (\hex7seg|reg5|reg4_o\(1) & ((\hex7seg|reg5|reg4_o\(0) & (\hex7seg|reg5|reg4_o\(3))) # (!\hex7seg|reg5|reg4_o\(0) & ((\hex7seg|reg5|reg4_o\(2)))))) # (!\hex7seg|reg5|reg4_o\(1) & (\hex7seg|reg5|reg4_o\(2) & 
-- (\hex7seg|reg5|reg4_o\(3) $ (\hex7seg|reg5|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg5|reg4_o\(1),
	datab => \hex7seg|reg5|reg4_o\(3),
	datac => \hex7seg|reg5|reg4_o\(2),
	datad => \hex7seg|reg5|reg4_o\(0),
	combout => \hex7seg|display5|rascSaida7seg[1]~1_combout\);

\hex7seg|display5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[2]~2_combout\ = (\hex7seg|reg5|reg4_o\(2) & (((\hex7seg|reg5|reg4_o\(0) & !\hex7seg|reg5|reg4_o\(1))) # (!\hex7seg|reg5|reg4_o\(3)))) # (!\hex7seg|reg5|reg4_o\(2) & ((\hex7seg|reg5|reg4_o\(0)) # ((\hex7seg|reg5|reg4_o\(3)) 
-- # (!\hex7seg|reg5|reg4_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg5|reg4_o\(0),
	datab => \hex7seg|reg5|reg4_o\(1),
	datac => \hex7seg|reg5|reg4_o\(2),
	datad => \hex7seg|reg5|reg4_o\(3),
	combout => \hex7seg|display5|rascSaida7seg[2]~2_combout\);

\hex7seg|display5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[3]~3_combout\ = (\hex7seg|reg5|reg4_o\(1) & ((\hex7seg|reg5|reg4_o\(2) & ((\hex7seg|reg5|reg4_o\(0)))) # (!\hex7seg|reg5|reg4_o\(2) & (\hex7seg|reg5|reg4_o\(3) & !\hex7seg|reg5|reg4_o\(0))))) # (!\hex7seg|reg5|reg4_o\(1) & 
-- (!\hex7seg|reg5|reg4_o\(3) & (\hex7seg|reg5|reg4_o\(2) $ (\hex7seg|reg5|reg4_o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg5|reg4_o\(3),
	datab => \hex7seg|reg5|reg4_o\(2),
	datac => \hex7seg|reg5|reg4_o\(1),
	datad => \hex7seg|reg5|reg4_o\(0),
	combout => \hex7seg|display5|rascSaida7seg[3]~3_combout\);

\hex7seg|display5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[4]~4_combout\ = (\hex7seg|reg5|reg4_o\(1) & (!\hex7seg|reg5|reg4_o\(3) & (\hex7seg|reg5|reg4_o\(0)))) # (!\hex7seg|reg5|reg4_o\(1) & ((\hex7seg|reg5|reg4_o\(2) & (!\hex7seg|reg5|reg4_o\(3))) # (!\hex7seg|reg5|reg4_o\(2) & 
-- ((\hex7seg|reg5|reg4_o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg5|reg4_o\(3),
	datab => \hex7seg|reg5|reg4_o\(1),
	datac => \hex7seg|reg5|reg4_o\(0),
	datad => \hex7seg|reg5|reg4_o\(2),
	combout => \hex7seg|display5|rascSaida7seg[4]~4_combout\);

\hex7seg|display5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[5]~5_combout\ = (\hex7seg|reg5|reg4_o\(0) & (\hex7seg|reg5|reg4_o\(3) $ (((\hex7seg|reg5|reg4_o\(1)) # (!\hex7seg|reg5|reg4_o\(2)))))) # (!\hex7seg|reg5|reg4_o\(0) & (!\hex7seg|reg5|reg4_o\(2) & (\hex7seg|reg5|reg4_o\(1) & 
-- !\hex7seg|reg5|reg4_o\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg5|reg4_o\(0),
	datab => \hex7seg|reg5|reg4_o\(2),
	datac => \hex7seg|reg5|reg4_o\(1),
	datad => \hex7seg|reg5|reg4_o\(3),
	combout => \hex7seg|display5|rascSaida7seg[5]~5_combout\);

\hex7seg|display5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[6]~6_combout\ = (\hex7seg|reg5|reg4_o\(0) & (!\hex7seg|reg5|reg4_o\(3) & (\hex7seg|reg5|reg4_o\(2) $ (!\hex7seg|reg5|reg4_o\(1))))) # (!\hex7seg|reg5|reg4_o\(0) & (!\hex7seg|reg5|reg4_o\(1) & (\hex7seg|reg5|reg4_o\(2) $ 
-- (!\hex7seg|reg5|reg4_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|reg5|reg4_o\(2),
	datab => \hex7seg|reg5|reg4_o\(0),
	datac => \hex7seg|reg5|reg4_o\(1),
	datad => \hex7seg|reg5|reg4_o\(3),
	combout => \hex7seg|display5|rascSaida7seg[6]~6_combout\);

\FD|if_id_reg|pc_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(0));

\FD|id_ex_reg|inAdder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(0));

\FD|ex_mem_reg|inMuxPc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|id_ex_reg|inAdder\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(0));

\FD|mux_jump|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[0]~0_combout\ = (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(0))) # (!\FD|sel_mux_beq~combout\ & ((\FD|PC|data_s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(0),
	datab => \FD|PC|data_s\(0),
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[0]~0_combout\);

\FD|PC|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(0));

\FD|Somador|saida[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[8]~12_combout\ = (\FD|PC|data_s\(8) & (\FD|Somador|saida[7]~11\ $ (GND))) # (!\FD|PC|data_s\(8) & (!\FD|Somador|saida[7]~11\ & VCC))
-- \FD|Somador|saida[8]~13\ = CARRY((\FD|PC|data_s\(8) & !\FD|Somador|saida[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(8),
	datad => VCC,
	cin => \FD|Somador|saida[7]~11\,
	combout => \FD|Somador|saida[8]~12_combout\,
	cout => \FD|Somador|saida[8]~13\);

\FD|if_id_reg|pc_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(8));

\FD|id_ex_reg|inAdder[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(8));

\FD|ex_mem_reg|inMuxPc[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[8]~42_combout\ = ((\FD|id_ex_reg|inAdder\(8) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[7]~41\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[8]~43\ = CARRY((\FD|id_ex_reg|inAdder\(8) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[7]~41\))) # (!\FD|id_ex_reg|inAdder\(8) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[7]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(8),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[7]~41\,
	combout => \FD|ex_mem_reg|inMuxPc[8]~42_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[8]~43\);

\FD|ex_mem_reg|inMuxPc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(8));

\FD|PC|data_s[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[8]~6_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(8)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[8]~12_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(8),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[8]~6_combout\);

\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[8]~6_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

\FD|Somador|saida[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[9]~14_combout\ = (\FD|PC|data_s\(9) & (!\FD|Somador|saida[8]~13\)) # (!\FD|PC|data_s\(9) & ((\FD|Somador|saida[8]~13\) # (GND)))
-- \FD|Somador|saida[9]~15\ = CARRY((!\FD|Somador|saida[8]~13\) # (!\FD|PC|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|Somador|saida[8]~13\,
	combout => \FD|Somador|saida[9]~14_combout\,
	cout => \FD|Somador|saida[9]~15\);

\FD|if_id_reg|pc_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(9));

\FD|id_ex_reg|inAdder[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(9));

\FD|ex_mem_reg|inMuxPc[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[9]~44_combout\ = (\FD|id_ex_reg|inAdder\(9) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[8]~43\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[8]~43\)))) # (!\FD|id_ex_reg|inAdder\(9) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[8]~43\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[8]~43\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[9]~45\ = CARRY((\FD|id_ex_reg|inAdder\(9) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[8]~43\)) # (!\FD|id_ex_reg|inAdder\(9) & ((!\FD|ex_mem_reg|inMuxPc[8]~43\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(9),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[8]~43\,
	combout => \FD|ex_mem_reg|inMuxPc[9]~44_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[9]~45\);

\FD|ex_mem_reg|inMuxPc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(9));

\FD|PC|data_s[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[9]~7_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(9)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[9]~14_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(9),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[9]~7_combout\);

\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[9]~7_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

\FD|Somador|saida[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[10]~16_combout\ = (\FD|PC|data_s\(10) & (\FD|Somador|saida[9]~15\ $ (GND))) # (!\FD|PC|data_s\(10) & (!\FD|Somador|saida[9]~15\ & VCC))
-- \FD|Somador|saida[10]~17\ = CARRY((\FD|PC|data_s\(10) & !\FD|Somador|saida[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(10),
	datad => VCC,
	cin => \FD|Somador|saida[9]~15\,
	combout => \FD|Somador|saida[10]~16_combout\,
	cout => \FD|Somador|saida[10]~17\);

\FD|if_id_reg|pc_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(10));

\FD|id_ex_reg|inAdder[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(10));

\FD|ex_mem_reg|inMuxPc[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[10]~46_combout\ = ((\FD|id_ex_reg|inAdder\(10) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[9]~45\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[10]~47\ = CARRY((\FD|id_ex_reg|inAdder\(10) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[9]~45\))) # (!\FD|id_ex_reg|inAdder\(10) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[9]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(10),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[9]~45\,
	combout => \FD|ex_mem_reg|inMuxPc[10]~46_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[10]~47\);

\FD|ex_mem_reg|inMuxPc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(10));

\FD|PC|data_s[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[10]~8_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(10)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[10]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[10]~16_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(10),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[10]~8_combout\);

\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[10]~8_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

\FD|Somador|saida[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[11]~18_combout\ = (\FD|PC|data_s\(11) & (!\FD|Somador|saida[10]~17\)) # (!\FD|PC|data_s\(11) & ((\FD|Somador|saida[10]~17\) # (GND)))
-- \FD|Somador|saida[11]~19\ = CARRY((!\FD|Somador|saida[10]~17\) # (!\FD|PC|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(11),
	datad => VCC,
	cin => \FD|Somador|saida[10]~17\,
	combout => \FD|Somador|saida[11]~18_combout\,
	cout => \FD|Somador|saida[11]~19\);

\FD|if_id_reg|pc_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(11));

\FD|id_ex_reg|inAdder[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(11));

\FD|ex_mem_reg|inMuxPc[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[11]~48_combout\ = (\FD|id_ex_reg|inAdder\(11) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[10]~47\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[10]~47\)))) # (!\FD|id_ex_reg|inAdder\(11) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[10]~47\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[10]~47\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[11]~49\ = CARRY((\FD|id_ex_reg|inAdder\(11) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[10]~47\)) # (!\FD|id_ex_reg|inAdder\(11) & ((!\FD|ex_mem_reg|inMuxPc[10]~47\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(11),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[10]~47\,
	combout => \FD|ex_mem_reg|inMuxPc[11]~48_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[11]~49\);

\FD|ex_mem_reg|inMuxPc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(11));

\FD|PC|data_s[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[11]~9_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(11)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[11]~18_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(11),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[11]~9_combout\);

\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[11]~9_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

\FD|Somador|saida[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[12]~20_combout\ = (\FD|PC|data_s\(12) & (\FD|Somador|saida[11]~19\ $ (GND))) # (!\FD|PC|data_s\(12) & (!\FD|Somador|saida[11]~19\ & VCC))
-- \FD|Somador|saida[12]~21\ = CARRY((\FD|PC|data_s\(12) & !\FD|Somador|saida[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(12),
	datad => VCC,
	cin => \FD|Somador|saida[11]~19\,
	combout => \FD|Somador|saida[12]~20_combout\,
	cout => \FD|Somador|saida[12]~21\);

\FD|if_id_reg|pc_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(12));

\FD|id_ex_reg|inAdder[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(12));

\FD|ex_mem_reg|inMuxPc[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[12]~50_combout\ = ((\FD|id_ex_reg|inAdder\(12) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[11]~49\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[12]~51\ = CARRY((\FD|id_ex_reg|inAdder\(12) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[11]~49\))) # (!\FD|id_ex_reg|inAdder\(12) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[11]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(12),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[11]~49\,
	combout => \FD|ex_mem_reg|inMuxPc[12]~50_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[12]~51\);

\FD|ex_mem_reg|inMuxPc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(12));

\FD|PC|data_s[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[12]~10_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(12)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[12]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[12]~20_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(12),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[12]~10_combout\);

\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[12]~10_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

\FD|Somador|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[13]~22_combout\ = (\FD|PC|data_s\(13) & (!\FD|Somador|saida[12]~21\)) # (!\FD|PC|data_s\(13) & ((\FD|Somador|saida[12]~21\) # (GND)))
-- \FD|Somador|saida[13]~23\ = CARRY((!\FD|Somador|saida[12]~21\) # (!\FD|PC|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(13),
	datad => VCC,
	cin => \FD|Somador|saida[12]~21\,
	combout => \FD|Somador|saida[13]~22_combout\,
	cout => \FD|Somador|saida[13]~23\);

\FD|if_id_reg|pc_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(13));

\FD|id_ex_reg|inAdder[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(13));

\FD|ex_mem_reg|inMuxPc[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[13]~52_combout\ = (\FD|id_ex_reg|inAdder\(13) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[12]~51\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[12]~51\)))) # (!\FD|id_ex_reg|inAdder\(13) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[12]~51\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[12]~51\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[13]~53\ = CARRY((\FD|id_ex_reg|inAdder\(13) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[12]~51\)) # (!\FD|id_ex_reg|inAdder\(13) & ((!\FD|ex_mem_reg|inMuxPc[12]~51\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(13),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[12]~51\,
	combout => \FD|ex_mem_reg|inMuxPc[13]~52_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[13]~53\);

\FD|ex_mem_reg|inMuxPc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[13]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(13));

\FD|PC|data_s[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[13]~11_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(13)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[13]~22_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(13),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[13]~11_combout\);

\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[13]~11_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

\FD|Somador|saida[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[14]~24_combout\ = (\FD|PC|data_s\(14) & (\FD|Somador|saida[13]~23\ $ (GND))) # (!\FD|PC|data_s\(14) & (!\FD|Somador|saida[13]~23\ & VCC))
-- \FD|Somador|saida[14]~25\ = CARRY((\FD|PC|data_s\(14) & !\FD|Somador|saida[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(14),
	datad => VCC,
	cin => \FD|Somador|saida[13]~23\,
	combout => \FD|Somador|saida[14]~24_combout\,
	cout => \FD|Somador|saida[14]~25\);

\FD|if_id_reg|pc_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[14]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(14));

\FD|id_ex_reg|inAdder[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(14));

\FD|ex_mem_reg|inMuxPc[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[14]~54_combout\ = ((\FD|id_ex_reg|inAdder\(14) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[13]~53\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[14]~55\ = CARRY((\FD|id_ex_reg|inAdder\(14) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[13]~53\))) # (!\FD|id_ex_reg|inAdder\(14) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[13]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(14),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[13]~53\,
	combout => \FD|ex_mem_reg|inMuxPc[14]~54_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[14]~55\);

\FD|ex_mem_reg|inMuxPc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(14));

\FD|PC|data_s[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[14]~12_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(14)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[14]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[14]~24_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(14),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[14]~12_combout\);

\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[14]~12_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

\FD|Somador|saida[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[15]~26_combout\ = (\FD|PC|data_s\(15) & (!\FD|Somador|saida[14]~25\)) # (!\FD|PC|data_s\(15) & ((\FD|Somador|saida[14]~25\) # (GND)))
-- \FD|Somador|saida[15]~27\ = CARRY((!\FD|Somador|saida[14]~25\) # (!\FD|PC|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|Somador|saida[14]~25\,
	combout => \FD|Somador|saida[15]~26_combout\,
	cout => \FD|Somador|saida[15]~27\);

\FD|if_id_reg|pc_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(15));

\FD|id_ex_reg|inAdder[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(15));

\FD|ex_mem_reg|inMuxPc[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[15]~56_combout\ = (\FD|id_ex_reg|inAdder\(15) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[14]~55\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[14]~55\)))) # (!\FD|id_ex_reg|inAdder\(15) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[14]~55\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[14]~55\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[15]~57\ = CARRY((\FD|id_ex_reg|inAdder\(15) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[14]~55\)) # (!\FD|id_ex_reg|inAdder\(15) & ((!\FD|ex_mem_reg|inMuxPc[14]~55\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(15),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[14]~55\,
	combout => \FD|ex_mem_reg|inMuxPc[15]~56_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[15]~57\);

\FD|ex_mem_reg|inMuxPc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[15]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(15));

\FD|PC|data_s[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[15]~13_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(15)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[15]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[15]~26_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(15),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[15]~13_combout\);

\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[15]~13_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

\FD|Somador|saida[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[16]~28_combout\ = (\FD|PC|data_s\(16) & (\FD|Somador|saida[15]~27\ $ (GND))) # (!\FD|PC|data_s\(16) & (!\FD|Somador|saida[15]~27\ & VCC))
-- \FD|Somador|saida[16]~29\ = CARRY((\FD|PC|data_s\(16) & !\FD|Somador|saida[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(16),
	datad => VCC,
	cin => \FD|Somador|saida[15]~27\,
	combout => \FD|Somador|saida[16]~28_combout\,
	cout => \FD|Somador|saida[16]~29\);

\FD|if_id_reg|pc_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[16]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(16));

\FD|id_ex_reg|inAdder[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(16));

\FD|ex_mem_reg|inMuxPc[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[16]~58_combout\ = ((\FD|id_ex_reg|inAdder\(16) $ (\FD|id_ex_reg|rtout\(1) $ (!\FD|ex_mem_reg|inMuxPc[15]~57\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[16]~59\ = CARRY((\FD|id_ex_reg|inAdder\(16) & ((\FD|id_ex_reg|rtout\(1)) # (!\FD|ex_mem_reg|inMuxPc[15]~57\))) # (!\FD|id_ex_reg|inAdder\(16) & (\FD|id_ex_reg|rtout\(1) & !\FD|ex_mem_reg|inMuxPc[15]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(16),
	datab => \FD|id_ex_reg|rtout\(1),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[15]~57\,
	combout => \FD|ex_mem_reg|inMuxPc[16]~58_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[16]~59\);

\FD|ex_mem_reg|inMuxPc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[16]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(16));

\FD|PC|data_s[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[16]~14_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(16)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[16]~28_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(16),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[16]~14_combout\);

\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[16]~14_combout\,
	asdata => \FD|if_id_reg|rom_out\(5),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

\FD|Somador|saida[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[17]~30_combout\ = (\FD|PC|data_s\(17) & (!\FD|Somador|saida[16]~29\)) # (!\FD|PC|data_s\(17) & ((\FD|Somador|saida[16]~29\) # (GND)))
-- \FD|Somador|saida[17]~31\ = CARRY((!\FD|Somador|saida[16]~29\) # (!\FD|PC|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|Somador|saida[16]~29\,
	combout => \FD|Somador|saida[17]~30_combout\,
	cout => \FD|Somador|saida[17]~31\);

\FD|if_id_reg|pc_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[17]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(17));

\FD|id_ex_reg|inAdder[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(17));

\FD|ex_mem_reg|inMuxPc[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[17]~60_combout\ = (\FD|id_ex_reg|inAdder\(17) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[16]~59\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[16]~59\)))) # (!\FD|id_ex_reg|inAdder\(17) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[16]~59\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[16]~59\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[17]~61\ = CARRY((\FD|id_ex_reg|inAdder\(17) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[16]~59\)) # (!\FD|id_ex_reg|inAdder\(17) & ((!\FD|ex_mem_reg|inMuxPc[16]~59\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(17),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[16]~59\,
	combout => \FD|ex_mem_reg|inMuxPc[17]~60_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[17]~61\);

\FD|ex_mem_reg|inMuxPc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[17]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(17));

\FD|PC|data_s[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[17]~15_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(17)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[17]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[17]~30_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(17),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[17]~15_combout\);

\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[17]~15_combout\,
	asdata => \FD|if_id_reg|rom_out\(4),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

\FD|Somador|saida[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[18]~32_combout\ = (\FD|PC|data_s\(18) & (\FD|Somador|saida[17]~31\ $ (GND))) # (!\FD|PC|data_s\(18) & (!\FD|Somador|saida[17]~31\ & VCC))
-- \FD|Somador|saida[18]~33\ = CARRY((\FD|PC|data_s\(18) & !\FD|Somador|saida[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(18),
	datad => VCC,
	cin => \FD|Somador|saida[17]~31\,
	combout => \FD|Somador|saida[18]~32_combout\,
	cout => \FD|Somador|saida[18]~33\);

\FD|if_id_reg|pc_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[18]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(18));

\FD|id_ex_reg|inAdder[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(18));

\FD|ex_mem_reg|inMuxPc[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[18]~62_combout\ = ((\FD|id_ex_reg|inAdder\(18) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[17]~61\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[18]~63\ = CARRY((\FD|id_ex_reg|inAdder\(18) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[17]~61\))) # (!\FD|id_ex_reg|inAdder\(18) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[17]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(18),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[17]~61\,
	combout => \FD|ex_mem_reg|inMuxPc[18]~62_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[18]~63\);

\FD|ex_mem_reg|inMuxPc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(18));

\FD|PC|data_s[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[18]~16_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(18)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[18]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[18]~32_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(18),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[18]~16_combout\);

\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[18]~16_combout\,
	asdata => \FD|if_id_reg|rom_out\(16),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

\FD|Somador|saida[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[19]~34_combout\ = (\FD|PC|data_s\(19) & (!\FD|Somador|saida[18]~33\)) # (!\FD|PC|data_s\(19) & ((\FD|Somador|saida[18]~33\) # (GND)))
-- \FD|Somador|saida[19]~35\ = CARRY((!\FD|Somador|saida[18]~33\) # (!\FD|PC|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(19),
	datad => VCC,
	cin => \FD|Somador|saida[18]~33\,
	combout => \FD|Somador|saida[19]~34_combout\,
	cout => \FD|Somador|saida[19]~35\);

\FD|if_id_reg|pc_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(19));

\FD|id_ex_reg|inAdder[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(19));

\FD|ex_mem_reg|inMuxPc[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[19]~64_combout\ = (\FD|id_ex_reg|inAdder\(19) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[18]~63\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[18]~63\)))) # (!\FD|id_ex_reg|inAdder\(19) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[18]~63\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[18]~63\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[19]~65\ = CARRY((\FD|id_ex_reg|inAdder\(19) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[18]~63\)) # (!\FD|id_ex_reg|inAdder\(19) & ((!\FD|ex_mem_reg|inMuxPc[18]~63\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(19),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[18]~63\,
	combout => \FD|ex_mem_reg|inMuxPc[19]~64_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[19]~65\);

\FD|ex_mem_reg|inMuxPc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(19));

\FD|PC|data_s[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[19]~17_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(19)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[19]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[19]~34_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(19),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[19]~17_combout\);

\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[19]~17_combout\,
	asdata => \FD|if_id_reg|rom_out\(5),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

\FD|Somador|saida[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[20]~36_combout\ = (\FD|PC|data_s\(20) & (\FD|Somador|saida[19]~35\ $ (GND))) # (!\FD|PC|data_s\(20) & (!\FD|Somador|saida[19]~35\ & VCC))
-- \FD|Somador|saida[20]~37\ = CARRY((\FD|PC|data_s\(20) & !\FD|Somador|saida[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|Somador|saida[19]~35\,
	combout => \FD|Somador|saida[20]~36_combout\,
	cout => \FD|Somador|saida[20]~37\);

\FD|if_id_reg|pc_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[20]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(20));

\FD|id_ex_reg|inAdder[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(20));

\FD|ex_mem_reg|inMuxPc[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[20]~66_combout\ = ((\FD|id_ex_reg|inAdder\(20) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[19]~65\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[20]~67\ = CARRY((\FD|id_ex_reg|inAdder\(20) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[19]~65\))) # (!\FD|id_ex_reg|inAdder\(20) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[19]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(20),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[19]~65\,
	combout => \FD|ex_mem_reg|inMuxPc[20]~66_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[20]~67\);

\FD|ex_mem_reg|inMuxPc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(20));

\FD|mux_jump|saida[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[20]~1_combout\ = (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(20))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[20]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(20),
	datab => \FD|Somador|saida[20]~36_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[20]~1_combout\);

\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

\FD|Somador|saida[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[21]~38_combout\ = (\FD|PC|data_s\(21) & (!\FD|Somador|saida[20]~37\)) # (!\FD|PC|data_s\(21) & ((\FD|Somador|saida[20]~37\) # (GND)))
-- \FD|Somador|saida[21]~39\ = CARRY((!\FD|Somador|saida[20]~37\) # (!\FD|PC|data_s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(21),
	datad => VCC,
	cin => \FD|Somador|saida[20]~37\,
	combout => \FD|Somador|saida[21]~38_combout\,
	cout => \FD|Somador|saida[21]~39\);

\FD|if_id_reg|pc_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[21]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(21));

\FD|id_ex_reg|inAdder[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(21));

\FD|ex_mem_reg|inMuxPc[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[21]~68_combout\ = (\FD|id_ex_reg|inAdder\(21) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[20]~67\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[20]~67\)))) # (!\FD|id_ex_reg|inAdder\(21) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[20]~67\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[20]~67\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[21]~69\ = CARRY((\FD|id_ex_reg|inAdder\(21) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[20]~67\)) # (!\FD|id_ex_reg|inAdder\(21) & ((!\FD|ex_mem_reg|inMuxPc[20]~67\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(21),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[20]~67\,
	combout => \FD|ex_mem_reg|inMuxPc[21]~68_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[21]~69\);

\FD|ex_mem_reg|inMuxPc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(21));

\FD|PC|data_s[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[21]~18_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(21)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[21]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[21]~38_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(21),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[21]~18_combout\);

\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[21]~18_combout\,
	asdata => \FD|if_id_reg|rom_out\(19),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

\FD|Somador|saida[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[22]~40_combout\ = (\FD|PC|data_s\(22) & (\FD|Somador|saida[21]~39\ $ (GND))) # (!\FD|PC|data_s\(22) & (!\FD|Somador|saida[21]~39\ & VCC))
-- \FD|Somador|saida[22]~41\ = CARRY((\FD|PC|data_s\(22) & !\FD|Somador|saida[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|Somador|saida[21]~39\,
	combout => \FD|Somador|saida[22]~40_combout\,
	cout => \FD|Somador|saida[22]~41\);

\FD|if_id_reg|pc_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[22]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(22));

\FD|id_ex_reg|inAdder[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(22));

\FD|ex_mem_reg|inMuxPc[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[22]~70_combout\ = ((\FD|id_ex_reg|inAdder\(22) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[21]~69\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[22]~71\ = CARRY((\FD|id_ex_reg|inAdder\(22) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[21]~69\))) # (!\FD|id_ex_reg|inAdder\(22) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[21]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(22),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[21]~69\,
	combout => \FD|ex_mem_reg|inMuxPc[22]~70_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[22]~71\);

\FD|ex_mem_reg|inMuxPc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(22));

\FD|mux_jump|saida[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[22]~2_combout\ = (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(22))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[22]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(22),
	datab => \FD|Somador|saida[22]~40_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[22]~2_combout\);

\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[22]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

\FD|Somador|saida[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[23]~42_combout\ = (\FD|PC|data_s\(23) & (!\FD|Somador|saida[22]~41\)) # (!\FD|PC|data_s\(23) & ((\FD|Somador|saida[22]~41\) # (GND)))
-- \FD|Somador|saida[23]~43\ = CARRY((!\FD|Somador|saida[22]~41\) # (!\FD|PC|data_s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(23),
	datad => VCC,
	cin => \FD|Somador|saida[22]~41\,
	combout => \FD|Somador|saida[23]~42_combout\,
	cout => \FD|Somador|saida[23]~43\);

\FD|if_id_reg|pc_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[23]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(23));

\FD|id_ex_reg|inAdder[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(23));

\FD|ex_mem_reg|inMuxPc[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[23]~72_combout\ = (\FD|id_ex_reg|inAdder\(23) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[22]~71\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[22]~71\)))) # (!\FD|id_ex_reg|inAdder\(23) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[22]~71\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[22]~71\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[23]~73\ = CARRY((\FD|id_ex_reg|inAdder\(23) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[22]~71\)) # (!\FD|id_ex_reg|inAdder\(23) & ((!\FD|ex_mem_reg|inMuxPc[22]~71\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(23),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[22]~71\,
	combout => \FD|ex_mem_reg|inMuxPc[23]~72_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[23]~73\);

\FD|ex_mem_reg|inMuxPc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(23));

\FD|PC|data_s[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[23]~19_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(23)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[23]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[23]~42_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(23),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[23]~19_combout\);

\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[23]~19_combout\,
	asdata => \FD|if_id_reg|rom_out\(21),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

\FD|Somador|saida[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[24]~44_combout\ = (\FD|PC|data_s\(24) & (\FD|Somador|saida[23]~43\ $ (GND))) # (!\FD|PC|data_s\(24) & (!\FD|Somador|saida[23]~43\ & VCC))
-- \FD|Somador|saida[24]~45\ = CARRY((\FD|PC|data_s\(24) & !\FD|Somador|saida[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(24),
	datad => VCC,
	cin => \FD|Somador|saida[23]~43\,
	combout => \FD|Somador|saida[24]~44_combout\,
	cout => \FD|Somador|saida[24]~45\);

\FD|if_id_reg|pc_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[24]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(24));

\FD|id_ex_reg|inAdder[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(24));

\FD|ex_mem_reg|inMuxPc[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[24]~74_combout\ = ((\FD|id_ex_reg|inAdder\(24) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[23]~73\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[24]~75\ = CARRY((\FD|id_ex_reg|inAdder\(24) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[23]~73\))) # (!\FD|id_ex_reg|inAdder\(24) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[23]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(24),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[23]~73\,
	combout => \FD|ex_mem_reg|inMuxPc[24]~74_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[24]~75\);

\FD|ex_mem_reg|inMuxPc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(24));

\FD|mux_jump|saida[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[24]~3_combout\ = (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(24))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[24]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(24),
	datab => \FD|Somador|saida[24]~44_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[24]~3_combout\);

\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[24]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

\FD|Somador|saida[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[25]~46_combout\ = (\FD|PC|data_s\(25) & (!\FD|Somador|saida[24]~45\)) # (!\FD|PC|data_s\(25) & ((\FD|Somador|saida[24]~45\) # (GND)))
-- \FD|Somador|saida[25]~47\ = CARRY((!\FD|Somador|saida[24]~45\) # (!\FD|PC|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(25),
	datad => VCC,
	cin => \FD|Somador|saida[24]~45\,
	combout => \FD|Somador|saida[25]~46_combout\,
	cout => \FD|Somador|saida[25]~47\);

\FD|if_id_reg|pc_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[25]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(25));

\FD|id_ex_reg|inAdder[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(25));

\FD|ex_mem_reg|inMuxPc[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[25]~76_combout\ = (\FD|id_ex_reg|inAdder\(25) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[24]~75\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[24]~75\)))) # (!\FD|id_ex_reg|inAdder\(25) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[24]~75\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[24]~75\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[25]~77\ = CARRY((\FD|id_ex_reg|inAdder\(25) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[24]~75\)) # (!\FD|id_ex_reg|inAdder\(25) & ((!\FD|ex_mem_reg|inMuxPc[24]~75\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(25),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[24]~75\,
	combout => \FD|ex_mem_reg|inMuxPc[25]~76_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[25]~77\);

\FD|ex_mem_reg|inMuxPc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(25));

\FD|mux_jump|saida[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[25]~4_combout\ = (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(25))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(25),
	datab => \FD|Somador|saida[25]~46_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[25]~4_combout\);

\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

\FD|Somador|saida[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[26]~48_combout\ = (\FD|PC|data_s\(26) & (\FD|Somador|saida[25]~47\ $ (GND))) # (!\FD|PC|data_s\(26) & (!\FD|Somador|saida[25]~47\ & VCC))
-- \FD|Somador|saida[26]~49\ = CARRY((\FD|PC|data_s\(26) & !\FD|Somador|saida[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|Somador|saida[25]~47\,
	combout => \FD|Somador|saida[26]~48_combout\,
	cout => \FD|Somador|saida[26]~49\);

\FD|if_id_reg|pc_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[26]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(26));

\FD|id_ex_reg|inAdder[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(26));

\FD|ex_mem_reg|inMuxPc[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[26]~78_combout\ = ((\FD|id_ex_reg|inAdder\(26) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[25]~77\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[26]~79\ = CARRY((\FD|id_ex_reg|inAdder\(26) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[25]~77\))) # (!\FD|id_ex_reg|inAdder\(26) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[25]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(26),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[25]~77\,
	combout => \FD|ex_mem_reg|inMuxPc[26]~78_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[26]~79\);

\FD|ex_mem_reg|inMuxPc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[26]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(26));

\FD|PC|data_s[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[26]~20_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(26)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[26]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[26]~48_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(26),
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[26]~20_combout\);

\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|data_s[26]~20_combout\,
	asdata => \FD|if_id_reg|rom_out\(5),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

\FD|Somador|saida[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[27]~50_combout\ = (\FD|PC|data_s\(27) & (!\FD|Somador|saida[26]~49\)) # (!\FD|PC|data_s\(27) & ((\FD|Somador|saida[26]~49\) # (GND)))
-- \FD|Somador|saida[27]~51\ = CARRY((!\FD|Somador|saida[26]~49\) # (!\FD|PC|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(27),
	datad => VCC,
	cin => \FD|Somador|saida[26]~49\,
	combout => \FD|Somador|saida[27]~50_combout\,
	cout => \FD|Somador|saida[27]~51\);

\FD|if_id_reg|pc_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[27]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(27));

\FD|id_ex_reg|inAdder[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(27));

\FD|ex_mem_reg|inMuxPc[27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[27]~80_combout\ = (\FD|id_ex_reg|inAdder\(27) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[26]~79\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[26]~79\)))) # (!\FD|id_ex_reg|inAdder\(27) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[26]~79\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[26]~79\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[27]~81\ = CARRY((\FD|id_ex_reg|inAdder\(27) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[26]~79\)) # (!\FD|id_ex_reg|inAdder\(27) & ((!\FD|ex_mem_reg|inMuxPc[26]~79\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(27),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[26]~79\,
	combout => \FD|ex_mem_reg|inMuxPc[27]~80_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[27]~81\);

\FD|ex_mem_reg|inMuxPc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[27]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(27));

\FD|mux_jump|saida[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[27]~5_combout\ = (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(27))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[27]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(27),
	datab => \FD|Somador|saida[27]~50_combout\,
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[27]~5_combout\);

\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

\FD|Somador|saida[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[28]~52_combout\ = (\FD|PC|data_s\(28) & (\FD|Somador|saida[27]~51\ $ (GND))) # (!\FD|PC|data_s\(28) & (!\FD|Somador|saida[27]~51\ & VCC))
-- \FD|Somador|saida[28]~53\ = CARRY((\FD|PC|data_s\(28) & !\FD|Somador|saida[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(28),
	datad => VCC,
	cin => \FD|Somador|saida[27]~51\,
	combout => \FD|Somador|saida[28]~52_combout\,
	cout => \FD|Somador|saida[28]~53\);

\FD|if_id_reg|pc_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(28));

\FD|id_ex_reg|inAdder[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(28));

\FD|ex_mem_reg|inMuxPc[28]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[28]~82_combout\ = ((\FD|id_ex_reg|inAdder\(28) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[27]~81\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[28]~83\ = CARRY((\FD|id_ex_reg|inAdder\(28) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[27]~81\))) # (!\FD|id_ex_reg|inAdder\(28) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[27]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(28),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[27]~81\,
	combout => \FD|ex_mem_reg|inMuxPc[28]~82_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[28]~83\);

\FD|ex_mem_reg|inMuxPc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[28]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(28));

\FD|mux_jump|saida[28]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[28]~6_combout\ = (\FD|sel_mux_beq~combout\ & ((\UC|pontosDeControle[0]~1_combout\ & (\FD|Somador|saida[28]~52_combout\)) # (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|ex_mem_reg|inMuxPc\(28)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[28]~52_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(28),
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[28]~6_combout\);

\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[28]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

\FD|Somador|saida[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[29]~54_combout\ = (\FD|PC|data_s\(29) & (!\FD|Somador|saida[28]~53\)) # (!\FD|PC|data_s\(29) & ((\FD|Somador|saida[28]~53\) # (GND)))
-- \FD|Somador|saida[29]~55\ = CARRY((!\FD|Somador|saida[28]~53\) # (!\FD|PC|data_s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(29),
	datad => VCC,
	cin => \FD|Somador|saida[28]~53\,
	combout => \FD|Somador|saida[29]~54_combout\,
	cout => \FD|Somador|saida[29]~55\);

\FD|if_id_reg|pc_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[29]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(29));

\FD|id_ex_reg|inAdder[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(29));

\FD|ex_mem_reg|inMuxPc[29]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[29]~84_combout\ = (\FD|id_ex_reg|inAdder\(29) & ((\FD|id_ex_reg|inShifter\(4) & (\FD|ex_mem_reg|inMuxPc[28]~83\ & VCC)) # (!\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[28]~83\)))) # (!\FD|id_ex_reg|inAdder\(29) & 
-- ((\FD|id_ex_reg|inShifter\(4) & (!\FD|ex_mem_reg|inMuxPc[28]~83\)) # (!\FD|id_ex_reg|inShifter\(4) & ((\FD|ex_mem_reg|inMuxPc[28]~83\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[29]~85\ = CARRY((\FD|id_ex_reg|inAdder\(29) & (!\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[28]~83\)) # (!\FD|id_ex_reg|inAdder\(29) & ((!\FD|ex_mem_reg|inMuxPc[28]~83\) # (!\FD|id_ex_reg|inShifter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(29),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[28]~83\,
	combout => \FD|ex_mem_reg|inMuxPc[29]~84_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[29]~85\);

\FD|ex_mem_reg|inMuxPc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[29]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(29));

\FD|mux_jump|saida[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[29]~7_combout\ = (\FD|sel_mux_beq~combout\ & ((\UC|pontosDeControle[0]~1_combout\ & (\FD|Somador|saida[29]~54_combout\)) # (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|ex_mem_reg|inMuxPc\(29)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[29]~54_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(29),
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[29]~7_combout\);

\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

\FD|Somador|saida[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[30]~56_combout\ = (\FD|PC|data_s\(30) & (\FD|Somador|saida[29]~55\ $ (GND))) # (!\FD|PC|data_s\(30) & (!\FD|Somador|saida[29]~55\ & VCC))
-- \FD|Somador|saida[30]~57\ = CARRY((\FD|PC|data_s\(30) & !\FD|Somador|saida[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|Somador|saida[29]~55\,
	combout => \FD|Somador|saida[30]~56_combout\,
	cout => \FD|Somador|saida[30]~57\);

\FD|if_id_reg|pc_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[30]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(30));

\FD|id_ex_reg|inAdder[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(30));

\FD|ex_mem_reg|inMuxPc[30]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[30]~86_combout\ = ((\FD|id_ex_reg|inAdder\(30) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[29]~85\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[30]~87\ = CARRY((\FD|id_ex_reg|inAdder\(30) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[29]~85\))) # (!\FD|id_ex_reg|inAdder\(30) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[29]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(30),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[29]~85\,
	combout => \FD|ex_mem_reg|inMuxPc[30]~86_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[30]~87\);

\FD|ex_mem_reg|inMuxPc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[30]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(30));

\FD|mux_jump|saida[30]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[30]~8_combout\ = (\FD|sel_mux_beq~combout\ & ((\UC|pontosDeControle[0]~1_combout\ & (\FD|Somador|saida[30]~56_combout\)) # (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|ex_mem_reg|inMuxPc\(30)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[30]~56_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(30),
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[30]~8_combout\);

\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[30]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

\FD|Somador|saida[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[31]~58_combout\ = \FD|PC|data_s\(31) $ (\FD|Somador|saida[30]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(31),
	cin => \FD|Somador|saida[30]~57\,
	combout => \FD|Somador|saida[31]~58_combout\);

\FD|if_id_reg|pc_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|Somador|saida[31]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(31));

\FD|id_ex_reg|inAdder[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|if_id_reg|pc_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(31));

\FD|ex_mem_reg|inMuxPc[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[31]~88_combout\ = \FD|id_ex_reg|inAdder\(31) $ (\FD|id_ex_reg|inShifter\(4) $ (\FD|ex_mem_reg|inMuxPc[30]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(31),
	datab => \FD|id_ex_reg|inShifter\(4),
	cin => \FD|ex_mem_reg|inMuxPc[30]~87\,
	combout => \FD|ex_mem_reg|inMuxPc[31]~88_combout\);

\FD|ex_mem_reg|inMuxPc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|ex_mem_reg|inMuxPc[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(31));

\FD|mux_jump|saida[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[31]~9_combout\ = (\FD|sel_mux_beq~combout\ & ((\UC|pontosDeControle[0]~1_combout\ & (\FD|Somador|saida[31]~58_combout\)) # (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|ex_mem_reg|inMuxPc\(31)))))) # (!\FD|sel_mux_beq~combout\ & 
-- (\FD|Somador|saida[31]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[31]~58_combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(31),
	datac => \FD|sel_mux_beq~combout\,
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[31]~9_combout\);

\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|mux_jump|saida[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


