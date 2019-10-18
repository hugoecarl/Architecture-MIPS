entity MIPS is
	generic(
		word: natural := 32;
		dados: natural :=32;
		addr_width : natural :=32
	);
		
	port(
		clk : in std_logic;

	);
end entity;
	
architecture MIPS_top of MIPS is 
	
	signal ula_out, s1, s2: std_logic_vector(dados-1 downto 0);
	signal rom_data, rom_addr, pc_i, pc_out  :      in std_logic_vector(word-1 downto 0); 

	
	begin
	
		ula: entity work.ula
		port map(
				clk=>clk,
				IN_mux=>mux2_out,
				IN_banco=>s2,
				OP=>ula_instr,
				S=>ula_out,
				FLAG=>flag_uc
		);
		
		
		bancoRegistradores: entity work.bancoRegistradores
		port map(
			clk=>clk,
			enderecoA=>rom_in(25 downto 21),
			enderecoB=>rom_in(20 downto 16),
			enderecoC=>rom_in(15 downto 11),
			dadoEscritaC=>ula_out,
			escreveC=>we_uc,
			saidaA=>s1,
			saidaB=>s2
	  );
	  
	  	pc: entity work.pc
		port map(
			pc_i=>pc_i,
			clk=>clk,
			pc_o=>pc_out
		);
		
		somadorGenerico: entity work.somadorGenerico
		port map(
			entradaA=>pc_out,
			saida=> pc_i
		);
		
		rom: entity work.rom
		port map(
			q => rom_data, 
			addr => pc_out
		);
	