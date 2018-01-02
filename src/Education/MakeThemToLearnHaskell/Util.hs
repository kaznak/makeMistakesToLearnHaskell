{-# OPTIONS_GHC -Wno-unused-imports #-}

module Education.MakeThemToLearnHaskell.Util  where


#include <imports/external.hs>


dieWhenNothing :: String -> Maybe a -> IO a
dieWhenNothing _ (Just x) = return x
dieWhenNothing msg _ = die msg


die :: String -> IO a
die msg = Exit.die $ appName ++ ": ERROR: " ++ msg


throwWhenLeft :: Exception e => Either e a -> IO a
throwWhenLeft = either throwIO return


-- TODO: Is this the suitable module?
appName :: String
appName = "mtlh"