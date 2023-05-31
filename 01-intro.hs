tuple = (1, 2)
tuple3 = (1, 2, 3)
first = (a, _, _) = a
second = (_, b, _) = b
third = (_, _, c) = c
polinomio :: Int -> Int
polinomio x = x*x + 10*x + 2

main = do
  putStrLn "Hello, world!"
  print tuple
  print $ first tuple
  print $ second tuple
  print tuple3
  print $ first tuple3
  print $ second tuple3
  print $ third tuple3