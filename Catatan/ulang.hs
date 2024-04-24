module Ulang where

myTake m [] = []
myTake 0 _ = []
myTake m (y:ys) = y : myTake (m-1) ys

-- take 2 [1,2,3,4,5]
-- myTake 2 (1:[2,3,4,5]) = 1 : myTake (2-1) (2:[3,4,5])
-- myTake (2-1) (2:[3,4,5]) = 2 : myTake (1-1) (3:[4,5])
-- myTake (1-1) (3:[4,5]) = []