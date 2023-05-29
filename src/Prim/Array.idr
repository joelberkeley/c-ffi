module Prim.Array

import System.FFI

import Prim.Lib

export
%foreign (lib "get_array_char")
prim__getArrayChar : Ptr Char -> Bits64 -> Char

export
%foreign (lib "get_array_char_ptr")
prim__getArrayString : Ptr String -> Bits64 -> String

export
%foreign (lib "get_array_bool")
prim__getArrayBool : Ptr Bool -> Bits64 -> Bool

export
%foreign (lib "get_array_int8_t")
prim__getArrayInt8 : Ptr Int8 -> Bits64 -> Int8

export
%foreign (lib "get_array_int16_t")
prim__getArrayInt16 : Ptr Int16 -> Bits64 -> Int16

export
%foreign (lib "get_array_int32_t")
prim__getArrayInt32 : Ptr Int32 -> Bits64 -> Int32

export
%foreign (lib "get_array_int64_t")
prim__getArrayInt64 : Ptr Int64 -> Bits64 -> Int64

export
%foreign (lib "get_array_uint8_t")
prim__getArrayBits8 : Ptr Bits8 -> Bits64 -> Bits8

export
%foreign (lib "get_array_uint16_t")
prim__getArrayBits16 : Ptr Bits16 -> Bits64 -> Bits16

export
%foreign (lib "get_array_uint32_t")
prim__getArrayBits32 : Ptr Bits32 -> Bits64 -> Bits32

export
%foreign (lib "get_array_uint64_t")
prim__getArrayBits64 : Ptr Bits64 -> Bits64 -> Bits64

export
%foreign (lib "get_array_double")
prim__getArrayDouble : Ptr Double -> Bits64 -> Double





export
%foreign (lib "set_array_char")
prim__setArrayChar : Ptr Char -> Bits64 -> Char -> PrimIO ()

export
%foreign (lib "set_array_char_ptr")
prim__setArrayString : Ptr String -> Bits64 -> String -> PrimIO ()

export
%foreign (lib "set_array_bool")
prim__setArrayBool : Ptr Bool -> Bits64 -> Bool -> PrimIO ()

export
%foreign (lib "set_array_int8_t")
prim__setArrayInt8 : Ptr Int8 -> Bits64 -> Int8 -> PrimIO ()

export
%foreign (lib "set_array_int16_t")
prim__setArrayInt16 : Ptr Int16 -> Bits64 -> Int16 -> PrimIO ()

export
%foreign (lib "set_array_int32_t")
prim__setArrayInt32 : Ptr Int32 -> Bits64 -> Int32 -> PrimIO ()

export
%foreign (lib "set_array_int64_t")
prim__setArrayInt64 : Ptr Int64 -> Bits64 -> Int64 -> PrimIO ()

export
%foreign (lib "set_array_uint8_t")
prim__setArrayBits8 : Ptr Bits8 -> Bits64 -> Bits8 -> PrimIO ()

export
%foreign (lib "set_array_uint16_t")
prim__setArrayBits16 : Ptr Bits16 -> Bits64 -> Bits16 -> PrimIO ()

export
%foreign (lib "set_array_uint32_t")
prim__setArrayBits32 : Ptr Bits32 -> Bits64 -> Bits32 -> PrimIO ()

export
%foreign (lib "set_array_uint64_t")
prim__setArrayBits64 : Ptr Bits64 -> Bits64 -> Bits64 -> PrimIO ()

export
%foreign (lib "set_array_double")
prim__setArrayDouble : Ptr Double -> Bits64 -> Double -> PrimIO ()
