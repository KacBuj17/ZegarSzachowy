setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\Timer_Clock.v
comp -include "$dsn\src\TestBench\Timer_Clock_TB.v"
asim +access +r Timer_Clock_TB

wave
wave -noreg CLK
wave -noreg CLR
wave -noreg CE
wave -noreg IMPULSE
wave -noreg sec_tens
wave -noreg sec_units
wave -noreg min_tens
wave -noreg min_units
wave -noreg OVERFLOW

run 8000.00 ns

#End simulation macro
