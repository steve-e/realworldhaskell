module Ex4 where

import System.Environment (getArgs)

interactWith function inputFile outputFile = do
    input  <- readFile inputFile
    writeFile outputFile (function input)

ex4 = mainWith myFunction
      where mainWith function = do
              as <- getArgs
              case as of 
                [input, output] -> interactWith function input output
                _ -> putStrLn "Error. Two args, input and output"
            myFunction = transpose


transpose::String -> String
transpose text = concat (map (addNewLine.concat) $ toColumns $ lines text)

toColumns::[String] -> [[String]]
toColumns lines
   | all (all (\c -> c == ' ')) lines = []
   | otherwise = (map headSpace lines) : toColumns (map safeTail lines)

addNewLine s = s ++ "\n"

headSpace::String -> String
headSpace "" = " "
headSpace (c:_) = [c]

safeTail::[a] -> [a]
safeTail [] = []
safeTail as = tail as                					            