module Charts (plotChart) where

import Data.Foldable (traverse_, toList)
import Graphics.Rendering.Chart.Easy (plot, line, (.=), layout_title)
import Graphics.Rendering.Chart.Backend.Diagrams (toFile,
                                                  loadSansSerifFonts,
                                                  FileOptions (..),
                                                  FileFormat (SVG))


import QuoteData

