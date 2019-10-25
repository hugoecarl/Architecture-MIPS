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

-- DATE "10/25/2019 10:22:44"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	MIPS IS
    PORT (
	clk : IN std_logic;
	we_uc : IN std_logic;
	ula_instr : IN std_logic;
	ula_out_teste : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS;

ARCHITECTURE structure OF MIPS IS
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
SIGNAL ww_we_uc : std_logic;
SIGNAL ww_ula_instr : std_logic;
SIGNAL ww_ula_out_teste : std_logic_vector(31 DOWNTO 0);
SIGNAL \ula_out_teste[0]~output_o\ : std_logic;
SIGNAL \ula_out_teste[1]~output_o\ : std_logic;
SIGNAL \ula_out_teste[2]~output_o\ : std_logic;
SIGNAL \ula_out_teste[3]~output_o\ : std_logic;
SIGNAL \ula_out_teste[4]~output_o\ : std_logic;
SIGNAL \ula_out_teste[5]~output_o\ : std_logic;
SIGNAL \ula_out_teste[6]~output_o\ : std_logic;
SIGNAL \ula_out_teste[7]~output_o\ : std_logic;
SIGNAL \ula_out_teste[8]~output_o\ : std_logic;
SIGNAL \ula_out_teste[9]~output_o\ : std_logic;
SIGNAL \ula_out_teste[10]~output_o\ : std_logic;
SIGNAL \ula_out_teste[11]~output_o\ : std_logic;
SIGNAL \ula_out_teste[12]~output_o\ : std_logic;
SIGNAL \ula_out_teste[13]~output_o\ : std_logic;
SIGNAL \ula_out_teste[14]~output_o\ : std_logic;
SIGNAL \ula_out_teste[15]~output_o\ : std_logic;
SIGNAL \ula_out_teste[16]~output_o\ : std_logic;
SIGNAL \ula_out_teste[17]~output_o\ : std_logic;
SIGNAL \ula_out_teste[18]~output_o\ : std_logic;
SIGNAL \ula_out_teste[19]~output_o\ : std_logic;
SIGNAL \ula_out_teste[20]~output_o\ : std_logic;
SIGNAL \ula_out_teste[21]~output_o\ : std_logic;
SIGNAL \ula_out_teste[22]~output_o\ : std_logic;
SIGNAL \ula_out_teste[23]~output_o\ : std_logic;
SIGNAL \ula_out_teste[24]~output_o\ : std_logic;
SIGNAL \ula_out_teste[25]~output_o\ : std_logic;
SIGNAL \ula_out_teste[26]~output_o\ : std_logic;
SIGNAL \ula_out_teste[27]~output_o\ : std_logic;
SIGNAL \ula_out_teste[28]~output_o\ : std_logic;
SIGNAL \ula_out_teste[29]~output_o\ : std_logic;
SIGNAL \ula_out_teste[30]~output_o\ : std_logic;
SIGNAL \ula_out_teste[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \we_uc~input_o\ : std_logic;
SIGNAL \pc|pc_o[2]~15_combout\ : std_logic;
SIGNAL \pc|pc_o[3]~5_combout\ : std_logic;
SIGNAL \pc|pc_o[3]~6\ : std_logic;
SIGNAL \pc|pc_o[4]~7_combout\ : std_logic;
SIGNAL \pc|pc_o[4]~8\ : std_logic;
SIGNAL \pc|pc_o[5]~9_combout\ : std_logic;
SIGNAL \pc|pc_o[5]~10\ : std_logic;
SIGNAL \pc|pc_o[6]~11_combout\ : std_logic;
SIGNAL \pc|pc_o[6]~12\ : std_logic;
SIGNAL \pc|pc_o[7]~13_combout\ : std_logic;
SIGNAL \rom|memROM~0_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1084_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~38_q\ : std_logic;
SIGNAL \ula_instr~input_o\ : std_logic;
SIGNAL \ula|Add0~56_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1085_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~390_q\ : std_logic;
SIGNAL \ula|Add0~158_combout\ : std_logic;
SIGNAL \ula|Add0~57_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1086_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~326_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ula|Add0~59_cout\ : std_logic;
SIGNAL \ula|Add0~60_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1087_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~391_q\ : std_logic;
SIGNAL \rom|memROM~1_combout\ : std_logic;
SIGNAL \rom|memROM~2_combout\ : std_logic;
SIGNAL \rom|memROM~3_combout\ : std_logic;
SIGNAL \ula|Add0~62_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~39_q\ : std_logic;
SIGNAL \ula|Add0~63_combout\ : std_logic;
SIGNAL \ula|Add0~64_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~327_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ula|Add0~61\ : std_logic;
SIGNAL \ula|Add0~65_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~392_q\ : std_logic;
SIGNAL \ula|Add0~67_combout\ : std_logic;
SIGNAL \ula|Add0~68_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1088_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~328_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ula|Add0~66\ : std_logic;
SIGNAL \ula|Add0~69_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~393_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1063_combout\ : std_logic;
SIGNAL \ula|Add0~137_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~329_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ula|Add0~70\ : std_logic;
SIGNAL \ula|Add0~71_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~394_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1064_combout\ : std_logic;
SIGNAL \ula|Add0~138_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~330_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[4]~4_combout\ : std_logic;
SIGNAL \ula|Add0~72\ : std_logic;
SIGNAL \ula|Add0~73_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~395_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1065_combout\ : std_logic;
SIGNAL \ula|Add0~139_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~331_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ula|Add0~74\ : std_logic;
SIGNAL \ula|Add0~75_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~396_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1066_combout\ : std_logic;
SIGNAL \ula|Add0~140_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~332_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[6]~6_combout\ : std_logic;
SIGNAL \ula|Add0~76\ : std_logic;
SIGNAL \ula|Add0~77_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~397_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1067_combout\ : std_logic;
SIGNAL \ula|Add0~141_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~333_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[7]~7_combout\ : std_logic;
SIGNAL \ula|Add0~78\ : std_logic;
SIGNAL \ula|Add0~79_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~398_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1068_combout\ : std_logic;
SIGNAL \ula|Add0~142_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~334_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[8]~8_combout\ : std_logic;
SIGNAL \ula|Add0~80\ : std_logic;
SIGNAL \ula|Add0~81_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~399_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1069_combout\ : std_logic;
SIGNAL \ula|Add0~143_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~335_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ula|Add0~82\ : std_logic;
SIGNAL \ula|Add0~83_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~400_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1070_combout\ : std_logic;
SIGNAL \ula|Add0~144_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~336_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[10]~10_combout\ : std_logic;
SIGNAL \ula|Add0~84\ : std_logic;
SIGNAL \ula|Add0~85_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~401_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1071_combout\ : std_logic;
SIGNAL \ula|Add0~145_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~337_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[11]~11_combout\ : std_logic;
SIGNAL \ula|Add0~86\ : std_logic;
SIGNAL \ula|Add0~87_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~402_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1072_combout\ : std_logic;
SIGNAL \ula|Add0~146_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~338_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[12]~12_combout\ : std_logic;
SIGNAL \ula|Add0~88\ : std_logic;
SIGNAL \ula|Add0~89_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~403_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1073_combout\ : std_logic;
SIGNAL \ula|Add0~147_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~339_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[13]~13_combout\ : std_logic;
SIGNAL \ula|Add0~90\ : std_logic;
SIGNAL \ula|Add0~91_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~404_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1074_combout\ : std_logic;
SIGNAL \ula|Add0~148_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~340_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[14]~14_combout\ : std_logic;
SIGNAL \ula|Add0~92\ : std_logic;
SIGNAL \ula|Add0~93_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~405_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1075_combout\ : std_logic;
SIGNAL \ula|Add0~149_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~341_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[15]~15_combout\ : std_logic;
SIGNAL \ula|Add0~94\ : std_logic;
SIGNAL \ula|Add0~95_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~406_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1076_combout\ : std_logic;
SIGNAL \ula|Add0~150_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~342_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[16]~16_combout\ : std_logic;
SIGNAL \ula|Add0~96\ : std_logic;
SIGNAL \ula|Add0~97_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~407_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1077_combout\ : std_logic;
SIGNAL \ula|Add0~151_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~343_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[17]~17_combout\ : std_logic;
SIGNAL \ula|Add0~98\ : std_logic;
SIGNAL \ula|Add0~99_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~408_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1078_combout\ : std_logic;
SIGNAL \ula|Add0~152_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~344_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[18]~18_combout\ : std_logic;
SIGNAL \ula|Add0~100\ : std_logic;
SIGNAL \ula|Add0~101_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~409_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1079_combout\ : std_logic;
SIGNAL \ula|Add0~153_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~345_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[19]~19_combout\ : std_logic;
SIGNAL \ula|Add0~102\ : std_logic;
SIGNAL \ula|Add0~103_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~410_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1080_combout\ : std_logic;
SIGNAL \ula|Add0~154_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~346_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[20]~20_combout\ : std_logic;
SIGNAL \ula|Add0~104\ : std_logic;
SIGNAL \ula|Add0~105_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~411_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1081_combout\ : std_logic;
SIGNAL \ula|Add0~155_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~347_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[21]~21_combout\ : std_logic;
SIGNAL \ula|Add0~106\ : std_logic;
SIGNAL \ula|Add0~107_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~412_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1082_combout\ : std_logic;
SIGNAL \ula|Add0~156_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~348_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[22]~22_combout\ : std_logic;
SIGNAL \ula|Add0~108\ : std_logic;
SIGNAL \ula|Add0~109_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~413_q\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~1083_combout\ : std_logic;
SIGNAL \ula|Add0~157_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~349_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[23]~23_combout\ : std_logic;
SIGNAL \ula|Add0~110\ : std_logic;
SIGNAL \ula|Add0~111_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~414_q\ : std_logic;
SIGNAL \ula|Add0~113_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~350_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[24]~24_combout\ : std_logic;
SIGNAL \ula|Add0~112\ : std_logic;
SIGNAL \ula|Add0~114_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~415_q\ : std_logic;
SIGNAL \ula|Add0~116_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~351_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[25]~25_combout\ : std_logic;
SIGNAL \ula|Add0~115\ : std_logic;
SIGNAL \ula|Add0~117_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~416_q\ : std_logic;
SIGNAL \ula|Add0~119_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~352_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[26]~26_combout\ : std_logic;
SIGNAL \ula|Add0~118\ : std_logic;
SIGNAL \ula|Add0~120_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~417_q\ : std_logic;
SIGNAL \ula|Add0~122_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~353_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[27]~27_combout\ : std_logic;
SIGNAL \ula|Add0~121\ : std_logic;
SIGNAL \ula|Add0~123_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~418_q\ : std_logic;
SIGNAL \ula|Add0~125_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~354_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[28]~28_combout\ : std_logic;
SIGNAL \ula|Add0~124\ : std_logic;
SIGNAL \ula|Add0~126_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~419_q\ : std_logic;
SIGNAL \ula|Add0~128_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~355_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[29]~29_combout\ : std_logic;
SIGNAL \ula|Add0~127\ : std_logic;
SIGNAL \ula|Add0~129_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~420_q\ : std_logic;
SIGNAL \ula|Add0~131_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~356_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[30]~30_combout\ : std_logic;
SIGNAL \ula|Add0~130\ : std_logic;
SIGNAL \ula|Add0~132_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~421_q\ : std_logic;
SIGNAL \ula|Add0~134_combout\ : std_logic;
SIGNAL \BancoDeRegistradores|registrador~357_q\ : std_logic;
SIGNAL \BancoDeRegistradores|saidaA[31]~31_combout\ : std_logic;
SIGNAL \ula|Add0~133\ : std_logic;
SIGNAL \ula|Add0~135_combout\ : std_logic;
SIGNAL \pc|pc_o\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_we_uc <= we_uc;
ww_ula_instr <= ula_instr;
ula_out_teste <= ww_ula_out_teste;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ula_out_teste[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~60_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[0]~output_o\);

\ula_out_teste[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~65_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[1]~output_o\);

\ula_out_teste[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~69_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[2]~output_o\);

\ula_out_teste[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~71_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[3]~output_o\);

\ula_out_teste[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~73_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[4]~output_o\);

\ula_out_teste[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~75_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[5]~output_o\);

\ula_out_teste[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~77_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[6]~output_o\);

\ula_out_teste[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~79_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[7]~output_o\);

\ula_out_teste[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~81_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[8]~output_o\);

\ula_out_teste[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~83_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[9]~output_o\);

\ula_out_teste[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~85_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[10]~output_o\);

\ula_out_teste[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~87_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[11]~output_o\);

\ula_out_teste[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~89_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[12]~output_o\);

\ula_out_teste[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~91_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[13]~output_o\);

\ula_out_teste[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~93_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[14]~output_o\);

\ula_out_teste[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~95_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[15]~output_o\);

\ula_out_teste[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~97_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[16]~output_o\);

\ula_out_teste[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~99_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[17]~output_o\);

\ula_out_teste[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~101_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[18]~output_o\);

\ula_out_teste[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~103_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[19]~output_o\);

\ula_out_teste[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~105_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[20]~output_o\);

\ula_out_teste[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~107_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[21]~output_o\);

\ula_out_teste[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~109_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[22]~output_o\);

\ula_out_teste[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~111_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[23]~output_o\);

\ula_out_teste[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~114_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[24]~output_o\);

\ula_out_teste[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~117_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[25]~output_o\);

\ula_out_teste[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~120_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[26]~output_o\);

\ula_out_teste[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~123_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[27]~output_o\);

\ula_out_teste[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~126_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[28]~output_o\);

\ula_out_teste[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~129_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[29]~output_o\);

\ula_out_teste[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~132_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[30]~output_o\);

\ula_out_teste[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|Add0~135_combout\,
	devoe => ww_devoe,
	o => \ula_out_teste[31]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\we_uc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we_uc,
	o => \we_uc~input_o\);

\pc|pc_o[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc_o[2]~15_combout\ = !\pc|pc_o\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	combout => \pc|pc_o[2]~15_combout\);

\pc|pc_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|pc_o[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc_o\(2));

\pc|pc_o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc_o[3]~5_combout\ = (\pc|pc_o\(3) & (\pc|pc_o\(2) $ (VCC))) # (!\pc|pc_o\(3) & (\pc|pc_o\(2) & VCC))
-- \pc|pc_o[3]~6\ = CARRY((\pc|pc_o\(3) & \pc|pc_o\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(3),
	datab => \pc|pc_o\(2),
	datad => VCC,
	combout => \pc|pc_o[3]~5_combout\,
	cout => \pc|pc_o[3]~6\);

\pc|pc_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|pc_o[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc_o\(3));

\pc|pc_o[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc_o[4]~7_combout\ = (\pc|pc_o\(4) & (!\pc|pc_o[3]~6\)) # (!\pc|pc_o\(4) & ((\pc|pc_o[3]~6\) # (GND)))
-- \pc|pc_o[4]~8\ = CARRY((!\pc|pc_o[3]~6\) # (!\pc|pc_o\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(4),
	datad => VCC,
	cin => \pc|pc_o[3]~6\,
	combout => \pc|pc_o[4]~7_combout\,
	cout => \pc|pc_o[4]~8\);

\pc|pc_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|pc_o[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc_o\(4));

\pc|pc_o[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc_o[5]~9_combout\ = (\pc|pc_o\(5) & (\pc|pc_o[4]~8\ $ (GND))) # (!\pc|pc_o\(5) & (!\pc|pc_o[4]~8\ & VCC))
-- \pc|pc_o[5]~10\ = CARRY((\pc|pc_o\(5) & !\pc|pc_o[4]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(5),
	datad => VCC,
	cin => \pc|pc_o[4]~8\,
	combout => \pc|pc_o[5]~9_combout\,
	cout => \pc|pc_o[5]~10\);

\pc|pc_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|pc_o[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc_o\(5));

\pc|pc_o[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc_o[6]~11_combout\ = (\pc|pc_o\(6) & (!\pc|pc_o[5]~10\)) # (!\pc|pc_o\(6) & ((\pc|pc_o[5]~10\) # (GND)))
-- \pc|pc_o[6]~12\ = CARRY((!\pc|pc_o[5]~10\) # (!\pc|pc_o\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(6),
	datad => VCC,
	cin => \pc|pc_o[5]~10\,
	combout => \pc|pc_o[6]~11_combout\,
	cout => \pc|pc_o[6]~12\);

\pc|pc_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|pc_o[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc_o\(6));

\pc|pc_o[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|pc_o[7]~13_combout\ = \pc|pc_o\(7) $ (!\pc|pc_o[6]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	cin => \pc|pc_o[6]~12\,
	combout => \pc|pc_o[7]~13_combout\);

\pc|pc_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|pc_o[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pc_o\(7));

\rom|memROM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|memROM~0_combout\ = (!\pc|pc_o\(3) & (!\pc|pc_o\(4) & (!\pc|pc_o\(5) & !\pc|pc_o\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(3),
	datab => \pc|pc_o\(4),
	datac => \pc|pc_o\(5),
	datad => \pc|pc_o\(6),
	combout => \rom|memROM~0_combout\);

\BancoDeRegistradores|registrador~1084\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1084_combout\ = (\we_uc~input_o\ & ((\pc|pc_o\(7)) # (!\rom|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we_uc~input_o\,
	datab => \pc|pc_o\(7),
	datad => \rom|memROM~0_combout\,
	combout => \BancoDeRegistradores|registrador~1084_combout\);

\BancoDeRegistradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~60_combout\,
	ena => \BancoDeRegistradores|registrador~1084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~38_q\);

\ula_instr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_instr,
	o => \ula_instr~input_o\);

\ula|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~56_combout\ = (\rom|memROM~0_combout\ & !\pc|pc_o\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \pc|pc_o\(7),
	combout => \ula|Add0~56_combout\);

\BancoDeRegistradores|registrador~1085\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1085_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\we_uc~input_o\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \we_uc~input_o\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1085_combout\);

\BancoDeRegistradores|registrador~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~60_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~390_q\);

\ula|Add0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~158_combout\ = (\BancoDeRegistradores|registrador~390_q\) # ((\pc|pc_o\(2)) # ((\pc|pc_o\(7)) # (!\rom|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoDeRegistradores|registrador~390_q\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~0_combout\,
	datad => \pc|pc_o\(7),
	combout => \ula|Add0~158_combout\);

\ula|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~57_combout\ = (\ula_instr~input_o\ & ((\ula|Add0~56_combout\ $ (\ula|Add0~158_combout\)))) # (!\ula_instr~input_o\ & ((\ula|Add0~56_combout\ & ((\ula|Add0~158_combout\))) # (!\ula|Add0~56_combout\ & (\BancoDeRegistradores|registrador~38_q\ & 
-- !\ula|Add0~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoDeRegistradores|registrador~38_q\,
	datab => \ula_instr~input_o\,
	datac => \ula|Add0~56_combout\,
	datad => \ula|Add0~158_combout\,
	combout => \ula|Add0~57_combout\);

\BancoDeRegistradores|registrador~1086\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1086_combout\ = (\rom|memROM~0_combout\ & (\we_uc~input_o\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \we_uc~input_o\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1086_combout\);

\BancoDeRegistradores|registrador~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~60_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~326_q\);

\BancoDeRegistradores|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[0]~0_combout\ = (\rom|memROM~0_combout\ & (!\pc|pc_o\(7) & ((\BancoDeRegistradores|registrador~326_q\) # (!\pc|pc_o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~326_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[0]~0_combout\);

\ula|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~59_cout\ = CARRY(\ula_instr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datad => VCC,
	cout => \ula|Add0~59_cout\);

\ula|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~60_combout\ = (\ula|Add0~57_combout\ & ((\BancoDeRegistradores|saidaA[0]~0_combout\ & (\ula|Add0~59_cout\ & VCC)) # (!\BancoDeRegistradores|saidaA[0]~0_combout\ & (!\ula|Add0~59_cout\)))) # (!\ula|Add0~57_combout\ & 
-- ((\BancoDeRegistradores|saidaA[0]~0_combout\ & (!\ula|Add0~59_cout\)) # (!\BancoDeRegistradores|saidaA[0]~0_combout\ & ((\ula|Add0~59_cout\) # (GND)))))
-- \ula|Add0~61\ = CARRY((\ula|Add0~57_combout\ & (!\BancoDeRegistradores|saidaA[0]~0_combout\ & !\ula|Add0~59_cout\)) # (!\ula|Add0~57_combout\ & ((!\ula|Add0~59_cout\) # (!\BancoDeRegistradores|saidaA[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~57_combout\,
	datab => \BancoDeRegistradores|saidaA[0]~0_combout\,
	datad => VCC,
	cin => \ula|Add0~59_cout\,
	combout => \ula|Add0~60_combout\,
	cout => \ula|Add0~61\);

\BancoDeRegistradores|registrador~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1062_combout\ = (\pc|pc_o\(7)) # (!\rom|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datad => \rom|memROM~0_combout\,
	combout => \BancoDeRegistradores|registrador~1062_combout\);

\BancoDeRegistradores|registrador~1087\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1087_combout\ = !\ula|Add0~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~65_combout\,
	combout => \BancoDeRegistradores|registrador~1087_combout\);

\BancoDeRegistradores|registrador~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BancoDeRegistradores|registrador~1087_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~391_q\);

\rom|memROM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|memROM~1_combout\ = (\rom|memROM~0_combout\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \rom|memROM~1_combout\);

\rom|memROM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|memROM~2_combout\ = (!\pc|pc_o\(4) & !\pc|pc_o\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(4),
	datab => \pc|pc_o\(6),
	combout => \rom|memROM~2_combout\);

\rom|memROM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom|memROM~3_combout\ = (!\pc|pc_o\(7) & (!\pc|pc_o\(3) & (!\pc|pc_o\(5) & \rom|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \pc|pc_o\(3),
	datac => \pc|pc_o\(5),
	datad => \rom|memROM~2_combout\,
	combout => \rom|memROM~3_combout\);

\ula|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~62_combout\ = (\ula_instr~input_o\ & (\BancoDeRegistradores|registrador~391_q\ & (\rom|memROM~1_combout\))) # (!\ula_instr~input_o\ & (((!\BancoDeRegistradores|registrador~391_q\ & \rom|memROM~3_combout\)) # (!\rom|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \BancoDeRegistradores|registrador~391_q\,
	datac => \rom|memROM~1_combout\,
	datad => \rom|memROM~3_combout\,
	combout => \ula|Add0~62_combout\);

\BancoDeRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~65_combout\,
	ena => \BancoDeRegistradores|registrador~1084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~39_q\);

\ula|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~63_combout\ = (\BancoDeRegistradores|registrador~39_q\) # (\rom|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BancoDeRegistradores|registrador~39_q\,
	datab => \rom|memROM~3_combout\,
	combout => \ula|Add0~63_combout\);

\ula|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~64_combout\ = (\BancoDeRegistradores|registrador~1062_combout\ & (\ula_instr~input_o\)) # (!\BancoDeRegistradores|registrador~1062_combout\ & (\ula|Add0~62_combout\ & ((\ula_instr~input_o\) # (\ula|Add0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \BancoDeRegistradores|registrador~1062_combout\,
	datac => \ula|Add0~62_combout\,
	datad => \ula|Add0~63_combout\,
	combout => \ula|Add0~64_combout\);

\BancoDeRegistradores|registrador~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~65_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~327_q\);

\BancoDeRegistradores|saidaA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[1]~1_combout\ = (\rom|memROM~0_combout\ & (!\pc|pc_o\(7) & ((\BancoDeRegistradores|registrador~327_q\) # (!\pc|pc_o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~327_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[1]~1_combout\);

\ula|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~65_combout\ = ((\ula|Add0~64_combout\ $ (\BancoDeRegistradores|saidaA[1]~1_combout\ $ (!\ula|Add0~61\)))) # (GND)
-- \ula|Add0~66\ = CARRY((\ula|Add0~64_combout\ & ((\BancoDeRegistradores|saidaA[1]~1_combout\) # (!\ula|Add0~61\))) # (!\ula|Add0~64_combout\ & (\BancoDeRegistradores|saidaA[1]~1_combout\ & !\ula|Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~64_combout\,
	datab => \BancoDeRegistradores|saidaA[1]~1_combout\,
	datad => VCC,
	cin => \ula|Add0~61\,
	combout => \ula|Add0~65_combout\,
	cout => \ula|Add0~66\);

\BancoDeRegistradores|registrador~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~69_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~392_q\);

\ula|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~67_combout\ = (\pc|pc_o\(7)) # ((\pc|pc_o\(2)) # (!\BancoDeRegistradores|registrador~392_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \pc|pc_o\(2),
	datac => \BancoDeRegistradores|registrador~392_q\,
	combout => \ula|Add0~67_combout\);

\ula|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~68_combout\ = \ula_instr~input_o\ $ (((\rom|memROM~0_combout\ & !\ula|Add0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \rom|memROM~0_combout\,
	datac => \ula|Add0~67_combout\,
	combout => \ula|Add0~68_combout\);

\BancoDeRegistradores|registrador~1088\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1088_combout\ = !\ula|Add0~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~69_combout\,
	combout => \BancoDeRegistradores|registrador~1088_combout\);

\BancoDeRegistradores|registrador~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BancoDeRegistradores|registrador~1088_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~328_q\);

\BancoDeRegistradores|saidaA[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[2]~2_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (!\pc|pc_o\(7) & !\BancoDeRegistradores|registrador~328_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \pc|pc_o\(7),
	datad => \BancoDeRegistradores|registrador~328_q\,
	combout => \BancoDeRegistradores|saidaA[2]~2_combout\);

\ula|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~69_combout\ = (\ula|Add0~68_combout\ & ((\BancoDeRegistradores|saidaA[2]~2_combout\ & (\ula|Add0~66\ & VCC)) # (!\BancoDeRegistradores|saidaA[2]~2_combout\ & (!\ula|Add0~66\)))) # (!\ula|Add0~68_combout\ & 
-- ((\BancoDeRegistradores|saidaA[2]~2_combout\ & (!\ula|Add0~66\)) # (!\BancoDeRegistradores|saidaA[2]~2_combout\ & ((\ula|Add0~66\) # (GND)))))
-- \ula|Add0~70\ = CARRY((\ula|Add0~68_combout\ & (!\BancoDeRegistradores|saidaA[2]~2_combout\ & !\ula|Add0~66\)) # (!\ula|Add0~68_combout\ & ((!\ula|Add0~66\) # (!\BancoDeRegistradores|saidaA[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~68_combout\,
	datab => \BancoDeRegistradores|saidaA[2]~2_combout\,
	datad => VCC,
	cin => \ula|Add0~66\,
	combout => \ula|Add0~69_combout\,
	cout => \ula|Add0~70\);

\BancoDeRegistradores|registrador~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~71_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~393_q\);

\BancoDeRegistradores|registrador~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1063_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~393_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~393_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1063_combout\);

\ula|Add0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~137_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1063_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1063_combout\,
	combout => \ula|Add0~137_combout\);

\BancoDeRegistradores|registrador~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~71_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~329_q\);

\BancoDeRegistradores|saidaA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[3]~3_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~329_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~329_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[3]~3_combout\);

\ula|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~71_combout\ = ((\ula|Add0~137_combout\ $ (\BancoDeRegistradores|saidaA[3]~3_combout\ $ (!\ula|Add0~70\)))) # (GND)
-- \ula|Add0~72\ = CARRY((\ula|Add0~137_combout\ & ((\BancoDeRegistradores|saidaA[3]~3_combout\) # (!\ula|Add0~70\))) # (!\ula|Add0~137_combout\ & (\BancoDeRegistradores|saidaA[3]~3_combout\ & !\ula|Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~137_combout\,
	datab => \BancoDeRegistradores|saidaA[3]~3_combout\,
	datad => VCC,
	cin => \ula|Add0~70\,
	combout => \ula|Add0~71_combout\,
	cout => \ula|Add0~72\);

\BancoDeRegistradores|registrador~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~73_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~394_q\);

\BancoDeRegistradores|registrador~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1064_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~394_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~394_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1064_combout\);

\ula|Add0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~138_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1064_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1064_combout\,
	combout => \ula|Add0~138_combout\);

\BancoDeRegistradores|registrador~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~73_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~330_q\);

\BancoDeRegistradores|saidaA[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[4]~4_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~330_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~330_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[4]~4_combout\);

\ula|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~73_combout\ = (\ula|Add0~138_combout\ & ((\BancoDeRegistradores|saidaA[4]~4_combout\ & (\ula|Add0~72\ & VCC)) # (!\BancoDeRegistradores|saidaA[4]~4_combout\ & (!\ula|Add0~72\)))) # (!\ula|Add0~138_combout\ & 
-- ((\BancoDeRegistradores|saidaA[4]~4_combout\ & (!\ula|Add0~72\)) # (!\BancoDeRegistradores|saidaA[4]~4_combout\ & ((\ula|Add0~72\) # (GND)))))
-- \ula|Add0~74\ = CARRY((\ula|Add0~138_combout\ & (!\BancoDeRegistradores|saidaA[4]~4_combout\ & !\ula|Add0~72\)) # (!\ula|Add0~138_combout\ & ((!\ula|Add0~72\) # (!\BancoDeRegistradores|saidaA[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~138_combout\,
	datab => \BancoDeRegistradores|saidaA[4]~4_combout\,
	datad => VCC,
	cin => \ula|Add0~72\,
	combout => \ula|Add0~73_combout\,
	cout => \ula|Add0~74\);

\BancoDeRegistradores|registrador~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~75_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~395_q\);

\BancoDeRegistradores|registrador~1065\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1065_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~395_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~395_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1065_combout\);

\ula|Add0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~139_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1065_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1065_combout\,
	combout => \ula|Add0~139_combout\);

\BancoDeRegistradores|registrador~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~75_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~331_q\);

\BancoDeRegistradores|saidaA[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[5]~5_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~331_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~331_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[5]~5_combout\);

\ula|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~75_combout\ = ((\ula|Add0~139_combout\ $ (\BancoDeRegistradores|saidaA[5]~5_combout\ $ (!\ula|Add0~74\)))) # (GND)
-- \ula|Add0~76\ = CARRY((\ula|Add0~139_combout\ & ((\BancoDeRegistradores|saidaA[5]~5_combout\) # (!\ula|Add0~74\))) # (!\ula|Add0~139_combout\ & (\BancoDeRegistradores|saidaA[5]~5_combout\ & !\ula|Add0~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~139_combout\,
	datab => \BancoDeRegistradores|saidaA[5]~5_combout\,
	datad => VCC,
	cin => \ula|Add0~74\,
	combout => \ula|Add0~75_combout\,
	cout => \ula|Add0~76\);

\BancoDeRegistradores|registrador~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~77_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~396_q\);

\BancoDeRegistradores|registrador~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1066_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~396_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~396_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1066_combout\);

\ula|Add0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~140_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1066_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1066_combout\,
	combout => \ula|Add0~140_combout\);

\BancoDeRegistradores|registrador~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~77_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~332_q\);

\BancoDeRegistradores|saidaA[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[6]~6_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~332_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~332_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[6]~6_combout\);

\ula|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~77_combout\ = (\ula|Add0~140_combout\ & ((\BancoDeRegistradores|saidaA[6]~6_combout\ & (\ula|Add0~76\ & VCC)) # (!\BancoDeRegistradores|saidaA[6]~6_combout\ & (!\ula|Add0~76\)))) # (!\ula|Add0~140_combout\ & 
-- ((\BancoDeRegistradores|saidaA[6]~6_combout\ & (!\ula|Add0~76\)) # (!\BancoDeRegistradores|saidaA[6]~6_combout\ & ((\ula|Add0~76\) # (GND)))))
-- \ula|Add0~78\ = CARRY((\ula|Add0~140_combout\ & (!\BancoDeRegistradores|saidaA[6]~6_combout\ & !\ula|Add0~76\)) # (!\ula|Add0~140_combout\ & ((!\ula|Add0~76\) # (!\BancoDeRegistradores|saidaA[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~140_combout\,
	datab => \BancoDeRegistradores|saidaA[6]~6_combout\,
	datad => VCC,
	cin => \ula|Add0~76\,
	combout => \ula|Add0~77_combout\,
	cout => \ula|Add0~78\);

\BancoDeRegistradores|registrador~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~79_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~397_q\);

\BancoDeRegistradores|registrador~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1067_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~397_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~397_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1067_combout\);

\ula|Add0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~141_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1067_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1067_combout\,
	combout => \ula|Add0~141_combout\);

\BancoDeRegistradores|registrador~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~79_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~333_q\);

\BancoDeRegistradores|saidaA[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[7]~7_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~333_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~333_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[7]~7_combout\);

\ula|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~79_combout\ = ((\ula|Add0~141_combout\ $ (\BancoDeRegistradores|saidaA[7]~7_combout\ $ (!\ula|Add0~78\)))) # (GND)
-- \ula|Add0~80\ = CARRY((\ula|Add0~141_combout\ & ((\BancoDeRegistradores|saidaA[7]~7_combout\) # (!\ula|Add0~78\))) # (!\ula|Add0~141_combout\ & (\BancoDeRegistradores|saidaA[7]~7_combout\ & !\ula|Add0~78\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~141_combout\,
	datab => \BancoDeRegistradores|saidaA[7]~7_combout\,
	datad => VCC,
	cin => \ula|Add0~78\,
	combout => \ula|Add0~79_combout\,
	cout => \ula|Add0~80\);

\BancoDeRegistradores|registrador~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~81_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~398_q\);

\BancoDeRegistradores|registrador~1068\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1068_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~398_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~398_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1068_combout\);

\ula|Add0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~142_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1068_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1068_combout\,
	combout => \ula|Add0~142_combout\);

