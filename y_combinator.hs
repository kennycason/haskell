-- y = \f -> (\x -> f (x x)) (\x -> f (x x))
-- doesn't work
-- x :: a -> b -- x is a function
-- x :: a      -- x is applied to x
-- --------------------------------
-- a = a -> b  -- infinite type
-- The obvious definition of the Y combinator in Haskell canot be used because it contains an infinite recursive type (a = a -> b). Defining a data type (Mu) allows this recursion to be broken. 
-- instead do

newtype Mu a = Roll { unroll :: Mu a -> a }
 
fix :: (a -> a) -> a
fix = \f -> (\x -> f (unroll x x)) $ Roll (\x -> f (unroll x x))
 
fac :: Integer -> Integer
fac = fix $ \f n -> if (n <= 0) then 1 else n * f (n-1)
 
fibs :: [Integer]
fibs = fix $ \fbs -> 0 : 1 : fix zipP fbs (tail fbs)
  where zipP f (x:xs) (y:ys) = x+y : f xs ys
 
main = do
  print $ map fac [1 .. 20]
  print $ take 20 fibs
