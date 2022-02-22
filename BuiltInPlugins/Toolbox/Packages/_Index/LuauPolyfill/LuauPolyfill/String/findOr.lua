local function findOr(str: string, patternTable: { string }, initIndex: number?)
	-- loop through all options in patern patternTable

	local init = utf8.offset(str, initIndex or 1)
	local matches = {}
	for _, value in ipairs(patternTable) do
		local iStart, iEnd = string.find(str, value, init)
		if iStart then
			local prefix = string.sub(str, 1, iStart - 1)
			local prefixEnd, invalidBytePosition = utf8.len(prefix)
			if not prefixEnd then
				error(("string `%s` has an invalid byte at position %d"):format(prefix, invalidBytePosition))
			end
			local iStartIndex = prefixEnd + 1
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
	for _, value in ipairs(matches) do
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
