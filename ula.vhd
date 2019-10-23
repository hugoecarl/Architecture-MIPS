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
			OP: in std_logic_vector  (op_code-1 downto 0);
			
			S: out std_logic_vector (addr-1 downto 0);
			FLAG: out std_logic
			);

end entity ULA;

architecture ula1 of ULA is

	signal resultadoSub, resultadoAdd, resultadoCOmp : std_logic_vector(addr-1 downto 0);
	signal resultadoFlag : boolean;

	
begin
	resultadoSub <= std_logic_vector(unsigned(IN_mux) - unsigned(IN_banco));
	resultadoAdd <= std_logic_vector(unsigned(IN_mux) + unsigned(IN_banco));
	resultadoComp <= "11111111111111111111111111111111" when IN_mux = IN_banco else "00000000000000000000000000000000";
	
	with OP select
	S <=		resultadoAdd when "100000",
				resultadoSub when "100010",
				"00000000000000000000000000000000" when others;
				
	resultadoFlag <= (IN_mux = IN_banco) 
	and (OP = "10" 
	or OP = "11");
	
	process (clk) is
		begin
			if (rising_edge(clk)) then
				if(resultadoFlag) then
					FLAG <= '1';
				else 
					FLAG <='0';
				end if;
			end if;
	end process;	

end architecture;