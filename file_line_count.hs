module Main where

import System.IO

countLines :: String -> String
countLines str = (show (length (lines str)))

main = do
    theInput <- readFile "data/a.txt"
    putStrLn (countLines theInput)
    
