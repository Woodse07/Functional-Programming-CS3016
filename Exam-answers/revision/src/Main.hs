break1 :: (a -> Bool) -> [a] -> ([a], [a])
break1 bool (x:xs)
	| bool x = ([], (x:xs))
	| otherwise = let (ys, zs) = break bool xs in (x:ys,zs)


max1 :: Ord a => [a] -> a
max1 (x:[]) = x
max1 (x:xs)
	| (max1 xs) > x = max1 xs
	| otherwise = x


splitAt1 :: Int -> [a] -> ([a],[a])
splitAt1 0 (x:xs) = ([],(x:xs))
splitAt1 num (x:xs) = let (ys,zs) = splitAt1 (num-1) xs in (x:ys,zs)


rep :: Int -> a -> [a]
rep 0 a = []
rep num a = a:rep (num-1) a


fol :: (a -> a -> a) -> [a] -> a
fol fx (x:[]) = x
fol fx (x:xs) = x `fx` (fol fx xs)


spa :: (a -> Bool) -> [a] -> ([a],[a])
spa bool (x:xs)
	| bool x = let (ys, zs) = spa bool xs in (x:ys, zs)
	| otherwise = ([], (x:xs))


(!-!) :: [a] -> Int -> a
(!-!) (x:xs) 0 = x
(!-!) (x:xs) num = (!-!) xs (num-1)


conc :: [[a]] -> [a]
conc (x:[]) = x
conc ((x:[]):ys) = x : conc ys
conc ((x:xs):ys) = x : conc ((xs):ys)


zi :: [a] -> [b] -> [(a,b)]
zi [] [] = []
zi (x:xs) (y:ys) = (x,y):zs where zs = zi xs ys


unzi :: [(a,b)] -> ([a], [b])
unzi ((a,b):[]) = ([a],[b])
unzi ((a,b):xs) = ((a:as), (b:bs)) where (as,bs) = unzi xs


min1 :: (Ord a) => [a] -> a
min1 (x:[]) = x
min1 (x:xs)
	| x > (min1 xs) = min1 xs
	| otherwise = x
