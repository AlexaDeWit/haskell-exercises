module CreditCardsSpec ( spec ) where

import           CreditCards
import           Test.HSpec

spec :: Spec
spec = do
    describe "toDigits" $ do
        it "returns a list of digits in a given number" $ do
            toDigits 51035 `shouldBe` [5,1,0,3,5]
            toDigits 0 `shouldBe` [0]
            toDigits 101 `shouldBe` [1,0,1]
