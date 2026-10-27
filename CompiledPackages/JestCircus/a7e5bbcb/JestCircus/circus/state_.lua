-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/state.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

-- ROBLOX deviation: moved implementation from `state.lua` to avoid cyclic dependencies
local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent

local typesModule = require(Packages.JestTypes)
type Circus_State = typesModule.Circus_State

local STATE_SYM = require(script.Parent.types).STATE_SYM

local exports = {}

local ROOT_DESCRIBE_BLOCK_NAME = "ROOT_DESCRIBE_BLOCK"
exports.ROOT_DESCRIBE_BLOCK_NAME = ROOT_DESCRIBE_BLOCK_NAME

local function getState(): Circus_State
	return _G[STATE_SYM]
end
exports.getState = getState

return exports
