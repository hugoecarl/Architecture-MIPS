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

-- DATE "11/28/2019 19:26:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SignalDetector|saida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SignalDetector|saidaQ~q\ : std_logic;
SIGNAL \SignalDetector|saida~combout\ : std_logic;
SIGNAL \SignalDetector|saida~clkctrl_outclk\ : std_logic;
SIGNAL \FD|ROM|memROM~24_combout\ : std_logic;
SIGNAL \FD|Somador|saida[6]~9\ : std_logic;
SIGNAL \FD|Somador|saida[7]~10_combout\ : std_logic;
SIGNAL \FD|if_id_reg|rom_out[24]~feeder_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|inAdder[7]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~27_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~33_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|inShifter[3]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~12_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~13_combout\ : std_logic;
SIGNAL \FD|Somador|saida[4]~4_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|inAdder[3]~feeder_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~23_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~32_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|inShifter[1]~feeder_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|inAdder[2]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[2]~7\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[3]~9\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[4]~11\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[5]~13\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[6]~15\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[7]~16_combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~3_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~18_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~19_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~17_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~26_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[0]~1_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~25_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|inShifter[0]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[2]~6_combout\ : std_logic;
SIGNAL \FD|PC|data_s[2]~1_combout\ : std_logic;
SIGNAL \FD|Somador|saida[2]~1\ : std_logic;
SIGNAL \FD|Somador|saida[3]~2_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[3]~8_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~0_combout\ : std_logic;
SIGNAL \FD|Somador|saida[3]~3\ : std_logic;
SIGNAL \FD|Somador|saida[4]~5\ : std_logic;
SIGNAL \FD|Somador|saida[5]~6_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[5]~12_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~5_combout\ : std_logic;
SIGNAL \FD|Somador|saida[5]~7\ : std_logic;
SIGNAL \FD|Somador|saida[6]~8_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|inAdder[6]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[6]~14_combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~4_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~15_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~29_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~22_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~31_combout\ : std_logic;
SIGNAL \UC|Equal4~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|execute_muxrtrd_out~q\ : std_logic;
SIGNAL \FD|ROM|memROM~16_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~30_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[3]~3_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~14_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~28_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[0]~0_combout\ : std_logic;
SIGNAL \FD|mem_wb_reg|rd_memwbreg_out[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[2]~2_combout\ : std_logic;
SIGNAL \FD|mem_wb_reg|rd_memwbreg_out[2]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Rd_Rt|saida[1]~1_combout\ : std_logic;
SIGNAL \FD|mem_wb_reg|rd_memwbreg_out[1]~feeder_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|memacess_memwrite_out~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|wb_ucBR_out~q\ : std_logic;
SIGNAL \FD|ex_mem_reg|wb_regwrite_out~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|wb_regwrite_out~q\ : std_logic;
SIGNAL \FD|mem_wb_reg|wb_BR_out~q\ : std_logic;
SIGNAL \FD|BR|bancoReg~41_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~50_combout\ : std_logic;
SIGNAL \UC|Equal3~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|wb_memtoregmux_out~q\ : std_logic;
SIGNAL \FD|ex_mem_reg|wb_memtoregmux_out~q\ : std_logic;
SIGNAL \FD|mem_wb_reg|wb_memtoreg_out~feeder_combout\ : std_logic;
SIGNAL \FD|mem_wb_reg|wb_memtoreg_out~q\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~39_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg~38_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~4_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[1]~feeder_combout\ : std_logic;
SIGNAL \UC|Equal2~1_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|memacess_memwrite_out~q\ : std_logic;
SIGNAL \FD|ex_mem_reg|memacess_memwrite_out~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|memacess_memwrite_out~q\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~6_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~1_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~2_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~3_combout\ : std_logic;
SIGNAL \UC|pontosDeControle[9]~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~5_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[2]~6_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[1]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~0_combout\ : std_logic;
SIGNAL \FD|BR|Equal1~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~56_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[7]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~50_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~48_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[10]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[11]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~46_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[15]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[17]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[57]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[73]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[31]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[73]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~8_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[31]~9_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[31]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~10_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[30]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|saidaB[29]~13_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[67]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[28]~15_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[28]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[27]~17_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[27]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[26]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|saidaA[25]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|saidaB[24]~23_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[24]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|saidaA[23]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[55]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[22]~27_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[21]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[21]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[20]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~30_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[20]~31_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[20]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~32_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|saidaA[19]~33_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~32_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[19]~33_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[19]~16_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[18]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~34_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[18]~35_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~36_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[45]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|saidaA[17]~37_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[17]~18_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[16]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~40_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[15]~41_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~42_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[14]~43_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[14]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[12]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~46_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[12]~47_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~48_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|saidaA[11]~49_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[9]~53_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[9]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~54_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|saidaA[8]~55_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[8]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~56_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[7]~57_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[6]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[5]~61_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~62_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|saidaA[4]~63_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[3]~7_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[3]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|saidaB[2]~1_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~2_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[1]~3_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[1]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|saidaA[1]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaA[0]~5_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~1\ : std_logic;
SIGNAL \FD|ULA|soma[1]~3\ : std_logic;
SIGNAL \FD|ULA|soma[2]~5\ : std_logic;
SIGNAL \FD|ULA|soma[3]~7\ : std_logic;
SIGNAL \FD|ULA|soma[4]~9\ : std_logic;
SIGNAL \FD|ULA|soma[5]~11\ : std_logic;
SIGNAL \FD|ULA|soma[6]~13\ : std_logic;
SIGNAL \FD|ULA|soma[7]~15\ : std_logic;
SIGNAL \FD|ULA|soma[8]~17\ : std_logic;
SIGNAL \FD|ULA|soma[9]~19\ : std_logic;
SIGNAL \FD|ULA|soma[10]~21\ : std_logic;
SIGNAL \FD|ULA|soma[11]~23\ : std_logic;
SIGNAL \FD|ULA|soma[12]~25\ : std_logic;
SIGNAL \FD|ULA|soma[13]~27\ : std_logic;
SIGNAL \FD|ULA|soma[14]~29\ : std_logic;
SIGNAL \FD|ULA|soma[15]~31\ : std_logic;
SIGNAL \FD|ULA|soma[16]~33\ : std_logic;
SIGNAL \FD|ULA|soma[17]~35\ : std_logic;
SIGNAL \FD|ULA|soma[18]~37\ : std_logic;
SIGNAL \FD|ULA|soma[19]~39\ : std_logic;
SIGNAL \FD|ULA|soma[20]~41\ : std_logic;
SIGNAL \FD|ULA|soma[21]~43\ : std_logic;
SIGNAL \FD|ULA|soma[22]~45\ : std_logic;
SIGNAL \FD|ULA|soma[23]~47\ : std_logic;
SIGNAL \FD|ULA|soma[24]~49\ : std_logic;
SIGNAL \FD|ULA|soma[25]~51\ : std_logic;
SIGNAL \FD|ULA|soma[26]~53\ : std_logic;
SIGNAL \FD|ULA|soma[27]~55\ : std_logic;
SIGNAL \FD|ULA|soma[28]~57\ : std_logic;
SIGNAL \FD|ULA|soma[29]~59\ : std_logic;
SIGNAL \FD|ULA|soma[30]~61\ : std_logic;
SIGNAL \FD|ULA|soma[31]~62_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~1\ : std_logic;
SIGNAL \FD|ULA|Add1~3\ : std_logic;
SIGNAL \FD|ULA|Add1~5\ : std_logic;
SIGNAL \FD|ULA|Add1~7\ : std_logic;
SIGNAL \FD|ULA|Add1~9\ : std_logic;
SIGNAL \FD|ULA|Add1~11\ : std_logic;
SIGNAL \FD|ULA|Add1~13\ : std_logic;
SIGNAL \FD|ULA|Add1~15\ : std_logic;
SIGNAL \FD|ULA|Add1~17\ : std_logic;
SIGNAL \FD|ULA|Add1~19\ : std_logic;
SIGNAL \FD|ULA|Add1~21\ : std_logic;
SIGNAL \FD|ULA|Add1~23\ : std_logic;
SIGNAL \FD|ULA|Add1~25\ : std_logic;
SIGNAL \FD|ULA|Add1~27\ : std_logic;
SIGNAL \FD|ULA|Add1~29\ : std_logic;
SIGNAL \FD|ULA|Add1~31\ : std_logic;
SIGNAL \FD|ULA|Add1~33\ : std_logic;
SIGNAL \FD|ULA|Add1~35\ : std_logic;
SIGNAL \FD|ULA|Add1~37\ : std_logic;
SIGNAL \FD|ULA|Add1~39\ : std_logic;
SIGNAL \FD|ULA|Add1~41\ : std_logic;
SIGNAL \FD|ULA|Add1~43\ : std_logic;
SIGNAL \FD|ULA|Add1~45\ : std_logic;
SIGNAL \FD|ULA|Add1~47\ : std_logic;
SIGNAL \FD|ULA|Add1~49\ : std_logic;
SIGNAL \FD|ULA|Add1~51\ : std_logic;
SIGNAL \FD|ULA|Add1~53\ : std_logic;
SIGNAL \FD|ULA|Add1~55\ : std_logic;
SIGNAL \FD|ULA|Add1~57\ : std_logic;
SIGNAL \FD|ULA|Add1~59\ : std_logic;
SIGNAL \FD|ULA|Add1~61\ : std_logic;
SIGNAL \FD|ULA|Add1~62_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux0~3_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[2]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[24]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[25]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[26]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[28]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[29]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[30]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[31]~4_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~10_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[30]~11_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[30]~5_combout\ : std_logic;
SIGNAL \FD|ULA|soma[30]~60_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~60_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux1~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[30]~5_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~12_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[29]~13_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~58_combout\ : std_logic;
SIGNAL \FD|ULA|soma[29]~58_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux2~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[29]~6_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|saidaA[28]~15_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~0_combout\ : std_logic;
SIGNAL \FD|ULA|soma[28]~56_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~56_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux3~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[28]~7_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~16_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[27]~17_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~54_combout\ : std_logic;
SIGNAL \FD|ULA|soma[27]~54_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux4~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[27]~8_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~18_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[26]~19_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[26]~9_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~52_combout\ : std_logic;
SIGNAL \FD|ULA|soma[26]~52_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux5~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[26]~9_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|saidaB[25]~21_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[25]~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[25]~50_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~50_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux6~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[25]~10_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|saidaA[24]~23_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~48_combout\ : std_logic;
SIGNAL \FD|ULA|soma[24]~48_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux7~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[24]~11_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|saidaB[23]~25_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[23]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~46_combout\ : std_logic;
SIGNAL \FD|ULA|soma[23]~46_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux8~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[23]~12_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|saidaB[22]~27_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[22]~13_combout\ : std_logic;
SIGNAL \FD|ULA|soma[22]~44_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~44_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux9~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[22]~13_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|saidaB[21]~29_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~42_combout\ : std_logic;
SIGNAL \FD|ULA|soma[21]~42_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux10~3_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[20]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[21]~14_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~34_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[18]~35_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[18]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|ULA|Mux11~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~40_combout\ : std_logic;
SIGNAL \FD|ULA|soma[20]~40_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux11~2_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[20]~15_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~36_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[17]~37_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|ULA|Mux12~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~38_combout\ : std_logic;
SIGNAL \FD|ULA|soma[19]~38_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux12~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[19]~16_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[16]~39_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|ULA|soma[18]~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~36_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux13~2_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[18]~17_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~42_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[14]~43_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[14]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|ULA|Mux14~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~2_combout\ : std_logic;
SIGNAL \FD|ULA|soma[17]~34_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~34_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux14~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[17]~18_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~38_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[16]~39_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~32_combout\ : std_logic;
SIGNAL \FD|ULA|soma[16]~32_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux15~2_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[16]~19_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~40_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[41]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[15]~41_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[15]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~30_combout\ : std_logic;
SIGNAL \FD|ULA|soma[15]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux16~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[15]~20_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~44_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[13]~45_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|ULA|soma[14]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~28_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux17~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[14]~21_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~44_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[13]~45_combout\ : std_logic;
SIGNAL \FD|ULA|soma[13]~26_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~26_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux18~3_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[13]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[13]~22_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|saidaB[12]~47_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|ULA|soma[12]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~24_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux19~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[12]~23_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|saidaB[11]~49_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[11]~24_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~22_combout\ : std_logic;
SIGNAL \FD|ULA|soma[11]~22_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux20~3_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[11]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[11]~24_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|saidaB[10]~51_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[10]~25_combout\ : std_logic;
SIGNAL \FD|ULA|soma[10]~20_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux21~3_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[10]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[10]~25_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~52_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[9]~53_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|ULA|soma[9]~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~18_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux22~5_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[9]~feeder_combout\ : std_logic;
SIGNAL \FD|mem_wb_reg|mux_0ent[9]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[9]~26_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~54_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[8]~55_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|ULA|Add1~16_combout\ : std_logic;
SIGNAL \FD|ULA|soma[8]~16_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux23~3_combout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[8]~27_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[6]~59_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inregmemwd[6]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[7]~28_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[7]~57_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[7]~28_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~14_combout\ : std_logic;
SIGNAL \FD|ULA|soma[7]~14_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux24~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[6]~29_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~58_combout\ : std_logic;
SIGNAL \FD|BR|saidaA[6]~59_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~12_combout\ : std_logic;
SIGNAL \FD|ULA|soma[6]~12_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux25~3_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[6]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[5]~30_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~60_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[5]~61_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[5]~30_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~10_combout\ : std_logic;
SIGNAL \FD|ULA|soma[5]~10_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux26~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[4]~31_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~62_combout\ : std_logic;
SIGNAL \FD|BR|saidaB[4]~63_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[4]~31_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~8_combout\ : std_logic;
SIGNAL \FD|ULA|soma[4]~8_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux27~3_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[3]~3_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|saidaA[3]~7_combout\ : std_logic;
SIGNAL \FD|ULA|soma[3]~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux28~3_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[3]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[2]~0_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|saidaA[2]~1_combout\ : std_logic;
SIGNAL \FD|ULA|soma[2]~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~0_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~4_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux29~3_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|ramAdd[2]~feeder_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[1]~1_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|saidaB[0]~5_combout\ : std_logic;
SIGNAL \FD|mux_Banco_Ula|saida[0]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~0_combout\ : std_logic;
SIGNAL \FD|ULA|soma[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~3_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~4_combout\ : std_logic;
SIGNAL \FD|ULA|slt[0]~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~7_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~5_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~6_combout\ : std_logic;
SIGNAL \FD|ULA|Mux31~8_combout\ : std_logic;
SIGNAL \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \FD|mux_Ula_Memoria|saida[0]~2_combout\ : std_logic;
SIGNAL \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|saidaA[10]~51_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~20_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~3_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~4_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~1_combout\ : std_logic;
SIGNAL \FD|ULA|Add1~2_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~0_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~8_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~6_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~7_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~5_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~9_combout\ : std_logic;
SIGNAL \FD|ULA|Equal0~10_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|zerout~q\ : std_logic;
SIGNAL \FD|ex_mem_reg|memacess_andbq_out~q\ : std_logic;
SIGNAL \FD|sel_mux_beq~combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[4]~10_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~2_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~20_combout\ : std_logic;
SIGNAL \FD|ROM|memROM~21_combout\ : std_logic;
SIGNAL \UC|Equal2~0_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|execute_muxula_out~q\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[0]~0_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[3]~7_combout\ : std_logic;
SIGNAL \FD|UCULA|ALUctr[3]~8_combout\ : std_logic;
SIGNAL \FD|ULA|soma[1]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~0_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~1_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~2_combout\ : std_logic;
SIGNAL \FD|ULA|Mux30~3_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[0]~2_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[1]~3_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[2]~4_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg~6_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[2]~7_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[3]~8_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[0]~10_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[0]~14_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[4]~9_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[4]~11_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[5]~12_combout\ : std_logic;
SIGNAL \hex7seg|display0|rascSaida7seg[6]~13_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[0]~32_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[0]~33_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[0]~34_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[0]~22_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[1]~23_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg~25_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[2]~24_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[2]~26_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[3]~27_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[4]~35_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[4]~28_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[4]~29_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[5]~30_combout\ : std_logic;
SIGNAL \hex7seg|display1|rascSaida7seg[6]~31_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[0]~32_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[0]~34_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[0]~33_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[0]~22_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[1]~23_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[1]~25_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[2]~24_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[2]~26_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[3]~27_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[4]~35_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[4]~28_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[4]~29_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[5]~30_combout\ : std_logic;
SIGNAL \hex7seg|display2|rascSaida7seg[6]~31_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[0]~33_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[0]~34_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[0]~32_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[0]~22_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[1]~23_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[2]~24_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[1]~25_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[2]~26_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[3]~27_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[4]~35_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[4]~28_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[4]~29_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[5]~30_combout\ : std_logic;
SIGNAL \hex7seg|display3|rascSaida7seg[6]~31_combout\ : std_logic;
SIGNAL \FD|id_ex_reg|inAdder[0]~feeder_combout\ : std_logic;
SIGNAL \FD|ex_mem_reg|inMuxPc[0]~feeder_combout\ : std_logic;
SIGNAL \FD|mux_jump|saida[0]~0_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \hex7seg|display4|rascSaida7seg~2_combout\ : std_logic;
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
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|mem_wb_reg|rd_memwbreg_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|id_ex_reg|inShifter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ex_mem_reg|inMuxPc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|id_ex_reg|inMux\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|id_ex_reg|inAlu\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|if_id_reg|rom_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|id_ex_reg|execute_ulaop_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FD|id_ex_reg|rtout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|BR|bancoReg_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|mem_wb_reg|mux_0ent\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|id_ex_reg|inAdder\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ex_mem_reg|inregmemwd\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ex_mem_reg|ramAdd\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ex_mem_reg|in_memwb_rd\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FD|if_id_reg|pc_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \hex7seg|display4|ALT_INV_rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \hex7seg|display4|ALT_INV_rascSaida7seg[1]~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~4_combout\ & \FD|mux_Ula_Memoria|saida[30]~5_combout\ & \FD|mux_Ula_Memoria|saida[29]~6_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~7_combout\ & \FD|mux_Ula_Memoria|saida[27]~8_combout\ & \FD|mux_Ula_Memoria|saida[26]~9_combout\ & \FD|mux_Ula_Memoria|saida[25]~10_combout\ & \FD|mux_Ula_Memoria|saida[24]~11_combout\ & 
\FD|mux_Ula_Memoria|saida[23]~12_combout\ & \FD|mux_Ula_Memoria|saida[22]~13_combout\ & \FD|mux_Ula_Memoria|saida[21]~14_combout\ & \FD|mux_Ula_Memoria|saida[20]~15_combout\ & \FD|mux_Ula_Memoria|saida[19]~16_combout\ & 
\FD|mux_Ula_Memoria|saida[18]~17_combout\ & \FD|mux_Ula_Memoria|saida[17]~18_combout\ & \FD|mux_Ula_Memoria|saida[16]~19_combout\ & \FD|mux_Ula_Memoria|saida[15]~20_combout\ & \FD|mux_Ula_Memoria|saida[14]~21_combout\ & 
\FD|mux_Ula_Memoria|saida[13]~22_combout\ & \FD|mux_Ula_Memoria|saida[12]~23_combout\ & \FD|mux_Ula_Memoria|saida[11]~24_combout\ & \FD|mux_Ula_Memoria|saida[10]~25_combout\ & \FD|mux_Ula_Memoria|saida[9]~26_combout\ & 
\FD|mux_Ula_Memoria|saida[8]~27_combout\ & \FD|mux_Ula_Memoria|saida[7]~28_combout\ & \FD|mux_Ula_Memoria|saida[6]~29_combout\ & \FD|mux_Ula_Memoria|saida[5]~30_combout\ & \FD|mux_Ula_Memoria|saida[4]~31_combout\ & \FD|mux_Ula_Memoria|saida[3]~3_combout\
& \FD|mux_Ula_Memoria|saida[2]~0_combout\ & \FD|mux_Ula_Memoria|saida[1]~1_combout\ & \FD|mux_Ula_Memoria|saida[0]~2_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~30_combout\ & \~GND~combout\ & \FD|ROM|memROM~29_combout\ & \FD|ROM|memROM~28_combout\);

\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\ <= \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|mux_Ula_Memoria|saida[31]~4_combout\ & \FD|mux_Ula_Memoria|saida[30]~5_combout\ & \FD|mux_Ula_Memoria|saida[29]~6_combout\ & 
\FD|mux_Ula_Memoria|saida[28]~7_combout\ & \FD|mux_Ula_Memoria|saida[27]~8_combout\ & \FD|mux_Ula_Memoria|saida[26]~9_combout\ & \FD|mux_Ula_Memoria|saida[25]~10_combout\ & \FD|mux_Ula_Memoria|saida[24]~11_combout\ & 
\FD|mux_Ula_Memoria|saida[23]~12_combout\ & \FD|mux_Ula_Memoria|saida[22]~13_combout\ & \FD|mux_Ula_Memoria|saida[21]~14_combout\ & \FD|mux_Ula_Memoria|saida[20]~15_combout\ & \FD|mux_Ula_Memoria|saida[19]~16_combout\ & 
\FD|mux_Ula_Memoria|saida[18]~17_combout\ & \FD|mux_Ula_Memoria|saida[17]~18_combout\ & \FD|mux_Ula_Memoria|saida[16]~19_combout\ & \FD|mux_Ula_Memoria|saida[15]~20_combout\ & \FD|mux_Ula_Memoria|saida[14]~21_combout\ & 
\FD|mux_Ula_Memoria|saida[13]~22_combout\ & \FD|mux_Ula_Memoria|saida[12]~23_combout\ & \FD|mux_Ula_Memoria|saida[11]~24_combout\ & \FD|mux_Ula_Memoria|saida[10]~25_combout\ & \FD|mux_Ula_Memoria|saida[9]~26_combout\ & 
\FD|mux_Ula_Memoria|saida[8]~27_combout\ & \FD|mux_Ula_Memoria|saida[7]~28_combout\ & \FD|mux_Ula_Memoria|saida[6]~29_combout\ & \FD|mux_Ula_Memoria|saida[5]~30_combout\ & \FD|mux_Ula_Memoria|saida[4]~31_combout\ & \FD|mux_Ula_Memoria|saida[3]~3_combout\
& \FD|mux_Ula_Memoria|saida[2]~0_combout\ & \FD|mux_Ula_Memoria|saida[1]~1_combout\ & \FD|mux_Ula_Memoria|saida[0]~2_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(3) & \FD|mem_wb_reg|rd_memwbreg_out\(2) & \FD|mem_wb_reg|rd_memwbreg_out\(1) & 
\FD|mem_wb_reg|rd_memwbreg_out\(0));

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|ROM|memROM~29_combout\ & \~GND~combout\ & \~GND~combout\ & \FD|ROM|memROM~31_combout\);

\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\ <= \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \FD|ex_mem_reg|inregmemwd\(31) & \FD|ex_mem_reg|inregmemwd\(30) & \FD|ex_mem_reg|inregmemwd\(29) & \FD|ex_mem_reg|inregmemwd\(28) & 
\FD|ex_mem_reg|inregmemwd\(27) & \FD|ex_mem_reg|inregmemwd\(26) & \FD|ex_mem_reg|inregmemwd\(25) & \FD|ex_mem_reg|inregmemwd\(24) & \FD|ex_mem_reg|inregmemwd\(23) & \FD|ex_mem_reg|inregmemwd\(22) & \FD|ex_mem_reg|inregmemwd\(3) & 
\FD|ex_mem_reg|inregmemwd\(2) & \FD|ex_mem_reg|inregmemwd\(1) & \FD|ex_mem_reg|inregmemwd\(0));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|ex_mem_reg|ramAdd\(7) & \FD|ex_mem_reg|ramAdd\(6) & \FD|ex_mem_reg|ramAdd\(5) & \FD|ex_mem_reg|ramAdd\(4) & \FD|ex_mem_reg|ramAdd\(3) & \FD|ex_mem_reg|ramAdd\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\FD|ex_mem_reg|inregmemwd\(21) & \FD|ex_mem_reg|inregmemwd\(20) & \FD|ex_mem_reg|inregmemwd\(19) & \FD|ex_mem_reg|inregmemwd\(18) & \FD|ex_mem_reg|inregmemwd\(17) & 
\FD|ex_mem_reg|inregmemwd\(16) & \FD|ex_mem_reg|inregmemwd\(15) & \FD|ex_mem_reg|inregmemwd\(14) & \FD|ex_mem_reg|inregmemwd\(13) & \FD|ex_mem_reg|inregmemwd\(12) & \FD|ex_mem_reg|inregmemwd\(11) & \FD|ex_mem_reg|inregmemwd\(10) & 
\FD|ex_mem_reg|inregmemwd\(9) & \FD|ex_mem_reg|inregmemwd\(8) & \FD|ex_mem_reg|inregmemwd\(7) & \FD|ex_mem_reg|inregmemwd\(6) & \FD|ex_mem_reg|inregmemwd\(5) & \FD|ex_mem_reg|inregmemwd\(4));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\FD|ex_mem_reg|ramAdd\(7) & \FD|ex_mem_reg|ramAdd\(6) & \FD|ex_mem_reg|ramAdd\(5) & \FD|ex_mem_reg|ramAdd\(4) & \FD|ex_mem_reg|ramAdd\(3) & \FD|ex_mem_reg|ramAdd\(2));

\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(4);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(5);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(6);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(7);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(8);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(9);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(10);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(11);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(12);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(13);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(14);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(15);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(16);
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\ <= \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(17);

\SignalDetector|saida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SignalDetector|saida~combout\);
\hex7seg|display4|ALT_INV_rascSaida7seg[4]~4_combout\ <= NOT \hex7seg|display4|rascSaida7seg[4]~4_combout\;
\hex7seg|display4|ALT_INV_rascSaida7seg[1]~1_combout\ <= NOT \hex7seg|display4|rascSaida7seg[1]~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[1]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[2]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[4]~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[5]~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display0|rascSaida7seg[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[0]~22_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[1]~23_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[2]~26_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[3]~27_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[4]~29_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[5]~30_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display1|rascSaida7seg[6]~31_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[0]~22_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[1]~23_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[2]~26_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[3]~27_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[4]~29_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[5]~30_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display2|rascSaida7seg[6]~31_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[0]~22_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[1]~23_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[2]~26_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[3]~27_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[4]~29_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[5]~30_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display3|rascSaida7seg[6]~31_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|ALT_INV_rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|ALT_INV_rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7seg|display5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: FF_X115_Y40_N10
\SignalDetector|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SignalDetector|saidaQ~q\);

-- Location: LCCOMB_X114_Y40_N8
\SignalDetector|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \SignalDetector|saida~combout\ = LCELL((!\KEY[0]~input_o\ & \SignalDetector|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \SignalDetector|saidaQ~q\,
	combout => \SignalDetector|saida~combout\);

-- Location: CLKCTRL_G7
\SignalDetector|saida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SignalDetector|saida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SignalDetector|saida~clkctrl_outclk\);

-- Location: LCCOMB_X69_Y32_N24
\FD|ROM|memROM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~24_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(6) & (!\FD|PC|data_s\(4) & !\FD|PC|data_s\(2)))) # (!\FD|PC|data_s\(3) & (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) & \FD|PC|data_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~24_combout\);

-- Location: LCCOMB_X70_Y32_N28
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

-- Location: LCCOMB_X70_Y32_N30
\FD|Somador|saida[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[7]~10_combout\ = \FD|PC|data_s\(7) $ (\FD|Somador|saida[6]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	cin => \FD|Somador|saida[6]~9\,
	combout => \FD|Somador|saida[7]~10_combout\);

-- Location: LCCOMB_X66_Y32_N22
\FD|if_id_reg|rom_out[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|if_id_reg|rom_out[24]~feeder_combout\ = \FD|ROM|memROM~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~29_combout\,
	combout => \FD|if_id_reg|rom_out[24]~feeder_combout\);

-- Location: FF_X66_Y32_N23
\FD|if_id_reg|rom_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|if_id_reg|rom_out[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(24));

-- Location: FF_X66_Y33_N17
\FD|id_ex_reg|rtout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|if_id_reg|rom_out\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|rtout\(1));

-- Location: FF_X70_Y32_N31
\FD|if_id_reg|pc_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(7));

-- Location: LCCOMB_X70_Y33_N18
\FD|id_ex_reg|inAdder[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|inAdder[7]~feeder_combout\ = \FD|if_id_reg|pc_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|if_id_reg|pc_out\(7),
	combout => \FD|id_ex_reg|inAdder[7]~feeder_combout\);

-- Location: FF_X70_Y33_N19
\FD|id_ex_reg|inAdder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|inAdder[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(7));

-- Location: FF_X66_Y32_N27
\FD|id_ex_reg|inShifter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|if_id_reg|rom_out\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(4));

-- Location: FF_X70_Y32_N27
\FD|if_id_reg|pc_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(5));

-- Location: FF_X70_Y33_N31
\FD|id_ex_reg|inAdder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|if_id_reg|pc_out\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(5));

-- Location: LCCOMB_X70_Y32_N12
\FD|ROM|memROM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~27_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # ((!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(5)) # (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(4),
	combout => \FD|ROM|memROM~27_combout\);

-- Location: LCCOMB_X70_Y32_N0
\FD|ROM|memROM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~33_combout\ = (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & !\FD|ROM|memROM~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|ROM|memROM~27_combout\,
	combout => \FD|ROM|memROM~33_combout\);

-- Location: FF_X70_Y32_N1
\FD|if_id_reg|rom_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(3));

-- Location: LCCOMB_X70_Y33_N16
\FD|id_ex_reg|inShifter[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|inShifter[3]~feeder_combout\ = \FD|if_id_reg|rom_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|if_id_reg|rom_out\(3),
	combout => \FD|id_ex_reg|inShifter[3]~feeder_combout\);

-- Location: FF_X70_Y33_N17
\FD|id_ex_reg|inShifter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|inShifter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(3));

-- Location: LCCOMB_X69_Y32_N14
\FD|ROM|memROM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~12_combout\ = (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~12_combout\);

-- Location: LCCOMB_X70_Y32_N4
\FD|ROM|memROM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~13_combout\ = (\FD|ROM|memROM~12_combout\ & (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(3) & \FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~12_combout\,
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(4),
	combout => \FD|ROM|memROM~13_combout\);

-- Location: FF_X70_Y32_N5
\FD|if_id_reg|rom_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(2));

-- Location: FF_X70_Y33_N1
\FD|id_ex_reg|inShifter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|if_id_reg|rom_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(2));

-- Location: LCCOMB_X70_Y32_N24
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

-- Location: FF_X70_Y32_N25
\FD|if_id_reg|pc_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(4));

-- Location: FF_X70_Y33_N25
\FD|id_ex_reg|inAdder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|if_id_reg|pc_out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(4));

-- Location: FF_X70_Y32_N23
\FD|if_id_reg|pc_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(3));

-- Location: LCCOMB_X70_Y33_N26
\FD|id_ex_reg|inAdder[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|inAdder[3]~feeder_combout\ = \FD|if_id_reg|pc_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|if_id_reg|pc_out\(3),
	combout => \FD|id_ex_reg|inAdder[3]~feeder_combout\);

-- Location: FF_X70_Y33_N27
\FD|id_ex_reg|inAdder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|inAdder[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(3));

-- Location: LCCOMB_X70_Y32_N8
\FD|ROM|memROM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~23_combout\ = (\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2) & (!\FD|PC|data_s\(5) & !\FD|PC|data_s\(4))) # (!\FD|PC|data_s\(2) & ((\FD|PC|data_s\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(2),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(4),
	combout => \FD|ROM|memROM~23_combout\);

-- Location: LCCOMB_X69_Y32_N26
\FD|ROM|memROM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~32_combout\ = (!\FD|PC|data_s\(7) & (\FD|ROM|memROM~23_combout\ & !\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(7),
	datac => \FD|ROM|memROM~23_combout\,
	datad => \FD|PC|data_s\(6),
	combout => \FD|ROM|memROM~32_combout\);

-- Location: FF_X69_Y32_N27
\FD|if_id_reg|rom_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(1));

-- Location: LCCOMB_X70_Y33_N2
\FD|id_ex_reg|inShifter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|inShifter[1]~feeder_combout\ = \FD|if_id_reg|rom_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|if_id_reg|rom_out\(1),
	combout => \FD|id_ex_reg|inShifter[1]~feeder_combout\);

-- Location: FF_X70_Y33_N3
\FD|id_ex_reg|inShifter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|inShifter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(1));

-- Location: LCCOMB_X70_Y32_N20
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

-- Location: FF_X70_Y32_N21
\FD|if_id_reg|pc_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(2));

-- Location: LCCOMB_X70_Y33_N28
\FD|id_ex_reg|inAdder[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|inAdder[2]~feeder_combout\ = \FD|if_id_reg|pc_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|if_id_reg|pc_out\(2),
	combout => \FD|id_ex_reg|inAdder[2]~feeder_combout\);

-- Location: FF_X70_Y33_N29
\FD|id_ex_reg|inAdder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|inAdder[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(2));

-- Location: LCCOMB_X70_Y33_N4
\FD|ex_mem_reg|inMuxPc[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[2]~6_combout\ = (\FD|id_ex_reg|inShifter\(0) & (\FD|id_ex_reg|inAdder\(2) $ (VCC))) # (!\FD|id_ex_reg|inShifter\(0) & (\FD|id_ex_reg|inAdder\(2) & VCC))
-- \FD|ex_mem_reg|inMuxPc[2]~7\ = CARRY((\FD|id_ex_reg|inShifter\(0) & \FD|id_ex_reg|inAdder\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(0),
	datab => \FD|id_ex_reg|inAdder\(2),
	datad => VCC,
	combout => \FD|ex_mem_reg|inMuxPc[2]~6_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[2]~7\);

-- Location: LCCOMB_X70_Y33_N6
\FD|ex_mem_reg|inMuxPc[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[3]~8_combout\ = (\FD|id_ex_reg|inAdder\(3) & ((\FD|id_ex_reg|inShifter\(1) & (\FD|ex_mem_reg|inMuxPc[2]~7\ & VCC)) # (!\FD|id_ex_reg|inShifter\(1) & (!\FD|ex_mem_reg|inMuxPc[2]~7\)))) # (!\FD|id_ex_reg|inAdder\(3) & 
-- ((\FD|id_ex_reg|inShifter\(1) & (!\FD|ex_mem_reg|inMuxPc[2]~7\)) # (!\FD|id_ex_reg|inShifter\(1) & ((\FD|ex_mem_reg|inMuxPc[2]~7\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[3]~9\ = CARRY((\FD|id_ex_reg|inAdder\(3) & (!\FD|id_ex_reg|inShifter\(1) & !\FD|ex_mem_reg|inMuxPc[2]~7\)) # (!\FD|id_ex_reg|inAdder\(3) & ((!\FD|ex_mem_reg|inMuxPc[2]~7\) # (!\FD|id_ex_reg|inShifter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(3),
	datab => \FD|id_ex_reg|inShifter\(1),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[2]~7\,
	combout => \FD|ex_mem_reg|inMuxPc[3]~8_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[3]~9\);

-- Location: LCCOMB_X70_Y33_N8
\FD|ex_mem_reg|inMuxPc[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[4]~10_combout\ = ((\FD|id_ex_reg|inShifter\(2) $ (\FD|id_ex_reg|inAdder\(4) $ (!\FD|ex_mem_reg|inMuxPc[3]~9\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[4]~11\ = CARRY((\FD|id_ex_reg|inShifter\(2) & ((\FD|id_ex_reg|inAdder\(4)) # (!\FD|ex_mem_reg|inMuxPc[3]~9\))) # (!\FD|id_ex_reg|inShifter\(2) & (\FD|id_ex_reg|inAdder\(4) & !\FD|ex_mem_reg|inMuxPc[3]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(2),
	datab => \FD|id_ex_reg|inAdder\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[3]~9\,
	combout => \FD|ex_mem_reg|inMuxPc[4]~10_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[4]~11\);

-- Location: LCCOMB_X70_Y33_N10
\FD|ex_mem_reg|inMuxPc[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[5]~12_combout\ = (\FD|id_ex_reg|inAdder\(5) & ((\FD|id_ex_reg|inShifter\(3) & (\FD|ex_mem_reg|inMuxPc[4]~11\ & VCC)) # (!\FD|id_ex_reg|inShifter\(3) & (!\FD|ex_mem_reg|inMuxPc[4]~11\)))) # (!\FD|id_ex_reg|inAdder\(5) & 
-- ((\FD|id_ex_reg|inShifter\(3) & (!\FD|ex_mem_reg|inMuxPc[4]~11\)) # (!\FD|id_ex_reg|inShifter\(3) & ((\FD|ex_mem_reg|inMuxPc[4]~11\) # (GND)))))
-- \FD|ex_mem_reg|inMuxPc[5]~13\ = CARRY((\FD|id_ex_reg|inAdder\(5) & (!\FD|id_ex_reg|inShifter\(3) & !\FD|ex_mem_reg|inMuxPc[4]~11\)) # (!\FD|id_ex_reg|inAdder\(5) & ((!\FD|ex_mem_reg|inMuxPc[4]~11\) # (!\FD|id_ex_reg|inShifter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(5),
	datab => \FD|id_ex_reg|inShifter\(3),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[4]~11\,
	combout => \FD|ex_mem_reg|inMuxPc[5]~12_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[5]~13\);

-- Location: LCCOMB_X70_Y33_N12
\FD|ex_mem_reg|inMuxPc[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[6]~14_combout\ = ((\FD|id_ex_reg|inAdder\(6) $ (\FD|id_ex_reg|inShifter\(4) $ (!\FD|ex_mem_reg|inMuxPc[5]~13\)))) # (GND)
-- \FD|ex_mem_reg|inMuxPc[6]~15\ = CARRY((\FD|id_ex_reg|inAdder\(6) & ((\FD|id_ex_reg|inShifter\(4)) # (!\FD|ex_mem_reg|inMuxPc[5]~13\))) # (!\FD|id_ex_reg|inAdder\(6) & (\FD|id_ex_reg|inShifter\(4) & !\FD|ex_mem_reg|inMuxPc[5]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAdder\(6),
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => VCC,
	cin => \FD|ex_mem_reg|inMuxPc[5]~13\,
	combout => \FD|ex_mem_reg|inMuxPc[6]~14_combout\,
	cout => \FD|ex_mem_reg|inMuxPc[6]~15\);

-- Location: LCCOMB_X70_Y33_N14
\FD|ex_mem_reg|inMuxPc[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[7]~16_combout\ = \FD|id_ex_reg|rtout\(1) $ (\FD|ex_mem_reg|inMuxPc[6]~15\ $ (\FD|id_ex_reg|inAdder\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|rtout\(1),
	datad => \FD|id_ex_reg|inAdder\(7),
	cin => \FD|ex_mem_reg|inMuxPc[6]~15\,
	combout => \FD|ex_mem_reg|inMuxPc[7]~16_combout\);

-- Location: FF_X70_Y33_N15
\FD|ex_mem_reg|inMuxPc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inMuxPc[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(7));

-- Location: LCCOMB_X69_Y32_N4
\FD|PC|data_s[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~3_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(7)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[7]~10_combout\,
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|ex_mem_reg|inMuxPc\(7),
	combout => \FD|PC|data_s[7]~3_combout\);

-- Location: LCCOMB_X68_Y32_N2
\FD|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~18_combout\ = (\FD|PC|data_s\(4)) # ((\FD|PC|data_s\(3) & ((\FD|PC|data_s\(2)) # (!\FD|PC|data_s\(6)))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~18_combout\);

-- Location: LCCOMB_X68_Y32_N8
\FD|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~19_combout\ = (!\FD|PC|data_s\(7) & (!\FD|ROM|memROM~18_combout\ & !\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datab => \FD|ROM|memROM~18_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~19_combout\);

-- Location: FF_X68_Y32_N9
\FD|if_id_reg|rom_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(27));

-- Location: LCCOMB_X69_Y32_N18
\FD|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~17_combout\ = (!\FD|PC|data_s\(3) & (\FD|ROM|memROM~12_combout\ & (!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|ROM|memROM~12_combout\,
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~17_combout\);

-- Location: LCCOMB_X68_Y32_N18
\FD|ROM|memROM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~26_combout\ = (\FD|ROM|memROM~17_combout\ & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~17_combout\,
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~26_combout\);

-- Location: FF_X68_Y32_N19
\FD|if_id_reg|rom_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(29));

-- Location: FF_X69_Y32_N19
\FD|if_id_reg|rom_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(26));

-- Location: LCCOMB_X69_Y32_N6
\UC|pontosDeControle[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[0]~1_combout\ = (\FD|if_id_reg|rom_out\(27) & (!\FD|if_id_reg|rom_out\(29) & (!\FD|if_id_reg|rom_out\(28) & !\FD|if_id_reg|rom_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(27),
	datab => \FD|if_id_reg|rom_out\(29),
	datac => \FD|if_id_reg|rom_out\(28),
	datad => \FD|if_id_reg|rom_out\(26),
	combout => \UC|pontosDeControle[0]~1_combout\);

-- Location: FF_X69_Y32_N5
\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[7]~3_combout\,
	asdata => \FD|if_id_reg|rom_out\(24),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

-- Location: LCCOMB_X69_Y32_N10
\FD|ROM|memROM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~25_combout\ = (\FD|ROM|memROM~24_combout\ & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~24_combout\,
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~25_combout\);

-- Location: FF_X69_Y32_N11
\FD|if_id_reg|rom_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(0));

-- Location: LCCOMB_X69_Y33_N16
\FD|id_ex_reg|inShifter[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|inShifter[0]~feeder_combout\ = \FD|if_id_reg|rom_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|if_id_reg|rom_out\(0),
	combout => \FD|id_ex_reg|inShifter[0]~feeder_combout\);

-- Location: FF_X69_Y33_N17
\FD|id_ex_reg|inShifter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|inShifter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inShifter\(0));

-- Location: FF_X70_Y33_N5
\FD|ex_mem_reg|inMuxPc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inMuxPc[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(2));

-- Location: LCCOMB_X69_Y32_N16
\FD|PC|data_s[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[2]~1_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(2))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(2),
	datab => \FD|Somador|saida[2]~0_combout\,
	datad => \FD|sel_mux_beq~combout\,
	combout => \FD|PC|data_s[2]~1_combout\);

-- Location: FF_X69_Y32_N17
\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[2]~1_combout\,
	asdata => \FD|if_id_reg|rom_out\(0),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

-- Location: LCCOMB_X70_Y32_N22
\FD|Somador|saida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[3]~2_combout\ = (\FD|PC|data_s\(3) & (!\FD|Somador|saida[2]~1\)) # (!\FD|PC|data_s\(3) & ((\FD|Somador|saida[2]~1\) # (GND)))
-- \FD|Somador|saida[3]~3\ = CARRY((!\FD|Somador|saida[2]~1\) # (!\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(3),
	datad => VCC,
	cin => \FD|Somador|saida[2]~1\,
	combout => \FD|Somador|saida[3]~2_combout\,
	cout => \FD|Somador|saida[3]~3\);

-- Location: FF_X70_Y33_N7
\FD|ex_mem_reg|inMuxPc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inMuxPc[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(3));

-- Location: LCCOMB_X69_Y32_N0
\FD|PC|data_s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[3]~0_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(3)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[3]~2_combout\,
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|ex_mem_reg|inMuxPc\(3),
	combout => \FD|PC|data_s[3]~0_combout\);

-- Location: FF_X69_Y32_N1
\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[3]~0_combout\,
	asdata => \FD|if_id_reg|rom_out\(1),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

-- Location: LCCOMB_X70_Y32_N26
\FD|Somador|saida[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Somador|saida[5]~6_combout\ = (\FD|PC|data_s\(5) & (!\FD|Somador|saida[4]~5\)) # (!\FD|PC|data_s\(5) & ((\FD|Somador|saida[4]~5\) # (GND)))
-- \FD|Somador|saida[5]~7\ = CARRY((!\FD|Somador|saida[4]~5\) # (!\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|Somador|saida[4]~5\,
	combout => \FD|Somador|saida[5]~6_combout\,
	cout => \FD|Somador|saida[5]~7\);

-- Location: FF_X70_Y33_N11
\FD|ex_mem_reg|inMuxPc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inMuxPc[5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(5));

-- Location: LCCOMB_X70_Y32_N16
\FD|PC|data_s[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~5_combout\ = (\FD|sel_mux_beq~combout\ & ((\FD|ex_mem_reg|inMuxPc\(5)))) # (!\FD|sel_mux_beq~combout\ & (\FD|Somador|saida[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Somador|saida[5]~6_combout\,
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|ex_mem_reg|inMuxPc\(5),
	combout => \FD|PC|data_s[5]~5_combout\);

-- Location: FF_X70_Y32_N17
\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[5]~5_combout\,
	asdata => \FD|if_id_reg|rom_out\(3),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

-- Location: FF_X70_Y32_N29
\FD|if_id_reg|pc_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|Somador|saida[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(6));

-- Location: LCCOMB_X70_Y33_N20
\FD|id_ex_reg|inAdder[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|inAdder[6]~feeder_combout\ = \FD|if_id_reg|pc_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|if_id_reg|pc_out\(6),
	combout => \FD|id_ex_reg|inAdder[6]~feeder_combout\);

-- Location: FF_X70_Y33_N21
\FD|id_ex_reg|inAdder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|inAdder[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(6));

-- Location: FF_X70_Y33_N13
\FD|ex_mem_reg|inMuxPc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inMuxPc[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(6));

-- Location: LCCOMB_X69_Y32_N2
\FD|PC|data_s[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~4_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(6))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(6),
	datab => \FD|sel_mux_beq~combout\,
	datad => \FD|Somador|saida[6]~8_combout\,
	combout => \FD|PC|data_s[6]~4_combout\);

-- Location: FF_X69_Y32_N3
\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[6]~4_combout\,
	asdata => \FD|if_id_reg|rom_out\(28),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

-- Location: LCCOMB_X68_Y32_N30
\FD|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~15_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((\FD|PC|data_s\(4)) # (\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(4) & ((!\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~15_combout\);

-- Location: LCCOMB_X68_Y32_N6
\FD|ROM|memROM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~29_combout\ = (!\FD|PC|data_s\(6) & (\FD|ROM|memROM~15_combout\ & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(6),
	datac => \FD|ROM|memROM~15_combout\,
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~29_combout\);

-- Location: FF_X68_Y32_N7
\FD|BR|bancoReg_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(8));

-- Location: LCCOMB_X68_Y32_N20
\FD|ROM|memROM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~22_combout\ = (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) $ (((\FD|PC|data_s\(2) & \FD|PC|data_s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~22_combout\);

-- Location: LCCOMB_X68_Y32_N0
\FD|ROM|memROM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~31_combout\ = (\FD|ROM|memROM~22_combout\ & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~22_combout\,
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~31_combout\);

-- Location: FF_X68_Y32_N1
\FD|BR|bancoReg_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(2));

-- Location: LCCOMB_X68_Y32_N14
\UC|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal4~0_combout\ = (!\FD|if_id_reg|rom_out\(28) & (!\FD|if_id_reg|rom_out\(29) & (!\FD|if_id_reg|rom_out\(26) & !\FD|if_id_reg|rom_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(28),
	datab => \FD|if_id_reg|rom_out\(29),
	datac => \FD|if_id_reg|rom_out\(26),
	datad => \FD|if_id_reg|rom_out\(27),
	combout => \UC|Equal4~0_combout\);

-- Location: FF_X68_Y32_N15
\FD|id_ex_reg|execute_muxrtrd_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \UC|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|execute_muxrtrd_out~q\);

-- Location: LCCOMB_X68_Y32_N24
\FD|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~16_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (((!\FD|PC|data_s\(4) & !\FD|PC|data_s\(5)))))) # (!\FD|PC|data_s\(3) & (((\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~16_combout\);

-- Location: LCCOMB_X68_Y32_N22
\FD|ROM|memROM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~30_combout\ = (!\FD|ROM|memROM~16_combout\ & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ROM|memROM~16_combout\,
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~30_combout\);

-- Location: FF_X68_Y32_N23
\FD|if_id_reg|rom_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(19));

-- Location: FF_X67_Y34_N1
\FD|id_ex_reg|rtout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|if_id_reg|rom_out\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|rtout\(3));

-- Location: LCCOMB_X67_Y34_N30
\FD|mux_Rd_Rt|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[3]~3_combout\ = (\FD|id_ex_reg|execute_muxrtrd_out~q\ & (\FD|id_ex_reg|rtout\(1))) # (!\FD|id_ex_reg|execute_muxrtrd_out~q\ & ((\FD|id_ex_reg|rtout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxrtrd_out~q\,
	datac => \FD|id_ex_reg|rtout\(1),
	datad => \FD|id_ex_reg|rtout\(3),
	combout => \FD|mux_Rd_Rt|saida[3]~3_combout\);

-- Location: FF_X67_Y34_N31
\FD|ex_mem_reg|in_memwb_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|in_memwb_rd\(3));

-- Location: FF_X67_Y34_N15
\FD|mem_wb_reg|rd_memwbreg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|in_memwb_rd\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|rd_memwbreg_out\(3));

-- Location: FF_X68_Y32_N29
\FD|BR|bancoReg_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(7));

-- Location: LCCOMB_X68_Y32_N12
\FD|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~14_combout\ = (\FD|PC|data_s\(2)) # ((\FD|PC|data_s\(4) & ((!\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(3)))) # (!\FD|PC|data_s\(4) & ((\FD|PC|data_s\(3)) # (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(2),
	datac => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~14_combout\);

-- Location: LCCOMB_X68_Y32_N4
\FD|ROM|memROM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~28_combout\ = (!\FD|ROM|memROM~14_combout\ & (!\FD|PC|data_s\(6) & !\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ROM|memROM~14_combout\,
	datac => \FD|PC|data_s\(6),
	datad => \FD|PC|data_s\(7),
	combout => \FD|ROM|memROM~28_combout\);

-- Location: FF_X68_Y32_N5
\FD|if_id_reg|rom_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(16));

-- Location: FF_X67_Y34_N25
\FD|id_ex_reg|rtout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|if_id_reg|rom_out\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|rtout\(0));

-- Location: LCCOMB_X67_Y34_N16
\FD|mux_Rd_Rt|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[0]~0_combout\ = (\FD|id_ex_reg|execute_muxrtrd_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxrtrd_out~q\ & ((\FD|id_ex_reg|rtout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxrtrd_out~q\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|rtout\(0),
	combout => \FD|mux_Rd_Rt|saida[0]~0_combout\);

-- Location: FF_X67_Y34_N17
\FD|ex_mem_reg|in_memwb_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|in_memwb_rd\(0));

-- Location: LCCOMB_X67_Y34_N10
\FD|mem_wb_reg|rd_memwbreg_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mem_wb_reg|rd_memwbreg_out[0]~feeder_combout\ = \FD|ex_mem_reg|in_memwb_rd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ex_mem_reg|in_memwb_rd\(0),
	combout => \FD|mem_wb_reg|rd_memwbreg_out[0]~feeder_combout\);

-- Location: FF_X67_Y34_N11
\FD|mem_wb_reg|rd_memwbreg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mem_wb_reg|rd_memwbreg_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|rd_memwbreg_out\(0));

-- Location: FF_X68_Y32_N11
\FD|BR|bancoReg_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(1));

-- Location: LCCOMB_X68_Y32_N28
\FD|BR|bancoReg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(8) & (\FD|BR|bancoReg_rtl_0_bypass\(7) & (\FD|BR|bancoReg_rtl_0_bypass\(2) $ (!\FD|BR|bancoReg_rtl_0_bypass\(1))))) # (!\FD|BR|bancoReg_rtl_0_bypass\(8) & (!\FD|BR|bancoReg_rtl_0_bypass\(7) & 
-- (\FD|BR|bancoReg_rtl_0_bypass\(2) $ (!\FD|BR|bancoReg_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(8),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(2),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(7),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(1),
	combout => \FD|BR|bancoReg~40_combout\);

-- Location: LCCOMB_X65_Y35_N20
\FD|BR|bancoReg_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X65_Y35_N21
\FD|BR|bancoReg_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(32));

-- Location: LCCOMB_X67_Y34_N12
\FD|mux_Rd_Rt|saida[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[2]~2_combout\ = (\FD|id_ex_reg|inShifter\(4) & \FD|id_ex_reg|execute_muxrtrd_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|execute_muxrtrd_out~q\,
	combout => \FD|mux_Rd_Rt|saida[2]~2_combout\);

-- Location: FF_X67_Y34_N13
\FD|ex_mem_reg|in_memwb_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|in_memwb_rd\(2));

-- Location: LCCOMB_X67_Y34_N20
\FD|mem_wb_reg|rd_memwbreg_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mem_wb_reg|rd_memwbreg_out[2]~feeder_combout\ = \FD|ex_mem_reg|in_memwb_rd\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ex_mem_reg|in_memwb_rd\(2),
	combout => \FD|mem_wb_reg|rd_memwbreg_out[2]~feeder_combout\);

-- Location: FF_X67_Y34_N21
\FD|mem_wb_reg|rd_memwbreg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mem_wb_reg|rd_memwbreg_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|rd_memwbreg_out\(2));

-- Location: FF_X66_Y34_N7
\FD|BR|bancoReg_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(5));

-- Location: LCCOMB_X67_Y34_N18
\FD|mux_Rd_Rt|saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Rd_Rt|saida[1]~1_combout\ = (\FD|id_ex_reg|execute_muxrtrd_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxrtrd_out~q\ & ((\FD|id_ex_reg|rtout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|rtout\(1),
	datad => \FD|id_ex_reg|execute_muxrtrd_out~q\,
	combout => \FD|mux_Rd_Rt|saida[1]~1_combout\);

-- Location: FF_X67_Y34_N19
\FD|ex_mem_reg|in_memwb_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mux_Rd_Rt|saida[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|in_memwb_rd\(1));

-- Location: LCCOMB_X66_Y34_N26
\FD|mem_wb_reg|rd_memwbreg_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mem_wb_reg|rd_memwbreg_out[1]~feeder_combout\ = \FD|ex_mem_reg|in_memwb_rd\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ex_mem_reg|in_memwb_rd\(1),
	combout => \FD|mem_wb_reg|rd_memwbreg_out[1]~feeder_combout\);

-- Location: FF_X66_Y34_N27
\FD|mem_wb_reg|rd_memwbreg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mem_wb_reg|rd_memwbreg_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|rd_memwbreg_out\(1));

-- Location: FF_X66_Y34_N29
\FD|BR|bancoReg_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(3));

-- Location: FF_X66_Y34_N25
\FD|BR|bancoReg_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(9));

-- Location: LCCOMB_X66_Y32_N0
\FD|id_ex_reg|memacess_memwrite_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|memacess_memwrite_out~0_combout\ = (!\FD|if_id_reg|rom_out\(28) & (!\FD|if_id_reg|rom_out\(29) & (\FD|if_id_reg|rom_out\(26) $ (!\FD|if_id_reg|rom_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(28),
	datab => \FD|if_id_reg|rom_out\(29),
	datac => \FD|if_id_reg|rom_out\(26),
	datad => \FD|if_id_reg|rom_out\(27),
	combout => \FD|id_ex_reg|memacess_memwrite_out~0_combout\);

-- Location: FF_X66_Y32_N1
\FD|id_ex_reg|wb_ucBR_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|memacess_memwrite_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|wb_ucBR_out~q\);

-- Location: LCCOMB_X66_Y32_N4
\FD|ex_mem_reg|wb_regwrite_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|wb_regwrite_out~feeder_combout\ = \FD|id_ex_reg|wb_ucBR_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|wb_ucBR_out~q\,
	combout => \FD|ex_mem_reg|wb_regwrite_out~feeder_combout\);

-- Location: FF_X66_Y32_N5
\FD|ex_mem_reg|wb_regwrite_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|wb_regwrite_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|wb_regwrite_out~q\);

-- Location: FF_X66_Y32_N29
\FD|mem_wb_reg|wb_BR_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|wb_regwrite_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|wb_BR_out~q\);

-- Location: FF_X66_Y34_N19
\FD|BR|bancoReg_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|wb_BR_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(0));

-- Location: LCCOMB_X66_Y34_N24
\FD|BR|bancoReg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~41_combout\ = (!\FD|BR|bancoReg_rtl_0_bypass\(5) & (!\FD|BR|bancoReg_rtl_0_bypass\(3) & (!\FD|BR|bancoReg_rtl_0_bypass\(9) & \FD|BR|bancoReg_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(5),
	datab => \FD|BR|bancoReg_rtl_0_bypass\(3),
	datac => \FD|BR|bancoReg_rtl_0_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_0_bypass\(0),
	combout => \FD|BR|bancoReg~41_combout\);

-- Location: LCCOMB_X65_Y35_N8
\FD|BR|saidaA[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~50_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(32) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(32),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[10]~50_combout\);

-- Location: LCCOMB_X66_Y32_N20
\UC|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal3~0_combout\ = (!\FD|if_id_reg|rom_out\(28) & (!\FD|if_id_reg|rom_out\(29) & (\FD|if_id_reg|rom_out\(26) & \FD|if_id_reg|rom_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(28),
	datab => \FD|if_id_reg|rom_out\(29),
	datac => \FD|if_id_reg|rom_out\(26),
	datad => \FD|if_id_reg|rom_out\(27),
	combout => \UC|Equal3~0_combout\);

-- Location: FF_X66_Y32_N21
\FD|id_ex_reg|wb_memtoregmux_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \UC|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|wb_memtoregmux_out~q\);

-- Location: FF_X62_Y36_N17
\FD|ex_mem_reg|wb_memtoregmux_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|wb_memtoregmux_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|wb_memtoregmux_out~q\);

-- Location: LCCOMB_X62_Y36_N12
\FD|mem_wb_reg|wb_memtoreg_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mem_wb_reg|wb_memtoreg_out~feeder_combout\ = \FD|ex_mem_reg|wb_memtoregmux_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ex_mem_reg|wb_memtoregmux_out~q\,
	combout => \FD|mem_wb_reg|wb_memtoreg_out~feeder_combout\);

-- Location: FF_X62_Y36_N13
\FD|mem_wb_reg|wb_memtoreg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mem_wb_reg|wb_memtoreg_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|wb_memtoreg_out~q\);

-- Location: LCCOMB_X65_Y34_N4
\FD|BR|bancoReg_rtl_1_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X65_Y34_N5
\FD|BR|bancoReg_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(12));

-- Location: LCCOMB_X66_Y34_N12
\FD|BR|bancoReg_rtl_1_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\ = \FD|ROM|memROM~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~30_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\);

-- Location: FF_X66_Y34_N13
\FD|BR|bancoReg_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(8));

-- Location: FF_X66_Y34_N9
\FD|BR|bancoReg_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|wb_BR_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(0));

-- Location: FF_X66_Y34_N15
\FD|BR|bancoReg_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(5));

-- Location: FF_X66_Y34_N3
\FD|BR|bancoReg_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(7));

-- Location: LCCOMB_X66_Y34_N14
\FD|BR|bancoReg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~39_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(0) & (!\FD|BR|bancoReg_rtl_1_bypass\(5) & (\FD|BR|bancoReg_rtl_1_bypass\(8) $ (!\FD|BR|bancoReg_rtl_1_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(8),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(0),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(5),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(7),
	combout => \FD|BR|bancoReg~39_combout\);

-- Location: FF_X65_Y34_N17
\FD|BR|bancoReg_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(9));

-- Location: FF_X66_Y34_N11
\FD|BR|bancoReg_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(3));

-- Location: LCCOMB_X66_Y34_N20
\FD|BR|bancoReg_rtl_1_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\ = \FD|ROM|memROM~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ROM|memROM~29_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\);

-- Location: FF_X66_Y34_N21
\FD|BR|bancoReg_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(4));

-- Location: FF_X66_Y34_N23
\FD|BR|bancoReg_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(2));

-- Location: FF_X66_Y34_N17
\FD|BR|bancoReg_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mem_wb_reg|rd_memwbreg_out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(1));

-- Location: LCCOMB_X66_Y34_N22
\FD|BR|bancoReg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(3) & (\FD|BR|bancoReg_rtl_1_bypass\(4) & (\FD|BR|bancoReg_rtl_1_bypass\(2) $ (!\FD|BR|bancoReg_rtl_1_bypass\(1))))) # (!\FD|BR|bancoReg_rtl_1_bypass\(3) & (!\FD|BR|bancoReg_rtl_1_bypass\(4) & 
-- (\FD|BR|bancoReg_rtl_1_bypass\(2) $ (!\FD|BR|bancoReg_rtl_1_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(3),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(4),
	datac => \FD|BR|bancoReg_rtl_1_bypass\(2),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(1),
	combout => \FD|BR|bancoReg~38_combout\);

-- Location: LCCOMB_X65_Y34_N16
\FD|BR|saidaB[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~4_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(12) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(12),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[0]~4_combout\);

-- Location: LCCOMB_X65_Y35_N26
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

-- Location: LCCOMB_X63_Y38_N20
\FD|ex_mem_reg|ramAdd[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[1]~feeder_combout\ = \FD|ULA|Mux30~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux30~3_combout\,
	combout => \FD|ex_mem_reg|ramAdd[1]~feeder_combout\);

-- Location: FF_X63_Y38_N21
\FD|ex_mem_reg|ramAdd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|ramAdd[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(1));

-- Location: FF_X63_Y36_N1
\FD|mem_wb_reg|mux_0ent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(1));

-- Location: LCCOMB_X66_Y32_N10
\UC|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~1_combout\ = (!\FD|if_id_reg|rom_out\(28) & (\FD|if_id_reg|rom_out\(29) & (\FD|if_id_reg|rom_out\(26) & \FD|if_id_reg|rom_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(28),
	datab => \FD|if_id_reg|rom_out\(29),
	datac => \FD|if_id_reg|rom_out\(26),
	datad => \FD|if_id_reg|rom_out\(27),
	combout => \UC|Equal2~1_combout\);

-- Location: FF_X66_Y32_N11
\FD|id_ex_reg|memacess_memwrite_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \UC|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|memacess_memwrite_out~q\);

-- Location: LCCOMB_X66_Y32_N30
\FD|ex_mem_reg|memacess_memwrite_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|memacess_memwrite_out~feeder_combout\ = \FD|id_ex_reg|memacess_memwrite_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|memacess_memwrite_out~q\,
	combout => \FD|ex_mem_reg|memacess_memwrite_out~feeder_combout\);

-- Location: FF_X66_Y32_N31
\FD|ex_mem_reg|memacess_memwrite_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|memacess_memwrite_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|memacess_memwrite_out~q\);

-- Location: LCCOMB_X65_Y34_N10
\FD|ex_mem_reg|inregmemwd[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[0]~feeder_combout\ = \FD|id_ex_reg|inMux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(0),
	combout => \FD|ex_mem_reg|inregmemwd[0]~feeder_combout\);

-- Location: FF_X65_Y34_N11
\FD|ex_mem_reg|inregmemwd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(0));

-- Location: LCCOMB_X63_Y38_N24
\FD|BR|bancoReg_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X63_Y38_N25
\FD|BR|bancoReg_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(16));

-- Location: LCCOMB_X63_Y38_N14
\FD|BR|saidaA[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~0_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(16) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(16),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[2]~0_combout\);

-- Location: FF_X63_Y36_N11
\FD|mem_wb_reg|mux_0ent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(2));

-- Location: LCCOMB_X63_Y37_N6
\FD|BR|bancoReg_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X63_Y37_N7
\FD|BR|bancoReg_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(18));

-- Location: LCCOMB_X63_Y36_N8
\FD|BR|saidaA[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~6_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(18) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(18),
	combout => \FD|BR|saidaA[3]~6_combout\);

-- Location: LCCOMB_X69_Y37_N22
\FD|UCULA|ALUctr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~1_combout\ = (\FD|id_ex_reg|inShifter\(4)) # ((\FD|id_ex_reg|inShifter\(0)) # ((\FD|id_ex_reg|inShifter\(3)) # (!\FD|id_ex_reg|rtout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datab => \FD|id_ex_reg|inShifter\(0),
	datac => \FD|id_ex_reg|rtout\(1),
	datad => \FD|id_ex_reg|inShifter\(3),
	combout => \FD|UCULA|ALUctr[0]~1_combout\);

-- Location: LCCOMB_X69_Y37_N0
\FD|UCULA|ALUctr[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~2_combout\ = (\FD|UCULA|ALUctr[0]~0_combout\ & ((\FD|UCULA|ALUctr[0]~1_combout\) # ((\FD|id_ex_reg|inShifter\(2) & \FD|id_ex_reg|inShifter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|UCULA|ALUctr[0]~1_combout\,
	datac => \FD|id_ex_reg|inShifter\(2),
	datad => \FD|id_ex_reg|inShifter\(1),
	combout => \FD|UCULA|ALUctr[0]~2_combout\);

-- Location: LCCOMB_X69_Y37_N10
\FD|UCULA|ALUctr[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~3_combout\ = (!\FD|id_ex_reg|inShifter\(1) & (!\FD|id_ex_reg|inShifter\(4) & (\FD|id_ex_reg|rtout\(1) & !\FD|id_ex_reg|inShifter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(1),
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|rtout\(1),
	datad => \FD|id_ex_reg|inShifter\(3),
	combout => \FD|UCULA|ALUctr[2]~3_combout\);

-- Location: LCCOMB_X68_Y32_N16
\UC|pontosDeControle[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|pontosDeControle[9]~0_combout\ = (\FD|if_id_reg|rom_out\(28) & (!\FD|if_id_reg|rom_out\(29) & (!\FD|if_id_reg|rom_out\(26) & !\FD|if_id_reg|rom_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(28),
	datab => \FD|if_id_reg|rom_out\(29),
	datac => \FD|if_id_reg|rom_out\(26),
	datad => \FD|if_id_reg|rom_out\(27),
	combout => \UC|pontosDeControle[9]~0_combout\);

-- Location: FF_X68_Y32_N17
\FD|id_ex_reg|execute_ulaop_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \UC|pontosDeControle[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|execute_ulaop_out\(1));

-- Location: LCCOMB_X69_Y37_N14
\FD|UCULA|ALUctr[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~5_combout\ = (\FD|id_ex_reg|execute_ulaop_out\(1)) # ((\FD|id_ex_reg|inShifter\(0) & !\FD|id_ex_reg|inShifter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_ulaop_out\(1),
	datab => \FD|id_ex_reg|inShifter\(0),
	datac => \FD|id_ex_reg|inShifter\(2),
	combout => \FD|UCULA|ALUctr[2]~5_combout\);

-- Location: LCCOMB_X69_Y37_N24
\FD|UCULA|ALUctr[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[2]~6_combout\ = (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|UCULA|ALUctr[2]~5_combout\) # (!\FD|UCULA|ALUctr[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~3_combout\,
	datab => \FD|UCULA|ALUctr[2]~5_combout\,
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|UCULA|ALUctr[2]~6_combout\);

-- Location: LCCOMB_X69_Y37_N28
\FD|UCULA|ALUctr[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[1]~4_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (((!\FD|id_ex_reg|execute_ulaop_out\(1))))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (((\FD|id_ex_reg|execute_ulaop_out\(1)) # (!\FD|UCULA|ALUctr[2]~3_combout\)) # 
-- (!\FD|id_ex_reg|inShifter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datab => \FD|id_ex_reg|inShifter\(2),
	datac => \FD|id_ex_reg|execute_ulaop_out\(1),
	datad => \FD|UCULA|ALUctr[2]~3_combout\,
	combout => \FD|UCULA|ALUctr[1]~4_combout\);

-- Location: LCCOMB_X62_Y38_N16
\FD|ULA|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~0_combout\ = (\FD|UCULA|ALUctr[1]~4_combout\ & ((!\FD|UCULA|ALUctr[2]~6_combout\) # (!\FD|UCULA|ALUctr[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~2_combout\,
	datac => \FD|UCULA|ALUctr[2]~6_combout\,
	datad => \FD|UCULA|ALUctr[1]~4_combout\,
	combout => \FD|ULA|Mux22~0_combout\);

-- Location: LCCOMB_X67_Y34_N24
\FD|BR|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal1~0_combout\ = (!\FD|if_id_reg|rom_out\(19) & (!\FD|if_id_reg|rom_out\(16) & !\FD|if_id_reg|rom_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|if_id_reg|rom_out\(19),
	datac => \FD|if_id_reg|rom_out\(16),
	datad => \FD|if_id_reg|rom_out\(24),
	combout => \FD|BR|Equal1~0_combout\);

-- Location: FF_X63_Y36_N19
\FD|mem_wb_reg|mux_0ent[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(4));

-- Location: FF_X62_Y36_N7
\FD|ex_mem_reg|inregmemwd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(4));

-- Location: FF_X63_Y36_N21
\FD|mem_wb_reg|mux_0ent[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(5));

-- Location: LCCOMB_X66_Y37_N28
\FD|BR|bancoReg_rtl_1_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X66_Y37_N29
\FD|BR|bancoReg_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(26));

-- Location: LCCOMB_X66_Y37_N6
\FD|BR|saidaB[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~56_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(26) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(26),
	combout => \FD|BR|saidaB[7]~56_combout\);

-- Location: FF_X65_Y32_N19
\FD|ex_mem_reg|inregmemwd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(5));

-- Location: LCCOMB_X65_Y37_N14
\FD|ex_mem_reg|inregmemwd[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[7]~feeder_combout\ = \FD|id_ex_reg|inMux\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(7),
	combout => \FD|ex_mem_reg|inregmemwd[7]~feeder_combout\);

-- Location: FF_X65_Y37_N15
\FD|ex_mem_reg|inregmemwd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(7));

-- Location: FF_X67_Y37_N25
\FD|BR|bancoReg_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[9]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(29));

-- Location: LCCOMB_X65_Y37_N12
\FD|BR|bancoReg_rtl_1_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X65_Y37_N13
\FD|BR|bancoReg_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(32));

-- Location: LCCOMB_X65_Y37_N22
\FD|BR|saidaB[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~50_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(32) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(32),
	combout => \FD|BR|saidaB[10]~50_combout\);

-- Location: LCCOMB_X65_Y37_N24
\FD|BR|bancoReg_rtl_1_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X65_Y37_N25
\FD|BR|bancoReg_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(34));

-- Location: LCCOMB_X65_Y37_N26
\FD|BR|saidaB[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~48_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(34) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~38_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(34),
	combout => \FD|BR|saidaB[11]~48_combout\);

-- Location: LCCOMB_X65_Y37_N4
\FD|ex_mem_reg|inregmemwd[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[10]~feeder_combout\ = \FD|id_ex_reg|inMux\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(10),
	combout => \FD|ex_mem_reg|inregmemwd[10]~feeder_combout\);

-- Location: FF_X65_Y37_N5
\FD|ex_mem_reg|inregmemwd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(10));

-- Location: LCCOMB_X65_Y37_N18
\FD|ex_mem_reg|inregmemwd[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[11]~feeder_combout\ = \FD|id_ex_reg|inMux\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(11),
	combout => \FD|ex_mem_reg|inregmemwd[11]~feeder_combout\);

-- Location: FF_X65_Y37_N19
\FD|ex_mem_reg|inregmemwd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(11));

-- Location: LCCOMB_X62_Y33_N20
\FD|BR|bancoReg_rtl_1_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X62_Y33_N21
\FD|BR|bancoReg_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(36));

-- Location: LCCOMB_X62_Y33_N14
\FD|BR|saidaB[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~46_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(36) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(36),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[12]~46_combout\);

-- Location: LCCOMB_X63_Y33_N2
\FD|BR|bancoReg_rtl_1_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[35]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[12]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[12]~23_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[35]~feeder_combout\);

-- Location: FF_X63_Y33_N3
\FD|BR|bancoReg_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(35));

-- Location: FF_X66_Y34_N1
\FD|if_id_reg|rom_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ROM|memROM~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(21));

-- Location: LCCOMB_X66_Y34_N0
\FD|BR|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|Equal0~0_combout\ = (\FD|if_id_reg|rom_out\(21)) # (\FD|if_id_reg|rom_out\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|if_id_reg|rom_out\(21),
	datad => \FD|if_id_reg|rom_out\(24),
	combout => \FD|BR|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y33_N4
\FD|ex_mem_reg|inregmemwd[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[15]~feeder_combout\ = \FD|id_ex_reg|inMux\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(15),
	combout => \FD|ex_mem_reg|inregmemwd[15]~feeder_combout\);

-- Location: FF_X63_Y33_N5
\FD|ex_mem_reg|inregmemwd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(15));

-- Location: LCCOMB_X65_Y32_N12
\FD|BR|bancoReg_rtl_1_bypass[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[18]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[18]~17_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\);

-- Location: FF_X65_Y32_N13
\FD|BR|bancoReg_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(47));

-- Location: LCCOMB_X62_Y38_N18
\FD|ex_mem_reg|ramAdd[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[17]~0_combout\ = (\FD|UCULA|ALUctr[3]~8_combout\) # ((\FD|UCULA|ALUctr[1]~4_combout\ & ((\FD|UCULA|ALUctr[0]~2_combout\))) # (!\FD|UCULA|ALUctr[1]~4_combout\ & (\FD|UCULA|ALUctr[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~6_combout\,
	datab => \FD|UCULA|ALUctr[0]~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|UCULA|ALUctr[1]~4_combout\,
	combout => \FD|ex_mem_reg|ramAdd[17]~0_combout\);

-- Location: LCCOMB_X63_Y34_N20
\FD|BR|bancoReg_rtl_1_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\);

-- Location: FF_X63_Y34_N21
\FD|BR|bancoReg_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(54));

-- Location: LCCOMB_X63_Y34_N14
\FD|BR|saidaB[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~28_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(54) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(54),
	combout => \FD|BR|saidaB[21]~28_combout\);

-- Location: LCCOMB_X63_Y34_N26
\FD|BR|bancoReg_rtl_1_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[21]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[21]~14_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\);

-- Location: FF_X63_Y34_N27
\FD|BR|bancoReg_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(53));

-- Location: FF_X63_Y34_N29
\FD|BR|bancoReg_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[22]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(55));

-- Location: LCCOMB_X63_Y34_N6
\FD|BR|bancoReg_rtl_1_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\);

-- Location: FF_X63_Y34_N7
\FD|BR|bancoReg_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(56));

-- Location: LCCOMB_X63_Y34_N0
\FD|BR|saidaB[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~26_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(56) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(56),
	combout => \FD|BR|saidaB[22]~26_combout\);

-- Location: LCCOMB_X63_Y34_N24
\FD|BR|bancoReg_rtl_1_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\);

-- Location: FF_X63_Y34_N25
\FD|BR|bancoReg_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(58));

-- Location: LCCOMB_X63_Y34_N18
\FD|BR|saidaB[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~24_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(58) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(58),
	combout => \FD|BR|saidaB[23]~24_combout\);

-- Location: LCCOMB_X63_Y34_N22
\FD|BR|bancoReg_rtl_1_bypass[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[57]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[23]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[23]~12_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[57]~feeder_combout\);

-- Location: FF_X63_Y34_N23
\FD|BR|bancoReg_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(57));

-- Location: LCCOMB_X61_Y35_N26
\FD|BR|bancoReg_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X61_Y35_N27
\FD|BR|bancoReg_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(60));

-- Location: LCCOMB_X61_Y35_N20
\FD|BR|saidaA[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~22_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(60) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(60),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[24]~22_combout\);

-- Location: FF_X61_Y34_N11
\FD|BR|bancoReg_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[25]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(61));

-- Location: LCCOMB_X62_Y33_N12
\FD|BR|bancoReg_rtl_1_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\);

-- Location: FF_X62_Y33_N13
\FD|BR|bancoReg_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(62));

-- Location: LCCOMB_X62_Y33_N22
\FD|BR|saidaB[25]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~20_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(62) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~39_combout\)) # (!\FD|BR|bancoReg~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(62),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[25]~20_combout\);

-- Location: LCCOMB_X69_Y37_N26
\FD|ULA|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~9_combout\ = (!\FD|UCULA|ALUctr[1]~4_combout\ & ((\FD|id_ex_reg|execute_muxula_out~q\) # ((\FD|UCULA|ALUctr[2]~3_combout\ & !\FD|UCULA|ALUctr[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[2]~3_combout\,
	datab => \FD|UCULA|ALUctr[2]~5_combout\,
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|UCULA|ALUctr[1]~4_combout\,
	combout => \FD|ULA|Mux31~9_combout\);

-- Location: FF_X63_Y32_N31
\FD|BR|bancoReg_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(63));

-- Location: FF_X65_Y35_N7
\FD|BR|bancoReg_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[27]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(65));

-- Location: FF_X59_Y35_N3
\FD|BR|bancoReg_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[28]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(67));

-- Location: LCCOMB_X61_Y35_N18
\FD|BR|bancoReg_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X61_Y35_N19
\FD|BR|bancoReg_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(68));

-- Location: LCCOMB_X61_Y35_N28
\FD|BR|saidaA[28]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~14_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(68) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(68),
	combout => \FD|BR|saidaA[28]~14_combout\);

-- Location: LCCOMB_X65_Y35_N2
\FD|BR|bancoReg_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X65_Y35_N3
\FD|BR|bancoReg_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(74));

-- Location: LCCOMB_X65_Y35_N12
\FD|BR|saidaA[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~8_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(74) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(74),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[31]~8_combout\);

-- Location: M9K_X64_Y35_N0
\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000D00000000C00000000B00000000A00000000900000000A000000006000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_0|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
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
	port_b_data_width => 36,
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
	clk0 => \SignalDetector|saida~clkctrl_outclk\,
	portadatain => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X66_Y35_N24
\FD|BR|bancoReg_rtl_0_bypass[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[73]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[31]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[31]~4_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[73]~feeder_combout\);

-- Location: FF_X66_Y35_N25
\FD|BR|bancoReg_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(73));

-- Location: LCCOMB_X65_Y35_N16
\FD|BR|saidaA[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[31]~9_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[31]~8_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\)) # (!\FD|BR|saidaA[31]~8_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[31]~8_combout\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a31\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(73),
	combout => \FD|BR|saidaA[31]~9_combout\);

-- Location: FF_X65_Y35_N17
\FD|id_ex_reg|inAlu[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(31));

-- Location: M9K_X64_Y34_N0
\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000D00000000C00000000B00000000A00000000900000000A000000006000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxo_dados:FD|bancoRegistradores:BR|altsyncram:bancoReg_rtl_1|altsyncram_8th1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
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
	port_b_data_width => 36,
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
	clk0 => \SignalDetector|saida~clkctrl_outclk\,
	portadatain => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y35_N28
\FD|BR|bancoReg_rtl_1_bypass[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[73]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[31]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[31]~4_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[73]~feeder_combout\);

-- Location: FF_X65_Y35_N29
\FD|BR|bancoReg_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(73));

-- Location: LCCOMB_X66_Y35_N10
\FD|BR|bancoReg_rtl_1_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\);

-- Location: FF_X66_Y35_N11
\FD|BR|bancoReg_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(74));

-- Location: LCCOMB_X66_Y35_N4
\FD|BR|saidaB[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~8_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(74) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(74),
	combout => \FD|BR|saidaB[31]~8_combout\);

-- Location: LCCOMB_X65_Y35_N30
\FD|BR|saidaB[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[31]~9_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[31]~8_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\)) # (!\FD|BR|saidaB[31]~8_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a31\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(73),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[31]~8_combout\,
	combout => \FD|BR|saidaB[31]~9_combout\);

-- Location: FF_X65_Y35_N31
\FD|id_ex_reg|inMux[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(31));

-- Location: LCCOMB_X62_Y34_N24
\FD|mux_Banco_Ula|saida[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[31]~4_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inMux\(31),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[31]~4_combout\);

-- Location: LCCOMB_X63_Y36_N28
\FD|BR|bancoReg_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X63_Y36_N29
\FD|BR|bancoReg_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(72));

-- Location: LCCOMB_X63_Y36_N14
\FD|BR|saidaA[30]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~10_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(72) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(72),
	combout => \FD|BR|saidaA[30]~10_combout\);

-- Location: FF_X62_Y36_N15
\FD|BR|bancoReg_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[30]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(71));

-- Location: LCCOMB_X62_Y36_N8
\FD|BR|saidaA[30]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[30]~11_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[30]~10_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\)) # (!\FD|BR|saidaA[30]~10_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a30\,
	datab => \FD|BR|saidaA[30]~10_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(71),
	combout => \FD|BR|saidaA[30]~11_combout\);

-- Location: FF_X62_Y36_N9
\FD|id_ex_reg|inAlu[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[30]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(30));

-- Location: LCCOMB_X65_Y33_N2
\FD|BR|bancoReg_rtl_1_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\);

-- Location: FF_X65_Y33_N3
\FD|BR|bancoReg_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(70));

-- Location: LCCOMB_X65_Y33_N12
\FD|BR|saidaB[29]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~12_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(70) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(70),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[29]~12_combout\);

-- Location: LCCOMB_X65_Y33_N8
\FD|BR|bancoReg_rtl_1_bypass[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[29]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[29]~6_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\);

-- Location: FF_X65_Y33_N9
\FD|BR|bancoReg_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(69));

-- Location: LCCOMB_X65_Y33_N20
\FD|BR|saidaB[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[29]~13_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[29]~12_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\))) # (!\FD|BR|saidaB[29]~12_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[29]~12_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(69),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a29\,
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[29]~13_combout\);

-- Location: FF_X65_Y33_N21
\FD|id_ex_reg|inMux[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[29]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(29));

-- Location: LCCOMB_X62_Y34_N10
\FD|mux_Banco_Ula|saida[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[29]~6_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inMux\(29),
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[29]~6_combout\);

-- Location: LCCOMB_X65_Y34_N24
\FD|BR|bancoReg_rtl_1_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\);

-- Location: FF_X65_Y34_N25
\FD|BR|bancoReg_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(68));

-- Location: LCCOMB_X65_Y34_N26
\FD|BR|saidaB[28]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~14_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(68) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(68),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[28]~14_combout\);

-- Location: LCCOMB_X65_Y34_N30
\FD|BR|bancoReg_rtl_1_bypass[67]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[67]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[28]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[28]~7_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[67]~feeder_combout\);

-- Location: FF_X65_Y34_N31
\FD|BR|bancoReg_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(67));

-- Location: LCCOMB_X65_Y34_N18
\FD|BR|saidaB[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[28]~15_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[28]~14_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\)) # (!\FD|BR|saidaB[28]~14_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[28]~14_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a28\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(67),
	combout => \FD|BR|saidaB[28]~15_combout\);

-- Location: FF_X65_Y34_N19
\FD|id_ex_reg|inMux[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(28));

-- Location: LCCOMB_X65_Y34_N12
\FD|mux_Banco_Ula|saida[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[28]~7_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inMux\(28),
	combout => \FD|mux_Banco_Ula|saida[28]~7_combout\);

-- Location: FF_X60_Y35_N1
\FD|BR|bancoReg_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[27]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(65));

-- Location: LCCOMB_X61_Y35_N30
\FD|BR|bancoReg_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X61_Y35_N31
\FD|BR|bancoReg_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(66));

-- Location: LCCOMB_X61_Y35_N24
\FD|BR|saidaA[27]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~16_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(66) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(66),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[27]~16_combout\);

-- Location: LCCOMB_X60_Y35_N2
\FD|BR|saidaA[27]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[27]~17_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[27]~16_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\)) # (!\FD|BR|saidaA[27]~16_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a27\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(65),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|saidaA[27]~16_combout\,
	combout => \FD|BR|saidaA[27]~17_combout\);

-- Location: FF_X60_Y35_N3
\FD|id_ex_reg|inAlu[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[27]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(27));

-- Location: LCCOMB_X58_Y36_N10
\FD|mux_Banco_Ula|saida[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[27]~8_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(27),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[27]~8_combout\);

-- Location: LCCOMB_X62_Y35_N14
\FD|BR|bancoReg_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X62_Y35_N15
\FD|BR|bancoReg_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(64));

-- Location: LCCOMB_X62_Y35_N20
\FD|BR|saidaA[26]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~18_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(64) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(64),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[26]~18_combout\);

-- Location: FF_X62_Y35_N21
\FD|BR|bancoReg_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(63));

-- Location: LCCOMB_X62_Y35_N0
\FD|BR|saidaA[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[26]~19_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[26]~18_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\)) # (!\FD|BR|saidaA[26]~18_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a26\,
	datab => \FD|BR|saidaA[26]~18_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(63),
	combout => \FD|BR|saidaA[26]~19_combout\);

-- Location: FF_X62_Y35_N1
\FD|id_ex_reg|inAlu[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[26]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(26));

-- Location: LCCOMB_X61_Y34_N12
\FD|BR|bancoReg_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X61_Y34_N13
\FD|BR|bancoReg_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(62));

-- Location: LCCOMB_X61_Y34_N26
\FD|BR|saidaA[25]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~20_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(62) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(62),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[25]~20_combout\);

-- Location: FF_X61_Y34_N27
\FD|BR|bancoReg_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[25]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(61));

-- Location: LCCOMB_X61_Y34_N24
\FD|BR|saidaA[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[25]~21_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[25]~20_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\)) # (!\FD|BR|saidaA[25]~20_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(61))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[25]~20_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a25\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(61),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[25]~21_combout\);

-- Location: FF_X61_Y34_N25
\FD|id_ex_reg|inAlu[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[25]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(25));

-- Location: FF_X61_Y34_N29
\FD|BR|bancoReg_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[24]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(59));

-- Location: LCCOMB_X62_Y33_N0
\FD|BR|bancoReg_rtl_1_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\);

-- Location: FF_X62_Y33_N1
\FD|BR|bancoReg_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(60));

-- Location: LCCOMB_X62_Y33_N26
\FD|BR|saidaB[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~22_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(60) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(60),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[24]~22_combout\);

-- Location: LCCOMB_X61_Y34_N6
\FD|BR|saidaB[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[24]~23_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[24]~22_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\))) # (!\FD|BR|saidaB[24]~22_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(59),
	datac => \FD|BR|saidaB[24]~22_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a24\,
	combout => \FD|BR|saidaB[24]~23_combout\);

-- Location: FF_X61_Y34_N7
\FD|id_ex_reg|inMux[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(24));

-- Location: LCCOMB_X61_Y34_N22
\FD|mux_Banco_Ula|saida[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[24]~11_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|inMux\(24),
	combout => \FD|mux_Banco_Ula|saida[24]~11_combout\);

-- Location: LCCOMB_X63_Y38_N26
\FD|BR|bancoReg_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X63_Y38_N27
\FD|BR|bancoReg_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(58));

-- Location: LCCOMB_X63_Y38_N16
\FD|BR|saidaA[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~24_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(58) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(58),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[23]~24_combout\);

-- Location: FF_X63_Y38_N17
\FD|BR|bancoReg_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[23]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(57));

-- Location: LCCOMB_X63_Y38_N28
\FD|BR|saidaA[23]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[23]~25_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[23]~24_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\)) # (!\FD|BR|saidaA[23]~24_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(57))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[23]~24_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a23\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(57),
	combout => \FD|BR|saidaA[23]~25_combout\);

-- Location: FF_X63_Y38_N29
\FD|id_ex_reg|inAlu[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[23]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(23));

-- Location: LCCOMB_X62_Y35_N26
\FD|BR|bancoReg_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X62_Y35_N27
\FD|BR|bancoReg_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(56));

-- Location: LCCOMB_X62_Y35_N28
\FD|BR|saidaA[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~26_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(56) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(56),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[22]~26_combout\);

-- Location: LCCOMB_X62_Y35_N24
\FD|BR|bancoReg_rtl_0_bypass[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[55]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[22]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[22]~13_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[55]~feeder_combout\);

-- Location: FF_X62_Y35_N25
\FD|BR|bancoReg_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(55));

-- Location: LCCOMB_X62_Y35_N10
\FD|BR|saidaA[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[22]~27_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[22]~26_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\)) # (!\FD|BR|saidaA[22]~26_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|saidaA[22]~26_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a22\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(55),
	combout => \FD|BR|saidaA[22]~27_combout\);

-- Location: FF_X62_Y35_N11
\FD|id_ex_reg|inAlu[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[22]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(22));

-- Location: LCCOMB_X58_Y36_N30
\FD|mux_Banco_Ula|saida[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[21]~14_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(21),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[21]~14_combout\);

-- Location: LCCOMB_X61_Y35_N6
\FD|BR|bancoReg_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X61_Y35_N7
\FD|BR|bancoReg_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(54));

-- Location: LCCOMB_X61_Y35_N8
\FD|BR|saidaA[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~28_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(54) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(54),
	combout => \FD|BR|saidaA[21]~28_combout\);

-- Location: LCCOMB_X59_Y35_N12
\FD|BR|bancoReg_rtl_0_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[53]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[21]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[21]~14_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[53]~feeder_combout\);

-- Location: FF_X59_Y35_N13
\FD|BR|bancoReg_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(53));

-- Location: LCCOMB_X60_Y35_N6
\FD|BR|saidaA[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[21]~29_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[21]~28_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\)) # (!\FD|BR|saidaA[21]~28_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a21\,
	datab => \FD|BR|saidaA[21]~28_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(53),
	combout => \FD|BR|saidaA[21]~29_combout\);

-- Location: FF_X60_Y35_N7
\FD|id_ex_reg|inAlu[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[21]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(21));

-- Location: LCCOMB_X66_Y36_N24
\FD|BR|bancoReg_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X66_Y36_N25
\FD|BR|bancoReg_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(52));

-- Location: LCCOMB_X66_Y36_N30
\FD|BR|saidaA[20]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~30_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(52) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(52),
	combout => \FD|BR|saidaA[20]~30_combout\);

-- Location: FF_X66_Y36_N31
\FD|BR|bancoReg_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[20]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(51));

-- Location: LCCOMB_X66_Y36_N0
\FD|BR|saidaA[20]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[20]~31_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[20]~30_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\)) # (!\FD|BR|saidaA[20]~30_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a20\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|saidaA[20]~30_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(51),
	combout => \FD|BR|saidaA[20]~31_combout\);

-- Location: FF_X66_Y36_N1
\FD|id_ex_reg|inAlu[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[20]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(20));

-- Location: LCCOMB_X63_Y32_N28
\FD|BR|bancoReg_rtl_1_bypass[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[20]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[20]~15_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\);

-- Location: FF_X63_Y32_N29
\FD|BR|bancoReg_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[51]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(51));

-- Location: LCCOMB_X63_Y32_N6
\FD|BR|bancoReg_rtl_1_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\);

-- Location: FF_X63_Y32_N7
\FD|BR|bancoReg_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(52));

-- Location: LCCOMB_X63_Y32_N16
\FD|BR|saidaB[20]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~30_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(52) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(52),
	combout => \FD|BR|saidaB[20]~30_combout\);

-- Location: LCCOMB_X63_Y32_N26
\FD|BR|saidaB[20]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[20]~31_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[20]~30_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\))) # (!\FD|BR|saidaB[20]~30_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(51),
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a20\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[20]~30_combout\,
	combout => \FD|BR|saidaB[20]~31_combout\);

-- Location: FF_X63_Y32_N27
\FD|id_ex_reg|inMux[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[20]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(20));

-- Location: LCCOMB_X58_Y36_N8
\FD|mux_Banco_Ula|saida[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[20]~15_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|inMux\(20),
	combout => \FD|mux_Banco_Ula|saida[20]~15_combout\);

-- Location: LCCOMB_X63_Y35_N2
\FD|BR|bancoReg_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X63_Y35_N3
\FD|BR|bancoReg_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(50));

-- Location: LCCOMB_X63_Y35_N30
\FD|BR|saidaA[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~32_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(50) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(50),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[19]~32_combout\);

-- Location: FF_X63_Y35_N31
\FD|BR|bancoReg_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[19]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(49));

-- Location: LCCOMB_X63_Y35_N18
\FD|BR|saidaA[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[19]~33_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[19]~32_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\)) # (!\FD|BR|saidaA[19]~32_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[19]~32_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a19\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(49),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[19]~33_combout\);

-- Location: FF_X63_Y35_N19
\FD|id_ex_reg|inAlu[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[19]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(19));

-- Location: LCCOMB_X63_Y32_N12
\FD|BR|bancoReg_rtl_1_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\);

-- Location: FF_X63_Y32_N13
\FD|BR|bancoReg_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(50));

-- Location: LCCOMB_X63_Y32_N14
\FD|BR|saidaB[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~32_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(50) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(50),
	combout => \FD|BR|saidaB[19]~32_combout\);

-- Location: FF_X63_Y32_N11
\FD|BR|bancoReg_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[19]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(49));

-- Location: LCCOMB_X63_Y32_N20
\FD|BR|saidaB[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[19]~33_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[19]~32_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\)) # (!\FD|BR|saidaB[19]~32_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a19\,
	datab => \FD|BR|saidaB[19]~32_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(49),
	combout => \FD|BR|saidaB[19]~33_combout\);

-- Location: FF_X63_Y32_N21
\FD|id_ex_reg|inMux[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[19]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(19));

-- Location: LCCOMB_X58_Y36_N18
\FD|mux_Banco_Ula|saida[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[19]~16_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(19),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[19]~16_combout\);

-- Location: LCCOMB_X58_Y36_N28
\FD|mux_Banco_Ula|saida[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[18]~17_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inMux\(18),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[18]~17_combout\);

-- Location: FF_X65_Y36_N13
\FD|BR|bancoReg_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[18]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(47));

-- Location: LCCOMB_X65_Y36_N6
\FD|BR|bancoReg_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X65_Y36_N7
\FD|BR|bancoReg_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(48));

-- Location: LCCOMB_X65_Y36_N16
\FD|BR|saidaA[18]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~34_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(48) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(48),
	combout => \FD|BR|saidaA[18]~34_combout\);

-- Location: LCCOMB_X65_Y36_N2
\FD|BR|saidaA[18]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[18]~35_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[18]~34_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\))) # (!\FD|BR|saidaA[18]~34_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(47),
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a18\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|saidaA[18]~34_combout\,
	combout => \FD|BR|saidaA[18]~35_combout\);

-- Location: FF_X65_Y36_N3
\FD|id_ex_reg|inAlu[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(18));

-- Location: LCCOMB_X62_Y35_N22
\FD|BR|bancoReg_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X62_Y35_N23
\FD|BR|bancoReg_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(46));

-- Location: LCCOMB_X62_Y35_N8
\FD|BR|saidaA[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~36_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(46) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg~40_combout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(46),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[17]~36_combout\);

-- Location: LCCOMB_X62_Y36_N0
\FD|BR|bancoReg_rtl_0_bypass[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[45]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[17]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[17]~18_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[45]~feeder_combout\);

-- Location: FF_X62_Y36_N1
\FD|BR|bancoReg_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(45));

-- Location: LCCOMB_X62_Y36_N2
\FD|BR|saidaA[17]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[17]~37_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[17]~36_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\))) # (!\FD|BR|saidaA[17]~36_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[17]~36_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(45),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a17\,
	combout => \FD|BR|saidaA[17]~37_combout\);

-- Location: FF_X62_Y36_N3
\FD|id_ex_reg|inAlu[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(17));

-- Location: LCCOMB_X66_Y32_N28
\FD|mux_Banco_Ula|saida[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[17]~18_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inMux\(17),
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[17]~18_combout\);

-- Location: LCCOMB_X65_Y37_N10
\FD|mux_Banco_Ula|saida[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[16]~19_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inMux\(16),
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[16]~19_combout\);

-- Location: FF_X66_Y36_N9
\FD|BR|bancoReg_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[15]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(41));

-- Location: LCCOMB_X66_Y36_N26
\FD|BR|bancoReg_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X66_Y36_N27
\FD|BR|bancoReg_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(42));

-- Location: LCCOMB_X66_Y36_N20
\FD|BR|saidaA[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~40_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(42) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(42),
	combout => \FD|BR|saidaA[15]~40_combout\);

-- Location: LCCOMB_X65_Y36_N22
\FD|BR|saidaA[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[15]~41_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[15]~40_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\)) # (!\FD|BR|saidaA[15]~40_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a15\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(41),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|saidaA[15]~40_combout\,
	combout => \FD|BR|saidaA[15]~41_combout\);

-- Location: FF_X65_Y36_N23
\FD|id_ex_reg|inAlu[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(15));

-- Location: LCCOMB_X66_Y36_N16
\FD|BR|bancoReg_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X66_Y36_N17
\FD|BR|bancoReg_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(40));

-- Location: LCCOMB_X66_Y36_N14
\FD|BR|saidaA[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~42_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(40) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg~41_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(40),
	combout => \FD|BR|saidaA[14]~42_combout\);

-- Location: FF_X66_Y36_N15
\FD|BR|bancoReg_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[14]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(39));

-- Location: LCCOMB_X66_Y36_N2
\FD|BR|saidaA[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[14]~43_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[14]~42_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\)) # (!\FD|BR|saidaA[14]~42_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a14\,
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|saidaA[14]~42_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(39),
	combout => \FD|BR|saidaA[14]~43_combout\);

-- Location: FF_X66_Y36_N3
\FD|id_ex_reg|inAlu[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(14));

-- Location: LCCOMB_X65_Y32_N22
\FD|mux_Banco_Ula|saida[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[14]~21_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|rtout\(1)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(14),
	datad => \FD|id_ex_reg|rtout\(1),
	combout => \FD|mux_Banco_Ula|saida[14]~21_combout\);

-- Location: LCCOMB_X62_Y34_N0
\FD|mux_Banco_Ula|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[13]~22_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(13),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[13]~22_combout\);

-- Location: LCCOMB_X63_Y37_N10
\FD|mux_Banco_Ula|saida[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[12]~23_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inMux\(12),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[12]~23_combout\);

-- Location: LCCOMB_X67_Y36_N20
\FD|BR|bancoReg_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X67_Y36_N21
\FD|BR|bancoReg_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(36));

-- Location: LCCOMB_X67_Y36_N30
\FD|BR|saidaA[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~46_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(36) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(36),
	combout => \FD|BR|saidaA[12]~46_combout\);

-- Location: LCCOMB_X67_Y36_N2
\FD|BR|bancoReg_rtl_0_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[35]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[12]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[12]~23_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[35]~feeder_combout\);

-- Location: FF_X67_Y36_N3
\FD|BR|bancoReg_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(35));

-- Location: LCCOMB_X67_Y36_N18
\FD|BR|saidaA[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[12]~47_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[12]~46_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\)) # (!\FD|BR|saidaA[12]~46_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[12]~46_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a12\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(35),
	combout => \FD|BR|saidaA[12]~47_combout\);

-- Location: FF_X67_Y36_N19
\FD|id_ex_reg|inAlu[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(12));

-- Location: FF_X65_Y36_N11
\FD|BR|bancoReg_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[11]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(33));

-- Location: LCCOMB_X66_Y36_N10
\FD|BR|bancoReg_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X66_Y36_N11
\FD|BR|bancoReg_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(34));

-- Location: LCCOMB_X65_Y36_N10
\FD|BR|saidaA[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~48_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(34) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(34),
	combout => \FD|BR|saidaA[11]~48_combout\);

-- Location: LCCOMB_X65_Y36_N0
\FD|BR|saidaA[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[11]~49_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[11]~48_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\))) # (!\FD|BR|saidaA[11]~48_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(33),
	datab => \FD|BR|saidaA[11]~48_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a11\,
	combout => \FD|BR|saidaA[11]~49_combout\);

-- Location: FF_X65_Y36_N1
\FD|id_ex_reg|inAlu[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(11));

-- Location: LCCOMB_X67_Y37_N14
\FD|BR|bancoReg_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X67_Y37_N15
\FD|BR|bancoReg_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(30));

-- Location: LCCOMB_X67_Y37_N28
\FD|BR|saidaA[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~52_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(30) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(30),
	datad => \FD|BR|bancoReg~40_combout\,
	combout => \FD|BR|saidaA[9]~52_combout\);

-- Location: FF_X67_Y37_N29
\FD|BR|bancoReg_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[9]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(29));

-- Location: LCCOMB_X67_Y37_N20
\FD|BR|saidaA[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[9]~53_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[9]~52_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\)) # (!\FD|BR|saidaA[9]~52_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a9\,
	datab => \FD|BR|saidaA[9]~52_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(29),
	combout => \FD|BR|saidaA[9]~53_combout\);

-- Location: FF_X67_Y37_N21
\FD|id_ex_reg|inAlu[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[9]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(9));

-- Location: LCCOMB_X67_Y37_N26
\FD|mux_Banco_Ula|saida[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[9]~26_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|inMux\(9),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[9]~26_combout\);

-- Location: LCCOMB_X63_Y35_N24
\FD|BR|bancoReg_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X63_Y35_N25
\FD|BR|bancoReg_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(28));

-- Location: LCCOMB_X63_Y35_N22
\FD|BR|saidaA[8]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~54_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(28) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|bancoReg_rtl_0_bypass\(28),
	datac => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[8]~54_combout\);

-- Location: LCCOMB_X63_Y35_N28
\FD|BR|bancoReg_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[8]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[8]~27_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X63_Y35_N29
\FD|BR|bancoReg_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(27));

-- Location: LCCOMB_X63_Y35_N14
\FD|BR|saidaA[8]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[8]~55_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[8]~54_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\))) # (!\FD|BR|saidaA[8]~54_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[8]~54_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(27),
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a8\,
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[8]~55_combout\);

-- Location: FF_X63_Y35_N15
\FD|id_ex_reg|inAlu[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[8]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(8));

-- Location: LCCOMB_X63_Y33_N0
\FD|mux_Banco_Ula|saida[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[8]~27_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inMux\(8),
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[8]~27_combout\);

-- Location: FF_X67_Y36_N9
\FD|BR|bancoReg_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[7]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(25));

-- Location: LCCOMB_X67_Y36_N10
\FD|BR|bancoReg_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X67_Y36_N11
\FD|BR|bancoReg_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(26));

-- Location: LCCOMB_X67_Y36_N8
\FD|BR|saidaA[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~56_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(26) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(26),
	combout => \FD|BR|saidaA[7]~56_combout\);

-- Location: LCCOMB_X67_Y36_N12
\FD|BR|saidaA[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[7]~57_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[7]~56_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\)) # (!\FD|BR|saidaA[7]~56_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a7\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(25),
	datad => \FD|BR|saidaA[7]~56_combout\,
	combout => \FD|BR|saidaA[7]~57_combout\);

-- Location: FF_X67_Y36_N13
\FD|id_ex_reg|inAlu[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[7]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(7));

-- Location: LCCOMB_X63_Y37_N14
\FD|mux_Banco_Ula|saida[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[6]~29_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inMux\(6),
	combout => \FD|mux_Banco_Ula|saida[6]~29_combout\);

-- Location: LCCOMB_X62_Y36_N18
\FD|BR|bancoReg_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X62_Y36_N19
\FD|BR|bancoReg_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(22));

-- Location: LCCOMB_X63_Y36_N16
\FD|BR|saidaA[5]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~60_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(22) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(22),
	combout => \FD|BR|saidaA[5]~60_combout\);

-- Location: FF_X63_Y36_N17
\FD|BR|bancoReg_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[5]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(21));

-- Location: LCCOMB_X63_Y36_N2
\FD|BR|saidaA[5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[5]~61_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[5]~60_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\)) # (!\FD|BR|saidaA[5]~60_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a5\,
	datab => \FD|BR|saidaA[5]~60_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(21),
	combout => \FD|BR|saidaA[5]~61_combout\);

-- Location: FF_X63_Y36_N3
\FD|id_ex_reg|inAlu[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[5]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(5));

-- Location: LCCOMB_X61_Y35_N12
\FD|BR|bancoReg_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X61_Y35_N13
\FD|BR|bancoReg_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(20));

-- Location: LCCOMB_X61_Y35_N22
\FD|BR|saidaA[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~62_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(20) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(20),
	combout => \FD|BR|saidaA[4]~62_combout\);

-- Location: FF_X61_Y35_N11
\FD|BR|bancoReg_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[4]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(19));

-- Location: LCCOMB_X61_Y35_N0
\FD|BR|saidaA[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[4]~63_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[4]~62_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\))) # (!\FD|BR|saidaA[4]~62_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[4]~62_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(19),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a4\,
	combout => \FD|BR|saidaA[4]~63_combout\);

-- Location: FF_X61_Y35_N1
\FD|id_ex_reg|inAlu[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(4));

-- Location: LCCOMB_X65_Y33_N28
\FD|BR|bancoReg_rtl_1_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X65_Y33_N29
\FD|BR|bancoReg_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(18));

-- Location: LCCOMB_X65_Y33_N6
\FD|BR|saidaB[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~6_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(18) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(18),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[3]~6_combout\);

-- Location: LCCOMB_X63_Y33_N26
\FD|BR|bancoReg_rtl_1_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[3]~3_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\);

-- Location: FF_X63_Y33_N27
\FD|BR|bancoReg_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(17));

-- Location: LCCOMB_X65_Y33_N26
\FD|BR|saidaB[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[3]~7_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[3]~6_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\)) # (!\FD|BR|saidaB[3]~6_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[3]~6_combout\,
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a3\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(17),
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[3]~7_combout\);

-- Location: FF_X65_Y33_N27
\FD|id_ex_reg|inMux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(3));

-- Location: LCCOMB_X69_Y37_N6
\FD|mux_Banco_Ula|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[3]~3_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(3)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(3),
	datad => \FD|id_ex_reg|inShifter\(3),
	combout => \FD|mux_Banco_Ula|saida[3]~3_combout\);

-- Location: LCCOMB_X66_Y35_N26
\FD|BR|bancoReg_rtl_1_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[2]~0_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\);

-- Location: FF_X66_Y35_N27
\FD|BR|bancoReg_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(15));

-- Location: LCCOMB_X66_Y35_N20
\FD|BR|bancoReg_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X66_Y35_N21
\FD|BR|bancoReg_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(16));

-- Location: LCCOMB_X66_Y35_N22
\FD|BR|saidaB[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~0_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(16) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(16),
	combout => \FD|BR|saidaB[2]~0_combout\);

-- Location: LCCOMB_X66_Y35_N8
\FD|BR|saidaB[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[2]~1_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[2]~0_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaB[2]~0_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(15),
	datac => \FD|BR|saidaB[2]~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a2\,
	combout => \FD|BR|saidaB[2]~1_combout\);

-- Location: FF_X66_Y35_N9
\FD|id_ex_reg|inMux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(2));

-- Location: LCCOMB_X67_Y35_N0
\FD|mux_Banco_Ula|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[2]~0_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(2))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inShifter\(2),
	datad => \FD|id_ex_reg|inMux\(2),
	combout => \FD|mux_Banco_Ula|saida[2]~0_combout\);

-- Location: LCCOMB_X65_Y33_N24
\FD|BR|bancoReg_rtl_1_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X65_Y33_N25
\FD|BR|bancoReg_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(14));

-- Location: LCCOMB_X65_Y33_N18
\FD|BR|saidaB[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~2_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(14) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(14),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[1]~2_combout\);

-- Location: FF_X65_Y33_N31
\FD|BR|bancoReg_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(13));

-- Location: LCCOMB_X65_Y33_N0
\FD|BR|saidaB[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[1]~3_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[1]~2_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\)) # (!\FD|BR|saidaB[1]~2_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a1\,
	datab => \FD|BR|saidaB[1]~2_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(13),
	datad => \FD|BR|Equal1~0_combout\,
	combout => \FD|BR|saidaB[1]~3_combout\);

-- Location: FF_X65_Y33_N1
\FD|id_ex_reg|inMux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(1));

-- Location: LCCOMB_X69_Y37_N16
\FD|mux_Banco_Ula|saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[1]~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(1)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inMux\(1),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(1),
	combout => \FD|mux_Banco_Ula|saida[1]~1_combout\);

-- Location: LCCOMB_X63_Y38_N12
\FD|BR|bancoReg_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X63_Y38_N13
\FD|BR|bancoReg_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(14));

-- Location: LCCOMB_X63_Y38_N22
\FD|BR|saidaA[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~2_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(14) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(14),
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[1]~2_combout\);

-- Location: LCCOMB_X63_Y38_N18
\FD|BR|bancoReg_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[13]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[1]~1_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X63_Y38_N19
\FD|BR|bancoReg_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(13));

-- Location: LCCOMB_X63_Y38_N10
\FD|BR|saidaA[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[1]~3_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[1]~2_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\))) # (!\FD|BR|saidaA[1]~2_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[1]~2_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(13),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a1\,
	combout => \FD|BR|saidaA[1]~3_combout\);

-- Location: FF_X63_Y38_N11
\FD|id_ex_reg|inAlu[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(1));

-- Location: LCCOMB_X65_Y35_N18
\FD|BR|bancoReg_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X65_Y35_N19
\FD|BR|bancoReg_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(12));

-- Location: LCCOMB_X65_Y35_N4
\FD|BR|saidaA[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~4_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(12) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(12),
	datad => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[0]~4_combout\);

-- Location: FF_X65_Y35_N5
\FD|BR|bancoReg_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(11));

-- Location: LCCOMB_X65_Y35_N24
\FD|BR|saidaA[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[0]~5_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[0]~4_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\FD|BR|saidaA[0]~4_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[0]~4_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(11),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[0]~5_combout\);

-- Location: FF_X65_Y35_N25
\FD|id_ex_reg|inAlu[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(0));

-- Location: LCCOMB_X61_Y37_N0
\FD|ULA|soma[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[0]~0_combout\ = (\FD|id_ex_reg|inAlu\(0) & (\FD|mux_Banco_Ula|saida[0]~2_combout\ $ (VCC))) # (!\FD|id_ex_reg|inAlu\(0) & (\FD|mux_Banco_Ula|saida[0]~2_combout\ & VCC))
-- \FD|ULA|soma[0]~1\ = CARRY((\FD|id_ex_reg|inAlu\(0) & \FD|mux_Banco_Ula|saida[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(0),
	datab => \FD|mux_Banco_Ula|saida[0]~2_combout\,
	datad => VCC,
	combout => \FD|ULA|soma[0]~0_combout\,
	cout => \FD|ULA|soma[0]~1\);

-- Location: LCCOMB_X61_Y37_N2
\FD|ULA|soma[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[1]~2_combout\ = (\FD|mux_Banco_Ula|saida[1]~1_combout\ & ((\FD|id_ex_reg|inAlu\(1) & (\FD|ULA|soma[0]~1\ & VCC)) # (!\FD|id_ex_reg|inAlu\(1) & (!\FD|ULA|soma[0]~1\)))) # (!\FD|mux_Banco_Ula|saida[1]~1_combout\ & ((\FD|id_ex_reg|inAlu\(1) & 
-- (!\FD|ULA|soma[0]~1\)) # (!\FD|id_ex_reg|inAlu\(1) & ((\FD|ULA|soma[0]~1\) # (GND)))))
-- \FD|ULA|soma[1]~3\ = CARRY((\FD|mux_Banco_Ula|saida[1]~1_combout\ & (!\FD|id_ex_reg|inAlu\(1) & !\FD|ULA|soma[0]~1\)) # (!\FD|mux_Banco_Ula|saida[1]~1_combout\ & ((!\FD|ULA|soma[0]~1\) # (!\FD|id_ex_reg|inAlu\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[1]~1_combout\,
	datab => \FD|id_ex_reg|inAlu\(1),
	datad => VCC,
	cin => \FD|ULA|soma[0]~1\,
	combout => \FD|ULA|soma[1]~2_combout\,
	cout => \FD|ULA|soma[1]~3\);

-- Location: LCCOMB_X61_Y37_N4
\FD|ULA|soma[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[2]~4_combout\ = ((\FD|mux_Banco_Ula|saida[2]~0_combout\ $ (\FD|id_ex_reg|inAlu\(2) $ (!\FD|ULA|soma[1]~3\)))) # (GND)
-- \FD|ULA|soma[2]~5\ = CARRY((\FD|mux_Banco_Ula|saida[2]~0_combout\ & ((\FD|id_ex_reg|inAlu\(2)) # (!\FD|ULA|soma[1]~3\))) # (!\FD|mux_Banco_Ula|saida[2]~0_combout\ & (\FD|id_ex_reg|inAlu\(2) & !\FD|ULA|soma[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[2]~0_combout\,
	datab => \FD|id_ex_reg|inAlu\(2),
	datad => VCC,
	cin => \FD|ULA|soma[1]~3\,
	combout => \FD|ULA|soma[2]~4_combout\,
	cout => \FD|ULA|soma[2]~5\);

-- Location: LCCOMB_X61_Y37_N6
\FD|ULA|soma[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[3]~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~3_combout\ & ((\FD|id_ex_reg|inAlu\(3) & (\FD|ULA|soma[2]~5\ & VCC)) # (!\FD|id_ex_reg|inAlu\(3) & (!\FD|ULA|soma[2]~5\)))) # (!\FD|mux_Banco_Ula|saida[3]~3_combout\ & ((\FD|id_ex_reg|inAlu\(3) & 
-- (!\FD|ULA|soma[2]~5\)) # (!\FD|id_ex_reg|inAlu\(3) & ((\FD|ULA|soma[2]~5\) # (GND)))))
-- \FD|ULA|soma[3]~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~3_combout\ & (!\FD|id_ex_reg|inAlu\(3) & !\FD|ULA|soma[2]~5\)) # (!\FD|mux_Banco_Ula|saida[3]~3_combout\ & ((!\FD|ULA|soma[2]~5\) # (!\FD|id_ex_reg|inAlu\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~3_combout\,
	datab => \FD|id_ex_reg|inAlu\(3),
	datad => VCC,
	cin => \FD|ULA|soma[2]~5\,
	combout => \FD|ULA|soma[3]~6_combout\,
	cout => \FD|ULA|soma[3]~7\);

-- Location: LCCOMB_X61_Y37_N8
\FD|ULA|soma[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[4]~8_combout\ = ((\FD|id_ex_reg|inAlu\(4) $ (\FD|mux_Banco_Ula|saida[4]~31_combout\ $ (!\FD|ULA|soma[3]~7\)))) # (GND)
-- \FD|ULA|soma[4]~9\ = CARRY((\FD|id_ex_reg|inAlu\(4) & ((\FD|mux_Banco_Ula|saida[4]~31_combout\) # (!\FD|ULA|soma[3]~7\))) # (!\FD|id_ex_reg|inAlu\(4) & (\FD|mux_Banco_Ula|saida[4]~31_combout\ & !\FD|ULA|soma[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(4),
	datab => \FD|mux_Banco_Ula|saida[4]~31_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[3]~7\,
	combout => \FD|ULA|soma[4]~8_combout\,
	cout => \FD|ULA|soma[4]~9\);

-- Location: LCCOMB_X61_Y37_N10
\FD|ULA|soma[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[5]~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((\FD|id_ex_reg|inAlu\(5) & (\FD|ULA|soma[4]~9\ & VCC)) # (!\FD|id_ex_reg|inAlu\(5) & (!\FD|ULA|soma[4]~9\)))) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((\FD|id_ex_reg|inAlu\(5) & 
-- (!\FD|ULA|soma[4]~9\)) # (!\FD|id_ex_reg|inAlu\(5) & ((\FD|ULA|soma[4]~9\) # (GND)))))
-- \FD|ULA|soma[5]~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~30_combout\ & (!\FD|id_ex_reg|inAlu\(5) & !\FD|ULA|soma[4]~9\)) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((!\FD|ULA|soma[4]~9\) # (!\FD|id_ex_reg|inAlu\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~30_combout\,
	datab => \FD|id_ex_reg|inAlu\(5),
	datad => VCC,
	cin => \FD|ULA|soma[4]~9\,
	combout => \FD|ULA|soma[5]~10_combout\,
	cout => \FD|ULA|soma[5]~11\);

-- Location: LCCOMB_X61_Y37_N12
\FD|ULA|soma[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[6]~12_combout\ = ((\FD|id_ex_reg|inAlu\(6) $ (\FD|mux_Banco_Ula|saida[6]~29_combout\ $ (!\FD|ULA|soma[5]~11\)))) # (GND)
-- \FD|ULA|soma[6]~13\ = CARRY((\FD|id_ex_reg|inAlu\(6) & ((\FD|mux_Banco_Ula|saida[6]~29_combout\) # (!\FD|ULA|soma[5]~11\))) # (!\FD|id_ex_reg|inAlu\(6) & (\FD|mux_Banco_Ula|saida[6]~29_combout\ & !\FD|ULA|soma[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(6),
	datab => \FD|mux_Banco_Ula|saida[6]~29_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[5]~11\,
	combout => \FD|ULA|soma[6]~12_combout\,
	cout => \FD|ULA|soma[6]~13\);

-- Location: LCCOMB_X61_Y37_N14
\FD|ULA|soma[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[7]~14_combout\ = (\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((\FD|id_ex_reg|inAlu\(7) & (\FD|ULA|soma[6]~13\ & VCC)) # (!\FD|id_ex_reg|inAlu\(7) & (!\FD|ULA|soma[6]~13\)))) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((\FD|id_ex_reg|inAlu\(7) 
-- & (!\FD|ULA|soma[6]~13\)) # (!\FD|id_ex_reg|inAlu\(7) & ((\FD|ULA|soma[6]~13\) # (GND)))))
-- \FD|ULA|soma[7]~15\ = CARRY((\FD|mux_Banco_Ula|saida[7]~28_combout\ & (!\FD|id_ex_reg|inAlu\(7) & !\FD|ULA|soma[6]~13\)) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((!\FD|ULA|soma[6]~13\) # (!\FD|id_ex_reg|inAlu\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~28_combout\,
	datab => \FD|id_ex_reg|inAlu\(7),
	datad => VCC,
	cin => \FD|ULA|soma[6]~13\,
	combout => \FD|ULA|soma[7]~14_combout\,
	cout => \FD|ULA|soma[7]~15\);

-- Location: LCCOMB_X61_Y37_N16
\FD|ULA|soma[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[8]~16_combout\ = ((\FD|id_ex_reg|inAlu\(8) $ (\FD|mux_Banco_Ula|saida[8]~27_combout\ $ (!\FD|ULA|soma[7]~15\)))) # (GND)
-- \FD|ULA|soma[8]~17\ = CARRY((\FD|id_ex_reg|inAlu\(8) & ((\FD|mux_Banco_Ula|saida[8]~27_combout\) # (!\FD|ULA|soma[7]~15\))) # (!\FD|id_ex_reg|inAlu\(8) & (\FD|mux_Banco_Ula|saida[8]~27_combout\ & !\FD|ULA|soma[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(8),
	datab => \FD|mux_Banco_Ula|saida[8]~27_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[7]~15\,
	combout => \FD|ULA|soma[8]~16_combout\,
	cout => \FD|ULA|soma[8]~17\);

-- Location: LCCOMB_X61_Y37_N18
\FD|ULA|soma[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[9]~18_combout\ = (\FD|id_ex_reg|inAlu\(9) & ((\FD|mux_Banco_Ula|saida[9]~26_combout\ & (\FD|ULA|soma[8]~17\ & VCC)) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & (!\FD|ULA|soma[8]~17\)))) # (!\FD|id_ex_reg|inAlu\(9) & 
-- ((\FD|mux_Banco_Ula|saida[9]~26_combout\ & (!\FD|ULA|soma[8]~17\)) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & ((\FD|ULA|soma[8]~17\) # (GND)))))
-- \FD|ULA|soma[9]~19\ = CARRY((\FD|id_ex_reg|inAlu\(9) & (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & !\FD|ULA|soma[8]~17\)) # (!\FD|id_ex_reg|inAlu\(9) & ((!\FD|ULA|soma[8]~17\) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(9),
	datab => \FD|mux_Banco_Ula|saida[9]~26_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[8]~17\,
	combout => \FD|ULA|soma[9]~18_combout\,
	cout => \FD|ULA|soma[9]~19\);

-- Location: LCCOMB_X61_Y37_N20
\FD|ULA|soma[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[10]~20_combout\ = ((\FD|mux_Banco_Ula|saida[10]~25_combout\ $ (\FD|id_ex_reg|inAlu\(10) $ (!\FD|ULA|soma[9]~19\)))) # (GND)
-- \FD|ULA|soma[10]~21\ = CARRY((\FD|mux_Banco_Ula|saida[10]~25_combout\ & ((\FD|id_ex_reg|inAlu\(10)) # (!\FD|ULA|soma[9]~19\))) # (!\FD|mux_Banco_Ula|saida[10]~25_combout\ & (\FD|id_ex_reg|inAlu\(10) & !\FD|ULA|soma[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[10]~25_combout\,
	datab => \FD|id_ex_reg|inAlu\(10),
	datad => VCC,
	cin => \FD|ULA|soma[9]~19\,
	combout => \FD|ULA|soma[10]~20_combout\,
	cout => \FD|ULA|soma[10]~21\);

-- Location: LCCOMB_X61_Y37_N22
\FD|ULA|soma[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[11]~22_combout\ = (\FD|mux_Banco_Ula|saida[11]~24_combout\ & ((\FD|id_ex_reg|inAlu\(11) & (\FD|ULA|soma[10]~21\ & VCC)) # (!\FD|id_ex_reg|inAlu\(11) & (!\FD|ULA|soma[10]~21\)))) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(11) & (!\FD|ULA|soma[10]~21\)) # (!\FD|id_ex_reg|inAlu\(11) & ((\FD|ULA|soma[10]~21\) # (GND)))))
-- \FD|ULA|soma[11]~23\ = CARRY((\FD|mux_Banco_Ula|saida[11]~24_combout\ & (!\FD|id_ex_reg|inAlu\(11) & !\FD|ULA|soma[10]~21\)) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & ((!\FD|ULA|soma[10]~21\) # (!\FD|id_ex_reg|inAlu\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~24_combout\,
	datab => \FD|id_ex_reg|inAlu\(11),
	datad => VCC,
	cin => \FD|ULA|soma[10]~21\,
	combout => \FD|ULA|soma[11]~22_combout\,
	cout => \FD|ULA|soma[11]~23\);

-- Location: LCCOMB_X61_Y37_N24
\FD|ULA|soma[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[12]~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~23_combout\ $ (\FD|id_ex_reg|inAlu\(12) $ (!\FD|ULA|soma[11]~23\)))) # (GND)
-- \FD|ULA|soma[12]~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~23_combout\ & ((\FD|id_ex_reg|inAlu\(12)) # (!\FD|ULA|soma[11]~23\))) # (!\FD|mux_Banco_Ula|saida[12]~23_combout\ & (\FD|id_ex_reg|inAlu\(12) & !\FD|ULA|soma[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~23_combout\,
	datab => \FD|id_ex_reg|inAlu\(12),
	datad => VCC,
	cin => \FD|ULA|soma[11]~23\,
	combout => \FD|ULA|soma[12]~24_combout\,
	cout => \FD|ULA|soma[12]~25\);

-- Location: LCCOMB_X61_Y37_N26
\FD|ULA|soma[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[13]~26_combout\ = (\FD|mux_Banco_Ula|saida[13]~22_combout\ & ((\FD|id_ex_reg|inAlu\(13) & (\FD|ULA|soma[12]~25\ & VCC)) # (!\FD|id_ex_reg|inAlu\(13) & (!\FD|ULA|soma[12]~25\)))) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(13) & (!\FD|ULA|soma[12]~25\)) # (!\FD|id_ex_reg|inAlu\(13) & ((\FD|ULA|soma[12]~25\) # (GND)))))
-- \FD|ULA|soma[13]~27\ = CARRY((\FD|mux_Banco_Ula|saida[13]~22_combout\ & (!\FD|id_ex_reg|inAlu\(13) & !\FD|ULA|soma[12]~25\)) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & ((!\FD|ULA|soma[12]~25\) # (!\FD|id_ex_reg|inAlu\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~22_combout\,
	datab => \FD|id_ex_reg|inAlu\(13),
	datad => VCC,
	cin => \FD|ULA|soma[12]~25\,
	combout => \FD|ULA|soma[13]~26_combout\,
	cout => \FD|ULA|soma[13]~27\);

-- Location: LCCOMB_X61_Y37_N28
\FD|ULA|soma[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[14]~28_combout\ = ((\FD|id_ex_reg|inAlu\(14) $ (\FD|mux_Banco_Ula|saida[14]~21_combout\ $ (!\FD|ULA|soma[13]~27\)))) # (GND)
-- \FD|ULA|soma[14]~29\ = CARRY((\FD|id_ex_reg|inAlu\(14) & ((\FD|mux_Banco_Ula|saida[14]~21_combout\) # (!\FD|ULA|soma[13]~27\))) # (!\FD|id_ex_reg|inAlu\(14) & (\FD|mux_Banco_Ula|saida[14]~21_combout\ & !\FD|ULA|soma[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(14),
	datab => \FD|mux_Banco_Ula|saida[14]~21_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[13]~27\,
	combout => \FD|ULA|soma[14]~28_combout\,
	cout => \FD|ULA|soma[14]~29\);

-- Location: LCCOMB_X61_Y37_N30
\FD|ULA|soma[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[15]~30_combout\ = (\FD|id_ex_reg|inAlu\(15) & ((\FD|mux_Banco_Ula|saida[15]~20_combout\ & (\FD|ULA|soma[14]~29\ & VCC)) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & (!\FD|ULA|soma[14]~29\)))) # (!\FD|id_ex_reg|inAlu\(15) & 
-- ((\FD|mux_Banco_Ula|saida[15]~20_combout\ & (!\FD|ULA|soma[14]~29\)) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & ((\FD|ULA|soma[14]~29\) # (GND)))))
-- \FD|ULA|soma[15]~31\ = CARRY((\FD|id_ex_reg|inAlu\(15) & (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & !\FD|ULA|soma[14]~29\)) # (!\FD|id_ex_reg|inAlu\(15) & ((!\FD|ULA|soma[14]~29\) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(15),
	datab => \FD|mux_Banco_Ula|saida[15]~20_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[14]~29\,
	combout => \FD|ULA|soma[15]~30_combout\,
	cout => \FD|ULA|soma[15]~31\);

-- Location: LCCOMB_X61_Y36_N0
\FD|ULA|soma[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[16]~32_combout\ = ((\FD|mux_Banco_Ula|saida[16]~19_combout\ $ (\FD|id_ex_reg|inAlu\(16) $ (!\FD|ULA|soma[15]~31\)))) # (GND)
-- \FD|ULA|soma[16]~33\ = CARRY((\FD|mux_Banco_Ula|saida[16]~19_combout\ & ((\FD|id_ex_reg|inAlu\(16)) # (!\FD|ULA|soma[15]~31\))) # (!\FD|mux_Banco_Ula|saida[16]~19_combout\ & (\FD|id_ex_reg|inAlu\(16) & !\FD|ULA|soma[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[16]~19_combout\,
	datab => \FD|id_ex_reg|inAlu\(16),
	datad => VCC,
	cin => \FD|ULA|soma[15]~31\,
	combout => \FD|ULA|soma[16]~32_combout\,
	cout => \FD|ULA|soma[16]~33\);

-- Location: LCCOMB_X61_Y36_N2
\FD|ULA|soma[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[17]~34_combout\ = (\FD|id_ex_reg|inAlu\(17) & ((\FD|mux_Banco_Ula|saida[17]~18_combout\ & (\FD|ULA|soma[16]~33\ & VCC)) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & (!\FD|ULA|soma[16]~33\)))) # (!\FD|id_ex_reg|inAlu\(17) & 
-- ((\FD|mux_Banco_Ula|saida[17]~18_combout\ & (!\FD|ULA|soma[16]~33\)) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & ((\FD|ULA|soma[16]~33\) # (GND)))))
-- \FD|ULA|soma[17]~35\ = CARRY((\FD|id_ex_reg|inAlu\(17) & (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & !\FD|ULA|soma[16]~33\)) # (!\FD|id_ex_reg|inAlu\(17) & ((!\FD|ULA|soma[16]~33\) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(17),
	datab => \FD|mux_Banco_Ula|saida[17]~18_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[16]~33\,
	combout => \FD|ULA|soma[17]~34_combout\,
	cout => \FD|ULA|soma[17]~35\);

-- Location: LCCOMB_X61_Y36_N4
\FD|ULA|soma[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[18]~36_combout\ = ((\FD|mux_Banco_Ula|saida[18]~17_combout\ $ (\FD|id_ex_reg|inAlu\(18) $ (!\FD|ULA|soma[17]~35\)))) # (GND)
-- \FD|ULA|soma[18]~37\ = CARRY((\FD|mux_Banco_Ula|saida[18]~17_combout\ & ((\FD|id_ex_reg|inAlu\(18)) # (!\FD|ULA|soma[17]~35\))) # (!\FD|mux_Banco_Ula|saida[18]~17_combout\ & (\FD|id_ex_reg|inAlu\(18) & !\FD|ULA|soma[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~17_combout\,
	datab => \FD|id_ex_reg|inAlu\(18),
	datad => VCC,
	cin => \FD|ULA|soma[17]~35\,
	combout => \FD|ULA|soma[18]~36_combout\,
	cout => \FD|ULA|soma[18]~37\);

-- Location: LCCOMB_X61_Y36_N6
\FD|ULA|soma[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[19]~38_combout\ = (\FD|id_ex_reg|inAlu\(19) & ((\FD|mux_Banco_Ula|saida[19]~16_combout\ & (\FD|ULA|soma[18]~37\ & VCC)) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & (!\FD|ULA|soma[18]~37\)))) # (!\FD|id_ex_reg|inAlu\(19) & 
-- ((\FD|mux_Banco_Ula|saida[19]~16_combout\ & (!\FD|ULA|soma[18]~37\)) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & ((\FD|ULA|soma[18]~37\) # (GND)))))
-- \FD|ULA|soma[19]~39\ = CARRY((\FD|id_ex_reg|inAlu\(19) & (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & !\FD|ULA|soma[18]~37\)) # (!\FD|id_ex_reg|inAlu\(19) & ((!\FD|ULA|soma[18]~37\) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(19),
	datab => \FD|mux_Banco_Ula|saida[19]~16_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[18]~37\,
	combout => \FD|ULA|soma[19]~38_combout\,
	cout => \FD|ULA|soma[19]~39\);

-- Location: LCCOMB_X61_Y36_N8
\FD|ULA|soma[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[20]~40_combout\ = ((\FD|id_ex_reg|inAlu\(20) $ (\FD|mux_Banco_Ula|saida[20]~15_combout\ $ (!\FD|ULA|soma[19]~39\)))) # (GND)
-- \FD|ULA|soma[20]~41\ = CARRY((\FD|id_ex_reg|inAlu\(20) & ((\FD|mux_Banco_Ula|saida[20]~15_combout\) # (!\FD|ULA|soma[19]~39\))) # (!\FD|id_ex_reg|inAlu\(20) & (\FD|mux_Banco_Ula|saida[20]~15_combout\ & !\FD|ULA|soma[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(20),
	datab => \FD|mux_Banco_Ula|saida[20]~15_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[19]~39\,
	combout => \FD|ULA|soma[20]~40_combout\,
	cout => \FD|ULA|soma[20]~41\);

-- Location: LCCOMB_X61_Y36_N10
\FD|ULA|soma[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[21]~42_combout\ = (\FD|mux_Banco_Ula|saida[21]~14_combout\ & ((\FD|id_ex_reg|inAlu\(21) & (\FD|ULA|soma[20]~41\ & VCC)) # (!\FD|id_ex_reg|inAlu\(21) & (!\FD|ULA|soma[20]~41\)))) # (!\FD|mux_Banco_Ula|saida[21]~14_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(21) & (!\FD|ULA|soma[20]~41\)) # (!\FD|id_ex_reg|inAlu\(21) & ((\FD|ULA|soma[20]~41\) # (GND)))))
-- \FD|ULA|soma[21]~43\ = CARRY((\FD|mux_Banco_Ula|saida[21]~14_combout\ & (!\FD|id_ex_reg|inAlu\(21) & !\FD|ULA|soma[20]~41\)) # (!\FD|mux_Banco_Ula|saida[21]~14_combout\ & ((!\FD|ULA|soma[20]~41\) # (!\FD|id_ex_reg|inAlu\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~14_combout\,
	datab => \FD|id_ex_reg|inAlu\(21),
	datad => VCC,
	cin => \FD|ULA|soma[20]~41\,
	combout => \FD|ULA|soma[21]~42_combout\,
	cout => \FD|ULA|soma[21]~43\);

-- Location: LCCOMB_X61_Y36_N12
\FD|ULA|soma[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[22]~44_combout\ = ((\FD|mux_Banco_Ula|saida[22]~13_combout\ $ (\FD|id_ex_reg|inAlu\(22) $ (!\FD|ULA|soma[21]~43\)))) # (GND)
-- \FD|ULA|soma[22]~45\ = CARRY((\FD|mux_Banco_Ula|saida[22]~13_combout\ & ((\FD|id_ex_reg|inAlu\(22)) # (!\FD|ULA|soma[21]~43\))) # (!\FD|mux_Banco_Ula|saida[22]~13_combout\ & (\FD|id_ex_reg|inAlu\(22) & !\FD|ULA|soma[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~13_combout\,
	datab => \FD|id_ex_reg|inAlu\(22),
	datad => VCC,
	cin => \FD|ULA|soma[21]~43\,
	combout => \FD|ULA|soma[22]~44_combout\,
	cout => \FD|ULA|soma[22]~45\);

-- Location: LCCOMB_X61_Y36_N14
\FD|ULA|soma[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[23]~46_combout\ = (\FD|mux_Banco_Ula|saida[23]~12_combout\ & ((\FD|id_ex_reg|inAlu\(23) & (\FD|ULA|soma[22]~45\ & VCC)) # (!\FD|id_ex_reg|inAlu\(23) & (!\FD|ULA|soma[22]~45\)))) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(23) & (!\FD|ULA|soma[22]~45\)) # (!\FD|id_ex_reg|inAlu\(23) & ((\FD|ULA|soma[22]~45\) # (GND)))))
-- \FD|ULA|soma[23]~47\ = CARRY((\FD|mux_Banco_Ula|saida[23]~12_combout\ & (!\FD|id_ex_reg|inAlu\(23) & !\FD|ULA|soma[22]~45\)) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & ((!\FD|ULA|soma[22]~45\) # (!\FD|id_ex_reg|inAlu\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~12_combout\,
	datab => \FD|id_ex_reg|inAlu\(23),
	datad => VCC,
	cin => \FD|ULA|soma[22]~45\,
	combout => \FD|ULA|soma[23]~46_combout\,
	cout => \FD|ULA|soma[23]~47\);

-- Location: LCCOMB_X61_Y36_N16
\FD|ULA|soma[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[24]~48_combout\ = ((\FD|id_ex_reg|inAlu\(24) $ (\FD|mux_Banco_Ula|saida[24]~11_combout\ $ (!\FD|ULA|soma[23]~47\)))) # (GND)
-- \FD|ULA|soma[24]~49\ = CARRY((\FD|id_ex_reg|inAlu\(24) & ((\FD|mux_Banco_Ula|saida[24]~11_combout\) # (!\FD|ULA|soma[23]~47\))) # (!\FD|id_ex_reg|inAlu\(24) & (\FD|mux_Banco_Ula|saida[24]~11_combout\ & !\FD|ULA|soma[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(24),
	datab => \FD|mux_Banco_Ula|saida[24]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[23]~47\,
	combout => \FD|ULA|soma[24]~48_combout\,
	cout => \FD|ULA|soma[24]~49\);

-- Location: LCCOMB_X61_Y36_N18
\FD|ULA|soma[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[25]~50_combout\ = (\FD|mux_Banco_Ula|saida[25]~10_combout\ & ((\FD|id_ex_reg|inAlu\(25) & (\FD|ULA|soma[24]~49\ & VCC)) # (!\FD|id_ex_reg|inAlu\(25) & (!\FD|ULA|soma[24]~49\)))) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(25) & (!\FD|ULA|soma[24]~49\)) # (!\FD|id_ex_reg|inAlu\(25) & ((\FD|ULA|soma[24]~49\) # (GND)))))
-- \FD|ULA|soma[25]~51\ = CARRY((\FD|mux_Banco_Ula|saida[25]~10_combout\ & (!\FD|id_ex_reg|inAlu\(25) & !\FD|ULA|soma[24]~49\)) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & ((!\FD|ULA|soma[24]~49\) # (!\FD|id_ex_reg|inAlu\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[25]~10_combout\,
	datab => \FD|id_ex_reg|inAlu\(25),
	datad => VCC,
	cin => \FD|ULA|soma[24]~49\,
	combout => \FD|ULA|soma[25]~50_combout\,
	cout => \FD|ULA|soma[25]~51\);

-- Location: LCCOMB_X61_Y36_N20
\FD|ULA|soma[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[26]~52_combout\ = ((\FD|id_ex_reg|inAlu\(26) $ (\FD|mux_Banco_Ula|saida[26]~9_combout\ $ (!\FD|ULA|soma[25]~51\)))) # (GND)
-- \FD|ULA|soma[26]~53\ = CARRY((\FD|id_ex_reg|inAlu\(26) & ((\FD|mux_Banco_Ula|saida[26]~9_combout\) # (!\FD|ULA|soma[25]~51\))) # (!\FD|id_ex_reg|inAlu\(26) & (\FD|mux_Banco_Ula|saida[26]~9_combout\ & !\FD|ULA|soma[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(26),
	datab => \FD|mux_Banco_Ula|saida[26]~9_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[25]~51\,
	combout => \FD|ULA|soma[26]~52_combout\,
	cout => \FD|ULA|soma[26]~53\);

-- Location: LCCOMB_X61_Y36_N22
\FD|ULA|soma[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[27]~54_combout\ = (\FD|id_ex_reg|inAlu\(27) & ((\FD|mux_Banco_Ula|saida[27]~8_combout\ & (\FD|ULA|soma[26]~53\ & VCC)) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & (!\FD|ULA|soma[26]~53\)))) # (!\FD|id_ex_reg|inAlu\(27) & 
-- ((\FD|mux_Banco_Ula|saida[27]~8_combout\ & (!\FD|ULA|soma[26]~53\)) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & ((\FD|ULA|soma[26]~53\) # (GND)))))
-- \FD|ULA|soma[27]~55\ = CARRY((\FD|id_ex_reg|inAlu\(27) & (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & !\FD|ULA|soma[26]~53\)) # (!\FD|id_ex_reg|inAlu\(27) & ((!\FD|ULA|soma[26]~53\) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(27),
	datab => \FD|mux_Banco_Ula|saida[27]~8_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[26]~53\,
	combout => \FD|ULA|soma[27]~54_combout\,
	cout => \FD|ULA|soma[27]~55\);

-- Location: LCCOMB_X61_Y36_N24
\FD|ULA|soma[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[28]~56_combout\ = ((\FD|id_ex_reg|inAlu\(28) $ (\FD|mux_Banco_Ula|saida[28]~7_combout\ $ (!\FD|ULA|soma[27]~55\)))) # (GND)
-- \FD|ULA|soma[28]~57\ = CARRY((\FD|id_ex_reg|inAlu\(28) & ((\FD|mux_Banco_Ula|saida[28]~7_combout\) # (!\FD|ULA|soma[27]~55\))) # (!\FD|id_ex_reg|inAlu\(28) & (\FD|mux_Banco_Ula|saida[28]~7_combout\ & !\FD|ULA|soma[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(28),
	datab => \FD|mux_Banco_Ula|saida[28]~7_combout\,
	datad => VCC,
	cin => \FD|ULA|soma[27]~55\,
	combout => \FD|ULA|soma[28]~56_combout\,
	cout => \FD|ULA|soma[28]~57\);

-- Location: LCCOMB_X61_Y36_N26
\FD|ULA|soma[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[29]~58_combout\ = (\FD|mux_Banco_Ula|saida[29]~6_combout\ & ((\FD|id_ex_reg|inAlu\(29) & (\FD|ULA|soma[28]~57\ & VCC)) # (!\FD|id_ex_reg|inAlu\(29) & (!\FD|ULA|soma[28]~57\)))) # (!\FD|mux_Banco_Ula|saida[29]~6_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(29) & (!\FD|ULA|soma[28]~57\)) # (!\FD|id_ex_reg|inAlu\(29) & ((\FD|ULA|soma[28]~57\) # (GND)))))
-- \FD|ULA|soma[29]~59\ = CARRY((\FD|mux_Banco_Ula|saida[29]~6_combout\ & (!\FD|id_ex_reg|inAlu\(29) & !\FD|ULA|soma[28]~57\)) # (!\FD|mux_Banco_Ula|saida[29]~6_combout\ & ((!\FD|ULA|soma[28]~57\) # (!\FD|id_ex_reg|inAlu\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~6_combout\,
	datab => \FD|id_ex_reg|inAlu\(29),
	datad => VCC,
	cin => \FD|ULA|soma[28]~57\,
	combout => \FD|ULA|soma[29]~58_combout\,
	cout => \FD|ULA|soma[29]~59\);

-- Location: LCCOMB_X61_Y36_N28
\FD|ULA|soma[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[30]~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~5_combout\ $ (\FD|id_ex_reg|inAlu\(30) $ (!\FD|ULA|soma[29]~59\)))) # (GND)
-- \FD|ULA|soma[30]~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~5_combout\ & ((\FD|id_ex_reg|inAlu\(30)) # (!\FD|ULA|soma[29]~59\))) # (!\FD|mux_Banco_Ula|saida[30]~5_combout\ & (\FD|id_ex_reg|inAlu\(30) & !\FD|ULA|soma[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~5_combout\,
	datab => \FD|id_ex_reg|inAlu\(30),
	datad => VCC,
	cin => \FD|ULA|soma[29]~59\,
	combout => \FD|ULA|soma[30]~60_combout\,
	cout => \FD|ULA|soma[30]~61\);

-- Location: LCCOMB_X61_Y36_N30
\FD|ULA|soma[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|soma[31]~62_combout\ = \FD|mux_Banco_Ula|saida[31]~4_combout\ $ (\FD|ULA|soma[30]~61\ $ (\FD|id_ex_reg|inAlu\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[31]~4_combout\,
	datad => \FD|id_ex_reg|inAlu\(31),
	cin => \FD|ULA|soma[30]~61\,
	combout => \FD|ULA|soma[31]~62_combout\);

-- Location: LCCOMB_X62_Y38_N8
\FD|ULA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~0_combout\ = (\FD|ULA|soma[31]~62_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|soma[31]~62_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y37_N0
\FD|ULA|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~0_combout\ = (\FD|mux_Banco_Ula|saida[0]~2_combout\ & (\FD|id_ex_reg|inAlu\(0) $ (VCC))) # (!\FD|mux_Banco_Ula|saida[0]~2_combout\ & ((\FD|id_ex_reg|inAlu\(0)) # (GND)))
-- \FD|ULA|Add1~1\ = CARRY((\FD|id_ex_reg|inAlu\(0)) # (!\FD|mux_Banco_Ula|saida[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[0]~2_combout\,
	datab => \FD|id_ex_reg|inAlu\(0),
	datad => VCC,
	combout => \FD|ULA|Add1~0_combout\,
	cout => \FD|ULA|Add1~1\);

-- Location: LCCOMB_X60_Y37_N2
\FD|ULA|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~2_combout\ = (\FD|id_ex_reg|inAlu\(1) & ((\FD|mux_Banco_Ula|saida[1]~1_combout\ & (!\FD|ULA|Add1~1\)) # (!\FD|mux_Banco_Ula|saida[1]~1_combout\ & (\FD|ULA|Add1~1\ & VCC)))) # (!\FD|id_ex_reg|inAlu\(1) & ((\FD|mux_Banco_Ula|saida[1]~1_combout\ 
-- & ((\FD|ULA|Add1~1\) # (GND))) # (!\FD|mux_Banco_Ula|saida[1]~1_combout\ & (!\FD|ULA|Add1~1\))))
-- \FD|ULA|Add1~3\ = CARRY((\FD|id_ex_reg|inAlu\(1) & (\FD|mux_Banco_Ula|saida[1]~1_combout\ & !\FD|ULA|Add1~1\)) # (!\FD|id_ex_reg|inAlu\(1) & ((\FD|mux_Banco_Ula|saida[1]~1_combout\) # (!\FD|ULA|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(1),
	datab => \FD|mux_Banco_Ula|saida[1]~1_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~1\,
	combout => \FD|ULA|Add1~2_combout\,
	cout => \FD|ULA|Add1~3\);

-- Location: LCCOMB_X60_Y37_N4
\FD|ULA|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~4_combout\ = ((\FD|id_ex_reg|inAlu\(2) $ (\FD|mux_Banco_Ula|saida[2]~0_combout\ $ (\FD|ULA|Add1~3\)))) # (GND)
-- \FD|ULA|Add1~5\ = CARRY((\FD|id_ex_reg|inAlu\(2) & ((!\FD|ULA|Add1~3\) # (!\FD|mux_Banco_Ula|saida[2]~0_combout\))) # (!\FD|id_ex_reg|inAlu\(2) & (!\FD|mux_Banco_Ula|saida[2]~0_combout\ & !\FD|ULA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(2),
	datab => \FD|mux_Banco_Ula|saida[2]~0_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~3\,
	combout => \FD|ULA|Add1~4_combout\,
	cout => \FD|ULA|Add1~5\);

-- Location: LCCOMB_X60_Y37_N6
\FD|ULA|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~6_combout\ = (\FD|mux_Banco_Ula|saida[3]~3_combout\ & ((\FD|id_ex_reg|inAlu\(3) & (!\FD|ULA|Add1~5\)) # (!\FD|id_ex_reg|inAlu\(3) & ((\FD|ULA|Add1~5\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[3]~3_combout\ & ((\FD|id_ex_reg|inAlu\(3) & 
-- (\FD|ULA|Add1~5\ & VCC)) # (!\FD|id_ex_reg|inAlu\(3) & (!\FD|ULA|Add1~5\))))
-- \FD|ULA|Add1~7\ = CARRY((\FD|mux_Banco_Ula|saida[3]~3_combout\ & ((!\FD|ULA|Add1~5\) # (!\FD|id_ex_reg|inAlu\(3)))) # (!\FD|mux_Banco_Ula|saida[3]~3_combout\ & (!\FD|id_ex_reg|inAlu\(3) & !\FD|ULA|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[3]~3_combout\,
	datab => \FD|id_ex_reg|inAlu\(3),
	datad => VCC,
	cin => \FD|ULA|Add1~5\,
	combout => \FD|ULA|Add1~6_combout\,
	cout => \FD|ULA|Add1~7\);

-- Location: LCCOMB_X60_Y37_N8
\FD|ULA|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~8_combout\ = ((\FD|mux_Banco_Ula|saida[4]~31_combout\ $ (\FD|id_ex_reg|inAlu\(4) $ (\FD|ULA|Add1~7\)))) # (GND)
-- \FD|ULA|Add1~9\ = CARRY((\FD|mux_Banco_Ula|saida[4]~31_combout\ & (\FD|id_ex_reg|inAlu\(4) & !\FD|ULA|Add1~7\)) # (!\FD|mux_Banco_Ula|saida[4]~31_combout\ & ((\FD|id_ex_reg|inAlu\(4)) # (!\FD|ULA|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[4]~31_combout\,
	datab => \FD|id_ex_reg|inAlu\(4),
	datad => VCC,
	cin => \FD|ULA|Add1~7\,
	combout => \FD|ULA|Add1~8_combout\,
	cout => \FD|ULA|Add1~9\);

-- Location: LCCOMB_X60_Y37_N10
\FD|ULA|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~10_combout\ = (\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((\FD|id_ex_reg|inAlu\(5) & (!\FD|ULA|Add1~9\)) # (!\FD|id_ex_reg|inAlu\(5) & ((\FD|ULA|Add1~9\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((\FD|id_ex_reg|inAlu\(5) & 
-- (\FD|ULA|Add1~9\ & VCC)) # (!\FD|id_ex_reg|inAlu\(5) & (!\FD|ULA|Add1~9\))))
-- \FD|ULA|Add1~11\ = CARRY((\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((!\FD|ULA|Add1~9\) # (!\FD|id_ex_reg|inAlu\(5)))) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & (!\FD|id_ex_reg|inAlu\(5) & !\FD|ULA|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~30_combout\,
	datab => \FD|id_ex_reg|inAlu\(5),
	datad => VCC,
	cin => \FD|ULA|Add1~9\,
	combout => \FD|ULA|Add1~10_combout\,
	cout => \FD|ULA|Add1~11\);

-- Location: LCCOMB_X60_Y37_N12
\FD|ULA|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~12_combout\ = ((\FD|id_ex_reg|inAlu\(6) $ (\FD|mux_Banco_Ula|saida[6]~29_combout\ $ (\FD|ULA|Add1~11\)))) # (GND)
-- \FD|ULA|Add1~13\ = CARRY((\FD|id_ex_reg|inAlu\(6) & ((!\FD|ULA|Add1~11\) # (!\FD|mux_Banco_Ula|saida[6]~29_combout\))) # (!\FD|id_ex_reg|inAlu\(6) & (!\FD|mux_Banco_Ula|saida[6]~29_combout\ & !\FD|ULA|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(6),
	datab => \FD|mux_Banco_Ula|saida[6]~29_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~11\,
	combout => \FD|ULA|Add1~12_combout\,
	cout => \FD|ULA|Add1~13\);

-- Location: LCCOMB_X60_Y37_N14
\FD|ULA|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~14_combout\ = (\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((\FD|id_ex_reg|inAlu\(7) & (!\FD|ULA|Add1~13\)) # (!\FD|id_ex_reg|inAlu\(7) & ((\FD|ULA|Add1~13\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((\FD|id_ex_reg|inAlu\(7) & 
-- (\FD|ULA|Add1~13\ & VCC)) # (!\FD|id_ex_reg|inAlu\(7) & (!\FD|ULA|Add1~13\))))
-- \FD|ULA|Add1~15\ = CARRY((\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((!\FD|ULA|Add1~13\) # (!\FD|id_ex_reg|inAlu\(7)))) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & (!\FD|id_ex_reg|inAlu\(7) & !\FD|ULA|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~28_combout\,
	datab => \FD|id_ex_reg|inAlu\(7),
	datad => VCC,
	cin => \FD|ULA|Add1~13\,
	combout => \FD|ULA|Add1~14_combout\,
	cout => \FD|ULA|Add1~15\);

-- Location: LCCOMB_X60_Y37_N16
\FD|ULA|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~16_combout\ = ((\FD|mux_Banco_Ula|saida[8]~27_combout\ $ (\FD|id_ex_reg|inAlu\(8) $ (\FD|ULA|Add1~15\)))) # (GND)
-- \FD|ULA|Add1~17\ = CARRY((\FD|mux_Banco_Ula|saida[8]~27_combout\ & (\FD|id_ex_reg|inAlu\(8) & !\FD|ULA|Add1~15\)) # (!\FD|mux_Banco_Ula|saida[8]~27_combout\ & ((\FD|id_ex_reg|inAlu\(8)) # (!\FD|ULA|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[8]~27_combout\,
	datab => \FD|id_ex_reg|inAlu\(8),
	datad => VCC,
	cin => \FD|ULA|Add1~15\,
	combout => \FD|ULA|Add1~16_combout\,
	cout => \FD|ULA|Add1~17\);

-- Location: LCCOMB_X60_Y37_N18
\FD|ULA|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~18_combout\ = (\FD|mux_Banco_Ula|saida[9]~26_combout\ & ((\FD|id_ex_reg|inAlu\(9) & (!\FD|ULA|Add1~17\)) # (!\FD|id_ex_reg|inAlu\(9) & ((\FD|ULA|Add1~17\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & ((\FD|id_ex_reg|inAlu\(9) & 
-- (\FD|ULA|Add1~17\ & VCC)) # (!\FD|id_ex_reg|inAlu\(9) & (!\FD|ULA|Add1~17\))))
-- \FD|ULA|Add1~19\ = CARRY((\FD|mux_Banco_Ula|saida[9]~26_combout\ & ((!\FD|ULA|Add1~17\) # (!\FD|id_ex_reg|inAlu\(9)))) # (!\FD|mux_Banco_Ula|saida[9]~26_combout\ & (!\FD|id_ex_reg|inAlu\(9) & !\FD|ULA|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[9]~26_combout\,
	datab => \FD|id_ex_reg|inAlu\(9),
	datad => VCC,
	cin => \FD|ULA|Add1~17\,
	combout => \FD|ULA|Add1~18_combout\,
	cout => \FD|ULA|Add1~19\);

-- Location: LCCOMB_X60_Y37_N20
\FD|ULA|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~20_combout\ = ((\FD|id_ex_reg|inAlu\(10) $ (\FD|mux_Banco_Ula|saida[10]~25_combout\ $ (\FD|ULA|Add1~19\)))) # (GND)
-- \FD|ULA|Add1~21\ = CARRY((\FD|id_ex_reg|inAlu\(10) & ((!\FD|ULA|Add1~19\) # (!\FD|mux_Banco_Ula|saida[10]~25_combout\))) # (!\FD|id_ex_reg|inAlu\(10) & (!\FD|mux_Banco_Ula|saida[10]~25_combout\ & !\FD|ULA|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(10),
	datab => \FD|mux_Banco_Ula|saida[10]~25_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~19\,
	combout => \FD|ULA|Add1~20_combout\,
	cout => \FD|ULA|Add1~21\);

-- Location: LCCOMB_X60_Y37_N22
\FD|ULA|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~22_combout\ = (\FD|mux_Banco_Ula|saida[11]~24_combout\ & ((\FD|id_ex_reg|inAlu\(11) & (!\FD|ULA|Add1~21\)) # (!\FD|id_ex_reg|inAlu\(11) & ((\FD|ULA|Add1~21\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & ((\FD|id_ex_reg|inAlu\(11) 
-- & (\FD|ULA|Add1~21\ & VCC)) # (!\FD|id_ex_reg|inAlu\(11) & (!\FD|ULA|Add1~21\))))
-- \FD|ULA|Add1~23\ = CARRY((\FD|mux_Banco_Ula|saida[11]~24_combout\ & ((!\FD|ULA|Add1~21\) # (!\FD|id_ex_reg|inAlu\(11)))) # (!\FD|mux_Banco_Ula|saida[11]~24_combout\ & (!\FD|id_ex_reg|inAlu\(11) & !\FD|ULA|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[11]~24_combout\,
	datab => \FD|id_ex_reg|inAlu\(11),
	datad => VCC,
	cin => \FD|ULA|Add1~21\,
	combout => \FD|ULA|Add1~22_combout\,
	cout => \FD|ULA|Add1~23\);

-- Location: LCCOMB_X60_Y37_N24
\FD|ULA|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~24_combout\ = ((\FD|mux_Banco_Ula|saida[12]~23_combout\ $ (\FD|id_ex_reg|inAlu\(12) $ (\FD|ULA|Add1~23\)))) # (GND)
-- \FD|ULA|Add1~25\ = CARRY((\FD|mux_Banco_Ula|saida[12]~23_combout\ & (\FD|id_ex_reg|inAlu\(12) & !\FD|ULA|Add1~23\)) # (!\FD|mux_Banco_Ula|saida[12]~23_combout\ & ((\FD|id_ex_reg|inAlu\(12)) # (!\FD|ULA|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[12]~23_combout\,
	datab => \FD|id_ex_reg|inAlu\(12),
	datad => VCC,
	cin => \FD|ULA|Add1~23\,
	combout => \FD|ULA|Add1~24_combout\,
	cout => \FD|ULA|Add1~25\);

-- Location: LCCOMB_X60_Y37_N26
\FD|ULA|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~26_combout\ = (\FD|mux_Banco_Ula|saida[13]~22_combout\ & ((\FD|id_ex_reg|inAlu\(13) & (!\FD|ULA|Add1~25\)) # (!\FD|id_ex_reg|inAlu\(13) & ((\FD|ULA|Add1~25\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & ((\FD|id_ex_reg|inAlu\(13) 
-- & (\FD|ULA|Add1~25\ & VCC)) # (!\FD|id_ex_reg|inAlu\(13) & (!\FD|ULA|Add1~25\))))
-- \FD|ULA|Add1~27\ = CARRY((\FD|mux_Banco_Ula|saida[13]~22_combout\ & ((!\FD|ULA|Add1~25\) # (!\FD|id_ex_reg|inAlu\(13)))) # (!\FD|mux_Banco_Ula|saida[13]~22_combout\ & (!\FD|id_ex_reg|inAlu\(13) & !\FD|ULA|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[13]~22_combout\,
	datab => \FD|id_ex_reg|inAlu\(13),
	datad => VCC,
	cin => \FD|ULA|Add1~25\,
	combout => \FD|ULA|Add1~26_combout\,
	cout => \FD|ULA|Add1~27\);

-- Location: LCCOMB_X60_Y37_N28
\FD|ULA|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~28_combout\ = ((\FD|mux_Banco_Ula|saida[14]~21_combout\ $ (\FD|id_ex_reg|inAlu\(14) $ (\FD|ULA|Add1~27\)))) # (GND)
-- \FD|ULA|Add1~29\ = CARRY((\FD|mux_Banco_Ula|saida[14]~21_combout\ & (\FD|id_ex_reg|inAlu\(14) & !\FD|ULA|Add1~27\)) # (!\FD|mux_Banco_Ula|saida[14]~21_combout\ & ((\FD|id_ex_reg|inAlu\(14)) # (!\FD|ULA|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~21_combout\,
	datab => \FD|id_ex_reg|inAlu\(14),
	datad => VCC,
	cin => \FD|ULA|Add1~27\,
	combout => \FD|ULA|Add1~28_combout\,
	cout => \FD|ULA|Add1~29\);

-- Location: LCCOMB_X60_Y37_N30
\FD|ULA|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~30_combout\ = (\FD|mux_Banco_Ula|saida[15]~20_combout\ & ((\FD|id_ex_reg|inAlu\(15) & (!\FD|ULA|Add1~29\)) # (!\FD|id_ex_reg|inAlu\(15) & ((\FD|ULA|Add1~29\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & ((\FD|id_ex_reg|inAlu\(15) 
-- & (\FD|ULA|Add1~29\ & VCC)) # (!\FD|id_ex_reg|inAlu\(15) & (!\FD|ULA|Add1~29\))))
-- \FD|ULA|Add1~31\ = CARRY((\FD|mux_Banco_Ula|saida[15]~20_combout\ & ((!\FD|ULA|Add1~29\) # (!\FD|id_ex_reg|inAlu\(15)))) # (!\FD|mux_Banco_Ula|saida[15]~20_combout\ & (!\FD|id_ex_reg|inAlu\(15) & !\FD|ULA|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[15]~20_combout\,
	datab => \FD|id_ex_reg|inAlu\(15),
	datad => VCC,
	cin => \FD|ULA|Add1~29\,
	combout => \FD|ULA|Add1~30_combout\,
	cout => \FD|ULA|Add1~31\);

-- Location: LCCOMB_X60_Y36_N0
\FD|ULA|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~32_combout\ = ((\FD|id_ex_reg|inAlu\(16) $ (\FD|mux_Banco_Ula|saida[16]~19_combout\ $ (\FD|ULA|Add1~31\)))) # (GND)
-- \FD|ULA|Add1~33\ = CARRY((\FD|id_ex_reg|inAlu\(16) & ((!\FD|ULA|Add1~31\) # (!\FD|mux_Banco_Ula|saida[16]~19_combout\))) # (!\FD|id_ex_reg|inAlu\(16) & (!\FD|mux_Banco_Ula|saida[16]~19_combout\ & !\FD|ULA|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(16),
	datab => \FD|mux_Banco_Ula|saida[16]~19_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~31\,
	combout => \FD|ULA|Add1~32_combout\,
	cout => \FD|ULA|Add1~33\);

-- Location: LCCOMB_X60_Y36_N2
\FD|ULA|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~34_combout\ = (\FD|mux_Banco_Ula|saida[17]~18_combout\ & ((\FD|id_ex_reg|inAlu\(17) & (!\FD|ULA|Add1~33\)) # (!\FD|id_ex_reg|inAlu\(17) & ((\FD|ULA|Add1~33\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & ((\FD|id_ex_reg|inAlu\(17) 
-- & (\FD|ULA|Add1~33\ & VCC)) # (!\FD|id_ex_reg|inAlu\(17) & (!\FD|ULA|Add1~33\))))
-- \FD|ULA|Add1~35\ = CARRY((\FD|mux_Banco_Ula|saida[17]~18_combout\ & ((!\FD|ULA|Add1~33\) # (!\FD|id_ex_reg|inAlu\(17)))) # (!\FD|mux_Banco_Ula|saida[17]~18_combout\ & (!\FD|id_ex_reg|inAlu\(17) & !\FD|ULA|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[17]~18_combout\,
	datab => \FD|id_ex_reg|inAlu\(17),
	datad => VCC,
	cin => \FD|ULA|Add1~33\,
	combout => \FD|ULA|Add1~34_combout\,
	cout => \FD|ULA|Add1~35\);

-- Location: LCCOMB_X60_Y36_N4
\FD|ULA|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~36_combout\ = ((\FD|mux_Banco_Ula|saida[18]~17_combout\ $ (\FD|id_ex_reg|inAlu\(18) $ (\FD|ULA|Add1~35\)))) # (GND)
-- \FD|ULA|Add1~37\ = CARRY((\FD|mux_Banco_Ula|saida[18]~17_combout\ & (\FD|id_ex_reg|inAlu\(18) & !\FD|ULA|Add1~35\)) # (!\FD|mux_Banco_Ula|saida[18]~17_combout\ & ((\FD|id_ex_reg|inAlu\(18)) # (!\FD|ULA|Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[18]~17_combout\,
	datab => \FD|id_ex_reg|inAlu\(18),
	datad => VCC,
	cin => \FD|ULA|Add1~35\,
	combout => \FD|ULA|Add1~36_combout\,
	cout => \FD|ULA|Add1~37\);

-- Location: LCCOMB_X60_Y36_N6
\FD|ULA|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~38_combout\ = (\FD|id_ex_reg|inAlu\(19) & ((\FD|mux_Banco_Ula|saida[19]~16_combout\ & (!\FD|ULA|Add1~37\)) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & (\FD|ULA|Add1~37\ & VCC)))) # (!\FD|id_ex_reg|inAlu\(19) & 
-- ((\FD|mux_Banco_Ula|saida[19]~16_combout\ & ((\FD|ULA|Add1~37\) # (GND))) # (!\FD|mux_Banco_Ula|saida[19]~16_combout\ & (!\FD|ULA|Add1~37\))))
-- \FD|ULA|Add1~39\ = CARRY((\FD|id_ex_reg|inAlu\(19) & (\FD|mux_Banco_Ula|saida[19]~16_combout\ & !\FD|ULA|Add1~37\)) # (!\FD|id_ex_reg|inAlu\(19) & ((\FD|mux_Banco_Ula|saida[19]~16_combout\) # (!\FD|ULA|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(19),
	datab => \FD|mux_Banco_Ula|saida[19]~16_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~37\,
	combout => \FD|ULA|Add1~38_combout\,
	cout => \FD|ULA|Add1~39\);

-- Location: LCCOMB_X60_Y36_N8
\FD|ULA|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~40_combout\ = ((\FD|mux_Banco_Ula|saida[20]~15_combout\ $ (\FD|id_ex_reg|inAlu\(20) $ (\FD|ULA|Add1~39\)))) # (GND)
-- \FD|ULA|Add1~41\ = CARRY((\FD|mux_Banco_Ula|saida[20]~15_combout\ & (\FD|id_ex_reg|inAlu\(20) & !\FD|ULA|Add1~39\)) # (!\FD|mux_Banco_Ula|saida[20]~15_combout\ & ((\FD|id_ex_reg|inAlu\(20)) # (!\FD|ULA|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[20]~15_combout\,
	datab => \FD|id_ex_reg|inAlu\(20),
	datad => VCC,
	cin => \FD|ULA|Add1~39\,
	combout => \FD|ULA|Add1~40_combout\,
	cout => \FD|ULA|Add1~41\);

-- Location: LCCOMB_X60_Y36_N10
\FD|ULA|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~42_combout\ = (\FD|mux_Banco_Ula|saida[21]~14_combout\ & ((\FD|id_ex_reg|inAlu\(21) & (!\FD|ULA|Add1~41\)) # (!\FD|id_ex_reg|inAlu\(21) & ((\FD|ULA|Add1~41\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[21]~14_combout\ & ((\FD|id_ex_reg|inAlu\(21) 
-- & (\FD|ULA|Add1~41\ & VCC)) # (!\FD|id_ex_reg|inAlu\(21) & (!\FD|ULA|Add1~41\))))
-- \FD|ULA|Add1~43\ = CARRY((\FD|mux_Banco_Ula|saida[21]~14_combout\ & ((!\FD|ULA|Add1~41\) # (!\FD|id_ex_reg|inAlu\(21)))) # (!\FD|mux_Banco_Ula|saida[21]~14_combout\ & (!\FD|id_ex_reg|inAlu\(21) & !\FD|ULA|Add1~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[21]~14_combout\,
	datab => \FD|id_ex_reg|inAlu\(21),
	datad => VCC,
	cin => \FD|ULA|Add1~41\,
	combout => \FD|ULA|Add1~42_combout\,
	cout => \FD|ULA|Add1~43\);

-- Location: LCCOMB_X60_Y36_N12
\FD|ULA|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~44_combout\ = ((\FD|id_ex_reg|inAlu\(22) $ (\FD|mux_Banco_Ula|saida[22]~13_combout\ $ (\FD|ULA|Add1~43\)))) # (GND)
-- \FD|ULA|Add1~45\ = CARRY((\FD|id_ex_reg|inAlu\(22) & ((!\FD|ULA|Add1~43\) # (!\FD|mux_Banco_Ula|saida[22]~13_combout\))) # (!\FD|id_ex_reg|inAlu\(22) & (!\FD|mux_Banco_Ula|saida[22]~13_combout\ & !\FD|ULA|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(22),
	datab => \FD|mux_Banco_Ula|saida[22]~13_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~43\,
	combout => \FD|ULA|Add1~44_combout\,
	cout => \FD|ULA|Add1~45\);

-- Location: LCCOMB_X60_Y36_N14
\FD|ULA|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~46_combout\ = (\FD|mux_Banco_Ula|saida[23]~12_combout\ & ((\FD|id_ex_reg|inAlu\(23) & (!\FD|ULA|Add1~45\)) # (!\FD|id_ex_reg|inAlu\(23) & ((\FD|ULA|Add1~45\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & ((\FD|id_ex_reg|inAlu\(23) 
-- & (\FD|ULA|Add1~45\ & VCC)) # (!\FD|id_ex_reg|inAlu\(23) & (!\FD|ULA|Add1~45\))))
-- \FD|ULA|Add1~47\ = CARRY((\FD|mux_Banco_Ula|saida[23]~12_combout\ & ((!\FD|ULA|Add1~45\) # (!\FD|id_ex_reg|inAlu\(23)))) # (!\FD|mux_Banco_Ula|saida[23]~12_combout\ & (!\FD|id_ex_reg|inAlu\(23) & !\FD|ULA|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[23]~12_combout\,
	datab => \FD|id_ex_reg|inAlu\(23),
	datad => VCC,
	cin => \FD|ULA|Add1~45\,
	combout => \FD|ULA|Add1~46_combout\,
	cout => \FD|ULA|Add1~47\);

-- Location: LCCOMB_X60_Y36_N16
\FD|ULA|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~48_combout\ = ((\FD|id_ex_reg|inAlu\(24) $ (\FD|mux_Banco_Ula|saida[24]~11_combout\ $ (\FD|ULA|Add1~47\)))) # (GND)
-- \FD|ULA|Add1~49\ = CARRY((\FD|id_ex_reg|inAlu\(24) & ((!\FD|ULA|Add1~47\) # (!\FD|mux_Banco_Ula|saida[24]~11_combout\))) # (!\FD|id_ex_reg|inAlu\(24) & (!\FD|mux_Banco_Ula|saida[24]~11_combout\ & !\FD|ULA|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(24),
	datab => \FD|mux_Banco_Ula|saida[24]~11_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~47\,
	combout => \FD|ULA|Add1~48_combout\,
	cout => \FD|ULA|Add1~49\);

-- Location: LCCOMB_X60_Y36_N18
\FD|ULA|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~50_combout\ = (\FD|id_ex_reg|inAlu\(25) & ((\FD|mux_Banco_Ula|saida[25]~10_combout\ & (!\FD|ULA|Add1~49\)) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & (\FD|ULA|Add1~49\ & VCC)))) # (!\FD|id_ex_reg|inAlu\(25) & 
-- ((\FD|mux_Banco_Ula|saida[25]~10_combout\ & ((\FD|ULA|Add1~49\) # (GND))) # (!\FD|mux_Banco_Ula|saida[25]~10_combout\ & (!\FD|ULA|Add1~49\))))
-- \FD|ULA|Add1~51\ = CARRY((\FD|id_ex_reg|inAlu\(25) & (\FD|mux_Banco_Ula|saida[25]~10_combout\ & !\FD|ULA|Add1~49\)) # (!\FD|id_ex_reg|inAlu\(25) & ((\FD|mux_Banco_Ula|saida[25]~10_combout\) # (!\FD|ULA|Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(25),
	datab => \FD|mux_Banco_Ula|saida[25]~10_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~49\,
	combout => \FD|ULA|Add1~50_combout\,
	cout => \FD|ULA|Add1~51\);

-- Location: LCCOMB_X60_Y36_N20
\FD|ULA|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~52_combout\ = ((\FD|mux_Banco_Ula|saida[26]~9_combout\ $ (\FD|id_ex_reg|inAlu\(26) $ (\FD|ULA|Add1~51\)))) # (GND)
-- \FD|ULA|Add1~53\ = CARRY((\FD|mux_Banco_Ula|saida[26]~9_combout\ & (\FD|id_ex_reg|inAlu\(26) & !\FD|ULA|Add1~51\)) # (!\FD|mux_Banco_Ula|saida[26]~9_combout\ & ((\FD|id_ex_reg|inAlu\(26)) # (!\FD|ULA|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~9_combout\,
	datab => \FD|id_ex_reg|inAlu\(26),
	datad => VCC,
	cin => \FD|ULA|Add1~51\,
	combout => \FD|ULA|Add1~52_combout\,
	cout => \FD|ULA|Add1~53\);

-- Location: LCCOMB_X60_Y36_N22
\FD|ULA|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~54_combout\ = (\FD|id_ex_reg|inAlu\(27) & ((\FD|mux_Banco_Ula|saida[27]~8_combout\ & (!\FD|ULA|Add1~53\)) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & (\FD|ULA|Add1~53\ & VCC)))) # (!\FD|id_ex_reg|inAlu\(27) & 
-- ((\FD|mux_Banco_Ula|saida[27]~8_combout\ & ((\FD|ULA|Add1~53\) # (GND))) # (!\FD|mux_Banco_Ula|saida[27]~8_combout\ & (!\FD|ULA|Add1~53\))))
-- \FD|ULA|Add1~55\ = CARRY((\FD|id_ex_reg|inAlu\(27) & (\FD|mux_Banco_Ula|saida[27]~8_combout\ & !\FD|ULA|Add1~53\)) # (!\FD|id_ex_reg|inAlu\(27) & ((\FD|mux_Banco_Ula|saida[27]~8_combout\) # (!\FD|ULA|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(27),
	datab => \FD|mux_Banco_Ula|saida[27]~8_combout\,
	datad => VCC,
	cin => \FD|ULA|Add1~53\,
	combout => \FD|ULA|Add1~54_combout\,
	cout => \FD|ULA|Add1~55\);

-- Location: LCCOMB_X60_Y36_N24
\FD|ULA|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~56_combout\ = ((\FD|mux_Banco_Ula|saida[28]~7_combout\ $ (\FD|id_ex_reg|inAlu\(28) $ (\FD|ULA|Add1~55\)))) # (GND)
-- \FD|ULA|Add1~57\ = CARRY((\FD|mux_Banco_Ula|saida[28]~7_combout\ & (\FD|id_ex_reg|inAlu\(28) & !\FD|ULA|Add1~55\)) # (!\FD|mux_Banco_Ula|saida[28]~7_combout\ & ((\FD|id_ex_reg|inAlu\(28)) # (!\FD|ULA|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[28]~7_combout\,
	datab => \FD|id_ex_reg|inAlu\(28),
	datad => VCC,
	cin => \FD|ULA|Add1~55\,
	combout => \FD|ULA|Add1~56_combout\,
	cout => \FD|ULA|Add1~57\);

-- Location: LCCOMB_X60_Y36_N26
\FD|ULA|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~58_combout\ = (\FD|mux_Banco_Ula|saida[29]~6_combout\ & ((\FD|id_ex_reg|inAlu\(29) & (!\FD|ULA|Add1~57\)) # (!\FD|id_ex_reg|inAlu\(29) & ((\FD|ULA|Add1~57\) # (GND))))) # (!\FD|mux_Banco_Ula|saida[29]~6_combout\ & ((\FD|id_ex_reg|inAlu\(29) & 
-- (\FD|ULA|Add1~57\ & VCC)) # (!\FD|id_ex_reg|inAlu\(29) & (!\FD|ULA|Add1~57\))))
-- \FD|ULA|Add1~59\ = CARRY((\FD|mux_Banco_Ula|saida[29]~6_combout\ & ((!\FD|ULA|Add1~57\) # (!\FD|id_ex_reg|inAlu\(29)))) # (!\FD|mux_Banco_Ula|saida[29]~6_combout\ & (!\FD|id_ex_reg|inAlu\(29) & !\FD|ULA|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[29]~6_combout\,
	datab => \FD|id_ex_reg|inAlu\(29),
	datad => VCC,
	cin => \FD|ULA|Add1~57\,
	combout => \FD|ULA|Add1~58_combout\,
	cout => \FD|ULA|Add1~59\);

-- Location: LCCOMB_X60_Y36_N28
\FD|ULA|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~60_combout\ = ((\FD|mux_Banco_Ula|saida[30]~5_combout\ $ (\FD|id_ex_reg|inAlu\(30) $ (\FD|ULA|Add1~59\)))) # (GND)
-- \FD|ULA|Add1~61\ = CARRY((\FD|mux_Banco_Ula|saida[30]~5_combout\ & (\FD|id_ex_reg|inAlu\(30) & !\FD|ULA|Add1~59\)) # (!\FD|mux_Banco_Ula|saida[30]~5_combout\ & ((\FD|id_ex_reg|inAlu\(30)) # (!\FD|ULA|Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[30]~5_combout\,
	datab => \FD|id_ex_reg|inAlu\(30),
	datad => VCC,
	cin => \FD|ULA|Add1~59\,
	combout => \FD|ULA|Add1~60_combout\,
	cout => \FD|ULA|Add1~61\);

-- Location: LCCOMB_X60_Y36_N30
\FD|ULA|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Add1~62_combout\ = \FD|mux_Banco_Ula|saida[31]~4_combout\ $ (\FD|ULA|Add1~61\ $ (!\FD|id_ex_reg|inAlu\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|mux_Banco_Ula|saida[31]~4_combout\,
	datad => \FD|id_ex_reg|inAlu\(31),
	cin => \FD|ULA|Add1~61\,
	combout => \FD|ULA|Add1~62_combout\);

-- Location: LCCOMB_X62_Y38_N26
\FD|ULA|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~1_combout\ = (\FD|UCULA|ALUctr[2]~6_combout\) # ((\FD|UCULA|ALUctr[0]~2_combout\ & !\FD|UCULA|ALUctr[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[0]~2_combout\,
	datac => \FD|UCULA|ALUctr[2]~6_combout\,
	datad => \FD|UCULA|ALUctr[1]~4_combout\,
	combout => \FD|ULA|Mux22~1_combout\);

-- Location: LCCOMB_X62_Y38_N10
\FD|ULA|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~1_combout\ = (\FD|ULA|Mux22~1_combout\ & (((\FD|ULA|Add1~62_combout\ & \FD|ULA|Mux22~0_combout\)))) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Mux0~0_combout\) # ((!\FD|ULA|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux0~0_combout\,
	datab => \FD|ULA|Add1~62_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Mux22~0_combout\,
	combout => \FD|ULA|Mux0~1_combout\);

-- Location: LCCOMB_X62_Y38_N28
\FD|ULA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(31) & ((\FD|mux_Banco_Ula|saida[31]~4_combout\) # (!\FD|ULA|Mux0~1_combout\))) # (!\FD|id_ex_reg|inAlu\(31) & (\FD|mux_Banco_Ula|saida[31]~4_combout\ & 
-- !\FD|ULA|Mux0~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(31),
	datab => \FD|mux_Banco_Ula|saida[31]~4_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux0~1_combout\,
	combout => \FD|ULA|Mux0~2_combout\);

-- Location: LCCOMB_X62_Y38_N22
\FD|ULA|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux0~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux0~2_combout\,
	combout => \FD|ULA|Mux0~3_combout\);

-- Location: FF_X62_Y38_N23
\FD|ex_mem_reg|ramAdd[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(31));

-- Location: FF_X63_Y35_N7
\FD|mem_wb_reg|mux_0ent[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(31));

-- Location: FF_X65_Y36_N21
\FD|ex_mem_reg|inregmemwd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(1));

-- Location: LCCOMB_X67_Y35_N2
\FD|ex_mem_reg|inregmemwd[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[2]~feeder_combout\ = \FD|id_ex_reg|inMux\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(2),
	combout => \FD|ex_mem_reg|inregmemwd[2]~feeder_combout\);

-- Location: FF_X67_Y35_N3
\FD|ex_mem_reg|inregmemwd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(2));

-- Location: FF_X65_Y33_N15
\FD|ex_mem_reg|inregmemwd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(3));

-- Location: FF_X62_Y34_N11
\FD|ex_mem_reg|inregmemwd[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(22));

-- Location: FF_X58_Y36_N9
\FD|ex_mem_reg|inregmemwd[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(23));

-- Location: LCCOMB_X61_Y34_N30
\FD|ex_mem_reg|inregmemwd[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[24]~feeder_combout\ = \FD|id_ex_reg|inMux\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(24),
	combout => \FD|ex_mem_reg|inregmemwd[24]~feeder_combout\);

-- Location: FF_X61_Y34_N31
\FD|ex_mem_reg|inregmemwd[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(24));

-- Location: LCCOMB_X61_Y34_N18
\FD|ex_mem_reg|inregmemwd[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[25]~feeder_combout\ = \FD|id_ex_reg|inMux\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(25),
	combout => \FD|ex_mem_reg|inregmemwd[25]~feeder_combout\);

-- Location: FF_X61_Y34_N19
\FD|ex_mem_reg|inregmemwd[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(25));

-- Location: LCCOMB_X63_Y33_N10
\FD|ex_mem_reg|inregmemwd[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[26]~feeder_combout\ = \FD|id_ex_reg|inMux\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(26),
	combout => \FD|ex_mem_reg|inregmemwd[26]~feeder_combout\);

-- Location: FF_X63_Y33_N11
\FD|ex_mem_reg|inregmemwd[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(26));

-- Location: FF_X58_Y36_N1
\FD|ex_mem_reg|inregmemwd[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(27));

-- Location: LCCOMB_X65_Y34_N20
\FD|ex_mem_reg|inregmemwd[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[28]~feeder_combout\ = \FD|id_ex_reg|inMux\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(28),
	combout => \FD|ex_mem_reg|inregmemwd[28]~feeder_combout\);

-- Location: FF_X65_Y34_N21
\FD|ex_mem_reg|inregmemwd[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(28));

-- Location: LCCOMB_X65_Y33_N16
\FD|ex_mem_reg|inregmemwd[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[29]~feeder_combout\ = \FD|id_ex_reg|inMux\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(29),
	combout => \FD|ex_mem_reg|inregmemwd[29]~feeder_combout\);

-- Location: FF_X65_Y33_N17
\FD|ex_mem_reg|inregmemwd[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(29));

-- Location: LCCOMB_X58_Y36_N22
\FD|ex_mem_reg|inregmemwd[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[30]~feeder_combout\ = \FD|id_ex_reg|inMux\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(30),
	combout => \FD|ex_mem_reg|inregmemwd[30]~feeder_combout\);

-- Location: FF_X58_Y36_N23
\FD|ex_mem_reg|inregmemwd[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(30));

-- Location: FF_X65_Y35_N13
\FD|ex_mem_reg|inregmemwd[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(31));

-- Location: M9K_X64_Y36_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \SignalDetector|saida~clkctrl_outclk\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y35_N6
\FD|mux_Ula_Memoria|saida[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[31]~4_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(31),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a31\,
	combout => \FD|mux_Ula_Memoria|saida[31]~4_combout\);

-- Location: FF_X63_Y33_N1
\FD|BR|bancoReg_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[30]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(71));

-- Location: LCCOMB_X62_Y33_N24
\FD|BR|bancoReg_rtl_1_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\);

-- Location: FF_X62_Y33_N25
\FD|BR|bancoReg_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(72));

-- Location: LCCOMB_X62_Y33_N2
\FD|BR|saidaB[30]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~10_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(72) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(72),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[30]~10_combout\);

-- Location: LCCOMB_X63_Y33_N24
\FD|BR|saidaB[30]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[30]~11_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[30]~10_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\)) # (!\FD|BR|saidaB[30]~10_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a30\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(71),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[30]~10_combout\,
	combout => \FD|BR|saidaB[30]~11_combout\);

-- Location: FF_X63_Y33_N25
\FD|id_ex_reg|inMux[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[30]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(30));

-- Location: LCCOMB_X58_Y36_N16
\FD|mux_Banco_Ula|saida[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[30]~5_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inMux\(30),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[30]~5_combout\);

-- Location: LCCOMB_X62_Y36_N24
\FD|ULA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~0_combout\ = (\FD|id_ex_reg|inAlu\(30) & ((\FD|ULA|Mux22~1_combout\) # ((\FD|mux_Banco_Ula|saida[30]~5_combout\ & \FD|ULA|Mux31~9_combout\)))) # (!\FD|id_ex_reg|inAlu\(30) & (\FD|ULA|Mux22~1_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[30]~5_combout\) # (!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(30),
	datab => \FD|mux_Banco_Ula|saida[30]~5_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y36_N10
\FD|ULA|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~1_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux1~0_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux1~0_combout\ & ((\FD|ULA|Add1~60_combout\))) # (!\FD|ULA|Mux1~0_combout\ & (\FD|ULA|soma[30]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[30]~60_combout\,
	datab => \FD|ULA|Add1~60_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux1~0_combout\,
	combout => \FD|ULA|Mux1~1_combout\);

-- Location: LCCOMB_X62_Y36_N26
\FD|ULA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux1~2_combout\ = (\FD|ULA|Mux1~1_combout\ & !\FD|ex_mem_reg|ramAdd[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux1~1_combout\,
	datad => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	combout => \FD|ULA|Mux1~2_combout\);

-- Location: FF_X62_Y36_N27
\FD|ex_mem_reg|ramAdd[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(30));

-- Location: FF_X63_Y36_N27
\FD|mem_wb_reg|mux_0ent[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(30));

-- Location: LCCOMB_X63_Y36_N26
\FD|mux_Ula_Memoria|saida[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[30]~5_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(30),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a30\,
	combout => \FD|mux_Ula_Memoria|saida[30]~5_combout\);

-- Location: LCCOMB_X66_Y36_N12
\FD|BR|bancoReg_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X66_Y36_N13
\FD|BR|bancoReg_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(70));

-- Location: LCCOMB_X65_Y36_N18
\FD|BR|saidaA[29]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~12_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(70) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(70),
	combout => \FD|BR|saidaA[29]~12_combout\);

-- Location: FF_X65_Y36_N19
\FD|BR|bancoReg_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[29]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(69));

-- Location: LCCOMB_X65_Y36_N24
\FD|BR|saidaA[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[29]~13_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[29]~12_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\)) # (!\FD|BR|saidaA[29]~12_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a29\,
	datab => \FD|BR|saidaA[29]~12_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(69),
	combout => \FD|BR|saidaA[29]~13_combout\);

-- Location: FF_X65_Y36_N25
\FD|id_ex_reg|inAlu[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[29]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(29));

-- Location: LCCOMB_X62_Y34_N28
\FD|ULA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inMux\(29),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|ULA|Mux2~1_combout\);

-- Location: LCCOMB_X59_Y36_N24
\FD|ULA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~2_combout\ = (\FD|ULA|Mux31~9_combout\ & (\FD|id_ex_reg|inAlu\(29) $ (!\FD|ULA|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|id_ex_reg|inAlu\(29),
	datad => \FD|ULA|Mux2~1_combout\,
	combout => \FD|ULA|Mux2~2_combout\);

-- Location: LCCOMB_X59_Y36_N14
\FD|ULA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~0_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux22~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~58_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|soma[29]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~58_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|soma[29]~58_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y36_N6
\FD|ULA|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux2~3_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & ((\FD|ULA|Mux2~2_combout\ & (\FD|id_ex_reg|inAlu\(29))) # (!\FD|ULA|Mux2~2_combout\ & ((\FD|ULA|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(29),
	datab => \FD|ULA|Mux2~2_combout\,
	datac => \FD|ULA|Mux2~0_combout\,
	datad => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	combout => \FD|ULA|Mux2~3_combout\);

-- Location: FF_X59_Y36_N7
\FD|ex_mem_reg|ramAdd[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(29));

-- Location: FF_X63_Y36_N13
\FD|mem_wb_reg|mux_0ent[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(29));

-- Location: LCCOMB_X63_Y36_N12
\FD|mux_Ula_Memoria|saida[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[29]~6_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(29),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a29\,
	combout => \FD|mux_Ula_Memoria|saida[29]~6_combout\);

-- Location: LCCOMB_X60_Y35_N16
\FD|BR|saidaA[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[28]~15_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[28]~14_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\))) # (!\FD|BR|saidaA[28]~14_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(67),
	datab => \FD|BR|saidaA[28]~14_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a28\,
	combout => \FD|BR|saidaA[28]~15_combout\);

-- Location: FF_X60_Y35_N17
\FD|id_ex_reg|inAlu[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[28]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(28));

-- Location: LCCOMB_X60_Y35_N10
\FD|ULA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~0_combout\ = (\FD|id_ex_reg|inAlu\(28) & ((\FD|ULA|Mux22~1_combout\) # ((\FD|ULA|Mux31~9_combout\ & \FD|mux_Banco_Ula|saida[28]~7_combout\)))) # (!\FD|id_ex_reg|inAlu\(28) & (\FD|ULA|Mux22~1_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[28]~7_combout\) # (!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(28),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|mux_Banco_Ula|saida[28]~7_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux3~0_combout\);

-- Location: LCCOMB_X60_Y35_N12
\FD|ULA|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~1_combout\ = (\FD|ULA|Mux3~0_combout\ & (((\FD|ULA|Mux31~9_combout\) # (\FD|ULA|Add1~56_combout\)))) # (!\FD|ULA|Mux3~0_combout\ & (\FD|ULA|soma[28]~56_combout\ & (!\FD|ULA|Mux31~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux3~0_combout\,
	datab => \FD|ULA|soma[28]~56_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Add1~56_combout\,
	combout => \FD|ULA|Mux3~1_combout\);

-- Location: LCCOMB_X59_Y35_N10
\FD|ULA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux3~2_combout\ = (\FD|ULA|Mux3~1_combout\ & !\FD|ex_mem_reg|ramAdd[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux3~1_combout\,
	datac => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	combout => \FD|ULA|Mux3~2_combout\);

-- Location: FF_X59_Y35_N11
\FD|ex_mem_reg|ramAdd[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(28));

-- Location: FF_X63_Y35_N9
\FD|mem_wb_reg|mux_0ent[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(28));

-- Location: LCCOMB_X63_Y35_N8
\FD|mux_Ula_Memoria|saida[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[28]~7_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(28),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a28\,
	combout => \FD|mux_Ula_Memoria|saida[28]~7_combout\);

-- Location: LCCOMB_X66_Y35_N6
\FD|BR|bancoReg_rtl_1_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\);

-- Location: FF_X66_Y35_N7
\FD|BR|bancoReg_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(66));

-- Location: LCCOMB_X66_Y35_N16
\FD|BR|saidaB[27]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~16_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(66) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(66),
	combout => \FD|BR|saidaB[27]~16_combout\);

-- Location: LCCOMB_X65_Y35_N0
\FD|BR|saidaB[27]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[27]~17_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[27]~16_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\))) # (!\FD|BR|saidaB[27]~16_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(65),
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a27\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[27]~16_combout\,
	combout => \FD|BR|saidaB[27]~17_combout\);

-- Location: FF_X65_Y35_N1
\FD|id_ex_reg|inMux[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[27]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(27));

-- Location: LCCOMB_X60_Y35_N0
\FD|ULA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|inMux\(27),
	combout => \FD|ULA|Mux4~1_combout\);

-- Location: LCCOMB_X60_Y35_N24
\FD|ULA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~2_combout\ = (\FD|ULA|Mux31~9_combout\ & (\FD|ULA|Mux4~1_combout\ $ (!\FD|id_ex_reg|inAlu\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux4~1_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|id_ex_reg|inAlu\(27),
	combout => \FD|ULA|Mux4~2_combout\);

-- Location: LCCOMB_X60_Y35_N22
\FD|ULA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~0_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux22~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~54_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|soma[27]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~54_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|soma[27]~54_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y35_N8
\FD|ULA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux4~3_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & ((\FD|ULA|Mux4~2_combout\ & ((\FD|id_ex_reg|inAlu\(27)))) # (!\FD|ULA|Mux4~2_combout\ & (\FD|ULA|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	datab => \FD|ULA|Mux4~2_combout\,
	datac => \FD|ULA|Mux4~0_combout\,
	datad => \FD|id_ex_reg|inAlu\(27),
	combout => \FD|ULA|Mux4~3_combout\);

-- Location: FF_X60_Y35_N9
\FD|ex_mem_reg|ramAdd[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(27));

-- Location: FF_X63_Y35_N13
\FD|mem_wb_reg|mux_0ent[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(27));

-- Location: LCCOMB_X63_Y35_N12
\FD|mux_Ula_Memoria|saida[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[27]~8_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(27),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a27\,
	combout => \FD|mux_Ula_Memoria|saida[27]~8_combout\);

-- Location: LCCOMB_X63_Y32_N24
\FD|BR|bancoReg_rtl_1_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\);

-- Location: FF_X63_Y32_N25
\FD|BR|bancoReg_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(64));

-- Location: LCCOMB_X63_Y32_N18
\FD|BR|saidaB[26]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~18_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(64) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~39_combout\) # (!\FD|BR|bancoReg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(64),
	combout => \FD|BR|saidaB[26]~18_combout\);

-- Location: LCCOMB_X63_Y32_N0
\FD|BR|saidaB[26]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[26]~19_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[26]~18_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\))) # (!\FD|BR|saidaB[26]~18_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(63),
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a26\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|saidaB[26]~18_combout\,
	combout => \FD|BR|saidaB[26]~19_combout\);

-- Location: FF_X63_Y32_N1
\FD|id_ex_reg|inMux[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[26]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(26));

-- Location: LCCOMB_X62_Y34_N12
\FD|mux_Banco_Ula|saida[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[26]~9_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(26),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[26]~9_combout\);

-- Location: LCCOMB_X62_Y35_N18
\FD|ULA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~0_combout\ = (\FD|mux_Banco_Ula|saida[26]~9_combout\ & ((\FD|ULA|Mux22~1_combout\) # ((\FD|id_ex_reg|inAlu\(26) & \FD|ULA|Mux31~9_combout\)))) # (!\FD|mux_Banco_Ula|saida[26]~9_combout\ & (\FD|ULA|Mux22~1_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(26)) # (!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[26]~9_combout\,
	datab => \FD|id_ex_reg|inAlu\(26),
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y35_N16
\FD|ULA|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~1_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux5~0_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux5~0_combout\ & (\FD|ULA|Add1~52_combout\)) # (!\FD|ULA|Mux5~0_combout\ & ((\FD|ULA|soma[26]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~9_combout\,
	datab => \FD|ULA|Add1~52_combout\,
	datac => \FD|ULA|soma[26]~52_combout\,
	datad => \FD|ULA|Mux5~0_combout\,
	combout => \FD|ULA|Mux5~1_combout\);

-- Location: LCCOMB_X62_Y35_N6
\FD|ULA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux5~2_combout\ = (\FD|ULA|Mux5~1_combout\ & !\FD|ex_mem_reg|ramAdd[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux5~1_combout\,
	datac => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	combout => \FD|ULA|Mux5~2_combout\);

-- Location: FF_X62_Y35_N7
\FD|ex_mem_reg|ramAdd[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(26));

-- Location: FF_X63_Y35_N11
\FD|mem_wb_reg|mux_0ent[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(26));

-- Location: LCCOMB_X63_Y35_N10
\FD|mux_Ula_Memoria|saida[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[26]~9_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(26),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a26\,
	combout => \FD|mux_Ula_Memoria|saida[26]~9_combout\);

-- Location: LCCOMB_X61_Y34_N20
\FD|BR|saidaB[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[25]~21_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[25]~20_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\))) # (!\FD|BR|saidaB[25]~20_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(61),
	datac => \FD|BR|saidaB[25]~20_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a25\,
	combout => \FD|BR|saidaB[25]~21_combout\);

-- Location: FF_X61_Y34_N21
\FD|id_ex_reg|inMux[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[25]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(25));

-- Location: LCCOMB_X61_Y34_N0
\FD|mux_Banco_Ula|saida[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[25]~10_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|inMux\(25),
	combout => \FD|mux_Banco_Ula|saida[25]~10_combout\);

-- Location: LCCOMB_X60_Y35_N26
\FD|ULA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~0_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux22~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~50_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|soma[25]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[25]~50_combout\,
	datab => \FD|ULA|Add1~50_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y34_N14
\FD|ULA|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|inMux\(25),
	combout => \FD|ULA|Mux6~1_combout\);

-- Location: LCCOMB_X61_Y34_N2
\FD|ULA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~2_combout\ = (\FD|ULA|Mux31~9_combout\ & (\FD|id_ex_reg|inAlu\(25) $ (!\FD|ULA|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(25),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|Mux6~1_combout\,
	combout => \FD|ULA|Mux6~2_combout\);

-- Location: LCCOMB_X61_Y34_N4
\FD|ULA|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux6~3_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & ((\FD|ULA|Mux6~2_combout\ & ((\FD|id_ex_reg|inAlu\(25)))) # (!\FD|ULA|Mux6~2_combout\ & (\FD|ULA|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux6~0_combout\,
	datab => \FD|ULA|Mux6~2_combout\,
	datac => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	datad => \FD|id_ex_reg|inAlu\(25),
	combout => \FD|ULA|Mux6~3_combout\);

-- Location: FF_X61_Y34_N5
\FD|ex_mem_reg|ramAdd[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(25));

-- Location: FF_X61_Y34_N9
\FD|mem_wb_reg|mux_0ent[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(25));

-- Location: LCCOMB_X61_Y34_N8
\FD|mux_Ula_Memoria|saida[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[25]~10_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(25),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a25\,
	combout => \FD|mux_Ula_Memoria|saida[25]~10_combout\);

-- Location: FF_X60_Y35_N19
\FD|BR|bancoReg_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[24]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(59));

-- Location: LCCOMB_X60_Y35_N20
\FD|BR|saidaA[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[24]~23_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[24]~22_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\)) # (!\FD|BR|saidaA[24]~22_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(59))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[24]~22_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a24\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(59),
	combout => \FD|BR|saidaA[24]~23_combout\);

-- Location: FF_X60_Y35_N21
\FD|id_ex_reg|inAlu[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(24));

-- Location: LCCOMB_X60_Y35_N4
\FD|ULA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~0_combout\ = (\FD|id_ex_reg|inAlu\(24) & ((\FD|ULA|Mux22~1_combout\) # ((\FD|mux_Banco_Ula|saida[24]~11_combout\ & \FD|ULA|Mux31~9_combout\)))) # (!\FD|id_ex_reg|inAlu\(24) & (\FD|ULA|Mux22~1_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[24]~11_combout\) # (!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(24),
	datab => \FD|mux_Banco_Ula|saida[24]~11_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux7~0_combout\);

-- Location: LCCOMB_X59_Y35_N26
\FD|ULA|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~1_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux7~0_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux7~0_combout\ & (\FD|ULA|Add1~48_combout\)) # (!\FD|ULA|Mux7~0_combout\ & ((\FD|ULA|soma[24]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~48_combout\,
	datab => \FD|ULA|soma[24]~48_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux7~0_combout\,
	combout => \FD|ULA|Mux7~1_combout\);

-- Location: LCCOMB_X59_Y35_N4
\FD|ULA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux7~2_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & \FD|ULA|Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	datac => \FD|ULA|Mux7~1_combout\,
	combout => \FD|ULA|Mux7~2_combout\);

-- Location: FF_X59_Y35_N5
\FD|ex_mem_reg|ramAdd[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(24));

-- Location: FF_X59_Y35_N15
\FD|mem_wb_reg|mux_0ent[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(24));

-- Location: LCCOMB_X59_Y35_N14
\FD|mux_Ula_Memoria|saida[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[24]~11_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(24),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a24\,
	combout => \FD|mux_Ula_Memoria|saida[24]~11_combout\);

-- Location: LCCOMB_X63_Y34_N16
\FD|BR|saidaB[23]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[23]~25_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[23]~24_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\))) # (!\FD|BR|saidaB[23]~24_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[23]~24_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(57),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a23\,
	combout => \FD|BR|saidaB[23]~25_combout\);

-- Location: FF_X63_Y34_N17
\FD|id_ex_reg|inMux[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[23]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(23));

-- Location: LCCOMB_X58_Y36_N12
\FD|mux_Banco_Ula|saida[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[23]~12_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(23),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[23]~12_combout\);

-- Location: LCCOMB_X59_Y35_N28
\FD|ULA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~0_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux22~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~46_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|soma[23]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~46_combout\,
	datab => \FD|ULA|soma[23]~46_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux8~0_combout\);

-- Location: LCCOMB_X60_Y35_N18
\FD|ULA|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|inMux\(23),
	combout => \FD|ULA|Mux8~1_combout\);

-- Location: LCCOMB_X59_Y35_N22
\FD|ULA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~2_combout\ = (\FD|ULA|Mux31~9_combout\ & (\FD|ULA|Mux8~1_combout\ $ (!\FD|id_ex_reg|inAlu\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux8~1_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|id_ex_reg|inAlu\(23),
	combout => \FD|ULA|Mux8~2_combout\);

-- Location: LCCOMB_X59_Y35_N30
\FD|ULA|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux8~3_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & ((\FD|ULA|Mux8~2_combout\ & ((\FD|id_ex_reg|inAlu\(23)))) # (!\FD|ULA|Mux8~2_combout\ & (\FD|ULA|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	datab => \FD|ULA|Mux8~0_combout\,
	datac => \FD|ULA|Mux8~2_combout\,
	datad => \FD|id_ex_reg|inAlu\(23),
	combout => \FD|ULA|Mux8~3_combout\);

-- Location: FF_X59_Y35_N31
\FD|ex_mem_reg|ramAdd[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(23));

-- Location: FF_X63_Y35_N1
\FD|mem_wb_reg|mux_0ent[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(23));

-- Location: LCCOMB_X63_Y35_N0
\FD|mux_Ula_Memoria|saida[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[23]~12_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(23),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \FD|mux_Ula_Memoria|saida[23]~12_combout\);

-- Location: LCCOMB_X63_Y34_N10
\FD|BR|saidaB[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[22]~27_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[22]~26_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\))) # (!\FD|BR|saidaB[22]~26_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(55),
	datac => \FD|BR|saidaB[22]~26_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a22\,
	combout => \FD|BR|saidaB[22]~27_combout\);

-- Location: FF_X63_Y34_N11
\FD|id_ex_reg|inMux[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[22]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(22));

-- Location: LCCOMB_X62_Y34_N30
\FD|mux_Banco_Ula|saida[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[22]~13_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(22),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[22]~13_combout\);

-- Location: LCCOMB_X62_Y35_N12
\FD|ULA|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~0_combout\ = (\FD|mux_Banco_Ula|saida[22]~13_combout\ & ((\FD|ULA|Mux22~1_combout\) # ((\FD|ULA|Mux31~9_combout\ & \FD|id_ex_reg|inAlu\(22))))) # (!\FD|mux_Banco_Ula|saida[22]~13_combout\ & (\FD|ULA|Mux22~1_combout\ & 
-- ((\FD|id_ex_reg|inAlu\(22)) # (!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[22]~13_combout\,
	datab => \FD|ULA|Mux22~1_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|id_ex_reg|inAlu\(22),
	combout => \FD|ULA|Mux9~0_combout\);

-- Location: LCCOMB_X62_Y35_N30
\FD|ULA|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~1_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux9~0_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux9~0_combout\ & ((\FD|ULA|Add1~44_combout\))) # (!\FD|ULA|Mux9~0_combout\ & (\FD|ULA|soma[22]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[22]~44_combout\,
	datab => \FD|ULA|Add1~44_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux9~0_combout\,
	combout => \FD|ULA|Mux9~1_combout\);

-- Location: LCCOMB_X62_Y35_N16
\FD|ULA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux9~2_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & \FD|ULA|Mux9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	datac => \FD|ULA|Mux9~1_combout\,
	combout => \FD|ULA|Mux9~2_combout\);

-- Location: FF_X62_Y35_N17
\FD|ex_mem_reg|ramAdd[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(22));

-- Location: FF_X63_Y35_N17
\FD|mem_wb_reg|mux_0ent[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(22));

-- Location: LCCOMB_X63_Y35_N16
\FD|mux_Ula_Memoria|saida[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[22]~13_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(22),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \FD|mux_Ula_Memoria|saida[22]~13_combout\);

-- Location: LCCOMB_X63_Y34_N12
\FD|BR|saidaB[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[21]~29_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[21]~28_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\))) # (!\FD|BR|saidaB[21]~28_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|saidaB[21]~28_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(53),
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a21\,
	combout => \FD|BR|saidaB[21]~29_combout\);

-- Location: FF_X63_Y34_N13
\FD|id_ex_reg|inMux[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[21]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(21));

-- Location: LCCOMB_X58_Y36_N26
\FD|ULA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(21),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|ULA|Mux10~1_combout\);

-- Location: LCCOMB_X59_Y36_N26
\FD|ULA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~2_combout\ = (\FD|ULA|Mux31~9_combout\ & (\FD|ULA|Mux10~1_combout\ $ (!\FD|id_ex_reg|inAlu\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux10~1_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|id_ex_reg|inAlu\(21),
	combout => \FD|ULA|Mux10~2_combout\);

-- Location: LCCOMB_X59_Y35_N0
\FD|ULA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~0_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux22~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~42_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|soma[21]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~42_combout\,
	datab => \FD|ULA|soma[21]~42_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux10~0_combout\);

-- Location: LCCOMB_X59_Y35_N16
\FD|ULA|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux10~3_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & ((\FD|ULA|Mux10~2_combout\ & (\FD|id_ex_reg|inAlu\(21))) # (!\FD|ULA|Mux10~2_combout\ & ((\FD|ULA|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	datab => \FD|ULA|Mux10~2_combout\,
	datac => \FD|id_ex_reg|inAlu\(21),
	datad => \FD|ULA|Mux10~0_combout\,
	combout => \FD|ULA|Mux10~3_combout\);

-- Location: FF_X59_Y35_N17
\FD|ex_mem_reg|ramAdd[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(21));

-- Location: FF_X60_Y35_N29
\FD|mem_wb_reg|mux_0ent[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(21));

-- Location: FF_X58_Y36_N7
\FD|ex_mem_reg|inregmemwd[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(19));

-- Location: LCCOMB_X58_Y36_N4
\FD|ex_mem_reg|inregmemwd[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[20]~feeder_combout\ = \FD|id_ex_reg|inMux\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(20),
	combout => \FD|ex_mem_reg|inregmemwd[20]~feeder_combout\);

-- Location: FF_X58_Y36_N5
\FD|ex_mem_reg|inregmemwd[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(20));

-- Location: FF_X58_Y36_N3
\FD|ex_mem_reg|inregmemwd[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(21));

-- Location: M9K_X64_Y36_N0
\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
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
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|ex_mem_reg|memacess_memwrite_out~q\,
	portare => VCC,
	clk0 => \SignalDetector|saida~clkctrl_outclk\,
	portadatain => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X60_Y35_N28
\FD|mux_Ula_Memoria|saida[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[21]~14_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(21),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a21\,
	combout => \FD|mux_Ula_Memoria|saida[21]~14_combout\);

-- Location: LCCOMB_X65_Y32_N6
\FD|BR|bancoReg_rtl_1_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\);

-- Location: FF_X65_Y32_N7
\FD|BR|bancoReg_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(48));

-- Location: LCCOMB_X65_Y32_N0
\FD|BR|saidaB[18]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~34_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(48) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(48),
	combout => \FD|BR|saidaB[18]~34_combout\);

-- Location: LCCOMB_X65_Y32_N16
\FD|BR|saidaB[18]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[18]~35_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[18]~34_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\))) # (!\FD|BR|saidaB[18]~34_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(47),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a18\,
	datad => \FD|BR|saidaB[18]~34_combout\,
	combout => \FD|BR|saidaB[18]~35_combout\);

-- Location: FF_X65_Y32_N17
\FD|id_ex_reg|inMux[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[18]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(18));

-- Location: LCCOMB_X58_Y36_N24
\FD|ex_mem_reg|inregmemwd[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[18]~feeder_combout\ = \FD|id_ex_reg|inMux\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(18),
	combout => \FD|ex_mem_reg|inregmemwd[18]~feeder_combout\);

-- Location: FF_X58_Y36_N25
\FD|ex_mem_reg|inregmemwd[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(18));

-- Location: LCCOMB_X59_Y36_N12
\FD|ULA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~0_combout\ = (\FD|id_ex_reg|inAlu\(20) & ((\FD|ULA|Mux22~1_combout\) # ((\FD|ULA|Mux31~9_combout\ & \FD|mux_Banco_Ula|saida[20]~15_combout\)))) # (!\FD|id_ex_reg|inAlu\(20) & (\FD|ULA|Mux22~1_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[20]~15_combout\) # (!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(20),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|mux_Banco_Ula|saida[20]~15_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux11~0_combout\);

-- Location: LCCOMB_X59_Y36_N30
\FD|ULA|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~1_combout\ = (\FD|ULA|Mux11~0_combout\ & ((\FD|ULA|Mux31~9_combout\) # ((\FD|ULA|Add1~40_combout\)))) # (!\FD|ULA|Mux11~0_combout\ & (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|soma[20]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux11~0_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|Add1~40_combout\,
	datad => \FD|ULA|soma[20]~40_combout\,
	combout => \FD|ULA|Mux11~1_combout\);

-- Location: LCCOMB_X59_Y36_N16
\FD|ULA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux11~2_combout\ = (\FD|ULA|Mux11~1_combout\ & !\FD|ex_mem_reg|ramAdd[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Mux11~1_combout\,
	datad => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	combout => \FD|ULA|Mux11~2_combout\);

-- Location: FF_X59_Y36_N17
\FD|ex_mem_reg|ramAdd[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(20));

-- Location: FF_X63_Y36_N7
\FD|mem_wb_reg|mux_0ent[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(20));

-- Location: LCCOMB_X63_Y36_N6
\FD|mux_Ula_Memoria|saida[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[20]~15_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a20\,
	datac => \FD|mem_wb_reg|mux_0ent\(20),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[20]~15_combout\);

-- Location: FF_X66_Y32_N17
\FD|BR|bancoReg_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[17]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(45));

-- Location: LCCOMB_X66_Y32_N18
\FD|BR|bancoReg_rtl_1_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\);

-- Location: FF_X66_Y32_N19
\FD|BR|bancoReg_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(46));

-- Location: LCCOMB_X65_Y32_N10
\FD|BR|saidaB[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~36_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(46) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(46),
	combout => \FD|BR|saidaB[17]~36_combout\);

-- Location: LCCOMB_X65_Y32_N26
\FD|BR|saidaB[17]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[17]~37_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[17]~36_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\)) # (!\FD|BR|saidaB[17]~36_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a17\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(45),
	datad => \FD|BR|saidaB[17]~36_combout\,
	combout => \FD|BR|saidaB[17]~37_combout\);

-- Location: FF_X65_Y32_N27
\FD|id_ex_reg|inMux[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[17]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(17));

-- Location: FF_X65_Y36_N17
\FD|ex_mem_reg|inregmemwd[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(17));

-- Location: LCCOMB_X63_Y32_N30
\FD|ULA|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datad => \FD|id_ex_reg|inMux\(19),
	combout => \FD|ULA|Mux12~1_combout\);

-- Location: LCCOMB_X63_Y35_N4
\FD|ULA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~2_combout\ = (\FD|ULA|Mux31~9_combout\ & (\FD|ULA|Mux12~1_combout\ $ (!\FD|id_ex_reg|inAlu\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|Mux12~1_combout\,
	datad => \FD|id_ex_reg|inAlu\(19),
	combout => \FD|ULA|Mux12~2_combout\);

-- Location: LCCOMB_X62_Y36_N28
\FD|ULA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~0_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux22~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~38_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|soma[19]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~9_combout\,
	datab => \FD|ULA|Add1~38_combout\,
	datac => \FD|ULA|soma[19]~38_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux12~0_combout\);

-- Location: LCCOMB_X63_Y35_N26
\FD|ULA|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux12~3_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & ((\FD|ULA|Mux12~2_combout\ & ((\FD|id_ex_reg|inAlu\(19)))) # (!\FD|ULA|Mux12~2_combout\ & (\FD|ULA|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	datab => \FD|ULA|Mux12~2_combout\,
	datac => \FD|ULA|Mux12~0_combout\,
	datad => \FD|id_ex_reg|inAlu\(19),
	combout => \FD|ULA|Mux12~3_combout\);

-- Location: FF_X63_Y35_N27
\FD|ex_mem_reg|ramAdd[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(19));

-- Location: FF_X63_Y35_N21
\FD|mem_wb_reg|mux_0ent[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(19));

-- Location: LCCOMB_X63_Y35_N20
\FD|mux_Ula_Memoria|saida[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[19]~16_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a19\,
	datac => \FD|mem_wb_reg|mux_0ent\(19),
	combout => \FD|mux_Ula_Memoria|saida[19]~16_combout\);

-- Location: LCCOMB_X66_Y37_N12
\FD|BR|bancoReg_rtl_1_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\);

-- Location: FF_X66_Y37_N13
\FD|BR|bancoReg_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(44));

-- Location: LCCOMB_X66_Y37_N22
\FD|BR|saidaB[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~38_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(44) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(44),
	combout => \FD|BR|saidaB[16]~38_combout\);

-- Location: LCCOMB_X66_Y37_N18
\FD|BR|bancoReg_rtl_1_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[16]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[16]~19_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\);

-- Location: FF_X66_Y37_N19
\FD|BR|bancoReg_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(43));

-- Location: LCCOMB_X65_Y37_N8
\FD|BR|saidaB[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[16]~39_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[16]~38_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\)) # (!\FD|BR|saidaB[16]~38_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a16\,
	datab => \FD|BR|saidaB[16]~38_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(43),
	combout => \FD|BR|saidaB[16]~39_combout\);

-- Location: FF_X65_Y37_N9
\FD|id_ex_reg|inMux[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(16));

-- Location: FF_X65_Y37_N17
\FD|ex_mem_reg|inregmemwd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(16));

-- Location: LCCOMB_X59_Y36_N8
\FD|ULA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~0_combout\ = (\FD|id_ex_reg|inAlu\(18) & ((\FD|ULA|Mux22~1_combout\) # ((\FD|ULA|Mux31~9_combout\ & \FD|mux_Banco_Ula|saida[18]~17_combout\)))) # (!\FD|id_ex_reg|inAlu\(18) & (\FD|ULA|Mux22~1_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[18]~17_combout\) # (!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(18),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|mux_Banco_Ula|saida[18]~17_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux13~0_combout\);

-- Location: LCCOMB_X59_Y36_N18
\FD|ULA|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~1_combout\ = (\FD|ULA|Mux13~0_combout\ & (((\FD|ULA|Add1~36_combout\) # (\FD|ULA|Mux31~9_combout\)))) # (!\FD|ULA|Mux13~0_combout\ & (\FD|ULA|soma[18]~36_combout\ & ((!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[18]~36_combout\,
	datab => \FD|ULA|Mux13~0_combout\,
	datac => \FD|ULA|Add1~36_combout\,
	datad => \FD|ULA|Mux31~9_combout\,
	combout => \FD|ULA|Mux13~1_combout\);

-- Location: LCCOMB_X59_Y36_N10
\FD|ULA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux13~2_combout\ = (\FD|ULA|Mux13~1_combout\ & !\FD|ex_mem_reg|ramAdd[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux13~1_combout\,
	datad => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	combout => \FD|ULA|Mux13~2_combout\);

-- Location: FF_X59_Y36_N11
\FD|ex_mem_reg|ramAdd[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(18));

-- Location: FF_X65_Y36_N31
\FD|mem_wb_reg|mux_0ent[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(18));

-- Location: LCCOMB_X65_Y36_N30
\FD|mux_Ula_Memoria|saida[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[18]~17_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a18\,
	datac => \FD|mem_wb_reg|mux_0ent\(18),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[18]~17_combout\);

-- Location: LCCOMB_X63_Y34_N8
\FD|BR|bancoReg_rtl_1_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\);

-- Location: FF_X63_Y34_N9
\FD|BR|bancoReg_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(40));

-- Location: LCCOMB_X63_Y32_N8
\FD|BR|saidaB[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~42_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(40) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(40),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[14]~42_combout\);

-- Location: LCCOMB_X65_Y32_N28
\FD|BR|bancoReg_rtl_1_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[14]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[14]~21_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\);

-- Location: FF_X65_Y32_N29
\FD|BR|bancoReg_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(39));

-- Location: LCCOMB_X65_Y32_N4
\FD|BR|saidaB[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[14]~43_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[14]~42_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\)) # (!\FD|BR|saidaB[14]~42_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a14\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|saidaB[14]~42_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(39),
	combout => \FD|BR|saidaB[14]~43_combout\);

-- Location: FF_X65_Y32_N5
\FD|id_ex_reg|inMux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(14));

-- Location: LCCOMB_X65_Y36_N14
\FD|ex_mem_reg|inregmemwd[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[14]~feeder_combout\ = \FD|id_ex_reg|inMux\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(14),
	combout => \FD|ex_mem_reg|inregmemwd[14]~feeder_combout\);

-- Location: FF_X65_Y36_N15
\FD|ex_mem_reg|inregmemwd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(14));

-- Location: LCCOMB_X66_Y32_N14
\FD|ULA|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~1_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|inMux\(17),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|ULA|Mux14~1_combout\);

-- Location: LCCOMB_X62_Y36_N6
\FD|ULA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~2_combout\ = (\FD|ULA|Mux31~9_combout\ & (\FD|ULA|Mux14~1_combout\ $ (!\FD|id_ex_reg|inAlu\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~9_combout\,
	datab => \FD|ULA|Mux14~1_combout\,
	datad => \FD|id_ex_reg|inAlu\(17),
	combout => \FD|ULA|Mux14~2_combout\);

-- Location: LCCOMB_X62_Y36_N30
\FD|ULA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~0_combout\ = (\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux22~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~34_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|soma[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~9_combout\,
	datab => \FD|ULA|soma[17]~34_combout\,
	datac => \FD|ULA|Add1~34_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux14~0_combout\);

-- Location: LCCOMB_X62_Y36_N4
\FD|ULA|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux14~3_combout\ = (!\FD|ex_mem_reg|ramAdd[17]~0_combout\ & ((\FD|ULA|Mux14~2_combout\ & (\FD|id_ex_reg|inAlu\(17))) # (!\FD|ULA|Mux14~2_combout\ & ((\FD|ULA|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux14~2_combout\,
	datab => \FD|id_ex_reg|inAlu\(17),
	datac => \FD|ULA|Mux14~0_combout\,
	datad => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	combout => \FD|ULA|Mux14~3_combout\);

-- Location: FF_X62_Y36_N5
\FD|ex_mem_reg|ramAdd[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(17));

-- Location: FF_X63_Y36_N5
\FD|mem_wb_reg|mux_0ent[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(17));

-- Location: LCCOMB_X63_Y36_N4
\FD|mux_Ula_Memoria|saida[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[17]~18_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a17\,
	datac => \FD|mem_wb_reg|mux_0ent\(17),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[17]~18_combout\);

-- Location: LCCOMB_X66_Y36_N4
\FD|BR|bancoReg_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X66_Y36_N5
\FD|BR|bancoReg_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(44));

-- Location: LCCOMB_X66_Y36_N22
\FD|BR|saidaA[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~38_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(44) & ((!\FD|BR|bancoReg~41_combout\) # (!\FD|BR|bancoReg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~40_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(44),
	datac => \FD|BR|bancoReg~41_combout\,
	combout => \FD|BR|saidaA[16]~38_combout\);

-- Location: LCCOMB_X66_Y36_N18
\FD|BR|bancoReg_rtl_0_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[16]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[16]~19_combout\,
	combout => \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\);

-- Location: FF_X66_Y36_N19
\FD|BR|bancoReg_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(43));

-- Location: LCCOMB_X65_Y36_N4
\FD|BR|saidaA[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[16]~39_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[16]~38_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\)) # (!\FD|BR|saidaA[16]~38_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(43))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a16\,
	datab => \FD|BR|saidaA[16]~38_combout\,
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(43),
	combout => \FD|BR|saidaA[16]~39_combout\);

-- Location: FF_X65_Y36_N5
\FD|id_ex_reg|inAlu[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(16));

-- Location: LCCOMB_X59_Y36_N20
\FD|ULA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~0_combout\ = (\FD|id_ex_reg|inAlu\(16) & ((\FD|ULA|Mux22~1_combout\) # ((\FD|ULA|Mux31~9_combout\ & \FD|mux_Banco_Ula|saida[16]~19_combout\)))) # (!\FD|id_ex_reg|inAlu\(16) & (\FD|ULA|Mux22~1_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[16]~19_combout\) # (!\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(16),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|mux_Banco_Ula|saida[16]~19_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux15~0_combout\);

-- Location: LCCOMB_X59_Y36_N22
\FD|ULA|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~1_combout\ = (\FD|ULA|Mux15~0_combout\ & ((\FD|ULA|Add1~32_combout\) # ((\FD|ULA|Mux31~9_combout\)))) # (!\FD|ULA|Mux15~0_combout\ & (((\FD|ULA|soma[16]~32_combout\ & !\FD|ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux15~0_combout\,
	datab => \FD|ULA|Add1~32_combout\,
	datac => \FD|ULA|soma[16]~32_combout\,
	datad => \FD|ULA|Mux31~9_combout\,
	combout => \FD|ULA|Mux15~1_combout\);

-- Location: LCCOMB_X59_Y36_N28
\FD|ULA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux15~2_combout\ = (\FD|ULA|Mux15~1_combout\ & !\FD|ex_mem_reg|ramAdd[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|Mux15~1_combout\,
	datad => \FD|ex_mem_reg|ramAdd[17]~0_combout\,
	combout => \FD|ULA|Mux15~2_combout\);

-- Location: FF_X59_Y36_N29
\FD|ex_mem_reg|ramAdd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(16));

-- Location: FF_X62_Y36_N23
\FD|mem_wb_reg|mux_0ent[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(16));

-- Location: LCCOMB_X62_Y36_N22
\FD|mux_Ula_Memoria|saida[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[16]~19_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(16),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a16\,
	combout => \FD|mux_Ula_Memoria|saida[16]~19_combout\);

-- Location: LCCOMB_X63_Y33_N22
\FD|BR|bancoReg_rtl_1_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\);

-- Location: FF_X63_Y33_N23
\FD|BR|bancoReg_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(42));

-- Location: LCCOMB_X63_Y33_N8
\FD|BR|saidaB[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~40_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(42) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(42),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[15]~40_combout\);

-- Location: LCCOMB_X63_Y33_N28
\FD|BR|bancoReg_rtl_1_bypass[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[41]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[15]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[15]~20_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[41]~feeder_combout\);

-- Location: FF_X63_Y33_N29
\FD|BR|bancoReg_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(41));

-- Location: LCCOMB_X63_Y33_N18
\FD|BR|saidaB[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[15]~41_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[15]~40_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\)) # (!\FD|BR|saidaB[15]~40_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a15\,
	datab => \FD|BR|saidaB[15]~40_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(41),
	combout => \FD|BR|saidaB[15]~41_combout\);

-- Location: FF_X63_Y33_N19
\FD|id_ex_reg|inMux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(15));

-- Location: LCCOMB_X63_Y37_N8
\FD|mux_Banco_Ula|saida[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[15]~20_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inMux\(15),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[15]~20_combout\);

-- Location: LCCOMB_X62_Y37_N12
\FD|ULA|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~0_combout\ = (\FD|ULA|soma[15]~30_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|soma[15]~30_combout\,
	datac => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux16~0_combout\);

-- Location: LCCOMB_X62_Y37_N14
\FD|ULA|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~1_combout\ = (\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~30_combout\ & (\FD|ULA|Mux22~0_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (((\FD|ULA|Mux16~0_combout\) # (!\FD|ULA|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~30_combout\,
	datab => \FD|ULA|Mux22~1_combout\,
	datac => \FD|ULA|Mux22~0_combout\,
	datad => \FD|ULA|Mux16~0_combout\,
	combout => \FD|ULA|Mux16~1_combout\);

-- Location: LCCOMB_X63_Y37_N4
\FD|ULA|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~2_combout\ = (\FD|ULA|Mux16~1_combout\ & (((\FD|mux_Banco_Ula|saida[15]~20_combout\ & \FD|id_ex_reg|inAlu\(15))) # (!\FD|ULA|Mux31~9_combout\))) # (!\FD|ULA|Mux16~1_combout\ & (\FD|ULA|Mux31~9_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[15]~20_combout\) # (\FD|id_ex_reg|inAlu\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~1_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|mux_Banco_Ula|saida[15]~20_combout\,
	datad => \FD|id_ex_reg|inAlu\(15),
	combout => \FD|ULA|Mux16~2_combout\);

-- Location: LCCOMB_X73_Y33_N18
\FD|ULA|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux16~3_combout\ = (\FD|ULA|Mux16~2_combout\ & !\FD|UCULA|ALUctr[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \FD|ULA|Mux16~3_combout\);

-- Location: FF_X66_Y36_N7
\FD|ex_mem_reg|ramAdd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux16~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(15));

-- Location: FF_X63_Y36_N23
\FD|mem_wb_reg|mux_0ent[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(15));

-- Location: LCCOMB_X63_Y36_N22
\FD|mux_Ula_Memoria|saida[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[15]~20_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(15),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \FD|mux_Ula_Memoria|saida[15]~20_combout\);

-- Location: LCCOMB_X65_Y34_N6
\FD|BR|bancoReg_rtl_1_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\);

-- Location: FF_X65_Y34_N7
\FD|BR|bancoReg_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(38));

-- Location: LCCOMB_X65_Y34_N8
\FD|BR|saidaB[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~44_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(38) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(38),
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~39_combout\,
	datad => \FD|BR|bancoReg~38_combout\,
	combout => \FD|BR|saidaB[13]~44_combout\);

-- Location: FF_X65_Y34_N29
\FD|BR|bancoReg_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[13]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(37));

-- Location: LCCOMB_X65_Y34_N22
\FD|BR|saidaB[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[13]~45_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[13]~44_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\)) # (!\FD|BR|saidaB[13]~44_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a13\,
	datab => \FD|BR|saidaB[13]~44_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(37),
	combout => \FD|BR|saidaB[13]~45_combout\);

-- Location: FF_X65_Y34_N23
\FD|id_ex_reg|inMux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[13]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(13));

-- Location: FF_X65_Y34_N15
\FD|ex_mem_reg|inregmemwd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(13));

-- Location: LCCOMB_X62_Y37_N0
\FD|ULA|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~0_combout\ = (\FD|ULA|soma[14]~28_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|soma[14]~28_combout\,
	datac => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux17~0_combout\);

-- Location: LCCOMB_X62_Y37_N18
\FD|ULA|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~28_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Mux17~0_combout\)))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Mux17~0_combout\,
	datac => \FD|ULA|Add1~28_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux17~1_combout\);

-- Location: LCCOMB_X68_Y33_N8
\FD|ULA|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~2_combout\ = (\FD|ULA|Mux17~1_combout\ & (((\FD|mux_Banco_Ula|saida[14]~21_combout\ & \FD|id_ex_reg|inAlu\(14))) # (!\FD|ULA|Mux31~9_combout\))) # (!\FD|ULA|Mux17~1_combout\ & (\FD|ULA|Mux31~9_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[14]~21_combout\) # (\FD|id_ex_reg|inAlu\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[14]~21_combout\,
	datab => \FD|ULA|Mux17~1_combout\,
	datac => \FD|id_ex_reg|inAlu\(14),
	datad => \FD|ULA|Mux31~9_combout\,
	combout => \FD|ULA|Mux17~2_combout\);

-- Location: LCCOMB_X73_Y33_N20
\FD|ULA|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux17~3_combout\ = (\FD|ULA|Mux17~2_combout\ & !\FD|UCULA|ALUctr[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux17~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \FD|ULA|Mux17~3_combout\);

-- Location: FF_X66_Y36_N21
\FD|ex_mem_reg|ramAdd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux17~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(14));

-- Location: FF_X65_Y36_N9
\FD|mem_wb_reg|mux_0ent[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(14));

-- Location: LCCOMB_X65_Y36_N8
\FD|mux_Ula_Memoria|saida[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[14]~21_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a14\,
	datac => \FD|mem_wb_reg|mux_0ent\(14),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[14]~21_combout\);

-- Location: LCCOMB_X67_Y36_N24
\FD|BR|bancoReg_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X67_Y36_N25
\FD|BR|bancoReg_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(38));

-- Location: LCCOMB_X67_Y36_N22
\FD|BR|saidaA[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~44_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(38) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(38),
	combout => \FD|BR|saidaA[13]~44_combout\);

-- Location: FF_X67_Y36_N23
\FD|BR|bancoReg_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[13]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(37));

-- Location: LCCOMB_X67_Y36_N0
\FD|BR|saidaA[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[13]~45_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[13]~44_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\)) # (!\FD|BR|saidaA[13]~44_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal0~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a13\,
	datac => \FD|BR|saidaA[13]~44_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(37),
	combout => \FD|BR|saidaA[13]~45_combout\);

-- Location: FF_X67_Y36_N1
\FD|id_ex_reg|inAlu[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[13]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(13));

-- Location: LCCOMB_X59_Y37_N14
\FD|ULA|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~0_combout\ = (\FD|ULA|soma[13]~26_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|soma[13]~26_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux18~0_combout\);

-- Location: LCCOMB_X59_Y37_N0
\FD|ULA|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~26_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Mux18~0_combout\)))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Mux18~0_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Add1~26_combout\,
	combout => \FD|ULA|Mux18~1_combout\);

-- Location: LCCOMB_X59_Y37_N26
\FD|ULA|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(13) & ((\FD|mux_Banco_Ula|saida[13]~22_combout\) # (!\FD|ULA|Mux18~1_combout\))) # (!\FD|id_ex_reg|inAlu\(13) & (\FD|mux_Banco_Ula|saida[13]~22_combout\ & 
-- !\FD|ULA|Mux18~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(13),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|mux_Banco_Ula|saida[13]~22_combout\,
	datad => \FD|ULA|Mux18~1_combout\,
	combout => \FD|ULA|Mux18~2_combout\);

-- Location: LCCOMB_X73_Y33_N24
\FD|ULA|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux18~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux18~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[3]~8_combout\,
	datac => \FD|ULA|Mux18~2_combout\,
	combout => \FD|ULA|Mux18~3_combout\);

-- Location: LCCOMB_X67_Y36_N4
\FD|ex_mem_reg|ramAdd[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[13]~feeder_combout\ = \FD|ULA|Mux18~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux18~3_combout\,
	combout => \FD|ex_mem_reg|ramAdd[13]~feeder_combout\);

-- Location: FF_X67_Y36_N5
\FD|ex_mem_reg|ramAdd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|ramAdd[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(13));

-- Location: FF_X66_Y36_N29
\FD|mem_wb_reg|mux_0ent[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(13));

-- Location: LCCOMB_X66_Y36_N28
\FD|mux_Ula_Memoria|saida[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[13]~22_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(13),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \FD|mux_Ula_Memoria|saida[13]~22_combout\);

-- Location: LCCOMB_X63_Y33_N12
\FD|BR|saidaB[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[12]~47_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[12]~46_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\))) # (!\FD|BR|saidaB[12]~46_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[12]~46_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(35),
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a12\,
	combout => \FD|BR|saidaB[12]~47_combout\);

-- Location: FF_X63_Y33_N13
\FD|id_ex_reg|inMux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(12));

-- Location: FF_X62_Y35_N29
\FD|ex_mem_reg|inregmemwd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(12));

-- Location: LCCOMB_X59_Y37_N12
\FD|ULA|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~0_combout\ = (\FD|ULA|soma[12]~24_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[12]~24_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux19~0_combout\);

-- Location: LCCOMB_X59_Y37_N6
\FD|ULA|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~24_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Mux19~0_combout\)))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Mux19~0_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Add1~24_combout\,
	combout => \FD|ULA|Mux19~1_combout\);

-- Location: LCCOMB_X59_Y37_N8
\FD|ULA|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~2_combout\ = (\FD|ULA|Mux19~1_combout\ & (((\FD|mux_Banco_Ula|saida[12]~23_combout\ & \FD|id_ex_reg|inAlu\(12))) # (!\FD|ULA|Mux31~9_combout\))) # (!\FD|ULA|Mux19~1_combout\ & (\FD|ULA|Mux31~9_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[12]~23_combout\) # (\FD|id_ex_reg|inAlu\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~1_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|mux_Banco_Ula|saida[12]~23_combout\,
	datad => \FD|id_ex_reg|inAlu\(12),
	combout => \FD|ULA|Mux19~2_combout\);

-- Location: LCCOMB_X73_Y33_N14
\FD|ULA|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux19~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux19~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[3]~8_combout\,
	datac => \FD|ULA|Mux19~2_combout\,
	combout => \FD|ULA|Mux19~3_combout\);

-- Location: FF_X67_Y36_N31
\FD|ex_mem_reg|ramAdd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux19~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(12));

-- Location: FF_X67_Y36_N29
\FD|mem_wb_reg|mux_0ent[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(12));

-- Location: LCCOMB_X67_Y36_N28
\FD|mux_Ula_Memoria|saida[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[12]~23_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a12\,
	datac => \FD|mem_wb_reg|mux_0ent\(12),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[12]~23_combout\);

-- Location: FF_X65_Y37_N11
\FD|BR|bancoReg_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[11]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(33));

-- Location: LCCOMB_X65_Y37_N28
\FD|BR|saidaB[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[11]~49_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[11]~48_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\)) # (!\FD|BR|saidaB[11]~48_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[11]~48_combout\,
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a11\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(33),
	combout => \FD|BR|saidaB[11]~49_combout\);

-- Location: FF_X65_Y37_N29
\FD|id_ex_reg|inMux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[11]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(11));

-- Location: LCCOMB_X65_Y37_N6
\FD|mux_Banco_Ula|saida[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[11]~24_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inMux\(11),
	combout => \FD|mux_Banco_Ula|saida[11]~24_combout\);

-- Location: LCCOMB_X59_Y37_N22
\FD|ULA|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~0_combout\ = (\FD|ULA|soma[11]~22_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[11]~22_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux20~0_combout\);

-- Location: LCCOMB_X59_Y37_N16
\FD|ULA|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~22_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Mux20~0_combout\))))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Add1~22_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Mux20~0_combout\,
	combout => \FD|ULA|Mux20~1_combout\);

-- Location: LCCOMB_X65_Y37_N30
\FD|ULA|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~2_combout\ = (\FD|ULA|Mux20~1_combout\ & (((\FD|mux_Banco_Ula|saida[11]~24_combout\ & \FD|id_ex_reg|inAlu\(11))) # (!\FD|ULA|Mux31~9_combout\))) # (!\FD|ULA|Mux20~1_combout\ & (\FD|ULA|Mux31~9_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[11]~24_combout\) # (\FD|id_ex_reg|inAlu\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux20~1_combout\,
	datab => \FD|mux_Banco_Ula|saida[11]~24_combout\,
	datac => \FD|id_ex_reg|inAlu\(11),
	datad => \FD|ULA|Mux31~9_combout\,
	combout => \FD|ULA|Mux20~2_combout\);

-- Location: LCCOMB_X70_Y35_N2
\FD|ULA|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux20~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux20~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[3]~8_combout\,
	datac => \FD|ULA|Mux20~2_combout\,
	combout => \FD|ULA|Mux20~3_combout\);

-- Location: LCCOMB_X69_Y36_N2
\FD|ex_mem_reg|ramAdd[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[11]~feeder_combout\ = \FD|ULA|Mux20~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux20~3_combout\,
	combout => \FD|ex_mem_reg|ramAdd[11]~feeder_combout\);

-- Location: FF_X69_Y36_N3
\FD|ex_mem_reg|ramAdd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|ramAdd[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(11));

-- Location: FF_X65_Y36_N27
\FD|mem_wb_reg|mux_0ent[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(11));

-- Location: LCCOMB_X65_Y36_N26
\FD|mux_Ula_Memoria|saida[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[11]~24_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(11),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a11\,
	combout => \FD|mux_Ula_Memoria|saida[11]~24_combout\);

-- Location: FF_X65_Y35_N27
\FD|BR|bancoReg_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[10]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(31));

-- Location: LCCOMB_X65_Y37_N0
\FD|BR|saidaB[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[10]~51_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[10]~50_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\)) # (!\FD|BR|saidaB[10]~50_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[10]~50_combout\,
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a10\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(31),
	combout => \FD|BR|saidaB[10]~51_combout\);

-- Location: FF_X65_Y37_N1
\FD|id_ex_reg|inMux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[10]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(10));

-- Location: LCCOMB_X65_Y37_N2
\FD|mux_Banco_Ula|saida[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[10]~25_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inMux\(10),
	combout => \FD|mux_Banco_Ula|saida[10]~25_combout\);

-- Location: LCCOMB_X62_Y37_N6
\FD|ULA|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~0_combout\ = (\FD|ULA|soma[10]~20_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|soma[10]~20_combout\,
	datac => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux21~0_combout\);

-- Location: LCCOMB_X62_Y37_N16
\FD|ULA|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~20_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Mux21~0_combout\)))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux21~0_combout\,
	datab => \FD|ULA|Add1~20_combout\,
	datac => \FD|ULA|Mux22~0_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux21~1_combout\);

-- Location: LCCOMB_X62_Y37_N26
\FD|ULA|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~2_combout\ = (\FD|ULA|Mux21~1_combout\ & (((\FD|id_ex_reg|inAlu\(10) & \FD|mux_Banco_Ula|saida[10]~25_combout\)) # (!\FD|ULA|Mux31~9_combout\))) # (!\FD|ULA|Mux21~1_combout\ & (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(10)) # 
-- (\FD|mux_Banco_Ula|saida[10]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(10),
	datab => \FD|ULA|Mux21~1_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|mux_Banco_Ula|saida[10]~25_combout\,
	combout => \FD|ULA|Mux21~2_combout\);

-- Location: LCCOMB_X70_Y35_N20
\FD|ULA|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux21~3_combout\ = (\FD|ULA|Mux21~2_combout\ & !\FD|UCULA|ALUctr[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \FD|ULA|Mux21~3_combout\);

-- Location: LCCOMB_X65_Y35_N14
\FD|ex_mem_reg|ramAdd[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[10]~feeder_combout\ = \FD|ULA|Mux21~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \FD|ex_mem_reg|ramAdd[10]~feeder_combout\);

-- Location: FF_X65_Y35_N15
\FD|ex_mem_reg|ramAdd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|ramAdd[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(10));

-- Location: FF_X65_Y35_N23
\FD|mem_wb_reg|mux_0ent[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(10));

-- Location: LCCOMB_X65_Y35_N22
\FD|mux_Ula_Memoria|saida[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[10]~25_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(10),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \FD|mux_Ula_Memoria|saida[10]~25_combout\);

-- Location: LCCOMB_X67_Y37_N18
\FD|BR|bancoReg_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X67_Y37_N19
\FD|BR|bancoReg_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(30));

-- Location: LCCOMB_X66_Y37_N8
\FD|BR|saidaB[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~52_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(30) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(30),
	combout => \FD|BR|saidaB[9]~52_combout\);

-- Location: LCCOMB_X67_Y37_N16
\FD|BR|saidaB[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[9]~53_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[9]~52_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\))) # (!\FD|BR|saidaB[9]~52_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(29),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a9\,
	datad => \FD|BR|saidaB[9]~52_combout\,
	combout => \FD|BR|saidaB[9]~53_combout\);

-- Location: FF_X67_Y37_N17
\FD|id_ex_reg|inMux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[9]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(9));

-- Location: FF_X68_Y36_N29
\FD|ex_mem_reg|inregmemwd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(9));

-- Location: LCCOMB_X62_Y37_N20
\FD|ULA|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~2_combout\ = (\FD|ULA|soma[9]~18_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|soma[9]~18_combout\,
	datac => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux22~2_combout\);

-- Location: LCCOMB_X59_Y37_N28
\FD|ULA|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~3_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~18_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Mux22~2_combout\)))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Mux22~2_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Add1~18_combout\,
	combout => \FD|ULA|Mux22~3_combout\);

-- Location: LCCOMB_X67_Y37_N22
\FD|ULA|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~4_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(9) & ((\FD|mux_Banco_Ula|saida[9]~26_combout\) # (!\FD|ULA|Mux22~3_combout\))) # (!\FD|id_ex_reg|inAlu\(9) & (!\FD|ULA|Mux22~3_combout\ & 
-- \FD|mux_Banco_Ula|saida[9]~26_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(9),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|Mux22~3_combout\,
	datad => \FD|mux_Banco_Ula|saida[9]~26_combout\,
	combout => \FD|ULA|Mux22~4_combout\);

-- Location: LCCOMB_X70_Y35_N0
\FD|ULA|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux22~5_combout\ = (\FD|ULA|Mux22~4_combout\ & !\FD|UCULA|ALUctr[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~4_combout\,
	datab => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \FD|ULA|Mux22~5_combout\);

-- Location: LCCOMB_X70_Y36_N24
\FD|ex_mem_reg|ramAdd[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[9]~feeder_combout\ = \FD|ULA|Mux22~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux22~5_combout\,
	combout => \FD|ex_mem_reg|ramAdd[9]~feeder_combout\);

-- Location: FF_X70_Y36_N25
\FD|ex_mem_reg|ramAdd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|ramAdd[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(9));

-- Location: LCCOMB_X69_Y36_N8
\FD|mem_wb_reg|mux_0ent[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mem_wb_reg|mux_0ent[9]~feeder_combout\ = \FD|ex_mem_reg|ramAdd\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ex_mem_reg|ramAdd\(9),
	combout => \FD|mem_wb_reg|mux_0ent[9]~feeder_combout\);

-- Location: FF_X69_Y36_N9
\FD|mem_wb_reg|mux_0ent[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mem_wb_reg|mux_0ent[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(9));

-- Location: LCCOMB_X65_Y36_N20
\FD|mux_Ula_Memoria|saida[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[9]~26_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \FD|mem_wb_reg|mux_0ent\(9),
	combout => \FD|mux_Ula_Memoria|saida[9]~26_combout\);

-- Location: LCCOMB_X63_Y33_N6
\FD|BR|bancoReg_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X63_Y33_N7
\FD|BR|bancoReg_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(28));

-- Location: LCCOMB_X63_Y33_N16
\FD|BR|saidaB[8]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~54_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(28) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(28),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[8]~54_combout\);

-- Location: LCCOMB_X63_Y33_N20
\FD|BR|bancoReg_rtl_1_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[27]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[8]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[8]~27_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[27]~feeder_combout\);

-- Location: FF_X63_Y33_N21
\FD|BR|bancoReg_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(27));

-- Location: LCCOMB_X63_Y33_N30
\FD|BR|saidaB[8]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[8]~55_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[8]~54_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\)) # (!\FD|BR|saidaB[8]~54_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a8\,
	datab => \FD|BR|saidaB[8]~54_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(27),
	combout => \FD|BR|saidaB[8]~55_combout\);

-- Location: FF_X63_Y33_N31
\FD|id_ex_reg|inMux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[8]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(8));

-- Location: FF_X63_Y33_N15
\FD|ex_mem_reg|inregmemwd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|inMux\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(8));

-- Location: LCCOMB_X59_Y37_N10
\FD|ULA|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~0_combout\ = (\FD|ULA|soma[8]~16_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ULA|soma[8]~16_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux23~0_combout\);

-- Location: LCCOMB_X59_Y37_N20
\FD|ULA|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~16_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Mux23~0_combout\))))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Add1~16_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Mux23~0_combout\,
	combout => \FD|ULA|Mux23~1_combout\);

-- Location: LCCOMB_X59_Y35_N24
\FD|ULA|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|ULA|Mux23~1_combout\ & (\FD|id_ex_reg|inAlu\(8) & \FD|mux_Banco_Ula|saida[8]~27_combout\)) # (!\FD|ULA|Mux23~1_combout\ & ((\FD|id_ex_reg|inAlu\(8)) # 
-- (\FD|mux_Banco_Ula|saida[8]~27_combout\))))) # (!\FD|ULA|Mux31~9_combout\ & (\FD|ULA|Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~9_combout\,
	datab => \FD|ULA|Mux23~1_combout\,
	datac => \FD|id_ex_reg|inAlu\(8),
	datad => \FD|mux_Banco_Ula|saida[8]~27_combout\,
	combout => \FD|ULA|Mux23~2_combout\);

-- Location: LCCOMB_X70_Y35_N22
\FD|ULA|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux23~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux23~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux23~2_combout\,
	combout => \FD|ULA|Mux23~3_combout\);

-- Location: FF_X70_Y35_N1
\FD|ex_mem_reg|ramAdd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux23~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(8));

-- Location: FF_X66_Y35_N19
\FD|mem_wb_reg|mux_0ent[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(8));

-- Location: LCCOMB_X65_Y35_N6
\FD|mux_Ula_Memoria|saida[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[8]~27_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a8\,
	datad => \FD|mem_wb_reg|mux_0ent\(8),
	combout => \FD|mux_Ula_Memoria|saida[8]~27_combout\);

-- Location: LCCOMB_X63_Y37_N18
\FD|BR|bancoReg_rtl_1_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X63_Y37_N19
\FD|BR|bancoReg_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(24));

-- Location: LCCOMB_X63_Y37_N20
\FD|BR|saidaB[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~58_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(24) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg~38_combout\,
	datac => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datad => \FD|BR|bancoReg_rtl_1_bypass\(24),
	combout => \FD|BR|saidaB[6]~58_combout\);

-- Location: FF_X63_Y37_N1
\FD|BR|bancoReg_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(23));

-- Location: LCCOMB_X63_Y37_N28
\FD|BR|saidaB[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[6]~59_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[6]~58_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\)) # (!\FD|BR|saidaB[6]~58_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a6\,
	datab => \FD|BR|saidaB[6]~58_combout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(23),
	combout => \FD|BR|saidaB[6]~59_combout\);

-- Location: FF_X63_Y37_N29
\FD|id_ex_reg|inMux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[6]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(6));

-- Location: LCCOMB_X63_Y37_N16
\FD|ex_mem_reg|inregmemwd[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inregmemwd[6]~feeder_combout\ = \FD|id_ex_reg|inMux\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inMux\(6),
	combout => \FD|ex_mem_reg|inregmemwd[6]~feeder_combout\);

-- Location: FF_X63_Y37_N17
\FD|ex_mem_reg|inregmemwd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inregmemwd[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inregmemwd\(6));

-- Location: FF_X68_Y36_N19
\FD|mem_wb_reg|mux_0ent[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(7));

-- Location: LCCOMB_X65_Y36_N12
\FD|mux_Ula_Memoria|saida[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[7]~28_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \FD|mem_wb_reg|mux_0ent\(7),
	combout => \FD|mux_Ula_Memoria|saida[7]~28_combout\);

-- Location: LCCOMB_X66_Y37_N10
\FD|BR|bancoReg_rtl_1_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[25]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[7]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[7]~28_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[25]~feeder_combout\);

-- Location: FF_X66_Y37_N11
\FD|BR|bancoReg_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(25));

-- Location: LCCOMB_X66_Y37_N24
\FD|BR|saidaB[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[7]~57_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[7]~56_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\)) # (!\FD|BR|saidaB[7]~56_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[7]~56_combout\,
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a7\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(25),
	combout => \FD|BR|saidaB[7]~57_combout\);

-- Location: FF_X66_Y37_N25
\FD|id_ex_reg|inMux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[7]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(7));

-- Location: LCCOMB_X65_Y37_N20
\FD|mux_Banco_Ula|saida[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[7]~28_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inShifter\(4))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inMux\(7),
	combout => \FD|mux_Banco_Ula|saida[7]~28_combout\);

-- Location: LCCOMB_X61_Y40_N30
\FD|ULA|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~0_combout\ = (!\FD|UCULA|ALUctr[0]~2_combout\ & \FD|ULA|soma[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~2_combout\,
	datad => \FD|ULA|soma[7]~14_combout\,
	combout => \FD|ULA|Mux24~0_combout\);

-- Location: LCCOMB_X61_Y40_N8
\FD|ULA|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~14_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Mux24~0_combout\))))) # (!\FD|ULA|Mux22~0_combout\ & (!\FD|ULA|Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Mux22~1_combout\,
	datac => \FD|ULA|Add1~14_combout\,
	datad => \FD|ULA|Mux24~0_combout\,
	combout => \FD|ULA|Mux24~1_combout\);

-- Location: LCCOMB_X61_Y40_N10
\FD|ULA|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|mux_Banco_Ula|saida[7]~28_combout\ & ((\FD|id_ex_reg|inAlu\(7)) # (!\FD|ULA|Mux24~1_combout\))) # (!\FD|mux_Banco_Ula|saida[7]~28_combout\ & (!\FD|ULA|Mux24~1_combout\ & 
-- \FD|id_ex_reg|inAlu\(7))))) # (!\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[7]~28_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|Mux24~1_combout\,
	datad => \FD|id_ex_reg|inAlu\(7),
	combout => \FD|ULA|Mux24~2_combout\);

-- Location: LCCOMB_X68_Y36_N8
\FD|ULA|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux24~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \FD|ULA|Mux24~3_combout\);

-- Location: FF_X68_Y36_N9
\FD|ex_mem_reg|ramAdd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(7));

-- Location: FF_X67_Y36_N15
\FD|mem_wb_reg|mux_0ent[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(6));

-- Location: LCCOMB_X67_Y36_N14
\FD|mux_Ula_Memoria|saida[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[6]~29_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datab => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \FD|mem_wb_reg|mux_0ent\(6),
	combout => \FD|mux_Ula_Memoria|saida[6]~29_combout\);

-- Location: FF_X63_Y37_N23
\FD|BR|bancoReg_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(23));

-- Location: LCCOMB_X62_Y35_N2
\FD|BR|bancoReg_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X62_Y35_N3
\FD|BR|bancoReg_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(24));

-- Location: LCCOMB_X62_Y35_N4
\FD|BR|saidaA[6]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~58_combout\ = (\FD|BR|bancoReg_rtl_0_bypass\(24) & ((!\FD|BR|bancoReg~40_combout\) # (!\FD|BR|bancoReg~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~41_combout\,
	datab => \FD|BR|bancoReg~40_combout\,
	datad => \FD|BR|bancoReg_rtl_0_bypass\(24),
	combout => \FD|BR|saidaA[6]~58_combout\);

-- Location: LCCOMB_X63_Y37_N24
\FD|BR|saidaA[6]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[6]~59_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[6]~58_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\))) # (!\FD|BR|saidaA[6]~58_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_0_bypass\(23),
	datab => \FD|BR|Equal0~0_combout\,
	datac => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a6\,
	datad => \FD|BR|saidaA[6]~58_combout\,
	combout => \FD|BR|saidaA[6]~59_combout\);

-- Location: FF_X63_Y37_N25
\FD|id_ex_reg|inAlu[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[6]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(6));

-- Location: LCCOMB_X59_Y37_N24
\FD|ULA|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~0_combout\ = (\FD|ULA|soma[6]~12_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[6]~12_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux25~0_combout\);

-- Location: LCCOMB_X59_Y37_N2
\FD|ULA|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~12_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Mux25~0_combout\))))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Add1~12_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Mux25~0_combout\,
	combout => \FD|ULA|Mux25~1_combout\);

-- Location: LCCOMB_X63_Y37_N26
\FD|ULA|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~2_combout\ = (\FD|ULA|Mux25~1_combout\ & (((\FD|mux_Banco_Ula|saida[6]~29_combout\ & \FD|id_ex_reg|inAlu\(6))) # (!\FD|ULA|Mux31~9_combout\))) # (!\FD|ULA|Mux25~1_combout\ & (\FD|ULA|Mux31~9_combout\ & 
-- ((\FD|mux_Banco_Ula|saida[6]~29_combout\) # (\FD|id_ex_reg|inAlu\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~1_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|mux_Banco_Ula|saida[6]~29_combout\,
	datad => \FD|id_ex_reg|inAlu\(6),
	combout => \FD|ULA|Mux25~2_combout\);

-- Location: LCCOMB_X68_Y36_N18
\FD|ULA|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux25~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux25~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux25~2_combout\,
	combout => \FD|ULA|Mux25~3_combout\);

-- Location: LCCOMB_X67_Y36_N26
\FD|ex_mem_reg|ramAdd[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[6]~feeder_combout\ = \FD|ULA|Mux25~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux25~3_combout\,
	combout => \FD|ex_mem_reg|ramAdd[6]~feeder_combout\);

-- Location: FF_X67_Y36_N27
\FD|ex_mem_reg|ramAdd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|ramAdd[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(6));

-- Location: LCCOMB_X63_Y36_N20
\FD|mux_Ula_Memoria|saida[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[5]~30_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(5),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \FD|mux_Ula_Memoria|saida[5]~30_combout\);

-- Location: LCCOMB_X65_Y32_N30
\FD|BR|bancoReg_rtl_1_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\ = \FD|mux_Ula_Memoria|saida[5]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|mux_Ula_Memoria|saida[5]~30_combout\,
	combout => \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\);

-- Location: FF_X65_Y32_N31
\FD|BR|bancoReg_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(21));

-- Location: LCCOMB_X65_Y32_N24
\FD|BR|bancoReg_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X65_Y32_N25
\FD|BR|bancoReg_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(22));

-- Location: LCCOMB_X65_Y32_N2
\FD|BR|saidaB[5]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~60_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(22) & ((\FD|BR|bancoReg_rtl_1_bypass\(9)) # ((!\FD|BR|bancoReg~38_combout\) # (!\FD|BR|bancoReg~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(9),
	datab => \FD|BR|bancoReg~39_combout\,
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(22),
	combout => \FD|BR|saidaB[5]~60_combout\);

-- Location: LCCOMB_X65_Y32_N8
\FD|BR|saidaB[5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[5]~61_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[5]~60_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\))) # (!\FD|BR|saidaB[5]~60_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg_rtl_1_bypass\(21),
	datab => \FD|BR|Equal1~0_combout\,
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a5\,
	datad => \FD|BR|saidaB[5]~60_combout\,
	combout => \FD|BR|saidaB[5]~61_combout\);

-- Location: FF_X65_Y32_N9
\FD|id_ex_reg|inMux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[5]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(5));

-- Location: LCCOMB_X65_Y32_N18
\FD|mux_Banco_Ula|saida[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[5]~30_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|rtout\(1))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inMux\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|rtout\(1),
	datac => \FD|id_ex_reg|inMux\(5),
	datad => \FD|id_ex_reg|execute_muxula_out~q\,
	combout => \FD|mux_Banco_Ula|saida[5]~30_combout\);

-- Location: LCCOMB_X61_Y40_N14
\FD|ULA|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~0_combout\ = (\FD|ULA|soma[5]~10_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[5]~10_combout\,
	datac => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux26~0_combout\);

-- Location: LCCOMB_X61_Y40_N0
\FD|ULA|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~1_combout\ = (\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~10_combout\ & (\FD|ULA|Mux22~0_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (((\FD|ULA|Mux26~0_combout\) # (!\FD|ULA|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~10_combout\,
	datab => \FD|ULA|Mux22~1_combout\,
	datac => \FD|ULA|Mux22~0_combout\,
	datad => \FD|ULA|Mux26~0_combout\,
	combout => \FD|ULA|Mux26~1_combout\);

-- Location: LCCOMB_X61_Y40_N18
\FD|ULA|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|mux_Banco_Ula|saida[5]~30_combout\ & ((\FD|id_ex_reg|inAlu\(5)) # (!\FD|ULA|Mux26~1_combout\))) # (!\FD|mux_Banco_Ula|saida[5]~30_combout\ & (\FD|id_ex_reg|inAlu\(5) & 
-- !\FD|ULA|Mux26~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mux_Banco_Ula|saida[5]~30_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|id_ex_reg|inAlu\(5),
	datad => \FD|ULA|Mux26~1_combout\,
	combout => \FD|ULA|Mux26~2_combout\);

-- Location: LCCOMB_X61_Y40_N12
\FD|ULA|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux26~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux26~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux26~2_combout\,
	combout => \FD|ULA|Mux26~3_combout\);

-- Location: FF_X63_Y36_N15
\FD|ex_mem_reg|ramAdd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux26~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(5));

-- Location: LCCOMB_X63_Y36_N18
\FD|mux_Ula_Memoria|saida[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[4]~31_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(4),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a4~portadataout\,
	combout => \FD|mux_Ula_Memoria|saida[4]~31_combout\);

-- Location: FF_X61_Y38_N17
\FD|BR|bancoReg_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[4]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(19));

-- Location: LCCOMB_X62_Y33_N16
\FD|BR|bancoReg_rtl_1_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X62_Y33_N17
\FD|BR|bancoReg_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|bancoReg_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(20));

-- Location: LCCOMB_X62_Y33_N18
\FD|BR|saidaB[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~62_combout\ = (\FD|BR|bancoReg_rtl_1_bypass\(20) & (((\FD|BR|bancoReg_rtl_1_bypass\(9)) # (!\FD|BR|bancoReg~38_combout\)) # (!\FD|BR|bancoReg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|bancoReg~39_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(20),
	datac => \FD|BR|bancoReg~38_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(9),
	combout => \FD|BR|saidaB[4]~62_combout\);

-- Location: LCCOMB_X61_Y34_N16
\FD|BR|saidaB[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[4]~63_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[4]~62_combout\ & ((\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\))) # (!\FD|BR|saidaB[4]~62_combout\ & (\FD|BR|bancoReg_rtl_1_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|Equal1~0_combout\,
	datab => \FD|BR|bancoReg_rtl_1_bypass\(19),
	datac => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a4\,
	datad => \FD|BR|saidaB[4]~62_combout\,
	combout => \FD|BR|saidaB[4]~63_combout\);

-- Location: FF_X61_Y34_N17
\FD|id_ex_reg|inMux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(4));

-- Location: LCCOMB_X62_Y36_N20
\FD|mux_Banco_Ula|saida[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[4]~31_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|id_ex_reg|inMux\(4),
	datac => \FD|id_ex_reg|execute_muxula_out~q\,
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|mux_Banco_Ula|saida[4]~31_combout\);

-- Location: LCCOMB_X61_Y40_N20
\FD|ULA|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~0_combout\ = (\FD|ULA|soma[4]~8_combout\ & !\FD|UCULA|ALUctr[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|soma[4]~8_combout\,
	datac => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux27~0_combout\);

-- Location: LCCOMB_X61_Y40_N6
\FD|ULA|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Add1~8_combout\)) # (!\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Mux27~0_combout\))))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Add1~8_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Mux27~0_combout\,
	combout => \FD|ULA|Mux27~1_combout\);

-- Location: LCCOMB_X61_Y40_N24
\FD|ULA|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~2_combout\ = (\FD|ULA|Mux27~1_combout\ & (((\FD|id_ex_reg|inAlu\(4) & \FD|mux_Banco_Ula|saida[4]~31_combout\)) # (!\FD|ULA|Mux31~9_combout\))) # (!\FD|ULA|Mux27~1_combout\ & (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(4)) # 
-- (\FD|mux_Banco_Ula|saida[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux27~1_combout\,
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|id_ex_reg|inAlu\(4),
	datad => \FD|mux_Banco_Ula|saida[4]~31_combout\,
	combout => \FD|ULA|Mux27~2_combout\);

-- Location: LCCOMB_X68_Y36_N28
\FD|ULA|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux27~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux27~2_combout\,
	combout => \FD|ULA|Mux27~3_combout\);

-- Location: FF_X67_Y36_N17
\FD|ex_mem_reg|ramAdd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ULA|Mux27~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(4));

-- Location: FF_X63_Y36_N31
\FD|mem_wb_reg|mux_0ent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(3));

-- Location: LCCOMB_X63_Y36_N30
\FD|mux_Ula_Memoria|saida[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[3]~3_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\)) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|mem_wb_reg|mux_0ent\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \FD|mem_wb_reg|mux_0ent\(3),
	datad => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	combout => \FD|mux_Ula_Memoria|saida[3]~3_combout\);

-- Location: FF_X63_Y36_N9
\FD|BR|bancoReg_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(17));

-- Location: LCCOMB_X63_Y36_N24
\FD|BR|saidaA[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[3]~7_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[3]~6_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\))) # (!\FD|BR|saidaA[3]~6_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[3]~6_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(17),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a3\,
	combout => \FD|BR|saidaA[3]~7_combout\);

-- Location: FF_X63_Y36_N25
\FD|id_ex_reg|inAlu[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(3));

-- Location: LCCOMB_X62_Y37_N24
\FD|ULA|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~0_combout\ = (!\FD|UCULA|ALUctr[0]~2_combout\ & \FD|ULA|soma[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~2_combout\,
	datac => \FD|ULA|soma[3]~6_combout\,
	combout => \FD|ULA|Mux28~0_combout\);

-- Location: LCCOMB_X62_Y37_N10
\FD|ULA|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~6_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Mux28~0_combout\)))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Mux28~0_combout\,
	datac => \FD|ULA|Add1~6_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux28~1_combout\);

-- Location: LCCOMB_X62_Y37_N28
\FD|ULA|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(3) & ((\FD|mux_Banco_Ula|saida[3]~3_combout\) # (!\FD|ULA|Mux28~1_combout\))) # (!\FD|id_ex_reg|inAlu\(3) & (\FD|mux_Banco_Ula|saida[3]~3_combout\ & 
-- !\FD|ULA|Mux28~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(3),
	datab => \FD|mux_Banco_Ula|saida[3]~3_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|ULA|Mux28~1_combout\,
	combout => \FD|ULA|Mux28~2_combout\);

-- Location: LCCOMB_X62_Y40_N2
\FD|ULA|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux28~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux28~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~8_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	combout => \FD|ULA|Mux28~3_combout\);

-- Location: LCCOMB_X63_Y40_N10
\FD|ex_mem_reg|ramAdd[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[3]~feeder_combout\ = \FD|ULA|Mux28~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux28~3_combout\,
	combout => \FD|ex_mem_reg|ramAdd[3]~feeder_combout\);

-- Location: FF_X63_Y40_N11
\FD|ex_mem_reg|ramAdd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|ramAdd[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(3));

-- Location: LCCOMB_X63_Y36_N10
\FD|mux_Ula_Memoria|saida[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[2]~0_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(2),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|mux_Ula_Memoria|saida[2]~0_combout\);

-- Location: FF_X63_Y38_N15
\FD|BR|bancoReg_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(15));

-- Location: LCCOMB_X63_Y38_N8
\FD|BR|saidaA[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[2]~1_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[2]~0_combout\ & ((\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\))) # (!\FD|BR|saidaA[2]~0_combout\ & (\FD|BR|bancoReg_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[2]~0_combout\,
	datab => \FD|BR|bancoReg_rtl_0_bypass\(15),
	datac => \FD|BR|Equal0~0_combout\,
	datad => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a2\,
	combout => \FD|BR|saidaA[2]~1_combout\);

-- Location: FF_X63_Y38_N9
\FD|id_ex_reg|inAlu[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(2));

-- Location: LCCOMB_X61_Y40_N16
\FD|ULA|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~0_combout\ = (!\FD|UCULA|ALUctr[0]~2_combout\ & \FD|ULA|soma[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~2_combout\,
	datac => \FD|ULA|soma[2]~4_combout\,
	combout => \FD|ULA|Mux29~0_combout\);

-- Location: LCCOMB_X61_Y40_N2
\FD|ULA|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~4_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Mux29~0_combout\)))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Mux29~0_combout\,
	datac => \FD|ULA|Mux22~1_combout\,
	datad => \FD|ULA|Add1~4_combout\,
	combout => \FD|ULA|Mux29~1_combout\);

-- Location: LCCOMB_X61_Y40_N28
\FD|ULA|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(2) & ((\FD|mux_Banco_Ula|saida[2]~0_combout\) # (!\FD|ULA|Mux29~1_combout\))) # (!\FD|id_ex_reg|inAlu\(2) & (!\FD|ULA|Mux29~1_combout\ & 
-- \FD|mux_Banco_Ula|saida[2]~0_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(2),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|Mux29~1_combout\,
	datad => \FD|mux_Banco_Ula|saida[2]~0_combout\,
	combout => \FD|ULA|Mux29~2_combout\);

-- Location: LCCOMB_X62_Y40_N8
\FD|ULA|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux29~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux29~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux29~2_combout\,
	combout => \FD|ULA|Mux29~3_combout\);

-- Location: LCCOMB_X63_Y40_N8
\FD|ex_mem_reg|ramAdd[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|ramAdd[2]~feeder_combout\ = \FD|ULA|Mux29~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ULA|Mux29~3_combout\,
	combout => \FD|ex_mem_reg|ramAdd[2]~feeder_combout\);

-- Location: FF_X63_Y40_N9
\FD|ex_mem_reg|ramAdd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|ramAdd[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(2));

-- Location: LCCOMB_X63_Y36_N0
\FD|mux_Ula_Memoria|saida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[1]~1_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(1),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \FD|mux_Ula_Memoria|saida[1]~1_combout\);

-- Location: FF_X65_Y34_N3
\FD|BR|bancoReg_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_1_bypass\(11));

-- Location: LCCOMB_X65_Y34_N0
\FD|BR|saidaB[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaB[0]~5_combout\ = (!\FD|BR|Equal1~0_combout\ & ((\FD|BR|saidaB[0]~4_combout\ & (\FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\)) # (!\FD|BR|saidaB[0]~4_combout\ & ((\FD|BR|bancoReg_rtl_1_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaB[0]~4_combout\,
	datab => \FD|BR|bancoReg_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \FD|BR|Equal1~0_combout\,
	datad => \FD|BR|bancoReg_rtl_1_bypass\(11),
	combout => \FD|BR|saidaB[0]~5_combout\);

-- Location: FF_X65_Y34_N1
\FD|id_ex_reg|inMux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaB[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inMux\(0));

-- Location: LCCOMB_X69_Y37_N18
\FD|mux_Banco_Ula|saida[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Banco_Ula|saida[0]~2_combout\ = (\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(0)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inMux\(0),
	datad => \FD|id_ex_reg|inShifter\(0),
	combout => \FD|mux_Banco_Ula|saida[0]~2_combout\);

-- Location: LCCOMB_X62_Y37_N30
\FD|ULA|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~3_combout\ = (\FD|UCULA|ALUctr[2]~6_combout\ & (\FD|ULA|Add1~0_combout\)) # (!\FD|UCULA|ALUctr[2]~6_combout\ & ((\FD|ULA|soma[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~0_combout\,
	datac => \FD|UCULA|ALUctr[2]~6_combout\,
	datad => \FD|ULA|soma[0]~0_combout\,
	combout => \FD|ULA|Mux31~3_combout\);

-- Location: LCCOMB_X62_Y38_N12
\FD|ULA|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(0) & ((\FD|mux_Banco_Ula|saida[0]~2_combout\) # (\FD|UCULA|ALUctr[0]~2_combout\))) # (!\FD|id_ex_reg|inAlu\(0) & (\FD|mux_Banco_Ula|saida[0]~2_combout\ & 
-- \FD|UCULA|ALUctr[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(0),
	datab => \FD|mux_Banco_Ula|saida[0]~2_combout\,
	datac => \FD|ULA|Mux31~9_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux31~2_combout\);

-- Location: LCCOMB_X62_Y38_N30
\FD|ULA|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~4_combout\ = (\FD|ULA|Mux31~2_combout\) # ((\FD|ULA|Mux31~3_combout\ & (!\FD|UCULA|ALUctr[0]~2_combout\ & \FD|UCULA|ALUctr[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~3_combout\,
	datab => \FD|UCULA|ALUctr[0]~2_combout\,
	datac => \FD|ULA|Mux31~2_combout\,
	datad => \FD|UCULA|ALUctr[1]~4_combout\,
	combout => \FD|ULA|Mux31~4_combout\);

-- Location: LCCOMB_X62_Y34_N18
\FD|ULA|slt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|slt[0]~0_combout\ = (!\FD|id_ex_reg|inAlu\(31) & ((\FD|id_ex_reg|execute_muxula_out~q\ & ((\FD|id_ex_reg|inShifter\(4)))) # (!\FD|id_ex_reg|execute_muxula_out~q\ & (\FD|id_ex_reg|inMux\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inMux\(31),
	datab => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|inAlu\(31),
	datad => \FD|id_ex_reg|inShifter\(4),
	combout => \FD|ULA|slt[0]~0_combout\);

-- Location: LCCOMB_X62_Y38_N20
\FD|ULA|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~7_combout\ = (\FD|UCULA|ALUctr[2]~6_combout\ & (\FD|UCULA|ALUctr[0]~2_combout\ & ((\FD|ULA|Add1~62_combout\) # (!\FD|ULA|slt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|slt[0]~0_combout\,
	datab => \FD|ULA|Add1~62_combout\,
	datac => \FD|UCULA|ALUctr[2]~6_combout\,
	datad => \FD|UCULA|ALUctr[0]~2_combout\,
	combout => \FD|ULA|Mux31~7_combout\);

-- Location: LCCOMB_X62_Y38_N0
\FD|ULA|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~5_combout\ = (\FD|id_ex_reg|inAlu\(31) & (\FD|ULA|Add1~62_combout\ $ (((\FD|mux_Banco_Ula|saida[31]~4_combout\ & !\FD|ULA|Mux0~3_combout\))))) # (!\FD|id_ex_reg|inAlu\(31) & ((\FD|mux_Banco_Ula|saida[31]~4_combout\) # 
-- (\FD|ULA|Mux0~3_combout\ $ (\FD|ULA|Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(31),
	datab => \FD|mux_Banco_Ula|saida[31]~4_combout\,
	datac => \FD|ULA|Mux0~3_combout\,
	datad => \FD|ULA|Add1~62_combout\,
	combout => \FD|ULA|Mux31~5_combout\);

-- Location: LCCOMB_X62_Y38_N2
\FD|ULA|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~6_combout\ = (\FD|ULA|Mux31~5_combout\ & \FD|UCULA|ALUctr[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux31~5_combout\,
	datad => \FD|UCULA|ALUctr[1]~4_combout\,
	combout => \FD|ULA|Mux31~6_combout\);

-- Location: LCCOMB_X62_Y38_N14
\FD|ULA|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux31~8_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & ((\FD|ULA|Mux31~4_combout\) # ((\FD|ULA|Mux31~7_combout\ & \FD|ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~4_combout\,
	datab => \FD|ULA|Mux31~7_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \FD|ULA|Mux31~8_combout\);

-- Location: FF_X62_Y38_N15
\FD|ex_mem_reg|ramAdd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Mux31~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|ramAdd\(0));

-- Location: FF_X65_Y36_N29
\FD|mem_wb_reg|mux_0ent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|ex_mem_reg|ramAdd\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|mem_wb_reg|mux_0ent\(0));

-- Location: LCCOMB_X65_Y36_N28
\FD|mux_Ula_Memoria|saida[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_Ula_Memoria|saida[0]~2_combout\ = (\FD|mem_wb_reg|wb_memtoreg_out~q\ & ((\FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\FD|mem_wb_reg|wb_memtoreg_out~q\ & (\FD|mem_wb_reg|mux_0ent\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|mem_wb_reg|wb_memtoreg_out~q\,
	datac => \FD|mem_wb_reg|mux_0ent\(0),
	datad => \FD|RAM|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \FD|mux_Ula_Memoria|saida[0]~2_combout\);

-- Location: FF_X65_Y35_N9
\FD|BR|bancoReg_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|mux_Ula_Memoria|saida[10]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|bancoReg_rtl_0_bypass\(31));

-- Location: LCCOMB_X65_Y35_N10
\FD|BR|saidaA[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|saidaA[10]~51_combout\ = (\FD|BR|Equal0~0_combout\ & ((\FD|BR|saidaA[10]~50_combout\ & (\FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\)) # (!\FD|BR|saidaA[10]~50_combout\ & ((\FD|BR|bancoReg_rtl_0_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|saidaA[10]~50_combout\,
	datab => \FD|BR|bancoReg_rtl_0|auto_generated|ram_block1a10\,
	datac => \FD|BR|bancoReg_rtl_0_bypass\(31),
	datad => \FD|BR|Equal0~0_combout\,
	combout => \FD|BR|saidaA[10]~51_combout\);

-- Location: FF_X65_Y35_N11
\FD|id_ex_reg|inAlu[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|BR|saidaA[10]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAlu\(10));

-- Location: LCCOMB_X59_Y37_N4
\FD|ULA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~3_combout\ = (!\FD|ULA|Add1~24_combout\ & !\FD|ULA|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Add1~24_combout\,
	datad => \FD|ULA|Add1~26_combout\,
	combout => \FD|ULA|Equal0~3_combout\);

-- Location: LCCOMB_X59_Y37_N18
\FD|ULA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~2_combout\ = (!\FD|ULA|Add1~18_combout\ & (!\FD|ULA|Add1~16_combout\ & (!\FD|ULA|Add1~12_combout\ & !\FD|ULA|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~18_combout\,
	datab => \FD|ULA|Add1~16_combout\,
	datac => \FD|ULA|Add1~12_combout\,
	datad => \FD|ULA|Add1~22_combout\,
	combout => \FD|ULA|Equal0~2_combout\);

-- Location: LCCOMB_X59_Y37_N30
\FD|ULA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~4_combout\ = (!\FD|ULA|Add1~20_combout\ & (\FD|ULA|Equal0~3_combout\ & (!\FD|ULA|Add1~30_combout\ & \FD|ULA|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~20_combout\,
	datab => \FD|ULA|Equal0~3_combout\,
	datac => \FD|ULA|Add1~30_combout\,
	datad => \FD|ULA|Equal0~2_combout\,
	combout => \FD|ULA|Equal0~4_combout\);

-- Location: LCCOMB_X61_Y40_N4
\FD|ULA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~1_combout\ = (!\FD|ULA|Add1~4_combout\ & (!\FD|ULA|Add1~8_combout\ & (!\FD|ULA|Add1~14_combout\ & !\FD|ULA|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~4_combout\,
	datab => \FD|ULA|Add1~8_combout\,
	datac => \FD|ULA|Add1~14_combout\,
	datad => \FD|ULA|Add1~10_combout\,
	combout => \FD|ULA|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y37_N22
\FD|ULA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~0_combout\ = (!\FD|ULA|Add1~62_combout\ & (!\FD|ULA|Add1~2_combout\ & (!\FD|ULA|Add1~6_combout\ & !\FD|ULA|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~62_combout\,
	datab => \FD|ULA|Add1~2_combout\,
	datac => \FD|ULA|Add1~6_combout\,
	datad => \FD|ULA|Add1~0_combout\,
	combout => \FD|ULA|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y35_N30
\FD|ULA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~8_combout\ = (!\FD|ULA|Add1~54_combout\ & (!\FD|ULA|Add1~56_combout\ & (!\FD|ULA|Add1~52_combout\ & !\FD|ULA|Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~54_combout\,
	datab => \FD|ULA|Add1~56_combout\,
	datac => \FD|ULA|Add1~52_combout\,
	datad => \FD|ULA|Add1~50_combout\,
	combout => \FD|ULA|Equal0~8_combout\);

-- Location: LCCOMB_X59_Y36_N2
\FD|ULA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~6_combout\ = (!\FD|ULA|Add1~36_combout\ & (!\FD|ULA|Add1~34_combout\ & (!\FD|ULA|Add1~40_combout\ & !\FD|ULA|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~36_combout\,
	datab => \FD|ULA|Add1~34_combout\,
	datac => \FD|ULA|Add1~40_combout\,
	datad => \FD|ULA|Add1~38_combout\,
	combout => \FD|ULA|Equal0~6_combout\);

-- Location: LCCOMB_X59_Y35_N8
\FD|ULA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~7_combout\ = (!\FD|ULA|Add1~48_combout\ & (!\FD|ULA|Add1~44_combout\ & (!\FD|ULA|Add1~42_combout\ & !\FD|ULA|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~48_combout\,
	datab => \FD|ULA|Add1~44_combout\,
	datac => \FD|ULA|Add1~42_combout\,
	datad => \FD|ULA|Add1~46_combout\,
	combout => \FD|ULA|Equal0~7_combout\);

-- Location: LCCOMB_X59_Y36_N0
\FD|ULA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~5_combout\ = (!\FD|ULA|Add1~28_combout\ & (!\FD|ULA|Add1~58_combout\ & (!\FD|ULA|Add1~32_combout\ & !\FD|ULA|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Add1~28_combout\,
	datab => \FD|ULA|Add1~58_combout\,
	datac => \FD|ULA|Add1~32_combout\,
	datad => \FD|ULA|Add1~60_combout\,
	combout => \FD|ULA|Equal0~5_combout\);

-- Location: LCCOMB_X59_Y36_N4
\FD|ULA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~9_combout\ = (\FD|ULA|Equal0~8_combout\ & (\FD|ULA|Equal0~6_combout\ & (\FD|ULA|Equal0~7_combout\ & \FD|ULA|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~8_combout\,
	datab => \FD|ULA|Equal0~6_combout\,
	datac => \FD|ULA|Equal0~7_combout\,
	datad => \FD|ULA|Equal0~5_combout\,
	combout => \FD|ULA|Equal0~9_combout\);

-- Location: LCCOMB_X62_Y37_N4
\FD|ULA|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Equal0~10_combout\ = (\FD|ULA|Equal0~4_combout\ & (\FD|ULA|Equal0~1_combout\ & (\FD|ULA|Equal0~0_combout\ & \FD|ULA|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Equal0~4_combout\,
	datab => \FD|ULA|Equal0~1_combout\,
	datac => \FD|ULA|Equal0~0_combout\,
	datad => \FD|ULA|Equal0~9_combout\,
	combout => \FD|ULA|Equal0~10_combout\);

-- Location: FF_X62_Y37_N5
\FD|ex_mem_reg|zerout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ULA|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|zerout~q\);

-- Location: FF_X69_Y37_N29
\FD|ex_mem_reg|memacess_andbq_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|id_ex_reg|execute_ulaop_out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|memacess_andbq_out~q\);

-- Location: LCCOMB_X69_Y37_N8
\FD|sel_mux_beq\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|sel_mux_beq~combout\ = (\FD|ex_mem_reg|zerout~q\ & \FD|ex_mem_reg|memacess_andbq_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|zerout~q\,
	datad => \FD|ex_mem_reg|memacess_andbq_out~q\,
	combout => \FD|sel_mux_beq~combout\);

-- Location: FF_X70_Y33_N9
\FD|ex_mem_reg|inMuxPc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inMuxPc[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(4));

-- Location: LCCOMB_X70_Y32_N10
\FD|PC|data_s[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~2_combout\ = (\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(4))) # (!\FD|sel_mux_beq~combout\ & ((\FD|Somador|saida[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|sel_mux_beq~combout\,
	datab => \FD|ex_mem_reg|inMuxPc\(4),
	datad => \FD|Somador|saida[4]~4_combout\,
	combout => \FD|PC|data_s[4]~2_combout\);

-- Location: FF_X70_Y32_N11
\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|PC|data_s[4]~2_combout\,
	asdata => \FD|if_id_reg|rom_out\(2),
	sload => \UC|pontosDeControle[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

-- Location: LCCOMB_X69_Y32_N20
\FD|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~20_combout\ = (\FD|PC|data_s\(3) & !\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \FD|ROM|memROM~20_combout\);

-- Location: LCCOMB_X69_Y32_N22
\FD|ROM|memROM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ROM|memROM~21_combout\ = (\FD|PC|data_s\(4) & (\FD|ROM|memROM~20_combout\ & (\FD|ROM|memROM~12_combout\ & \FD|PC|data_s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|ROM|memROM~20_combout\,
	datac => \FD|ROM|memROM~12_combout\,
	datad => \FD|PC|data_s\(5),
	combout => \FD|ROM|memROM~21_combout\);

-- Location: FF_X69_Y32_N23
\FD|if_id_reg|rom_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ROM|memROM~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|rom_out\(28));

-- Location: LCCOMB_X66_Y32_N24
\UC|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|Equal2~0_combout\ = (!\FD|if_id_reg|rom_out\(28) & (\FD|if_id_reg|rom_out\(26) & \FD|if_id_reg|rom_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|if_id_reg|rom_out\(28),
	datac => \FD|if_id_reg|rom_out\(26),
	datad => \FD|if_id_reg|rom_out\(27),
	combout => \UC|Equal2~0_combout\);

-- Location: FF_X66_Y32_N25
\FD|id_ex_reg|execute_muxula_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \UC|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|execute_muxula_out~q\);

-- Location: LCCOMB_X69_Y37_N12
\FD|UCULA|ALUctr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[0]~0_combout\ = (!\FD|id_ex_reg|execute_muxula_out~q\ & !\FD|id_ex_reg|execute_ulaop_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|execute_muxula_out~q\,
	datac => \FD|id_ex_reg|execute_ulaop_out\(1),
	combout => \FD|UCULA|ALUctr[0]~0_combout\);

-- Location: LCCOMB_X69_Y37_N2
\FD|UCULA|ALUctr[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[3]~7_combout\ = (\FD|id_ex_reg|inShifter\(1) & (((\FD|id_ex_reg|inShifter\(2)) # (\FD|id_ex_reg|inShifter\(0))))) # (!\FD|id_ex_reg|inShifter\(1) & ((\FD|id_ex_reg|inShifter\(3)) # ((!\FD|id_ex_reg|inShifter\(2) & 
-- \FD|id_ex_reg|inShifter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inShifter\(1),
	datab => \FD|id_ex_reg|inShifter\(3),
	datac => \FD|id_ex_reg|inShifter\(2),
	datad => \FD|id_ex_reg|inShifter\(0),
	combout => \FD|UCULA|ALUctr[3]~7_combout\);

-- Location: LCCOMB_X69_Y37_N4
\FD|UCULA|ALUctr[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCULA|ALUctr[3]~8_combout\ = (\FD|UCULA|ALUctr[0]~0_combout\ & ((\FD|id_ex_reg|inShifter\(4)) # ((\FD|UCULA|ALUctr[3]~7_combout\) # (!\FD|id_ex_reg|rtout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[0]~0_combout\,
	datab => \FD|id_ex_reg|inShifter\(4),
	datac => \FD|id_ex_reg|rtout\(1),
	datad => \FD|UCULA|ALUctr[3]~7_combout\,
	combout => \FD|UCULA|ALUctr[3]~8_combout\);

-- Location: LCCOMB_X62_Y37_N8
\FD|ULA|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~0_combout\ = (!\FD|UCULA|ALUctr[0]~2_combout\ & \FD|ULA|soma[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|UCULA|ALUctr[0]~2_combout\,
	datad => \FD|ULA|soma[1]~2_combout\,
	combout => \FD|ULA|Mux30~0_combout\);

-- Location: LCCOMB_X62_Y37_N2
\FD|ULA|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~1_combout\ = (\FD|ULA|Mux22~0_combout\ & ((\FD|ULA|Mux22~1_combout\ & ((\FD|ULA|Add1~2_combout\))) # (!\FD|ULA|Mux22~1_combout\ & (\FD|ULA|Mux30~0_combout\)))) # (!\FD|ULA|Mux22~0_combout\ & (((!\FD|ULA|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux22~0_combout\,
	datab => \FD|ULA|Mux30~0_combout\,
	datac => \FD|ULA|Add1~2_combout\,
	datad => \FD|ULA|Mux22~1_combout\,
	combout => \FD|ULA|Mux30~1_combout\);

-- Location: LCCOMB_X62_Y40_N20
\FD|ULA|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~2_combout\ = (\FD|ULA|Mux31~9_combout\ & ((\FD|id_ex_reg|inAlu\(1) & ((\FD|mux_Banco_Ula|saida[1]~1_combout\) # (!\FD|ULA|Mux30~1_combout\))) # (!\FD|id_ex_reg|inAlu\(1) & (!\FD|ULA|Mux30~1_combout\ & 
-- \FD|mux_Banco_Ula|saida[1]~1_combout\)))) # (!\FD|ULA|Mux31~9_combout\ & (((\FD|ULA|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|id_ex_reg|inAlu\(1),
	datab => \FD|ULA|Mux31~9_combout\,
	datac => \FD|ULA|Mux30~1_combout\,
	datad => \FD|mux_Banco_Ula|saida[1]~1_combout\,
	combout => \FD|ULA|Mux30~2_combout\);

-- Location: LCCOMB_X62_Y40_N6
\FD|ULA|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ULA|Mux30~3_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux30~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \FD|ULA|Mux30~3_combout\);

-- Location: LCCOMB_X62_Y40_N24
\hex7seg|display0|rascSaida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[0]~2_combout\ = (\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux31~8_combout\ & (\FD|ULA|Mux30~3_combout\ $ (\FD|ULA|Mux29~3_combout\)))) # (!\FD|ULA|Mux28~3_combout\ & (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ 
-- (\FD|ULA|Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux29~3_combout\,
	datad => \FD|ULA|Mux31~8_combout\,
	combout => \hex7seg|display0|rascSaida7seg[0]~2_combout\);

-- Location: LCCOMB_X62_Y40_N18
\hex7seg|display0|rascSaida7seg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[1]~3_combout\ = (\FD|ULA|Mux30~3_combout\ & ((\FD|ULA|Mux31~8_combout\ & (\FD|ULA|Mux28~3_combout\)) # (!\FD|ULA|Mux31~8_combout\ & ((\FD|ULA|Mux29~3_combout\))))) # (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux29~3_combout\ & 
-- (\FD|ULA|Mux28~3_combout\ $ (\FD|ULA|Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux29~3_combout\,
	datad => \FD|ULA|Mux31~8_combout\,
	combout => \hex7seg|display0|rascSaida7seg[1]~3_combout\);

-- Location: LCCOMB_X62_Y40_N12
\hex7seg|display0|rascSaida7seg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[2]~4_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & (!\FD|ULA|Mux29~2_combout\ & (!\FD|ULA|Mux28~2_combout\ & \FD|ULA|Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~8_combout\,
	datab => \FD|ULA|Mux29~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux30~2_combout\,
	combout => \hex7seg|display0|rascSaida7seg[2]~4_combout\);

-- Location: LCCOMB_X62_Y38_N24
\hex7seg|display0|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[2]~5_combout\ = (\hex7seg|display0|rascSaida7seg[2]~4_combout\ & (!\FD|ULA|Mux31~4_combout\ & ((!\FD|ULA|Mux31~6_combout\) # (!\FD|ULA|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|display0|rascSaida7seg[2]~4_combout\,
	datab => \FD|ULA|Mux31~7_combout\,
	datac => \FD|ULA|Mux31~4_combout\,
	datad => \FD|ULA|Mux31~6_combout\,
	combout => \hex7seg|display0|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X62_Y40_N22
\hex7seg|display0|rascSaida7seg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg~6_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & (\FD|ULA|Mux29~2_combout\ & \FD|ULA|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~8_combout\,
	datab => \FD|ULA|Mux29~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	combout => \hex7seg|display0|rascSaida7seg~6_combout\);

-- Location: LCCOMB_X62_Y40_N0
\hex7seg|display0|rascSaida7seg[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[2]~7_combout\ = (\hex7seg|display0|rascSaida7seg[2]~5_combout\) # ((\hex7seg|display0|rascSaida7seg~6_combout\ & ((\FD|ULA|Mux30~3_combout\) # (!\FD|ULA|Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~8_combout\,
	datab => \hex7seg|display0|rascSaida7seg[2]~5_combout\,
	datac => \hex7seg|display0|rascSaida7seg~6_combout\,
	datad => \FD|ULA|Mux30~3_combout\,
	combout => \hex7seg|display0|rascSaida7seg[2]~7_combout\);

-- Location: LCCOMB_X62_Y40_N10
\hex7seg|display0|rascSaida7seg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[3]~8_combout\ = (\FD|ULA|Mux30~3_combout\ & ((\FD|ULA|Mux29~3_combout\ & ((\FD|ULA|Mux31~8_combout\))) # (!\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux28~3_combout\ & !\FD|ULA|Mux31~8_combout\)))) # (!\FD|ULA|Mux30~3_combout\ & 
-- (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux29~3_combout\ $ (\FD|ULA|Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux29~3_combout\,
	datad => \FD|ULA|Mux31~8_combout\,
	combout => \hex7seg|display0|rascSaida7seg[3]~8_combout\);

-- Location: LCCOMB_X62_Y40_N30
\hex7seg|display0|rascSaida7seg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[0]~10_combout\ = (\FD|ULA|Mux28~3_combout\ & (((!\FD|ULA|Mux31~8_combout\ & !\FD|ULA|Mux30~3_combout\)) # (!\hex7seg|display0|rascSaida7seg~6_combout\))) # (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux31~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux31~8_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \hex7seg|display0|rascSaida7seg~6_combout\,
	datad => \FD|ULA|Mux30~3_combout\,
	combout => \hex7seg|display0|rascSaida7seg[0]~10_combout\);

-- Location: LCCOMB_X62_Y40_N14
\hex7seg|display0|rascSaida7seg[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[0]~14_combout\ = ((\FD|ULA|Mux31~8_combout\ & ((\FD|UCULA|ALUctr[3]~8_combout\) # (!\FD|ULA|Mux29~2_combout\)))) # (!\FD|ULA|Mux28~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCULA|ALUctr[3]~8_combout\,
	datab => \FD|ULA|Mux29~2_combout\,
	datac => \FD|ULA|Mux28~2_combout\,
	datad => \FD|ULA|Mux31~8_combout\,
	combout => \hex7seg|display0|rascSaida7seg[0]~14_combout\);

-- Location: LCCOMB_X62_Y40_N28
\hex7seg|display0|rascSaida7seg[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[4]~9_combout\ = (\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux30~3_combout\)) # (!\FD|ULA|Mux29~3_combout\ & (\FD|ULA|Mux31~8_combout\ & ((!\FD|ULA|Mux28~3_combout\) # (!\FD|ULA|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux29~3_combout\,
	datad => \FD|ULA|Mux31~8_combout\,
	combout => \hex7seg|display0|rascSaida7seg[4]~9_combout\);

-- Location: LCCOMB_X62_Y40_N16
\hex7seg|display0|rascSaida7seg[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[4]~11_combout\ = (\FD|ULA|Mux29~3_combout\ & ((\hex7seg|display0|rascSaida7seg[4]~9_combout\ & (\hex7seg|display0|rascSaida7seg[0]~10_combout\)) # (!\hex7seg|display0|rascSaida7seg[4]~9_combout\ & 
-- ((\hex7seg|display0|rascSaida7seg[0]~14_combout\))))) # (!\FD|ULA|Mux29~3_combout\ & (((\hex7seg|display0|rascSaida7seg[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|display0|rascSaida7seg[0]~10_combout\,
	datab => \FD|ULA|Mux29~3_combout\,
	datac => \hex7seg|display0|rascSaida7seg[0]~14_combout\,
	datad => \hex7seg|display0|rascSaida7seg[4]~9_combout\,
	combout => \hex7seg|display0|rascSaida7seg[4]~11_combout\);

-- Location: LCCOMB_X62_Y40_N26
\hex7seg|display0|rascSaida7seg[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[5]~12_combout\ = (\FD|ULA|Mux30~3_combout\ & (!\FD|ULA|Mux28~3_combout\ & ((\FD|ULA|Mux31~8_combout\) # (!\FD|ULA|Mux29~3_combout\)))) # (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux31~8_combout\ & (\FD|ULA|Mux28~3_combout\ $ 
-- (!\FD|ULA|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux29~3_combout\,
	datad => \FD|ULA|Mux31~8_combout\,
	combout => \hex7seg|display0|rascSaida7seg[5]~12_combout\);

-- Location: LCCOMB_X62_Y40_N4
\hex7seg|display0|rascSaida7seg[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display0|rascSaida7seg[6]~13_combout\ = (\FD|ULA|Mux31~8_combout\ & (!\FD|ULA|Mux28~3_combout\ & (\FD|ULA|Mux30~3_combout\ $ (!\FD|ULA|Mux29~3_combout\)))) # (!\FD|ULA|Mux31~8_combout\ & (!\FD|ULA|Mux30~3_combout\ & (\FD|ULA|Mux28~3_combout\ $ 
-- (!\FD|ULA|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux30~3_combout\,
	datab => \FD|ULA|Mux28~3_combout\,
	datac => \FD|ULA|Mux29~3_combout\,
	datad => \FD|ULA|Mux31~8_combout\,
	combout => \hex7seg|display0|rascSaida7seg[6]~13_combout\);

-- Location: LCCOMB_X68_Y36_N0
\hex7seg|display1|rascSaida7seg[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[0]~32_combout\ = (\FD|ULA|Mux25~2_combout\ & (\FD|UCULA|ALUctr[3]~8_combout\ $ (((\FD|ULA|Mux24~2_combout\) # (!\FD|ULA|Mux27~2_combout\))))) # (!\FD|ULA|Mux25~2_combout\ & (!\FD|ULA|Mux24~2_combout\ & 
-- ((\FD|ULA|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux24~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux27~2_combout\,
	combout => \hex7seg|display1|rascSaida7seg[0]~32_combout\);

-- Location: LCCOMB_X68_Y36_N26
\hex7seg|display1|rascSaida7seg[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[0]~33_combout\ = (\FD|UCULA|ALUctr[3]~8_combout\) # ((\FD|ULA|Mux25~2_combout\ & \FD|ULA|Mux24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \hex7seg|display1|rascSaida7seg[0]~33_combout\);

-- Location: LCCOMB_X68_Y36_N12
\hex7seg|display1|rascSaida7seg[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[0]~34_combout\ = (\FD|ULA|Mux24~2_combout\ & (((\FD|ULA|Mux27~2_combout\)))) # (!\FD|ULA|Mux24~2_combout\ & (\FD|ULA|Mux25~2_combout\ & (!\FD|UCULA|ALUctr[3]~8_combout\ & !\FD|ULA|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datab => \FD|ULA|Mux24~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux27~2_combout\,
	combout => \hex7seg|display1|rascSaida7seg[0]~34_combout\);

-- Location: LCCOMB_X68_Y36_N22
\hex7seg|display1|rascSaida7seg[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[0]~22_combout\ = (\FD|ULA|Mux26~3_combout\ & (!\hex7seg|display1|rascSaida7seg[0]~32_combout\ & (!\hex7seg|display1|rascSaida7seg[0]~33_combout\ & \hex7seg|display1|rascSaida7seg[0]~34_combout\))) # 
-- (!\FD|ULA|Mux26~3_combout\ & (\hex7seg|display1|rascSaida7seg[0]~32_combout\ & ((\hex7seg|display1|rascSaida7seg[0]~34_combout\) # (!\hex7seg|display1|rascSaida7seg[0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \hex7seg|display1|rascSaida7seg[0]~32_combout\,
	datac => \hex7seg|display1|rascSaida7seg[0]~33_combout\,
	datad => \hex7seg|display1|rascSaida7seg[0]~34_combout\,
	combout => \hex7seg|display1|rascSaida7seg[0]~22_combout\);

-- Location: LCCOMB_X68_Y36_N24
\hex7seg|display1|rascSaida7seg[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[1]~23_combout\ = (\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux27~3_combout\ & ((\FD|ULA|Mux24~3_combout\))) # (!\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux25~3_combout\ & 
-- (\FD|ULA|Mux24~3_combout\ $ (\FD|ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux25~3_combout\,
	datac => \FD|ULA|Mux24~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \hex7seg|display1|rascSaida7seg[1]~23_combout\);

-- Location: LCCOMB_X68_Y36_N20
\hex7seg|display1|rascSaida7seg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg~25_combout\ = (\FD|ULA|Mux25~2_combout\ & (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux24~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux25~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux24~2_combout\,
	combout => \hex7seg|display1|rascSaida7seg~25_combout\);

-- Location: LCCOMB_X68_Y36_N10
\hex7seg|display1|rascSaida7seg[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[2]~24_combout\ = (\FD|ULA|Mux26~3_combout\ & (!\FD|ULA|Mux25~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & !\FD|ULA|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux25~3_combout\,
	datac => \FD|ULA|Mux24~3_combout\,
	datad => \FD|ULA|Mux27~2_combout\,
	combout => \hex7seg|display1|rascSaida7seg[2]~24_combout\);

-- Location: LCCOMB_X68_Y36_N30
\hex7seg|display1|rascSaida7seg[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[2]~26_combout\ = (\hex7seg|display1|rascSaida7seg[2]~24_combout\) # ((\hex7seg|display1|rascSaida7seg~25_combout\ & ((\FD|ULA|Mux26~3_combout\) # (!\FD|ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \hex7seg|display1|rascSaida7seg~25_combout\,
	datac => \hex7seg|display1|rascSaida7seg[2]~24_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \hex7seg|display1|rascSaida7seg[2]~26_combout\);

-- Location: LCCOMB_X68_Y36_N16
\hex7seg|display1|rascSaida7seg[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[3]~27_combout\ = (\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux25~3_combout\ & ((\FD|ULA|Mux27~3_combout\))) # (!\FD|ULA|Mux25~3_combout\ & (\FD|ULA|Mux24~3_combout\ & !\FD|ULA|Mux27~3_combout\)))) # (!\FD|ULA|Mux26~3_combout\ & 
-- (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux25~3_combout\ $ (\FD|ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux25~3_combout\,
	datac => \FD|ULA|Mux24~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \hex7seg|display1|rascSaida7seg[3]~27_combout\);

-- Location: LCCOMB_X61_Y40_N22
\hex7seg|display1|rascSaida7seg[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[4]~35_combout\ = (!\FD|UCULA|ALUctr[3]~8_combout\ & (\FD|ULA|Mux25~2_combout\ & !\FD|ULA|Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCULA|ALUctr[3]~8_combout\,
	datac => \FD|ULA|Mux25~2_combout\,
	datad => \FD|ULA|Mux26~2_combout\,
	combout => \hex7seg|display1|rascSaida7seg[4]~35_combout\);

-- Location: LCCOMB_X68_Y36_N2
\hex7seg|display1|rascSaida7seg[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[4]~28_combout\ = (\FD|ULA|Mux27~3_combout\ & ((\FD|ULA|Mux26~3_combout\ & ((!\FD|ULA|Mux24~3_combout\))) # (!\FD|ULA|Mux26~3_combout\ & ((\FD|ULA|Mux24~3_combout\) # (!\FD|ULA|Mux25~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux25~3_combout\,
	datac => \FD|ULA|Mux24~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \hex7seg|display1|rascSaida7seg[4]~28_combout\);

-- Location: LCCOMB_X61_Y40_N26
\hex7seg|display1|rascSaida7seg[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[4]~29_combout\ = (\hex7seg|display1|rascSaida7seg[4]~35_combout\ & (((\FD|ULA|Mux27~2_combout\ & !\hex7seg|display1|rascSaida7seg[4]~28_combout\)) # (!\FD|ULA|Mux24~2_combout\))) # 
-- (!\hex7seg|display1|rascSaida7seg[4]~35_combout\ & (((\hex7seg|display1|rascSaida7seg[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux24~2_combout\,
	datab => \FD|ULA|Mux27~2_combout\,
	datac => \hex7seg|display1|rascSaida7seg[4]~35_combout\,
	datad => \hex7seg|display1|rascSaida7seg[4]~28_combout\,
	combout => \hex7seg|display1|rascSaida7seg[4]~29_combout\);

-- Location: LCCOMB_X68_Y36_N4
\hex7seg|display1|rascSaida7seg[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[5]~30_combout\ = (\FD|ULA|Mux26~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & ((\FD|ULA|Mux27~3_combout\) # (!\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux27~3_combout\ & (\FD|ULA|Mux25~3_combout\ $ 
-- (!\FD|ULA|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux25~3_combout\,
	datac => \FD|ULA|Mux24~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \hex7seg|display1|rascSaida7seg[5]~30_combout\);

-- Location: LCCOMB_X68_Y36_N6
\hex7seg|display1|rascSaida7seg[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display1|rascSaida7seg[6]~31_combout\ = (\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux24~3_combout\ & (\FD|ULA|Mux26~3_combout\ $ (!\FD|ULA|Mux25~3_combout\)))) # (!\FD|ULA|Mux27~3_combout\ & (!\FD|ULA|Mux26~3_combout\ & (\FD|ULA|Mux25~3_combout\ $ 
-- (!\FD|ULA|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux26~3_combout\,
	datab => \FD|ULA|Mux25~3_combout\,
	datac => \FD|ULA|Mux24~3_combout\,
	datad => \FD|ULA|Mux27~3_combout\,
	combout => \hex7seg|display1|rascSaida7seg[6]~31_combout\);

-- Location: LCCOMB_X70_Y35_N10
\hex7seg|display2|rascSaida7seg[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[0]~32_combout\ = (\FD|ULA|Mux20~2_combout\ & (\FD|ULA|Mux21~2_combout\ & (!\FD|UCULA|ALUctr[3]~8_combout\))) # (!\FD|ULA|Mux20~2_combout\ & (\FD|ULA|Mux23~2_combout\ $ (((\FD|ULA|Mux21~2_combout\ & 
-- !\FD|UCULA|ALUctr[3]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux20~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux23~2_combout\,
	combout => \hex7seg|display2|rascSaida7seg[0]~32_combout\);

-- Location: LCCOMB_X70_Y35_N6
\hex7seg|display2|rascSaida7seg[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[0]~34_combout\ = (\FD|ULA|Mux20~2_combout\ & (((\FD|ULA|Mux23~2_combout\)))) # (!\FD|ULA|Mux20~2_combout\ & (\FD|ULA|Mux21~2_combout\ & (!\FD|UCULA|ALUctr[3]~8_combout\ & !\FD|ULA|Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux20~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	datad => \FD|ULA|Mux23~2_combout\,
	combout => \hex7seg|display2|rascSaida7seg[0]~34_combout\);

-- Location: LCCOMB_X70_Y35_N12
\hex7seg|display2|rascSaida7seg[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[0]~33_combout\ = (\FD|UCULA|ALUctr[3]~8_combout\) # ((\FD|ULA|Mux20~2_combout\ & \FD|ULA|Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux20~2_combout\,
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \hex7seg|display2|rascSaida7seg[0]~33_combout\);

-- Location: LCCOMB_X70_Y35_N16
\hex7seg|display2|rascSaida7seg[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[0]~22_combout\ = (\hex7seg|display2|rascSaida7seg[0]~32_combout\ & (!\FD|ULA|Mux22~5_combout\ & ((\hex7seg|display2|rascSaida7seg[0]~34_combout\) # (!\hex7seg|display2|rascSaida7seg[0]~33_combout\)))) # 
-- (!\hex7seg|display2|rascSaida7seg[0]~32_combout\ & (\FD|ULA|Mux22~5_combout\ & (\hex7seg|display2|rascSaida7seg[0]~34_combout\ & !\hex7seg|display2|rascSaida7seg[0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|display2|rascSaida7seg[0]~32_combout\,
	datab => \FD|ULA|Mux22~5_combout\,
	datac => \hex7seg|display2|rascSaida7seg[0]~34_combout\,
	datad => \hex7seg|display2|rascSaida7seg[0]~33_combout\,
	combout => \hex7seg|display2|rascSaida7seg[0]~22_combout\);

-- Location: LCCOMB_X70_Y35_N26
\hex7seg|display2|rascSaida7seg[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[1]~23_combout\ = (\FD|ULA|Mux20~3_combout\ & ((\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux22~5_combout\)) # (!\FD|ULA|Mux23~3_combout\ & ((\FD|ULA|Mux21~3_combout\))))) # (!\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux21~3_combout\ & 
-- (\FD|ULA|Mux23~3_combout\ $ (\FD|ULA|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux20~3_combout\,
	datac => \FD|ULA|Mux22~5_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \hex7seg|display2|rascSaida7seg[1]~23_combout\);

-- Location: LCCOMB_X69_Y39_N8
\hex7seg|display2|rascSaida7seg[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[1]~25_combout\ = (!\FD|ULA|Mux21~2_combout\ & (\FD|ULA|Mux22~4_combout\ & !\FD|UCULA|ALUctr[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~4_combout\,
	datad => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \hex7seg|display2|rascSaida7seg[1]~25_combout\);

-- Location: LCCOMB_X70_Y35_N28
\hex7seg|display2|rascSaida7seg[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[2]~24_combout\ = (\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux21~3_combout\ & ((\FD|ULA|Mux22~5_combout\) # (!\FD|ULA|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux20~3_combout\,
	datac => \FD|ULA|Mux22~5_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \hex7seg|display2|rascSaida7seg[2]~24_combout\);

-- Location: LCCOMB_X70_Y35_N14
\hex7seg|display2|rascSaida7seg[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[2]~26_combout\ = (\hex7seg|display2|rascSaida7seg[2]~24_combout\) # ((\hex7seg|display2|rascSaida7seg[1]~25_combout\ & (!\FD|ULA|Mux20~3_combout\ & !\FD|ULA|Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|display2|rascSaida7seg[1]~25_combout\,
	datab => \hex7seg|display2|rascSaida7seg[2]~24_combout\,
	datac => \FD|ULA|Mux20~3_combout\,
	datad => \FD|ULA|Mux23~2_combout\,
	combout => \hex7seg|display2|rascSaida7seg[2]~26_combout\);

-- Location: LCCOMB_X70_Y35_N24
\hex7seg|display2|rascSaida7seg[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[3]~27_combout\ = (\FD|ULA|Mux22~5_combout\ & ((\FD|ULA|Mux23~3_combout\ & ((\FD|ULA|Mux21~3_combout\))) # (!\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux20~3_combout\ & !\FD|ULA|Mux21~3_combout\)))) # (!\FD|ULA|Mux22~5_combout\ & 
-- (!\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux23~3_combout\ $ (\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux20~3_combout\,
	datac => \FD|ULA|Mux22~5_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \hex7seg|display2|rascSaida7seg[3]~27_combout\);

-- Location: LCCOMB_X69_Y39_N18
\hex7seg|display2|rascSaida7seg[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[4]~35_combout\ = (\FD|ULA|Mux21~2_combout\ & (!\FD|ULA|Mux22~4_combout\ & !\FD|UCULA|ALUctr[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux21~2_combout\,
	datac => \FD|ULA|Mux22~4_combout\,
	datad => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \hex7seg|display2|rascSaida7seg[4]~35_combout\);

-- Location: LCCOMB_X70_Y35_N18
\hex7seg|display2|rascSaida7seg[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[4]~28_combout\ = (\FD|ULA|Mux23~3_combout\ & ((\FD|ULA|Mux20~3_combout\ & (!\FD|ULA|Mux22~5_combout\)) # (!\FD|ULA|Mux20~3_combout\ & ((\FD|ULA|Mux22~5_combout\) # (!\FD|ULA|Mux21~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux20~3_combout\,
	datac => \FD|ULA|Mux22~5_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \hex7seg|display2|rascSaida7seg[4]~28_combout\);

-- Location: LCCOMB_X70_Y35_N4
\hex7seg|display2|rascSaida7seg[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[4]~29_combout\ = (\hex7seg|display2|rascSaida7seg[4]~35_combout\ & (((\FD|ULA|Mux23~2_combout\ & !\hex7seg|display2|rascSaida7seg[4]~28_combout\)) # (!\FD|ULA|Mux20~2_combout\))) # 
-- (!\hex7seg|display2|rascSaida7seg[4]~35_combout\ & (((\hex7seg|display2|rascSaida7seg[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux20~2_combout\,
	datab => \FD|ULA|Mux23~2_combout\,
	datac => \hex7seg|display2|rascSaida7seg[4]~35_combout\,
	datad => \hex7seg|display2|rascSaida7seg[4]~28_combout\,
	combout => \hex7seg|display2|rascSaida7seg[4]~29_combout\);

-- Location: LCCOMB_X70_Y35_N30
\hex7seg|display2|rascSaida7seg[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[5]~30_combout\ = (\FD|ULA|Mux23~3_combout\ & (\FD|ULA|Mux20~3_combout\ $ (((\FD|ULA|Mux22~5_combout\) # (!\FD|ULA|Mux21~3_combout\))))) # (!\FD|ULA|Mux23~3_combout\ & (!\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux22~5_combout\ & 
-- !\FD|ULA|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux20~3_combout\,
	datac => \FD|ULA|Mux22~5_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \hex7seg|display2|rascSaida7seg[5]~30_combout\);

-- Location: LCCOMB_X70_Y35_N8
\hex7seg|display2|rascSaida7seg[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display2|rascSaida7seg[6]~31_combout\ = (\FD|ULA|Mux23~3_combout\ & (!\FD|ULA|Mux20~3_combout\ & (\FD|ULA|Mux22~5_combout\ $ (!\FD|ULA|Mux21~3_combout\)))) # (!\FD|ULA|Mux23~3_combout\ & (!\FD|ULA|Mux22~5_combout\ & (\FD|ULA|Mux20~3_combout\ $ 
-- (!\FD|ULA|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux23~3_combout\,
	datab => \FD|ULA|Mux20~3_combout\,
	datac => \FD|ULA|Mux22~5_combout\,
	datad => \FD|ULA|Mux21~3_combout\,
	combout => \hex7seg|display2|rascSaida7seg[6]~31_combout\);

-- Location: LCCOMB_X68_Y33_N6
\hex7seg|display3|rascSaida7seg[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[0]~33_combout\ = (\FD|UCULA|ALUctr[3]~8_combout\) # ((\FD|ULA|Mux17~2_combout\ & \FD|ULA|Mux16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|Mux17~2_combout\,
	datac => \FD|ULA|Mux16~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \hex7seg|display3|rascSaida7seg[0]~33_combout\);

-- Location: LCCOMB_X68_Y33_N24
\hex7seg|display3|rascSaida7seg[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[0]~34_combout\ = (\FD|ULA|Mux19~2_combout\ & (((\FD|ULA|Mux16~2_combout\)))) # (!\FD|ULA|Mux19~2_combout\ & (\FD|ULA|Mux17~2_combout\ & (!\FD|ULA|Mux16~2_combout\ & !\FD|UCULA|ALUctr[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~2_combout\,
	datab => \FD|ULA|Mux17~2_combout\,
	datac => \FD|ULA|Mux16~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \hex7seg|display3|rascSaida7seg[0]~34_combout\);

-- Location: LCCOMB_X68_Y33_N12
\hex7seg|display3|rascSaida7seg[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[0]~32_combout\ = (\FD|ULA|Mux19~2_combout\ & (\FD|ULA|Mux16~2_combout\ $ (((\FD|UCULA|ALUctr[3]~8_combout\) # (!\FD|ULA|Mux17~2_combout\))))) # (!\FD|ULA|Mux19~2_combout\ & (\FD|ULA|Mux17~2_combout\ & 
-- ((!\FD|UCULA|ALUctr[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux19~2_combout\,
	datab => \FD|ULA|Mux17~2_combout\,
	datac => \FD|ULA|Mux16~2_combout\,
	datad => \FD|UCULA|ALUctr[3]~8_combout\,
	combout => \hex7seg|display3|rascSaida7seg[0]~32_combout\);

-- Location: LCCOMB_X68_Y33_N26
\hex7seg|display3|rascSaida7seg[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[0]~22_combout\ = (\FD|ULA|Mux18~3_combout\ & (!\hex7seg|display3|rascSaida7seg[0]~33_combout\ & (\hex7seg|display3|rascSaida7seg[0]~34_combout\ & !\hex7seg|display3|rascSaida7seg[0]~32_combout\))) # 
-- (!\FD|ULA|Mux18~3_combout\ & (\hex7seg|display3|rascSaida7seg[0]~32_combout\ & ((\hex7seg|display3|rascSaida7seg[0]~34_combout\) # (!\hex7seg|display3|rascSaida7seg[0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|display3|rascSaida7seg[0]~33_combout\,
	datab => \hex7seg|display3|rascSaida7seg[0]~34_combout\,
	datac => \FD|ULA|Mux18~3_combout\,
	datad => \hex7seg|display3|rascSaida7seg[0]~32_combout\,
	combout => \hex7seg|display3|rascSaida7seg[0]~22_combout\);

-- Location: LCCOMB_X73_Y33_N16
\hex7seg|display3|rascSaida7seg[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[1]~23_combout\ = (\FD|ULA|Mux16~3_combout\ & ((\FD|ULA|Mux19~3_combout\ & (\FD|ULA|Mux18~3_combout\)) # (!\FD|ULA|Mux19~3_combout\ & ((\FD|ULA|Mux17~3_combout\))))) # (!\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux17~3_combout\ & 
-- (\FD|ULA|Mux18~3_combout\ $ (\FD|ULA|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux18~3_combout\,
	datac => \FD|ULA|Mux19~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \hex7seg|display3|rascSaida7seg[1]~23_combout\);

-- Location: LCCOMB_X73_Y33_N26
\hex7seg|display3|rascSaida7seg[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[2]~24_combout\ = (\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux17~3_combout\ & ((\FD|ULA|Mux18~3_combout\) # (!\FD|ULA|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux18~3_combout\,
	datac => \FD|ULA|Mux19~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \hex7seg|display3|rascSaida7seg[2]~24_combout\);

-- Location: LCCOMB_X73_Y33_N28
\hex7seg|display3|rascSaida7seg[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[1]~25_combout\ = (!\FD|ULA|Mux17~2_combout\ & (!\FD|UCULA|ALUctr[3]~8_combout\ & \FD|ULA|Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux17~2_combout\,
	datab => \FD|UCULA|ALUctr[3]~8_combout\,
	datac => \FD|ULA|Mux18~2_combout\,
	combout => \hex7seg|display3|rascSaida7seg[1]~25_combout\);

-- Location: LCCOMB_X73_Y33_N22
\hex7seg|display3|rascSaida7seg[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[2]~26_combout\ = (\hex7seg|display3|rascSaida7seg[2]~24_combout\) # ((\hex7seg|display3|rascSaida7seg[1]~25_combout\ & (!\FD|ULA|Mux19~2_combout\ & !\FD|ULA|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex7seg|display3|rascSaida7seg[2]~24_combout\,
	datab => \hex7seg|display3|rascSaida7seg[1]~25_combout\,
	datac => \FD|ULA|Mux19~2_combout\,
	datad => \FD|ULA|Mux16~3_combout\,
	combout => \hex7seg|display3|rascSaida7seg[2]~26_combout\);

-- Location: LCCOMB_X73_Y33_N8
\hex7seg|display3|rascSaida7seg[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[3]~27_combout\ = (\FD|ULA|Mux18~3_combout\ & ((\FD|ULA|Mux19~3_combout\ & ((\FD|ULA|Mux17~3_combout\))) # (!\FD|ULA|Mux19~3_combout\ & (\FD|ULA|Mux16~3_combout\ & !\FD|ULA|Mux17~3_combout\)))) # (!\FD|ULA|Mux18~3_combout\ & 
-- (!\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux19~3_combout\ $ (\FD|ULA|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux18~3_combout\,
	datac => \FD|ULA|Mux19~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \hex7seg|display3|rascSaida7seg[3]~27_combout\);

-- Location: LCCOMB_X73_Y33_N2
\hex7seg|display3|rascSaida7seg[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[4]~35_combout\ = (\FD|ULA|Mux17~2_combout\ & (!\FD|UCULA|ALUctr[3]~8_combout\ & !\FD|ULA|Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux17~2_combout\,
	datab => \FD|UCULA|ALUctr[3]~8_combout\,
	datac => \FD|ULA|Mux18~2_combout\,
	combout => \hex7seg|display3|rascSaida7seg[4]~35_combout\);

-- Location: LCCOMB_X73_Y33_N10
\hex7seg|display3|rascSaida7seg[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[4]~28_combout\ = (\FD|ULA|Mux19~3_combout\ & ((\FD|ULA|Mux16~3_combout\ & (!\FD|ULA|Mux18~3_combout\)) # (!\FD|ULA|Mux16~3_combout\ & ((\FD|ULA|Mux18~3_combout\) # (!\FD|ULA|Mux17~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux18~3_combout\,
	datac => \FD|ULA|Mux19~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \hex7seg|display3|rascSaida7seg[4]~28_combout\);

-- Location: LCCOMB_X73_Y33_N4
\hex7seg|display3|rascSaida7seg[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[4]~29_combout\ = (\hex7seg|display3|rascSaida7seg[4]~35_combout\ & (((\FD|ULA|Mux19~2_combout\ & !\hex7seg|display3|rascSaida7seg[4]~28_combout\)) # (!\FD|ULA|Mux16~2_combout\))) # 
-- (!\hex7seg|display3|rascSaida7seg[4]~35_combout\ & (((\hex7seg|display3|rascSaida7seg[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~2_combout\,
	datab => \hex7seg|display3|rascSaida7seg[4]~35_combout\,
	datac => \FD|ULA|Mux19~2_combout\,
	datad => \hex7seg|display3|rascSaida7seg[4]~28_combout\,
	combout => \hex7seg|display3|rascSaida7seg[4]~29_combout\);

-- Location: LCCOMB_X73_Y33_N30
\hex7seg|display3|rascSaida7seg[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[5]~30_combout\ = (\FD|ULA|Mux18~3_combout\ & (!\FD|ULA|Mux16~3_combout\ & ((\FD|ULA|Mux19~3_combout\) # (!\FD|ULA|Mux17~3_combout\)))) # (!\FD|ULA|Mux18~3_combout\ & (\FD|ULA|Mux19~3_combout\ & (\FD|ULA|Mux16~3_combout\ $ 
-- (!\FD|ULA|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux18~3_combout\,
	datac => \FD|ULA|Mux19~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \hex7seg|display3|rascSaida7seg[5]~30_combout\);

-- Location: LCCOMB_X73_Y33_N0
\hex7seg|display3|rascSaida7seg[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display3|rascSaida7seg[6]~31_combout\ = (\FD|ULA|Mux19~3_combout\ & (!\FD|ULA|Mux16~3_combout\ & (\FD|ULA|Mux18~3_combout\ $ (!\FD|ULA|Mux17~3_combout\)))) # (!\FD|ULA|Mux19~3_combout\ & (!\FD|ULA|Mux18~3_combout\ & (\FD|ULA|Mux16~3_combout\ $ 
-- (!\FD|ULA|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ULA|Mux16~3_combout\,
	datab => \FD|ULA|Mux18~3_combout\,
	datac => \FD|ULA|Mux19~3_combout\,
	datad => \FD|ULA|Mux17~3_combout\,
	combout => \hex7seg|display3|rascSaida7seg[6]~31_combout\);

-- Location: FF_X75_Y4_N25
\FD|if_id_reg|pc_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	asdata => \FD|PC|data_s\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|if_id_reg|pc_out\(0));

-- Location: LCCOMB_X75_Y4_N22
\FD|id_ex_reg|inAdder[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|id_ex_reg|inAdder[0]~feeder_combout\ = \FD|if_id_reg|pc_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|if_id_reg|pc_out\(0),
	combout => \FD|id_ex_reg|inAdder[0]~feeder_combout\);

-- Location: FF_X75_Y4_N23
\FD|id_ex_reg|inAdder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|id_ex_reg|inAdder[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|id_ex_reg|inAdder\(0));

-- Location: LCCOMB_X69_Y32_N12
\FD|ex_mem_reg|inMuxPc[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ex_mem_reg|inMuxPc[0]~feeder_combout\ = \FD|id_ex_reg|inAdder\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|id_ex_reg|inAdder\(0),
	combout => \FD|ex_mem_reg|inMuxPc[0]~feeder_combout\);

-- Location: FF_X69_Y32_N13
\FD|ex_mem_reg|inMuxPc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|ex_mem_reg|inMuxPc[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|ex_mem_reg|inMuxPc\(0));

-- Location: LCCOMB_X69_Y32_N8
\FD|mux_jump|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|mux_jump|saida[0]~0_combout\ = (!\UC|pontosDeControle[0]~1_combout\ & ((\FD|sel_mux_beq~combout\ & (\FD|ex_mem_reg|inMuxPc\(0))) # (!\FD|sel_mux_beq~combout\ & ((\FD|PC|data_s\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ex_mem_reg|inMuxPc\(0),
	datab => \FD|sel_mux_beq~combout\,
	datac => \FD|PC|data_s\(0),
	datad => \UC|pontosDeControle[0]~1_combout\,
	combout => \FD|mux_jump|saida[0]~0_combout\);

-- Location: FF_X69_Y32_N9
\FD|PC|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SignalDetector|saida~clkctrl_outclk\,
	d => \FD|mux_jump|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(0));

-- Location: LCCOMB_X75_Y4_N8
\hex7seg|display4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(0) & !\FD|PC|data_s\(2))) # (!\FD|PC|data_s\(3) & (!\FD|PC|data_s\(0) & \FD|PC|data_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(2),
	combout => \hex7seg|display4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X75_Y4_N26
\hex7seg|display4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[1]~1_combout\ = ((!\FD|PC|data_s\(0) & !\FD|PC|data_s\(2))) # (!\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(2),
	combout => \hex7seg|display4|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X75_Y4_N20
\hex7seg|display4|rascSaida7seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg~2_combout\ = (\FD|PC|data_s\(3) & \FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datad => \FD|PC|data_s\(2),
	combout => \hex7seg|display4|rascSaida7seg~2_combout\);

-- Location: LCCOMB_X75_Y4_N30
\hex7seg|display4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(2) & ((\FD|PC|data_s\(0)) # (!\FD|PC|data_s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(2),
	combout => \hex7seg|display4|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X75_Y4_N0
\hex7seg|display4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(3)) # ((!\FD|PC|data_s\(0) & !\FD|PC|data_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(2),
	combout => \hex7seg|display4|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X75_Y4_N18
\hex7seg|display4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(0) & !\FD|PC|data_s\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(3),
	combout => \hex7seg|display4|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X75_Y4_N12
\hex7seg|display4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display4|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(3) & (!\FD|PC|data_s\(0) & \FD|PC|data_s\(2))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(0) $ (!\FD|PC|data_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datac => \FD|PC|data_s\(0),
	datad => \FD|PC|data_s\(2),
	combout => \hex7seg|display4|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X70_Y32_N18
\hex7seg|display5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[0]~0_combout\ = (\FD|PC|data_s\(6) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(7) $ (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) $ (!\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \hex7seg|display5|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X68_Y32_N26
\hex7seg|display5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[1]~1_combout\ = (\FD|PC|data_s\(7) & ((\FD|PC|data_s\(4) & ((\FD|PC|data_s\(5)))) # (!\FD|PC|data_s\(4) & (\FD|PC|data_s\(6))))) # (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) $ (\FD|PC|data_s\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(4),
	datad => \FD|PC|data_s\(5),
	combout => \hex7seg|display5|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X70_Y32_N6
\hex7seg|display5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[2]~2_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s\(7) & ((\FD|PC|data_s\(5)) # (!\FD|PC|data_s\(4))))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & !\FD|PC|data_s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \hex7seg|display5|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X69_Y32_N28
\hex7seg|display5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[3]~3_combout\ = (\FD|PC|data_s\(5) & ((\FD|PC|data_s\(4) & (\FD|PC|data_s\(6))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(6) & \FD|PC|data_s\(7))))) # (!\FD|PC|data_s\(5) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(4) $ 
-- (\FD|PC|data_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(5),
	combout => \hex7seg|display5|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X69_Y32_N30
\hex7seg|display5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[4]~4_combout\ = (\FD|PC|data_s\(5) & (\FD|PC|data_s\(4) & ((!\FD|PC|data_s\(7))))) # (!\FD|PC|data_s\(5) & ((\FD|PC|data_s\(6) & ((!\FD|PC|data_s\(7)))) # (!\FD|PC|data_s\(6) & (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datab => \FD|PC|data_s\(6),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(5),
	combout => \hex7seg|display5|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X70_Y32_N2
\hex7seg|display5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[5]~5_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s\(4) & (\FD|PC|data_s\(5) $ (\FD|PC|data_s\(7))))) # (!\FD|PC|data_s\(6) & (!\FD|PC|data_s\(7) & ((\FD|PC|data_s\(5)) # (\FD|PC|data_s\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \hex7seg|display5|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X70_Y32_N14
\hex7seg|display5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7seg|display5|rascSaida7seg[6]~6_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s\(7) & (\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(5))))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s\(5) & (\FD|PC|data_s\(6) $ (!\FD|PC|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datab => \FD|PC|data_s\(5),
	datac => \FD|PC|data_s\(7),
	datad => \FD|PC|data_s\(4),
	combout => \hex7seg|display5|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


