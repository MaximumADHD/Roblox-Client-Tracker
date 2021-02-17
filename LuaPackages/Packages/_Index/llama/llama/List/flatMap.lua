
local function flatMap(list, mapper)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local mapperType = type(mapper)
	assert(mapperType == "function", "expected a function for second argument, got " .. mapperType)

	local new = {}
	local index = 1

	for i = 1, #list do
		if type(list[i]) == "table" then
			local layer = flatMap(list[i], mapper)

			for j = 1, #layer do
				new[index] = layer[j]
				index = index + 1
			end
		else
			local value = mapper(list[i], i)

			if value ~= nil then
				new[index] = value
				index = index + 1
			end
		end
	end
	
	return new
end

return flatMap