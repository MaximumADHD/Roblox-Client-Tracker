
local function filter(dictionary, filterer)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)

	local filtererType = type(filterer)
	assert(filtererType == "function", "expected a function for second argument, got " .. filtererType)

	local new = {}

	for k, v in pairs(dictionary) do
		if filterer(v, k) then
			new[k] = v
		end
	end
	
	return new
end

return filter