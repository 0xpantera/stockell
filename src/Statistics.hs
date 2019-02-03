{-# LANGUAGE DeriveAnyClass #-}
module Statistics (
  Statistic(..),
  StatEntry (..),
  StatQFieldData, StatInfo, statInfo) where

import Data.Ord (comparing)
import Data.Foldabe (minimumBy, maximumBy)
import Data.Time (diffDays)

import BoundedEnum
import QuoteData
