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


data Statistic =  Mean | Min | Max | Days
  deriving (Show, Eq, Enum, Bounded, BoundedEnum)


data StatEntry = StatEntry { stat :: Statistic,
                             qfield :: QField,
                             value :: Fixed4 }


type StatQFieldData = (Qfield, [StatEntry])
type StatInfo = [StatQFieldData]



