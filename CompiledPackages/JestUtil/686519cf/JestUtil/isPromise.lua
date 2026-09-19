-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/isPromise.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local Promise = require(Packages.Promise)

local exports = {}

local function isPromise(
	candidate: unknown
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ candidate is Promise<unknown> ]]
	-- ROBLOX deviation: using Promise library implementation to check if a variable is a Promise
	return Promise.is(candidate)
end
exports.default = isPromise
return exports
