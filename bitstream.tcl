launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
if {[file exists ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bit] == 1} {
	if {[file exists ./sdk] == 0} {
		file mkdir ./sdk
	}
	file copy -force ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bit ./sdk/pynq_z2.bit
	write_hw_platform -fixed -force -include_bit -file ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.xsa
	if {[file exists ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.xsa] == 1} {
		file copy -force ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.xsa ./sdk/pynq_z2.xsa
	} else {
		puts "***"
		puts "*** ERROR: bitstream: MISSING EXPORTED HARDWARE ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.xsa"
		puts "***"
		exit 1
	}
} else {
	puts "***"
	puts "*** ERROR: bitstream: MISSING ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.bit"
	puts "***"
	exit 1
}
