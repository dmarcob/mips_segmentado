onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color White /testbench/uut/reset
add wave -noupdate -color White /testbench/uut/clk
add wave -noupdate /testbench/uut/saltar
add wave -noupdate /testbench/uut/saltar2
add wave -noupdate /testbench/uut/address_error
add wave -noupdate /testbench/uut/decission_error
add wave -noupdate /testbench/uut/predictor_error
add wave -noupdate /testbench/uut/update_predictor
add wave -noupdate -group IF -group memI -color Cyan /testbench/uut/Mem_I/RAM
add wave -noupdate -group IF -group memI -color Blue /testbench/uut/Mem_I/Dout
add wave -noupdate -group IF -group PC -color Blue /testbench/uut/pc/Dout
add wave -noupdate -group IF -group ADDER -color Blue /testbench/uut/adder_4/Dout
add wave -noupdate -group IF -group muxPC -color Cyan /testbench/uut/muxPC/DIn0
add wave -noupdate -group IF -group muxPC -color Cyan /testbench/uut/muxPC/DIn1
add wave -noupdate -group IF -group muxPC -color Cyan /testbench/uut/muxPC/DIn2
add wave -noupdate -group IF -group muxPC -color Cyan /testbench/uut/muxPC/DIn3
add wave -noupdate -group IF -group muxPC -color Cyan /testbench/uut/muxPC/ctrl
add wave -noupdate -group IF -group muxPC -color Blue /testbench/uut/muxPC/Dout
add wave -noupdate -group IFID -color Plum /testbench/uut/Banco_IF_ID/IR_in
add wave -noupdate -group IFID -color Plum /testbench/uut/Banco_IF_ID/PC4_ID
add wave -noupdate -group IFID -color Plum /testbench/uut/Banco_IF_ID/load
add wave -noupdate -group IFID -color Magenta /testbench/uut/Banco_IF_ID/IR_ID
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/clk
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/reset
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/PC4
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/PC4_ID
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/prediction_in
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/branch_address_in
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/update
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/valid
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/tag
add wave -noupdate -group predictor -color Khaki /testbench/uut/b_predictor/address
add wave -noupdate -group predictor -color Gold /testbench/uut/b_predictor/prediction_out
add wave -noupdate -group predictor -color Gold /testbench/uut/b_predictor/prediction
add wave -noupdate -group predictor -color Gold /testbench/uut/b_predictor/branch_address_out
add wave -noupdate -group ID -group BR -color Green /testbench/uut/Register_bank/RA
add wave -noupdate -group ID -group BR -color Green /testbench/uut/Register_bank/RB
add wave -noupdate -group ID -group BR -color Green /testbench/uut/Register_bank/BusW
add wave -noupdate -group ID -group BR -color Green /testbench/uut/Register_bank/RW
add wave -noupdate -group ID -group BR -color Green /testbench/uut/Register_bank/RegWrite
add wave -noupdate -group ID -group BR -color Green /testbench/uut/Register_bank/reg_file
add wave -noupdate -group ID -group BR -color {Dark Green} /testbench/uut/Register_bank/BusB
add wave -noupdate -group ID -group BR -color {Dark Green} /testbench/uut/Register_bank/BusA
add wave -noupdate -group ID -group SEX -color Green /testbench/uut/sign_ext/inm
add wave -noupdate -group ID -group SEX -color {Dark Green} /testbench/uut/sign_ext/inm_ext
add wave -noupdate -group ID -group uc -color Green /testbench/uut/UC_seg/IR_op_code
add wave -noupdate -group ID -group uc -color {Dark Green} /testbench/uut/UC_seg/Branch
add wave -noupdate -group ID -group uc -color {Dark Green} /testbench/uut/UC_seg/RegDst
add wave -noupdate -group ID -group uc -color {Dark Green} /testbench/uut/UC_seg/ALUSrc
add wave -noupdate -group ID -group uc -color {Dark Green} /testbench/uut/UC_seg/MemWrite
add wave -noupdate -group ID -group uc -color {Dark Green} /testbench/uut/UC_seg/MemRead
add wave -noupdate -group ID -group uc -color {Dark Green} /testbench/uut/UC_seg/MemtoReg
add wave -noupdate -group ID -group uc -color {Dark Green} /testbench/uut/UC_seg/RegWrite
add wave -noupdate -group ID -group Unidad_Det -color Green /testbench/uut/Unidad_Det/Reg_Rs_ID
add wave -noupdate -group ID -group Unidad_Det -color Green /testbench/uut/Unidad_Det/Reg_Rt_ID
add wave -noupdate -group ID -group Unidad_Det -color Green /testbench/uut/Unidad_Det/MemRead_EX
add wave -noupdate -group ID -group Unidad_Det -color Green /testbench/uut/Unidad_Det/Op_code_ID
add wave -noupdate -group ID -group Unidad_Det -color {Dark Green} /testbench/uut/Unidad_Det/avanzar_ID
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/busA_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/busB_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/inm_ext_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/RegDst_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/ALUSrc_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/MemWrite_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/MemRead_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/MemtoReg_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/RegWrite_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/ALUctrl_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/Reg_Rs_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/Reg_Rt_EX
add wave -noupdate -group IDEX -color {Yellow Green} /testbench/uut/Banco_ID_EX/Reg_Rd_EX
add wave -noupdate -group EX -group MUXA -color Wheat /testbench/uut/Mux_A/DIn0
add wave -noupdate -group EX -group MUXA -color Wheat /testbench/uut/Mux_A/DIn1
add wave -noupdate -group EX -group MUXA -color Wheat /testbench/uut/Mux_A/DIn2
add wave -noupdate -group EX -group MUXA -color Wheat /testbench/uut/Mux_A/DIn3
add wave -noupdate -group EX -group MUXA -color Wheat /testbench/uut/Mux_A/ctrl
add wave -noupdate -group EX -group MUXA -color Yellow /testbench/uut/Mux_A/Dout
add wave -noupdate -group EX -group MUXB -color Wheat /testbench/uut/Mux_B/DIn0
add wave -noupdate -group EX -group MUXB -color Wheat /testbench/uut/Mux_B/DIn1
add wave -noupdate -group EX -group MUXB -color Wheat /testbench/uut/Mux_B/DIn2
add wave -noupdate -group EX -group MUXB -color Wheat /testbench/uut/Mux_B/DIn3
add wave -noupdate -group EX -group MUXB -color Wheat /testbench/uut/Mux_B/ctrl
add wave -noupdate -group EX -group MUXB -color Yellow /testbench/uut/Mux_B/Dout
add wave -noupdate -group EX -group muxALU -color Wheat /testbench/uut/muxALU_src/DIn0
add wave -noupdate -group EX -group muxALU -color Wheat /testbench/uut/muxALU_src/DIn1
add wave -noupdate -group EX -group muxALU -color Wheat /testbench/uut/muxALU_src/ctrl
add wave -noupdate -group EX -group muxALU -color Yellow /testbench/uut/muxALU_src/Dout
add wave -noupdate -group EX -group ALU -color Wheat /testbench/uut/ALU_MIPs/DA
add wave -noupdate -group EX -group ALU -color Wheat /testbench/uut/ALU_MIPs/DB
add wave -noupdate -group EX -group ALU -color Wheat /testbench/uut/ALU_MIPs/ALUctrl
add wave -noupdate -group EX -group ALU -color Yellow /testbench/uut/ALU_MIPs/Dout
add wave -noupdate -group EX -group muxDST -color Wheat /testbench/uut/mux_dst/DIn0
add wave -noupdate -group EX -group muxDST -color Wheat /testbench/uut/mux_dst/DIn1
add wave -noupdate -group EX -group muxDST -color Wheat /testbench/uut/mux_dst/ctrl
add wave -noupdate -group EX -group muxDST -color Yellow /testbench/uut/mux_dst/Dout
add wave -noupdate -group EXMEN -color {Orange Red} /testbench/uut/Banco_EX_MEM/ALU_out_MEM
add wave -noupdate -group EXMEN -color {Orange Red} /testbench/uut/Banco_EX_MEM/MemWrite_MEM
add wave -noupdate -group EXMEN -color {Orange Red} /testbench/uut/Banco_EX_MEM/MemRead_MEM
add wave -noupdate -group EXMEN -color {Orange Red} /testbench/uut/Banco_EX_MEM/MemtoReg_MEM
add wave -noupdate -group EXMEN -color {Orange Red} /testbench/uut/Banco_EX_MEM/RegWrite_MEM
add wave -noupdate -group EXMEN -color {Orange Red} /testbench/uut/Banco_EX_MEM/BusB_MEM
add wave -noupdate -group EXMEN -color {Orange Red} /testbench/uut/Banco_EX_MEM/RW_MEM
add wave -noupdate -group MEM -group MEND -color Plum /testbench/uut/Mem_D/ADDR
add wave -noupdate -group MEM -group MEND -color Plum /testbench/uut/Mem_D/Din
add wave -noupdate -group MEM -group MEND -color Plum /testbench/uut/Mem_D/WE
add wave -noupdate -group MEM -group MEND -color Plum /testbench/uut/Mem_D/RE
add wave -noupdate -group MEM -group MEND -color Plum /testbench/uut/Mem_D/RAM
add wave -noupdate -group MEM -group MEND -color Magenta /testbench/uut/Mem_D/Dout
add wave -noupdate -group MEMWB -color Salmon /testbench/uut/Banco_MEM_WB/ALU_out_WB
add wave -noupdate -group MEMWB -color Salmon /testbench/uut/Banco_MEM_WB/MDR
add wave -noupdate -group MEMWB -color Salmon /testbench/uut/Banco_MEM_WB/MemtoReg_WB
add wave -noupdate -group MEMWB -color Salmon /testbench/uut/Banco_MEM_WB/RegWrite_WB
add wave -noupdate -group MEMWB -color Salmon /testbench/uut/Banco_MEM_WB/RW_WB
add wave -noupdate -group WB -color White /testbench/uut/mux_busW/DIn0
add wave -noupdate -group WB -color White /testbench/uut/mux_busW/DIn1
add wave -noupdate -group WB -color White /testbench/uut/mux_busW/ctrl
add wave -noupdate -group WB -color Gray70 /testbench/uut/mux_busW/Dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {34 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 311
configure wave -valuecolwidth 139
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {72 ns}
