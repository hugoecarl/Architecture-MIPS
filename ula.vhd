library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity ULA is
	generic
		 (
			  addr : natural := 8;
			  op_code : natural:= 2
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

	signal resultadoMov, resultadoAdd, resultadoCOmp : std_logic_vector(addr-1 downto 0);
	signal resultadoFlag : boolean;

	
begin
	resultadoMov <= std_logic_vector(IN_mux);
	resultadoAdd <= std_logic_vector(unsigned(IN_mux) + unsigned(IN_banco));
	resultadoComp <= "11111111" when IN_mux = IN_banco else "00000000";
	
	with OP select
	S <= resultadoMov when "00",
				resultadoAdd when "01",
				resultadoComp when "11",
				resultadoComp when "10",
				"00000000" when others;
				
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

--	S <= std_logic_vector(IN_mux) when OP = "00"; --MOV 
--	process (clk) is
--		begin
--			if (rising_edge(clk)) then
--					if(OP = "00") then S <= std_logic_vector(IN_mux); --MOV 
--					end if;
--					
--					if(OP = "01") then S <= std_logic_vector(unsigned(IN_mux) + unsigned(IN_banco)); --ADD
--					end if;
--					
--					if(OP = "10") then 
--							if(IN_mux = IN_banco) then FLAG <= '1'; --COMP e COMPR
--							else FLAG <= '0';
--							end if;
--					end if;
--					
--					if(OP = "11") then 
--							if(IN_mux = IN_banco) then FLAG <= '1'; --COMPI
--																S <= "11111111";
--							else FLAG <= '0';
--								  S <= "00000000";
--							end if;
--					end if;
--			end if;
--	end process;

end architecture;