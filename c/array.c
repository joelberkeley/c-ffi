#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

char get_array_char(char* arr, size_t idx) { return arr[idx]; }
char* get_array_char_ptr(char** arr, size_t idx) { return arr[idx]; }
bool get_array_bool(bool* arr, size_t idx) { return arr[idx]; }
int8_t get_array_int8_t(int8_t* arr, size_t idx) { return arr[idx]; }
int16_t get_array_int16_t(int16_t* arr, size_t idx) { return arr[idx]; }
int32_t get_array_int32_t(int32_t* arr, size_t idx) { return arr[idx]; }
int64_t get_array_int64_t(int64_t* arr, size_t idx) { return arr[idx]; }
uint8_t get_array_uint8_t(uint8_t* arr, size_t idx) { return arr[idx]; }
uint16_t get_array_uint16_t(uint16_t* arr, size_t idx) { return arr[idx]; }
uint32_t get_array_uint32_t(uint32_t* arr, size_t idx) { return arr[idx]; }
uint64_t get_array_uint64_t(uint64_t* arr, size_t idx) { return arr[idx]; }
double get_array_double(double* arr, size_t idx, double value) { return arr[idx]; }

void set_array_char(char* arr, size_t idx, char value) { arr[idx] = value; }
void set_array_char_ptr(char** arr, size_t idx, char* value) { arr[idx] = value; }
void set_array_bool(bool* arr, size_t idx, bool value) { arr[idx] = value; }
void set_array_int8_t(int8_t* arr, size_t idx, int8_t value) { arr[idx] = value; }
void set_array_int16_t(int16_t* arr, size_t idx, int16_t value) { arr[idx] = value; }
void set_array_int32_t(int32_t* arr, size_t idx, int32_t value) { arr[idx] = value; }
void set_array_int64_t(int64_t* arr, size_t idx, int64_t value) { arr[idx] = value; }
void set_array_uint8_t(uint8_t* arr, size_t idx, uint8_t value) { arr[idx] = value; }
void set_array_uint16_t(uint16_t* arr, size_t idx, uint16_t value) { arr[idx] = value; }
void set_array_uint32_t(uint32_t* arr, size_t idx, uint32_t value) { arr[idx] = value; }
void set_array_uint64_t(uint64_t* arr, size_t idx, uint64_t value) { arr[idx] = value; }
void set_array_double(double* arr, size_t idx, double value) { arr[idx] = value; }
