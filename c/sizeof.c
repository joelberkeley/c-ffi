#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

int sizeof_ptr() { return sizeof(void*); }

int sizeof_char() { return sizeof(char); }
int sizeof_bool() { return sizeof(bool); }

int sizeof_int8_t() { return sizeof(int8_t); }
int sizeof_int16_t() { return sizeof(int16_t); }
int sizeof_int32_t() { return sizeof(int32_t); }
int sizeof_int64_t() { return sizeof(int64_t); }

int sizeof_uint8_t() { return sizeof(uint8_t); }
int sizeof_uint16_t() { return sizeof(uint16_t); }
int sizeof_uint32_t() { return sizeof(uint32_t); }
int sizeof_uint64_t() { return sizeof(uint64_t); }
