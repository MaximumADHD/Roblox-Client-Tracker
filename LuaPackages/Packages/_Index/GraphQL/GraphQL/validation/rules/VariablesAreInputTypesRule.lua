--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/VariablesAreInputTypesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local print_ = require(root.language.printer).print
local definition = require(root.type.definition)
local isInputType = definition.isInputType
local typeFromAST = require(root.utilities.typeFromAST).typeFromAST

local exports = {}

-- /**
--  * Variables are input types
--  *
--  * A GraphQL operation is only valid if all the variables it defines are of
--  * input types (scalar, enum, or input object).
--  */
exports.VariablesAreInputTypesRule = function(context)
	return {
		VariableDefinition = function(_self, node)
			local type_ = typeFromAST(context:getSchema(), node.type)

			if type_ and not isInputType(type_) then
				local variableName = node.variable.name.value
				local typeName = print_(node.type)

				context:reportError(
					GraphQLError.new(
						('Variable "$%s" cannot be non-input type "%s".'):format(
							variableName,
							typeName
						),
						node.type
					)
				)
			end
		end,
	}
end

return exports
