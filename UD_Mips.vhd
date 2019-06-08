library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity UD is
	Port ( Reg_Rs_ID: in STD_LOGIC_VECTOR (4 downto 0);--registro rs de etapa ID
		   Reg_Rt_ID: in STD_LOGIC_VECTOR (4 downto 0);--registro rt de etapa ID
		   RW_MEM: in  STD_LOGIC_VECTOR (4 downto 0);--registro destino etapa MEM
		   RW_EX: in  STD_LOGIC_VECTOR (4 downto 0);--registro destino etapa EX
		   MemRead_EX: in STD_LOGIC;--Señal control lectura memoria etapa EX
		   RegWrite_MEM: in STD_LOGIC;--Señal control escritura memoria etapa MEM
		   RegWrite_EX: in STD_LOGIC;--Señal control escritura memoria etapa EX
		   Op_code_ID: in  STD_LOGIC_VECTOR (5 downto 0);--Código operación etapa ID
		   avanzar_ID: out STD_LOGIC);
end UD;

Architecture Behavioral of UD is
CONSTANT NOP : STD_LOGIC_VECTOR (5 downto 0) := "000000";
CONSTANT BEQ : STD_LOGIC_VECTOR (5 downto 0) := "000100";
CONSTANT BNE : STD_LOGIC_VECTOR (5 downto 0) := "000101";
begin
	avanzar_ID <= '1' when Op_code_ID=NOP else -- si se está ejecutando una NOP, no se produce dentenciones
				  '0' when Reg_Rs_ID=RW_EX AND MemRead_EX='1' else -- caso Rs en etapa ID, dependencia con load en etapa EX
				  '0' when Reg_Rt_ID=RW_EX AND MemRead_EX='1' else -- caso Rt en etapa ID, dependencia con load en etapa EX
				  '0' when Op_code_ID=BEQ AND Reg_Rs_ID=RW_EX AND RegWrite_EX='1' else 	--caso BEQ y dependencia Rs etapa ID con instrucción en etapa EX
				  '0' when Op_code_ID=BEQ AND Reg_Rt_ID=RW_EX AND RegWrite_EX='1' else	 --caso BEQ y dependencia Rt etapa ID con instrucción en etapa EX
				  '0' when Op_code_ID=BNE AND Reg_Rs_ID=RW_EX AND RegWrite_EX='1' else --caso BNE y dependencia Rs etapa ID con instrucción en etapa EX
				  '0' when Op_code_ID=BNE AND Reg_Rt_ID=RW_EX AND RegWrite_EX='1' else --caso BNE y dependencia Rt etapa ID con instrucción en etapa EX
				  '0' when Op_code_ID=BEQ AND Reg_Rs_ID=RW_MEM AND RegWrite_MEM='1' else	--caso BEQ y dependencia Rs etapa ID con instrucción en etapa MEM
				  '0' when Op_code_ID=BEQ AND Reg_Rt_ID=RW_MEM AND RegWrite_MEM='1' else	--caso BEQ y dependencia Rt etapa ID con instrucción en etapa MEM
				  '0' when Op_code_ID=BNE AND Reg_Rs_ID=RW_MEM AND RegWrite_MEM='1' else  --caso BNE y dependencia Rs etapa ID con instrucción en etapa MEM
				  '0' when Op_code_ID=BNE AND Reg_Rt_ID=RW_MEM AND RegWrite_MEM='1' else  --caso BNE y dependencia Rt etapa ID con instrucción en etapa MEM
				  '1';
end Behavioral;
		   