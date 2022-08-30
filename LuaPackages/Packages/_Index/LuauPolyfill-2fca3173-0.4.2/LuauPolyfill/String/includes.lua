--!strict

-- excluding the `+` and `*` character, since findOr tests and graphql use them explicitly
local luaPatternCharacters = "([" .. ("$%^()-[].?"):gsub("(.)", "%%%1") .. "])"

local function includes(str: string, substring: string, position: (string | number)?): boolean
	local strLen, invalidBytePosition = utf8.len(str)
	assert(strLen ~= nil, ("string `%s` has an invalid byte at position %s"):format(str, tostring(invalidBytePosition)))
	if strLen == 0 then
		return false
	end

	if #substring == 0 then
		return true
	end

	local startIndex = 1
	if position ~= nil then
		startIndex = tonumber(position) or 1
		if startIndex > strLen then
			return false
		end
	end

	if startIndex < 1 then
		startIndex = 1
	end

	local init = utf8.offset(str, startIndex)
	local value = substring:gsub(luaPatternCharacters, "%%%1")
	local iStart, _ = string.find(str, value, init)
	return iStart ~= nil
end

return includes
