slope (x1,y1) (x2,y2) = let dy = y2-y1
                            dx = x2-x1
                        in dy/dx

slope2 (x1,y1) (x2,y2) = dy/dx
                        where dy = y2-y1
                              dx = x2-x1


slope3 (x1,y1) (x2,y2) = (y2 - y1) / (x2 - x1)

main = do
	print (slope (1,1) (2,2))
	print (slope2 (1,1) (2,2))
	print (slope (1,3) (10,4))
	print (slope (-1,1) (0, 0))
