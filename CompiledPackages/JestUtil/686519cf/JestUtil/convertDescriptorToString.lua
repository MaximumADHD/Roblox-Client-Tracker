-- ROBLOX upstream: https://github.com/facebook/jest/tree/v28.0.0/packages/jest-util/src/convertDescriptorToString.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- local Boolean = LuauPolyfill.Boolean
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
local function convertDescriptorToString<T>(descriptor: T): string
	local condition_ = typeof(descriptor)
	if condition_ == "function" then
		-- ROBLOX deviation START: using Lua specific implementation for retrieving function name
		-- if Boolean.toJSBoolean(descriptor.name) then
		-- 	return descriptor.name
		-- end
		local name = String.trim(debug.info(descriptor :: any, "n"))
		if name ~= nil and name ~= "" then
			return name
		end
		-- ROBLOX deviation END
	elseif condition_ == "number" or descriptor == nil then
		return ("%s"):format(tostring(descriptor))
	elseif condition_ == "string" then
		-- ROBLOX deviation START: descriptor should be inferred as string from branch
		-- return descriptor
		return (descriptor :: unknown) :: string
		-- ROBLOX deviation END
	end

	-- ROBLOX deviation START: using Lua specific implementation for retrieving function name
	local descriptorString
	if typeof(descriptor) == "function" then
		descriptorString = "[Function anonymous]"
	else
		descriptorString = tostring(descriptor)
	end
	-- ROBLOX deviation END

	error(Error.new(
		-- ROBLOX deviation START: remove "class" verbiage and from error message
		-- and substitute function tostring with variable
		("Invalid first argument, %s. It must be a named function, number, or string."):format(descriptorString)
		-- ROBLOX deviation END
	))
end
exports.default = convertDescriptorToString
return exports
