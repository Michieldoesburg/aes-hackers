/*
 * @brief
 * AES implementation for NXP LPC1114FN28 (barebone MCU), taken from
 * https://github.com/kokke/tiny-AES-c
 *
 * @par
 * This application performs AES encryption (and decryption) using either
 * ECB or CBC method. ECB should be the easiest to hack.
 *
 * @par
 * UART communication via pins PIO1_6 (RXD) and PIO1_7 (TXD) is implemented,
 * and printf statements are rerouted to use this peripheral.
 * - BaudRate: 115200
 * - Data type: 8 bits, 1 stop bit, no parity
 * 
 * TODO: implement UART reception if needed
 */

#include <chip.h>
#if USE_BOARD
#include <board.h>
#endif

#include <stdio.h>
#include <aes.h>
#include <utils.h>

#define DEBUG_PORT 0
#define DEBUG_PIN  3

// Very dummy waiting function
#define WAIT() for (uint16_t __i = 0; __i < 1000; __i++) {}

// AES keys. Play with them to observe differences.
#if AES128
    uint8_t key[] = {
    	0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
    	0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c
    };
#elif AES192
    uint8_t key[] = {
    	0x8e, 0x73, 0xb0, 0xf7, 0xda, 0x0e, 0x64, 0x52,
    	0xc8, 0x10, 0xf3, 0x2b, 0x80, 0x90, 0x79, 0xe5,
		0x62, 0xf8, 0xea, 0xd2, 0x52, 0x2c, 0x6b, 0x7b
	};
#elif AES256
    uint8_t key[] = {
    	0x60, 0x3d, 0xeb, 0x10, 0x15, 0xca, 0x71, 0xbe,
    	0x2b, 0x73, 0xae, 0xf0, 0x85, 0x7d, 0x77, 0x81,
        0x1f, 0x35, 0x2c, 0x07, 0x3b, 0x61, 0x08, 0xd7,
        0x2d, 0x98, 0x10, 0xa3, 0x09, 0x14, 0xdf, 0xf4
    };
#endif

// Input string = "ABCDEFGH12345678".
// AES's ECB method can only be fed a 16 byte buffer.
uint8_t input_text[16] = {
	'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
	'1', '2', '3', '4', '5', '6', '7', '8'
};


int main(void)
{
	// Initialize system.
	SystemCoreClockUpdate();
#if USE_BOARD
	Board_Init();
	Board_LED_Set(0, false);
#endif

	// Initialize GPIO.
	Chip_GPIO_Init(LPC_GPIO);
	Chip_GPIO_SetPinDIROutput(LPC_GPIO, DEBUG_PORT, DEBUG_PIN);
	Chip_GPIO_SetPinOutLow(LPC_GPIO, DEBUG_PORT, DEBUG_PIN);

	// Initialize UART.
#if ENABLE_UART_LOG || ENABLE_UART_RX
	uart_init();
#endif

	// Initialize AES.
	AES_ctx ctx;
	AES_init_ctx(&ctx, key);
	LOG("AES encryption and decryption.\n");
	LOG("Original text: ");
	LOG_DATA(input_text, 16);
	LOG("\n");

	// Perform AES.
	// Period: time needed by the algorithm plus two times WAIT_US.
	// The GPIO behaves as follows:
	//           __________________________        ___ _ _ _
	// _ _ _ ___|                          |______|
	//           <-------> <----> <-------> <---->
	//            Encrypt   Wait   Decrypt   Wait
	while (1) {

		// Pull-up GPIO.
		Chip_GPIO_SetPinOutHigh(LPC_GPIO, DEBUG_PORT, DEBUG_PIN);
		
		// Encrypt data.
		AES_ECB_encrypt(&ctx, input_text);
		LOG("Encrypted text: ");
		LOG_DATA(input_text, 16);
		LOG("\n");
		
		// Wait.
		WAIT();
		
		// Decrypt data.
		AES_ECB_decrypt(&ctx, input_text);
		LOG("Decrypted text: ");
		LOG_DATA(input_text, 16);
		LOG("\n");
		
		// Pull-down GPIO.
		Chip_GPIO_SetPinOutLow(LPC_GPIO, DEBUG_PORT, DEBUG_PIN);
		
		// Wait.
		WAIT();
	}

	return 1;
}
