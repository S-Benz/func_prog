module Lib (palindrome, palindromePhrase, doubleEven, maxPalindrom) where

import Data.Bool
import Data.Char

palindrome :: String -> Bool
palindrome s =
               let lowercaseStr = map toLower s
               in lowercaseStr == (reverse lowercaseStr)

replChar :: Char -> Char
replChar '!' = ' '
replChar '?' = ' '
replChar '.' = ' '
replChar ':' = ' '
replChar ',' = ' '
replChar c = c

palindromePhrase :: String -> Bool
palindromePhrase p =
                     let lowercasePhrase = concat $ words $ map replChar $ map toLower p
                     in lowercasePhrase == (reverse lowercasePhrase)

doubleEven :: [Integer] -> [Integer]
doubleEven loi = [x*2 | x <- loi, even x]

maxPalindrom :: [String] -> Int
maxPalindrom l = maximum $ map length [lop | lop <- l, palindromePhrase lop]
