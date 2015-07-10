module Homework1.CreditCardsSpec ( spec ) where

import           Homework1.CreditCards
import           Test.Hspec

spec :: Spec
spec = do
    describe "toDigits" $ do
        it "returns a list of digits in a given number" $ do
            toDigits 0 `shouldBe` [0]
