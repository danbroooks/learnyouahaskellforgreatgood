module AbstractDataTypes where

data Shape = Circle Float Float Float | Rect Float Float Float Float deriving (Show)

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rect xa ya xb yb) = (abs $ xb - xa) * (abs $ yb - ya)
