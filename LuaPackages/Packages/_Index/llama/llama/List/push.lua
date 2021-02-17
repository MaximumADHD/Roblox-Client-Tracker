
local function push(list, ...)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local new = {}
	local len = #list

	for i = 1, len do
		new[i] = list[i]
	end

	for i = 1, select('#', ...) do
		new[len + i] = select(i, ...)
	end

	return new
end

return push