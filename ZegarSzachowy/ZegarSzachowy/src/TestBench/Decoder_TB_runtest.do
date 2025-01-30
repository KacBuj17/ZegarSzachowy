setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\Decoder.v
comp -include "$dsn\src\TestBench\Decoder_TB.v"
asim +access +r Decoder_TB

wave -noreg CLK
wave -noreg CLR
wave -noreg CE

wave -noreg digit0
wave -noreg digit1
wave -noreg digit2
wave -noreg digit3

wave -noreg seg0
wave -noreg seg1
wave -noreg seg2
wave -noreg seg3


run 8000.00 ns

#End simulation macro
