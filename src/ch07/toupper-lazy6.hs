-- file: ch07/toupper-lazy6.hs
import Data.Char(toUpper)

-- Prepnend the header after mapping toUpper
main = interact ((++) "Your data, in uppercase, is:\n\n" . map toUpper)