data Point = Point { xval::Double, yval::Double } deriving Show

slope :: Point -> Point -> Double
slope p1 p2 = dy/dx
            where dy = yval(p2) - yval(p1)
                  dx = xval(p2) - xval(p1)

main = do
	let p1 = Point 2 2
	let p2 = Point {xval = 3, yval = 3}
	print (slope p1 p2)
