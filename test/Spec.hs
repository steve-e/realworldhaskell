import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Test.QuickCheck
import Ex4Spec

main :: IO ()
main = defaultMain tests


tests = [
        testGroup "Sorting Group 1" [
                testProperty "prop1" prop1,
                testProperty "prop2" prop2
           ]
      ] ++ ex4tests

prop1 b = b == False || True
  where types = (b :: Bool)

prop2 i = i == 42 || i /= 42
  where types = (i :: Int)
