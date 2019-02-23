#Compiling design modules
vlog tb.v MUX.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Adding waves
add wave sim:/tb/s
add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/q

run 250ns