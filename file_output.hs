module Main where

import System.IO

main = do
  putStrLn "writing to file..."
  writeFile "data/c.txt" ['A'..'Z']
