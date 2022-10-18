--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/ScalarLeafsRule.js

local root = script.Parent.Parent.Parent
local jsutils = root.jsutils
local inspect = require(jsutils.inspect).inspect
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local definition = require(root.type.definition)
local getNamedType = definition.getNamedType
local isLeafType = definition.isLeafType

local exports = {}

-- /**
--  * Scalar leafs
--  *
--  * A GraphQL document is valid only if all leaf fields (fields without
--  * sub selections) are of scalar or enum types.
--  */
exports.ScalarLeafsRule = function(context)
	return {
		Field = function(_self, node)
			local type_ = context:getType()
			local selectionSet = node.selectionSet
			if type_ then
				if isLeafType(getNamedType(type_)) then
					if selectionSet then
						local fieldName = node.name.value
						local typeStr = inspect(type_)
						context:reportError(
							GraphQLError.new(
								(
									'Field "%s" must not have a selection since type "%s" has no subfields.'
								):format(fieldName, typeStr),
								selectionSet
							)
						)
					end
				elseif not selectionSet then
					local fieldName = node.name.value
					local typeStr = inspect(type_)
					context:reportError(
						GraphQLError.new(
							(
								'Field "%s" of type "%s" must have a selection of subfields. Did you mean "%s { ... }"?'
							):format(fieldName, typeStr, fieldName),
							node
						)
					)
				end
			end
		end,
	}
end

return exports
