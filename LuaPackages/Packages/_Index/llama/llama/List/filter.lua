
local function filter(list, filterer)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local filtererType = type(filterer)
	assert(filtererType == "function", "expected a function for second argument, got " .. filtererType)
	
	local new = {}
	local index = 1

	for i = 1, #list do
		if filterer(list[i], i) then
			new[index] = list[i]
			index = index + 1
		end
	end
	
	return new
end

return filter