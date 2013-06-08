-- ∀x∈S, p(x)
-- [ x | x <- s, p x ]

p = [ x+5 | x <- [1,2,3] ]
f x y = x + y

main = do
    print p
    print ([ x+5 | x <- [1,2,3] ])
    print ([ x | x <- [2..10], 10 `mod` x  == 0])
    print ([ team ++ " " ++ player | 
             team   <- ["red", "blue"], 
             player <- ["soldier", "pyro", "scout"] ])

    print ([ x | x<-[1..10], even x ])

    print  ([ f x y 
                | x <- [1..10]
                , y <- [1..10]])

