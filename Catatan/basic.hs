module Basic where

myName = "Tri Denda"

iniDevin = "Devin"

iniIdan = "Idan"

iniBlagoo = "Halo Blagoo"
iniJono = "Halo jono"

tambahDua naonweh = naonweh + 2 

tambahTilu x y z = x + y + z + 3

hello = "Hello, World!"

namaSiapa nama = if (nama == "Denda") then "Ini tuh Denda" else "Ini bukan Denda"

-- ieu moal dieksekusi
namaSiapaV2 nama
  | nama == denda = "Ini tuh Denda"
  | nama == "Devin" = "Halo Devin"
  | nama == blagoo = "Blagoo luh"
  | otherwise = "Ini bukan siapa siapa"
  where denda = "Denda"

apakahGede x
  | x > 50 = "Gedeeeeeeee"
  | x < 0 = "Kecil"
  | x == 20 = "Inimah dua puluh"
  | otherwise = "Ga tau tuh"

tambahin x y = (x + 3) * (y + 2)

-- apakah gede
-- > 2000 = "Gede"
-- < 100 = "Kecil"
-- == 10 = "Ini sepuluh"
-- keluarkeun "naonweh"

-- Bikin function "tambahin"
-- terima dua inputan
-- inputan pertama tambahin 5
-- inputan kedua tambahin 10
-- kemudian dikali

sesuatu = 5

cekKecil x
  | x > 10 = False
  | x == ngasal = False
  | otherwise = True
  where ngasal = 5

-- Buat sebuah fungsi "cekSeribu"
-- terima satu inputan
-- kalau sama dengan 1000 keluarin True
-- kalau lebih kecil dari 50 False
-- kalau lebih gede dari 2000 False

cekSeribu x
  | x == iniSeribu = True
  | x < 50 = False
  | x > 2000 = False
  | otherwise = False
  where iniSeribu = 1000

iniNama "Blagoo" = "Halo Blagoo"
iniNama "Denda" = "Ini denda"
iniNama "Devin" = "Devin"

iniNama2 "Devin" "Denda" = "salah"

blagoo = "Blagoo"

iniNama3 nama
  | nama == blagoo = "Halo Blagoo"
  | nama == denda = "Ini denda"
  | nama == "Devin" = "Ini Devin"
  where denda = "Denda"

myTake m [] = []
myTake 0 rest = []
myTake m (a:rest) = a : myTake (m-1) rest

-- COntoh Salah..
-- myTake 2 [1,2,3,4,5]
-- myTake 2 (1:[2,3,4,5]) = 1 : myTake 2 [2,3,4,5]
-- myTake 2 (2:[3,4,5]) = 2 : myTake 2 [3,4,5]
-- myTake 2 (3:[4,5]) = 3 : myTake 2 [4,5]
-- myTake 2 (4:[5]) = 4 : myTake 2 [5]
-- myTake 2 (5:[]) = 5 : myTake 2 []
-- myTake 2 [] = []

-- myTake 2 [1,2,3,4,5]
-- myTake 2 (1:[2,3,4,5]) = 1 : myTake (2-1) [2,3,4,5]
-- myTake 1 (2:[3,4,5]) = 2 : myTake (1-1) [3,4,5]
-- myTake 0 rest = []

-- 1:2:[]

-- myDrop 3 [1,2,3,4,5]
-- myDrop 3 (1:[2,3,4,5]) = 1 : myDrop (3-1) [2,3,4,5] -> 1 : [2,3]
-- myDrop 2 (2:[3,4,5]) = 2 : myDrop (2-1) [3,4,5] -> 2 : [3] -> [2,3]
-- myDrop 1 (3:[4,5]) = 3 : myDrop (1-1) [4,5] -> 3 : [] -> [3]
-- myDrop 0 _ = []

namaSaya naonweh = naonweh

foo (x, y, z) = y

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- Hipotesis 1
-- myReverse [1,2,3,4,5]
-- myReverse (1:[2,3,4,5]) = myReverse [2,3,4,5] ++ [1] -> [5,4,3,2] ++ [1] -> [5,4,3,2,1]
-- myReverse (2:[3,4,5]) = myReverse [3,4,5] ++ [2] -> [5,4,3] ++ [2] -> [5,4,3,2]
-- myReverse (3:[4,5]) = myReverse [4,5] ++ [3] -> [5,4] ++ [3] -> [5,4,3]
-- myReverse (4:[5]) = myReverse [5] ++ [4] -> [5] ++ [4] -> [5,4]
-- myReverse (5:[]) = myReverse [] ++ [5] -> [] ++ [5] -> [5]
-- myReverse [] = []

myLast xs = fn (length xs) xs

fn 1 (x:[]) = x
fn m (x:xs) = fn (m-1) xs

-- myLast [1..5]
-- myLast ([1,2,3,4,5]) = fn (5) [1,2,3,4,5]
        -- fn 5 (1:[2,3,4,5]) = fn (5-1) [2,3,4,5]
        -- fn 4 (2:[3,4,5]) = fn (4-1) [3,4,5]
        -- fn 3 (3:[4,5]) = fn (3-1) [4,5]
        -- fn 2 (4:[5]) = fn (2-1) [5]
        -- fn 1 (5:[]) = 5


myLast2 xs = head (fn xs)
  where fn [] = []
        fn (x:xs) = fn xs ++ [x]

myInit xs = myTake ((length xs) - 1) xs

myDelete m [] = []
myDelete m (x:xs) = if (m == x) then myDelete m xs else x : myDelete m xs

maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)  
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs  

-- maximum' [1,3,1]
-- maximum' (1:[3,1])  
    -- | 1 > 3 = x  
    -- | otherwise = 3  
    -- where maxTail = maximum' [3,1]
-- maximum' (3:[1])  
    -- | 3 > 1 = 3  
    -- | otherwise = 1  
    -- where maxTail = maximum' [1]
-- maximum' [1] = 1

square y = y * y
myMap teja [] = []
myMap teja (x:xs) = teja x : myMap teja xs
