--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
-- derived from these upstream sources:
-- https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/inspect.js
local HttpService = game:GetService("HttpService")

local Collections = script.Parent
local Packages = Collections.Parent

local isArray = require(Collections.Array.isArray)
local ES7Types = require(Packages.ES7Types)

type Array<T> = ES7Types.Array<T>
-- local NULL = require(srcWorkspace.luaUtils.null)

-- Support for options partial implementation
-- see: https://nodejs.org/dist/latest-v16.x/docs/api/util.html#utilinspectobject-options
export type InspectOptions = {
	depth: number?,
}

type FormatOptions = {
	depth: number,
}

local MAX_ARRAY_LENGTH = 10
local DEFAULT_RECURSIVE_DEPTH = 2

-- deviation: pre-declare functions
local formatValue
local formatObjectValue
local formatArray
local formatObject
local getObjectTag

--[[
 * Used to print values in error messages.
 ]]
local function inspect(value, options: InspectOptions?): string
	local inspectOptions: InspectOptions = options or { depth = DEFAULT_RECURSIVE_DEPTH }
	local depth = inspectOptions.depth or DEFAULT_RECURSIVE_DEPTH
	inspectOptions.depth = if depth >= 0 then depth else DEFAULT_RECURSIVE_DEPTH
	return formatValue(value, {}, inspectOptions :: FormatOptions)
end

local function isIndexKey(k, contiguousLength)
	return type(k) == "number"
		and k <= contiguousLength -- nothing out of bounds
		and 1 <= k -- nothing illegal for array indices
		and math.floor(k) == k -- no float keys
end

local function getTableLength(tbl)
	local length = 1
	local value = rawget(tbl, length)
	while value ~= nil do
		length += 1
		value = rawget(tbl, length)
	end
	return length - 1
end

local function sortKeysForPrinting(a: any, b)
	local typeofA = type(a)
	local typeofB = type(b)

	-- strings and numbers are sorted numerically/alphabetically
	if typeofA == typeofB and (typeofA == "number" or typeofA == "string") then
		return a < b
	end

	-- sort the rest by type name
	return typeofA < typeofB
end

local function rawpairs(t)
	return next, t, nil
end

local function getFragmentedKeys(tbl)
	local keys = {}
	local keysLength = 0
	local tableLength = getTableLength(tbl)
	for key, _ in rawpairs(tbl) do
		if not isIndexKey(key, tableLength) then
			keysLength = keysLength + 1
			keys[keysLength] = key
		end
	end
	table.sort(keys, sortKeysForPrinting)
	return keys, keysLength, tableLength
end

function formatValue(value, seenValues, options: FormatOptions)
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
		local result = "[function"
		local functionName = debug.info(value :: (any) -> any, "n")
		if functionName ~= nil and functionName ~= "" then
			result ..= " " .. functionName
		end
		return result .. "]"
	elseif valueType == "table" then
		-- ROBLOX TODO: parameterize inspect with the library-specific NULL sentinel. maybe function generics?
		-- if value == NULL then
		-- 	return 'null'
		-- end
		return formatObjectValue(value, seenValues, options)
	else
		return tostring(value)
	end
end

function formatObjectValue(value, previouslySeenValues, options: FormatOptions)
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
				return formatValue(jsonValue, seenValues, options)
			end
		end
	elseif isArray(value) then
		return formatArray(value, seenValues, options)
	end

	return formatObject(value, seenValues, options)
end

function formatObject(object, seenValues, options: FormatOptions)
	local result = ""
	local mt = getmetatable(object)
	if mt and rawget(mt, "__tostring") then
		return tostring(object)
	end

	local fragmentedKeys, fragmentedKeysLength, keysLength = getFragmentedKeys(object)

	if keysLength == 0 and fragmentedKeysLength == 0 then
		result ..= "{}"
		return result
	end
	if #seenValues > options.depth then
		result ..= "[" .. getObjectTag(object) .. "]"
		return result
	end

	local properties = {}
	for i = 1, keysLength do
		local value = formatValue(object[i], seenValues, options)

		table.insert(properties, value)
	end

	for i = 1, fragmentedKeysLength do
		local key = fragmentedKeys[i]
		local value = formatValue(object[key], seenValues, options)

		table.insert(properties, key .. ": " .. value)
	end

	result ..= "{ " .. table.concat(properties, ", ") .. " }"
	return result
end

function formatArray(array: Array<any>, seenValues: Array<any>, options: FormatOptions): string
	local length = #array
	if length == 0 then
		return "[]"
	end
	if #seenValues > options.depth then
		return "[Array]"
	end

	local len = math.min(MAX_ARRAY_LENGTH, length)
	local remaining = length - len
	local items = {}

	for i = 1, len do
		items[i] = (formatValue(array[i], seenValues, options))
	end

	if remaining == 1 then
		table.insert(items, "... 1 more item")
	elseif remaining > 1 then
		table.insert(items, ("... %s more items"):format(tostring(remaining)))
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

return inspect
