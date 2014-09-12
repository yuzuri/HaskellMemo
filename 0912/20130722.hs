{--

Main> map (*3) [1,2..100]
[3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99,102,105,108,111,114,117,120,123,126,129,132,135,138,141,144,147,150,153,156,159,162,165,168,171,174,177,180,183,186,189,192,195,198,201,204,207,210,213,216,219,222,225,228,231,234,237,240,243,246,249,252,255,258,261,264,267,270,273,276,279,282,285,288,291,294,297,300]


Main> map (++ "-DEATH") ["hello", "bye"]
["hello-DEATH","bye-DEATH"]


Main>  map (map (^2)) [[1, 2], [3, 4], [5, 6, 7]]
[[1,4],[9,16],[25,36,49]]



Main> filter (>3) [1,2,3,4,5,5,6]
[4,5,5,6]


Main> filter (==3) [1,2,3,4,5,5,6,3]
[3,3]




*Main> filter even [1..10]
[2,4,6,8,10]



2度filterを使う場合、
*Main> filter (>15)(filter even [1..20])
[16,18,20]

--}

largestDivisible :: Integer
largestDivisible = head ( filter p [100000,99999..])
                 where p x = (x `mod` 3829 == 0)

-- *Main> largestDivisible
-- 99554

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
      | even n = n : chain (n `div` 2)
      | odd  n = n : chain (n * 3 + 1)


numLongChains :: Int
numLongChains = length ( filter isLong ( map chain [1..100]))
              where isLong xs = (length xs) > 15

--getChains :: [Int]
--getChains = filter (>15) length (chain [1..100])
-- getChains = filter (>15)  ( map chain [1..100])
-- うまくいかない
-- filter (>15) length (chain 100)
-- ではいける





-- Main> map (negate . abs) [0, 5, -5, 3, -1]
-- [0,-5,-5,-3,-1]



