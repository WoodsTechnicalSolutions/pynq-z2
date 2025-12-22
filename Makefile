BOARD_NAME := pynq-z2
DESIGN_NAME := pynq_z2
DESIGN_VHD := hdl/$(DESIGN_NAME)_wrapper.vhd
BUILD_VHD := $(DESIGN_NAME)/$(DESIGN_NAME).gen/sources_1/bd/$(DESIGN_NAME)/hdl/$(DESIGN_NAME)_wrapper.vhd

XILINX_RELEASE := 2025.2

VIVADO_BASE_DIR ?= /tools/Xilinx/$(XILINX_RELEASE)/Vivado

VITIS_BASE_DIR ?= /tools/Xilinx/$(XILINX_RELEASE)/Vitis

define vivado
	@if ! [ -d $(VIVADO_BASE_DIR) ]; then \
		printf "***** MISSING XILINX VIVADO v$(XILINX_RELEASE) INSTALLATION *****\n"; \
		exit 2; \
	fi
	@if [ "$1" = "bitstream" ]; then \
		source $(VIVADO_BASE_DIR)/settings64.sh && \
			vivado -mode batch -source $(DESIGN_NAME).tcl $1.tcl -notrace; \
		if [ -f $(BUILD_VHD) ]; then \
			cp -v $(BUILD_VHD) hdl/; \
			sed s,Date\ *\:.*,Date\ Removed\:, -i $(DESIGN_VHD); \
			sed s,Host\ *\:.*,Host\ Removed\:, -i $(DESIGN_VHD); \
		fi; \
	else \
		source $(VITIS_BASE_DIR)/settings64.sh && \
			xsct $1.tcl; \
	fi
endef

.PHONY: all $(BOARD_NAME) bitstream devicetree

all: $(BOARD_NAME)

$(BOARD_NAME): bitstream devicetree

bitstream: sdk/$(DESIGN_NAME).xsa

sdk/$(DESIGN_NAME).xsa:
	$(call vivado,bitstream)
	@if ! [ -f $@ ]; then \
		printf "***** BITSTREAM GENERATION FAILED *****\n"; \
		exit 2; \
	fi

devicetree: sdk/pcw.dtsi

sdk/pcw.dtsi: sdk/$(DESIGN_NAME).xsa
	@if ! [ -d device-tree-xlnx ]; then \
		git clone https://github.com/Xilinx/device-tree-xlnx.git; \
		if [ -d device-tree-xlnx ]; then \
			(cd device-tree-xlnx && git checkout xilinx_v$(XILINX_RELEASE)); \
		else \
			printf "***** DEVICETREE GIT CLONE FAILED *****\n"; \
			exit 2; \
		fi; \
	else \
		(cd device-tree-xlnx && \
			git fetch --all && \
			git checkout xilinx_v$(XILINX_RELEASE)); \
	fi
	$(call vivado,devicetree)
	@if ! [ -f sdk/pcw.dtsi ] || ! [ -f sdk/pl.dtsi ]; then \
		printf "***** DEVICETREE GENERATION FAILED *****\n"; \
		exit 2; \
	fi
	tail -n +7 sdk/pcw.dtsi > dts/pcw.dtsi
	tail -n +7 sdk/pl.dtsi > dts/pl.dtsi
	tail -n +7 sdk/system.dts > dts/system.dts
	tail -n +7 sdk/system-top.dts > dts/system-top.dts
	@sed -i -e 's,axi_quad_spi,spi,g' dts/pl.dtsi
	@if [ -n "`grep -e 'void perf_reset_and_start_timer()' sdk/ps7_init_gpl.c`" ]; then \
		sed -i -e 's,ps7_init(),ps7_init(void),' sdk/ps7_init.c; \
		sed -i -e 's,ps7_init(),ps7_init(void),' sdk/ps7_init.h; \
		sed -i -e 's,ps7_init(),ps7_init(void),' sdk/ps7_init_gpl.c; \
		sed -i -e 's,ps7_init(),ps7_init(void),' sdk/ps7_init_gpl.h; \
		sed -i -e 's,ps7_debug(),ps7_debug(void),' sdk/ps7_init.c; \
		sed -i -e 's,ps7_debug(),ps7_debug(void),' sdk/ps7_init.h; \
		sed -i -e 's,ps7_debug(),ps7_debug(void),' sdk/ps7_init_gpl.c; \
		sed -i -e 's,ps7_debug(),ps7_debug(void),' sdk/ps7_init_gpl.h; \
		sed -i -e 's,ps7_post_config(),ps7_post_config(void),' sdk/ps7_init.c; \
		sed -i -e 's,ps7_post_config(),ps7_post_config(void),' sdk/ps7_init.h; \
		sed -i -e 's,ps7_post_config(),ps7_post_config(void),' sdk/ps7_init_gpl.c; \
		sed -i -e 's,ps7_post_config(),ps7_post_config(void),' sdk/ps7_init_gpl.h; \
		sed -i -e 's,ps7GetSiliconVersion\ ()\ {,ps7GetSiliconVersion(void)\ {,' sdk/ps7_init.c; \
		sed -i -e 's,ps7GetSiliconVersion\ ()\ {,ps7GetSiliconVersion(void)\ {,' sdk/ps7_init_gpl.c; \
		sed -i -e 's,void\ perf_reset_and_start_timer(),void\ perf_reset_and_start_timer(void),' sdk/ps7_init.c; \
		sed -i -e 's,void\ perf_reset_and_start_timer(),void\ perf_reset_and_start_timer(void),' sdk/ps7_init.h; \
		sed -i -e 's,void\ perf_reset_and_start_timer(),void\ perf_reset_and_start_timer(void),' sdk/ps7_init_gpl.c; \
		sed -i -e 's,void\ perf_reset_and_start_timer(),void\ perf_reset_and_start_timer(void),' sdk/ps7_init_gpl.h; \
	fi

clean:
	$(RM) -r $(DESIGN_NAME) NA *.jou *.log

distclean: clean
	$(RM) -r sdk
