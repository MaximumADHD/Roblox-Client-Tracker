--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/inmemory/helpers.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
type Record<T, U> = { [T]: U }

local RegExp = require(rootWorkspace.LuauRegExp)

local graphQLModule = require(rootWorkspace.GraphQL)
type SelectionSetNode = graphQLModule.SelectionSetNode

local inMemoryTypesModule = require(script.Parent.types)
type NormalizedCache = inMemoryTypesModule.NormalizedCache

local utilitiesModule = require(srcWorkspace.utilities)
type Reference = utilitiesModule.Reference
local isReference = utilitiesModule.isReference
type StoreValue = utilitiesModule.StoreValue
type StoreObject = utilitiesModule.StoreObject
local isField = utilitiesModule.isField
local DeepMerger = utilitiesModule.DeepMerger
local resultKeyNameFromField = utilitiesModule.resultKeyNameFromFieldf
local shouldInclude = utilitiesModule.shouldInclude
local isNonNullObject = utilitiesModule.isNonNullObject

local exports = {}

local hasOwn = require(srcWorkspace.luaUtils.hasOwnProperty)
exports.hasOwn = hasOwn

local function getTypenameFromStoreObject(
	store: NormalizedCache,
	objectOrReference: StoreObject | Reference
): string | nil
	if isReference(objectOrReference) then
		return store:get((objectOrReference :: Reference).__ref, "__typename") :: string
	else
		-- ROBLOX deviation START: remove Boolean
		if objectOrReference then
			-- ROBLOX deviation END
			return (objectOrReference :: StoreObject).__typename
		end
		return nil
	end
end
exports.getTypenameFromStoreObject = getTypenameFromStoreObject

-- ROBLOX deviation: LuauRegExp doesn't seem to handle "i" flag so adding additional A-Z ranges
local TypeOrFieldNameRegExp = RegExp("^[_a-zA-Z][_0-9a-zA-Z]*", "i")
exports.TypeOrFieldNameRegExp = TypeOrFieldNameRegExp

local storeFieldNameCache: { [string]: string } = {}

local function fieldNameFromStoreName(storeFieldName: string): string
	-- ROBLOX deviation START: use string.match with cache instead of RegEx since this is in the hot path
	if storeFieldNameCache[storeFieldName] then
		return storeFieldNameCache[storeFieldName]
	end
	local parsedName = string.match(storeFieldName, "^[_a-zA-Z][_0-9a-zA-Z]*") or storeFieldName
	storeFieldNameCache[storeFieldName] = parsedName
	return parsedName
	-- ROBLOX deviation END
end
exports.fieldNameFromStoreName = fieldNameFromStoreName

local function selectionSetMatchesResult(
	selectionSet: SelectionSetNode,
	-- ROBLOX deviation: we are treating the Record type as an array with the use of .every()
	result: Record<string, any>,
	variables: Record<string, any>?
): boolean
	if isNonNullObject(result) then
		if Array.isArray(result) then
			return Array.every((result :: any) :: Array<any>, function(item)
				return selectionSetMatchesResult(selectionSet, item, variables)
			end)
		else
			return Array.every(selectionSet.selections, function(field)
				if isField(field) and shouldInclude(field, variables) then
					local key = resultKeyNameFromField(field)
					-- ROBLOX deviation START: remove Boolean
					return hasOwn(result, key)
						and (
							not field.selectionSet
							or selectionSetMatchesResult(field.selectionSet, result[key], variables)
						)
					-- ROBLOX deviation END
				end
				-- If the selection has been skipped with @skip(true) or
				-- @include(false), it should not count against the matching. If
				-- the selection is not a field, it must be a fragment (inline or
				-- named). We will determine if selectionSetMatchesResult for that
				-- fragment when we get to it, so for now we return true.
				return true
			end)
		end
	end
	return false
end
exports.selectionSetMatchesResult = selectionSetMatchesResult

-- ROBLOX deviation: luau does not support type predicates
-- export function storeValueIsStoreObject(
--   value: StoreValue,
-- ): value is StoreObject
local function storeValueIsStoreObject(value: StoreValue): boolean
	return isNonNullObject(value) and not isReference(value) and not Array.isArray(value)
end
exports.storeValueIsStoreObject = storeValueIsStoreObject

local function makeProcessedFieldsMerger()
	return DeepMerger.new()
end
exports.makeProcessedFieldsMerger = makeProcessedFieldsMerger

return exports