\BancoDeRegistradores|registrador~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~81_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~334_q\);

\BancoDeRegistradores|saidaA[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[8]~8_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~334_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~334_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[8]~8_combout\);

\ula|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~81_combout\ = (\ula|Add0~142_combout\ & ((\BancoDeRegistradores|saidaA[8]~8_combout\ & (\ula|Add0~80\ & VCC)) # (!\BancoDeRegistradores|saidaA[8]~8_combout\ & (!\ula|Add0~80\)))) # (!\ula|Add0~142_combout\ & 
-- ((\BancoDeRegistradores|saidaA[8]~8_combout\ & (!\ula|Add0~80\)) # (!\BancoDeRegistradores|saidaA[8]~8_combout\ & ((\ula|Add0~80\) # (GND)))))
-- \ula|Add0~82\ = CARRY((\ula|Add0~142_combout\ & (!\BancoDeRegistradores|saidaA[8]~8_combout\ & !\ula|Add0~80\)) # (!\ula|Add0~142_combout\ & ((!\ula|Add0~80\) # (!\BancoDeRegistradores|saidaA[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~142_combout\,
	datab => \BancoDeRegistradores|saidaA[8]~8_combout\,
	datad => VCC,
	cin => \ula|Add0~80\,
	combout => \ula|Add0~81_combout\,
	cout => \ula|Add0~82\);

\BancoDeRegistradores|registrador~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~83_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~399_q\);

\BancoDeRegistradores|registrador~1069\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1069_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~399_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~399_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1069_combout\);

\ula|Add0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~143_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1069_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1069_combout\,
	combout => \ula|Add0~143_combout\);

