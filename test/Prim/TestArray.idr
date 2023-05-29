module Prim.TestArray

import Debug.Trace
import Data.Nat
import Data.List
import System.FFI

import Data.Bounded
import Hedgehog

import Prim.Array
import Prim.SizeOf

array : Property
array = property $ do
  expected <- forAll (list (constant 1 5) (int32 constantBounded))
  let len = length expected
      idxs = [0..cast (pred len)]
      actual = do
        xs <- malloc (cast len * cast prim__sizeOfInt32)
        let xs = prim__castPtr xs
        sequence_ (zipWith (primIO .: prim__setArrayInt32 xs) idxs expected)
        let actual = map (prim__getArrayInt32 xs) idxs
        free (prim__forgetPtr xs)
        pure actual

  unsafePerformIO actual === expected

export
group : Group
group = MkGroup "Array" $ [
    ("test array set and and get", array)
  ]
