module Rzh2 where

    isLargerThan :: (Integer, Integer) -> Int -> Bool
    isLargerThan (x, y) b =   x `mod`  y > fromIntegral b
