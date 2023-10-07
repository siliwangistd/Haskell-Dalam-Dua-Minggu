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

cariGedeAjah x
  | x > myLocalNumber = "gedeee"
  | otherwise = "kecil"