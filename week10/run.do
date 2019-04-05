#Compiling design modules
vlog tb.v RISC_V_Processor.v Program_Counter.v Adder.v Instruction_Memory.v instruction.v Control_Unit.v registerFile.v IMM_DATA_GEN.v MUX_TRI.v MUX.v ALU_Control.v ALU_64_BIT.v Data_Memory.v MUX_I.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

do wave.do

run 210ns
