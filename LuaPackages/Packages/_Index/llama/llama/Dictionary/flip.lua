
local function flip(dictionary)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local new = {}

	for k, v in pairs(dictionary) do
		new[v] = k
	end

	return new
end

return flip