-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/eventHandler.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

-- ROBLOX deviation START: moved implementation to `combined.lua` to avoid cyclic dependencies
local combinedModule = require(script.Parent.combined)
local exports = {}

exports.default = combinedModule.eventHandler
-- ROBLOX deviation END

return exports
