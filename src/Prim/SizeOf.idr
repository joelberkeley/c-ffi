module Prim.SizeOf

import System.FFI

import Prim.Lib

export
%foreign (lib "sizeof_ptr")
prim__sizeOfPtr : Bits64

export
%foreign (lib "sizeof_char")
prim__sizeOfChar : Bits64

export
%foreign (lib "sizeof_bool")
prim__sizeOfBool : Bits64

export
%foreign (lib "sizeof_int8_t")
prim__sizeOfInt8 : Bits64

export
%foreign (lib "sizeof_int16_t")
prim__sizeOfInt16 : Bits64

export
%foreign (lib "sizeof_int32_t")
prim__sizeOfInt32 : Bits64

export
%foreign (lib "sizeof_int64_t")
prim__sizeOfInt64 : Bits64

export
%foreign (lib "sizeof_uint8_t")
prim__sizeOfBits8 : Bits64

export
%foreign (lib "sizeof_uint16_t")
prim__sizeOfBits16 : Bits64

export
%foreign (lib "sizeof_uint32_t")
prim__sizeOfBits32 : Bits64

export
%foreign (lib "sizeof_uint64_t")
prim__sizeOfBits64 : Bits64

export
%foreign (lib "sizeof_double")
prim__sizeOfDouble : Bits64
