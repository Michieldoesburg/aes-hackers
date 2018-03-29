include ../nxpconf.mk

# Project name

PROJECT = aes

# Source and build files

SRC_DIR = src
BLD_DIR = bld
SOURCES := $(wildcard $(SRC_DIR)/*.c)
OBJECTS := $(patsubst $(SRC_DIR)/%,$(BLD_DIR)/%,$(SOURCES:.c=.o))
DEPS    := $(OBJECTS:.o=.d)
ELF     := $(BLD_DIR)/$(PROJECT).elf
BIN     := $(BLD_DIR)/$(PROJECT).bin

LPCOPEN := ../lpcopen

# Compiler flags

DEFINES += \
	-DUSE_BOARD=0 \
	-DECB=1 \
	-DAES128=1 \
	-DENABLE_UART_LOG=1 \
	-DENABLE_UART_RX=1 \

INCLUDES += \
	-I ./include \
	-I $(LPCOPEN)/lpc_chip_11cxx_lib/inc \
	-I $(LPCOPEN)/nxp_lpcxpresso_11c24_board_lib/inc

CFLAGS += \
	$(DEFINES) \
	-g \
	-O1 \
	-MD \
	-ffunction-sections \
	-fdata-sections

# Linker flags

LFLAGS += \
	-L ../ -T $(LDSCRIPT) \
	-L $(LPCOPEN)/bld \
	-Wl,--gc-sections \
	-Wl,-Map=$(BLD_DIR)/$(PROJECT).map

LIBS += \
	$(USE_NOHOST) \
	-llpcopen \
	-lgcc \
	-lc

# Run options

RUN_TOOLS_DIR  := /Applications/MCUXpressoIDE_10.1.1_606/ide/bin
LPC_LINK_BOOT  := $(RUN_TOOLS_DIR)/boot_link2
LPC_LINK_FLASH := $(RUN_TOOLS_DIR)/crt_emu_cm_redlink

FLASH_DEVICE   := LPC1114FN/102

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

.PHONY: all dirs libs $(LPCOPEN) clean rebuild run debug

all: dirs libs $(ELF)

dirs:
	@mkdir -p $(BLD_DIR)

libs: $(LPCOPEN)

$(LPCOPEN):
	@$(MAKE) -C $@

$(ELF): $(OBJECTS)
	$(V)$(LD) $(CFLAGS) $(LFLAGS) $(OBJECTS) $(STARTUP) $(LIBS) -o $@
	$(V)$(OBJCOPY) -O binary $@ $(BIN)
	$(VECHO) "Built $(PROJECT).elf and $(PROJECT).bin"
	@$(SIZE) $(ELF)

-include $(DEPS)

$(BLD_DIR)/%.o: $(SRC_DIR)/%.c
	$(V)$(GCC) $(CFLAGS) $(INCLUDES) -S $< -o $(@:.o=.asm)
	$(V)$(GCC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@rm -rf $(BLD_DIR)

rebuild: clean all

run: all
	$(VECHO) ""
	$(VECHO) "Booting LPC-Link2..."
	-$(V) $(LPC_LINK_BOOT)
	$(VECHO) ""
	$(VECHO) "Uploading firmware..."
	$(V) $(LPC_LINK_FLASH) -flash-load-exec "$(ELF)" -p$(FLASH_DEVICE)

debug: all
	$(VECHO) ""
	$(VECHO) "Booting LPC-Link2..."
	-$(V) $(LPC_LINK_BOOT)
	$(VECHO) ""
	$(VECHO) "Starting GDB..."
	$(GDB) -ex "target extended-remote | $(LPC_LINK_FLASH) -2 -p$(FLASH_DEVICE)" $(ELF)
