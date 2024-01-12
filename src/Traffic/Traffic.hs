{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE DataKinds #-}

module Traffic.Traffic (traffic) where

import Copilot.Arduino (arduino, constant, MilliSeconds (MilliSeconds), (=:), delay, IO, Monad ((>>)), Num (fromInteger), ($), Int, Bool (True, False), Stream, replicate, (++), not)
import Copilot.Arduino.Uno (pin2, pin3)

traffic :: IO ()
traffic = arduino $ do
  pin2 =: longBlinking 4
  pin3 =: not (longBlinking 4)
  delay =: MilliSeconds (constant 1000)

longBlinking :: Int -> Stream Bool
longBlinking n = lb
  where lb = replicate n False ++ replicate n True ++ lb
