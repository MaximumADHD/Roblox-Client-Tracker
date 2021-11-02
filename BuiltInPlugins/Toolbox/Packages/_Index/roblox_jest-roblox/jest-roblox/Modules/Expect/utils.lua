-- upstream: https://github.com/facebook/jest/blob/v26.5.3/packages/expect/src/utils.ts
-- /**
-- * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
-- *
-- * This source code is licensed under the MIT license found in the
-- * LICENSE file in the root directory of this source tree.
-- *
-- */

local Workspace = script.Parent
local Modules = Workspace.Parent
local Packages = Modules.Parent.Parent

local JestGetType = require(Modules.JestGetType)

local Polyfill = require(Packages.LuauPolyfill)
local toJSBoolean = Polyfill.Boolean.toJSBoolean
local Array = Polyfill.Array
local Object = Polyfill.Object

-- deviation: omitted isPrimitive import
local jasmineUtils = require(Workspace.jasmineUtils)
local equals = jasmineUtils.equals
-- deviation: omitted isA, isImmutableUnorderedKeyed, isImmutableUnorderedSet

type Array<T> = { T };

type GetPath = {
	hasEndProp: boolean?,
	lastTraversedObject: any,
	traversedPath: Array<string>,
	value: any?
}

local isObject, subsetEquality

local function hasPropertyInObject(object: any, key: string): boolean
	-- We don't have to deal with the complexities around prototype chains in
	-- javascript since a simple key access will look up the
	-- metatable chain for us
	local shouldBeFalse =
		not toJSBoolean(object) or typeof(object) ~= "table"

	if shouldBeFalse then
		return false
	end

	return object[key] ~= nil
end

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

-- ROBLOX TODO: (LUAU) Add seenReferences type annotation once Luau can
-- recognize that the seenReferences or {} is sufficient to make seenReferences
-- non-nil
local function getObjectSubset(
	object: any,
	subset: any,
	seenReferences--: { [any]: boolean }?
): any
	seenReferences = seenReferences or {}

	if Array.isArray(object) then
		if Array.isArray(subset) and #subset == #object then
			-- The return correct subclass of subset
			local subsetMap = {}
			for i, sub in ipairs(subset) do
				table.insert(subsetMap, getObjectSubset(object[i], sub))
			end
			return subsetMap
		end
	elseif JestGetType.getType(object) == 'DateTime' then
		return object
	elseif isObject(object) and isObject(subset) then
		--[[
			ROBLOX TODO: (ADO-1217) replace the line below once Map/Set
			functionality is implemented and the iterableEquality method is
			reimplemented:

			if equals(object, subset, {iterableEquality, subsetEquality}) then
		]]
		if equals(object, subset, {subsetEquality}) then
			return subset
		end

		local trimmed: any = {}
		seenReferences[object] = trimmed

		for i, key in ipairs(
			Array.filter(
				Object.keys(object),
				function(key) return hasPropertyInObject(subset, key) end)
		) do
			if seenReferences[object[key]] ~= nil then
				trimmed[key] = seenReferences[object[key]]
			else
				trimmed[key] = getObjectSubset(object[key], subset[key], seenReferences)
			end
		end

		if #Object.keys(trimmed) > 0 then
			return trimmed
		end
	end

	return object
end

-- deviation: omitted IteratorSymbol

local function hasIterator(object: any): boolean
	-- technically just the typeof(object) == table check would be sufficient
	-- but to be more accurate we should return true for all types that can be
	-- iterated over in Lua (string and table)
	return typeof(object) == "table" or typeof(object) == "string"
end

