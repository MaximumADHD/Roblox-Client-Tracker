--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/naturalCompare.js
--[[*
 * Returns a number indicating whether a reference string comes before, or after,
 * or is the same as the given string in natural sort order.
 *
 * See: https://en.wikipedia.org/wiki/Natural_sort_order
 *
 ]]

local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Number = LuauPolyfill.Number
local String = LuauPolyfill.String
local isNaN = Number.isNaN
local isDigit, DIGIT_0, DIGIT_9

local function naturalCompare(aStr: string, bStr: string): number
	local aIdx = 1
	local bIdx = 1

	while aIdx <= #aStr and bIdx <= #bStr do
		local aChar = String.charCodeAt(aStr, aIdx)
		local bChar = String.charCodeAt(bStr, bIdx)

		if isDigit(aChar) and isDigit(bChar) then
			local aNum = 0
			repeat
				aIdx += 1
				aNum = aNum * 10 + aChar - DIGIT_0
				aChar = String.charCodeAt(aStr, aIdx)
			until not (isDigit(aChar) and aNum > 0)

			local bNum = 0
			repeat
				bIdx += 1
				bNum = bNum * 10 + bChar - DIGIT_0
				bChar = String.charCodeAt(bStr, bIdx)
			until not (isDigit(bChar) and bNum > 0)

			if aNum < bNum then
				return -1
			end

			if aNum > bNum then
				return 1
			end
		else
			if aChar < bChar then
				return -1
			end
			if aChar > bChar then
				return 1
			end
			aIdx += 1
			bIdx += 1
		end
	end

	return #aStr - #bStr
end

DIGIT_0 = 48
DIGIT_9 = 57

isDigit = function(code: number): boolean
	return not isNaN(code) and DIGIT_0 <= code and code <= DIGIT_9
end

return {
	naturalCompare = naturalCompare,
}
