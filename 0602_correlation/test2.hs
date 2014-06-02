

import CalCorrelation

main :: IO()
main = do


     channel1 <- readFile "data_channel1.txt"
     channel2 <- readFile "data_channel2.txt"

     --print channel2
     --print channel1 channel2

     let dataChannel1 = map read $ lines channel1 :: [Double]
     let dataChannel2 = map read $ lines channel2 :: [Double]

     --print dataChannel1

     --pearsonCorrelation :: (Floating a) => [a] -> [a] -> a
     let correlation = pearsonCorrelation dataChannel1 dataChannel2
     print correlation
