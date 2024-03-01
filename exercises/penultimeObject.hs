myButLast :: [a] -> a

myButLast (x1:x2:xs) =
  case xs of
  [] -> x1
  otherwise -> myButLast ([x2] ++ xs)

myButLast x = last (take (length x - 1) x)

-- myButLast [x, _] = x
-- myButLast (_:xs) = myButLast xs

-- myButLast = head . tail . reverse
