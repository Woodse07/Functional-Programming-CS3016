-- a
tail1 :: [a] -> [a]
tail1 (x:xs) = xs


--b
(+-+) :: [a] -> [a] -> [a]
(+-+) (x:[]) y = (x:y)
(+-+) (x:xs) y = x : (+-+) xs y


--c
init1 :: [a] -> [a]
init1 (x:[]) = []
init1 (x:xs) = x : init1 xs


--d
reverse1 :: [a] -> [a]
reverse1 (x:[]) = [x]
reverse1 (x:xs) = (+-+) (reverse1 xs) [x]

--e
break1 :: (a -> Bool) -> [a] -> ([a], [a])
break1 bool (x:xs)
	| bool x = ([], (x:xs))
	| otherwise = let (ys, zs) = break bool xs in (x:ys,zs)


--f
maximum1 :: Ord a => [a] -> a
maximum1 (x:[]) = x
maximum1 (x:xs)
	| (maximum1 xs) >= x = (maximum1 xs)
	| otherwise = x

