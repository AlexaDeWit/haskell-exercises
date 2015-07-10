module Homework1.CreditCardsSpec ( spec ) where

import           Homework1.CreditCards
import           Test.Hspec

spec :: Spec
spec = do
    describe "toDigits" $ do
        it "returns a list of digits in a given number" $ do
            toDigits 0 `shouldBe` []
            toDigits (-10) `shouldBe` []
            toDigits 5123 `shouldBe` [5,1,2,3]
            toDigits 101 `shouldBe` [1,0,1]
