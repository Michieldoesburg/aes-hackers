#ifndef INCLUDE_UTILS_H
#define INCLUDE_UTILS_H


#include <stdint.h>

/**
 * Initialize UART.
 */
void uart_init();

/**
 * Trigger UART RX interrupt.
 *
 * @param bytes_to_receive number of bytes to be received before disabling interrupt
 */
void start_uart_rx(uint16_t bytes_to_receive);

/**
 * Check UART RX status.
 *
 * @return 1 if UART has some bytes left to receive
 */
uint8_t is_uart_rx_busy();


#endif /* INCLUDE_UTILS_H */
