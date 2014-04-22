

import CalCorrelation

main :: IO()
main = do
     let x = [2,4,5,6,2,4,2,5,2,6]
     let y = take (length x) [1,2..]


     let alpha = 0.02
     let r = pearsonCorrelation x y
     let pvalue = calPvalue (length x) alpha


     putStr "n = "
     print $ length x

     putStr "r = "
     print r
     putStr "p = "
     print pvalue     


