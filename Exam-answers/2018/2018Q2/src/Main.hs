--a
{-

The first thing I notice is that regardless if x is less than or greater than i, the function
only ever searches to the right. So if the value you are searching for is less than i, it
will never be found.

When checking if a leaf, the function only checks if it is the correct value. If it was not
we would get a runtime error.

Doesn't check for empty tree?


-}

--b
{-
data Tree = Empty
			| Single Int String
			| Many Tree Int String Tree

search :: Int -> Tree -> Maybe String

search x (Single i s)
	| x == i = Just s
	| otherwise = Nothing

search x (Many left i s right)
	| x == i = Just s
	| x > i = search x right
	| x < i = search x left
-}

--c
{-
data Tree = Empty
			| Single Int String
			| Many Tree Int String Tree

search :: (Monad m) => Int -> Tree -> m String

search x Empty = fail "Empty tree"

search x (Single i s)
	| x == i = return s
	| otherwise = fail "Not in leaf"

search x (Many left i s right)
	| x == i = return s
	| x > i = search x right
	| x < i = search x left
-}

