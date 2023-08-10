module One where

-- Data -> Function -> Data

addDua x = x + 2

myName "Aziz" = "Nama saya Aziz"
myName "Denda" = "Nama saya Denda"

isGreaterThanTwo x
  | x > 2 = "Lebih cooyyy"
  | x < 2 = "alah kurang"

myName2 name
  | name == "Aziz" = "Aziz nihhh"
  | name == "Denda" = "Dendaaa"
  | otherwise = "Saha etaa"

isGreaterThanLego x
  | x > lego = "Lebiiihhh"
  | x <= lego = "nyaa kurang"
  where lego = 5

-- FUnction -> Function

-- take' 2 [1,2,3,4,5]

take' m [] = []
take' 0 _ = []
take' m (x:xs) = x : take' (m-1) xs

-- take' 2 [1,2,3,4,5] => 1 : take' (2-1) [2,3,4,5]
-- take' 1 [2,3,4,5] = 2 : take' (1-1) [3,4,5]
-- take' 0 [3,4,5] = []

-- take' 2 [] => x 

myDrop m [] = []
myDrop 0 xs = xs
myDrop m (x:xs) = myDrop (m-1) xs