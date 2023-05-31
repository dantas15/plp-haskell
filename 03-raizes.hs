-- Escrever uma função que encontre as raízes reais
-- de uma equação do 2º grau (a*x2 + b*x + c = 0)

raizes a b c
  | ((-b -delta)/(2*a), (-b +delta)/(2*a)) where delta = b**2 - 4*a*c

main = do 
  print $ raizes 1 (-5) 6
  -- saída: (2.0,3.0)
