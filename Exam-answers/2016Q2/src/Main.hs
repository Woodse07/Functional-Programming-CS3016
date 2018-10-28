hof :: a -> (a -> a -> a) -> [a] -> a
hof x fx [] = x
hof x fx (y:ys) = fx y (hof fx x ys)
