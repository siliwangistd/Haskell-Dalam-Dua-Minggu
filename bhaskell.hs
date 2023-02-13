-- DATA --> FUNCTION --> DATA

-- Data & Functions
-- Data types
---- Primitives
-------- number
-------- char
-------- boolean
---- Collective
-------- list
-------- tuple
-- Functions
---- Pattern matching
---- Guards
---- Let
---- Where
-- Recursion
-- Higher order function
-- Modules

module Bhaskell where

add x = x + x

-- nama function
-- inputan x
-- 

varna = "nama saya varna"

iniNama "aziz" = "ini tuhhh azizz"
iniNama "denda" = "ini denda menn"
iniNama "siapayaa" = "ga tau ini siapaa"

iniNama2 x
  | x == "aziz" = "aziiisss"
  | x == "denda" = "denda menn"
  | x == "siapayaa" = "gatau siapa"
  | otherwise = "ini keluarin"

nyariGede x
  | x >= lima = "gedeee"
  | x < lima = "keciilll"
  | otherwise = "inimah samaa"
  where lima = 5

botolKecap x y
  | x == foo y = x + 2
  | x /= foo y = x
  | otherwise = x + 1
  where foo m = m + 1

-- botolKecap 2 3
-- 2 == 4 = not True
-- 2 /= 4 => 2

-- foo 3 = 3 + 1 => 4

-- myTake 3 [1,2,3,4,5]
myTake m [] = []
myTake 0 _ = []
myTake m (x:xs) =  x : myTake (m-1) xs

-- myTake 3 [1,2,3,4,5]
-- myTake 3 (1:[2,3,4,5]) = 1 : myTake (3-1) [2,3,4,5] => 1:[2,3] == [1,2,3]
-- myTake 2 (2:[3,4,5]) = 2 : myTake (2-1) [3,4,5] => 2:[3] == [2,3]
-- myTake 1 (3:[4,5]) = 3 : myTake (1-1) [4,5] => 3:[] == [3]
-- myTake 0 (4:[5]) = [] => [] == []

-- drop

rumusKecap a b c i
  | i == 1 = ((-b) + det) / (2*a)
  | i == 2 = ((-b) - det) / (2*a)
  where det = sqrt(b^2 - (4*a*c))




