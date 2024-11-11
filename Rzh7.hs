module Rzh7 where

    safeMod :: Integral a => a -> a -> Maybe a
    safeMod x 0 = Nothing
    safeMod x y = Just (mod x y)
    