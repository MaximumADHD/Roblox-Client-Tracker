-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/expect/src/utils.ts
-- /**
-- * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
-- *
-- * This source code is licensed under the MIT license found in the
-- * LICENSE file in the root directory of this source tree.
-- *
-- */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local RegExp = require(Packages.RegExp)

local RobloxShared = require(Packages.RobloxShared)

-- ROBLOX deviation: omitted isPrimitive import
local jasmineUtils = require(CurrentModule.jasmineUtils)
local equals = jasmineUtils.equals
-- ROBLOX deviation: omitted isA, isImmutableUnorderedKeyed, isImmutableUnorderedSet

type Array<T> = LuauPolyfill.Array<T>

-- ROBLOX deviation start: predefine variables
local pathAsArray
-- ROBLOX deviation end

type GetPath = {
	hasEndProp: boolean?,
	lastTraversedObject: any,
	traversedPath: Array<string>,
	value: any?,
}

-- ROBLOX deviation: helper function moved to RobloxShared and no longer needed here
-- local hasPropertyInObject = RobloxShared.expect.hasPropertyInObject

local function getPath(object: { [string]: any }, propertyPath): GetPath
	if not Array.isArray(propertyPath) then
		propertyPath = pathAsArray(propertyPath)
	end

	if #propertyPath > 0 then
		local lastProp = #propertyPath == 1
		local prop = propertyPath[1]

		-- We need this code block in Lua since attempting object[prop] on a non-table
		-- will throw an error
		local ok, res = pcall(function()
			return object[prop]
		end)

		local newObject = res

		if not ok or (not lastProp and newObject == nil) then
			-- This is not the last prop in the chain. If we keep recursing
			-- we will get a nil access error. At this point we know that the
			-- chain has broken and we can return right away.
			return {
				hasEndProp = false,
				lastTraversedObject = object,
				traversedPath = {},
			}
		end

		local result = getPath(newObject, Array.slice(propertyPath, 2))

		if result.lastTraversedObject == nil then
			result.lastTraversedObject = object
		end

		table.insert(result.traversedPath, 1, prop)

		if lastProp then
			result.hasEndProp = newObject ~= nil

			if not result.hasEndProp then
				Array.shift(result.traversedPath)
			end
		end

		return result
	end

	return {
		lastTraversedObject = nil,
		traversedPath = {},
		value = object,
	}
end

-- ROBLOX deviation: moved to RobloxShared to avoid reaching into internals with rotriever workspaces
local getObjectSubset = RobloxShared.expect.getObjectSubset

-- ROBLOX deviation: omitted IteratorSymbol

-- ROBLOX deviation: currently unused so we comment out hasIterator
-- local function hasIterator(object: any): boolean
-- 	-- technically just the typeof(object) == table check would be sufficient
-- 	-- but to be more accurate we should return true for all types that can be
-- 	-- iterated over in Lua (string and table)
-- 	return typeof(object) == "table" or typeof(object) == "string"
-- end

local iterableEquality = RobloxShared.expect.iterableEquality

-- ROBLOX deviation: helper function moved to RobloxShared and no longer needed here
-- local isObject = RobloxShared.expect.isObject
-- local isObjectWithKeys = RobloxShared.expect.isObjectWithKeys

local subsetEquality = RobloxShared.expect.subsetEquality

local function typeEquality(a: any, b: any): boolean | nil
	if a == nil or b == nil then
		return nil
	end

	if typeof(a) ~= typeof(b) then
		return false
	end

	if not getmetatable(a) and not getmetatable(b) then
		return nil
	end

	if
		getmetatable(a)
		and getmetatable(b)
		and getmetatable(a).__index
		and getmetatable(b).__index
		and getmetatable(a).__index == getmetatable(b).__index
	then
		return nil
	end

	return false
end

-- ROBLOX deviation START: skipped as Lua doesn't support ArrayBuffer
-- type unknown = any

-- local function arrayBufferEquality(
-- 	a: unknown,
-- 	b: unknown
-- ): boolean | nil
-- 	if
-- 		not Boolean.toJSBoolean(
-- 			error('not implemented') --[[ ROBLOX TODO: Unhandled node for type: BinaryExpression ]] --[[ a instanceof ArrayBuffer ]]
-- 		)
-- 		or not Boolean.toJSBoolean(
-- 			error('not implemented') --[[ ROBLOX TODO: Unhandled node for type: BinaryExpression ]] --[[ b instanceof ArrayBuffer ]]
-- 		)
-- 	then
-- 		return nil
-- 	end
-- 	local dataViewA = DataView.new(a)
-- 	local dataViewB = DataView.new(b)
-- 	-- Buffers are not equal when they do not have the same byte length
-- 	if dataViewA.byteLength ~= dataViewB.byteLength then
-- 		return false
-- 	end
-- 	-- Check if every byte value is equal to each other
-- 	local i = 0
-- 	while i < dataViewA.byteLength do
-- 		if dataViewA:getUint8(i) ~= dataViewB:getUint8(i) then
-- 			return false
-- 		end
-- 		i += 1
-- 	end
-- 	return true
-- end
-- ROBLOX deviation END

