launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
if {[file exists ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.sysdef] == 1} {
	if {[file exists ./sdk] == 0} {
		file mkdir ./sdk
	}
	file copy -force ./pynq_z2/pynq_z2.runs/impl_1/pynq_z2_wrapper.sysdef ./sdk/pynq_z2.hdf
}
