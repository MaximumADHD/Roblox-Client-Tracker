
local function has(dictionary, key)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)

	assert(key ~= nil, "expected second argument to be anything but nil, got nil")
	
	return dictionary[key] ~= nil
end

return has