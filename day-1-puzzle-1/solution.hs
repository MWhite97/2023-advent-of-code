module Main
  ( main,
  )
where

import Data.Char (digitToInt, isDigit)
import Data.List (find)
import Data.Maybe (maybe)

main :: IO ()
main = do
  let filePath = "advent-of-code-day-1-puzzle-1.txt"
  content <- readFile filePath
  let linesOfFile = lines content
  let firstSum = sum $ map getFirstDigit linesOfFile
  let lastSum = sum $ map getLastDigit linesOfFile
  let total = 10 * firstSum + lastSum
  print total

getFirstDigit :: String -> Int
getFirstDigit = maybe 0 digitToInt . find isDigit

getLastDigit :: String -> Int
getLastDigit = maybe 0 digitToInt . find isDigit . reverse
