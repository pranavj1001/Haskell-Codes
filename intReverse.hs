intReverse :: Int -> Int
intReverse n
  | n < 10 = n
  | otherwise = (intReverse (div n 10)) + (mod n 10) * (power 10 (intLog 10 n))
 
power :: Int -> Int -> Int
power m 0 = 1
power m n =  m * (power m (n-1))

intLog :: Int -> Int -> Int
intLog k 1 = 0
intLog k n
  | n >= k = 1 + intLog k (div n k)
  | otherwise = 0