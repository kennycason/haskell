main = do
    print (scanl (+) 0 [1, 2, 3])
     
    let vowels = scanl (\acc x -> if x `elem` "aeiou"
                          then acc+1
                          else acc)  0 "hello world"
    print vowels
