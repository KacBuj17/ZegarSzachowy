setactivelib -post-synthesis
#Compiling UUT module design files
comp -include $dsn\synthesis\top.edn
comp -include "$dsn\src\TestBench\Top_TB_synth.v"
asim +access +r Top_tb_synth glbl -L C:\Aldec\Active-HDL-Student-Edition\vlib\xilinx\vivado\unisims_ver

wave
wave -noreg CLK
wave -noreg CLR
wave -noreg CE
wave -noreg SELECT
wave -noreg STOP
wave -noreg Set_Impulse
wave -noreg D1
wave -noreg D2
wave -noreg D3
wave -noreg D4
wave -noreg D5
wave -noreg D6
wave -noreg D7
wave -noreg D8
wave -noreg seg_out
wave -noreg seg_select

run 2.00 us

#End simulation macro
