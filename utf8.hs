 -- 値をゼロにする (utf8 comment works
f x = 0

e = exp 1
シグモイド :: Double -> Double
シグモイド x = 1 / (1 + e**(-x))

main = do
    print (f 10)
    print (シグモイド 0)
