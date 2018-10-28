-- 2017 QUESTION 1
-- Everything here was worth 33 marks (33%) of the exam in 2017
-- a
tail :: [a] -> [a]
tail (x:xs) = xs

-- b
last :: [a] -> a
last (x:[]) = x
last (x:xs) = Main.last xs

-- c
init :: [a] -> [a]
init (x:[]) = []
init (x:xs) = x:Main.init xs

-- d (First attempt was mine.. Optimised version is from the prelude)
splitAt :: Int -> [a] -> ([a],[a])
splitAt a (x:[]) = ([x], [])
splitAt a (x:xs) = if length (x:xs) <= a then ((x:xs), []) else (splitAtHelper ((length (x:xs)) - a) (x:xs), splitAtHelper2 ((length (x:xs)-a)) (x:xs))

splitAtHelper :: Int -> [a] -> [a]
splitAtHelper a (x:[]) = [x] 
splitAtHelper a (x:xs) = if a == length (xs) then [x] else x:splitAtHelper a xs

splitAtHelper2 :: Int -> [a] -> [a]
splitAtHelper2 a (x:[]) = [x] 
splitAtHelper2 a (x:xs) = if a >= length (xs) then xs else splitAtHelper2 a xs

splitAtOptimised :: Int -> [a] -> ([a], [a])
splitAtOptimised 0 xs = ([], xs)
splitAtOptimised _ [] = ([], [])
splitAtOptimised n (x:xs) = (x:xs', xs'')
	where
		(xs', xs'') = splitAtOptimised (n-1) xs

-- e (Used last question as guidance)
replicate :: Int -> a -> [a]
replicate 0 x = []
replicate n x = x:xs'
	where
		(xs') = Main.replicate (n-1) x

-- f
foldl1 :: (a -> a -> a) -> [a] -> a
foldl1 op (x:[]) = x
foldl1 op (x:xs) = x `op` (Main.foldl1 op xs)

