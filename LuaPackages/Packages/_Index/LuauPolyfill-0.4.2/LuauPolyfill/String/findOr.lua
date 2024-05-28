--!strict
type Match = {
	index: number,
	match: string,
}

-- excluding the `+` and `*` character, since findOr tests and graphql use them explicitly
local luaPatternCharacters = "([" .. ("$%^()-[].?"):gsub("(.)", "%%%1") .. "])"

local function findOr(str: string, patternTable: { string }, initIndex: number?): Match | nil
	-- loop through all options in patern patternTable

	local init = utf8.offset(str, initIndex or 1)
	local matches = {}
	for _, value in patternTable do
		value = value:gsub(luaPatternCharacters, "%%%1")
		local iStart, iEnd = string.find(str, value, init)
		if iStart then
			local prefix = string.sub(str, 1, iStart - 1)
			local prefixEnd, invalidBytePosition = utf8.len(prefix)
			if prefixEnd == nil then
				error(("string `%s` has an invalid byte at position %s"):format(prefix, tostring(invalidBytePosition)))
			end
			local iStartIndex = prefixEnd :: number + 1
			local match = {
				index = iStartIndex,
				match = string.sub(str, iStart, iEnd),
			}
			table.insert(matches, match)
		end
	end

	-- if no matches, return nil
	if #matches == 0 then
		return nil
	end

	-- find the first matched index (after the init param)
	-- for each, if we get a hit, return the earliest index and matched term

	local firstMatch
	for _, value in matches do
		-- load first condition
		if firstMatch == nil then
			firstMatch = value
		end
		-- identify if current match comes before first match
		if value.index < firstMatch.index then
			firstMatch = value
		end
	end

	-- return first match
	return firstMatch
end

return findOr
