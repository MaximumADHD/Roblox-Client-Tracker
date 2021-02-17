
local function copyDeep(dictionary)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local new = {}

	for k, v in pairs(dictionary) do
		if type(v) == "table" then
			new[k] = copyDeep(v)
		else
			new[k] = v
		end
	end

	return new
end

return copyDeep