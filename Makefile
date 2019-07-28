BOARD_NAME := pynq-z2
DESIGN_NAME := pynq_z2

VIVADO_BASE_DIR ?= /tools/Xilinx/Vivado
VIVADO_RELEASE ?= 2019.1

SDK_BASE_DIR ?= /tools/Xilinx/SDK
SDK_RELEASE ?= $(VIVADO_RELEASE)

.PHONY: all bitstream fsbl devicetree-git embeddedsw-git

all: bitstream fsbl

embeddedsw-git:
	@if ! [ -d embeddedsw ]; then \
		git clone https://github.com/Xilinx/embeddedsw.git; \
		if [ -d embeddedsw ]; then \
			(cd embeddedsw && git checkout xilinx-v$(SDK_RELEASE)); \
		fi; \
	fi

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

fsbl: embeddedsw-git
	@if ! [ -d $(SDK_BASE_DIR)/$(SDK_RELEASE) ]; then \
		printf "***** MISSING XILINX SDK v$(SDK_RELEASE) INSTALLATION *****\n"; \
		exit 2; \
	fi
	source $(SDK_BASE_DIR)/$(SDK_RELEASE)/settings64.sh && \
	if [ -d embeddedsw/lib/sw_apps/zynq_fsbl/src ]; then \
		(cd embeddedsw/lib/sw_apps/zynq_fsbl/src && make BOARD=zc702); \
	fi
	@if ! [ -f embeddedsw/lib/sw_apps/zynq_fsbl/src/fsbl.elf ]; then \
		printf "***** FSBL BUILD FAILED *****\n"; \
		exit 2; \
	fi
	@mkdir -p sdk
	@cp -av embeddedsw/lib/sw_apps/zynq_fsbl/src/fsbl.elf sdk/

clean:
	$(RM) -r $(DESIGN_NAME) NA *.jou *.log
	source $(SDK_BASE_DIR)/$(SDK_RELEASE)/settings64.sh && \
	if [ -d embeddedsw/lib/sw_apps/zynq_fsbl/src ]; then \
		(cd embeddedsw/lib/sw_apps/zynq_fsbl/src && make $@ BOARD=zc702); \
	fi

distclean: clean
	$(RM) -r sdk
