-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-get-type/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local Packages = script.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
local instanceof = LuauPolyfill.instanceof
local RegExp
local Set = LuauPolyfill.Set
local Map = LuauPolyfill.Map

local function isRobloxBuiltin(value: any): boolean
	return type(value) ~= typeof(value)
end

local function getType(value: any): string
	if value == nil then
		return "nil"
	end
	if typeof(value) == "boolean" then
		return "boolean"
	end
	if typeof(value) == "function" then
		return "function"
	end
	if typeof(value) == "number" then
		return "number"
	end
	if typeof(value) == "string" then
		return "string"
	end
	if typeof(value) == "DateTime" then
		return "DateTime"
	end
	if typeof(value) == "userdata" and tostring(value):match("Symbol%(.*%)") then
		return "symbol"
	end
	if typeof(value) == "table" then
		local ok, hasRegExpShape = pcall(function()
			return typeof(value.test) == "function" and typeof(value.exec) == "function"
		end)
		if ok and hasRegExpShape then
			RegExp = require(Packages.RegExp)

			if instanceof(value, RegExp) then
				return "regexp"
			end
		end
	end
	if instanceof(value, Error) then
		return "error"
	end
	if instanceof(value, Map) then
		return "map"
	end
	if instanceof(value, Set) then
		return "set"
	end
	if typeof(value) == "table" then
		return "table"
	end

	if isRobloxBuiltin(value) then
		return typeof(value)
	end

	if type(value) == "userdata" then
		return "userdata"
	end
	if typeof(value) == "thread" then
		return "thread"
	end
	error(string.format("value of unknown type: %s (%s)", typeof(value), tostring(value)))
end

local function isPrimitive(value: any): boolean
	return typeof(value) ~= "table" and typeof(value) ~= "function" and not isRobloxBuiltin(value)
end

return {
	getType = getType,
	isPrimitive = isPrimitive,
	isRobloxBuiltin = isRobloxBuiltin,
}
