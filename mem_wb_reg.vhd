-- Quartus Prime VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity mem_wb_reg is


	port 
	(
		clk		: in std_logic;
		ram_out	    : in std_logic_vector(DATA_WIDTH-1 downto 0);
		exmemreg_out	: in std_logic_vector(DATA_WIDTH-1 downto 0);
		rd_exmemreg_in	: in std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
		wb_BR_in : in std_logic;
		wb_BR_out : out std_logic;
		rd_memwbreg_out	: out std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
		mux_0ent	 : out std_logic_vector(DATA_WIDTH-1 downto 0);
		mux_1ent	: out std_logic_vector(DATA_WIDTH-1 downto 0);
		wb_memtoreg_in : in std_logic;
		wb_memtoreg_out : out std_logic
	);

end entity;

architecture rtl of mem_wb_reg is

begin
	process (clk)
		begin
			if (rising_edge(clk)) then
				mux_1ent <= ram_out;
				mux_0ent <= exmemreg_out;
				rd_memwbreg_out <= rd_exmemreg_in;
				wb_BR_out <= wb_BR_in;
				wb_memtoreg_out <= wb_memtoreg_in;

			end if;
	end process;

end rtl;
