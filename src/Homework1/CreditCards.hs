module Homework1.CreditCards
    ( toDigits
    ) where

toDigits :: Integer -> [Integer]
toDigits x
    | x < 1    = []
    | otherwise = ( toDigits r ) ++ [d]
    where
        d   = (x `mod` 10)
        r   = (x `div` 10 )
