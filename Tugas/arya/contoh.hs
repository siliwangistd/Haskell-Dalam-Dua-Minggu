module Contoh where

nama "hallo arya" = "hallo"
nama "sedang apa" = " tidal sedang apa apa"
apa "sedang sibuk" = "tidak"
bisakah "membantu saya"= "apa yang bisa saya bantu"

square x
    | x > 2 = True 
    | otherwise = False

myTake x [] = []
myTake 0 _ = [] 
myTake m (x:xs) = x : myTake (m-1) xs
-- myTake 3 [1,2,3,4,5]
-- myTake 3 (1:[2,3,4,5]) = 1 : myTake (3-1) [2,3,4,5]
-- myTake 2 (2:[3,4,5]) = 2 : myTake (2-1) [3,4,5]
-- myTake 1 (3:[4,5]) = 3 : myTake (1-1) [4,5]
-- myTake 0 _= []