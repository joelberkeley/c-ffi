cd c

gcc -c -fPIC array.c -o array.o
gcc -c -fPIC sizeof.c -o sizeof.o

gcc -o libc_ffi.so -shared sizeof.o array.o

cd -

mv c/libc_ffi.so .
