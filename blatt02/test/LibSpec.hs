{-# LANGUAGE ScopedTypeVariables #-}
module LibSpec (spec) where

import Lib
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec =
  describe "maxPalindrom" $ do
    it "maxPalindrom ['Otto', 'Anja', 'Eine güldne, gute Tugend: Lüge nie!', 'Blablablablababababsjkd dkjdkjdkjsdsn.']" $
      maxPalindrom ["Otto", "Anja", "Eine güldne, gute Tugend: Lüge nie!", "Blablablablababababsjkd dkjdkjdkjsdsn.","Test"] `shouldBe` 35
