#Compiling design modules
vlog tb.v ALU_Control.v 

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/ALUOp
add wave sim:/tb/Funct
add wave sim:/tb/Operation
run 70ns

