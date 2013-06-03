import Data.Char
import Data.List

strong p = length p > 14
           && any isLower p
           && any isUpper p
           && any isDigit p


main = do
    print (strong "password")
    print (strong "passworD1234578")
