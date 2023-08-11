module Haskell where

myName = "Teja Maulana"
-- Primitif
myData = 1234567
myChar = 'a'
myBooleans = [True, False, (True && False), (False || True)]
-- Collactions
myList = [1..100]
myTuple = ()
myString = ""

tambahLima x "a" = x + 5
tambahLima x "b" = x + 6

apakahAziz nama
    | nama == "Aziz" = True
    | nama == "Denda" = False
    