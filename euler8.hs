-- Find the greatest product of five consecutive digits in the 1000-digit number.
-- data in problem_8.txt
import Data.Char (digitToInt)
import Data.List (tails)

list5 (s:ss)
    | length (s:ss) < 5 = []
    | otherwise = (take 5 $ s:ss):(list5 ss)

main = do 
	str <- readFile "problem_8.txt"
	let numbers = map digitToInt (concat $ lines str)
	print $ maximum $ map (product) (list5 numbers)
