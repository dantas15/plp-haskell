multiplica [] = 1
multiplica (x:xs) = x * multiplica xs

produtos a b
  | a == 0 = 0
  | b == 0 = 0
  | a == b = a
  | otherwise = multiplica [a..b]

main = do
  print $ produtos 2 5 -- retorna 120