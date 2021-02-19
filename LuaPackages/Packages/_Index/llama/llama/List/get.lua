
local function get(list, index)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local indexType = type(index)
	assert(indexType == "number" and index % 1 == 0, "expected second argument to be an integer, got " .. indexType)
	
	return list[index]
end

return get