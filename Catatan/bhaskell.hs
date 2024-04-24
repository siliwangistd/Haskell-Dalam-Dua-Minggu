module Bhaskell where

-- Tipe Data
-- Primitives
  -- Int
  -- Integer  
  -- Float  
  -- Double  
  -- Bool  
  -- Char  
  -- List  
-- Tuple
-- Collections
  -- List
  -- Tuple
  -- String

-- FUnction:::
-- _Pattern Matching_
-- _Guards_
-- _Where_
-- _Let - In_

iniNama "aziz" = "Aziz Abdul Muin"
iniNama "denda" = "Tri Denda"

tambahSesuatu x "a" = x + 1
tambahSesuatu x "b" = x + 2


tambahSesuatu2 x var
  | var == "a" = x + 1
  | var == "b" = x + 2

apakahAziz nama
  | nama == "Aziz" = True
  | nama == "Denda" = False
  | otherwise = False

myName = "Soffan"

apakahSoffan nama
  | nama == myName = True
  | nama == iniTeja = False
  | otherwise = False
  where iniBlagoo = "Blagoo"



  




