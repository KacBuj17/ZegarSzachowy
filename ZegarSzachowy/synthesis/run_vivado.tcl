create_project -force Top {C:\Users\Kacper\Desktop\ProjektyStudia_Sem5\ProjektPSC\ZegarSzachowy\synthesis} -part 7a100tcsg324-1
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Switch.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Counter.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Prescaler.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Decoder.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Overflow_Handler.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Timer_Setter.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Seven_seg_driver.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Second_counter.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Minute_counter.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/Timer_Clock.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/compile/Top.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/TestBench/Seven_seg_driver_TB.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/TestBench/Overflow_Handler_TB.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/TestBench/Counter_TB.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/TestBench/Decoder_TB.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/TestBench/Switch_TB.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/TestBench/Timer_Clock_TB.v}
add_files -norecurse {C:/Users/Kacper/Desktop/ProjektyStudia_Sem5/ProjektPSC/ZegarSzachowy/src/TestBench/Top_TB.v}
set_property top Top [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property target_language Verilog [current_project]

synth_design -top Top -incremental_mode default -flatten_hierarchy rebuilt -gated_clock_conversion off -fsm_extraction auto -bufg 12 -shreg_min_size 3 -max_bram -1 -max_uram -1 -max_dsp -1 -max_bram_cascade_height -1 -max_uram_cascade_height -1 -cascade_dsp auto -global_retiming auto -directive default -resource_sharing auto -control_set_opt_threshold auto
report_utilization -file {Top_utilization_synth.rpt}
report_qor_suggestions -file {Top_rqs_synth.rpt}
write_qor_suggestions -force -file {Top_synth.rqs}
write_edf -force {Top.edn}
write_verilog -force {Top.v}
write_xdc -force {Top.xdc}
write_checkpoint -force Top_synth.dcp
