
local function keys(dictionary)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local keysList = {}

	local index = 1

	for key, _ in pairs(dictionary) do
		keysList[index] = key
		index = index + 1
	end

	return keysList
end

return keys