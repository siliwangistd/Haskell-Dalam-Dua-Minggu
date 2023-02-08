module Coba where

square x = x*x

helloWorld = "Hello World"

doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber x = if x > 100 then x else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

boomBangs xs = [if x < 10 then "Boom" else "Bang" | x <- xs, odd x]

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
        | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
        | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
        | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
        | otherwise                 = "You're a whale, congratulations!"
-- skip
-- skip

-- Rumus square = s*s atau Luas=s² dan data type nya bisa berupa float atau
-- sekedar integer

-- bujurSangkar :: Float -> Float / 
-- bujurSangkar :: Int -> Int

bujurSangkar :: Float -> Float
bujurSangkar sisi = sisi * sisi

-- rumus segitiga 1/2 alas x tinggi atau alas x tinggi / 2
-- segiTiga :: Float -> Float -> Float

segiTiga :: Float -> Float -> Float
segiTiga alas tinggi = (alas*tinggi)/2 -- atau x y - (x*y)/2

-- lingkaran Rumus luas lingkarasdasdsadsadkaran: Luas = π × r × r atau 2*π*r(radius)
-- memakai float karena nilai pi selalu float
-- pi sudah ada di prelude jadi tidak usah di definisikan

lingKaran :: Float -> Float
lingKaran radius = 2 * pi * radius -- atau  x = 2* pi * x

-- 