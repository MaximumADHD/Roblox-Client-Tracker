
local function values(dictionary)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local valuesList = {}

	local index = 1

	for _, v in pairs(dictionary) do
		valuesList[index] = v
		index = index + 1
	end

	return valuesList
end

return values