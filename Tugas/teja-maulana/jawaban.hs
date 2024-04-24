-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Jawaban where

import Data.List

-- 1.a

-- sdfds
myNull [] = True
myNull (x:xs) = False


--pembatas

myTake 0 _ = []
myTake a [] = []
myTake a (m:xz) = m : myTake (a-1) xz

--pembatas

myDrop 0 xs = xs
myDrop m [] = []
myDrop m (x:xs) = myDrop (m-1) xs

--pembatas

myFst (x,s) = x

--pembatas

mySnd (x,s) = s

--pembatas

myMap f [] = []
myMap f (x:xs) = f x : myMap f xs

--pembatas

myFilter _ [] = []
myFilter f (x:xs)
 | f x == True = x : myFilter f xs
 | otherwise = myFilter f xs


myDelete y (x:xs) = if x == y then xs else x  : myDelete y xs


--pembatas

myDeleteAll y [] = []
myDeleteAll y (x:xs)
 | y == x = myDeleteAll y xs
 | otherwise = x : myDeleteAll y xs


--pembatas

myFoldl' f y [] = y
myFoldl' f y (x:xs) = myFoldl' f (f y x) xs

--pembatas

myFoldl1'' _ [x] = x
myFoldl1'' f (x:xs) = myFoldl' f x xs

--pembatas

myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (m:my) = (x,m) : myZip xs my

--pembatas

myZipWith f [] [] = []
myZipWith f [] _ = []
myZipWith f _ [] = []
myZipWith f (m:ms) (x: xs) = (f m x) : (myZipWith f ms xs)

--pembatas

myNth x = x

--pembatas

myScanl f m [] = [m]
myScanl f m (x:xs) = m : myScanl f (f m x) xs

--  cara kerja myScanl adalah:
--  yang pertama memasukan inputan kedua kedalam list
--  kemudian menjumblahkan inputan kedua dengan imputan ketiga, dan inputan ketiga masing masing saling menjumlahkan hasil.

myScanl1 x = x

--pembatas
myElem _ [] = False
myElem y (x:xs)
 | x == y = True
 | otherwise = myElem y xs

--pembatas

notElem' x = x

--pembatas

head' x = x

--pembatas

length' x = x

--pembatas

reverse' x = x

--pembatas

last' x = x

--pembatas

tail' x = x

--pembatas

init' x = x

--pembatas

max' x = x

--pembatas

min' x = x

--pembatas

concat' x = x

--pembatas

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' x = x

--pembatas

or' x = x

--pembatas

zip3' x = x

--pembatas

sum' x = x

--pembatas

product' x = x

--pembatas

words' x = x

--pembatas

lines' x = x

--pembatas

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x = x

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' x = x

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' x = x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
