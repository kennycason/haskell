import System.Random
import Data.List

inCircle :: Double -> Double -> Double
inCircle x y | x * x + y * y < 1.0 = 1.0
             | otherwise = 0.0


monteCarloPi :: [(Double, Double)] -> Double
monteCarloPi ps = ratio * 4.0
            where ratio = (sum [ inCircle (fst p) (snd p) | p <- ps]) / (fromIntegral samples)
                  samples = length ps


randList :: Int -> StdGen -> [Double]
randList n rng = scale $ take n (randoms rng :: [Double])
                          where scale l = map (\x -> 2 * x - 1) l -- scales doubles in range of 0,1 to random -1,1 


main = do
    rng <- newStdGen
    rng2 <- newStdGen

    let xs = randList 100000 rng
    let ys = randList 100000 rng2
    let ps = zip xs ys

    print $ monteCarloPi ps