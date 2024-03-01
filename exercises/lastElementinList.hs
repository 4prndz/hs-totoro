myLast :: [a] -> a

myLast (x:xs) =
  case xs of
     [] -> x
     _ -> myLast xs 

-- myLast [] = error "Empty List"
-- myLast [x] = x 
-- myLast (_:xs) = myLast xs
--
-- myLast = head . reverse
