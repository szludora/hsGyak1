module Gyak4 where

    import Data.List

    add1 :: Num a => [a] -> [a]
    add1 list = [x+1 | x <- list]

    onlyAs :: [String] -> [String]
    onlyAs s = ["a" | "a" <- s]
    -- onlyAs s = ["a" | _ <- s]

    firstIsA :: [String] -> [String]
    firstIsA s = [w | w@('a' : xs) <- s]

    compress :: (Eq a, Num b) => [a] -> [(a, b)]
    compress list = [ (head l, fromIntegral $ length l ) | l <- (group list) ]

    decompress :: Integral b =>  [(a, b)] -> [a]
    decompress l = [char | (char, db) <- l, _ <- [1..db]]