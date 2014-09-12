{--data Shape = Circle Float Float Float |
             Rectangle Float Float Float Float
     deriving (Show)

--}

--area :: Shape -> Float
--area (Circle _ _ r) = pi * r^2
--area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)


--改行は不要？
data Point = Point Float Float deriving (Show)

data Shape = Circle Point Float | Rectangle Point Point
     deriving (Show)

-- 円と長方形を平行移動する
nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r ) a b = Circle (Point (x+a) (y+b) ) r
nudge (Rectangle (Point x1 y1 ) (Point x2 y2)) a b 
      = Rectangle (Point (x1+a) (y1+b) ) (Point (x2+a) (y2+b))



baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0 ) r

baseRect :: Float -> Float -> Shape
baseRect width height = Rectangle (Point 0 0) (Point width height)



--data Person = Person String String Int Float String String deriving (Show)

data Person = Person{ firstName :: String
                     , lastName :: String
                     , age      :: Int
                     , height   :: Float
                     , phoneNumber :: String
                     , flaver      :: String
                     }
                     deriving (Show)


-- 値コンストラクタ
-- 引数の型は先に宣言する必要がある

-- 型コンストラクタ
-- 引数の数だけ宣言する必要がある、型は a としておけばなんでもおーけー


data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n ) = Vector (i+l) (j+m) (k+n)



type AssocList k v = [(k,v)]
