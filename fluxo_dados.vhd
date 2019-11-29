-- Design de Computadores
-- file: fluxo_dados.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity fluxo_dados is
    generic (
        larguraROM          : natural := 8 -- deve ser menor ou igual a 32
    );
	port
    (
        clk			            : IN STD_LOGIC;
        pontosDeControle        : IN STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
        instrucao               : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  saida_da_ula            : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  pc_out                  : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture estrutural of fluxo_dados is

    -- Declaração de sinais auxiliares
	 signal dado_saida_rom, ifid_to_idex, idex_to_adder, in_ula1, in_ula2, in_mux_ula, out_sig_ext : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal Rt_Add_inmux, Rd_Add_inmux, saida_mux_rd_rt1, exmem_to_memwb : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
	 signal escreve_RC, escreve_RAM, leitura_RAM, sel_mux_ula_mem, sel_mux_rd_rt, sel_mux_banco_ula, sel_beq, sel_mux_jump : std_logic;
    signal ULAop : std_logic_vector(ALU_OP_WIDTH-1 downto 0);
    signal wbidex_to_wbex0, wbidex_to_wbex1, memacess_memread, memacess_memwrite, mem_beq: std_logic; --signals do regid/ex

	 signal wbex_to_wbmem0, wbex_to_wbmem1, Z_out1, wb_memtoregmux0, wb_memtoregmux1 : std_logic; --signals do regexmem
	 signal outadder, resultula, inwriteram : std_logic_vector(DATA_WIDTH-1 downto 0); -- "      "      "
	 
	 signal ramdataout, saida_ula1 : std_logic_vector(DATA_WIDTH-1 downto 0); --signals do regmemwb

	 

	 -- Sinais auxiliar da instrução
    signal instrucao_s : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para o banco de registradores
    signal RA, RB : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a ULA
    signal saida_ula : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal Z_out : std_logic;

    -- Sinais auxiliares para a lógica do PC
    signal PC_s, PC_mais_4, PC_mais_4_mais_imediato, entrada_somador_beq : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a RAM
    signal dado_lido_mem : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do imediato
    signal sinal_ext : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do endereço de jump
    signal PC_4_concat_imed : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_shift_jump : std_logic_vector(27 downto 0);
            
    -- Sinais auxiliares dos MUXs
    signal sel_mux_beq : std_logic;
    signal saida_mux_ula_mem, saida_mux_banco_ula, saida_mux_beq, saida_mux_jump : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
     
    -- Controle da ULA
    signal ULActr : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);

    -- Codigos da palavra de controle:
    alias ULAop1             : std_logic_vector(ALU_OP_WIDTH-1 downto 0) is pontosDeControle(10 downto 8);
    alias escreve_RC1        : std_logic is pontosDeControle(7);
    alias escreve_RAM1       : std_logic is pontosDeControle(6);
    alias leitura_RAM1       : std_logic is pontosDeControle(5);
    alias sel_mux_ula_mem1   : std_logic is pontosDeControle(4);
    alias sel_mux_rd_rt1     : std_logic is pontosDeControle(3);
    alias sel_mux_banco_ula1 : std_logic is pontosDeControle(2);
    alias sel_beq1           : std_logic is pontosDeControle(1);
    alias sel_mux_jump1      : std_logic is pontosDeControle(0);

    -- Parsing da instrucao
    alias RS_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao_s(25 downto 21);
    alias RT_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao_s(20 downto 16);
    alias RD_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is instrucao_s(15 downto 11);
    alias funct     : std_logic_vector(FUNCT_WIDTH-1 downto 0) is  sinal_ext(5 DOWNTO 0);
    alias imediato  : std_logic_vector(15 downto 0) is instrucao_s(15 downto 0);

