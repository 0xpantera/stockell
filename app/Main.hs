{-# LANGUAGE RecordWildCards #-}
module Main where

import Control.Monad (when)
import qualified Data.Text.IO as TIO
import qualified Data.ByteString.Lazy as BL (readFile)
import Data.Csv (decodeByName)

import QuoteData
import Statistics
import StatReport
import Charts
import Params
  
main :: IO ()
main = print "Implement"
