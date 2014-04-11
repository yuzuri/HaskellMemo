
data PlotTypeOption = Line | Point | LinePoint | PointLine | Dot deriving Eq

data LogOption = Linear | LogX | LogY | LogXY deriving Eq


check1 :: PlotTypeOption -> Int
check1 option
       | option == Line = 1
       | option == Point = 2
       | option == LinePoint = 3
       | option == PointLine = 3
       | option == Dot = 4
       | otherwise = 5

check2 :: LogOption -> Int
check2 option
       | option == Linear = 1
       | option == LogX = 2
       | option == LogY = 3
       | option == LogXY = 3
       | otherwise = 4

check3 :: LogOption -> Int
check3 option
       | option == Linear = 1
       | option == LogX = 2
       | option == LogY = 3
       | option == LogXY = 3
       | otherwise = 4

--       where 
-- check3 :: Double a => [a] -> a
-- check3 a = 

fibb :: Integer -> Integer
fibb 0 = 1
fibb 1 = 1
fibb n = n * fibb (n-1)


-- ガードを使うと、負の数も含められる
fibb2 :: Integer -> Integer
fibb2 n
      | n < 0  = 0
      | n == 0 = 1
      | n == 1 = 1
      | n > 1 = n * fibb2 (n-1)


-- やりたいことは簡単で、リスト内リストを開きたい
-- smoothList :: [a] -> []
-- smoothList [] = []
-- smoothList x 
--            | tail x == [] = head x : (smoothList ( tail x) )

{--
        [1, [2, 3]] を例に考える
        1　と [2,3]に分けられる
        [2,3]は[]ではないのでsmooth [2,3]
        3は[]ではないので smoothe 3
        []なので

--}

-- zipを使ったら行けそう？
           

tails    :: [a] -> [[a]]
tails xs  =  xs : case xs of
                      []      -> []
                      _ : xs' -> tails xs'  



-- 例えば[[1,2,3],[2,3,6],…]を[1,2,3,2,3,6]のように平らにする関数を実装しなさい。

-- 探していた関数はconcat
-- Concatenate a list of lists.
concat2 :: [[a]] -> [a]
concat2 = foldr (++) []



-- sum と同じか
total :: [Integer] -> Integer
total [] = 0
total (y:ys) = y + total ys


-- Haskellでは、「A」を「B」で割ったときの商は「div A B」、余りは「mod A B」と書く。



calGCD :: Integer -> Integer -> Integer
calGCD a b
       | (mod c d) == 0 = d
       | otherwise      = calGCD d (mod c d)
       where c = max a b
             d = min a b
