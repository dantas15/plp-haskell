-- fatorial
fac n
  | n == 0 = 1
  | n == 1 = 1
  | n > 0 = n * fac (n-1)
  | otherwise = error "n deve ser positivo"


main = do
  print $ fac 10
