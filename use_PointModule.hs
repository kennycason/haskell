import PointModule

main = do
	let p1 = Point 2 2
	let p2 = Point {xval = 3, yval = 3}
	print (slope p1 p2)
