module Tests.AbstractDataTypes where

import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)
import AbstractDataTypes (Point(Point), Shape(Circle, Rect), surface)

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
  )]
