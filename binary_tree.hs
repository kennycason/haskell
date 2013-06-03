data Tree = Node { value::Int, left::Tree, right::Tree } | Null deriving (Show, Eq)

total :: Tree -> Int
total Null = 0
total node = value node + total (left node) + total(right node)

size :: Tree -> Int
size Null = 0
size node = 1 + size (left node) + size (right node)

insert :: Int -> Tree -> Tree
insert _ Null = Null
insert v node
    | v < (value node) = if (left node) == Null 
                         then Node (Node v Null Null) (right node)
                         else insert v (left node)
    | v > (value node) = if (right node) == Null 
                         then Node (value node) (left node) (Node v Null Null)
                         else insert v (right node)
    | otherwise = node


main = do 
	let t = Node 10 Null Null
	print (t)
    print (total t)
	print (size t)

	let t2 = insert 5 t
	print (total t2)
    print (size t2)
	print t2

	let t3 = insert 20 t2
	print (total t3)
    print (size t3)
	print t3

	let t4 = insert 3 t2
	print (total t4)
    print (size t4)
	print t4

	-- more complicated test
	-- let tc = Node 5
	-- 			(Node 15 Null Null) 
	-- 			(Node 10 
	-- 				Null 
	-- 				(Node 3 Null Null)) 
	-- print (total tc)
	-- print tc

