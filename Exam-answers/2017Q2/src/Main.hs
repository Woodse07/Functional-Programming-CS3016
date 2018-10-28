-- a
hof :: a -> (a -> a -> a) -> [a] -> a
hof x fx [] = x
hof x fx (y:ys) = y `fx` hof x fx ys
