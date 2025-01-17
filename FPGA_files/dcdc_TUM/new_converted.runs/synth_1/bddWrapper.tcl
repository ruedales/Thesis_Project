# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Desktop/new_files/dcdc_converted_2_to_1/new_converted.cache/wt [current_project]
set_property parent.project_path D:/Desktop/new_files/dcdc_converted_2_to_1/new_converted.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib D:/Desktop/new_files/dcdc_converted_2_to_1/new_converted.srcs/sources_1/imports/dcdc_converted_2_to_1/dcdc_controller.v
synth_design -top bddWrapper -part xc7z010clg400-1 -mode out_of_context
write_checkpoint -noxdef bddWrapper.dcp
catch { report_utilization -file bddWrapper_utilization_synth.rpt -pb bddWrapper_utilization_synth.pb }
