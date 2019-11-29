-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity mips is
	port
    (
		  CLOCK_50 : in std_logic;
		  KEY : in  std_logic_vector(3 downto 0);
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;

architecture estrutural of mips is

	-- Declaração de sinais auxiliares
	 signal clk			           : STD_LOGIC;
    signal pontosDeControle     : STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
    signal instrucao            : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    signal ALUop                : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
    signal ALUctr               : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0);
	 signal saidaULA             : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
	 signal saidaPC              : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
	 signal keyClock             : STD_LOGIC;

    -- Sinal de clock auxiliar para simulação
    -- signal clk  : STD_LOGIC;

    alias opcode : std_logic_vector(OPCODE_WIDTH-1 downto 0) is instrucao(31 DOWNTO 26);
begin

    -- CLOCK generator auxiliar para simulação
    -- CG : entity work.clock_generator port map (clk	=> clk);

    FD : entity work.fluxo_dados 
	port map
	(
        clk	                    => clk,
        pontosDeControle        => pontosDeControle,
        instrucao               => instrucao,
		  saida_da_ula            => saidaULA,
		  pc_out                  => saidaPC
    );

    UC : entity work.uc 
	port map
	(
        opcode              	=> opcode,
        pontosDeControle    	=> pontosDeControle
    );
	 
	 SignalDetector : entity work.edgeDetector
	port map
	(
        clk => CLOCK_50,
        entrada => KEY(0),
        saida   =>  keyClock
    );
	
	hex7seg: entity work.hex7seg_top
	port map(
		dado_reg0 => saidaULA(3 downto 0),
		dado_reg1 => saidaULA(7 downto 4),
		dado_reg2 => saidaULA(11 downto 8), 
		dado_reg3 => saidaULA(15 downto 12), 
		dado_reg4 => saidaPC(3 downto 0), 
		dado_reg5 => saidaPC(7 downto 4), 
		HEX0 => HEX0, 
		HEX1 => HEX1, 
		HEX2 => HEX2, 
		HEX3 => HEX3, 
		HEX4 => HEX4, 
		HEX5 => HEX5
	);
	
--	botoes: entity work.botoes
--	port map(
--	clk => CLOCK_50,
--	KEY => KEY,
--   habilita_botoes => '1',
--   saida => datain_unprocessed_botoes
--	);

--	saida_da_ula <= saidaULA;
--	pc_out <= saidaPC;
	clk <= keyClock;

end architecture;
