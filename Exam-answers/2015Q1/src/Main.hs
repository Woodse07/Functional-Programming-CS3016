-- a
repeat :: a -> [a]
repeat a = a : Main.repeat a

-- b
replicate :: Int -> a -> [a]
replicate 0 a = []
replicate x a = a : Main.replicate (x-1) a

-- c
concat :: [[a]] -> [a]
concat [] = []
concat ([]:xss) = Main.concat xss
concat ((x:xs):xss) = x : Main.concat (xs:xss)

-- d
zip :: [a] -> [b] -> [(a,b)]
zip [] [] = []
zip [] (x:xs) = error "Lists are not same size"
zip (x:xs) [] = error "Lists are not same size"
zip (x:[]) (y:[]) = [(x,y)]
zip (x:xs) (y:ys) = (x,y) : Main.zip xs ys 

-- e
unzip :: [(a,b)] -> ([a], [b])
unzip [] = ([], [])
unzip [(a,b)] = ([a], [b])
unzip ((a,b):xs) = ((a:as), (b:bs)) where (as,bs) = Main.unzip xs

-- f
minimum :: (Ord a) => [a] -> a
minimum [] = error "No min of empty list"
minimum (x:[]) = x
minimum (x:xs) = if x < Main.minimum xs then x else Main.minimum xs

-- f(alternate)
minimum_alt :: (Ord a) => [a] -> a
minimum_alt [] = error "No min of empty list"
minimum_alt [x] = x
minimum_alt (x:xs)
	| x > b = b
	| otherwise = x
	where b = Main.minimum_alt xs

