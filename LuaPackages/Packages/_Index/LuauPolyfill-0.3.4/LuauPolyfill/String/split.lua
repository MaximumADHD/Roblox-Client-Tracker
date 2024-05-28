--!strict
local findOr = require(script.Parent.findOr)
local slice = require(script.Parent.slice)

type Array<T> = { [number]: T }

type Pattern = string | Array<string>

local function split(str: string, pattern: Pattern?): Array<string>
	if pattern == nil then
		return { str }
	end
	local patternList: Array<string>
	if typeof(pattern) == "string" then
		if pattern == "" then
			--[[ ROBLOX deviation: JS would return an array of characters ]]
			return { str }
		end
		patternList = { pattern }
	else
		patternList = pattern :: any
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
	until match == nil or init > strLen
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
