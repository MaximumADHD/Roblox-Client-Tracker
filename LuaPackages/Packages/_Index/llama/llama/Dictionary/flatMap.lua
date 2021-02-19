
local join = require(script.Parent.join)

local function flatMap(dictionary, mapper)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local mapperType = type(mapper)
	assert(mapperType == "function", "expected a function for second argument, got " .. mapperType)

	local new = {}

	for k, v in pairs(dictionary) do
		if type(v) == "table" then
			new = join(flatMap(v, mapper), new)
		else
			local value, key = mapper(v, k)

			new[key or k] = value
		end
	end
	
	return new
end

return flatMap