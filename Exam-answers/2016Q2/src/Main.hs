-- a
hof :: a -> (a -> a -> a) -> [a] -> a
hof x fx [] = x
hof x fx (y:ys) = y `fx` hof x fx ys

-- b
f1 = hof 1 (*)
f2 = hof 0 f2x
	where x `f2x` y = (1+y)
f3 = hof 0 (+)
f4 = hof [] (++)
f5 = hof 0 f5x
	where x `f5x` y = (x*x + y)

-- c
{-

The nodes left to the root of the tree are never travesed since there is no pattern for if 
x < i. If the node you are looking for is on the left of the tree you will get a runtime error. Also no pattern for an empty tree, runtime error if you're looking for an empty tree. Possibility of the leaf node not being equal to x is not considered, so runtime error could happen here too if the leaf node is not equal to x.

-}

