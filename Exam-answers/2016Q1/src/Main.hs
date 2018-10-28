-- a
head :: [a] -> a
head (x:xs) = x

-- b
init :: [a] -> [a]
init (x:[]) = []
init (x:xs) = (x:Main.init xs)

-- c
last :: [a] -> a
last (x:[]) = x
last (x:xs) = Main.last xs

-- d
span :: (a -> Bool) -> [a] -> ([a], [a])
span bool [] = ([],[])
span bool (x:xs)
   | bool x = let(d,e) = Main.span bool xs in (x:d,e)
   | otherwise = ([], (x:xs))

-- e
(!!) :: [a] -> Int -> a
(x:xs) !! 0 = x
(x:xs) !! n = xs Main.!! (n-1)

-- f
foldl1 :: (a -> a -> a) -> [a] -> a
foldl1 _ [] = error "Main.foldl1 empty list"
foldl1 op (x:[]) = x
foldl1 op (x:xs) = x `op` (Main.foldl1 op xs)

