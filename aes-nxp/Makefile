include ../nxpconf.mk

# Project name

PROJECT = aes

# Source and build files

SRC_DIR = ./src
BLD_DIR = ./bld
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
	-DENABLE_UART_RX=0 \

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
	-fdata-sections \
	-fno-builtin

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

.PHONY: all dirs libs $(LPCOPEN) clean rebuild run

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
	@cp $(BIN) /Volumes/NODE_F446RE
	$(VECHO) "$(PROJECT).bin uploaded to target"
