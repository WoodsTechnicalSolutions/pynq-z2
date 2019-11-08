BOARD_NAME := pynq-z2
DESIGN_NAME := pynq_z2

VIVADO_BASE_DIR ?= /tools/Xilinx/Vivado
VIVADO_RELEASE ?= 2019.2

SDK_BASE_DIR ?= /tools/Xilinx/SDK
SDK_RELEASE ?= $(VIVADO_RELEASE)

define vivado
	@if ! [ -d $(VIVADO_BASE_DIR)/$(VIVADO_RELEASE) ]; then \
		printf "***** MISSING XILINX VIVADO v$(VIVADO_RELEASE) INSTALLATION *****\n"; \
		exit 2; \
	fi
	@if [ "$1" = "bitstream" ]; then \
		source $(VIVADO_BASE_DIR)/$(VIVADO_RELEASE)/settings64.sh && \
			vivado -mode batch -source $(DESIGN_NAME).tcl $1.tcl -notrace; \
	else \
		source $(VIVADO_BASE_DIR)/$(VIVADO_RELEASE)/settings64.sh && \
			vivado -mode batch -source $1.tcl -notrace; \
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
			(cd device-tree-xlnx && git checkout xilinx-v$(VIVADO_RELEASE)); \
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

clean:
	$(RM) -r $(DESIGN_NAME) NA *.jou *.log

distclean: clean
	$(RM) -r sdk
