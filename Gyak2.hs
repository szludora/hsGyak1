module Gyak2 where
     
    -- infixen -> balra vagy jobbra kötő, kötési erősség (0-9)
    
    alma :: Integer -> Integer -> Integer
    alma x y = 2 * x + y

    infixl 7 `alma`

    (+*) :: Integer -> Integer -> Integer
    x +* y = x * y + 2

    infixl 5 +*

    -- alapértelmezett
    -- infixl 9

    one :: Int
    one = 1

    three :: Integer
    three = 3

    -- fromIntegral: Int , Integer                  -> eredmény Int, Integer, Double, Float
    -- realToFrac:   Int, Integer, Double, Float    -> eredmény Double, Float

    four :: Integer
    four = three + (fromIntegral one)

    {- 
    Int -> Integer : fromIntegral
    Integer -> Double : fromIntegral, realToFrac
    Float -> Double : realToFrac
    Double -> Double : realToFrac
    Double -> integer --> kerekítés
    -}

    -- Kerekítések
    {- 
    floor:      tőle >= egész szám    (kisebbegyenlő)
    ceiling:    tőle <= egész szám  (nagyobbegyenlő)
    truncate:   elhagyja a tört részt
    round:      matematikai kerekítés (inkább informatikai kerekítés...pl 4.5 vagy 5.5 esetében)
    -}

    -- Mintaillesztés
    not' :: Bool -> Bool
    not' True = False
    not' _ = True

    -- Mik minősülnek mintának:
        -- Konkrét értékek: True, False, 0, 5, 'a', 'B'
        -- Változók: kisbetük, x, y, z, a, b, c
        -- Joker: _ -> pl: alma _ _ = 5

    -- logikai és müvelet
    (&&&) :: Bool -> Bool -> Bool
    (&&&) True True = True
    (&&&) _ _ = False

    (|||) :: Bool -> Bool -> Bool
    (|||) False False = False
    (|||) _ _ = True

    isZero :: Integer -> Bool
    isZero 0 = True
    isZero _ = False

    isAorB :: Char -> Bool
    isAorB 'A' = True
    isAorB 'B' = True
    isAorB _ = False

    -- lusta kiértékelés, kiértékeli 1 == 0 && -ig, a többit nem veszi figyelembe
    --  1 == 0 && 1 `div` 0 == 0

    -- mohó
    {-
    f a b = 2 * a + b
    g z = y + 2

    f (g 3) (g 2)
    f(3 + 2) (2 + 2)
    f 5 4
    2 * 5 + 4
    14
    -}

    -- lusta
    {-
    f a b = 2 * a + b
    g z = y + 2
    
    f (g 3) (g 2)
    2* (g 3) + (g 2)
    2 * (3 + 2) + (g 2)
    2 * 5 + (g 2)
    10 + (g 2)
    10 + 4
    14
    -}

    -- tuple
    -- (4,5,3,4)
    -- (Integer, Ingeter)
    -- (kulcs: érték)
    -- (Integer: Char)

    -- fst (első értéket visszaadja)
    -- snd (másodikat)

    sum2 :: (Integer, Integer) -> Integer
    sum2 (x,y) = x + y

    incBoth :: (Integer, Double) -> (Integer, Double)
    -- incBoth tuple = (fst tuple + 1, snd tuple + 1) 
    incBoth (x,y) = (x + 1, y + 1)
    