\BancoDeRegistradores|registrador~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~83_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~335_q\);

\BancoDeRegistradores|saidaA[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[9]~9_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~335_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~335_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[9]~9_combout\);

\ula|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~83_combout\ = ((\ula|Add0~143_combout\ $ (\BancoDeRegistradores|saidaA[9]~9_combout\ $ (!\ula|Add0~82\)))) # (GND)
-- \ula|Add0~84\ = CARRY((\ula|Add0~143_combout\ & ((\BancoDeRegistradores|saidaA[9]~9_combout\) # (!\ula|Add0~82\))) # (!\ula|Add0~143_combout\ & (\BancoDeRegistradores|saidaA[9]~9_combout\ & !\ula|Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~143_combout\,
	datab => \BancoDeRegistradores|saidaA[9]~9_combout\,
	datad => VCC,
	cin => \ula|Add0~82\,
	combout => \ula|Add0~83_combout\,
	cout => \ula|Add0~84\);

\BancoDeRegistradores|registrador~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~85_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~400_q\);

\BancoDeRegistradores|registrador~1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1070_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~400_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~400_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1070_combout\);

\ula|Add0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~144_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1070_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1070_combout\,
	combout => \ula|Add0~144_combout\);

\BancoDeRegistradores|registrador~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~85_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~336_q\);

