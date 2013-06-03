import Data.Set

main = do
    let a = fromList [1..10]
    let b = fromList [5..15]
    print a
    print b
    print (intersection a b)
    print (union a b)
    print (findMax (union a b))
