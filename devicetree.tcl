if {[file exists ./sdk/pynq_z2.xsa] == 1} {
	hsi::open_hw_design ./sdk/pynq_z2.xsa
	hsi::set_repo_path ./device-tree-xlnx
	hsi::create_sw_design device-tree -os device_tree -proc ps7_cortexa9_0
	hsi::generate_target -dir ./sdk
	hsi::close_hw_design [hsi::current_hw_design]
} else {
	puts "***"
	puts "*** ERROR: devicetree: MISSING EXPORTED HARDWARE ./sdk/pynq_z2.xsa"
	puts "***"
	exit 1
}
