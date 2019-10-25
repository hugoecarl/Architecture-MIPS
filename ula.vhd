library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity ULA is
	generic
		 (
			  addr : natural := 32;
			  op_code : natural:= 6
		 );
	port(
			clk: in std_logic;
			IN_mux, IN_banco: in std_logic_vector (addr-1 downto 0);
			OP: in std_logic; 
			S: out std_logic_vector (addr-1 downto 0)
			);

end entity ULA;

architecture ula1 of ULA is

	signal resultadoSub, resultadoAdd : std_logic_vector(addr-1 downto 0);

	
begin
	resultadoSub <= std_logic_vector(unsigned(IN_mux) - unsigned(IN_banco));
	resultadoAdd <= std_logic_vector(unsigned(IN_mux) + unsigned(IN_banco));
	
	with OP select
	S <=		resultadoAdd when '0',
				resultadoSub when others;

end architecture;