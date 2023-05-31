eliminaVogal :: String -> (String, Int, Int)
eliminaVogal str = (novaString, tamanhoOriginal, tamanhoNova)
  where
    vogais = "aeiouAEIOU" -- Vogais a serem removidas
    novaString = filter (`notElem` vogais) str -- Filtra os caracteres que não são vogais
    tamanhoOriginal = length str -- Tamanho da string original
    tamanhoNova = length novaString -- Tamanho da string resultante

main = do
  print $ eliminaVogal "Paradigmas de Linguagens de Programacao"
  -- retorna
  -- ("Prdgms d Lnggns d Prgrmc",39,24)