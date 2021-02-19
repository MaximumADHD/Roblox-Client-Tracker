
local function includes(dictionary, value)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	for _, v in pairs(dictionary) do
		if v == value then
			return true
		end
	end

	return false
end

return includes