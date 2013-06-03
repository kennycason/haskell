data Tree = Node { left::Tree, right::Tree, value::Int } | Null deriving Show

total Null = 0
total node = value node + total (left node) + total(right node)

main = do 
	let t = Node Null Null 10 
	print (total t)
	print t
	let t2 = Node (Node Null Null 15) (Node Null (Node Null Null 3) 5) 10 
	print (total t2)
	print t2

