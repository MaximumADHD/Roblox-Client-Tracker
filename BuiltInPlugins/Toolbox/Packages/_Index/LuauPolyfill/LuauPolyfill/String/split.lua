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
	repeat
		local match = findOr(str, patternList, init)
		if match ~= nil then
			table.insert(result, slice(str, init, match.index))
			init = match.index + utf8.len(match.match)
		else
			table.insert(result, slice(str, init, nil))
		end
		if match ~= nil then
			lastMatch = match
		end
	until match == nil or init > utf8.len(str)
	local strLen = utf8.len(str)
	if lastMatch ~= nil and lastMatch.index + utf8.len(lastMatch.match) == strLen + 1 then
		table.insert(result, "")
	end
	return result
end

return split
