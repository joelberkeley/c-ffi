module Prim.TestArray

import System.FFI

import Hedgehog

import Prim.Array
import Prim.SizeOf

array : Property
array = withTests 1 $ property $ do
  let xs = do
        xs <- malloc (3 * cast prim__sizeOfInt32)
        let xs = prim__castPtr xs

        primIO $ prim__setArrayInt32 xs 0 5
        primIO $ prim__setArrayInt32 xs 1 7
        primIO $ prim__setArrayInt32 xs 2 9

        let res = map (prim__getArrayInt32 xs) [0, 1, 2]

        free (prim__forgetPtr xs)
        pure res

  unsafePerformIO xs === [5, 7, 9]

export
group : Group
group = MkGroup "Array" $ [
    ("test array set and and get", array)
  ]
