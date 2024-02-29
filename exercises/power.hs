power :: Int -> Int -> Int

-- pattern
-- pwer x 0 = 1 
-- power x y = x * power (x) (y-1)

-- guards
-- power x y 
  -- | y <= 1 = x
  -- | otherwise = x * power (x) (y-1)

-- with local definition
power x 0 = 1
power x y
  | even y = n * n 
  | otherwise = n * n * x 
  where 
    n = power x (div y 2)

-- 2 4 -> n = 4 -> 4 * 4 
-- 2 2 -> n = 2 -> 2 * 2 
-- 2 1 -> n = 1 -> 1 * 1 + 2
-- 2 0 -> 1 
