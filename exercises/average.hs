average :: [Int] -> Float 

average x = (fromIntegral (sum x)) / (fromIntegral (length x))
