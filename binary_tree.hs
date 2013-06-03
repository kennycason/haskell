data Tree = Node { value::Int, left::Tree, right::Tree } | Null deriving (Show, Eq)

total :: Tree -> Int
total Null = 0
total node = value node + total (left node) + total(right node)

size :: Tree -> Int
size Null = 0
size node = 1 + size (left node) + size (right node)

add :: Int -> Tree -> Tree
add v Null = (Node v Null Null)
add v node
    | v > (value node) = Node (value node) (left node) (add v (right node)) -- insert into right subtree
    | v < (value node)  = Node (value node) (add v (left node)) (right node) -- insert into left subtree
    | otherwise = node -- value is(value node)new so add it

-- shorter way
-- add v node @ (Node value left right) 
--     | v > value = Node value left (add v right) -- insert into right subtree
--     | v < value  = Node value (add v left) right -- insert into left subtree
--     | otherwise = node -- value is new so add it

main = do 
    let t = Node 10 Null Null
    print "total:"
    print (total t)
    print "size:"
    print (size t)
    print t

    let t2 = add 5 t
    print "add 5";
    print "total:" 
    print (total t2)
    print "size:"
    print (size t2)
    print t2

    let t3 = add 20 t2
    print "add 20";
    print "total:" 
    print (total t3)
    print "size:"
    print (size t3)
    print t3

    let t4 = add 3 t3
    print "add 3";
    print "total:" 
    print (total t4)
    print "size:"
    print (size t4)
    print t4

    -- more complicated test
    -- let tc = Node 5
    --             (Node 15 Null Null) 
    --            (Node 10 
    --                Null 
    --                (Node 3 Null Null)) 
    -- print (total tc)
    -- print tc

