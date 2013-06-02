-- ∀x∈S, p(x)
-- [ x | x <- s, p x ]
main = do
	print ([ x+5 | x <- [1,2,3] ])
	print ([ x | x <- [2..10], 10 `mod` x  == 0])
	print ([ team ++ " " ++ player | 
             team   <- ["red", "blue"], 
             player <- ["soldier", "pyro", "scout"] ])

