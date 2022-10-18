--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/didYouMean.js
local jsutils = script.Parent
local srcWorkspace = jsutils.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local MAX_SUGGESTIONS = 5

--[[
 * Given [ A, B, C ] return ' Did you mean A, B, or C?'.
 ]]
-- ROBLOX TODO Luau: need support for overloads
local function didYouMean(firstArg: Array<string> | string, secondArg: Array<string>?): string
	local subMessage: string?
	-- ROBLOX TODO? some weird switcheroos here that make type analysis hard to figure
	local suggestionsArg: Array<string>
	if secondArg then
		subMessage = firstArg :: string
		suggestionsArg = secondArg
	else
		suggestionsArg = firstArg :: Array<string>
	end

	local message = " Did you mean "
	if subMessage then
		message = message .. (subMessage .. " ")
	end

	local suggestions = {}
	for i = 1, #suggestionsArg do
		suggestions[i] = ("%q"):format(suggestionsArg[i])
	end

	local suggestionsLength = #suggestions
	if suggestionsLength == 0 then
		return ""
	elseif suggestionsLength == 1 then
		return message .. suggestions[1] .. "?"
	elseif suggestionsLength == 2 then
		return message .. suggestions[1] .. " or " .. suggestions[2] .. "?"
	end

	local selected = {}
	table.move(suggestions, 1, MAX_SUGGESTIONS, 1, selected)
	local lastItem = table.remove(selected)

	return message .. table.concat(selected, ", ") .. ", or " .. tostring(lastItem) .. "?"
end

return {
	didYouMean = didYouMean,
}
