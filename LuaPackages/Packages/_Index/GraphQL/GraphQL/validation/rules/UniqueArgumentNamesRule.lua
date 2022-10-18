--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/UniqueArgumentNamesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}

-- /**
--  * Unique argument names
--  *
--  * A GraphQL field or directive is only valid if all supplied arguments are
--  * uniquely named.
--  */
exports.UniqueArgumentNamesRule = function(context)
	local knownArgNames = {}

	return {
		Field = function()
			knownArgNames = {}
		end,
		Directive = function()
			knownArgNames = {}
		end,
		Argument = function(_self, node)
			local argName = node.name.value
			if knownArgNames[argName] then
				context:reportError(
					GraphQLError.new(
						('There can be only one argument named "%s".'):format(argName),
						{ knownArgNames[argName], node.name }
					)
				)
			else
				knownArgNames[argName] = node.name
			end
			return false
		end,
	}
end

return exports
