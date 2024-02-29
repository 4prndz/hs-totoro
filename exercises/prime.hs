isPrime :: Int -> Bool
hasDivisor :: Int -> Int -> Bool

isPrime 0 = False
isPrime 1 = False
isPrime x = not (hasDivisor (x - 1))
  where 
    hasDivisor :: Int -> Bool
    hasDivisor 1 = False
    hasDivisor n = mod x n == 0 || hasDivisor (n - 1)

-- my shit version
isPrime x 
  | x == 0 || x == 1 = True
  | otherwise = not (hasDivisor x (x-1))

hasDivisor x y
  | y == 1 = False
  | otherwise = mod x y == 0 || hasDivisor x (y-1) 


isPrime :: Int -> Bool
isPrime n
  | n <= 1 = False
  | n == 2 = True
  | even n = False
  | otherwise = all (\p -> n `mod` p /= 0) (2:[3, 5 .. floor (sqrt (fromIntegral n))])
