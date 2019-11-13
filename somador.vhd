library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity somador is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
        entradaA: in  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		  entradaB: in  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of somador is
    begin
        saida <= std_logic_vector(unsigned(entradaA) + unsigned(entradaB));
end architecture;