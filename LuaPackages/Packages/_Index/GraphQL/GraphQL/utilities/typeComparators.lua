--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/typeComparators.js

local srcRoot = script.Parent.Parent
local Packages = srcRoot.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local definitionImport = require(srcRoot.type.definition)
local isInterfaceType = definitionImport.isInterfaceType
local isObjectType = definitionImport.isObjectType
local isListType = definitionImport.isListType
local isNonNullType = definitionImport.isNonNullType
local isAbstractType = definitionImport.isAbstractType

--[[*
--  * Provided two types, return true if the types are equal (invariant).
--  *]]
local function isEqualType(typeA, typeB)
	-- Equivalent types are equal.
	if typeA == typeB then
		return true
	end

	-- If either type is non-null, the other must also be non-null.
	if isNonNullType(typeA) and isNonNullType(typeB) then
		return isEqualType(typeA.ofType, typeB.ofType)
	end

	-- If either type is a list, the other must also be a list.
	if isListType(typeA) and isListType(typeB) then
		return isEqualType(typeA.ofType, typeB.ofType)
	end

	-- Otherwise the types are not equal.
	return false
end

--[[*
--  * Provided a type and a super type, return true if the first type is either
--  * equal or a subset of the second super type (covariant).
--  *]]
local function isTypeSubTypeOf(schema, maybeSubType, superType)
	-- Equivalent type is a valid subtype
	if maybeSubType == superType then
		return true
	end

	-- If superType is non-null, maybeSubType must also be non-null.
	if isNonNullType(superType) then
		if isNonNullType(maybeSubType) then
			return isTypeSubTypeOf(schema, maybeSubType.ofType, superType.ofType)
		end

		return false
	end

	if isNonNullType(maybeSubType) then
		-- If superType is nullable, maybeSubType may be non-null or nullable.
		return isTypeSubTypeOf(schema, maybeSubType.ofType, superType)
	end

	-- If superType type is a list, maybeSubType type must also be a list.
	if isListType(superType) then
		if isListType(maybeSubType) then
			return isTypeSubTypeOf(schema, maybeSubType.ofType, superType.ofType)
		end

		return false
	end
	if isListType(maybeSubType) then
		-- If superType is not a list, maybeSubType must also be not a list.
		return false
	end

	-- If superType type is an abstract type, check if it is super type of maybeSubType.
	-- Otherwise, the child type is not a valid subtype of the parent type.
	return isAbstractType(superType)
		and (isInterfaceType(maybeSubType) or isObjectType(maybeSubType))
		and schema:isSubType(superType, maybeSubType)
end

--[[*
--  * Provided two composite types, determine if they "overlap". Two composite
--  * types overlap when the Sets of possible concrete types for each intersect.
--  *
--  * This is often used to determine if a fragment of a given type could possibly
--  * be visited in a context of another type.
--  *
--  * This function is commutative.
--  *]]
local function doTypesOverlap(schema, typeA, typeB)
	-- Equivalent types overlap
	if typeA == typeB then
		return true
	end
	if isAbstractType(typeA) then
		if isAbstractType(typeB) then
			-- If both types are abstract, then determine if there is any intersection
			-- between possible concrete types of each.
			return Array.some(schema:getPossibleTypes(typeA), function(type_)
				return schema:isSubType(typeB, type_)
			end)
		end

		-- Determine if the latter type is a possible concrete type of the former.
		return schema:isSubType(typeA, typeB)
	end
	if isAbstractType(typeB) then
		-- Determine if the former type is a possible concrete type of the latter.
		return schema:isSubType(typeB, typeA)
	end

	-- Otherwise the types do not overlap.
	return false
end

return {
	isEqualType = isEqualType,
	isTypeSubTypeOf = isTypeSubTypeOf,
	doTypesOverlap = doTypesOverlap,
}
