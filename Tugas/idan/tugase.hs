-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Tugase where

import Data.List

-- 1.a

null' x = x

--pembatas

myTake m [] = []
myTake 0 _ = []
myTake m (x:xs) = x : myTake (m-1) xs

-- myTake 3 [1,2,3,4,5]
-- myTake 3 (1:[2,3,4,5]) = 1 :myTake (3-1) [2,3,4,5] => 1:[2,3] => [1,2,3]
-- myTake 2 (2:[3,4,5]) = 2 : myTake (2-1) [3,4,5] => 2:[3] => [2,3] 
-- myTake 1 (3:[4,5]) = 3 : myTake (1-1) [4,5] => 3:[] => [3]
-- myTake 0 _ = [] => []

--pembatas

myDrop m [] = []
myDrop 0 p = p
myDrop m (x:xs) = myDrop (m-1) xs

-- hipotesis 3
-- myDrop 3 [1,2,3,4,5]
-- myDrop 3 (1:[2,3,4,5]) = myDrop (3-1) [2,3,4,5]
-- myDrop 2 (2:[3,4,5]) = myDrop (2-1) [3,4,5]
-- myDrop 1 (3:[4,5]) = myDrop (1-1) [4,5]
-- myDrop 0 [4,5] = [4,5]

-- hipotesis 2
-- myDrop 3 [1,2,3,4,5]
-- myDrop 3 (1:[2,3,4,5]) = myDrop (3-1) [2,3,4,5]
-- myDrop 2 (2:[3,4,5]) = myDrop (2-1) [3,4,5]
-- myDrop 1 (1:[4,5]) = myDrop (1-1) [4,5]
-- myDrop 0 _ = [] => [4,5]

-- hipotesi 1
-- myDrop 3 [1,2,3,4,5]
-- myDrop 3 (1:[2,3,4,5]) = 1 : myDrop (3-1) [2,3,4,5]
-- myDrop 2 (2:[3,4,5]) = 2 : myDrop (2-1) [3,4,5]
-- myDrop 1 (3:[4,5]) = 3 : myDrop (1-1) [4,5]
-- myDrop 0 _ = []

--pembatas

myFst (nama, benda) = nama

--pembatas

mySnd (nama, benda) = benda

--pembatas

map' x = x

--pembatas

filter' x = x

--pembatas

delete' x = x

--pembatas

deleteAll' x = x

--pembatas

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

zip' x = x

--pembatas

zipWith' x = x

--pembatas

nth' x = x

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

elem' x = x

--pembatas

notElem' x = x

--pembatas

myHead (x:xs) = x

-- hipotesis 1
-- myHead [6,7,8,9,10]
-- myHead (6:[7,8,9,10]) = 6 

--pembatas

myLength [] = 0
myLength (x:xs) = myLength xs + 1

-- hipotesis 1
-- myLength [1,2,3,4,5]
-- myLength ([1,2,3,4,5]) = myLength [] 0

-- hipotesis 2
-- myLength [1,2,3,4,5]
-- myLength ([1,2,3,4,5]) = myLength [] * 0
-- myLength [] = 0

-- hipotesis 3
-- myLength [1,2,3,4,5]
-- myLength (1:[2,3,4,5]) = myLength [2,3,4,5]
-- myLength (2:[3,4,5]) = myLength [3,4,5]
-- myLength (3:[4,5]) = myLength [4,5]
-- myLength (4:[5]) = myLength [5]
-- myLength (5:[]) = myLength []
-- myLength [] = 0

-- hipotesis 4
-- myLength [1,2,3,4,5]
-- myLength (1:[2,3,4,5]) = myLength [2,3,4,5] + 1
-- myLength (2:[3,4,5]) = myLength [3,4,5] + 2
-- myLength (3:[4,5]) = myLength [4,5] + 3
-- myLength (4:[5]) = myLength [5] + 4
-- myLength (5:[]) = myLength [] + 5
-- myLength [] = 0

-- hipotesis 5
-- myLength [1,2,3,4,5]
-- myLength (1:[2,3,4,5]) = myLength [2,3,4,5] - 1
-- myLength (2:[3,4,5]) = myLength [3,4,5] - 2
-- myLength (3:[4,5]) = myLength [4,5] - 3
-- myLength (4:[5]) = myLength [5] - 4
-- myLength (5:[]) = myLength [] - 5
-- myLength [] = 0

-- hipotesis 6
-- mylenght [1,2,3,4,5]
-- myLength (1:[2,3,4,5]) = myLength [2,3,4,5] + 1
-- myLength (2:[3,4,5]) = myLength [3,4,5] + 1
-- myLength (3:[4,5]) = myLength [4,5] + 1
-- myLength (4:[5]) = myLength [5] + 1
-- myLength (5:[]) = myLength [] + 1
-- myLength [] = 0

--pembatas

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- hipotesis 1
-- myReverse [1,2,3,4,5]
-- myReverse (1:[2,3,4,5]) = myReverse [1] ++ []
-- myReverse (1:[]) = myReverse [1] ++ []
-- myReverse (1:[]) = myReverse [x] ++ [] SALAH X

-- hipotesis 2
-- myReverse [1,2,3,4,5]
-- myReverse (1:[2,3,4,5]) = myReverse [2,3,4,5] ++ [1] -> [5,4,3,2] ++ [1] = [5,4,3,2,1]
-- myReverse (2:[3,4,5]) = myReverse [3,4,5] ++ [2] -> [5,4,3] ++ [2] = [5,4,3,2]
-- myReverse (3:[4,5]) = myReverse [4,5] ++ [3] -> [5,4] ++ [3] = [5,4,3]
-- myReverse (4:[5]) = myReverse [5] ++ [4] -> [5] ++ [4] = [5,4]
-- myReverse (5:[]) = myReverse [] ++ [5] -> [] ++ [5] = [5]
-- myReverse [] = []

--pembatas

last' x = x

--pembatas

tail' x = x

--pembatas

init' x = x

--pembatas

max' x = x

--pembatas

min' x = x

--pembatas

concat' x = x

--pembatas

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' x = x

--pembatas

or' x = x

--pembatas

zip3' x = x

--pembatas

sum' x = x

--pembatas

product' x = x

--pembatas

words' x = x

--pembatas

lines' x = x

--pembatas

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x = x

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' x = x

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' x = x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
