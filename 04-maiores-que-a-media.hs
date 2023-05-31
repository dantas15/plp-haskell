-- formas de encontrar o comprimento
-- de uma lista sem o uso do length


-- forma 1
-- comprimento [] = 0
-- comprimento xs = sum [1 | _ <- xs]


-- forma 2
comprimento [] = 0
comprimento (_:xs) = 1 + comprimento xs

filtrar _ [] = []
filtrar p (x:xs)
  | p x = x : filtrar p xs  -- Se o predicado 'p' for verdadeiro para 'x', inclui 'x' na lista resultante
  | otherwise = filtrar p xs      -- Caso contrário, ignora 'x' e continua filtrando o restante da lista

quantosMaiores a b c = comprimento $ filtrar (> ((a + b + c) / 3)) [a, b, c]
  
main = do
  print $ quantosMaiores 1 2 3
  print $ quantosMaiores 1 16 30
  print ((1 + 16 + 30) / 3)
