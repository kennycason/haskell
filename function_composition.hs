main = do
    -- f(g(h(k(x)))) - ugly
    -- (f.g.h.k)(x) - pretty
    print ((not.odd) 4)
    print ((length.head.words) "University of Arkansas")
    
    let f x = 2 * x + 3
    let g x = x * x
    print ((f.g) 3)
    print (f (g 3))
