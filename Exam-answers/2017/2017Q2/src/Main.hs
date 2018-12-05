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
{-

Few place where this function will fail.. when checking a leaf node the function only cheacks if x is equal to the node, if this isn't true, and it might'nt be, then we will have a runtime error. Also when searching a tree the nodes to the right are never travesed, so if the node we are looking for is to the right we will never find it and get a runtime error. We also never check if a non-leaf node is x. Basically if the node isn't the bottom left node we get a runtime error. 

-}

