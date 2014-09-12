lucky::Int -> String
lucky 7 = "Lucky number 7"
lucky x = "Bad Number"

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * (factorial (n-1))

head2 :: [a] -> a
head2 [] = error "nanimo nai yo"
head2 (x:_) = x


uruu_check :: Int -> String
uruu_check year
           | mod year 400   == 0 = "uruu 0"
           | mod year 100 == 0 = "not uruu 1"
           | mod year 4 == 0 = "uruu 2"
           | otherwise = "not uruu 3"
