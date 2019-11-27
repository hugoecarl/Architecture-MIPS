-- Design de Computadores
-- file: uc.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity uc is
	port
    (
        opcode              	: IN STD_LOGIC_VECTOR(OPCODE_WIDTH-1 DOWNTO 0);
        pontosDeControle    	: OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of uc is
begin
		pontosDeControle <= ctrlTipoR when (opcode = opCodeTipoR) else
								  ctrlTipoLW when (opcode = opCodeLW) else
								  ctrlTipoSW when (opcode = opCodeSW) else
								  ctrlTipoBEQ when (opcode = opCodeBEQ) else
								  ctrlTipoJ when (opcode = opCodeTipoJ) else
								  "00000000000";

--		when	opCodeTipoR => pontosDeControle <= ctrlTipoR;
--		when	opCodeLW => pontosDeControle <= ctrlTipoLW;
--		when	opCodeSW => pontosDeControle <= ctrlTipoSW;
--		when	opCodeBEQ => pontosDeControle <= ctrlTipoBEQ;
--		when opCodeTipoJ => pontosDeControle <= ctrlTipoJ;
--		when others => pontosDeControle <= "00000000";

end bhv;
