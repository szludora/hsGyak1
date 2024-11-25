module Rzh11 where

    multiplyPositives :: [Integer] -> [Integer]
    multiplyPositives [] = []
    multiplyPositives (x:xs) = ((filter (>0) x) *10) 