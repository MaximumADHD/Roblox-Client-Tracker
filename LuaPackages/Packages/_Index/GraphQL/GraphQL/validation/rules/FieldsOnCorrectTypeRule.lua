--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/687d209245b4603f56514c44e7b1517c8be8f46f/src/validation/rules/FieldsOnCorrectTypeRule.js

local root = script.Parent.Parent.Parent
local jsutils = root.jsutils
local PackagesWorkspace = root.Parent
local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array

local didYouMean = require(jsutils.didYouMean).didYouMean
local suggestionList = require(jsutils.suggestionList).suggestionList
local naturalCompare = require(jsutils.naturalCompare).naturalCompare
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local definition = require(root.type.definition)
local isObjectType = definition.isObjectType
local isInterfaceType = definition.isInterfaceType
local isAbstractType = definition.isAbstractType

-- ROBLOX deviation: predeclare variable
local getSuggestedFieldNames
local getSuggestedTypeNames

local exports = {}

-- /**
--  * Fields on correct type
--  *
--  * A GraphQL document is only valid if all fields selected are defined by the
--  * parent type, or are an allowed meta field such as __typename.
--  */
exports.FieldsOnCorrectTypeRule = function(context)
	return {
		Field = function(_self, node)
			local type_ = context:getParentType()
			if type_ then
				local fieldDef = context:getFieldDef()
				if not fieldDef then
					-- // This field doesn't exist, lets look for suggestions.
					local schema = context:getSchema()
					local fieldName = node.name.value

					-- // First determine if there are any suggested types to condition on.
					local suggestion = didYouMean(
						"to use an inline fragment on",
						getSuggestedTypeNames(schema, type_, fieldName)
					)

					-- // If there are no suggested types, then perhaps this was a typo?
					if suggestion == "" then
						suggestion = didYouMean(getSuggestedFieldNames(type_, fieldName))
					end

					-- // Report an error, including helpful suggestions.
					context:reportError(
						GraphQLError.new(
							('Cannot query field "%s" on type "%s".'):format(fieldName, type_.name)
								.. suggestion,
							node
						)
					)
				end
			end
		end,
	}
end

-- /**
--  * Go through all of the implementations of type, as well as the interfaces that
--  * they implement. If any of those types include the provided field, suggest them,
--  * sorted by how often the type is referenced.
--  */
function getSuggestedTypeNames(schema, type_, fieldName)
	if not isAbstractType(type_) then
		-- // Must be an Object type, which does not have possible fields.
		return {}
	end

	local suggestedTypes = {}
	local usageCount = {}

	for _, possibleType in ipairs(schema:getPossibleTypes(type_)) do
		-- ROBLOX deviation: use Map
		if not possibleType:getFields():get(fieldName) then
			continue
		end

		-- // This object type defines this field.
		suggestedTypes[possibleType] = true
		usageCount[possibleType.name] = 1

		for _, possibleInterface in ipairs(possibleType:getInterfaces()) do
			-- ROBLOX deviation: use Map
			if not possibleInterface:getFields():get(fieldName) then
				continue
			end

			-- // This interface type defines this field.
			suggestedTypes[possibleInterface] = true
			usageCount[possibleInterface.name] = (usageCount[possibleInterface.name] or 0) + 1
		end
	end

	-- ROBLOX TODO: our Array.from() currently doesn't operate on Sets ([T] = boolean) correctly
	-- local suggestions = Array.from(suggestedTypes)
	local suggestions = {}
	for suggestedType, _ in pairs(suggestedTypes) do
		table.insert(suggestions, suggestedType)
	end
	Array.sort(suggestions, function(typeA, typeB)
		-- // Suggest both interface and object types based on how common they are.
		local usageCountDiff = usageCount[typeB.name] - usageCount[typeA.name]
		if usageCountDiff ~= 0 then
			return usageCountDiff
		end

		-- // Suggest super types first followed by subtypes
		if isInterfaceType(typeA) and schema:isSubType(typeA, typeB) then
			return -1
		end
		if isInterfaceType(typeB) and schema:isSubType(typeB, typeA) then
			return 1
		end

		return naturalCompare(typeA.name, typeB.name)
	end)
	return Array.map(suggestions, function(x)
		return x.name
	end)
end

-- /**
--  * For the field name provided, determine if there are any similar field names
--  * that may be the result of a typo.
--  */
function getSuggestedFieldNames(type_, fieldName)
	if isObjectType(type_) or isInterfaceType(type_) then
		-- ROBLOX deviation: use Map
		local possibleFieldNames = type_:getFields():keys()
		return suggestionList(fieldName, possibleFieldNames)
	end
	-- // Otherwise, must be a Union type, which does not define fields.
	return {}
end

return exports
