set_device -family {SmartFusion2} -die {M2S050} -speed {STD}
read_verilog -mode system_verilog {E:\Verilog_1st_year\SPI\hdl\spi_master.v}
read_verilog -mode system_verilog {E:\Verilog_1st_year\SPI\component\work\sp\sp.v}
set_top_level {sp}
map_netlist
check_constraints {E:\Verilog_1st_year\SPI\constraint\synthesis_sdc_errors.log}
write_fdc {E:\Verilog_1st_year\SPI\designer\sp\synthesis.fdc}
