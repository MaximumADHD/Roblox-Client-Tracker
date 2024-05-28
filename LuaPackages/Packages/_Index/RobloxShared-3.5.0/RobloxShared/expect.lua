-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/expect/src/__tests__/matchers.test.js
-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/expect/src/utils.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local getType = require(Packages.JestGetType).getType

local LuauPolyfill = require(Packages.LuauPolyfill)
local toJSBoolean = LuauPolyfill.Boolean.toJSBoolean
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Object = LuauPolyfill.Object

type Array<T> = LuauPolyfill.Array<T>
type Table = { [any]: any }
type Tester = (any, any) -> any

-- ROBLOX MOVED: expect/jasmineUtils.lua
local function hasKey(obj: any, key: string)
	return rawget(obj, key) ~= nil
end

-- ROBLOX MOVED: expect/jasmineUtils.lua
local function hasDefinedKey(obj: any, key: string)
	return hasKey(obj, key)
end

-- ROBLOX MOVED: expect/jasmineUtils.lua
local function keys(obj: Table, _hasKey: (Table, string) -> boolean)
	local keys_ = {}
	for key in pairs(obj) do
		if obj[key] ~= nil then
			table.insert(keys_, key)
		end
	end

	-- ROBLOX deviation: code omitted for adding 'extraKeys' since we don't have
	-- similar concerns of overlooking symbols and non-numeric properties for
	-- arrays

	-- Thus, in the array case we should always just be returning an empty array

	return keys_
end

-- ROBLOX MOVED: expect/jasmineUtils.lua
local function isA(typeName: string, value: any)
	return getType(value) == typeName
end

-- ROBLOX MOVED: expect/jasmineUtils.lua
local function isAsymmetric(obj: any)
	if toJSBoolean(obj) and typeof(obj) == "table" then
		local ok, val = pcall(function()
			return obj.asymmetricMatch
		end)
		if ok and isA("function", val) then
			return true
		end
	end
	return false
end

-- ROBLOX MOVED: expect/jasmineUtils.lua
local function asymmetricMatch(a: any, b: any)
	local asymmetricA = isAsymmetric(a)
	local asymmetricB = isAsymmetric(b)

	if asymmetricA and asymmetricB then
		return nil
	end

	if asymmetricA then
		return a:asymmetricMatch(b)
	end

	if asymmetricB then
		return b:asymmetricMatch(a)
	end

	return nil
end

