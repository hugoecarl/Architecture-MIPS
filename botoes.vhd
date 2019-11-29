library IEEE;
use ieee.std_logic_1164.all;

entity botoes is
    port
    (
        -- Input ports
		  clk: std_logic;
        KEY : in  std_logic_vector(3 downto 0);
		  habilita_botoes : std_logic;
        -- Output ports
		  saida : out std_logic_vector(3 downto 0)
    );
end entity;

architecture comportamento of botoes is
	signal saidaQ : std_logic_vector(3 downto 0);

begin
	process(clk)
	begin
		if rising_edge(clk) then
			saidaQ <= KEY;
		end if;
	end process;
	
	saida <= not saidaQ when (habilita_botoes = '1') else "0000";
end architecture;