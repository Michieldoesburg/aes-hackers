# AES Hackers for Hacking Lab

This code implements an AES encryption/decryption algorithm for a Cortex-M0-based NXP [LPC1114FN][lpc1114fn] barebone microcontroller, based on [this library][tiny-AES-c].

**Control parameters**:

Inside the folder `nxp/aex-nxp`, the `Makefile` contains various control flags:
- `ECB` enables/disable this AES mode
- `CBC` enables/disable this AES mode
- `CTR` enables/disable this AES mode
- `AES128` enable 128-bit key
- `AES192` enable 192-bit key
- `AES256` enable 256-bit key
- `ENABLE_UART_LOG` enable printf-like UART transmission
- `ENABLE_UART_RX` enable UART reception

**To compile**:
- clone the repository
- download the ARM GCC compiler from [here][arm-gcc]
- in file `nxp/nxpconf.mk`, replace `ARM_DIR` with the path where the installation folder of the compiler is placed
- from `nxp/aes-nxp`, run `make`
- the executables `aes.elf` and `aes.bin` are in `nxp/aes-nxp/bld`

**To run**:
- flash the compiled binary and run it (see [here][connect-to-mcu])
- launch `nxp/aes-term/aes.py` to interface to the MCU, send plain text and receive encrypted text

## References
- [Datasheet][datasheet]
- [User manual][user-manual]


[lpc1114fn]: https://www.nxp.com/products/processors-and-microcontrollers/arm-based-processors-and-mcus/lpc-cortex-m-mcus/lpc1100-cortex-m0-plus-m0/scalable-entry-level-32-bit-microcontroller-mcu-based-on-arm-cortex-m0-plus-m0-cores:LPC1114FN28
[tiny-AES-c]: https://github.com/kokke/tiny-AES-c
[arm-gcc]: https://developer.arm.com/open-source/gnu-toolchain/gnu-rm
[connect-to-mcu]: https://community.nxp.com/thread/421369
[datasheet]: https://www.nxp.com/docs/en/data-sheet/LPC111X.pdf
[user-manual]: https://www.nxp.com/docs/en/user-guide/UM10398.pdf
