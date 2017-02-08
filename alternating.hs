alternating :: [Int] -> Bool
alternating l = (updown l) || (downup l)

updown :: [Int] -> Bool
updown [] = True
updown [x] = True
updown (x:y:xs) = (x < y) && (downup (y:xs))

downup :: [Int] -> Bool
downup [] = True
downup [x] = True
downup (x:y:xs) = (x > y) && (updown (y:xs))