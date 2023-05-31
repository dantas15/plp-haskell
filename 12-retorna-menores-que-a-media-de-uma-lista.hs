filtrar _ [] = []
filtrar p (x:xs)
  | p x = x : filtrar p xs
  | otherwise = filtrar p xs

somaLista [] = (0,0)
somaLista (x:xs) =
  (total + x, qnt + 1)
  where (total, qnt) = somaLista xs

media xs =
  total / qnt
  where (total, qnt) = somaLista xs

menoresQueMedia [] = []
menoresQueMedia xs = filtrar (< media xs) xs

main = do
  print $ media [1.0, 2.5, 3.7, 4.2, 10.9]
  print $ menoresQueMedia [1.0, 2.5, 3.7, 4.2, 10.9]
  -- retorna, respectivamente:
  -- 4.46
  -- [1.0,2.5,3.7,4.2]