--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
--!strict
local String = script.Parent
local findOr = require(String.findOr)
local slice = require(String.slice)

local Packages = String.Parent
local types = require(Packages.ES7Types)
type Array<T> = types.Array<T>
local MAX_SAFE_INTEGER = require(Packages.Number).MAX_SAFE_INTEGER

type Pattern = string | Array<string>

local function split(str: string, _pattern: Pattern?, _limit: number?): Array<string>
	if _pattern == nil then
		return { str }
	end
	if _limit == 0 then
		return {}
	end
	local limit = if _limit == nil or _limit < 0 then MAX_SAFE_INTEGER else _limit
	local pattern = _pattern
	local patternList: Array<string>
	if typeof(pattern) == "string" then
		if pattern == "" then
			local result = {}
			for c in str:gmatch(".") do
				table.insert(result, c)
			end
			return result
		end
		patternList = { pattern }
	else
		patternList = pattern :: Array<string>
	end
	local init = 1
	local result = {}
	local lastMatch
	local strLen, invalidBytePosition = utf8.len(str)
	assert(strLen ~= nil, ("string `%s` has an invalid byte at position %s"):format(str, tostring(invalidBytePosition)))

	repeat
		local match = findOr(str, patternList, init)
		if match ~= nil then
			table.insert(result, slice(str, init, match.index))
			local matchLength = utf8.len(match.match)
			-- Luau FIXME? Luau doesn't understand that str has already been shown to be valid utf8 on line 26 and therefore won't be nil
			init = match.index + matchLength :: number
		else
			table.insert(result, slice(str, init, nil))
		end
		if match ~= nil then
			lastMatch = match
		end
	until match == nil or init > strLen or #result >= limit
	if lastMatch ~= nil then
		local lastMatchLength, invalidBytePosition_ = utf8.len(lastMatch.match)
		assert(
			lastMatchLength ~= nil,
			("string `%s` has an invalid byte at position %s"):format(lastMatch.match, tostring(invalidBytePosition_))
		)
		if lastMatch.index + lastMatchLength == strLen + 1 then
			table.insert(result, "")
		end
	end
	return result
end

return split
