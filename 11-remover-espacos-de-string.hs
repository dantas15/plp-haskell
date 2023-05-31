removerEspDup [] = []
removerEspDup [x] = [x]
removerEspDup (x:y:xs)
  | x == ' ' && y == ' ' = removerEspDup(y:xs)
  | otherwise = x : removerEspDup (y:xs)

main = do
  print $ removerEspDup "Ola  Mundo  "
  -- retorna "Ola Mundo "