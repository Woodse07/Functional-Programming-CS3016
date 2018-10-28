-- a
hof :: a -> (a -> a -> a) -> [a] -> a
hof x fx [] = x
hof x fx (y:ys) = y `fx` hof x fx ys

-- b
f1 = hof 42 (*)
f2 = hof 0 f2x 
	where x `f2x` y = (99 * y)
f3 = hof 0 (+)
f4 = hof [] (++)
f5 = hof 0 f5x
	where x `f5x` y = (x-42) + y

-- c
