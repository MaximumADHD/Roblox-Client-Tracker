-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-config/src/validatePattern.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local RegExp = require(Packages.RegExp)

local exports = {}

local function validatePattern(pattern: string?): boolean
	if pattern ~= nil and Boolean.toJSBoolean(pattern) then
		local ok = pcall(function()
			-- eslint-disable-next-line no-new
			RegExp(pattern, "i")
		end)
		if not ok then
			return false
		end
	end
	return true
end
exports.default = validatePattern
return exports
