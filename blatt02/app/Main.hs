module Main where

import Lib
import System.IO (hSetBuffering, BufferMode(NoBuffering), stdout)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  print (maximum $ map length ["Otto", "Anja", "Eine güldne, gute Tugend: Lüge nie!", "Blablablablababababsjkd dkjdkjdkjsdsn."])
