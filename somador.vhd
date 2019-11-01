library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;           --Soma (esta biblioteca =ieee)

entity somador is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
        entradaA: in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		  entradaB: in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:  out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of somador is

	signal entradaBinterno : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
    
	 begin
        entradaBinterno((larguraDados-1) downto 2) <= entradaB((larguraDados-3) downto 0);
		  entradaBinterno(1 downto 0) <= (others => '0');
		  saida <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaBinterno));
end architecture;