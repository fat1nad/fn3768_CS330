#Compiling design modules
vlog tb.v ALU_64_BIT.v  

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/carryin
add wave sim:/tb/ALUop
add wave sim:/tb/result
add wave sim:/tb/carryout
add wave sim:/tb/zero
run 250ns