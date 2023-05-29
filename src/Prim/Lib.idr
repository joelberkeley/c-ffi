module Prim.Lib

public export
lib : String -> String
lib fname = "C:" ++ fname ++ ",libc_ffi"
