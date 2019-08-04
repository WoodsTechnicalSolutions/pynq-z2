BOARD_NAME := pynq-z2
DESIGN_NAME := pynq_z2

VIVADO_BASE_DIR ?= /tools/Xilinx/Vivado
VIVADO_RELEASE ?= 2019.1

SDK_BASE_DIR ?= /tools/Xilinx/SDK
SDK_RELEASE ?= $(VIVADO_RELEASE)

.PHONY: all bitstream devicetree-git

all: bitstream

devicetree-git:
	@if ! [ -d device-tree-xlnx ]; then \
		git clone https://github.com/Xilinx/device-tree-xlnx.git; \
		if [ -d device-tree-xlnx ]; then \
			(cd device-tree-xlnx && git checkout xilinx-v$(VIVADO_RELEASE)); \
		fi; \
	fi

bitstream: devicetree-git
ifeq ($(DESIGN_FORCE),yes)
bitstream: clean
endif
	@if ! [ -d $(VIVADO_BASE_DIR)/$(VIVADO_RELEASE) ]; then \
		printf "***** MISSING XILINX VIVADO v$(VIVADO_RELEASE) INSTALLATION *****\n"; \
		exit 2; \
	fi
	source $(VIVADO_BASE_DIR)/$(VIVADO_RELEASE)/settings64.sh && \
		vivado -mode batch -source $(DESIGN_NAME).tcl bitstream.tcl devicetree.tcl -notrace
	@if ! [ -f sdk/$(DESIGN_NAME).hdf ]; then \
		printf "***** BITSTREAM GENERATION FAILED *****\n"; \
		exit 2; \
	fi
	@if ! [ -f sdk/pcw.dtsi ] && ! [ -f sdk/pl.dtsi ]; then \
		printf "***** DEVICETREE GENERATION FAILED *****\n"; \
		exit 2; \
	fi
	@cp -av sdk/pcw.dtsi sdk/pl.dtsi sdk/system.dts sdk/system-top.dts dts/

clean:
	$(RM) -r $(DESIGN_NAME) NA *.jou *.log

distclean: clean
	$(RM) -r sdk
