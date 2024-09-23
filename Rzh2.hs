module Rzh2 where

    isLargerThan :: (Integer, Integer) -> Int -> Bool
    isLargerThan (x, y) b = mod x y > fromIntegral b
