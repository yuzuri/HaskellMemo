--  カリー化された関数

multTree :: Int -> Int -> Int -> Int
multTree x y z = x*y*z


-- compareWithHundread :: Int -> Ordering
-- compareWithHundread x = compare 100 x

-- 引数のxがなくてもおーけー
compareWithHundread  = compare 100 


-- Main> compareWithHundread  5 
-- GT
-- 5 < 100  greater than

-- Main> compareWithHundread 101
-- LT
-- 101 > 100  less than

-- Main> compareWithHundread  100
-- EQ





divideByTen ::  (Floating a) => a -> a
divideByTen = (/10)

-- Main> divideByTen  200
-- 20.0
-- Main> 200/10
-- 20.0
-- Main> (/10) 200
-- 20.0


isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])

-- Main> isUpperAlphanum 'B'
-- True
-- *Main> isUpperAlphanum 'A'
-- True
-- *Main> isUpperAlphanum 'a'
-- False


applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- *Main> applyTwice (+1) 10
-- 12
-- *Main> applyTwice (++ " HAHA") "HEY"
-- "HEY HAHA HAHA"

-- *Main> applyTwice (multTree 2 2) 9
-- 144
-- = 4 * 4 * 9




zipWith2 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith2 _ [] _ = []
zipWith2 _ _ [] = []
zipWith2 f (x:xs) (y:ys) = f x y : zipWith2 f xs ys

-- *Main> zipWith2 (+) [4,2,5,6] [2,6,2,3]
-- [6,8,7,9]
-- *Main> zipWith2 max [4,2,5,6] [2,6,2,3]
-- [4,6,5,6]
-- *Main> zipWith2 (*) (replicate 5 2) [1..]
-- [2,4,6,8,10]
-- *Main> replicate 5 2
-- [2,2,2,2,2]



-- 関数の引数の型宣言がわからくなったら、 Haskellに推論させることができる
-- :t hoge でおーけー
hoge :: Num a => a -> a
hoge x = x * 2




flip2 ::(a -> b -> c) -> (b -> a -> c)
flip2 f = g
      where g x y = f y x
