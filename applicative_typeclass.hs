import Control.Applicative

main = do
    print ((*) <$> Just 2 <*> Just 8)
