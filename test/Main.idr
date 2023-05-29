module Main

import Hedgehog

import Prim.TestArray

main : IO ()
main = test [
    Prim.TestArray.group
  ]
