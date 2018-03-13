#ifndef INCLUDE_PRINTF_H
#define INCLUDE_PRINTF_H


int tiny_printf(const char *format, ...);

#if ENABLE_UART_LOG
#define LOG(...) tiny_printf(__VA_ARGS__)
#define LOG_DATA(data, len) \
	for (uint16_t __i = 0; __i < len; __i++) \
		tiny_printf("%c", data[__i]);
#else
#define LOG(...)
#define LOG_DATA(data, len)
#endif


#endif /* INCLUDE_PRINTF_H */
