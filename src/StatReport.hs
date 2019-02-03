{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}

module StatReport (statReport, showStatEntryValue) where

import Data.Fixed (showFixed)
import Data.Text (Text)
import Fmt

import QuoteData
import Statistics

