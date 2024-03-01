insertIn :: Int -> a -> [a] -> [a]

-- insertIn index elem (x:xs) = 
--   case index of 
--   1 -> elem : x : xs
--   _ -> x : insertIn (index - 1) elem xs

insertIn 1 elem array = elem : array
insertIn index elem (x:xs) = x : insertIn (index-1) elem xs



