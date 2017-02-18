lookup :: String -> [(String, Int)] -> Int
lookup p [] = -1
lookup p ((name, marks):ms)
  | (p == name) = marks
  | otherwise = lookup p ms