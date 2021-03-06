onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/Clk
add wave -noupdate -format Logic /tb/Reset
add wave -noupdate -format Logic /tb/rvp/Clk
add wave -noupdate -format Logic /tb/rvp/Reset
add wave -noupdate -format Literal /tb/rvp/PC_In
add wave -noupdate -format Literal /tb/rvp/PC_Out
add wave -noupdate -format Literal /tb/rvp/out1
add wave -noupdate -format Literal /tb/rvp/Instruction
add wave -noupdate -format Literal /tb/rvp/opcode
add wave -noupdate -format Literal /tb/rvp/rd
add wave -noupdate -format Literal /tb/rvp/funct3
add wave -noupdate -format Literal /tb/rvp/rs1
add wave -noupdate -format Literal /tb/rvp/rs2
add wave -noupdate -format Literal /tb/rvp/funct7
add wave -noupdate -format Literal /tb/rvp/ALUOp
add wave -noupdate -format Logic /tb/rvp/Branch
add wave -noupdate -format Logic /tb/rvp/MemRead
add wave -noupdate -format Logic /tb/rvp/MemtoReg
add wave -noupdate -format Logic /tb/rvp/MemWrite
add wave -noupdate -format Logic /tb/rvp/ALUSrc
add wave -noupdate -format Logic /tb/rvp/RegWrite
add wave -noupdate -format Literal /tb/rvp/WriteData
add wave -noupdate -format Literal /tb/rvp/ReadData1
add wave -noupdate -format Literal /tb/rvp/ReadData2
add wave -noupdate -format Literal /tb/rvp/imm_data
add wave -noupdate -format Literal /tb/rvp/out2
add wave -noupdate -format Literal /tb/rvp/b
add wave -noupdate -format Literal /tb/rvp/Operation
add wave -noupdate -format Literal /tb/rvp/result
add wave -noupdate -format Logic /tb/rvp/carryout
add wave -noupdate -format Logic /tb/rvp/zero
add wave -noupdate -format Literal /tb/rvp/Read_Data
add wave -noupdate -format Logic /tb/rvp/pc/clk
add wave -noupdate -format Logic /tb/rvp/pc/reset
add wave -noupdate -format Literal /tb/rvp/pc/PC_In
add wave -noupdate -format Literal /tb/rvp/pc/PC_Out
add wave -noupdate -format Literal /tb/rvp/a1/a
add wave -noupdate -format Literal /tb/rvp/a1/b
add wave -noupdate -format Literal /tb/rvp/a1/out
add wave -noupdate -format Literal /tb/rvp/im/Inst_Address
add wave -noupdate -format Literal /tb/rvp/im/Instruction
add wave -noupdate -format Literal /tb/rvp/i/instruction
add wave -noupdate -format Literal /tb/rvp/i/opcode
add wave -noupdate -format Literal /tb/rvp/i/rd
add wave -noupdate -format Literal /tb/rvp/i/funct3
add wave -noupdate -format Literal /tb/rvp/i/rs1
add wave -noupdate -format Logic /tb/Clk
add wave -noupdate -format Logic /tb/Reset
add wave -noupdate -format Logic /tb/rvp/Clk
add wave -noupdate -format Logic /tb/rvp/Reset
add wave -noupdate -format Literal /tb/rvp/PC_In
add wave -noupdate -format Literal /tb/rvp/PC_Out
add wave -noupdate -format Literal /tb/rvp/out1
add wave -noupdate -format Literal /tb/rvp/Instruction
add wave -noupdate -format Literal /tb/rvp/opcode
add wave -noupdate -format Literal /tb/rvp/rd
add wave -noupdate -format Literal /tb/rvp/funct3
add wave -noupdate -format Literal /tb/rvp/rs1
add wave -noupdate -format Literal /tb/rvp/rs2
add wave -noupdate -format Literal /tb/rvp/funct7
add wave -noupdate -format Literal /tb/rvp/ALUOp
add wave -noupdate -format Logic /tb/rvp/Branch
add wave -noupdate -format Logic /tb/rvp/MemRead
add wave -noupdate -format Logic /tb/rvp/MemtoReg
add wave -noupdate -format Logic /tb/rvp/MemWrite
add wave -noupdate -format Logic /tb/rvp/ALUSrc
add wave -noupdate -format Logic /tb/rvp/RegWrite
add wave -noupdate -format Literal /tb/rvp/WriteData
add wave -noupdate -format Literal /tb/rvp/ReadData1
add wave -noupdate -format Literal /tb/rvp/ReadData2
add wave -noupdate -format Literal /tb/rvp/imm_data
add wave -noupdate -format Literal /tb/rvp/out2
add wave -noupdate -format Literal /tb/rvp/b
add wave -noupdate -format Literal /tb/rvp/Operation
add wave -noupdate -format Literal /tb/rvp/result
add wave -noupdate -format Logic /tb/rvp/carryout
add wave -noupdate -format Logic /tb/rvp/zero
add wave -noupdate -format Literal /tb/rvp/Read_Data
add wave -noupdate -format Logic /tb/rvp/pc/clk
add wave -noupdate -format Logic /tb/rvp/pc/reset
add wave -noupdate -format Literal /tb/rvp/pc/PC_In
add wave -noupdate -format Literal /tb/rvp/pc/PC_Out
add wave -noupdate -format Literal /tb/rvp/a1/a
add wave -noupdate -format Literal /tb/rvp/a1/b
add wave -noupdate -format Literal /tb/rvp/a1/out
add wave -noupdate -format Literal /tb/rvp/im/Inst_Address
add wave -noupdate -format Literal /tb/rvp/im/Instruction
add wave -noupdate -format Literal /tb/rvp/i/instruction
add wave -noupdate -format Literal /tb/rvp/i/opcode
add wave -noupdate -format Literal /tb/rvp/i/rd
add wave -noupdate -format Literal /tb/rvp/i/funct3
add wave -noupdate -format Literal /tb/rvp/i/rs1
add wave -noupdate -format Literal /tb/rvp/i/rs2
add wave -noupdate -format Literal /tb/rvp/i/funct7
add wave -noupdate -format Literal /tb/rvp/cu/Opcode
add wave -noupdate -format Literal /tb/rvp/cu/ALUOp
add wave -noupdate -format Logic /tb/rvp/cu/Branch
add wave -noupdate -format Logic /tb/rvp/cu/MemRead
add wave -noupdate -format Logic /tb/rvp/cu/MemtoReg
add wave -noupdate -format Logic /tb/rvp/cu/MemWrite
add wave -noupdate -format Logic /tb/rvp/cu/ALUSrc
add wave -noupdate -format Logic /tb/rvp/cu/RegWrite
add wave -noupdate -format Literal /tb/rvp/rf/WriteData
add wave -noupdate -format Literal /tb/rvp/rf/Rs1
add wave -noupdate -format Literal /tb/rvp/rf/Rs2
add wave -noupdate -format Literal /tb/rvp/rf/Rd
add wave -noupdate -format Logic /tb/rvp/rf/RegWrite
add wave -noupdate -format Logic /tb/rvp/rf/Clk
add wave -noupdate -format Logic /tb/rvp/rf/Reset
add wave -noupdate -format Literal /tb/rvp/rf/ReadData1
add wave -noupdate -format Literal /tb/rvp/rf/ReadData2
add wave -noupdate -format Literal /tb/rvp/idg/instruction
add wave -noupdate -format Literal /tb/rvp/idg/imm_data
add wave -noupdate -format Literal /tb/rvp/idg/imm_data_wire
add wave -noupdate -format Literal /tb/rvp/idg/m/a
add wave -noupdate -format Literal /tb/rvp/idg/m/b
add wave -noupdate -format Literal /tb/rvp/idg/m/c
add wave -noupdate -format Literal /tb/rvp/idg/m/s
add wave -noupdate -format Literal /tb/rvp/idg/m/o
add wave -noupdate -format Literal /tb/rvp/a2/a
add wave -noupdate -format Literal /tb/rvp/a2/b
add wave -noupdate -format Literal /tb/rvp/a2/out
add wave -noupdate -format Literal /tb/rvp/m2/a
add wave -noupdate -format Literal /tb/rvp/m2/b
add wave -noupdate -format Logic /tb/rvp/m2/s
add wave -noupdate -format Literal /tb/rvp/m2/o
add wave -noupdate -format Literal /tb/rvp/alc/ALUOp
add wave -noupdate -format Literal /tb/rvp/alc/Funct
add wave -noupdate -format Literal /tb/rvp/alc/Operation
add wave -noupdate -format Literal /tb/rvp/a/a
add wave -noupdate -format Literal /tb/rvp/a/b
add wave -noupdate -format Logic /tb/rvp/a/carryin
add wave -noupdate -format Literal /tb/rvp/a/ALUop
add wave -noupdate -format Literal /tb/rvp/a/result
add wave -noupdate -format Logic /tb/rvp/a/carryout
add wave -noupdate -format Logic /tb/rvp/a/zero
add wave -noupdate -format Literal /tb/rvp/a/mux1out
add wave -noupdate -format Literal /tb/rvp/a/mux2out
add wave -noupdate -format Literal /tb/rvp/a/sum
add wave -noupdate -format Literal /tb/rvp/m1/a
add wave -noupdate -format Literal /tb/rvp/m1/b
add wave -noupdate -format Logic /tb/rvp/m1/s
add wave -noupdate -format Literal /tb/rvp/m1/o
add wave -noupdate -format Logic /tb/rvp/dm/clk
add wave -noupdate -format Logic /tb/rvp/dm/MemWrite
add wave -noupdate -format Logic /tb/rvp/dm/MemRead
add wave -noupdate -format Literal /tb/rvp/dm/Mem_Addr
add wave -noupdate -format Literal /tb/rvp/dm/Write_Data
add wave -noupdate -format Literal /tb/rvp/dm/Read_Data
add wave -noupdate -format Literal /tb/rvp/m3/a
add wave -noupdate -format Literal /tb/rvp/m3/b
add wave -noupdate -format Logic /tb/rvp/m3/s
add wave -noupdate -format Literal /tb/rvp/m3/o
add wave -noupdate -format Literal /tb/rvp/i/rs2
add wave -noupdate -format Literal /tb/rvp/i/funct7
add wave -noupdate -format Literal /tb/rvp/cu/Opcode
add wave -noupdate -format Literal /tb/rvp/cu/ALUOp
add wave -noupdate -format Logic /tb/rvp/cu/Branch
add wave -noupdate -format Logic /tb/rvp/cu/MemRead
add wave -noupdate -format Logic /tb/rvp/cu/MemtoReg
add wave -noupdate -format Logic /tb/rvp/cu/MemWrite
add wave -noupdate -format Logic /tb/rvp/cu/ALUSrc
add wave -noupdate -format Logic /tb/rvp/cu/RegWrite
add wave -noupdate -format Literal /tb/rvp/rf/WriteData
add wave -noupdate -format Literal /tb/rvp/rf/Rs1
add wave -noupdate -format Literal /tb/rvp/rf/Rs2
add wave -noupdate -format Literal /tb/rvp/rf/Rd
add wave -noupdate -format Logic /tb/rvp/rf/RegWrite
add wave -noupdate -format Logic /tb/rvp/rf/Clk
add wave -noupdate -format Logic /tb/rvp/rf/Reset
add wave -noupdate -format Literal /tb/rvp/rf/ReadData1
add wave -noupdate -format Literal /tb/rvp/rf/ReadData2
add wave -noupdate -format Literal /tb/rvp/idg/instruction
add wave -noupdate -format Literal /tb/rvp/idg/imm_data
add wave -noupdate -format Literal /tb/rvp/idg/imm_data_wire
add wave -noupdate -format Literal /tb/rvp/idg/m/a
add wave -noupdate -format Literal /tb/rvp/idg/m/b
add wave -noupdate -format Literal /tb/rvp/idg/m/c
add wave -noupdate -format Literal /tb/rvp/idg/m/s
add wave -noupdate -format Literal /tb/rvp/idg/m/o
add wave -noupdate -format Literal /tb/rvp/a2/a
add wave -noupdate -format Literal /tb/rvp/a2/b
add wave -noupdate -format Literal /tb/rvp/a2/out
add wave -noupdate -format Literal /tb/rvp/m2/a
add wave -noupdate -format Literal /tb/rvp/m2/b
add wave -noupdate -format Logic /tb/rvp/m2/s
add wave -noupdate -format Literal /tb/rvp/m2/o
add wave -noupdate -format Literal /tb/rvp/alc/ALUOp
add wave -noupdate -format Literal /tb/rvp/alc/Funct
add wave -noupdate -format Literal /tb/rvp/alc/Operation
add wave -noupdate -format Literal /tb/rvp/a/a
add wave -noupdate -format Literal /tb/rvp/a/b
add wave -noupdate -format Logic /tb/rvp/a/carryin
add wave -noupdate -format Literal /tb/rvp/a/ALUop
add wave -noupdate -format Literal /tb/rvp/a/result
add wave -noupdate -format Logic /tb/rvp/a/carryout
add wave -noupdate -format Logic /tb/rvp/a/zero
add wave -noupdate -format Literal /tb/rvp/a/mux1out
add wave -noupdate -format Literal /tb/rvp/a/mux2out
add wave -noupdate -format Literal /tb/rvp/a/sum
add wave -noupdate -format Literal /tb/rvp/m1/a
add wave -noupdate -format Literal /tb/rvp/m1/b
add wave -noupdate -format Logic /tb/rvp/m1/s
add wave -noupdate -format Literal /tb/rvp/m1/o
add wave -noupdate -format Logic /tb/rvp/dm/clk
add wave -noupdate -format Logic /tb/rvp/dm/MemWrite
add wave -noupdate -format Logic /tb/rvp/dm/MemRead
add wave -noupdate -format Literal /tb/rvp/dm/Mem_Addr
add wave -noupdate -format Literal /tb/rvp/dm/Write_Data
add wave -noupdate -format Literal /tb/rvp/dm/Read_Data
add wave -noupdate -format Literal /tb/rvp/m3/a
add wave -noupdate -format Literal /tb/rvp/m3/b
add wave -noupdate -format Logic /tb/rvp/m3/s
add wave -noupdate -format Literal /tb/rvp/m3/o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ns} {954 ns}
