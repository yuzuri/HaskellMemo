
{--
---- How to use ----

pearsonCorrelation [1,2,3,4] [0,1,2,3]
-> 1.0

->pearsonCorrelation [1,2,3,4] [4,3,2,1]
-1.0

--}


module CalCorrelation
       ( pearsonCorrelation )
       where



pearsonCorrelation :: (Floating a) => [a] -> [a] -> a
pearsonCorrelation x y = sxy / (sqrt sxx) / (sqrt syy)
                       where dataTotal = zip x y
                             xmean = (sum $ map fst dataTotal) / fromIntegral n
                             ymean = (sum $ map snd dataTotal) / fromIntegral n
                             n = length dataTotal
                             sxy = sum $ map (\x -> (fst x - xmean) * (snd x - ymean)) dataTotal
                             sxx = sum $ map (\x -> (fst x - xmean) ^ 2) dataTotal
                             syy = sum $ map (\x -> (snd x - ymean) ^ 2) dataTotal
