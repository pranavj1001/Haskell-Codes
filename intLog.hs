intLog :: Int -> Int -> Int
intLog k 1 = 0
intLog k n
  | n >= k = 1 + intLog k (div n k)
  | otherwise = 0