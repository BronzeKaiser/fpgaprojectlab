set_property PACKAGE_PIN W5 [get_ports CLK100MHZ]							
set_property IOSTANDARD LVCMOS33 [get_ports CLK100MHZ]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK100MHZ]
 

set_property PACKAGE_PIN V17 [get_ports {sw[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {sw[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {sw[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {sw[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
set_property PACKAGE_PIN W15 [get_ports {sw[4]}]

##5ch name = JB7
set_property PACKAGE_PIN A15 [get_ports {Out1}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out1}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {Out2}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out2}]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {Out3}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out3}]
##Sch name = JB10
set_property PACKAGE_PIN C16 [get_ports {Out4}]
set_property IOSTANDARD LVCMOS33 [get_ports {Out4}]
