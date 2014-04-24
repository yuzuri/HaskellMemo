
module CalCorrelation
       ( pearsonCorrelation
       , alpha2Pvalue
       , data2Significance)
       where



import qualified Foreign.C.Types as FCT
foreign import ccall "gsl_cdf_tdist_Pinv" gsl_cdf_tdist_Pinv :: FCT.CDouble -> FCT.CDouble -> FCT.CDouble
foreign import ccall "gsl_cdf_tdist_P"    gsl_cdf_tdist_P    :: FCT.CDouble -> FCT.CDouble -> FCT.CDouble
foreign import ccall "gsl_cdf_tdist_Q"    gsl_cdf_tdist_Q    :: FCT.CDouble -> FCT.CDouble -> FCT.CDouble

-- double gsl cdf tdist Pinv (const double P, const double nu)
gslCdfTDistPinv :: Double -> Double -> Double
gslCdfTDistPinv pVal n = realToFrac $ gsl_cdf_tdist_Pinv (realToFrac pVal) (realToFrac n)

--gsl cdf tdist Q (const double x, const double nu)
gslCdfTDistP x n = realToFrac $ gsl_cdf_tdist_P (realToFrac x) (realToFrac n)
gslCdfTDistQ x n = realToFrac $ gsl_cdf_tdist_Q (realToFrac x) (realToFrac n)



pearsonCorrelation :: (Floating a) => [a] -> [a] -> a
pearsonCorrelation x y = sxy / (sqrt sxx) / (sqrt syy)
                       where dataTotal = zip x y
                             xmean = (sum $ map fst dataTotal) / fromIntegral n
                             ymean = (sum $ map snd dataTotal) / fromIntegral n
                             n = length dataTotal
                             sxy = sum $ map (\x -> (fst x - xmean) * (snd x - ymean)) dataTotal
                             sxx = sum $ map (\x -> (fst x - xmean) ^ 2) dataTotal
                             syy = sum $ map (\x -> (snd x - ymean) ^ 2) dataTotal



alpha2Pvalue :: Int -> Double -> Double
alpha2Pvalue n alpha
          | n < 3     = 0
          | otherwise = t / sqrt (realToFrac n - 2.0 + t * t)
                        where t = gslCdfTDistPinv (1.0 - alpha/2.0) ( realToFrac (n-2) )


data2Significance :: Int -> Double -> Double
data2Significance n r
                  | n < 3     = 0
                  | abs r > 1 = 0
                  | t <  0    = 2.0 * gslCdfTDistP t (realToFrac (n-2))
                  | t >= 0    = 2.0 * gslCdfTDistQ t (realToFrac (n-2))
                           where t = r * sqrt (realToFrac n - 2) / sqrt (1 - r*r)



