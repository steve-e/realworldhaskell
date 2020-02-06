main = interact wordCount
    where wordCount input = show (length (lines input)) ++ " "
                            ++ show (length ( concat $ map words (lines input))) ++ " "
                            ++ show (length input) ++ "\n"
                            