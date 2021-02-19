
local function copy(dictionary)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local new = {}

	for k, v in pairs(dictionary) do
		new[k] = v
	end

	return new
end

return copy