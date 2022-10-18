--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/KnownFragmentNamesRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError

local exports = {}
-- /**
--  * Known fragment names
--  *
--  * A GraphQL document is only valid if all `...Fragment` fragment spreads refer
--  * to fragments defined in the same document.
--  */
exports.KnownFragmentNamesRule = function(context)
	return {
		FragmentSpread = function(_self, node)
			local fragmentName = node.name.value
			local fragment = context:getFragment(fragmentName)
			if not fragment then
				context:reportError(
					GraphQLError.new(('Unknown fragment "%s".'):format(fragmentName), node.name)
				)
			end
		end,
	}
end

return exports