begin

    instrucao <= instrucao_s;

    sel_mux_beq <= sel_beq AND Z_out;

    -- Ajuste do PC para jump (concatena com imediato multiplicado por 4)
    PC_4_concat_imed <= PC_mais_4(31 downto 28) & saida_shift_jump;

    -- Banco de registradores
     BR: entity work.bancoRegistradores 
        generic map (
            larguraDados => DATA_WIDTH, 
            larguraEndBancoRegs => 5
        )
        port map (
            enderecoA => RS_addr,
            enderecoB => RT_addr,
            enderecoC => saida_mux_rd_rt,
            clk          => clk,
            dadoEscritaC => saida_mux_ula_mem, 
            escreveC     => escreve_RC,
            saidaA       => RA,
            saidaB       => RB
        );
    
    -- ULA
     ULA: entity work.ULA
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            A   => in_ula1,
            B   => saida_mux_banco_ula,
            ctr => ULActr,
            C   => resultula,
            Z   => Z_out1
        );
    
    UCULA : entity work.uc_ula 
        port map
        (
            funct  => funct,
            ALUop  => ULAop,
            ALUctr => ULActr
        );
     
    -- PC e somadores
     PC: entity work.Registrador
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            data_out => PC_s,
            data_in  => saida_mux_jump,
            clk      => clk,
            enable   => '1',
            reset    => '1' -- reset negado
        );
    
     Somador_imediato: entity work.somador 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => entrada_somador_beq,
            entradaB => idex_to_adder,
            saida    => outadder
        );
    
     Somador: entity work.soma4
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entrada => PC_s,
            saida   => PC_mais_4
        ); 

    -- ROM
    ROM: entity work.ROM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => larguraROM
        ) 
		port map (
            endereco => PC_s(larguraROM-1 downto 0),
            dado     => dado_saida_rom
        );
    
    -- RAM: escreve valor lido no registrador B no endereço de memória de acordo com a saída da ULA
     RAM: entity work.single_port_RAM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => ADDR_WIDTH
        )
		port map (
            endereco    => saida_ula, 
            we          => escreve_RAM,
            re          => leitura_RAM,
            clk         => clk,
            dado_write  => inwriteram,
            dado_read   => ramdataout
        ); 

     -- Componentes manipuladores do imediato
     extensor: entity work.estendeSinalGenerico 
        generic map (
            larguraDadoEntrada => 16,
            larguraDadoSaida   => DATA_WIDTH
        )
		port map (
            estendeSinal_IN  => imediato,
            estendeSinal_OUT => out_sig_ext 
        ); 

     shift: entity work.shift2_imediato 
        generic map (
            larguraDado => DATA_WIDTH
        )
		port map (
            shift_IN  => sinal_ext,
            shift_OUT => entrada_somador_beq
        );
    
    -- Componentes manipuladores do endereço de jump
     shift_jump: entity work.shift2 
        generic map (
            larguraDado => 26
        )
		port map (
            shift_IN  => instrucao_s(25 downto 0),
            shift_OUT => saida_shift_jump
        );
    
    -- MUXs
     mux_Ula_Memoria: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saida_ula1, 
            entradaB => dado_lido_mem, 
            seletor  => sel_mux_ula_mem,
            saida    => saida_mux_ula_mem
        );
	 
     mux_Rd_Rt: entity work.muxGenerico2 
        generic map (
            larguraDados => REGBANK_ADDR_WIDTH
        )
		port map (
            entradaA => Rt_Add_inmux, 
            entradaB => Rd_Add_inmux,
            seletor  => sel_mux_rd_rt,
            saida    => saida_mux_rd_rt1
        );
	
     mux_Banco_Ula: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => in_mux_ula, 
            entradaB => sinal_ext,  
            seletor  => sel_mux_banco_ula,
            saida    => saida_mux_banco_ula
        );
		
     mux_beq: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => PC_mais_4,
            entradaB => PC_mais_4_mais_imediato,
            seletor  => sel_mux_beq,
            saida    => saida_mux_beq
        );
		
     mux_jump: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saida_mux_beq,
            entradaB => PC_4_concat_imed,
            seletor  => sel_mux_jump1,
            saida    => saida_mux_jump
        );

		  

	   mem_wb_reg: entity work.mem_wb_reg 

		port map (
            clk => clk,
				mux_0ent => saida_ula1,
				ram_out => ramdataout, 
				mux_1ent => dado_lido_mem,
				exmemreg_out => saida_ula,
				rd_memwbreg_out => saida_mux_rd_rt,
				rd_exmemreg_in => exmem_to_memwb,
				wb_BR_out => escreve_RC,
				wb_BR_in => wb_memtoregmux0,
				wb_memtoreg_out => sel_mux_ula_mem,
				wb_memtoreg_in => wb_memtoregmux1
        );
		  
		id_ex_reg: entity work.id_ex_reg 

		port map (
            clk => clk,
				reg1out => ifid_to_idex,
            inAdder => idex_to_adder,
            bancoregout1  => RA,
            inAlu => in_ula1,
				bancoregout2 => RB,
				inMux => in_mux_ula,
				sigextout => out_sig_ext,
				inShifter => sinal_ext,
				rtin => RT_addr,
				rtout => Rt_Add_inmux,
				rdin => RD_addr,
				rdout => Rd_Add_inmux,
				wb_ucBR_in => escreve_RC1,
				wb_ucBR_out => wbidex_to_wbex0,
				wb_memtoregmux_in => sel_mux_ula_mem1, 
				wb_memtoregmux_out => wbidex_to_wbex1, 
				execute_muxula_in => sel_mux_banco_ula1,
				execute_muxula_out => sel_mux_banco_ula,
				execute_ulaop_in => ULAop1,
	    		execute_ulaop_out => ULAop,
				execute_muxrtrd_in => sel_mux_rd_rt1,
				execute_muxrtrd_out => sel_mux_rd_rt,			
				memacess_andbq_in => sel_beq1,
				memacess_andbq_out => mem_beq,
				memacess_memread_in => leitura_RAM1,
				memacess_memread_out => memacess_memread,
				memacess_memwrite_in => escreve_RAM1,
				memacess_memwrite_out => memacess_memwrite
        );
		  		 
		 ex_mem_reg: entity work.ex_mem_reg 

		 port map (
            clk => clk,
				ramAdd => saida_ula,
				outAlu => resultula,
				inMuxPc => PC_mais_4_mais_imediato,
				outAdder => outadder,
				zerout => Z_out,
				ZeroAlu => Z_out1,
				out_mux_idex => saida_mux_rd_rt1,
				in_memwb_rd => exmem_to_memwb,
				outbrsaida2 => in_mux_ula,
				inregmemwd => inwriteram,
				wb_regwrite_in => wbidex_to_wbex0,
				wb_regwrite_out => wb_memtoregmux0,
				memacess_andbq_in => mem_beq,
				memacess_andbq_out => sel_beq,
				memacess_memread_in => memacess_memread,
				memacess_memread_out	=>	leitura_RAM,
				memacess_memwrite_in => memacess_memwrite,
				memacess_memwrite_out => escreve_RAM,	
				wb_memtoregmux_in => wbidex_to_wbex1,
				wb_memtoregmux_out => wb_memtoregmux1
        );

		  

		 if_id_reg: entity work.if_id_reg 
		 port map (
            clk => clk,
				rom_in => dado_saida_rom,
            rom_out => instrucao_s,
            pc_in  => PC_mais_4,
            pc_out  => ifid_to_idex
        );
		  
		 saida_da_ula <= resultula;
		  pc_out <= PC_s;
		  
end architecture;
