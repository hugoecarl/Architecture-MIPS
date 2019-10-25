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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/24/2019 17:35:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BancoDeRegistradores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BancoDeRegistradores_vhd_vec_tst IS
END BancoDeRegistradores_vhd_vec_tst;
ARCHITECTURE BancoDeRegistradores_arch OF BancoDeRegistradores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dadoEscritaC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL enderecoA : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL enderecoB : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL enderecoC : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL escreveC : STD_LOGIC;
SIGNAL saidaA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaB : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT BancoDeRegistradores
	PORT (
	clk : IN STD_LOGIC;
	dadoEscritaC : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	enderecoA : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	enderecoB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	enderecoC : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	escreveC : IN STD_LOGIC;
	saidaA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaB : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BancoDeRegistradores
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dadoEscritaC => dadoEscritaC,
	enderecoA => enderecoA,
	enderecoB => enderecoB,
	enderecoC => enderecoC,
	escreveC => escreveC,
	saidaA => saidaA,
	saidaB => saidaB
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 7
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- enderecoC[4]
t_prcs_enderecoC_4: PROCESS
BEGIN
	enderecoC(4) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_4;
-- enderecoC[3]
t_prcs_enderecoC_3: PROCESS
BEGIN
	enderecoC(3) <= '0';
WAIT;
END PROCESS t_prcs_enderecoC_3;
-- enderecoC[2]
t_prcs_enderecoC_2: PROCESS
BEGIN
LOOP
	enderecoC(2) <= '0';
	WAIT FOR 80000 ps;
	enderecoC(2) <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_enderecoC_2;
-- enderecoC[1]
t_prcs_enderecoC_1: PROCESS
BEGIN
LOOP
	enderecoC(1) <= '0';
	WAIT FOR 40000 ps;
	enderecoC(1) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_enderecoC_1;
-- enderecoC[0]
t_prcs_enderecoC_0: PROCESS
BEGIN
LOOP
	enderecoC(0) <= '0';
	WAIT FOR 20000 ps;
	enderecoC(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_enderecoC_0;
-- dadoEscritaC[31]
t_prcs_dadoEscritaC_31: PROCESS
BEGIN
	dadoEscritaC(31) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_31;
-- dadoEscritaC[30]
t_prcs_dadoEscritaC_30: PROCESS
BEGIN
	dadoEscritaC(30) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_30;
-- dadoEscritaC[29]
t_prcs_dadoEscritaC_29: PROCESS
BEGIN
	dadoEscritaC(29) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_29;
-- dadoEscritaC[28]
t_prcs_dadoEscritaC_28: PROCESS
BEGIN
	dadoEscritaC(28) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_28;
-- dadoEscritaC[27]
t_prcs_dadoEscritaC_27: PROCESS
BEGIN
	dadoEscritaC(27) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_27;
-- dadoEscritaC[26]
t_prcs_dadoEscritaC_26: PROCESS
BEGIN
	dadoEscritaC(26) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_26;
-- dadoEscritaC[25]
t_prcs_dadoEscritaC_25: PROCESS
BEGIN
	dadoEscritaC(25) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_25;
-- dadoEscritaC[24]
t_prcs_dadoEscritaC_24: PROCESS
BEGIN
	dadoEscritaC(24) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_24;
-- dadoEscritaC[23]
t_prcs_dadoEscritaC_23: PROCESS
BEGIN
	dadoEscritaC(23) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_23;
-- dadoEscritaC[22]
t_prcs_dadoEscritaC_22: PROCESS
BEGIN
	dadoEscritaC(22) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_22;
-- dadoEscritaC[21]
t_prcs_dadoEscritaC_21: PROCESS
BEGIN
	dadoEscritaC(21) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_21;
-- dadoEscritaC[20]
t_prcs_dadoEscritaC_20: PROCESS
BEGIN
	dadoEscritaC(20) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_20;
-- dadoEscritaC[19]
t_prcs_dadoEscritaC_19: PROCESS
BEGIN
	dadoEscritaC(19) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_19;
-- dadoEscritaC[18]
t_prcs_dadoEscritaC_18: PROCESS
BEGIN
	dadoEscritaC(18) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_18;
-- dadoEscritaC[17]
t_prcs_dadoEscritaC_17: PROCESS
BEGIN
	dadoEscritaC(17) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_17;
-- dadoEscritaC[16]
t_prcs_dadoEscritaC_16: PROCESS
BEGIN
	dadoEscritaC(16) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_16;
-- dadoEscritaC[15]
t_prcs_dadoEscritaC_15: PROCESS
BEGIN
	dadoEscritaC(15) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_15;
-- dadoEscritaC[14]
t_prcs_dadoEscritaC_14: PROCESS
BEGIN
	dadoEscritaC(14) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_14;
-- dadoEscritaC[13]
t_prcs_dadoEscritaC_13: PROCESS
BEGIN
	dadoEscritaC(13) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_13;
-- dadoEscritaC[12]
t_prcs_dadoEscritaC_12: PROCESS
BEGIN
	dadoEscritaC(12) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_12;
-- dadoEscritaC[11]
t_prcs_dadoEscritaC_11: PROCESS
BEGIN
	dadoEscritaC(11) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_11;
-- dadoEscritaC[10]
t_prcs_dadoEscritaC_10: PROCESS
BEGIN
	dadoEscritaC(10) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_10;
-- dadoEscritaC[9]
t_prcs_dadoEscritaC_9: PROCESS
BEGIN
	dadoEscritaC(9) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_9;
-- dadoEscritaC[8]
t_prcs_dadoEscritaC_8: PROCESS
BEGIN
	dadoEscritaC(8) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_8;
-- dadoEscritaC[7]
t_prcs_dadoEscritaC_7: PROCESS
BEGIN
	dadoEscritaC(7) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_7;
-- dadoEscritaC[6]
t_prcs_dadoEscritaC_6: PROCESS
BEGIN
	dadoEscritaC(6) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_6;
-- dadoEscritaC[5]
t_prcs_dadoEscritaC_5: PROCESS
BEGIN
	dadoEscritaC(5) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_5;
-- dadoEscritaC[4]
t_prcs_dadoEscritaC_4: PROCESS
BEGIN
	dadoEscritaC(4) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_4;
-- dadoEscritaC[3]
t_prcs_dadoEscritaC_3: PROCESS
BEGIN
	dadoEscritaC(3) <= '0';
	WAIT FOR 140000 ps;
	dadoEscritaC(3) <= '1';
WAIT;
END PROCESS t_prcs_dadoEscritaC_3;
-- dadoEscritaC[2]
t_prcs_dadoEscritaC_2: PROCESS
BEGIN
	dadoEscritaC(2) <= '0';
	WAIT FOR 60000 ps;
	dadoEscritaC(2) <= '1';
	WAIT FOR 80000 ps;
	dadoEscritaC(2) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_2;
-- dadoEscritaC[1]
t_prcs_dadoEscritaC_1: PROCESS
BEGIN
	dadoEscritaC(1) <= '0';
	WAIT FOR 20000 ps;
	dadoEscritaC(1) <= '1';
	WAIT FOR 40000 ps;
	dadoEscritaC(1) <= '0';
	WAIT FOR 40000 ps;
	dadoEscritaC(1) <= '1';
	WAIT FOR 40000 ps;
	dadoEscritaC(1) <= '0';
WAIT;
END PROCESS t_prcs_dadoEscritaC_1;
-- dadoEscritaC[0]
t_prcs_dadoEscritaC_0: PROCESS
BEGIN
LOOP
	dadoEscritaC(0) <= '1';
	WAIT FOR 20000 ps;
	dadoEscritaC(0) <= '0';
	WAIT FOR 20000 ps;
	IF (NOW >= 160000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dadoEscritaC_0;

-- escreveC
t_prcs_escreveC: PROCESS
BEGIN
	escreveC <= '1';
	WAIT FOR 50000 ps;
	escreveC <= '0';
WAIT;
END PROCESS t_prcs_escreveC;
-- enderecoA[4]
t_prcs_enderecoA_4: PROCESS
BEGIN
	enderecoA(4) <= '0';
	WAIT FOR 90000 ps;
	enderecoA(4) <= '1';
WAIT;
END PROCESS t_prcs_enderecoA_4;
-- enderecoA[3]
t_prcs_enderecoA_3: PROCESS
BEGIN
	enderecoA(3) <= '0';
	WAIT FOR 10000 ps;
	enderecoA(3) <= '1';
	WAIT FOR 80000 ps;
	enderecoA(3) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_3;
-- enderecoA[2]
t_prcs_enderecoA_2: PROCESS
BEGIN
	enderecoA(2) <= '1';
	WAIT FOR 10000 ps;
	enderecoA(2) <= '0';
	WAIT FOR 40000 ps;
	enderecoA(2) <= '1';
	WAIT FOR 40000 ps;
	enderecoA(2) <= '0';
	WAIT FOR 40000 ps;
	enderecoA(2) <= '1';
WAIT;
END PROCESS t_prcs_enderecoA_2;
-- enderecoA[1]
t_prcs_enderecoA_1: PROCESS
BEGIN
	enderecoA(1) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 3
	LOOP
		enderecoA(1) <= '0';
		WAIT FOR 20000 ps;
		enderecoA(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	enderecoA(1) <= '0';
	WAIT FOR 20000 ps;
	enderecoA(1) <= '1';
WAIT;
END PROCESS t_prcs_enderecoA_1;
-- enderecoA[0]
t_prcs_enderecoA_0: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		enderecoA(0) <= '1';
		WAIT FOR 10000 ps;
		enderecoA(0) <= '0';
		WAIT FOR 10000 ps;
	END LOOP;
	enderecoA(0) <= '1';
	WAIT FOR 10000 ps;
	enderecoA(0) <= '0';
WAIT;
END PROCESS t_prcs_enderecoA_0;
-- enderecoB[4]
t_prcs_enderecoB_4: PROCESS
BEGIN
	enderecoB(4) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_4;
-- enderecoB[3]
t_prcs_enderecoB_3: PROCESS
BEGIN
	enderecoB(3) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_3;
-- enderecoB[2]
t_prcs_enderecoB_2: PROCESS
BEGIN
	enderecoB(2) <= '0';
	WAIT FOR 100000 ps;
	enderecoB(2) <= '1';
WAIT;
END PROCESS t_prcs_enderecoB_2;
-- enderecoB[1]
t_prcs_enderecoB_1: PROCESS
BEGIN
	enderecoB(1) <= '0';
	WAIT FOR 60000 ps;
	enderecoB(1) <= '1';
	WAIT FOR 40000 ps;
	enderecoB(1) <= '0';
	WAIT FOR 40000 ps;
	enderecoB(1) <= '1';
WAIT;
END PROCESS t_prcs_enderecoB_1;
-- enderecoB[0]
t_prcs_enderecoB_0: PROCESS
BEGIN
	enderecoB(0) <= '0';
	WAIT FOR 40000 ps;
	enderecoB(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 2
	LOOP
		enderecoB(0) <= '0';
		WAIT FOR 20000 ps;
		enderecoB(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	enderecoB(0) <= '0';
WAIT;
END PROCESS t_prcs_enderecoB_0;
END BancoDeRegistradores_arch;
