module Prim.TestArray

import Debug.Trace
import Data.Nat
import Data.List
import System.FFI

import Data.Bounded
import Hedgehog

import Prim.Array
import Prim.SizeOf

arrayInt32 : Property
arrayInt32 = property $ do
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

arrayString : Property
arrayString = withTests 1 $ property $ do
  let actual = do
        xs <- malloc (3 * cast prim__sizeOfPtr)
        let xs = prim__castPtr xs

        primIO $ prim__setArrayString xs 0 "foo"
        primIO $ prim__setArrayString xs 1 ""
        primIO $ prim__setArrayString xs 2 "bar"

        let actual = map (prim__getArrayString xs) [0, 1, 2]

        free (prim__forgetPtr xs)
        pure actual

  unsafePerformIO actual === ["foo", "", "bar"]

export
group : Group
group = MkGroup "Array" $ [
      ("test array set and and get Int32", arrayInt32)
    , ("test array set and and get String", arrayString)
  ]
