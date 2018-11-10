
import Data.Functor

main = do
  principal    <- read <$> getLine
  interestRate <- read <$> getLine
  years        <- read <$> getLine
  putStrLn $ show $ interest principal interestRate years

interest principal interestRate years =
  principal * ((1 + interestRate / 100) ^ years)

