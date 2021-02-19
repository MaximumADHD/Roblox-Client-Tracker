
local function map(dictionary, mapper)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local mapperType = type(mapper)
	assert(mapperType == "function", "expected a function for second argument, got " .. mapperType)

	local mapped = {}

	for k, v in pairs(dictionary) do
		local value, key = mapper(v, k)
		mapped[key or k] = value
	end

	return mapped
end

return map