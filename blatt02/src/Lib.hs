module Lib (palindrome, palindromePhrase) where

import Data.Bool
import Data.Char
import Data.List.Split

palindrome :: String -> Bool
palindrome s =
               let lowercaseStr = map toLower s
               in lowercaseStr == (reverse lowercaseStr)

palindromePhrase :: String -> Bool
palindromePhrase p =
                     let lowercaseP = map toLower p
                         lowercasePhrase = splitOn " " lowercaseP
                     in p == p
