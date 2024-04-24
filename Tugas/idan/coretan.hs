module Coretan where

square x = x * x

-- nama "Devin" = "ini devin"
-- nama "Idan" = "ini idan"

-- cariOrg nama = if (nama == "Idan") then "keluarin idan" else "ini devin"

cariOrg nama
  | nama == "Idan" = "ini idan"
  | nama == "Devin" = "ini devin"
  | nama == "Epan" = "ini Epan"
  | otherwise = "org lain"

myTake m [] = []
myTake 0 _ = []
myTake m (x:xs) = x : myTake (m-1) xs

-- myTake 3 [1,2,3,4,5]
-- myTake 3 (1:[2,3,4,5]) = 1 :myTake (3-1) [2,3,4,5] => 1:[2,3] => [1,2,3]
-- myTake 2 (2:[3,4,5]) = 2 : myTake (2-1) [3,4,5] => 2:[3] => [2,3] 
-- myTake 1 (3:[4,5]) = 3 : myTake (1-1) [4,5] => 3:[] => [3]
-- myTake 0 _ = [] => []

-- myTake 2 [5,3,2,1]
-- myTake 2 (5:[3,2,1]) = 5 : myTake (2-1) [3,2,1]
-- myTake 1 (3:[2,1]) = 3 : myTake (1-1) [2,1]
-- myTake 0 _ = []

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

myFst (nama, benda) = nama

mySnd (nama, benda) = benda

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

myHead (x:xs) = x

myLast (x:xs) = xs