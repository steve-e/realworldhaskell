module Lib
    ( someFunc,
      reverseR,
      reverseF
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


reverseR :: [a] -> [a]
reverseR xs = reverse2  xs [] 
    where reverse2  [] rev = rev
          reverse2  (x:xs) ys = reverse2  xs (x:ys)

reverseF :: [a] -> [a]
reverseF list = foldl (\xs -> \x -> x:xs) [] list          
