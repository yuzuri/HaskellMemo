

import CalCorrelation

main :: IO()
main = do

     -- x, yは相関係数を計算するためのリスト
     let x = [2,4,5,6,2,4,2,5,2,6]
     let y = [5,2,3,4,5,1,2,6,7,2]

     -- alpha : 有意水準
     let alpha = 0.02

     -- r : 計算したピアソンの相関係数
     let r = pearsonCorrelation x y

     -- p : データ数nと有意水準alphaから求まる棄却限界
     let pvalue = calPvalue (length x) alpha


     putStr "n = "
     print $ length x

     putStr "r = "
     print r
     putStr "p = "
     print pvalue     


