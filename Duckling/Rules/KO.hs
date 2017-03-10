-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.


{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}

module Duckling.Rules.KO
  ( rules
  ) where

import Duckling.Dimensions.Types
import qualified Duckling.Distance.KO.Rules as Distance
import qualified Duckling.Duration.KO.Rules as Duration
import qualified Duckling.Finance.KO.Rules as Finance
import qualified Duckling.Number.KO.Rules as Number
import qualified Duckling.Ordinal.KO.Rules as Ordinal
import qualified Duckling.Quantity.KO.Rules as Quantity
import qualified Duckling.Temperature.KO.Rules as Temperature
import qualified Duckling.Time.KO.Rules as Time
import qualified Duckling.TimeGrain.KO.Rules as TimeGrain
import Duckling.Types
import qualified Duckling.Volume.KO.Rules as Volume

rules :: Some Dimension -> [Rule]
rules (Some Distance) = Distance.rules
rules (Some Duration) = Duration.rules
rules (Some DNumber) = Number.rules
rules (Some Email) = []
rules (Some Finance) = Finance.rules
rules (Some Ordinal) = Ordinal.rules
rules (Some PhoneNumber) = []
rules (Some Quantity) = Quantity.rules
rules (Some RegexMatch) = []
rules (Some Temperature) = Temperature.rules
rules (Some Time) = Time.rules
rules (Some TimeGrain) = TimeGrain.rules
rules (Some Url) = []
rules (Some Volume) = Volume.rules