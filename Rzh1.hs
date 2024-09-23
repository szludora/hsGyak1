module Rzh1 where

    incTwo:: Integer -> Integer
    incTwo a = a + 2

    double :: Integer -> Integer
    double a = a * 2

    twelve :: Integer
    twelve = double(incTwo(double(incTwo 0)))