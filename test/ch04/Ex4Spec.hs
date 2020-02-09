module Ex4Spec where
import Test.Framework (testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)

import Test.QuickCheck
import Ex4



ex4tests = [
        testGroup "safeTail" [
                testProperty "lengthProp" lengthProp
                
           ],
        testGroup "headSpace group" [
                testProperty "headSpaceProp" headSpaceProp     
           ]
        ]

lengthProp a = length (safeTail a) == 0 || (length a - 1) == length (safeTail a)
  where types = (a :: String)

headSpaceProp a = headSpace a == " " || headSpace a == (head a):""
  where types = (a :: String)