-- deviation: We currently have no need for this and we can use the native
-- equals function in its place to avoid complications. A rough translation
-- is included and commented out in the case that we will need to support this
-- in the future
local function iterableEquality(
	a: any,
	b: any,
	aStack: Array<any>,
	bStack: Array<any>
): boolean | nil
	aStack = aStack or {}
	bStack = bStack or {}

	return nil
	-- if (
	-- 	typeof(a) ~= "table" or
	-- 	typeof(b) ~= "table" or
	-- 	Array.isArray(a) or
	-- 	Array.isArray(b) or
	-- 	not hasIterator(a) or
	-- 	not hasIterator(b)
	-- ) then
	-- 	return nil
	-- end

	-- -- deviation: omitting constructor check

	-- local length = #aStack
	-- while length > 0 do
	-- 	-- Linear search. Performance is inversely proportional to the number of
	-- 	-- unique nested structures.
	-- 	-- circular references at same depth are equal
	-- 	-- circular reference is not equal to non-circular one
	-- 	if aStack[length] == a then
	-- 		return bStack[length] == b
	-- 	end

	-- 	-- deviation: this if check is not included in upstream
	-- 	if bStack[length] == b then
	-- 		return aStack[length] == a
	-- 	end

	-- 	length -= 1
	-- end

	-- table.insert(aStack, a)
	-- table.insert(bStack, b)

	-- local function iterableEqualityWithStack(localA: any, localB: any)
	-- 	return iterableEquality(localA, localB, {unpack(aStack)}, {unpack(bStack)})
	-- end

	-- -- ROBLOX TODO: (ADO-1217) Once we have Set and Map functionality, we can expand this
	-- -- to actually mirror the distinct cases in upstream
	-- if #Object.keys(a) ~= #Object.keys(b) then
	-- 	return false
	-- else
	-- 	local allFound = true
	-- 	for aKey, aValue in pairs(a) do
	-- 		if b[aKey] == nil or not equals(aValue, b[aKey], {iterableEqualityWithStack}) then
	-- 			local has = false
	-- 			for bKey, bValue in pairs(b) do
	-- 				local matchedKey = equals(aKey, bKey, {iterableEqualityWithStack})

	-- 				local matchedValue = false
	-- 				if matchedKey == true then
	-- 					matchedValue = equals(aValue, bValue, {iterableEqualityWithStack})
	-- 				end
	-- 				if matchedValue == true then
	-- 					has = true
	-- 				end

	-- 			end

	-- 			if has == false then
	-- 				allFound = false
	-- 				break
	-- 			end
	-- 		end
	-- 	end
	-- 	-- Remove the first value from the stack of traversed values
	-- 	table.remove(aStack)
	-- 	table.remove(bStack)
	-- 	return allFound
	-- end

	-- -- deviation: omitted section of code for handling the case of a different
	-- -- kind of iterable not covered by the above table case
end

function isObject(a: any)
	return a ~= nil and typeof(a) == 'table'
end

local function isObjectWithKeys(a: any)
	return isObject(a) and (next(a) == nil or not Array.isArray(a))
end

function subsetEquality(
	object: any,
	subset: any
): boolean | nil
	-- subsetEquality needs to keep track of the references
	-- it has already visited to avoid infinite loops in case
	-- there are circular references in the subset passed to it

	-- ROBLOX TODO: (LUAU) Add seenReferences type annotation once Luau can
	-- recognize that the seenReferences or {} is sufficient to make seenReferences
	-- non-nil
	local function subsetEqualityWithContext(
		seenReferences-- : { [any]: boolean }?
	)
		if not isObjectWithKeys(subset) then
			return nil
		end

		return function(localObject, localSubset): boolean | nil
			seenReferences = seenReferences or {}

			if not isObjectWithKeys(localSubset) then
				return nil
			end

			return Array.every(
				Object.keys(localSubset),
				function(key)
					if isObjectWithKeys(localSubset[key]) then
						if seenReferences[localSubset[key]] then
							--[[
								ROBLOX TODO: (ADO-1217) replace the line below
								once Map/Set functionality is implemented

								return equals(localObject[key], localSubset[key], {iterableEquality})
							]]
							return equals(localObject[key], localSubset[key], {iterableEquality})
						end
						seenReferences[localSubset[key]] = true
					end
					local result =
						localObject ~= nil and
						hasPropertyInObject(localObject, key) and
						equals(localObject[key], localSubset[key], {
								--[[
									ROBLOX TODO: (ADO-1217) uncomment the line
									iterableEquality,
								]]
							subsetEqualityWithContext(seenReferences)
						})
					-- The main goal of using seenReference is to avoid
					-- circular node on tree.
					-- It will only happen within a parent and its child, not a
					-- node and nodes next to it (same level)
					-- We should keep the reference for a parent and its child
					-- only
					-- Thus we should delete the reference immediately so that
					-- it doesn't interfere other nodes within the same level
					-- on tree.
					seenReferences[localSubset[key]] = nil
					return result
				end
			 )
		end
	end

	local inner = subsetEqualityWithContext()

	if inner then
		return inner(object, subset)
	end

	return inner
end

local function typeEquality(a: any, b: any): boolean | nil
	if a == nil or b == nil or typeof(a) == typeof(b) then
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
	items,
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
	typeEquality = typeEquality,
	sparseArrayEquality = sparseArrayEquality,
	partition = partition,
	isError = isError,
	emptyObject = emptyObject,
	isOneline = isOneline
}