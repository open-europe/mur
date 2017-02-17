import Data.List
import System.Environment (getArgs)

-- | i wanted this in the Prelude
-- >>> split ',' "a,bla ,c"
-- ["a","bla ","c"]
split :: Eq a => a -> [a] -> [[a]]
split e [] = []
split e s = done : split e (drop 1 rest)
  where (done, rest) = break (e ==) s

-- | matches a line in a CSV
-- >>> commaMatch ["a"] "a"
-- True
-- >>> commaMatch ["a", "bla"] "a,bla"
-- True
-- >>> commaMatch ["a", "_", "b"] "a,c,b"
-- True
-- >>> commaMatch ["_", "a", "_", "b"] "bla,a,bla,b,bla"
-- True
-- >>> commaMatch ["_", "a", "_", "b"] "bla,b,bla,b,bla"
-- False
commaMatch target line = all matchUnder zipped
  where zipped = zip target splitted
        splitted = split ',' line
        matchUnder ("_", _) = True
        matchUnder other = uncurry (==) other

-- | ./comma-query _ '"TOTAL"' '"T"' _ 2014 < in.csv > out.csv
main = do
  args <- getArgs
  interact (unlines . filter (commaMatch args) . lines)
