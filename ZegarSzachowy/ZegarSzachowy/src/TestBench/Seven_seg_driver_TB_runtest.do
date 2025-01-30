setactivelib -work
#Compiling UUT module design files
comp -include $dsn\src\Seven_seg_driver.v
comp -include "$dsn\src\TestBench\Seven_seg_driver_TB.v"
asim +access +r Seven_seg_driver_tb

wave
wave -noreg CLK
wave -noreg CE
wave -noreg CLR

wave -noreg seg1 
wave -noreg seg2
wave -noreg seg3
wave -noreg seg4
wave -noreg seg5
wave -noreg seg6
wave -noreg seg7
wave -noreg seg8

wave -noreg seg_out
wave -noreg seg_select


run 2500.00 ns

#End simulation macro
