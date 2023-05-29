# c-ffi

Generic C FFI utilities for Idris. This library doesn't attempt to provide safety or niceties.

## Example

We can create an C array of `Int32`. Note we haven't freed it
<!-- idris
import System.FFI
import Prim.Array
import Prim.SizeOf
-->
```idris
integers : IO (Ptr Double)
integers = do
  xs <- malloc (3 * cast prim__sizeOfDouble)
  let xs = prim__castPtr xs

  primIO $ prim__setArrayDouble xs 0 3.14
  primIO $ prim__setArrayDouble xs 1 (-1.23)
  primIO $ prim__setArrayDouble xs 2 2.71

  pure xs
```
We can then read and print this array
```idris
showIntegers : IO ()
showIntegers = do
  ints <- integers
  let ints' = map (prim__getArrayDouble ints) [0, 1, 2]
  free (prim__forgetPtr ints)
  printLn ints'
```
<!-- idris
main : IO ()
main = showIntegers
-->
