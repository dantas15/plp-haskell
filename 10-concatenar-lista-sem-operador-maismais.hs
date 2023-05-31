concatena [] ys = ys
concatena xs [] = xs
concatena (x:xs) ys = x : concatena xs ys

main = do
  print $ concatena [1,2,3] [4,5,6]
  -- retorna [1,2,3,4,5,6]