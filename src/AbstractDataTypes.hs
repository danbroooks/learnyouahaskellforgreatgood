module AbstractDataTypes where

data Point = Point Float Float deriving (Show, Eq)

data Shape = Circle Point Float | Rect Point Point deriving (Show, Eq)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rect (Point xa ya) (Point xb yb)) = (abs $ xb - xa) * (abs $ yb - ya)

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x1 y1) r) x2 y2 = Circle (Point (x1 + x2) (y1 + y2)) r
nudge (Rect (Point xa ya) (Point xb yb)) x y = Rect (Point (xa + x) (ya + y)) (Point (xb + x) (yb + y))
