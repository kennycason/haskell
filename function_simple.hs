f x y = x*x + y*y
g y = f 0 y

main = do 
    print (f 2 3)
    print (g 3)


