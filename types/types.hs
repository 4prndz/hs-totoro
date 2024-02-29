-- Integers
-- Negative numbers always with parentheses
-- Simplified operators
import Data.Char (ord, chr)

-- Arithmetic operations
(+), (-), (*), (^), div, mod, rem :: Int -> Int -> Int

-- Comparison operations
(<), (>), (<=), (>=), (==), (/=) :: Int -> Int -> Bool

-- Booleans
(&&), (||) :: Bool -> Bool -> Bool
not :: Bool -> Bool

-- Reals
-- No distinction between Float and Double in Haskell's notation
-- Simplified operators
(/) :: Float -> Float -> Float
(**) :: Float -> Float -> Float

-- Conversion functions
fromIntegral :: Int -> Float
round, floor, ceiling :: Float -> Int

-- Characters
-- Simplified comparison operators
-- Use Data.Char to access ord and chr
-- Conversion functions
ord :: Char -> Int
chr :: Int -> Char

-- Operator precedence
-- https://www.haskell.org/onlinereport/decls.html#fixity

-- Predefined functions
even, odd :: Int -> Bool
min, max :: Int -> Int -> Int
gcd, lcm :: Int -> Int -> Int
abs, sqrt, log, exp, cos :: Float -> Float