\BancoDeRegistradores|saidaA[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[10]~10_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~336_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~336_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[10]~10_combout\);

\ula|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~85_combout\ = (\ula|Add0~144_combout\ & ((\BancoDeRegistradores|saidaA[10]~10_combout\ & (\ula|Add0~84\ & VCC)) # (!\BancoDeRegistradores|saidaA[10]~10_combout\ & (!\ula|Add0~84\)))) # (!\ula|Add0~144_combout\ & 
-- ((\BancoDeRegistradores|saidaA[10]~10_combout\ & (!\ula|Add0~84\)) # (!\BancoDeRegistradores|saidaA[10]~10_combout\ & ((\ula|Add0~84\) # (GND)))))
-- \ula|Add0~86\ = CARRY((\ula|Add0~144_combout\ & (!\BancoDeRegistradores|saidaA[10]~10_combout\ & !\ula|Add0~84\)) # (!\ula|Add0~144_combout\ & ((!\ula|Add0~84\) # (!\BancoDeRegistradores|saidaA[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~144_combout\,
	datab => \BancoDeRegistradores|saidaA[10]~10_combout\,
	datad => VCC,
	cin => \ula|Add0~84\,
	combout => \ula|Add0~85_combout\,
	cout => \ula|Add0~86\);

\BancoDeRegistradores|registrador~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~87_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~401_q\);

\BancoDeRegistradores|registrador~1071\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1071_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~401_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~401_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1071_combout\);

\ula|Add0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~145_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1071_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1071_combout\,
	combout => \ula|Add0~145_combout\);

