--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/FragmentsOnCompositeTypesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local language = root.language
local print_ = require(language.printer).print
local isCompositeType = require(root.type.definition).isCompositeType
local typeFromAST = require(root.utilities.typeFromAST).typeFromAST

local exports = {}
-- /**
--  * Fragments on composite type
--  *
--  * Fragments use a type condition to determine if they apply, since fragments
--  * can only be spread into a composite type (object, interface, or union), the
--  * type condition must also be a composite type.
--  */
exports.FragmentsOnCompositeTypesRule = function(context)
	return {
		InlineFragment = function(_self, node)
			local typeCondition = node.typeCondition
			if typeCondition then
				local type_ = typeFromAST(context:getSchema(), typeCondition)
				if type_ and not isCompositeType(type_) then
					local typeStr = print_(typeCondition)
					context:reportError(
						GraphQLError.new(
							('Fragment cannot condition on non composite type "%s".'):format(
								typeStr
							),
							typeCondition
						)
					)
				end
			end
		end,
		FragmentDefinition = function(_self, node)
			local type_ = typeFromAST(context:getSchema(), node.typeCondition)
			if type_ and not isCompositeType(type_) then
				local typeStr = print_(node.typeCondition)
				context:reportError(
					GraphQLError.new(
						('Fragment "%s" cannot condition on non composite type "%s".'):format(
							node.name.value,
							typeStr
						),
						node.typeCondition
					)
				)
			end
		end,
	}
end

return exports
