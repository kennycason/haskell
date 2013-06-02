guess x
            | x > 27    = "Too high!"
            | x < 27    = "Too low!"
            | otherwise = "Correct!"

main = do
	print (guess 100)
	print (guess 0)
	print (guess 27)
