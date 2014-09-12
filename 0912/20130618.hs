{-bmiTell :: Double -> Double -> String
bmiTell weight height
 | weight / height ^2 <= 18.5 = "You're underweight, you emo, you!"
 | weight / height ^2 <= 25.0 = "You're supposedly normal."
 | weight / height ^2 <= 30.0 = "You're fat!"
 | otherwise                 = "You're a whale, conguratulations!"
-}

bmiTell :: Double -> Double -> String
bmiTell weight height
 | bmi <= 18.5 = "You're underweight, you emo, you!"
 | bmi <= 25.0 = "You're supposedly normal."
 | bmi <= 30.0 = "You're fat!"
 | otherwise   = "You're a whale, conguratulations!"
  where bmi = weight / height ^ 2


hoge :: Double -> Double
hoge a = a*4


-- パターンマッチの練習
hoge2 :: Int -> String
hoge2 1 = "one"
hoge2 2 = "two"
hoge2 3 = "three"
hoge2 4 = "four"
hoge2 100 = "hundred"
hoge2 x = "any"


-- 全パターンを網羅していないと文句を言われる
--Main> hoge2 1000
--"*** Exception: 20130618.hs:(24,1)-(28,21): Non-exhaustive patterns in function hoge2



-- Int より Integer の方が大きい値をとれる
--factorial :: Int -> Int
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)


head2 :: [a] -> a
head2 [] = error "Can't call head on an empty list, dummy!"
head2 (x:_) = x


-- 円柱の表面積を求める関数
cylinder :: Double -> Double -> Double
cylinder r h = 
         let sideArea = 2* pi * r * h
             topArea  = pi * r ^ 2
         in sideArea + 2 * topArea


--hoge3 :: Double -> Double
--hoge3 x = 


bmiTell2 :: Double -> Double -> Double
bmiTell2 weight height = weight / height ^ 2


{-- | を使うためには[]で囲う必要がある、(w, h)を一度に渡すために()を使う -}
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]



--head3 :: [a] -> a
--head3 [] = 

