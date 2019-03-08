#Compiling design modules
vlog tb.v registerFile.v top.v instruction.v registerFile.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/instruction
add wave sim:/tb/ReadData1
add wave sim:/tb/ReadData2

run 250ns
