onerror {resume}
quietly WaveActivateNextPane {} 0
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
add wave -noupdate -format Literal /tb/rvp/Funct
add wave -noupdate -format Literal /tb/rvp/Operation
add wave -noupdate -format Logic /tb/rvp/carryin
add wave -noupdate -format Literal /tb/rvp/result
add wave -noupdate -format Logic /tb/rvp/carryout
add wave -noupdate -format Logic /tb/rvp/zero
add wave -noupdate -format Literal /tb/rvp/Read_Data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {32 ns} 0}
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
WaveRestoreZoom {0 ns} {234 ns}
