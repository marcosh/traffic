{-# LANGUAGE RebindableSyntax #-}

module Traffic.Traffic (traffic) where

import Copilot.Arduino (arduino, constant, MilliSeconds (MilliSeconds), (=:), blinking, led, delay, IO, Monad ((>>)), Num (fromInteger), ($))

traffic :: IO ()
traffic = arduino $ do
  led =: blinking
  delay =: MilliSeconds (constant 100)
