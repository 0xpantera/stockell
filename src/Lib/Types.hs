module Lib.Types where


import Data.Fixed
import Data.Time

data E4

instance HasResolution E4 where
  resolution _ = 10000

type Fixed4 = Fixed E4


data QuoteData = QuoteData { day :: Day
                           , close :: Fixed4
                           , volume :: Fixed4
                           , open :: Fixed4
                           , high :: Fixed4
                           , low :: Fixed4 }