\BancoDeRegistradores|registrador~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~87_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~337_q\);

\BancoDeRegistradores|saidaA[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[11]~11_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~337_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~337_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[11]~11_combout\);

\ula|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~87_combout\ = ((\ula|Add0~145_combout\ $ (\BancoDeRegistradores|saidaA[11]~11_combout\ $ (!\ula|Add0~86\)))) # (GND)
-- \ula|Add0~88\ = CARRY((\ula|Add0~145_combout\ & ((\BancoDeRegistradores|saidaA[11]~11_combout\) # (!\ula|Add0~86\))) # (!\ula|Add0~145_combout\ & (\BancoDeRegistradores|saidaA[11]~11_combout\ & !\ula|Add0~86\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~145_combout\,
	datab => \BancoDeRegistradores|saidaA[11]~11_combout\,
	datad => VCC,
	cin => \ula|Add0~86\,
	combout => \ula|Add0~87_combout\,
	cout => \ula|Add0~88\);

\BancoDeRegistradores|registrador~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~89_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~402_q\);

\BancoDeRegistradores|registrador~1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1072_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~402_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~402_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1072_combout\);

\ula|Add0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~146_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1072_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1072_combout\,
	combout => \ula|Add0~146_combout\);

\BancoDeRegistradores|registrador~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~89_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~338_q\);

\BancoDeRegistradores|saidaA[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[12]~12_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~338_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~338_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[12]~12_combout\);

\ula|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~89_combout\ = (\ula|Add0~146_combout\ & ((\BancoDeRegistradores|saidaA[12]~12_combout\ & (\ula|Add0~88\ & VCC)) # (!\BancoDeRegistradores|saidaA[12]~12_combout\ & (!\ula|Add0~88\)))) # (!\ula|Add0~146_combout\ & 
-- ((\BancoDeRegistradores|saidaA[12]~12_combout\ & (!\ula|Add0~88\)) # (!\BancoDeRegistradores|saidaA[12]~12_combout\ & ((\ula|Add0~88\) # (GND)))))
-- \ula|Add0~90\ = CARRY((\ula|Add0~146_combout\ & (!\BancoDeRegistradores|saidaA[12]~12_combout\ & !\ula|Add0~88\)) # (!\ula|Add0~146_combout\ & ((!\ula|Add0~88\) # (!\BancoDeRegistradores|saidaA[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~146_combout\,
	datab => \BancoDeRegistradores|saidaA[12]~12_combout\,
	datad => VCC,
	cin => \ula|Add0~88\,
	combout => \ula|Add0~89_combout\,
	cout => \ula|Add0~90\);

\BancoDeRegistradores|registrador~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~91_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~403_q\);

\BancoDeRegistradores|registrador~1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1073_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~403_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~403_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1073_combout\);

\ula|Add0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~147_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1073_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1073_combout\,
	combout => \ula|Add0~147_combout\);

\BancoDeRegistradores|registrador~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~91_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~339_q\);

\BancoDeRegistradores|saidaA[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[13]~13_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~339_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~339_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[13]~13_combout\);

\ula|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~91_combout\ = ((\ula|Add0~147_combout\ $ (\BancoDeRegistradores|saidaA[13]~13_combout\ $ (!\ula|Add0~90\)))) # (GND)
-- \ula|Add0~92\ = CARRY((\ula|Add0~147_combout\ & ((\BancoDeRegistradores|saidaA[13]~13_combout\) # (!\ula|Add0~90\))) # (!\ula|Add0~147_combout\ & (\BancoDeRegistradores|saidaA[13]~13_combout\ & !\ula|Add0~90\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~147_combout\,
	datab => \BancoDeRegistradores|saidaA[13]~13_combout\,
	datad => VCC,
	cin => \ula|Add0~90\,
	combout => \ula|Add0~91_combout\,
	cout => \ula|Add0~92\);

\BancoDeRegistradores|registrador~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~93_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~404_q\);

\BancoDeRegistradores|registrador~1074\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1074_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~404_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~404_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1074_combout\);

\ula|Add0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~148_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1074_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1074_combout\,
	combout => \ula|Add0~148_combout\);

\BancoDeRegistradores|registrador~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~93_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~340_q\);

\BancoDeRegistradores|saidaA[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[14]~14_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~340_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~340_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[14]~14_combout\);

\ula|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~93_combout\ = (\ula|Add0~148_combout\ & ((\BancoDeRegistradores|saidaA[14]~14_combout\ & (\ula|Add0~92\ & VCC)) # (!\BancoDeRegistradores|saidaA[14]~14_combout\ & (!\ula|Add0~92\)))) # (!\ula|Add0~148_combout\ & 
-- ((\BancoDeRegistradores|saidaA[14]~14_combout\ & (!\ula|Add0~92\)) # (!\BancoDeRegistradores|saidaA[14]~14_combout\ & ((\ula|Add0~92\) # (GND)))))
-- \ula|Add0~94\ = CARRY((\ula|Add0~148_combout\ & (!\BancoDeRegistradores|saidaA[14]~14_combout\ & !\ula|Add0~92\)) # (!\ula|Add0~148_combout\ & ((!\ula|Add0~92\) # (!\BancoDeRegistradores|saidaA[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~148_combout\,
	datab => \BancoDeRegistradores|saidaA[14]~14_combout\,
	datad => VCC,
	cin => \ula|Add0~92\,
	combout => \ula|Add0~93_combout\,
	cout => \ula|Add0~94\);

\BancoDeRegistradores|registrador~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~95_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~405_q\);

\BancoDeRegistradores|registrador~1075\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1075_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~405_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~405_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1075_combout\);

\ula|Add0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~149_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1075_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1075_combout\,
	combout => \ula|Add0~149_combout\);

\BancoDeRegistradores|registrador~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~95_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~341_q\);

\BancoDeRegistradores|saidaA[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[15]~15_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~341_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~341_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[15]~15_combout\);

