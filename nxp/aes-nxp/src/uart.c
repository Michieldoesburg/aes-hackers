#include <uart.h>

#include <chip.h>
#if USE_BOARD
#include <board.h>
#endif


uint16_t rx_index;
uint16_t n_bytes;
uint8_t uart_rx_busy;

extern uint8_t buffer[];


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

    // Enable UART general interrupt.
    // NVIC_EnableIRQ(UART0_IRQn);
#endif
}


void start_uart_rx(uint16_t bytes_to_receive)
{
    rx_index = 0;
    n_bytes = bytes_to_receive;
    uart_rx_busy = 1;
    NVIC_EnableIRQ(UART0_IRQn);
}


uint8_t is_uart_rx_busy()
{
    return uart_rx_busy;
}


/**
 * UART interrupt handler.
 */
void UART_IRQHandler(void)
{
    // Fill in text array.
    buffer[rx_index] = Chip_UART_ReadByte(LPC_USART);
    rx_index++;

    if (rx_index == n_bytes) {
        uart_rx_busy = 0;
        NVIC_DisableIRQ(UART0_IRQn);
    }
}
