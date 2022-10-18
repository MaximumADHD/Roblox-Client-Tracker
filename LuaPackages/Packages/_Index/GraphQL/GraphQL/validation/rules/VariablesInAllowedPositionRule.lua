--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/VariablesInAllowedPositionRule.js

local root = script.Parent.Parent.Parent
local inspect = require(root.jsutils.inspect).inspect
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local Kind = require(root.language.kinds).Kind
local definition = require(root.type.definition)
local isNonNullType = definition.isNonNullType
local utilities = root.utilities
local typeFromAST = require(utilities.typeFromAST).typeFromAST
local isTypeSubTypeOf = require(utilities.typeComparators).isTypeSubTypeOf

local exports = {}

-- ROBLOX deviation: pre-declare function
local allowedVariableUsage

-- /**
--  * Variables passed to field arguments conform to type
--  */
exports.VariablesInAllowedPositionRule = function(context)
	local varDefMap = {}

	return {
		OperationDefinition = {
			enter = function()
				varDefMap = {}
			end,
			leave = function(_self, operation)
				local usages = context:getRecursiveVariableUsages(operation)

				for _, usage in ipairs(usages) do
					local node = usage.node
					local type_ = usage.type
					local defaultValue = usage.defaultValue
					local varName = node.name.value
					local varDef = varDefMap[varName]

					if varDef and type_ then
						-- // A var type is allowed if it is the same or more strict (e.g. is
						-- // a subtype of) than the expected type. It can be more strict if
						-- // the variable type is non-null when the expected type is nullable.
						-- // If both are list types, the variable item type can be more strict
						-- // than the expected item type (contravariant).
						local schema = context:getSchema()
						local varType = typeFromAST(schema, varDef.type)
						if
							varType
							and not allowedVariableUsage(
								schema,
								varType,
								varDef.defaultValue,
								type_,
								defaultValue
							)
						then
							local varTypeStr = inspect(varType)
							local typeStr = inspect(type_)

							context:reportError(
								GraphQLError.new(
									(
										'Variable "$%s" of type "%s" used in position expecting type "%s".'
									):format(varName, varTypeStr, typeStr),
									{ varDef, node }
								)
							)
						end
					end
				end
			end,
		},
		VariableDefinition = function(_self, node)
			varDefMap[node.variable.name.value] = node
		end,
	}
end

-- /**
--  * Returns true if the variable is allowed in the location it was found,
--  * which includes considering if default values exist for either the variable
--  * or the location at which it is located.
--  */
function allowedVariableUsage(schema, varType, varDefaultValue, locationType, locationDefaultValue)
	if isNonNullType(locationType) and not isNonNullType(varType) then
		local hasNonNullVariableDefaultValue = varDefaultValue ~= nil
			and varDefaultValue.kind ~= Kind.NULL
		local hasLocationDefaultValue = locationDefaultValue ~= nil
		if not hasNonNullVariableDefaultValue and not hasLocationDefaultValue then
			return false
		end
		local nullableLocationType = locationType.ofType
		return isTypeSubTypeOf(schema, varType, nullableLocationType)
	end
	return isTypeSubTypeOf(schema, varType, locationType)
end

return exports
