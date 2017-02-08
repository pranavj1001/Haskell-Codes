ascending :: [Int] -> Bool
ascending [] = True
ascending [x] = True
ascending (x:y:xs) = (x <= y) && ascending(y:xs)