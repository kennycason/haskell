fizzbuzz x 
	| (mod x 15) == 0 = "FizzBuzz"
	| (mod x 3) == 0  = "Fizz"
	| (mod x 5) == 0  = "Buzz"
	| otherwise = show x

-- main = print(map fizzbuzz [1..100])
-- use monads
main = mapM_ (putStrLn.fizzbuzz) [1..100]