add a b = a + b
add2 = (+)

f s = length (head (words s))
f2 = length.head.words

g x = 5 + 8/x
-- g x = (+) 5 ( (/) 8 x)
-- g x = ((+) 5) ( ((/) 8) x)
-- g x = ((+) 5) . ( ((/) 8) ) x
-- g = ((+) 5) . ( (/) 8 )
g2 = (5+) . (8/)


main = do
    print (add 1 2)
    print (add2 1 2)
    print (f "i am a fox")
    print (f2 "i am a fox")
    print (g 2)
    print (g2 2)
