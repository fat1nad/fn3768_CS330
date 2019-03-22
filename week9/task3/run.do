#Compiling design modules
vlog tb.v top_control.v Control_Unit.v ALU_Control.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/Opcode
add wave sim:/tb/Funct
add wave sim:/tb/Operation
add wave sim:/tb/Branch
add wave sim:/tb/MemRead
add wave sim:/tb/MemtoReg
add wave sim:/tb/MemWrite
add wave sim:/tb/ALUSrc
add wave sim:/tb/RegWrite
run 80ns

