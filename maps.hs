
-- map :: (a -> b) -> [a] -> [b]
main = do
    print (sin pi)
    print (map even [1..10])
    print (map (+5) [1..10])
    print (map sin [0,pi/4..pi])
