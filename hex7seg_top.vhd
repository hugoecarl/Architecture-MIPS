library IEEE;
use ieee.std_logic_1164.all;

entity hex7seg_top is
  port (
	 dado_reg0, dado_reg1, dado_reg2, dado_reg3, dado_reg4, dado_reg5: in std_logic_vector(3 downto 0);
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;

architecture hex7seg of hex7seg_top is

begin

	display0 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX0, dadoHex => dado_reg0, apaga => '0', overFlow => '0', negativo => '0');

	display1 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX1, dadoHex => dado_reg1, apaga => '0', overFlow => '0', negativo => '0');

	display2 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX2, dadoHex => dado_reg2, apaga => '0', overFlow => '0', negativo => '0');
		 
	display3 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX3, dadoHex => dado_reg3, apaga => '0', overFlow => '0', negativo => '0');

	display4 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX4, dadoHex => dado_reg4, apaga => '0', overFlow => '0', negativo => '0');

	display5 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX5, dadoHex => dado_reg5, apaga => '0', overFlow => '0', negativo => '0');

		 
end architecture;