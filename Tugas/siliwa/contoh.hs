module Contoh where

square x = x * x

-- nama "Aziz" = "Keluarin Aziz"
-- nama "Denda" = "Ini Denda"

-- cariOrg nama = if (nama == "Aziz") then "Keluarin Aziz" else "Ini Denda"

cariOrg nama
  | nama == "Aziz" = "Keluarin Aziz"
  | nama == "Denda" = "Ini Denda"
  | nama == "Teja" = "Ini tejaaaa"
  | otherwise = "Dimassssss"

-- cariGede x
--   | x > 5 = "GEdeeeeeeeeeeeeeee"
--   | otherwise = "kecil"

myNumber = 5

cariGede x
  | x > myNumber = "Gedeeeeee"
  | otherwise = "Kecil"

cariGedeBanget x
  | x > myLocalNumber = "Gede bangeett"
  | otherwise = "Kecilllll"
  where myLocalNumber = 99

-- cariGedeAjah x
--   | x > myLocalNumber = "gedeee"
  -- | otherwise = "kecil"

myTake m [] = []
myTake 0 _ = []
myTake m (x:xs) = x : myTake (m-1) xs

-- myTake 3 [1,2,3,4,5]
-- myTake 3 (1:[2,3,4,5]) = 1 : myTake (3-1) [2,3,4,5] => 1:[2,3] = [1,2,3]
-- myTake 2 (2:[3,4,5]) = 2 : myTake (2-1) [3,4,5] => 2:[3] => [2,3]
-- myTake 1 (3:[4,5]) = 3 : myTake (1-1) [4,5] => 3:[] => [3]
-- myTake 0 _ = [] => []

