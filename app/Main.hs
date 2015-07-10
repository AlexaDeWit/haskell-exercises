module Main where

import           CreditCards

main :: IO ()
main = putStrLn ( show ( toDigits 123412312 ) )
