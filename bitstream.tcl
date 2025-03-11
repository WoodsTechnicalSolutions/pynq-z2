launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
if {[file exists ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bit] == 1} {
	if {[file exists ./sdk] == 0} {
		file mkdir ./sdk
	}
	write_hw_platform -fixed -force -include_bit -file ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.xsa
	if {[file exists ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.xsa] == 1} {
		file copy -force ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.xsa ./sdk/pynq_z2.xsa
	} else {
		puts "***"
		puts "*** ERROR: bitstream: MISSING EXPORTED HARDWARE ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.xsa"
		puts "***"
		exit 1
	}
	write_cfgmem -force -format bin -interface smapx32 -disablebitswap -loadbit "up 0 ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bit" ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bin
	if {[file exists ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bin] == 1} {
		file copy -force ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bin ./sdk/pynq_z2_wrapper.bin
	} else {
		puts "***"
		puts "*** ERROR: bitstream: MISSING BYTE SWAPPED BINARY ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bin"
		puts "***"
		exit 1
	}
} else {
	puts "***"
	puts "*** ERROR: bitstream: MISSING ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bit"
	puts "***"
	exit 1
}
