
local function reverse(list)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local new = {}

	local len = #list
	local back = len + 1

	for i = 1, len do
		new[i] = list[back - i]
	end
	
	return new
end

return reverse