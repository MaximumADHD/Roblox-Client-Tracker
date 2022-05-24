-- ROBLOX upstream: https://github.com/facebook/jest/tree/v27.4.7/packages/jest-util/src/convertDescriptorToString.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
local String = LuauPolyfill.String
local exports = {}

--[[ eslint-disable local/ban-types-eventually ]]

-- See: https://github.com/facebook/jest/pull/5154
--[[
	ROBLOX FIXME: add extends if supported:
	original code:
	export default function convertDescriptorToString<
	  T extends number | string | Function | undefined,
	>
]]
local function convertDescriptorToString<T>(descriptor: T): T | string
	if typeof(descriptor) == "string" or typeof(descriptor) == "number" or descriptor == nil then
		return descriptor
	end

	if typeof(descriptor) ~= "function" then
		-- ROBLOX deviation: remove "class" from error message
		error(Error.new("describe expects a function, number, or string."))
	end

	-- ROBLOX deviation START: using Lua specific implementation for retrieving function name
	local name = String.trim(debug.info(descriptor :: any, "n"))

	if name ~= nil and name ~= "" then
		return name
	end

	return "[Function anonymous]"
	-- ROBLOX deviation END
end
exports.default = convertDescriptorToString
return exports
