#ifndef INCLUDE_UTILS_H
#define INCLUDE_UTILS_H


#include <stdio.h>

#if ENABLE_UART_LOG
#define LOG(args) printf(args)
#define LOG_DATA(data, len) \
	for (uint16_t __i = 0; __i < len; __i++) \
		printf("%c", data[__i]);
#else
#define LOG(args)
#define LOG_DATA(data, len)
#endif

void uart_init();


#endif /* INCLUDE_UTILS_H */
