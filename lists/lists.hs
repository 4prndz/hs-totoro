-- Lists
-- list is a structure type that contains a sequence of elements, all of the same type.
[t] :: [Tf]

[1,2,3] :: [Int]
[[1],[2],[3]] :: [[Int]]
[1..10] :: [Int]

-- Construction and Implementation
-- lists have two constructors:
-- Linked List -> constant time to add element in the head
[] :: [a]
(:) :: a -> [a] -> [a]

[1, 2, 3] => 1 : 2 : 3 : [] => 1 : (2 : (3 : []))

-- Concatenate of two lists: 
[1,2] ++ [3,4]

-- Lists and Patterns
-- allow to decompose lists:
sum [] = 0
sum (x:xs) = x + sum xs -- x -> head   xs -> tail

-- Syntax in Patterns
-- pattern decomposition can also be used in case, where and let 
sum list = 
  case list of 
    [] -> 0
    x:xs -> x + sum xs

divImod n m 
  | n < m = (0,n)
  | otherwise = (q + 1, r)
  where (q, r) = divImod (n - m) m

firstAndSecond list = 
  let first:second:rest = list 
  in (first, second)

-- Text or String
-- lists of characters -> [Char]
lol :: [Char]
lol = 'l' : 'o' : 'l' : []

-- Common Functions
-- Signature
head :: [a] -> a 
last :: [a] -> a

tail :: [a] -> [a]
init :: [a] -> [a]

reverse :: [a] -> [a]

length :: [a] -> Int

null :: [a] -> Bool

elem :: Eq a => a -> [a] -> Bool -- verify if the element in the list

(!!) :: [a] -> Int -> a -- index

(++) :: [a] -> [a] -> [a]

maximum :: Ord a => [a] -> a 
minimum :: Ord a => [a] -> a

sum :: Num a => [a] -> a 
product :: Num a => [a] -> a

take :: Int -> [a] -> [a]
drop :: Int -> [a] -> [a]

zip :: [a] -> [b] -> [(a, e)]

repeat :: a -> [a]

concat :: [[a]] -> [a]
