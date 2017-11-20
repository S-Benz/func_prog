module Main where

import Lib
import System.IO (hSetBuffering, BufferMode(NoBuffering), stdout)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  putStr "Geben Sie bitte eine Zahl ein (0 == Ende): "
  number <- readLn :: IO Double
  putStrLn ("square(" ++ show number ++ ") = " ++ show (square number))
  if number == 0
    then putStrLn "Ciao!"
    else main
