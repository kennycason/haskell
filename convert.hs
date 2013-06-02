convert :: (Double, String) -> (Double, String)
convert (x,l)
    | (l == "m") = (1.09361 * x, "yd")
    | (l == "L") = (0.264172 * x,"gal")
    | (l == "kg") = (2.20462 * x,"lb")
    | (l == "yd") = (x / 1.09361, "m")
    | (l == "gal") = (x / 0.264172,"L")
    | (l == "lb") = (x / 2.20462,"kg")
    | otherwise = error "Invalid input"

convert2 :: (Double, [Char]) -> (Double, [Char])
convert2 (n, "m") = (n * 1.09361, "yd")
convert2 (n, "L") = (n * 0.264172, "gal")
convert2 (n, "kg") = (n * 2.20462, "lb")
convert2 (n, "yd") = (n / 1.09361, "m")
convert2 (n, "gal") = (n / 0.264172, "L")
convert2 (n, "lb") = (n / 2.20462, "kg")
convert2 _ = error "conversion not defined"

convert3 :: (Double, [Char]) -> (Double, [Char])
convert3(v,s) = head[(a,b)|(a,b) <- (head[[(v*y,z),(v/y,x)]|(x,y,z) <- [("m",1.09361,"yd"),("L",0.264172,"gal"),("kg",2.20462,"lb")],x==s || z==s]),b/=s]  

main = do 
	print (convert (1, "m"))
	print (convert (1, "L"))
	print (convert (1, "kg"))
	print (convert (1, "yd"))
	print (convert (1, "gal"))
	print (convert (1, "lb"))

	print (convert2 (1, "m"))
	print (convert2 (1, "L"))
	print (convert2 (1, "kg"))
	print (convert2 (1, "yd"))
	print (convert2 (1, "gal"))
	print (convert2 (1, "lb"))

	print (convert3 (1, "m"))
	print (convert3 (1, "L"))
	print (convert3 (1, "kg"))
	print (convert3 (1, "yd"))
	print (convert3 (1, "gal"))
	print (convert3 (1, "lb"))
