module Main where

import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)
import Tests.AbstractDataTypes

solutions :: TestTree
solutions = testGroup "example"
  $ [ Tests.AbstractDataTypes.tests ]

main :: IO ()
main = defaultMain $ testGroup "tests" [solutions]
