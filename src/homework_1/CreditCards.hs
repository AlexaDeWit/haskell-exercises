module CreditCards
    ( toDigits
    ) where

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = ( toDigits rem ) ++ [digit]
    where
        digit = (x `mod` 10)
        rem   = (x `div` 10 )
