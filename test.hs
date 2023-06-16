
-- listA = [2, 2, 3, 9]

-- listALength = length listA

-- listALastValue = listA !! (listALength - 1)

-- dropListALastValue = init listA

-- dropListALastValueMethod1 = take (listALength - 1) listA

-- dropListALastValueMethod2 = reverse (drop 1 (reverse listA))

-- add' x y = x + y

-- addOneTo = add' 1

-- result = addOneTo 2

-- a :: [Char]
-- a = ['a', 'b', 'c']

-- b :: (Char, Char, Char)
-- b = ('a', 'b', 'c')

-- c :: [(Bool, Char)]
-- c = [(False, '0'), (True, '1')]

-- d :: ([Bool], [Char])
-- d = ([False, True], ['0', '1'])

-- e :: [[a] -> [a]]
-- e = [tail, init, reverse]

-- second :: [a] -> a
-- second xs = head (tail xs)

-- swap :: (a, b) -> (b, a)
-- swap (x, y) = (y, x)

-- pair :: a -> b -> (a, b)
-- pair x y = (x, y)

-- double :: Num a => a -> a
-- double x = x * 2

-- palindrome :: Eq a => [a] -> Bool
-- palindrome xs = reverse xs == xs

-- twice' :: (a -> a) -> a -> a
-- twice' f x = f (f x)

-- str = "kek"

-- str2 = "lol"

-- funcKek (_ : x) = x

-- hello :: String -> String
-- hello name
--   | not (null name) = name
--   | otherwise = "Please introduce"

-- safeTail xs = if null xs then [] else tail xs

-- safeTail2 xs
--   | null xs = []
--   | otherwise = tail xs

-- safeTail3 [] = []
-- safeTail3 (_:xs) = xs

-- (||) :: Bool -> Bool -> Bool
-- True || _ = True
-- False || True = True
-- _ || _ = False

-- andPattern (x, y) = if not x then False else if not y then False else True

-- [(x, y) | y <- [4,5], x <- [1,2,3]]

-- concatenate xss = [x | xs <- xss, x <- xs]

-- biggerThanFive xs = [x | x <- xs, x > 5]

-- pyths z = [(x, y, z) | x <- [1..z], y <- [1..z], x^2 + y^2 == z^2]

-- factors x = [x' | x' <- [1 .. x], x /= x' && x `mod` x' == 0]
-- perfect x = [x' | x' <- [1 .. x], x' == sum (factors x')]

-- listsScalarProduct xs xy = [x * y | x <- xs, y <- xy]
-- listsScalarProduct xs xy = sum [(x * y) | (x, y) <- zip xs xy]

-- listsScalarProduct [1,2,3] [3,5,8]

-- kek (_ : xs) = xs

-- lol (x : xs) = (x, xs)

-- [1, 2, 3] = 1 + length [2, 3] = 1 + 1 + length[3] = 1 + 1 + 1 + 0
-- reverse [1, 2, 3] = reverse[2, 3] ++ [1] = reverse[3] ++ [2] ++ [1] = [] ++ [3] ++ [2] ++ [1]

-- recursiveZip [] [] = []
-- recursiveZip (x : xs) (y : xy) = [(x, y)] : recursiveZip xs xy

-- recursiveZip [1, 2, 3] [1, 2, 3]
-- = [(1, 1)] ++ recursiveZip [2, 3] [2, 3]
-- = [(1, 1)] ++ ([(2, 2)] ++ recursiveZip [3] [3])
-- = [(1, 1)] ++ ([(2, 2)] ++ ([(3, 3)] ++ recursiveZip [] []))
-- = [(1, 1)] ++ ([(2, 2)] ++ ([(3, 3)] ++ []))

-- recursiveAnd xs
--   | xs == [] = False
--   | length xs == 1 = xs !! 0
--   | xs !! 0 == False = False
--   | xs !! 0 == True = recursiveAnd (tail xs)

-- recursiveAnd [] = True
-- recursiveAnd xs = if xs !! 0 && length xs > 1 then recursiveAnd (tail xs) else xs !! 0

-- recursiveConcat [] = []
-- variant #1
-- recursiveConcat xs = head xs ++ recursiveConcat(tail xs)
-- variant #2
-- recursiveConcat (x:xs) = x ++ recursiveConcat xs
--  recursiveConcat [[1, 2, 3], [4, 5, 6]] = [1, 2, 3, 4, 5, 6]

-- recursiveReplicate 0 y = []
-- recursiveReplicate x y = y : recursiveReplicate (x - 1) y
-- recursiveReplicate 7 "kek" = ["kek","kek","kek","kek","kek","kek","kek"]

-- selectElem :: [a] -> Int -> a
-- variant #1
-- selectElem xs x
--        | x > 0 = selectElem (tail xs) (x - 1)
--        | otherwise = head xs
-- variant #2

-- selectElem (x:_) 0 = x
-- selectElem (_:xs) y = selectElem xs (y - 1)

-- recursiveElem x [] = False
-- recursiveElem x (y:xy) = x == y || recursiveElem x xy

-- WRITE INSERT FUNCTION, FOR EXAMPLE: insert 3 [1, 2, 4, 5] = [1, 2, 3, 4, 5]

-- foldrMap f v [] = v
-- foldrMap f v (x : xs) = f x : (foldrMap f v xs)
-- foldrMap (\n -> n /= 2) [] [1,2,3]

foldrMap f xs = foldr (\x xs -> (f x) : xs) [] xs

sumN f x y = x `f` y

-- 1:(2:(3:([])))

-- foldrFilter f v [] = v
-- foldrFilter f v (x : xs)
--   | f x = x : (foldrFilter f v xs)
--   | otherwise = foldrFilter f v xs
-- foldrFilter (\n -> n /= 2) [] [1,2,3]

-- (\n -> 1 + n) ((\n -> 1 + n))

-- addOne x = x + 1

-- myTwice :: (t -> t) -> t -> t
-- myTwice f x = f (f x)

-- recSum [] = 0
-- recSum (x:xs) = x + recSum xs

-- type Pair a = (a, a)

-- showPair :: Pair a -> Pair a
-- showPair (x, y) = (x, y)

-- recInit :: [a] -> [a]
-- recInit [_] = []
-- recInit (x:xs) = x : recInit xs

myFoldr _ v [] = v
myFoldr f v (x:xs) = f x (myFoldr f v xs)

myMap :: (a -> b) -> [a] -> [b]
myMapWithCusomeFoldr f xs = myFoldr (\x -> ((f x):)) [] xs
myMap f xs = foldr (\x -> ((f x):)) [] xs


mutiplyBySix x = x * 6 