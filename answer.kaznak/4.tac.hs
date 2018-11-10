
main = do
  cont <- getContents
  putStr $ unlines $ reverse $ lines cont
