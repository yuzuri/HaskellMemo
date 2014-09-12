-- FILE : cal_pearson.hs
-- Author : Yuzurihara
-- Time-stamp: "2013-06-10 08:40:23 yuzurihara"

import System.IO -- open File
import Data.List -- transpose
import System.Environment --getArgs
import Control.Monad -- mapM
import Data.Complex -- complex


-----------------------------------------------------
-- main
-----------------------------------------------------
main = do filename <- getArgs
          print filename -- 型がおかしい
          iFile <- openFile filename ReadMode  
--          x <- hGetContents iFile
--           print x
--          hClose iFile
          putStrLn "end program"



-----------------------------------------------------
-- sub
-----------------------------------------------------
--sub filename = do
--              print filename
-- ファイル読込
--              iFile <- openFile filename ReadMode
--              x <- hGetContents iFile
-- データ
--        hClose iFile
