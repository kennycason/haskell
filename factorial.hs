-- most common approach
fac1 0 = 1
fac1 n = n * fac1(n-1)

-- other ways
fac2 n = product [1..n]

fac3 n = foldr (*) 1 [1..n]

-- using anonymous functions
fac4 = (\(n) ->
		if (n == 0) 
			then 1
			else n * fac4(n-1))

-- anonymous 2
y2 f = f (y2 f)
fac5 = y2 (\f n -> if (n==0) then 1 else n * f (n-1))

-- memoizing
facs = scanl (*) 1 [1..]
fac6 n = facs !! n

-- iterative
fac7 n = result (for init next done)
        where init = (0,1)
              next   (i,m) = (i+1, m * (i+1))
              done   (i,_) = i==n
              result (_,m) = m
for i n d = until d n i

-- continuation-passing
facCps k 0 = k 1
facCps k n = facCps (k . (n *)) (n-1)
fac8 = facCps id

-- combinatory
s f g x = f x (g x)
k x y   = x
b f g x = f (g x)
c f g x = f x g
y f     = f (y f)
cond p f g x = if p x then f x else g x
fac9  = y (b (cond ((==) 0) (k 1)) (b (s (*)) (c b pred)))

main = do
	print (fac1 42)
	print (fac2 42)
	print (fac3 42)
	print (fac4 42)
	print (fac5 42)
	print (fac6 42)
	print (fac7 42)
	print (fac8 42)
	print (fac9 42)

