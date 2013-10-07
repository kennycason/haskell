f x y = x + y
g y = f 1 y

main = do
	print (f 1 1)
	print (g 1)