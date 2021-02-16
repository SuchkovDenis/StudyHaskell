module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "Hello world"

add x y = x + y

double x = x + x

quadruple x = double (double x)

factorial n = product [1 .. n]

average ns = sum ns `div` length ns -- тоже самое что div (sum ns) (length ns)

a = b + c
    where
        b = 1
        c = 2

poly x = let
    y = x + 1
    in y * y

sumEvenOdds xs = sum (incr (evens xs))
    where
        incr xs = map (+1) xs
        evens xs = filter even xs
