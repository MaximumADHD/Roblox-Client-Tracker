
local function copyDeep(list)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local new = {}

	for i = 1, #list do
		if type(list[i]) == "table" then
			new[i] = copyDeep(list[i])
		else
			new[i] = list[i]
		end
	end
	
	return new
end

return copyDeep