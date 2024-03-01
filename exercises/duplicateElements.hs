dupli :: [a] -> [a]

dupli (x:xs) =
  case xs of 
  [] -> [x,x]
  _ -> x:x : (dupli xs)

-- dupli [] = []
-- dipli (x:xs) = x:x:dupli xs
