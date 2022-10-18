--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/01bcc7d9be982226bcf56b8f983f38fd89dced1b/src/validation/rules/NoDeprecatedCustomRule.js

local root = script.Parent.Parent.Parent.Parent
local invariant = require(root.jsutils.invariant).invariant
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local definition = require(root.type.definition)
local getNamedType = definition.getNamedType
local isInputObjectType = definition.isInputObjectType

local exports = {}

-- /**
--  * No deprecated
--  *
--  * A GraphQL document is only valid if all selected fields and all used enum values have not been
--  * deprecated.
--  *
--  * Note: This rule is optional and is not part of the Validation section of the GraphQL
--  * Specification. The main purpose of this rule is detection of deprecated usages and not
--  * necessarily to forbid their use when querying a service.
--  */
exports.NoDeprecatedCustomRule = function(context)
	return {
		Field = function(_self, node)
			local fieldDef = context:getFieldDef()
			local deprecationReason = fieldDef and fieldDef.deprecationReason
			if fieldDef and deprecationReason ~= nil then
				local parentType = context:getParentType()
				invariant(parentType ~= nil)
				context:reportError(
					GraphQLError.new(
						("The field %s.%s is deprecated. %s"):format(
							parentType.name,
							fieldDef.name,
							deprecationReason
						),
						node
					)
				)
			end
		end,
		Argument = function(_self, node)
			local argDef = context:getArgument()
			local deprecationReason = argDef and argDef.deprecationReason
			if argDef and deprecationReason ~= nil then
				local directiveDef = context:getDirective()
				if directiveDef ~= nil then
					context:reportError(
						GraphQLError.new(
							('Directive "@%s" argument "%s" is deprecated. %s'):format(
								directiveDef.name,
								argDef.name,
								deprecationReason
							),
							node
						)
					)
				else
					local parentType = context:getParentType()
					local fieldDef = context:getFieldDef()
					invariant(parentType ~= nil and fieldDef ~= nil)
					context:reportError(
						GraphQLError.new(
							('Field "%s.%s" argument "%s" is deprecated. %s'):format(
								parentType.name,
								fieldDef.name,
								argDef.name,
								deprecationReason
							),
							node
						)
					)
				end
			end
		end,
		ObjectField = function(_self, node)
			local inputObjectDef = getNamedType(context:getParentInputType())
			if isInputObjectType(inputObjectDef) then
				-- ROBLOX deviation: use Map
				local inputFieldDef = inputObjectDef:getFields():get(node.name.value)
				-- // flowlint-next-line unnecessary-optional-chain:off
				local deprecationReason = inputFieldDef and inputFieldDef.deprecationReason
				if deprecationReason ~= nil then
					context:reportError(
						GraphQLError.new(
							("The input field %s.%s is deprecated. %s"):format(
								inputObjectDef.name,
								inputFieldDef.name,
								deprecationReason
							),
							node
						)
					)
				end
			end
		end,
		EnumValue = function(_self, node)
			local enumValueDef = context:getEnumValue()
			local deprecationReason = enumValueDef and enumValueDef.deprecationReason
			if enumValueDef and deprecationReason ~= nil then
				local enumTypeDef = getNamedType(context:getInputType())
				invariant(enumTypeDef ~= nil)
				context:reportError(
					GraphQLError.new(
						('The enum value "%s.%s" is deprecated. %s'):format(
							enumTypeDef.name,
							enumValueDef.name,
							deprecationReason
						),
						node
					)
				)
			end
		end,
	}
end

return exports
