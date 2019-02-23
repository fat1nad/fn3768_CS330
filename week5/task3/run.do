#Compiling design modules
vlog tb.v IMM_DATA_GEN.v MUX.v 

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/instruction
add wave sim:/tb/imm_data
run 250ns
