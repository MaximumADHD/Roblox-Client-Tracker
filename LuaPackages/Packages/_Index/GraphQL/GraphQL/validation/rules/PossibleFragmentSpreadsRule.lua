--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/rules/PossibleFragmentSpreadsRule.js

local root = script.Parent.Parent.Parent
local inspect = require(root.jsutils.inspect).inspect
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local definition = require(root.type.definition)
local isCompositeType = definition.isCompositeType
local utilities = root.utilities
local typeFromAST = require(utilities.typeFromAST).typeFromAST
local typeComparators = require(utilities.typeComparators)
local doTypesOverlap = typeComparators.doTypesOverlap

local exports = {}

-- ROBLOX deviation: pre-declare functions
local getFragmentType

-- /**
--  * Possible fragment spread
--  *
--  * A fragment spread is only valid if the type condition could ever possibly
--  * be true: if there is a non-empty intersection of the possible parent types,
--  * and possible types which pass the type condition.
--  */
exports.PossibleFragmentSpreadsRule = function(context)
	return {
		InlineFragment = function(_self, node)
			local fragType = context:getType()
			local parentType = context:getParentType()
			if
				isCompositeType(fragType)
				and isCompositeType(parentType)
				and not doTypesOverlap(context:getSchema(), fragType, parentType)
			then
				local parentTypeStr = inspect(parentType)
				local fragTypeStr = inspect(fragType)

				context:reportError(
					GraphQLError.new(
						(
							'Fragment cannot be spread here as objects of type "%s" can never be of type "%s".'
						):format(parentTypeStr, fragTypeStr),
						node
					)
				)
			end
		end,
		FragmentSpread = function(_self, node)
			local fragName = node.name.value
			local fragType = getFragmentType(context, fragName)
			local parentType = context:getParentType()
			if
				fragType
				and parentType
				and not doTypesOverlap(context:getSchema(), fragType, parentType)
			then
				local parentTypeStr = inspect(parentType)
				local fragTypeStr = inspect(fragType)
				context:reportError(
					GraphQLError.new(
						(
							'Fragment "%s" cannot be spread here as objects of type "%s" can never be of type "%s".'
						):format(fragName, parentTypeStr, fragTypeStr),
						node
					)
				)
			end
		end,
	}
end

function getFragmentType(context, name: string)
	local frag = context:getFragment(name)
	if frag then
		local type_ = typeFromAST(context:getSchema(), frag.typeCondition)
		if isCompositeType(type_) then
			return type_
		end
	end

	-- ROBLOX deviation: explicitly return nil, upstream implicitly return undefined
	return nil
end

return exports
