main = do
	-- strings are arrays
	print ("wahoo" == ['w', 'a', 'h', 'o', 'o']) 

	-- (++) operator is a function
	print ((++) [1,2,3] [4,5,6])
	print ([1,2,3] ++ [4,5,6])

	-- formal definition of a list
	print ([1,2,3] == (:) 1 ((:) 2 ((:) 3 [])))

	-- enumeration
	print [1..10]
	print [1, 1.5..100]

	-- true
	print ("" == [])
	print ('a':"bc" == ['a', 'b', 'c'])

	print (head [1,2,3,4])
	print (tail [1,2,3,4])
	print (last [1,2,3,4])
	print (init [1,2,3,4])

	print (reverse ['h', 'e', 'l', 'l', 'o'])
