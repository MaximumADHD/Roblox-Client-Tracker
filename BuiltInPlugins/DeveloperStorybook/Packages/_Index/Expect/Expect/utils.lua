-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/utils.ts
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

local RobloxShared = require(Packages.RobloxShared)

-- deviation: omitted isPrimitive import
local jasmineUtils = require(CurrentModule.jasmineUtils)
local equals = jasmineUtils.equals
-- deviation: omitted isA, isImmutableUnorderedKeyed, isImmutableUnorderedSet

type Array<T> = { T };

type GetPath = {
	hasEndProp: boolean?,
	lastTraversedObject: any,
	traversedPath: Array<string>,
	value: any?
}

-- deviation: helper function moved to RobloxShared and no longer needed here
-- local hasPropertyInObject = RobloxShared.expect.hasPropertyInObject

local function getPath(
	object: { [string]: any},
	propertyPath
): GetPath
	if not Array.isArray(propertyPath) then
		propertyPath = propertyPath:split('.')
	end

	if #propertyPath > 0 then
		local lastProp = #propertyPath == 1
		local prop = propertyPath[1]

		-- We need this code block in Lua since attempting object[prop] on a non-table
		-- will throw an error
		local ok, res = pcall(function() return object[prop] end)

		local newObject = res

		if not ok or (not lastProp and newObject == nil) then
			-- This is not the last prop in the chain. If we keep recursing
			-- we will get a nil access error. At this point we know that the
			-- chain has broken and we can return right away.
			return {
				hasEndProp = false,
				lastTraversedObject = object,
				traversedPath = {}
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
		value = object
	}
end

-- deviation: moved to RobloxShared to avoid reaching into internals with rotriever workspaces
local getObjectSubset = RobloxShared.expect.getObjectSubset

-- deviation: omitted IteratorSymbol

-- deviation: currently unused so we comment out hasIterator
-- local function hasIterator(object: any): boolean
-- 	-- technically just the typeof(object) == table check would be sufficient
-- 	-- but to be more accurate we should return true for all types that can be
-- 	-- iterated over in Lua (string and table)
-- 	return typeof(object) == "table" or typeof(object) == "string"
-- end

local iterableEquality = RobloxShared.expect.iterableEquality

-- deviation: helper function moved to RobloxShared and no longer needed here
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

	if getmetatable(a) and getmetatable(b) and
		getmetatable(a).__index and getmetatable(b).__index and
		getmetatable(a).__index == getmetatable(b).__index
	then
		return nil
	end

	return false
end

local function sparseArrayEquality(
	a: any,
	b: any
): boolean | nil
	if not Array.isArray(a) or not Array.isArray(b) then
		return nil
	end

	local aKeys = Object.keys(a)
	local bKeys = Object.keys(b)

	return
		--[[
			ROBLOX TODO: (ADO-1217) replace the line below
			once Map/Set functionality is implemented

			--equals(a, b, {iterableEquality, typeEquality}, true) and
		]]
		equals(a, b, {typeEquality}, true) and
		equals(aKeys, bKeys)
end

--[[
	ROBLOX TODO: (LUAU) Type Annotations
	Add in annotations using generics to mirror upstream when Luau
	has that functionality
]]
local function partition(
	items: Array<any>,
	predicate: (any) -> boolean
): { [number]: any }
	local result = { {}, {} }

	for i, item in ipairs(items) do
		table.insert(result[predicate(item) and 1 or 2], item)
	end

	return result
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
	return typeof(expected) == "string" and
		typeof(received) == "string" and
		(not received:match(MULTILINE_REGEXP) or
			not expected:match(MULTILINE_REGEXP))
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
	sparseArrayEquality = sparseArrayEquality,
	partition = partition,
	isError = isError,
	emptyObject = emptyObject,
	isOneline = isOneline
}