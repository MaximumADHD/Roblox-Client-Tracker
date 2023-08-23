--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/arrays.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local function isNonEmptyArray(value: any): boolean
	return (function()
		if Array.isArray(value) then
			return #value > 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
		else
			return Array.isArray(value)
		end
	end)()
end
exports.isNonEmptyArray = isNonEmptyArray
return exports
