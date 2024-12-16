setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\Switch.v
comp -include "$dsn\src\TestBench\Switch_TB.v"
asim +access +r Switch_TB

wave
wave -noreg CLK
wave -noreg CLR
wave -noreg CE
wave -noreg OVERFLOW1
wave -noreg OVERFLOW2
wave -noreg END

run 800.00 ns

#End simulation macro
