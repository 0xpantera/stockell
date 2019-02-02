{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE DeriveGeneric, DeriveAnyClass #-}

import Data.Fixed (HasResolution (..), Fixed)
import Data.Time (Day, parseTimeM, defaultTimeLocale)
import Safe (readDef)
import Data.ByteString.Char8 (unpack)
import GHC.Generics (Generic)
import Data.Csv (FromNamedRecord, FromField (..))


data E4

instance HasResolution E4 where
  resolution _ = 10000


type Fixed4 = Fixed E4


data QuoteData = QuoteData { day :: Day
                           , close :: Fixed4
                           , volume :: Fixed4
                           , open :: Fixed4
                           , high :: Fixed4
                           , low :: Fixed4 } deriving (Generic, FromNamedRecord)


instance FromField Fixed4 where
  parseField s = pure $ readDef 0 $ unpack s


instance FromField Day where
  parseField s = parseTimeM False defaultTimeLocale "%Y/%m/%d" (unpack s)


data QField = Open | Close | High | Low | Volume
  deriving (Show, Enum, Bounded, BoundedEnum)

