--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/inspect.js
local HttpService = game:GetService("HttpService")

local jsutils = script.Parent
local srcWorkspace = jsutils.Parent
local graphql = jsutils.Parent
local Packages = graphql.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local NULL = require(srcWorkspace.luaUtils.null)

local MAX_ARRAY_LENGTH = 10
local MAX_RECURSIVE_DEPTH = 2

-- deviation: pre-declare functions
local formatValue
local formatObjectValue
local formatArray
local formatObject
local getObjectTag

--[[
 * Used to print values in error messages.
 ]]
local function inspect(value): string
	return formatValue(value, {})
end

function formatValue(value, seenValues)
	local valueType = typeof(value)
	if valueType == "string" then
		return HttpService:JSONEncode(value)
		-- deviation: format numbers like in JS
	elseif valueType == "number" then
		if value ~= value then
			return "NaN"
		elseif value == math.huge then
			return "Infinity"
		elseif value == -math.huge then
			return "-Infinity"
		else
			return tostring(value)
		end
	elseif valueType == "function" then
		-- deviation: functions don't have names in Lua
		return "[function]"
	elseif valueType == "table" then
		if value == NULL then
			return "null"
		end
		return formatObjectValue(value, seenValues)
	else
		return tostring(value)
	end
end

function formatObjectValue(value, previouslySeenValues)
	if table.find(previouslySeenValues, value) ~= nil then
		return "[Circular]"
	end

	local seenValues = { unpack(previouslySeenValues) }
	table.insert(seenValues, value)

	if typeof(value.toJSON) == "function" then
		local jsonValue = value:toJSON(value)

		if jsonValue ~= value then
			if typeof(jsonValue) == "string" then
				return jsonValue
			else
				return formatValue(jsonValue, seenValues)
			end
		end
	elseif Array.isArray(value) then
		return formatArray(value, seenValues)
	end

	return formatObject(value, seenValues)
end

function formatObject(object, seenValues)
	local keys = Object.keys(object)

	if #keys == 0 then
		return "{}"
	end
	if #seenValues > MAX_RECURSIVE_DEPTH then
		return "[" .. getObjectTag(object) .. "]"
	end

	local properties = {}
	for i = 1, #keys do
		local key = keys[i]
		local value = formatValue(object[key], seenValues)

		properties[i] = key .. ": " .. value
	end

	return "{ " .. table.concat(properties, ", ") .. " }"
end

function formatArray(array: Array<any>, seenValues: Array<any>): string
	local length = #array
	if length == 0 then
		return "[]"
	end
	if #seenValues > MAX_RECURSIVE_DEPTH then
		return "[Array]"
	end

	local len = math.min(MAX_ARRAY_LENGTH, length)
	local remaining = length - len
	local items = {}

	for i = 1, len do
		items[i] = (formatValue(array[i], seenValues))
	end

	if remaining == 1 then
		table.insert(items, "... 1 more item")
	elseif remaining > 1 then
		table.insert(items, ("... %d more items"):format(remaining))
	end

	return "[" .. table.concat(items, ", ") .. "]"
end

function getObjectTag(_object): string
	-- local tag = Object.prototype.toString
	-- 	.call(object)
	-- 	.replace("")
	-- 	.replace("")

	-- if tag == "Object" and typeof(object.constructor) == "function" then
	-- 	local name = object.constructor.name

	-- 	if typeof(name) == "string" and name ~= "" then
	-- 		return name
	-- 	end
	-- end

	-- return tag
	return "Object"
end

return {
	inspect = inspect,
}
