-- :type X
-- X:(Y) [-> (Z)]

-- writing factorial function 

factorial :: Integer -> Integer  -- I: Integer -> O: Integer

factorial 0 = 1 -- Base
factorial n = n * factorial (n - 1) -- Recursion

-- :load file