\ula|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~95_combout\ = ((\ula|Add0~149_combout\ $ (\BancoDeRegistradores|saidaA[15]~15_combout\ $ (!\ula|Add0~94\)))) # (GND)
-- \ula|Add0~96\ = CARRY((\ula|Add0~149_combout\ & ((\BancoDeRegistradores|saidaA[15]~15_combout\) # (!\ula|Add0~94\))) # (!\ula|Add0~149_combout\ & (\BancoDeRegistradores|saidaA[15]~15_combout\ & !\ula|Add0~94\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~149_combout\,
	datab => \BancoDeRegistradores|saidaA[15]~15_combout\,
	datad => VCC,
	cin => \ula|Add0~94\,
	combout => \ula|Add0~95_combout\,
	cout => \ula|Add0~96\);

\BancoDeRegistradores|registrador~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~97_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~406_q\);

\BancoDeRegistradores|registrador~1076\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1076_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~406_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~406_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1076_combout\);

\ula|Add0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~150_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1076_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1076_combout\,
	combout => \ula|Add0~150_combout\);

\BancoDeRegistradores|registrador~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~97_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~342_q\);

\BancoDeRegistradores|saidaA[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[16]~16_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~342_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~342_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[16]~16_combout\);

\ula|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~97_combout\ = (\ula|Add0~150_combout\ & ((\BancoDeRegistradores|saidaA[16]~16_combout\ & (\ula|Add0~96\ & VCC)) # (!\BancoDeRegistradores|saidaA[16]~16_combout\ & (!\ula|Add0~96\)))) # (!\ula|Add0~150_combout\ & 
-- ((\BancoDeRegistradores|saidaA[16]~16_combout\ & (!\ula|Add0~96\)) # (!\BancoDeRegistradores|saidaA[16]~16_combout\ & ((\ula|Add0~96\) # (GND)))))
-- \ula|Add0~98\ = CARRY((\ula|Add0~150_combout\ & (!\BancoDeRegistradores|saidaA[16]~16_combout\ & !\ula|Add0~96\)) # (!\ula|Add0~150_combout\ & ((!\ula|Add0~96\) # (!\BancoDeRegistradores|saidaA[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~150_combout\,
	datab => \BancoDeRegistradores|saidaA[16]~16_combout\,
	datad => VCC,
	cin => \ula|Add0~96\,
	combout => \ula|Add0~97_combout\,
	cout => \ula|Add0~98\);

\BancoDeRegistradores|registrador~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~99_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~407_q\);

\BancoDeRegistradores|registrador~1077\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1077_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~407_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~407_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1077_combout\);

\ula|Add0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~151_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1077_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1077_combout\,
	combout => \ula|Add0~151_combout\);

\BancoDeRegistradores|registrador~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~99_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~343_q\);

\BancoDeRegistradores|saidaA[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[17]~17_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~343_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~343_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[17]~17_combout\);

\ula|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~99_combout\ = ((\ula|Add0~151_combout\ $ (\BancoDeRegistradores|saidaA[17]~17_combout\ $ (!\ula|Add0~98\)))) # (GND)
-- \ula|Add0~100\ = CARRY((\ula|Add0~151_combout\ & ((\BancoDeRegistradores|saidaA[17]~17_combout\) # (!\ula|Add0~98\))) # (!\ula|Add0~151_combout\ & (\BancoDeRegistradores|saidaA[17]~17_combout\ & !\ula|Add0~98\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~151_combout\,
	datab => \BancoDeRegistradores|saidaA[17]~17_combout\,
	datad => VCC,
	cin => \ula|Add0~98\,
	combout => \ula|Add0~99_combout\,
	cout => \ula|Add0~100\);

\BancoDeRegistradores|registrador~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~101_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~408_q\);

\BancoDeRegistradores|registrador~1078\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1078_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~408_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~408_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1078_combout\);

\ula|Add0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~152_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1078_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1078_combout\,
	combout => \ula|Add0~152_combout\);

\BancoDeRegistradores|registrador~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~101_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~344_q\);

\BancoDeRegistradores|saidaA[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[18]~18_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~344_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~344_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[18]~18_combout\);

\ula|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~101_combout\ = (\ula|Add0~152_combout\ & ((\BancoDeRegistradores|saidaA[18]~18_combout\ & (\ula|Add0~100\ & VCC)) # (!\BancoDeRegistradores|saidaA[18]~18_combout\ & (!\ula|Add0~100\)))) # (!\ula|Add0~152_combout\ & 
-- ((\BancoDeRegistradores|saidaA[18]~18_combout\ & (!\ula|Add0~100\)) # (!\BancoDeRegistradores|saidaA[18]~18_combout\ & ((\ula|Add0~100\) # (GND)))))
-- \ula|Add0~102\ = CARRY((\ula|Add0~152_combout\ & (!\BancoDeRegistradores|saidaA[18]~18_combout\ & !\ula|Add0~100\)) # (!\ula|Add0~152_combout\ & ((!\ula|Add0~100\) # (!\BancoDeRegistradores|saidaA[18]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~152_combout\,
	datab => \BancoDeRegistradores|saidaA[18]~18_combout\,
	datad => VCC,
	cin => \ula|Add0~100\,
	combout => \ula|Add0~101_combout\,
	cout => \ula|Add0~102\);

\BancoDeRegistradores|registrador~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~103_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~409_q\);

\BancoDeRegistradores|registrador~1079\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1079_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~409_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~409_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1079_combout\);

\ula|Add0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~153_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1079_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1079_combout\,
	combout => \ula|Add0~153_combout\);

\BancoDeRegistradores|registrador~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~103_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~345_q\);

\BancoDeRegistradores|saidaA[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[19]~19_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~345_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~345_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[19]~19_combout\);

\ula|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~103_combout\ = ((\ula|Add0~153_combout\ $ (\BancoDeRegistradores|saidaA[19]~19_combout\ $ (!\ula|Add0~102\)))) # (GND)
-- \ula|Add0~104\ = CARRY((\ula|Add0~153_combout\ & ((\BancoDeRegistradores|saidaA[19]~19_combout\) # (!\ula|Add0~102\))) # (!\ula|Add0~153_combout\ & (\BancoDeRegistradores|saidaA[19]~19_combout\ & !\ula|Add0~102\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~153_combout\,
	datab => \BancoDeRegistradores|saidaA[19]~19_combout\,
	datad => VCC,
	cin => \ula|Add0~102\,
	combout => \ula|Add0~103_combout\,
	cout => \ula|Add0~104\);

\BancoDeRegistradores|registrador~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~105_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~410_q\);

\BancoDeRegistradores|registrador~1080\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1080_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~410_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~410_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1080_combout\);

\ula|Add0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~154_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1080_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1080_combout\,
	combout => \ula|Add0~154_combout\);

\BancoDeRegistradores|registrador~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~105_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~346_q\);

\BancoDeRegistradores|saidaA[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[20]~20_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~346_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~346_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[20]~20_combout\);

\ula|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~105_combout\ = (\ula|Add0~154_combout\ & ((\BancoDeRegistradores|saidaA[20]~20_combout\ & (\ula|Add0~104\ & VCC)) # (!\BancoDeRegistradores|saidaA[20]~20_combout\ & (!\ula|Add0~104\)))) # (!\ula|Add0~154_combout\ & 
-- ((\BancoDeRegistradores|saidaA[20]~20_combout\ & (!\ula|Add0~104\)) # (!\BancoDeRegistradores|saidaA[20]~20_combout\ & ((\ula|Add0~104\) # (GND)))))
-- \ula|Add0~106\ = CARRY((\ula|Add0~154_combout\ & (!\BancoDeRegistradores|saidaA[20]~20_combout\ & !\ula|Add0~104\)) # (!\ula|Add0~154_combout\ & ((!\ula|Add0~104\) # (!\BancoDeRegistradores|saidaA[20]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~154_combout\,
	datab => \BancoDeRegistradores|saidaA[20]~20_combout\,
	datad => VCC,
	cin => \ula|Add0~104\,
	combout => \ula|Add0~105_combout\,
	cout => \ula|Add0~106\);

\BancoDeRegistradores|registrador~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~107_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~411_q\);

\BancoDeRegistradores|registrador~1081\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1081_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~411_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~411_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1081_combout\);

\ula|Add0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~155_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1081_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1081_combout\,
	combout => \ula|Add0~155_combout\);

\BancoDeRegistradores|registrador~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~107_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~347_q\);

\BancoDeRegistradores|saidaA[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[21]~21_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~347_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~347_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[21]~21_combout\);

\ula|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~107_combout\ = ((\ula|Add0~155_combout\ $ (\BancoDeRegistradores|saidaA[21]~21_combout\ $ (!\ula|Add0~106\)))) # (GND)
-- \ula|Add0~108\ = CARRY((\ula|Add0~155_combout\ & ((\BancoDeRegistradores|saidaA[21]~21_combout\) # (!\ula|Add0~106\))) # (!\ula|Add0~155_combout\ & (\BancoDeRegistradores|saidaA[21]~21_combout\ & !\ula|Add0~106\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~155_combout\,
	datab => \BancoDeRegistradores|saidaA[21]~21_combout\,
	datad => VCC,
	cin => \ula|Add0~106\,
	combout => \ula|Add0~107_combout\,
	cout => \ula|Add0~108\);

\BancoDeRegistradores|registrador~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~109_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~412_q\);

\BancoDeRegistradores|registrador~1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1082_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~412_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~412_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1082_combout\);

