module Gyak1 where
    -- comment 
    -- ctrl + ü
    
    {-
    multi line
    shift + alt + a
    -}

        -- tipusszignatúra
    one :: Int          -- architetúra függő mekkora  
    one = 1

    three :: Integer    -- végtelenségig
    three = undefined

    -- (-) (+) (*)
    {-
    prefix 
    mod 4 5; (+) 3 4
    
    infix 4 + 5 
    -}

    negativeOne :: Integer
    negativeOne = -1

    -- Float, Double

    half :: Float
    half = 0.5

    quarter :: Double
    quarter = 0.25

    -- {/} mod div
    
    -- utolsó a visszatérési érték, előtte meg paraméter
    divByThree :: Integer -> Integer
    divByThree x = div x 3

    a :: Char
    a = 'a'
    -- pred, succ
    -- toEnum, fromEnum

    true :: Bool
    true = undefined

    false :: Bool
    false = False

    -- (not), &&, ||

    inc :: Int -> Int
    inc x = x + 1 

    double :: Int -> Int
    double x = x * 2

    -- sorrendnek is van jelentősége a paraméterezésben
    isDivisibleBy :: Int -> Int -> Bool
    isDivisibleBy n k = n `mod` k == 0

    greater :: Int -> Int -> Bool
    greater n k = n > k