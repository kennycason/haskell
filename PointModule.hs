module PointModule
    (Point(..), slope)
where

data Point = Point { xval::Double, yval::Double } deriving Show

slope :: Point -> Point -> Double
slope p1 p2 = dy/dx
            where dy = yval(p2) - yval(p1)
                  dx = xval(p2) - xval(p1)
