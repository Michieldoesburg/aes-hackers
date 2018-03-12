include ../nxpconf.mk

# Project name

PROJECT = lpcopen

# Source and build files

CHIP_SRC_DIR  := ./lpc_chip_11cxx_lib/src
CHIP_BLD_DIR  := ./lpc_chip_11cxx_lib/bld
CHIP_SOURCES  := $(wildcard $(CHIP_SRC_DIR)/*.c)
CHIP_OBJECTS  := $(patsubst $(CHIP_SRC_DIR)/%,$(CHIP_BLD_DIR)/%,$(CHIP_SOURCES:.c=.o))

BOARD_SRC_DIR := ./nxp_lpcxpresso_11c24_board_lib/src
BOARD_BLD_DIR := ./nxp_lpcxpresso_11c24_board_lib/bld
BOARD_SOURCES := $(wildcard $(BOARD_SRC_DIR)/*.c)
BOARD_OBJECTS := $(patsubst $(BOARD_SRC_DIR)/%,$(BOARD_BLD_DIR)/%,$(BOARD_SOURCES:.c=.o))

BLD_SUBDIRS   := $(CHIP_BLD_DIR) $(BOARD_BLD_DIR)
BLD_DIR       := ./bld
OBJECTS       := $(CHIP_OBJECTS) $(BOARD_OBJECTS)

LIB           := lib$(PROJECT)
BIN           := $(BLD_DIR)/$(LIB).a

LIB_DIRS      := ./lpc_chip_11cxx_lib/ ./nxp_lpcxpresso_11c24_board_lib/

# Other options

VERBOSE ?= 1
ifeq ($(VERBOSE),1)
V :=
VECHO := @echo
else
V := @
VECHO := @true
endif

# Rules

.PHONY: all dirs libs $(LIB_DIRS) clean rebuild

all: dirs libs $(BIN)

dirs:
	@mkdir -p $(BLD_DIR)

libs: $(LIB_DIRS)

$(LIB_DIRS):
	@$(MAKE) -C $@

$(BIN):
	$(V)$(AR) rcs $@ $(OBJECTS)
	$(VECHO) "Built $(LIB).a"

clean:
	@rm -rf $(BLD_SUBDIRS)
	@rm -rf $(BLD_DIR)

rebuild: clean all
