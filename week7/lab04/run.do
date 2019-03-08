#Compiling design modules
vlog tb.v registerFile.v 

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/WriteData
add wave sim:/tb/Rs1
add wave sim:/tb/Rs2
add wave sim:/tb/Rd
add wave sim:/tb/RegWrite
add wave sim:/tb/Clk
add wave sim:/tb/Reset
add wave sim:/tb/ReadData1
add wave sim:/tb/ReadData2

run 250ns
