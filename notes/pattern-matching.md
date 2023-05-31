# Pattern matching

## receiving two tuples (x1, y1) (x2, y2) and concatenating them

```hs
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2) 
```

- there isn't a catch-all pattern because of the type declaration, in which it is specified that the two tuples must be passed

## getting the head of a list

```hs
    head' :: [a] -> a  
    head' [] = error "Can't call head on an empty list, dummy!"  
    head' (x:_) = x  
```

- the `x:xs` is used to get the elements in a list
  - `x` is going to be the first element
  - `xs` is going to be the rest of the list
  - you can also use `x:y:z:xs` to get the first three elements and the rest of the list and so on

## getting the full list/string

- use `@`
  - for example: `@xs(y,ys)` `xs` will be the full list and `y` and `ys` will be the first element and the rest of the list
