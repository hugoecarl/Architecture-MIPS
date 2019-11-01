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
		we_ram : in std_logic;
		mux_rt_imed : in std_logic;
		BEQ : in std_logic

	);
end entity;
	
architecture MIPS_top of MIPS is 
	
	signal ula_out, s1, s2, saida_exten, out_mem, out_mux1: std_logic_vector(dados-1 downto 0);
	signal rom_data, rom_addr, mux2_out,rom_in, out_somador1, mux2_2in, out_mux2  : std_logic_vector(addr_width-1 downto 0); 
	signal flag_uc, Z, selmux_pc: std_logic; --we_uc aqui 
	signal pc_out: std_logic_vector(dados-1 downto 0);

	begin
	
		ula: entity work.ula
		port map(
				clk=>clk,
				IN_mux=>out_mux1,
				IN_banco=>s2,
				OP=>ula_instr, ----
				S=>ula_out,
				FLAG => Z
		);
		
		
		BancoDeRegistradores: entity work.BancoDeRegistradores
		port map(
			clk=>clk,
			enderecoA=>rom_data(25 downto 21),
			enderecoB=>rom_data(20 downto 16),
			enderecoC=>rom_data(20 downto 16),
			dadoEscritaC=>out_mem,
			escreveC=>we_uc,
			saidaA=>s1,
			saidaB=>s2
	  );
	  
	  	pc: entity work.pc
		port map(
			pc_i=>out_mux2,
			clk=>clk,
			pc_o=>pc_out --
		);
		
		somadorGenerico: entity work.somadorGenerico
		port map(
			entradaA=>pc_out, --
			saida=> mux2_2in
		);
		
		rom: entity work.rom
		port map(
			clk =>clk,
			Dado => rom_data, 
			Endereco => pc_out --
		);
		
		
		extensorGenerico: entity work.extensorGenerico
		port map(
			estendeSinal_IN=>rom_data(15 downto 0),
			estendeSinal_OUT=> saida_exten
		);
		
		
		data_mem: entity work.data_mem
		port map(
			addr => ula_out,	        
         we => we_ram,
         clk => clk,
         dado_in => s1,
         dado_out => out_mem
		
		);
		
		mux2_1: entity work.mux2
		port map(
			A => s1,	        
         B => saida_exten,
         Sel => mux_rt_imed,
         Y => out_mux1
		
		);
		
		mux2_2: entity work.mux2
		port map(
			A => out_somador1,	        
         B => mux2_2in,
         Sel => selmux_pc,
         Y => out_mux2
		
		);
		
		somador: entity work.somador
		port map(
			entradaA => mux2_2in, --
			entradaB => saida_exten,
			saida => out_somador1
		);
		
		andBEQ: entity work.andBEQ
		port map(
			entradaA => Z, --
			entradaB => BEQ,
			saida => selmux_pc
		);
		
		
	end;
	