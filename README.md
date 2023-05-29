# c-ffi

Generic C FFI utilities for Idris.

This library is intended to remove the need to build and package some more common C FFI utilities with Idris projects.

### Install

Install [pack](https://github.com/stefan-hoeck/idris2-pack), then run
```bash
pack install c-ffi
```

## Example

We can create a C array `double*`
<!-- idris
import System.FFI
import Prim.Array
import Prim.SizeOf
-->
```idris
doubles : IO (Ptr Double)
doubles = do
  xs <- malloc (3 * cast prim__sizeOfDouble)
  let xs = prim__castPtr xs

  primIO $ prim__setArrayDouble xs 0 3.14
  primIO $ prim__setArrayDouble xs 1 (-1.23)
  primIO $ prim__setArrayDouble xs 2 2.71

  pure xs
```
We can then read and print this array
```idris
showDoubles : IO ()
showDoubles = do
  ds <- doubles
  let ds' = map (prim__getArrayDouble ds) [0, 1, 2]
  free (prim__forgetPtr ds)
  printLn ds'
```
<!-- idris
main : IO ()
main = showDoubles
-->
