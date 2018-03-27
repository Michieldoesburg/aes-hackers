#include <uart.h>

#include <stdint.h>

#include <chip.h>
#if USE_BOARD
#include <board.h>
#endif


extern uint8_t buffer[];
extern uint8_t uart_rx_done;


/**
 * Initialize UART.
 */
void uart_init()
{
    // Select IOCON_FUNC1 function (UART) for pins PIO1_6 and PIO1_7.
    // NOTE: for LPC111x chips, always call before initializing UART.
    Chip_IOCON_PinMuxSet(LPC_IOCON, IOCON_PIO1_6, (IOCON_FUNC1 | IOCON_MODE_INACT)); // RXD
    Chip_IOCON_PinMuxSet(LPC_IOCON, IOCON_PIO1_7, (IOCON_FUNC1 | IOCON_MODE_INACT)); // TXD

    // Setup UART.
    // - BaudRate: 115200.
    // - Data type: 8 bits, 1 stop bit, no parity
    Chip_UART_Init(LPC_USART);
    Chip_UART_SetBaud(LPC_USART, 115200);
    Chip_UART_ConfigData(LPC_USART, (UART_LCR_WLEN8 | UART_LCR_SBS_1BIT));

    // Disable FIFO's.
    Chip_UART_SetupFIFOS(LPC_USART, 0);
    // Chip_UART_SetupFIFOS(LPC_USART, (UART_FCR_FIFO_EN | UART_FCR_TRG_LEV2));

    // Enable UART transmission.
    Chip_UART_TXEnable(LPC_USART);

#if ENABLE_UART_RX
    // Enable receive data interrupt.
    Chip_UART_IntEnable(LPC_USART, UART_IER_RBRINT);
    // Chip_UART_IntEnable(LPC_USART, (UART_IER_RBRINT | UART_IER_RLSINT));

    // Set UART general interrupt's priority (1).
    NVIC_SetPriority(UART0_IRQn, 1);

    // UART RX interrupt is enabled in main routine.
    // NVIC_EnableIRQ(UART0_IRQn);
#endif
}


/**
 * UART interrupt handler.
 */
void UART_IRQHandler(void)
{
    static uint8_t index = 0;

    uint8_t received = Chip_UART_ReadByte(LPC_USART);

    // Fill in text array.
    buffer[index] = received;
    index++;

    if (index == 16) {
        uart_rx_done = 1;
    }
}
