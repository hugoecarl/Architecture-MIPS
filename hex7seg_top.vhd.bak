library IEEE;
use ieee.std_logic_1164.all;

entity hex7seg_top is
  port (
    clk, habilita0, habilita1, habilita2, habilita3, habilita4, habilita5  : in std_logic;
	 dado_reg0, dado_reg1, dado_reg2, dado_reg3, dado_reg4, dado_reg5: in std_logic_vector(3 downto 0);
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 downto 0)
  );
end entity;

architecture hex7seg of hex7seg_top is

	signal reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out: std_logic_vector(3 downto 0);

begin

	reg0: entity work.reg4 port map(reg4_i => dado_reg0, clk => clk, reg4_o => reg0_out, habilita => habilita0);
	
	reg1: entity work.reg4 port map(reg4_i => dado_reg1, clk => clk, reg4_o => reg1_out, habilita => habilita1);
	
	reg2: entity work.reg4 port map(reg4_i => dado_reg2, clk => clk, reg4_o => reg2_out, habilita => habilita2);
	
	reg3: entity work.reg4 port map(reg4_i => dado_reg3, clk => clk, reg4_o => reg3_out, habilita => habilita3);
	
	reg4: entity work.reg4 port map(reg4_i => dado_reg4, clk => clk, reg4_o => reg4_out, habilita => habilita4);
	
	reg5: entity work.reg4 port map(reg4_i => dado_reg5, clk => clk, reg4_o => reg5_out, habilita => habilita5);

	display0 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX0, dadoHex => reg0_out, apaga => '0', overFlow => '0', negativo => '0');

	display1 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX1, dadoHex => reg1_out, apaga => '0', overFlow => '0', negativo => '0');

	display2 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX2, dadoHex => reg2_out, apaga => '0', overFlow => '0', negativo => '0');
		 
	display3 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX3, dadoHex => reg3_out, apaga => '0', overFlow => '0', negativo => '0');

	display4 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX4, dadoHex => reg4_out, apaga => '0', overFlow => '0', negativo => '0');

	display5 : entity work.conversorHex7seg
		 Port map (saida7seg => HEX5, dadoHex => reg5_out, apaga => '0', overFlow => '0', negativo => '0');

		 
end architecture;