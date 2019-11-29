-- Quartus Prime VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity if_id_reg is


	port 
	(
		clk		: in std_logic;
		pc_in	    : in std_logic_vector(DATA_WIDTH-1 downto 0);
		pc_out	: out std_logic_vector(DATA_WIDTH-1 downto 0);
		rom_in	 : in std_logic_vector(DATA_WIDTH-1 downto 0);
		rom_out	: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);

end entity;

architecture rtl of if_id_reg is

begin
	process (clk)
		begin
			if (rising_edge(clk)) then
				pc_out <= pc_in;
				rom_out <= rom_in;
			end if;
	end process;

end rtl;
