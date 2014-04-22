
{--
---- How to use ----

pearsonCorrelation [1,2,3,4] [0,1,2,3]
-> 1.0

->pearsonCorrelation [1,2,3,4] [4,3,2,1]
-1.0

--}


module CalCorrelation
       ( pearsonCorrelation
       , calPvalue )
       where



import qualified Foreign.C.Types as FCT
foreign import ccall "gsl_cdf_tdist_Pinv" gsl_cdf_tdist_Pinv :: FCT.CDouble -> FCT.CDouble -> FCT.CDouble



pearsonCorrelation :: (Floating a) => [a] -> [a] -> a
pearsonCorrelation x y = sxy / (sqrt sxx) / (sqrt syy)
                       where dataTotal = zip x y
                             xmean = (sum $ map fst dataTotal) / fromIntegral n
                             ymean = (sum $ map snd dataTotal) / fromIntegral n
                             n = length dataTotal
                             sxy = sum $ map (\x -> (fst x - xmean) * (snd x - ymean)) dataTotal
                             sxx = sum $ map (\x -> (fst x - xmean) ^ 2) dataTotal
                             syy = sum $ map (\x -> (snd x - ymean) ^ 2) dataTotal


-- double gsl cdf tdist Pinv (const double P, const double nu)
gslCdfTDistPinv :: Double -> Double -> Double
gslCdfTDistPinv pVal n = realToFrac $ gsl_cdf_tdist_Pinv (realToFrac pVal) (realToFrac n)



calPvalue :: Int -> Double -> Double
calPvalue n p
          | n < 3     = 0
          | otherwise = t / sqrt (realToFrac n - 2.0 + t * t)
                        where t = gslCdfTDistPinv (1.0 - p/2.0) ( realToFrac (n-2) )

--     let pvalue = calPvalue (length x) 0.10
