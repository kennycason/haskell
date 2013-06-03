piSum :: Int -> Double
piSum n = sum (map f [1..n])

f :: Int -> Double
f x = 4 * (-1)^(x+1) / (2*k - 1)
	where k = fromIntegral x


-- piSum2 :: Int -> Double
-- piSum2 n = sum (map (\x -> 4 * (-1)^(x+1) / (2*n - 1)) [1..n])

main = do
    print "pi sum 1"
    print (piSum 1)
    print (piSum 2)
    print (piSum 5)
    print (piSum 10)
    print (piSum 100)
    print (piSum 1000)
    print (piSum 10000)
    print (piSum 100000)

--    print "pi sum anonymous function map"
--    print (piSum2 1)
--    print (piSum2 2)
--    print (piSum2 5)
--    print (piSum2 10)
--    print (piSum2 100)
--    print (piSum2 1000)
--    print (piSum2 10000)
--    print (piSum2 100000)