local function sparseArrayEquality(a: any, b: any): boolean | nil
	if not Array.isArray(a) or not Array.isArray(b) then
		return nil
	end

	local aKeys = Object.keys(a)
	local bKeys = Object.keys(b)

	return  --[[
			ROBLOX TODO: (ADO-1217) replace the line below
			once Map/Set functionality is implemented

			--equals(a, b, {iterableEquality, typeEquality}, true) and
		]]equals(a, b, { typeEquality }, true) and equals(aKeys, bKeys)
end

local function partition<T>(items: Array<T>, predicate: (T) -> boolean): { [number]: Array<T> }
	local result = { {}, {} }

	for _, item in ipairs(items) do
		table.insert(result[predicate(item) and 1 or 2], item)
	end

	return result
end

function pathAsArray(propertyPath: string): Array<any>
	-- will match everything that's not a dot or a bracket, and "" for consecutive dots.
	local pattern = RegExp("[^.[\\]]+|(?=(?:\\.)(?:\\.|$))") -- ROBLOX TODO: add 'g' flag when supported
	local properties: Array<string | number> = {}

	-- Because the regex won't match a dot in the beginning of the path, if present.
	if propertyPath:sub(1, 1) == "." then
		table.insert(properties, "")
	end

	--[[
		ROBLOX deviation: implement the following logic without using String.protorype.replace functionality
		original code:
		propertyPath.replace(pattern, match => {
		  properties.push(match);
		  return match;
		});
	]]
	local totalLength = 0
	local propertyPath_ = propertyPath
	local match = pattern:exec(propertyPath_)
	while match ~= nil and totalLength < #propertyPath do
		local wholeMatch = match[1]
		local wholeMatchEnd = match.index + #wholeMatch
		local matchIndex = totalLength + match.index
		local prevChar = propertyPath:sub(matchIndex - 1, matchIndex - 1)

		-- ROBLOX NOTE: for `[digit]` syntax we need to parse to number so that array indexing works correctly in Lua
		if prevChar == "[" then
			local matchNumber = tonumber(wholeMatch, 10)
			if matchNumber then
				table.insert(properties, matchNumber)
			else
				table.insert(properties, wholeMatch)
			end
		else
			table.insert(properties, wholeMatch)
		end
		totalLength += wholeMatchEnd

		propertyPath_ = propertyPath_:sub(wholeMatchEnd + 1)
		match = pattern:exec(propertyPath_)
	end
	-- ROBLOX deviation END

	return properties
end

local function isError(value: any): any
	-- Although strings and tables are not errors, they are the types that
	-- can be used to trigger an error in Lua so we treat them as the "error"
	-- types
	if typeof(value) == "string" or typeof(value) == "table" then
		return true
	end

	return false
end

local function emptyObject(obj: any): boolean
	return typeof(obj) == "table" and #Object.keys(obj) == 0 or false
end

local MULTILINE_REGEXP = "[\r\n]"

local function isOneline(expected: any, received: any): boolean
	return typeof(expected) == "string"
		and typeof(received) == "string"
		and (not received:match(MULTILINE_REGEXP) or not expected:match(MULTILINE_REGEXP))
end

--[[
	ROBLOX TODO: (ADO-1217) uncomment the iterableEquality export once the
	function has been properly implemented
]]
return {
	getPath = getPath,
	getObjectSubset = getObjectSubset,
	iterableEquality = iterableEquality,
	subsetEquality = subsetEquality,
	-- ROBLOX deviation: Roblox Instance matchers
	-- ROBLOX TODO: uncomment when implementing snapshot property matchers on Instances
	-- instanceSubsetEquality = RobloxShared.RobloxInstance.instanceSubsetEquality,
	typeEquality = typeEquality,
	-- ROBLOX deviation: skipped as Lua doesn't support ArrayBuffer
	-- arrayBufferEquality = arrayBufferEquality,
	sparseArrayEquality = sparseArrayEquality,
	partition = partition,
	pathAsArray = pathAsArray,
	isError = isError,
	emptyObject = emptyObject,
	isOneline = isOneline,
}
