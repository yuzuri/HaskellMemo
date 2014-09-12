module CalCorrelation
       ( list2factorCorrelation )
       where



-- zip [1,2,3] [3,4,5]

list2factorCorrelation :: [a] -> [b] -> c
list2factorCorrelation x y = sxy / (sqrt sxx) / (sqrt syy)
                       where dataTotal = zip x y
                           n = length dataTotal
                           xmean = (sum $ map fst dataTotal) / fromIntegral n
                           ymean = (sum $ map snd dataTotal) / fromIntegral n
                           sxy = sum $ map (\x -> (fst x - xmean) * (snd x - ymean)) dataTotal
                           sxx = sum $ map (\x -> (fst x - xmean) ^ 2) dataTotal
                           syy = sum $ map (\x -> (snd x - ymean) ^ 2) dataTotal

