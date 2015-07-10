module Homework1.CreditCards
    ( toDigits,
      toDigitsRev
    ) where

toDigitsRev :: Integer -> [Integer]
toDigitsRev x
    | x < 1    = []
    | otherwise = d : ( toDigitsRev r )
    where
        d   = (x `mod` 10)
        r   = (x `div` 10 )

toDigits :: Integer -> [Integer]
toDigits x = reverse $ toDigitsRev x
