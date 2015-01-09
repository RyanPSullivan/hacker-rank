import Data.List

-- Seems like a bit of a hack, we just concatonate the list n times and sort.
f :: Int -> [Int] -> [Int]
f n arr = sort $ concat [ arr | _ <-[ 1 .. n ] ]

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words