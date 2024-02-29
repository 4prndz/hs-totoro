-- Pure Functions 
-- identical return values for identical parameters
-- not have <side effects>

-- Function Syntax
-- 1. type declartion
-- 2. definition 
f :: x -> x
f x = x

inc :: Int -> Int
inc x = x + 1

sum :: Int -> Int -> Int
sum x y = x + y

xor :: Bool -> Bool -> Bool
xor True False = True
xor False True = True
xor _ _ = False

-- Patterns
-- we can use patterns, to define the case base, for example
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- _ => anonymous variable
nor :: Bool -> Bool -> Bool
nor _ True = False
nor True _ = False
nor _ _ = True

-- Guards
abs :: Int -> Int
abs n
  | n >= 0 = n
  | otherwise = -n -- same then true

-- Local Definitions using let-in
fastExp :: Integer -> Integer -> Integer
fastExp _ 0 = 1
fastExp x n =
  let n_halved = div n 2
      y = fastExp x n_halved
  in if even n
       then y * y
       else y * y * x

-- Local Definitions using where
fastExp :: Integer -> Integer -> Integer
fastExp _ 0 = 1
fastExp x n
  | even n = y * y
  | otherwise = y * y * x
  where
    n_halved = div n 2
    y = fastExp x n_halved

-- Currying
-- all functions has single parameter 
-- funcions with more than one parameter return new function 
-- no need to pass all parameters (partial application)
prod 3 5 == (prod 3) 5 

prod :: Int -> Int -> Int
prod :: Int -> (Int -> Int)
(prod 3) :: (Int -> Int)
(prod 3) :: Int
