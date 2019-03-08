#Compiling design modules
vlog tb.v Instruction_Fetch.v Adder.v Program_Counter.v Instruction_Memory.v 

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/Instruction
run 200ns
