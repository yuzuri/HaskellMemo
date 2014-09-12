-- Time-stamp: "2013-05-21 15:37:50 yuzurihara"

-- :t のあとに変数をいれると型がわかる

-- Int は他の言語と同様に上限があるよ
-- Integerは有界じゃないので、どんなけ大きくても計算してくれる

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference2 :: Double -> Double
circumference2 r = 2 * pi * r


-- aとかbは一般的な型

-- 2.4 型クラス初級講座
-- 型クラス, インスタンス(メソッド)
-- シンボル=> の左で型クラス制約を行う

-- Main> :t (==)
-- (==) :: Eq a => a -> a -> Bool


-- Eq型クラス
-- Eqは等値性をテストできる型に使う
-- == と /= が使える


-- Ord型クラス
-- 例：>


-- 出てきた単語
-- インスタンス, 型クラス


-- これからは型クラスを作る時代

-- Haskellの推論は賢い(確信




















