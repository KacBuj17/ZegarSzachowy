create_project -force Top {C:\Users\student\Desktop\414865\ZegarSzachowy-main\ZegarSzachowy\synthesis} -part 7a100tcsg324-1
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Switch.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Counter.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Prescaler.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Decoder.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Overflow_Handler.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Timer_Setter.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Seven_seg_driver.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Second_counter.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Minute_counter.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/Timer_Clock.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/compile/Top.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Seven_seg_driver_TB.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Overflow_Handler_TB.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Counter_TB.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Decoder_TB.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Switch_TB.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Timer_Clock_TB.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Top_TB.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Top_TB_tim.v}
add_files -norecurse {C:/Users/student/Desktop/414865/ZegarSzachowy-main/ZegarSzachowy/src/TestBench/Top_TB_synth.v}
set_property top Top [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]

synth_design -top Top -flatten_hierarchy rebuilt -gated_clock_conversion off -fsm_extraction auto -bufg 12 -fanout_limit 10000 -shreg_min_size 3 -max_bram -1 -max_uram -1 -max_dsp -1 -max_bram_cascade_height -1 -max_uram_cascade_height -1 -cascade_dsp auto -directive default -resource_sharing auto -control_set_opt_threshold auto
report_utilization -file {Top_utilization_synth.rpt}
write_edf -force {Top.edn}
write_verilog -force {Top.v}
write_xdc -force {Top.xdc}
write_checkpoint -force Top_synth.dcp
