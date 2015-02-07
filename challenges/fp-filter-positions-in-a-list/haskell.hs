every :: Int -> [Int] -> [Int]
every n xs = case drop (n-1) xs of
      	     (y:ys) -> y : every n ys
	     [] -> []
	     
f :: [Int] -> [Int]
f lst = every 2 lst

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
