library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;           --Soma (esta biblioteca =ieee)

entity andBEQ is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
        entradaA: in STD_LOGIC;
		  entradaB: in STD_LOGIC;
        saida:  out STD_LOGIC
    );
end entity;

architecture comportamento of andBEQ is
    begin
        saida <= entradaA and entradaB;
end architecture;