#Output LED
set_property -dict { PACKAGE_PIN T22  IOSTANDARD LVCMOS33 } [get_ports {led[0]}];
set_property -dict { PACKAGE_PIN T21  IOSTANDARD LVCMOS33 } [get_ports {led[1]}];
set_property -dict { PACKAGE_PIN U22  IOSTANDARD LVCMOS33 } [get_ports {led[2]}];
set_property -dict { PACKAGE_PIN U21  IOSTANDARD LVCMOS33 } [get_ports {led[3]}];
set_property -dict { PACKAGE_PIN V22  IOSTANDARD LVCMOS33 } [get_ports {led[4]}];
set_property -dict { PACKAGE_PIN W22  IOSTANDARD LVCMOS33 } [get_ports {led[5]}];
set_property -dict { PACKAGE_PIN U19  IOSTANDARD LVCMOS33 } [get_ports {led[6]}];

#Output SLOW_CLK
set_property -dict { PACKAGE_PIN U14  IOSTANDARD LVCMOS33 } [get_ports {slow_clk}];

#Input RESET
set_property -dict { PACKAGE_PIN P16  IOSTANDARD LVCMOS33 } [get_ports {reset}];

#Clock
set_property -dict { PACKAGE_PIN Y9  IOSTANDARD LVCMOS33 } [get_ports {clk}];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];