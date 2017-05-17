module AbstractDataTypes where

data Point = Point Float Float deriving (Show)

data Shape = Circle Point Float | Rect Point Point deriving (Show)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rect (Point xa ya) (Point xb yb)) = (abs $ xb - xa) * (abs $ yb - ya)
