
local function copy(list)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local new = {}

	for i = 1, #list do
		new[i] = list[i]
	end
	
	return new
end

return copy