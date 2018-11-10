{-# LANGUAGE ScopedTypeVariables #-}

import Data.Functor

main = do
  principal    <- read <$> getLine
  interestRate <- read <$> getLine
  years        <- read <$> getLine
  putStrLn $ show $ interest principal interestRate years

interest :: Double -> Double -> Integer -> Double
interest principal interestRate years =
  principal * ((1 + interestRate / 100) ^ years)

{-
main = do
  principal    <- getLine >>= (\s -> read s :: IO Double)
  interestRate <- getLine >>= (\s -> read s :: IO Double)
  years        <- getLine >>= (\s -> read s :: IO Double)
  putStrLn $ show $ interest principal interestRate years

-}
