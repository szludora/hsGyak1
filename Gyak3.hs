module Gyak3 where

    -- parametrikusan polimorf fv.: olyan fv,
    -- amely működése föggetlen a bemeneti paraméterek típusától
    -- a fv. típusában nincs megkötés
    fst' :: (a, b) -> a
    fst' (x, y) = x
    
    snd' :: (a, b) -> b
    snd' (x, y) = y

    -- fromIntegral :: (Integral a, Num b) => a -> b
    -- ad hoc polimorf: ....függ a bemeneti paraméterek típusától
    -- a fv típusában van megkötés

    add :: Num a => a -> a -> a
    add x y = x + y

    -- láncolt listák
    -- homogén adatszerkezet
    -- [1,2,3,4] == 1 : 2 : 3 : 4 : []
    -- ['a', 'b']
    -- [True, False, Bool]
    -- ["alma", "körte"]

    -- type String = [Char]

    isLarger :: Ord a => a -> a -> Bool
    isLarger x y = x > y

    null' ::  [a] -> Bool
    null' [] = True
    null' _ = False

    second :: [a] -> a
    second [x, y] = y