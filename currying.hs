f x y = x * x + y * y

main = do 
    -- currying
    print (f 2 3)
    print ((f 2) 3)

