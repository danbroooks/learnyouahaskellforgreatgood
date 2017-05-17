module Tests.AbstractDataTypes where

import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)
import AbstractDataTypes (Point(..), Shape(..), surface, nudge)

tests :: TestTree
tests = testGroup "Abstract Data Type"
  $ [ testCase "surface" (
    assertEqual "calculates surface of circle"
      (surface $ Circle (Point 10 20) 10)
      314.15927
  ), testCase "surface" (
    assertEqual "calculates surface of rectangle"
      (surface $ Rect (Point 0 0) (Point 100 100))
      10000.0
  ), testCase "nudge" (
    assertEqual "nudges circle by amount provided"
      (nudge (Circle (Point 34 34) 10) 5 10)
      (Circle (Point 39.0 44.0) 10.0)
  )]
