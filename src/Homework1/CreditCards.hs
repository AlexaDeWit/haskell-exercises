module Homework1.CreditCards
    ( toDigits
    ) where

toDigits :: Integer -> [Integer]
toDigits 0 = [0]
toDigits x
    | x < 10    = [x]
    | otherwise = ( toDigits r ) ++ [d]
    where
        d   = (x `mod` 10)
        r   = (x `div` 10 )
