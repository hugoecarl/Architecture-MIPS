library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity MIPS is
	generic(
		-- word: natural := 32;
		dados: natural :=32;
		addr_width : natural :=32
	);
		
	port(
		clk, we_uc : in std_logic; 
		ula_instr: in std_logic;
		ula_out_teste: out std_logic_vector(31 downto 0);
		pc_out_teste: out std_logic_vector(31 downto 0)

	);
end entity;
	
architecture MIPS_top of MIPS is 
	
	signal ula_out, s1, s2: std_logic_vector(dados-1 downto 0);
	signal rom_data, rom_addr, mux2_out,rom_in  : std_logic_vector(addr_width-1 downto 0); 
	signal flag_uc: std_logic; --we_uc aqui 
	--signal ula_instr: std_logic_vector(5 downto 0);
	signal pc_i,pc_out: std_logic_vector(dados-1 downto 0);

	begin
	
		ula: entity work.ula
		port map(
				clk=>clk,
				IN_mux=>s1,
				IN_banco=>s2,
				OP=>ula_instr, ----
				S=>ula_out
		);
		
		
		BancoDeRegistradores: entity work.BancoDeRegistradores
		port map(
			clk=>clk,
			enderecoA=>rom_data(25 downto 21),
			enderecoB=>rom_data(20 downto 16),
			enderecoC=>rom_data(15 downto 11),
			dadoEscritaC=>ula_out,
			escreveC=>we_uc,
			saidaA=>s1,
			saidaB=>s2
	  );
	  
	  	pc: entity work.pc
		port map(
			pc_i=>pc_i,
			clk=>clk,
			pc_o=>pc_out --
		);
		
		somadorGenerico: entity work.somadorGenerico
		port map(
			entradaA=>pc_out, --
			saida=> pc_i
		);
		
		rom: entity work.rom
		port map(
			clk =>clk,
			Dado => rom_data, 
			Endereco => pc_out --
		);
		
		ula_out_teste <= ula_out;
		pc_out_teste <= pc_out;
	end;
	