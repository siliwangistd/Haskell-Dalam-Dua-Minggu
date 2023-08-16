module Haskell where

-- "Type Data"
myName = "Teja Maulana"
-- Primitif
myData = 1234567
myChar = 'a'
myBooleans = [True, False, (True && False), (False || True)]
-- Collactions
myList = [1..100]
myTuple = ()
myString = ""

-- "Function"
-- Pattern Matching
tambahLima x "a" = x + 5
tambahLima x "b" = x + 6
-- Guards
apakahAziz nama
    | nama == "Aziz" = True
    | nama == "Denda" = False
-- where

-- Teori 1 
-- myTake 0 _ = []
-- myTake a [] = []
-- myTake a (m:xz) = m : myTake (a-1) xz


-- Hipotesis 1
-- myDrop m [] = []
-- myDrop m (x:xs) = x : myDrop (m+xs) xs

-- myDrop 2 [1,2,3,4,5]
-- myDrop 2 (1:[2,3,4,5]) = 1 : myDrop (2+[2,3,4,5]) [2,3,4,5]

-- Hipotesis 2

-- myDrop m [] = []
-- myDrop m (x:xs) = x : myDrop (m+1) xs

-- myDrop 2 [1,2,3,4,5]
-- myDrop 2 (1:[2,3,4,5]) = 1 : myDrop (2+1) [2,3,4,5]
-- myDrop 3 (2:[3,4,5]) = 2 : myDrop (3+1) [3,4,5]
-- myDrop 4 (3:[4,5]) = 3 : myDrop (4+1) [4,5]
-- myDrop 5 (4:[5]) = 4 : myDrop (5+1) [5]

-- Hipotesis 3
-- myDrop m [] = []
-- myDrop m (x:xs) = xs : myDrop (1) xs
-- myDrop 2 [1,2,3,4,5]
-- myDrop 2 (1:[2,3,4,5]) = [2,3,4,5] : myDrop (1) [2,3,4,5]
-- myDrop 1 (2:[3,4,5]) = [3,4,5] : myDrop (1) [3,4,5]
-- myDrop 1 (3:[4,5]) = [4,5] : myDrop (1) [4,5]
-- myDrop 1 (4:[5]) = [5] : myDrop (1) [5]
-- myDrop 1 (5:[]) = [] : myDrop (1) []
-- myDrop m [] = []

-- Hipotesis 4
-- myDrop 0 _ = []
-- myDrop m [] = []
-- myDrop m (x:xs) = myDrop (m+1) xs
-- myDrop 2 [1,2,3,4]
-- myDrop 2 (1:[2,3,4]) = myDrop (2+1) [2,3,4]
-- myDrop 3 (2:[3,4]) = myDrop (3+1) [3,4]
-- myDrop 4 (3:[4]) = myDrop (4+1) [4]
-- myDrop 5 (4:[]) = myDrop (5+1) []

-- Teori 1
-- myDrop 0 xs = xs
-- myDrop m [] = []
-- myDrop m (x:xs) = myDrop (m-1) xs
-- myDrop 2 [1,2,3,4]
-- myDrop 2 (1:[2,3,4) = myDrop (2-1) [2,3,4]
-- myDrop 1 (2:[3,4]) = myDrop (1-1) [3,4]
-- myDrop 0 [3,4] = [3,4]

myReverse [] = []
myReverse (x:xs) = myReverse (xs) ++ [x]