-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity mips is
	port
    (
        clk			            : IN  STD_LOGIC
    );
end entity;

architecture estrutural of mips is

	-- Declaração de sinais auxiliares
    signal pontosDeControle     : STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
    signal instrucao            : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    signal ALUop                : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
    signal ALUctr               : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0);

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
        instrucao               => instrucao
    );

    UC : entity work.uc 
	port map
	(
        opcode              	=> opcode,
        pontosDeControle    	=> pontosDeControle
    );

end architecture;
