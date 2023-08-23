--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX deviation: this was to support webpack logic, logic which is needed in luau
local exports = {}
-- ROBLOX todo: this is supposed to be a generic function
local function maybe(thunk: () -> any): (any | nil)
	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
		local _ok, result, hasReturned = xpcall(function()
			return thunk(), true
		end, function() end)
		if hasReturned then
			return result
		end
	end
	return nil
end
exports.maybe = maybe
return exports
