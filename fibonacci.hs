-- this method is slow, checkout memoization.hs for better versions
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main = print (fib 34)

