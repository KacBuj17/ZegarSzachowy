setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\Top.v
comp -include "$dsn\src\TestBench\Top_TB.v"
asim +access +r Top_TB

wave
wave -noreg CLK
wave -noreg CLR
wave -noreg CE
wave -noreg SELECT
wave -noreg STOP

wave -noreg OVERFLOW1
wave -noreg OVERFLOW2


wave -noreg seg0_0
wave -noreg seg0_1
wave -noreg seg0_2
wave -noreg seg0_3

wave -noreg seg1_0
wave -noreg seg1_1
wave -noreg seg1_2
wave -noreg seg1_3

run 1000.00 ns

#End simulation macro
