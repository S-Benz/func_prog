module Main where

import Lib
import System.IO (hSetBuffering, BufferMode(NoBuffering), stdout)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  putStr "Geben Sie bitte einen String ein: "
  palindr <- getLine
  let isPal = palindrome palindr
  if isPal
    then putStrLn (palindr ++ " ist ein Palindrom!")
    else putStrLn (palindr ++ " ist kein Palindrom!")
