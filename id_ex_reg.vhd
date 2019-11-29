-- Quartus Prime VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity id_ex_reg is


	port 
	(
		clk		: in std_logic;
		bancoregout1	    : in std_logic_vector(DATA_WIDTH-1 downto 0);
		bancoregout2	: in std_logic_vector(DATA_WIDTH-1 downto 0);
		reg1out	 : in std_logic_vector(DATA_WIDTH-1 downto 0);
		sigextout	: in std_logic_vector(DATA_WIDTH-1 downto 0);
		rtin : in std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
		rdin : in std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
		wb_ucBR_in : in std_logic;
		memacess_andbq_in : in std_logic;
		execute_muxula_in : in std_logic;
		execute_muxula_out : out std_logic;
		memacess_andbq_out : out std_logic;
		wb_ucBR_out : out std_logic;	
		rtout : out std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
		rdout : out std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
		inAlu	    : out std_logic_vector(DATA_WIDTH-1 downto 0);
		inAdder	: out std_logic_vector(DATA_WIDTH-1 downto 0);
		inMux	 : out std_logic_vector(DATA_WIDTH-1 downto 0);
		inShifter	: out std_logic_vector(DATA_WIDTH-1 downto 0);
		execute_ulaop_in : in std_logic_vector(2 downto 0);
		execute_ulaop_out : out std_logic_vector(2 downto 0);
		execute_muxrtrd_in : in std_logic;
		execute_muxrtrd_out : out std_logic;
		memacess_memread_in : in std_logic;
		memacess_memread_out : out std_logic;
		memacess_memwrite_in : in std_logic;
		memacess_memwrite_out : out std_logic;
		wb_memtoregmux_in : in std_logic;
		wb_memtoregmux_out : out std_logic


		
	);

end entity;

architecture rtl of id_ex_reg is

begin
	process (clk)
		begin
			if (rising_edge(clk)) then
				inAlu <= bancoregout1;
				inMux <= bancoregout2;
				inAdder <= reg1out;
				inShifter <= sigextout;
				rtout <= rtin;
				rdout <= rdin;
				wb_ucBR_out <= wb_ucBR_in;
				execute_muxula_out <= execute_muxula_in;
				execute_ulaop_out <= execute_ulaop_in;
				execute_muxrtrd_out <= execute_muxrtrd_in;
				memacess_andbq_out <= memacess_andbq_in;
				memacess_memread_out	<=	memacess_memread_in;
				memacess_memwrite_out	<=	memacess_memwrite_in;
				wb_memtoregmux_out <= wb_memtoregmux_in;
				end if;
	end process;

end rtl;
