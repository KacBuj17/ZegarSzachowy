setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\Switch.v
comp -include "$dsn\src\TestBench\Switch_TB.v"
asim +access +r Switch_TB

wave
wave -noreg CLK
wave -noreg CLR
wave -noreg CE
wave -noreg SELECT
wave -noreg STOP
wave -noreg Enable_p1
wave -noreg Enable_p2 

run 8000.00 ns

#End simulation macro
