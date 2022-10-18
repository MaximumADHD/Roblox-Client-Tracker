--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/invariant.js
local function invariant(condition: any, message: string | nil)
	if not condition then
		error(message or "Unexpected invariant triggered.")
	end
end

return {
	invariant = invariant,
}
