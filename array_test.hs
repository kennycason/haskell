numEmpty :: [Int] -> Int
numEmpty board = length $ filter (\x -> x == 0) board


addToColumn :: Int -> [Int] -> [Int]
addToColumn val board  = xs ++ [val] ++ ys
						where
							n = (numEmpty board)
							xs = replicate (n - 1) 0
							ys = snd (splitAt n board) 

-- simulate dropping a piece into a checker's board column						
main = do
	let board = [0,0,0,0,0,1,-1,1]
	print board
	print $ addToColumn 1 board