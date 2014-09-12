-- 2013/4/23 12:00- 
-- Haskell study meeting
-- Time-stamp: "2013-04-23 14:28:17 yuzurihara"

doubleMe y = y + y
hoge x = x * 100

doubleUs x y  = x * 2 + y * 2.0

-- 100より小さいと2倍にする関数
-- 最初のxは引数
-- = の後が返り値
doubleSmallNumber x = if x > 100
                        then doubleMe x
                        else x

-- 再起的に呼び出せるので、関数呼び出しの順番は関係ないらしい

-- if と else は2人で一つ

-- 再起的呼び出しを使ってよりおされに
doubleSmallNumber2 x = succ ( doubleSmallNumber x )

-- 「やぁコナンだよ！」
conanO'Brien = "It's a-me, conam O'Brien!"


-- let a = 1
-- 引数を持たない関数 = 変数？


-- 引数を持たない関数
-- lostnumbers = [4, 8, 15, 16, 23, 42]

-- リストの連結
-- let listtetst = [1, 2, 3, 4 ]

-- Num？

-- 関数名 引数 = 返り値
-- 値はあるのか？
-- それとも全部関数？

-- シングルコーテーションと
-- ダブルコーテーションの違いは？

-- 'おれたちのシングルコーテーションはまだ始まったばかりだ！'


-- リスト「5000万要素はむりぽ」


-- 'A':" cat"
-- リストの前に足すと早い
-- リストの後ろに加えるのは全部読み込むことになるので、遅い

-- やまもと「オライリーはやばい」


-- リストの参照
-- "Steve Buscemi" !! 6
-- リストの要素は0, 1, 2, 3...


Prelude> tail a
[2,3]
Prelude> head a
1
Prelude> last a
3
Prelude> init a
[1,2]
