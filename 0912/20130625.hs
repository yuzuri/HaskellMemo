
maximum2 :: (Ord a) => [a] -> a
maximum2 [] = error "maxixmum of empty list!"
maximum2 [x] = x
maximum2 (x:xs) = max x (maximum2 xs)
-- パターンマッチ + 再帰関数


-- 最初に整数値で回数を書く、aを繰り返す
replicate2 :: Integer -> a -> [a]
replicate2 n x
 | n <= 0    = []
 | otherwise = x : replicate2  (n-1) x



-- 整数値で書いた数だけ リストの先頭から取り出す
-- 返り値もリスト
take2 :: Int -> [a] -> [a]
take2 n _
     | n <= 0  = []
take2 _ [] = []
take2 n (x:xs) = x : take2 (n-1) xs



reverse2 :: [a] -> [a]
reverse2 [] = []
reverse2 (x:xs) = (reverse2 xs) ++ [x]





zip2 :: [a] -> [b] -> [(a, b)]
zip2 _ [] = []
zip2 [] _ = []
zip2 (x:xs) (y:ys) = (x, y) : zip2 xs ys

-- Main> zip [1,2,3] [4,5,6]
-- [(1,4),(2,5),(3,6)]


elem2 :: (Eq a) => a -> [a] -> Bool
elem2 a [] = False
elem2 a (x:xs)
      | a == x = True
      | otherwise = elem2 a xs
--      | otherwise = a `elem2` xs

-- バッククォート = 中置表現
-- A `hoge` B   は    hoge A B   と同じ  




-- クイックソートしてみよう！
-- まずはリストを宣言しておく
hogelist = [5,1,9,4,6,7,3]



quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
          let smallerOrEqual = [ a | a <- xs, a <= x]
              larger = [ a | a <- xs, a > x]
          in quicksort smallerOrEqual ++ [x] ++ quicksort larger
