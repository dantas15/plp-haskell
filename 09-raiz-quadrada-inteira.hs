palpiteRaiz n palpite
  | palpite * palpite <= n && (palpite + 1)  * (palpite + 1) > n = palpite
  | otherwise = palpiteRaiz n (palpite + 1)

encontrarRaiz n = palpiteRaiz n 0

main = do
  print $ encontrarRaiz 17 -- retorna 4