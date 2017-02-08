attach :: [Int] -> [Int] -> [Int]
attach [] l = l
attach (x:xs) l = x:(attach xs l)