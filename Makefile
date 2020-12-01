BOARD_NAME := pynq-z2
DESIGN_NAME := pynq_z2

XILINX_RELEASE := 2020.2

VIVADO_BASE_DIR ?= /tools/Xilinx/Vivado/$(XILINX_RELEASE)

VITIS_BASE_DIR ?= /tools/Xilinx/Vitis/$(XILINX_RELEASE)

define vivado
	@if ! [ -d $(VIVADO_BASE_DIR) ]; then \
		printf "***** MISSING XILINX VIVADO v$(XILINX_RELEASE) INSTALLATION *****\n"; \
		exit 2; \
	fi
	@if [ "$1" = "bitstream" ]; then \
		source $(VIVADO_BASE_DIR)/settings64.sh && \
			vivado -mode batch -source $(DESIGN_NAME).tcl $1.tcl -notrace; \
	else \
		source $(VITIS_BASE_DIR)/settings64.sh && \
			xsct $1.tcl; \
	fi
endef

.PHONY: all $(BOARD_NAME) bitstream devicetree

all: $(BOARD_NAME)

$(BOARD_NAME): bitstream devicetree

bitstream: sdk/$(DESIGN_NAME).bit

sdk/$(DESIGN_NAME).bit:
	$(call vivado,bitstream)
	@if ! [ -f $@ ]; then \
		printf "***** BITSTREAM GENERATION FAILED *****\n"; \
		exit 2; \
	fi

devicetree: sdk/pcw.dtsi

sdk/pcw.dtsi:
	@if ! [ -f sdk/$(DESIGN_NAME).bit ]; then \
		printf "***** BITSTREAM MISSIING! *****\n"; \
		exit 2; \
	fi
	@if ! [ -d device-tree-xlnx ]; then \
		git clone https://github.com/Xilinx/device-tree-xlnx.git; \
		if [ -d device-tree-xlnx ]; then \
			(cd device-tree-xlnx && git checkout xilinx-v$(XILINX_RELEASE)); \
		else \
			printf "***** DEVICETREE GIT CLONE FAILED *****\n"; \
			exit 2; \
		fi; \
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
	@sed -i -e 's,7000.dtsi,7000-combined.dtsi,g' dts/system-top.dts
	@printf "\n***** VERIFY THAT [ zynq-7000-common.dtsi ] IS CONSISTENT WITH XILINX, LINUX, AND U-BOOT *****\n"

clean:
	$(RM) -r $(DESIGN_NAME) NA *.jou *.log

distclean: clean
	$(RM) -r sdk
