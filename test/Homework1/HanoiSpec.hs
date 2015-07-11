module Homework1.HanoiSpec ( spec ) where

import Homework1.Hanoi
import Test.Hspec

spec :: Spec
spec = do
    describe "hanoi" $ do
        it "should return the correct move series" $ do
            hanoi 2 "a" "b" "c" `shouldBe` [("a","c"), ("a","b"), ("c","b")]
