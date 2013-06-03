{-
    monoid
    1. ∀ a,b ∈ S: a•b ∈ S
    The Set (S) is closed under the binary function (•).

    2. ∀ a,b,c ∈ S: (a•b)•c = a•(b•c)
    The binary function is associative 

    3. ∃ e∈S: ∀ a∈S: e•a = a•e = a
    e is the identity element


    Monad Laws
    1. Left Identity
    return a >>= f   ≡   f a

    2. Right Identity
    m >>= return   ≡   m

    3. Associativity
    (m >>= f) >>= g   ≡   m >>= (\x -> f x >>= g)
-}

main = do
    print "foo" >>= \_ -> print "bar"
    print "foo" >> print "bar" -- ">>" glues together the two monads
    putStrLn "Enter name:" >> getLine >>= putStrLn.("Hi " ++)
