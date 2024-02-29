fib ::Int -> Int

-- patterns
-- fib 1  = 1
-- fib 2  = 1
-- fib x = fib (x-1) + fib(x-2)

-- guards
fib x 
  | x <= 2 = 1 
  | otherwise = fib (x-1) + fib (x-2)

