--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/NoUnusedFragmentsRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * No unused fragments
--  *
--  * A GraphQL document is only valid if all fragment definitions are spread
--  * within operations, or spread within other fragments spread within operations.
--  */
local function NoUnusedFragmentsRule(context)
	local operationDefs = {}
	local fragmentDefs = {}

	return {
		OperationDefinition = function(_self, node)
			table.insert(operationDefs, node)
			return false
		end,
		FragmentDefinition = function(_self, node)
			table.insert(fragmentDefs, node)
			return false
		end,
		Document = {
			leave = function()
				local fragmentNameUsed = {}
				for _, operation in ipairs(operationDefs) do
					for _, fragment in ipairs(context:getRecursivelyReferencedFragments(operation)) do
						fragmentNameUsed[fragment.name.value] = true
					end
				end

				for _, fragmentDef in ipairs(fragmentDefs) do
					local fragName = fragmentDef.name.value
					if fragmentNameUsed[fragName] ~= true then
						context:reportError(
							GraphQLError.new(
								('Fragment "%s" is never used.'):format(fragName),
								fragmentDef
							)
						)
					end
				end
			end,
		},
	}
end
exports.NoUnusedFragmentsRule = NoUnusedFragmentsRule

return exports
