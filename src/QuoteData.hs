{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE DeriveGeneric, DeriveAnyClass #-}

import Data.Fixed (HasResolution (..), Fixed)
import Data.Time (Day, parseTimeM, defaultTimeLocale)
import Safe (readDef)
import Data.ByteString.Char8 (unpack)
import GHC.Generics (Generic)
import Data.Csv (FromNamedRecord, FromField (..))


