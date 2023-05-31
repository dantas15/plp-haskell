mdc a b
  | mod a b == 0 = b
  | mod b a == 0 = a
  | a > b = mdc b (mod a b)
  | a < b = mdc a (mod b a)