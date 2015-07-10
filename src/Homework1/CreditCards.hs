module Homework1.CreditCards
    ( toDigits,
      toDigitsRev,
      doubleEveryOther
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

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = reverse $ map f ys
    where
        f  = \(x,y) -> ( if y `mod` 2 == 0 then x * 2 else x) 
        ys = zip ( reverse xs ) [1..] 
