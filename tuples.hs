main = do
	print (fst (1, 2))
	print (snd (1, 2))
	print ("lol", "wut")
	print (40, "forty")
	print ("Coins", [1, 5, 10, 25])
	print [ (n, even n) | n <- [1..10] ]
	print [(a,b,c) | c<-[1..10], b<-[1..c], a<-[1..b]
					 , a^2 + b^2 == c^2]
