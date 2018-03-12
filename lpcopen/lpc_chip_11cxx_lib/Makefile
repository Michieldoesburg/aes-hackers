include ../../nxpconf.mk

# Project name

PROJECT = lpcopenchip

# Source and build files

SRC_DIR = ./src
BLD_DIR = ./bld
SOURCES := $(wildcard $(SRC_DIR)/*.c)
OBJECTS := $(patsubst $(SRC_DIR)/%,$(BLD_DIR)/%,$(SOURCES:.c=.o))
DEPS    := $(OBJECTS:.o=.d)
LIB     := lib$(PROJECT)
BIN     := $(BLD_DIR)/$(LIB).a

# Compiler flags

INCLUDES += \
	-I ./inc

CFLAGS += \
	$(DEFINES) \
	-g \
	-O1 \
	-MD \
	-ffunction-sections \
	-fdata-sections

# Linker flags

LFLAGS += \
	-Wl,--gc-sections \
	-Wl,-Map=$(BLD_DIR)/$(PROJECT).map

LIBS += \
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

.PHONY: all dirs clean rebuild

all: dirs $(OBJECTS)

dirs:
	@mkdir -p $(BLD_DIR)

-include $(DEPS)

$(BLD_DIR)/%.o: $(SRC_DIR)/%.c
	$(V)$(GCC) $(CFLAGS) $(INCLUDES) -S $< -o $(@:.o=.asm)
	$(V)$(GCC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@rm -rf $(BLD_DIR)

rebuild: clean all
