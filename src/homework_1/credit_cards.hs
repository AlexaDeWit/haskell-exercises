module CreditCards
    ( toDigits
    ) where

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = digit : ( toDigits rem )
    where
        digit = (x `mod` 10)
        rem   = (x `div` 10 )
