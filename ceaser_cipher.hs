import Data.Char

-- method 1
cipher :: String -> Int -> String
cipher "" n = ""
cipher str n = rotate (head str) n : cipher (tail str) n

rotate :: Char -> Int -> Char
rotate c 0 = c
rotate c n = rotate (next c) (n-1)

next :: Char -> Char
next c = if c == 'z' then 'a' else succ c

-- method 2
cipher2 :: [Char] -> Int -> [Char]
cipher2 s n = map(\c -> ([c..'z'] ++ ['a'..c]) !! mod n 26) s

main = do
	let str = "hello world"
	print (cipher str 1)
	print (cipher str 10)
	print (cipher str 30)
	print (cipher2 str 1)
	print (cipher2 str 10)
	print (cipher2 str 30)
