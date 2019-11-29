-- Quartus Prime VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity ex_mem_reg is


	port 
	(
		clk		: in std_logic;
		outAlu	    : in std_logic_vector(DATA_WIDTH-1 downto 0);
		ZeroAlu	: in std_logic;
		outAdder	 : in std_logic_vector(DATA_WIDTH-1 downto 0);
		out_mux_idex	: in std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
		outbrsaida2 : in std_logic_vector(DATA_WIDTH-1 downto 0);
		memacess_andbq_in : in std_logic;
		wb_regwrite_in : in std_logic;
		wb_regwrite_out : out std_logic;
		memacess_andbq_out : out std_logic;
		inregmemwd : out std_logic_vector(DATA_WIDTH-1 downto 0);
		in_memwb_rd	    : out std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
		ramAdd	: out std_logic_vector(DATA_WIDTH-1 downto 0);
		inMuxPc	 : out std_logic_vector(DATA_WIDTH-1 downto 0);
		zerout	: out std_logic;
		wb_memtoregmux_in : in std_logic;
		wb_memtoregmux_out : out std_logic;
		memacess_memread_in : in std_logic;
		memacess_memread_out : out std_logic;
		memacess_memwrite_in : in std_logic;
		memacess_memwrite_out : out std_logic
	
	);

end entity;

architecture rtl of ex_mem_reg is

begin
	process (clk)
		begin
			if (rising_edge(clk)) then
				ramAdd <= outAlu;
				inMuxPc <= outAdder;
				zerout <= ZeroAlu;
				in_memwb_rd <= out_mux_idex;
				inregmemwd <= outbrsaida2;
				wb_regwrite_out <= wb_regwrite_in;
				wb_memtoregmux_out <= wb_memtoregmux_in;				
				memacess_andbq_out <= memacess_andbq_in;
				memacess_memread_out	<=	memacess_memread_in;
				memacess_memwrite_out	<=	memacess_memwrite_in;
			end if;
	end process;

end rtl;
