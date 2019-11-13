library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico2 is
    generic (
        -- Total de bits das entradas e saidas
        larguraDados    : natural  :=   8
    );
    port (
        entradaA    : in  std_logic_vector(larguraDados-1 downto 0);
        entradaB    : in  std_logic_vector(larguraDados-1 downto 0);
        seletor     : in  std_logic;
        saida       : out std_logic_vector(larguraDados-1 downto 0)
    );
end entity;

architecture comportamento of muxGenerico2 is
begin
  -- Para sintetizar lógica combinacional usando um processo,
  --  todas as entradas do modulo devem aparecer na lista de sensibilidade.
    process(entradaA, entradaB, seletor) is
    begin
        if(seletor='0') then
            saida <= entradaA;
        else
            saida <= entradaB;
        end if;
    end process;
end architecture;