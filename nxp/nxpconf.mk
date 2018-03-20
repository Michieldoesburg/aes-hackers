# Selecting Core
CORTEX_M   := 0
CORE       := CORE_M$(CORTEX_M)

# Use newlib-nano. To disable it, specify USE_NANO=
USE_NANO   := --specs=nano.specs

# Use semihosting or not
USE_SEMIHOST := --specs=rdimon.specs
USE_NOHOST   := --specs=nosys.specs

# Paths
ARM_DIR    := /Developer/arm
GCC_DIR    := $(ARM_DIR)/gcc-arm-none-eabi/bin

# Compiler & Linker
GCC        := $(GCC_DIR)/arm-none-eabi-gcc
LD         := $(GCC_DIR)/arm-none-eabi-gcc
AR         := $(GCC_DIR)/arm-none-eabi-ar
SIZE       := $(GCC_DIR)/arm-none-eabi-size
OBJCOPY    := $(GCC_DIR)/arm-none-eabi-objcopy
GDB        := $(GCC_DIR)/arm-none-eabi-gdb
MAKE       := make

# Startup and linker script
LDSCRIPT   := lpc1114fn28.ld

# Options for specific architecture
ARCH_FLAGS := -mthumb -mcpu=cortex-m$(CORTEX_M)

# Compiler flags
DEVICE     := CHIP_LPC11CXX
DEFINES    := -D$(DEVICE) -D$(CORE)
CFLAGS     := $(ARCH_FLAGS)
# INCLUDES   :=

# Linker flags
# LFLAGS     :=
