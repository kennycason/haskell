myConcat :: [a] -> [b] -> [(a,b)]
myConcat [] [] = []
myConcat [] ys = []
myConcat xs [] = []
myConcat xs ys = (head xs, head ys) : (myConcat (tail xs) (tail ys))

main = do
	print (myConcat [1,2,3] "abc")
