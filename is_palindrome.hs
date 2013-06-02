isPal :: Eq a => [a] -> Bool
isPal [x] = True
isPal [x,y] = x == y
isPal (x:xs) = (x == (last xs)) && isPal (init xs)

main = do
	print (isPal "12321")
	print (isPal "12345")
