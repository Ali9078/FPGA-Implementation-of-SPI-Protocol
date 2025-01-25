# Written by Synplify Pro version map202209actsp2, Build 145R. Synopsys Run ID: sid1730734510 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {sp|clock_in} [get_ports {clock_in}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {spi_master|spi_clk_inferred_clock} [get_pins {spi_master_0/spi_clk/Q}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list sp|clock_in]
set Inferred_clkgroup_1 [list spi_master|spi_clk_inferred_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1

set_clock_groups -asynchronous -group [get_clocks {sp|clock_in}]
set_clock_groups -asynchronous -group [get_clocks {spi_master|spi_clk_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

