--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/serializeFetchParameter.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Error = LuauPolyfill.Error
local Array = LuauPolyfill.Array
type Error = LuauPolyfill.Error

local HttpService = game:GetService("HttpService")

local exports = {}

local invariantModule = require(srcWorkspace.jsutils.invariant)
local InvariantError = invariantModule.InvariantError
type InvariantError = invariantModule.InvariantError

export type ClientParseError = InvariantError & { parseError: Error }

local function serializeFetchParameter(p: any, label: string, treatEmptyAsObject: boolean?)
	local serialized
	local ok, result = pcall(function()
		-- ROBLOX deviation: in Lua we can't distinguish between empty arrays, and objects.
		-- If we know that something is an object we can force it to return a stringified object.
		-- otherwise HttpService:JSONEncode will treat it as an array
		if Array.isArray(p) and #p == 0 and treatEmptyAsObject then
			serialized = "{}"
		else
			-- ROBLOX deviation: using HttpService:JSONEncode instead of JSON.stringify
			serialized = HttpService:JSONEncode(p)
		end
	end)
	if not ok then
		local e = result
		local parseError = InvariantError.new(
			-- ROBLOX deviation: using 'e' directly as JSONEncode throws bare string
			("Network request failed. %s is not serializable: %s"):format(label, e)
		) :: ClientParseError
		-- -- ROBLOX deviation: creating new Error as JSONEncode throws bare string
		parseError.parseError = Error.new(e)
		error(parseError)
	end
	return serialized
end
exports.serializeFetchParameter = serializeFetchParameter

return exports
