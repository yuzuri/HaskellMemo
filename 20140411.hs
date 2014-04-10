
-- Author : yuzuri

-- フィボナッチ数列を求める
fibb1 :: Integer -> Integer
fibb1 0 = 1
fibb1 1 = 1
fibb1 n = n * fibb (n-1)


-- ガードを使うと、負の数も含められる
fibb2 :: Integer -> Integer
fibb2 n
      | n < 0  = 0
      | n == 0 = 1
      | n == 1 = 1
      | n > 1 = n * fibb2 (n-1)
       

tails    :: [a] -> [[a]]
tails xs  =  xs : case xs of
                      []      -> []
                      _ : xs' -> tails xs'  



-- 例えば[[1,2,3],[2,3,6],…]を[1,2,3,2,3,6]のように平らにする関数を実装しなさい。
concat2 :: [[a]] -> [a]
concat2 = foldr (++) []


-- Haskellでは、「A」を「B」で割ったときの商は「div A B」、余りは「mod A B」と書く。

-- aとbの最大公約数をユークリッドの控除法を用いて求める
calGCD :: Integer -> Integer -> Integer
calGCD a b
       | (mod c d) == 0 = d
       | otherwise      = calGCD d (mod c d)
       where c = max a b
             d = min a b