-- ROBLOX MOVED: expect/jasmineUtils.lua
-- Equality function lovingly adapted from isEqual in
--   [Underscore](http://underscorejs.org)
local function eq(
	a: any,
	b: any,
	aStack: Array<any>,
	bStack: Array<any>,
	customTesters: Array<Tester>,
	_hasKey: any
): boolean
	local result = true

	local asymmetricResult = asymmetricMatch(a, b)
	if asymmetricResult ~= nil then
		return asymmetricResult
	end

	for _, value in ipairs(customTesters) do
		local customTesterResult = value(a, b)
		if customTesterResult ~= nil then
			return customTesterResult
		end
	end

	-- ROBLOX deviation: code omitted because there are no error objects in Lua

	if Object.is(a, b) then
		return true
	end

	-- ROBLOX deviation: code omitted that does strict comparison because we don't
	-- have similar concerns in Lua where there are no distinct 'null' and
	-- 'undefined' types

	-- ROBLOX deviation: as part of the upstream className check, a type difference of
	-- array/non-array would be detected so we add this in manually
	local className = getType(a)
	if className ~= getType(b) then
		return false
	elseif Array.isArray(a) ~= Array.isArray(b) then
		return false
	end

	-- ROBLOX deviation: code omitted for elseif case with regular expressions since
	-- Lua doesn't have a built in regular expression type

	if className == "boolean" or className == "string" or className == "number" or className == "userdata" then
		return Object.is(a, b)
	elseif className == "DateTime" then
		return a == b
	elseif className == "regexp" then
		return tostring(a) == tostring(b)
	end

	if typeof(a) ~= "table" or typeof(b) ~= "table" then
		return false
	end

	-- DOM code omitted for now but translated here
	--[[
		if isDomNode(a) and isDomNode(b) then
		return a.isEqualNode(b)
		end
	--]]

	-- Used to detect circular references.
	local length = #aStack
	while length > 0 do
		-- Linear search. Performance is inversely proportional to the number of
		-- unique nested structures.
		-- circular references at same depth are equal
		-- circular reference is not equal to non-circular one
		if aStack[length] == a then
			return bStack[length] == b
		elseif bStack[length] == b then
			return false
		end

		length -= 1
	end

	-- Add the first object to the stack of traversed objects.
	table.insert(aStack, a)
	table.insert(bStack, b)

	-- Recursively compare objects and arrays.
	-- Compare array lengths to determine if a deep comparison is necessary.
	if Array.isArray(a) and #a ~= #b then
		return false
	end

	-- Deep compare objects
	local aKeys = keys(a, _hasKey)
	local size = #aKeys

	-- Ensure that both objects contain the same number of properties before comparing deep equality.
	if #keys(b, _hasKey) ~= size then
		return false
	end

	while size > 0 do
		local key = aKeys[size]

		-- Deep compare each member
		result = hasKey(b, key) and eq(a[key], b[key], aStack, bStack, customTesters, _hasKey)

		if not result then
			return false
		end

		size -= 1
	end

	-- Remove the first object from the stack of traversed objects.
	table.remove(aStack)
	table.remove(bStack)

	return result
end

-- ROBLOX MOVED: expect/jasmineUtils.lua
local function equals(a: any, b: any, customTesters: Array<Tester>?, strictCheck: boolean?): boolean
	customTesters = customTesters or {}
	strictCheck = strictCheck or false
	return eq(a, b, {}, {}, customTesters :: Array<Tester>, strictCheck and hasKey or hasDefinedKey)
end

-- ROBLOX MOVED: expect/utils.lua
local function hasPropertyInObject(object: any, key: string): boolean
	-- We don't have to deal with the complexities around prototype chains in
	-- javascript since a simple key access will look up the
	-- metatable chain for us
	local shouldBeFalse = not toJSBoolean(object) or typeof(object) ~= "table"

	if shouldBeFalse then
		return false
	end

	return object[key] ~= nil
end

-- ROBLOX MOVED: expect/utils.lua
local function isObject(a: any)
	return a ~= nil and typeof(a) == "table"
end

-- ROBLOX MOVED: expect/utils.lua
local function isObjectWithKeys(a: any)
	return isObject(a) and (next(a) == nil or not Array.isArray(a))
end

-- ROBLOX MOVED: expect/utils.lua
local function iterableEquality(a: any, b: any, aStack_: Array<any>?, bStack_: Array<any>?): boolean | nil
	local aStack = (aStack_ or {}) :: Array<any>
	local bStack = (bStack_ or {}) :: Array<any>

	if getType(a) ~= "set" or getType(b) ~= "set" then
		return nil
	end

	-- ROBLOX deviation: omitting constructor check

	local length = #aStack
	while length > 0 do
		-- Linear search. Performance is inversely proportional to the number of
		-- unique nested structures.
		-- circular references at same depth are equal
		-- circular reference is not equal to non-circular one
		if aStack[length] == a then
			return bStack[length] == b
		end

		-- ROBLOX deviation: this if check is not included in upstream
		-- if bStack[length] == b then
		-- 	return aStack[length] == a
		-- end

		length -= 1
	end

	table.insert(aStack, a)
	table.insert(bStack, b)

	local function iterableEqualityWithStack(localA: any, localB: any)
		return iterableEquality(localA, localB, { unpack(aStack) }, { unpack(bStack) })
	end

	-- ROBLOX TODO: (ADO-1217) If we eventually have a Map polyfill, we can
	-- expand this to include the Map case as well
	if a.size ~= nil then
		if a.size ~= b.size then
			return false
		elseif isA("set", a) then
			local allFound = true
			for _, aValue in a:ipairs() do
				if not b:has(aValue) then
					local has = false
					for _, bValue in b:ipairs() do
						local isEqual = equals(aValue, bValue, { iterableEqualityWithStack })
						if isEqual == true then
							has = true
						end
					end

					if has == false then
						allFound = false
						break
					end
				end
			end
			table.remove(aStack)
			table.remove(bStack)
			return allFound
		end
	end

	return nil

	-- ROBLOX deviation: omitted section of code for handling the case of a different
	-- kind of iterable not covered by the above Set case
end

-- ROBLOX MOVED: expect/utils.lua
local function subsetEquality(object: any, subset: any): boolean | nil
	-- subsetEquality needs to keep track of the references
	-- it has already visited to avoid infinite loops in case
	-- there are circular references in the subset passed to it
	local function subsetEqualityWithContext(seenReferences_: { [any]: boolean }?)
		local seenReferences = (seenReferences_ or {}) :: { [any]: boolean }

		return function(object_: any, subset_: any): boolean | nil
			if not isObjectWithKeys(subset_) then
				return nil
			end

			return Array.every(Object.keys(subset_), function(key)
				if isObjectWithKeys(subset_[key]) then
					if seenReferences[subset_[key]] then
						--[[
								ROBLOX TODO: (ADO-1217) replace the line below
								once Map/Set functionality is implemented

								return equals(localObject[key], localSubset[key], {iterableEquality})
							]]
						return equals(object_[key], subset_[key], { iterableEquality })
					end
					seenReferences[subset_[key]] = true
				end
				local result = object_ ~= nil
					and hasPropertyInObject(object_, key)
					and equals(object_[key], subset_[key], {
						--[[
									ROBLOX TODO: (ADO-1217) uncomment the line
									iterableEquality,
								]]
						subsetEqualityWithContext(seenReferences),
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
				seenReferences[subset_[key]] = nil
				return result
			end)
		end
	end

	return subsetEqualityWithContext()(object, subset)
end

-- ROBLOX MOVED: expect/utils.lua
-- ROBLOX TODO: (LUAU) Add seenReferences type annotation once Luau can
-- recognize that the seenReferences or {} is sufficient to make seenReferences
-- non-nil
local function getObjectSubset(object: any, subset: any, seenReferences_: { [Object]: boolean }?): any
	local seenReferences = (if seenReferences_ then seenReferences_ else {}) :: { [Object]: boolean }

	if Array.isArray(object) then
		if Array.isArray(subset) and #subset == #object then
			-- The return correct subclass of subset
			local subsetMap = {}

			for i, sub in ipairs(subset) do
				table.insert(subsetMap, getObjectSubset(object[i], sub))
			end
			return subsetMap
		end
	elseif getType(object) == "DateTime" then
		return object
	elseif isObject(object) and isObject(subset) then
		if equals(object, subset, { iterableEquality, subsetEquality }) then
			return subset
		end

		local trimmed: any = {}
		seenReferences[object] = trimmed

		for i, key in
			ipairs(Array.filter(Object.keys(object), function(key)
				return hasPropertyInObject(subset, key)
			end))
		do
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

return {
	-- jasmineUtils.lua
	equals = equals,
	isA = isA,
	isAsymmetric = isAsymmetric,

	-- utils.lua
	getObjectSubset = getObjectSubset,
	iterableEquality = iterableEquality,
	subsetEquality = subsetEquality,
	isObjectWithKeys = isObjectWithKeys,
	hasPropertyInObject = hasPropertyInObject,
}
