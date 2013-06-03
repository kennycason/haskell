main = do
    print (foldl (+) 0 [1, 2, 3])

    let vowels = foldl (\acc x -> if x `elem` "aeiou" 
                          then acc+1 
                          else acc)  0 "hello world"
    print vowels
