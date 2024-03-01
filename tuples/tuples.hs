-- structured type, allows to store different type values x,y,z on a single value of type (x,y,z)
-- number of fields is fixed
-- fields are of heterogeneous type
(f) :: (Tf)
(1, 'A', True) :: (Int, Char, Bool)

-- Acess to Tuples
-- for two elements:
fst :: (a, b) -> a
snf :: (a, b) -> b

-- For others, no accessor functions are defined!
-- We have to create using patterns:
fst (x,_,_) = x
snd (_,y,_) = y
trd (_,_,z) = z

-- Decomposition of Tuples into patterns
-- without decomposition
dist :: (Float, Float) -> (Float, Float) -> Float
dist p1 p2 = sqrt ((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)
-- with decomposition
dist (x1, y1) (x2, y2) = sqrt ((x1 - x2)^2 + (y1 - y2)^2)

-- Empty Tuple (Unit)
-- tuple type without any data: empty data (kinda void?)
