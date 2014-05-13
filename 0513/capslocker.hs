-- すべて大文字に変えてくれる

-- ./canpslocker < haiku.txt

import Data.Char

main = do
     contents <- getContents
     putStr $ map toUpper contents
