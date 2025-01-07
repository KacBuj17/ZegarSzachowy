setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\Counter.v
comp -include "$dsn\src\TestBench\Counter_TB.v"
asim +access +r Counter_TB

wave
wave -noreg CLK
wave -noreg CLR
wave -noreg CE
wave -noreg IMPULSE
wave -noreg MAX
wave -noreg COUNT
wave -noreg OVERFLOW
	
run 8000.00 ns

#End simulation macro