\ula|Add0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~156_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1082_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1082_combout\,
	combout => \ula|Add0~156_combout\);

\BancoDeRegistradores|registrador~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~109_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~348_q\);

\BancoDeRegistradores|saidaA[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[22]~22_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~348_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~348_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[22]~22_combout\);

\ula|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~109_combout\ = (\ula|Add0~156_combout\ & ((\BancoDeRegistradores|saidaA[22]~22_combout\ & (\ula|Add0~108\ & VCC)) # (!\BancoDeRegistradores|saidaA[22]~22_combout\ & (!\ula|Add0~108\)))) # (!\ula|Add0~156_combout\ & 
-- ((\BancoDeRegistradores|saidaA[22]~22_combout\ & (!\ula|Add0~108\)) # (!\BancoDeRegistradores|saidaA[22]~22_combout\ & ((\ula|Add0~108\) # (GND)))))
-- \ula|Add0~110\ = CARRY((\ula|Add0~156_combout\ & (!\BancoDeRegistradores|saidaA[22]~22_combout\ & !\ula|Add0~108\)) # (!\ula|Add0~156_combout\ & ((!\ula|Add0~108\) # (!\BancoDeRegistradores|saidaA[22]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~156_combout\,
	datab => \BancoDeRegistradores|saidaA[22]~22_combout\,
	datad => VCC,
	cin => \ula|Add0~108\,
	combout => \ula|Add0~109_combout\,
	cout => \ula|Add0~110\);

\BancoDeRegistradores|registrador~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~111_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~413_q\);

\BancoDeRegistradores|registrador~1083\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|registrador~1083_combout\ = (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~413_q\ & (!\pc|pc_o\(2) & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|memROM~0_combout\,
	datab => \BancoDeRegistradores|registrador~413_q\,
	datac => \pc|pc_o\(2),
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|registrador~1083_combout\);

\ula|Add0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~157_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(7) & (\rom|memROM~0_combout\ & \BancoDeRegistradores|registrador~1083_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(7),
	datab => \rom|memROM~0_combout\,
	datac => \ula_instr~input_o\,
	datad => \BancoDeRegistradores|registrador~1083_combout\,
	combout => \ula|Add0~157_combout\);

\BancoDeRegistradores|registrador~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~111_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~349_q\);

\BancoDeRegistradores|saidaA[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[23]~23_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~349_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~349_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[23]~23_combout\);

\ula|Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~111_combout\ = ((\ula|Add0~157_combout\ $ (\BancoDeRegistradores|saidaA[23]~23_combout\ $ (!\ula|Add0~110\)))) # (GND)
-- \ula|Add0~112\ = CARRY((\ula|Add0~157_combout\ & ((\BancoDeRegistradores|saidaA[23]~23_combout\) # (!\ula|Add0~110\))) # (!\ula|Add0~157_combout\ & (\BancoDeRegistradores|saidaA[23]~23_combout\ & !\ula|Add0~110\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~157_combout\,
	datab => \BancoDeRegistradores|saidaA[23]~23_combout\,
	datad => VCC,
	cin => \ula|Add0~110\,
	combout => \ula|Add0~111_combout\,
	cout => \ula|Add0~112\);

\BancoDeRegistradores|registrador~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~114_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~414_q\);

\ula|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~113_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(2) & (\rom|memROM~3_combout\ & \BancoDeRegistradores|registrador~414_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~3_combout\,
	datad => \BancoDeRegistradores|registrador~414_q\,
	combout => \ula|Add0~113_combout\);

\BancoDeRegistradores|registrador~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~114_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~350_q\);

\BancoDeRegistradores|saidaA[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[24]~24_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~350_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~350_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[24]~24_combout\);

\ula|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~114_combout\ = (\ula|Add0~113_combout\ & ((\BancoDeRegistradores|saidaA[24]~24_combout\ & (\ula|Add0~112\ & VCC)) # (!\BancoDeRegistradores|saidaA[24]~24_combout\ & (!\ula|Add0~112\)))) # (!\ula|Add0~113_combout\ & 
-- ((\BancoDeRegistradores|saidaA[24]~24_combout\ & (!\ula|Add0~112\)) # (!\BancoDeRegistradores|saidaA[24]~24_combout\ & ((\ula|Add0~112\) # (GND)))))
-- \ula|Add0~115\ = CARRY((\ula|Add0~113_combout\ & (!\BancoDeRegistradores|saidaA[24]~24_combout\ & !\ula|Add0~112\)) # (!\ula|Add0~113_combout\ & ((!\ula|Add0~112\) # (!\BancoDeRegistradores|saidaA[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~113_combout\,
	datab => \BancoDeRegistradores|saidaA[24]~24_combout\,
	datad => VCC,
	cin => \ula|Add0~112\,
	combout => \ula|Add0~114_combout\,
	cout => \ula|Add0~115\);

\BancoDeRegistradores|registrador~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~117_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~415_q\);

\ula|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~116_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(2) & (\rom|memROM~3_combout\ & \BancoDeRegistradores|registrador~415_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~3_combout\,
	datad => \BancoDeRegistradores|registrador~415_q\,
	combout => \ula|Add0~116_combout\);

\BancoDeRegistradores|registrador~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~117_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~351_q\);

\BancoDeRegistradores|saidaA[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[25]~25_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~351_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~351_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[25]~25_combout\);

\ula|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~117_combout\ = ((\ula|Add0~116_combout\ $ (\BancoDeRegistradores|saidaA[25]~25_combout\ $ (!\ula|Add0~115\)))) # (GND)
-- \ula|Add0~118\ = CARRY((\ula|Add0~116_combout\ & ((\BancoDeRegistradores|saidaA[25]~25_combout\) # (!\ula|Add0~115\))) # (!\ula|Add0~116_combout\ & (\BancoDeRegistradores|saidaA[25]~25_combout\ & !\ula|Add0~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~116_combout\,
	datab => \BancoDeRegistradores|saidaA[25]~25_combout\,
	datad => VCC,
	cin => \ula|Add0~115\,
	combout => \ula|Add0~117_combout\,
	cout => \ula|Add0~118\);

\BancoDeRegistradores|registrador~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~120_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~416_q\);

\ula|Add0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~119_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(2) & (\rom|memROM~3_combout\ & \BancoDeRegistradores|registrador~416_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~3_combout\,
	datad => \BancoDeRegistradores|registrador~416_q\,
	combout => \ula|Add0~119_combout\);

\BancoDeRegistradores|registrador~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~120_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~352_q\);

\BancoDeRegistradores|saidaA[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[26]~26_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~352_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~352_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[26]~26_combout\);

\ula|Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~120_combout\ = (\ula|Add0~119_combout\ & ((\BancoDeRegistradores|saidaA[26]~26_combout\ & (\ula|Add0~118\ & VCC)) # (!\BancoDeRegistradores|saidaA[26]~26_combout\ & (!\ula|Add0~118\)))) # (!\ula|Add0~119_combout\ & 
-- ((\BancoDeRegistradores|saidaA[26]~26_combout\ & (!\ula|Add0~118\)) # (!\BancoDeRegistradores|saidaA[26]~26_combout\ & ((\ula|Add0~118\) # (GND)))))
-- \ula|Add0~121\ = CARRY((\ula|Add0~119_combout\ & (!\BancoDeRegistradores|saidaA[26]~26_combout\ & !\ula|Add0~118\)) # (!\ula|Add0~119_combout\ & ((!\ula|Add0~118\) # (!\BancoDeRegistradores|saidaA[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~119_combout\,
	datab => \BancoDeRegistradores|saidaA[26]~26_combout\,
	datad => VCC,
	cin => \ula|Add0~118\,
	combout => \ula|Add0~120_combout\,
	cout => \ula|Add0~121\);

\BancoDeRegistradores|registrador~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~123_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~417_q\);

\ula|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~122_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(2) & (\rom|memROM~3_combout\ & \BancoDeRegistradores|registrador~417_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~3_combout\,
	datad => \BancoDeRegistradores|registrador~417_q\,
	combout => \ula|Add0~122_combout\);

\BancoDeRegistradores|registrador~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~123_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~353_q\);

\BancoDeRegistradores|saidaA[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[27]~27_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~353_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~353_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[27]~27_combout\);

\ula|Add0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~123_combout\ = ((\ula|Add0~122_combout\ $ (\BancoDeRegistradores|saidaA[27]~27_combout\ $ (!\ula|Add0~121\)))) # (GND)
-- \ula|Add0~124\ = CARRY((\ula|Add0~122_combout\ & ((\BancoDeRegistradores|saidaA[27]~27_combout\) # (!\ula|Add0~121\))) # (!\ula|Add0~122_combout\ & (\BancoDeRegistradores|saidaA[27]~27_combout\ & !\ula|Add0~121\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~122_combout\,
	datab => \BancoDeRegistradores|saidaA[27]~27_combout\,
	datad => VCC,
	cin => \ula|Add0~121\,
	combout => \ula|Add0~123_combout\,
	cout => \ula|Add0~124\);

\BancoDeRegistradores|registrador~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~126_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~418_q\);

\ula|Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~125_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(2) & (\rom|memROM~3_combout\ & \BancoDeRegistradores|registrador~418_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~3_combout\,
	datad => \BancoDeRegistradores|registrador~418_q\,
	combout => \ula|Add0~125_combout\);

\BancoDeRegistradores|registrador~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~126_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~354_q\);

\BancoDeRegistradores|saidaA[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[28]~28_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~354_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~354_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[28]~28_combout\);

\ula|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~126_combout\ = (\ula|Add0~125_combout\ & ((\BancoDeRegistradores|saidaA[28]~28_combout\ & (\ula|Add0~124\ & VCC)) # (!\BancoDeRegistradores|saidaA[28]~28_combout\ & (!\ula|Add0~124\)))) # (!\ula|Add0~125_combout\ & 
-- ((\BancoDeRegistradores|saidaA[28]~28_combout\ & (!\ula|Add0~124\)) # (!\BancoDeRegistradores|saidaA[28]~28_combout\ & ((\ula|Add0~124\) # (GND)))))
-- \ula|Add0~127\ = CARRY((\ula|Add0~125_combout\ & (!\BancoDeRegistradores|saidaA[28]~28_combout\ & !\ula|Add0~124\)) # (!\ula|Add0~125_combout\ & ((!\ula|Add0~124\) # (!\BancoDeRegistradores|saidaA[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~125_combout\,
	datab => \BancoDeRegistradores|saidaA[28]~28_combout\,
	datad => VCC,
	cin => \ula|Add0~124\,
	combout => \ula|Add0~126_combout\,
	cout => \ula|Add0~127\);

\BancoDeRegistradores|registrador~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~129_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~419_q\);

\ula|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~128_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(2) & (\rom|memROM~3_combout\ & \BancoDeRegistradores|registrador~419_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~3_combout\,
	datad => \BancoDeRegistradores|registrador~419_q\,
	combout => \ula|Add0~128_combout\);

\BancoDeRegistradores|registrador~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~129_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~355_q\);

\BancoDeRegistradores|saidaA[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[29]~29_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~355_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~355_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[29]~29_combout\);

\ula|Add0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~129_combout\ = ((\ula|Add0~128_combout\ $ (\BancoDeRegistradores|saidaA[29]~29_combout\ $ (!\ula|Add0~127\)))) # (GND)
-- \ula|Add0~130\ = CARRY((\ula|Add0~128_combout\ & ((\BancoDeRegistradores|saidaA[29]~29_combout\) # (!\ula|Add0~127\))) # (!\ula|Add0~128_combout\ & (\BancoDeRegistradores|saidaA[29]~29_combout\ & !\ula|Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~128_combout\,
	datab => \BancoDeRegistradores|saidaA[29]~29_combout\,
	datad => VCC,
	cin => \ula|Add0~127\,
	combout => \ula|Add0~129_combout\,
	cout => \ula|Add0~130\);

\BancoDeRegistradores|registrador~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~132_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~420_q\);

\ula|Add0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~131_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(2) & (\rom|memROM~3_combout\ & \BancoDeRegistradores|registrador~420_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~3_combout\,
	datad => \BancoDeRegistradores|registrador~420_q\,
	combout => \ula|Add0~131_combout\);

\BancoDeRegistradores|registrador~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~132_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~356_q\);

\BancoDeRegistradores|saidaA[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[30]~30_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~356_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~356_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[30]~30_combout\);

\ula|Add0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~132_combout\ = (\ula|Add0~131_combout\ & ((\BancoDeRegistradores|saidaA[30]~30_combout\ & (\ula|Add0~130\ & VCC)) # (!\BancoDeRegistradores|saidaA[30]~30_combout\ & (!\ula|Add0~130\)))) # (!\ula|Add0~131_combout\ & 
-- ((\BancoDeRegistradores|saidaA[30]~30_combout\ & (!\ula|Add0~130\)) # (!\BancoDeRegistradores|saidaA[30]~30_combout\ & ((\ula|Add0~130\) # (GND)))))
-- \ula|Add0~133\ = CARRY((\ula|Add0~131_combout\ & (!\BancoDeRegistradores|saidaA[30]~30_combout\ & !\ula|Add0~130\)) # (!\ula|Add0~131_combout\ & ((!\ula|Add0~130\) # (!\BancoDeRegistradores|saidaA[30]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~131_combout\,
	datab => \BancoDeRegistradores|saidaA[30]~30_combout\,
	datad => VCC,
	cin => \ula|Add0~130\,
	combout => \ula|Add0~132_combout\,
	cout => \ula|Add0~133\);

\BancoDeRegistradores|registrador~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~135_combout\,
	ena => \BancoDeRegistradores|registrador~1085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~421_q\);

\ula|Add0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~134_combout\ = \ula_instr~input_o\ $ (((!\pc|pc_o\(2) & (\rom|memROM~3_combout\ & \BancoDeRegistradores|registrador~421_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_instr~input_o\,
	datab => \pc|pc_o\(2),
	datac => \rom|memROM~3_combout\,
	datad => \BancoDeRegistradores|registrador~421_q\,
	combout => \ula|Add0~134_combout\);

\BancoDeRegistradores|registrador~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ula|Add0~135_combout\,
	ena => \BancoDeRegistradores|registrador~1086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BancoDeRegistradores|registrador~357_q\);

\BancoDeRegistradores|saidaA[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BancoDeRegistradores|saidaA[31]~31_combout\ = (\pc|pc_o\(2) & (\rom|memROM~0_combout\ & (\BancoDeRegistradores|registrador~357_q\ & !\pc|pc_o\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pc_o\(2),
	datab => \rom|memROM~0_combout\,
	datac => \BancoDeRegistradores|registrador~357_q\,
	datad => \pc|pc_o\(7),
	combout => \BancoDeRegistradores|saidaA[31]~31_combout\);

\ula|Add0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|Add0~135_combout\ = \ula|Add0~134_combout\ $ (\BancoDeRegistradores|saidaA[31]~31_combout\ $ (!\ula|Add0~133\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ula|Add0~134_combout\,
	datab => \BancoDeRegistradores|saidaA[31]~31_combout\,
	cin => \ula|Add0~133\,
	combout => \ula|Add0~135_combout\);

ww_ula_out_teste(0) <= \ula_out_teste[0]~output_o\;

ww_ula_out_teste(1) <= \ula_out_teste[1]~output_o\;

ww_ula_out_teste(2) <= \ula_out_teste[2]~output_o\;

ww_ula_out_teste(3) <= \ula_out_teste[3]~output_o\;

ww_ula_out_teste(4) <= \ula_out_teste[4]~output_o\;

ww_ula_out_teste(5) <= \ula_out_teste[5]~output_o\;

ww_ula_out_teste(6) <= \ula_out_teste[6]~output_o\;

ww_ula_out_teste(7) <= \ula_out_teste[7]~output_o\;

ww_ula_out_teste(8) <= \ula_out_teste[8]~output_o\;

ww_ula_out_teste(9) <= \ula_out_teste[9]~output_o\;

ww_ula_out_teste(10) <= \ula_out_teste[10]~output_o\;

ww_ula_out_teste(11) <= \ula_out_teste[11]~output_o\;

ww_ula_out_teste(12) <= \ula_out_teste[12]~output_o\;

ww_ula_out_teste(13) <= \ula_out_teste[13]~output_o\;

ww_ula_out_teste(14) <= \ula_out_teste[14]~output_o\;

ww_ula_out_teste(15) <= \ula_out_teste[15]~output_o\;

ww_ula_out_teste(16) <= \ula_out_teste[16]~output_o\;

ww_ula_out_teste(17) <= \ula_out_teste[17]~output_o\;

ww_ula_out_teste(18) <= \ula_out_teste[18]~output_o\;

ww_ula_out_teste(19) <= \ula_out_teste[19]~output_o\;

ww_ula_out_teste(20) <= \ula_out_teste[20]~output_o\;

ww_ula_out_teste(21) <= \ula_out_teste[21]~output_o\;

ww_ula_out_teste(22) <= \ula_out_teste[22]~output_o\;

ww_ula_out_teste(23) <= \ula_out_teste[23]~output_o\;

ww_ula_out_teste(24) <= \ula_out_teste[24]~output_o\;

ww_ula_out_teste(25) <= \ula_out_teste[25]~output_o\;

ww_ula_out_teste(26) <= \ula_out_teste[26]~output_o\;

ww_ula_out_teste(27) <= \ula_out_teste[27]~output_o\;

ww_ula_out_teste(28) <= \ula_out_teste[28]~output_o\;

ww_ula_out_teste(29) <= \ula_out_teste[29]~output_o\;

ww_ula_out_teste(30) <= \ula_out_teste[30]~output_o\;

ww_ula_out_teste(31) <= \ula_out_teste[31]~output_o\;
END structure;


