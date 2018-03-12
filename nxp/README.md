# AES Hackers for Hacking Lab

This code implements an AES encryption/decryption algorithm for a Cortex-M0-based NXP LPC1114FN barebone microcontroller, based on [this library][tiny-AES-c].

Inside the folder `aex-nxp`, the `Makefile` contains various control flags:
- `ECB` enables/disable this AES mode
- `CBC` enables/disable this AES mode
- `CTR` enables/disable this AES mode
- `AES128` enable 128-bit key
- `AES192` enable 192-bit key
- `AES256` enable 256-bit key
- `ENABLE_UART_LOG` enable printf-like UART transmission
- `ENABLE_UART_RX` enable UART reception

In the same folder, `main.c` contains the main routine, summarised in:
- GPIO is set high
- some input plain text is encrypted
- some encrypted text is decrypted
- GPIO is set low
- repeat...

To use, follow these steps:
- clone the repository
- download the ARM GCC compiler from [here][arm-gcc]
- in file `nxpconf.mk`, replace `ARM_DIR` with the path where the installation folder of the compiler is placed
- from `aes-nxp`, run make
- the executables `aes.elf` and `aes.bin` are in `aes-nxp/bld`

## References
- [Datasheet][datasheet]
- [User manual][user-manual]


[tiny-AES-c]: https://github.com/kokke/tiny-AES-c
[arm-gcc]: https://developer.arm.com/open-source/gnu-toolchain/gnu-rm
[datasheet]: https://www.nxp.com/docs/en/data-sheet/LPC111X.pdf
[user-manual]: https://www.nxp.com/docs/en/user-guide/UM10398.pdf
