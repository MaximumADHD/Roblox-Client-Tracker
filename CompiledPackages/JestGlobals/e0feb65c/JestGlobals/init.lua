-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

-- ROBLOX deviation START: add export for additional Expect types
local Packages = script.Parent
local ExpectModule = require(Packages.Expect)
export type MatcherState = ExpectModule.MatcherState
export type ExpectExtended<E, State = MatcherState> = ExpectModule.ExpectExtended<E, State>
-- ROBLOX deviation END

return require(script.index)
