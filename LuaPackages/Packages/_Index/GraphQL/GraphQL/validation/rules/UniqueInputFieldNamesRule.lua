--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/UniqueInputFieldNamesRule.js
--!strict
local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local visitorImport = require(root.language.visitor)
type ASTVisitor = visitorImport.ASTVisitor
local validationContextImport = require(script.Parent.Parent.ValidationContext)
type ASTValidationContext = validationContextImport.ASTValidationContext

local language = root.language
-- ROBLOX deviation: we import this so we can strongly type the function. upstream 16.x.x has a better approach
local AstModule = require(language.ast)
type ObjectFieldNode = AstModule.ObjectFieldNode
type NameNode = AstModule.NameNode

local exports = {}

-- /**
--  * Unique input field names
--  *
--  * A GraphQL input object value is only valid if all supplied fields are
--  * uniquely named.
--  */
exports.UniqueInputFieldNamesRule = function(context: ASTValidationContext): ASTVisitor
	local knownNameStack = {}
	local knownNames = {} :: { [string]: NameNode }

	return {
		ObjectValue = {
			enter = function()
				table.insert(knownNameStack, knownNames)
				knownNames = {}
			end,
			leave = function()
				-- ROBLOX deviation: no way for Luau to know enter/leave means remove should never return nil
				knownNames = table.remove(knownNameStack) :: { [string]: NameNode }
			end,
		},
		ObjectField = function(_self, node: ObjectFieldNode)
			local fieldName = node.name.value
			if knownNames[fieldName] then
				context:reportError(
					GraphQLError.new(
						('There can be only one input field named "%s".'):format(fieldName),
						{ knownNames[fieldName], node.name }
					)
				)
			else
				knownNames[fieldName] = node.name
			end
		end,
	}
end

return exports
