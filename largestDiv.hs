largestDiv :: Int -> Int
largestDiv n = divSearch n (n-1)

divSearch :: Int -> Int -> Int
divSearch m i
  | (mod m i) == 0 = i
  | otherwise = divSearch m (i-1)