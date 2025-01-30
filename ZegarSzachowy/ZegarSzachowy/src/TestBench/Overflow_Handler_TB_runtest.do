setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\Overflow_Handler.v
comp -include "$dsn\src\TestBench\Overflow_Handler_TB.v"
asim +access +r Overflow_Handler_TB

wave
wave -noreg CLK
wave -noreg CLR
wave -noreg CE
wave -noreg OVERFLOW1
wave -noreg OVERFLOW2
wave -noreg END

run 800.00 ns

#End simulation macro
