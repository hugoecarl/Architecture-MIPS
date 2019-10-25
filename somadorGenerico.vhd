library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;           --Soma (esta biblioteca =ieee)

entity somadorGenerico is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
        entradaA: in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:  out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of somadorGenerico is
    begin
        saida <= STD_LOGIC_VECTOR(unsigned(entradaA) + 4);
end architecture;