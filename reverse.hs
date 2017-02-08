myreverse :: [Int] -> [Int]
myreverse [] = []
myreverse (x:xs) = (reverse xs) ++ [x]