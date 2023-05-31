-- primeiro, é preciso calcular o máximo divisor comum
mdc a b
  | mod a b == 0 = b
  | mod b a == 0 = a
  | a > b = mdc b (mod a b)
  | a < b = mdc a (mod b a)
-- depois, encontramos o minimo multiplo comum
mmc a b 
  | a == 0 = 0
  | b == 0 = 0
  | a == b = a
  | otherwise = div (a * b) (mdc a b)

-- Outra forma de fazer ambas as funcoes:
-- mdc a 0 = a
-- mdc a b = mdc b (a `mod` b)

-- mmc a b = (abs (a * b)) `div` (mdc a b)
main = do
  print $ mmc 12 3 -- 6
  