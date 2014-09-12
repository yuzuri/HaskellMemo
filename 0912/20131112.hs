-- 2013/11/12

import Data.Char
{--
main = do
     putStrLn "What's your first name?"
     firstName <- getLine
     putStrLn "What's your last name?"
     lastName <- getLine
     let bigFirstName = map toUpper firstName
         bigLastName = map toUpper lastName
     putStrLn $ "hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"
--}


main = do
     a <- return "hoge"
     b <- return "foo"
     putStrLn $ a ++ " " ++ b
     let c = "AAA"
         d = "BBB"
     putStrLn $ c ++ " " ++ d
