module Homework1.CreditCards
    ( toDigits
    ) where

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = ( toDigits r ) ++ [d]
    where
        d   = (x `mod` 10)
        r   = (x `div` 10 )
