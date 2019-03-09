#Compiling design modules
vlog tb.v Instruction_Memory.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/Inst_Address
add wave sim:/tb/Instruction

run 40ns
