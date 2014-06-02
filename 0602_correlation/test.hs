

import CalCorrelation

main :: IO()
main = do

     -- x, yは相関係数を計算するためのリスト
     let x = [2,4,5,6,2,4,2,5,2,6]
     let y = [5,2,3,4,5,1,2,6,7,2]

     -- alpha : 有意水準
--     let alpha =0.3740741795339386
     let alpha = 0.05

     -- n : データ数
     putStr "n     = "
     let n = max (length x) (length y)
     print n

     -- r : 計算したピアソンの相関係数
     putStr "r     = "
     let r = pearsonCorrelation x y
     print r

     -- p : データ数nと有意水準alphaから求まる棄却限界
     putStr "|p|   = "
     print $ alpha2Pvalue n alpha

     -- alpha : データとデータ数から求まるそのデータの有意水準
     putStr "alpha = "     
     print $ data2Significance n r

     writeFile "test.txt" "Hello, Haskell!\n"
