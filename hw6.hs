-- Note: Your file must be free of typing errors. If your file can not
-- be loaded into ghci, then you will get 0 point. Please read the instructions
-- for each problem carefully. Failure to follow the instructions may result in
-- 0 point.


-- Problem 1 (2 points): Use pattern matching and recursion to define the
-- following 'myDrop' function. 
-- It drops the first n elements from a list.
-- We assume the input number is always greater or
-- equaled to 0. 

myDrop :: Int -> [a] -> [a]
myDrop 0 xs = xs
myDrop _ [] = []
myDrop n (x:xs) = myDrop (n-1) xs

-- For your convenient, your implementation
-- of myDrop should have the following
-- behavior from the interpreter.

-- > myDrop 3 [1,2,3,4,5]
-- [4,5]
-- > myDrop 3 []
-- []
-- > myDrop 3 [1,2]
-- []
-- > myDrop 0 [1,2]
-- [1,2]
-- > myDrop 4 [1,2]
-- []

-- Problem 2 (2 points): Rotate a list N places to the left. 

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs n =
    let len = length xs
        n' = n `mod` len
    in drop n' xs ++ take n' xs

-- E.g. rotate ['a','b','c','d','e','f','g','h'] 3
-- "defghabc"
-- > rotate ['a','b','c','d','e','f','g','h'] (-2)
-- "ghabcdef"
-- > rotate ['a','b','c','d','e','f','g','h'] 9
-- "bcdefgha"
-- > rotate ['a','b','c','d','e','f','g','h'] (-10)
-- "ghabcdef"


-- Problem 3 (2 points): Use pattern matching and recursion to define
-- the following 'duplicate' function. It produce a list with n identical elements.
-- We may assume the input number is always greater
-- or equaled to 0. 
duplicate :: Int -> a -> [a]
duplicate 0 _ = []
duplicate n x = x : duplicate (n-1) x

-- For example, 
-- > duplicate 3 'a'
-- "aaa"
-- > duplicate 3 '1'
-- "111"
-- > duplicate 3 1
-- [1,1,1]
-- > duplicate 0 1
-- []

-- Problem 4 (2 points):
-- Use pattern matching and recursion to define
-- the following 'myElem' function that decides if an input is an element of a list.

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) = y == x || myElem y xs

-- For example, 
-- > myElem 1 [1,2,3,4]
-- True
-- > myElem 5 [1,2,3,4]
-- False    

-- Problem 5 (2 points): Use pattern matching and recursion to
-- define the following 'myMaximum' function that
-- return the maximum element in a list.

myMaximum :: (Ord a) => [a] -> a  
myMaximum [x] = x
myMaximum (x:xs) = max x (myMaximum xs)

-- For example.
-- > myMaximum [1,10,3,9]
-- 10

-- > myMaximum [1,20,3,4]
-- 20

-- Problem 6 (2 points). Create a list containing all integers within a given range. 
-- Note: You must *not* use [i .. j]. 
range :: Int -> Int -> [Int]
range i j
    | i > j     = []
    | otherwise = i : range (i + 1) j

-- > range 4 9
-- [4,5,6,7,8,9]
-- > range (-4) 9
-- [-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9]







