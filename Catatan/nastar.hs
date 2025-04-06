-- source code
module Nastar where

import Data.List

hello = "Hello, World!"

square x = x * x

-- programming isn't about typing, it's about thinking

-- cariNama "Denda" = "Ini Denda"
-- cariNama "Nanda" = "Ini Nanda"

-- cariNama namaSaya
--   | namaSaya == "Denda" = "Ini Denda"
--   | namaSaya == "Nanda" = "Ini Nanda"
--   | otherwise = "Ini adit lohh"

-- cariNama x y = x ++ "Bisa cooyyy"


-- tau inputnya apa? outputnya apa? <<-- PENTINGG!!!

-- tambahin 2 kalau tambahinGak == true
-- output bakal number

iniDua = 2

tambahinDua x tambahinGak
  | tambahinGak == True = x + 2
  | tambahinGak == False = x

cekGede x
  | x > 2000 = "Gedeee bangeeettt!!!"
  | x > 15 = "Gede ajaaah"
  | x < 0 = "kecill"
  | x < (-50) = "keicl banget inimahh"

--  Scope => Global atau Local

bukber = bukber ++ "bersama"

-- bukber = bukber ++ "bersama" ++ "bersama" ++ "bersama" ++ "bersama"

-- myTake 3 [1,2,3,4,5]
myTake m [] = []
myTake 0 _ = []
myTake m (x:xs) = [x] ++ myTake (m-1) xs 

-- myTake 3 [1,2,3,4,5]
-- myTake 3 (1:[2,3,4,5]) = [1] ++ myTake (3-1) [2,3,4,5] => [1] ++ [2,3] => [1,2,3]
-- myTake 2 (2:[3,4,5]) = [2] ++ myTake (2-1) [3,4,5] => [2] ++ [3] => [2,3]
-- myTake 1 (3:[4,5]) = [3] ++ myTake (1-1) [4,5] => [3] ++ [] => [3]
-- myTake 0 _ = []

myDrop m [] = []
myDrop 0 xs = xs
myDrop m (x:xs) = myDrop (m-1) xs

-- myDrop 2 [1,2,3,4,5]
-- myDrop 2 (1:[2,3,4,5]) = myDrop (2-1) [2,3,4,5]
-- myDrop 1 (2:[3,4,5]) = myDrop (1-1) [3,4,5]
-- myDrop 0 [3,4,5] = [3,4,5]

myLength [] = 0
myLength (x:xs) = 1 + myLength xs

-- myLength [1,2,3]
-- myLength (1:[2,3]) = 1 + myLength [2,3]

-- delete 2 [1,2,3,4,5]

myDelete m [] = []
myDelete m (x:xs)
  | m == x = xs
  | m /= x = [x] ++ myDelete m xs

-- (x:xs) = [1,2,3,4,5]
-- x = 1
-- xs = [2,3,4,5]
-- KOTAK == SEGITIGA
-- KOTAK -> SEGITIGA
-- SEGITIGA -> KOTAK

-- 1. ngecek postulat 1a dan 1b
-- 2. pustulat 3

  






-- =
-- == /= 
-- >

cariOrang m [] = []
cariOrang m (x:xs)
  | m == x = [x]
  | m /= x = cariOrang m xs

-- cariOrang "Nanda" ["Dimas", "Nanda", "Aziz", "Denda"]


