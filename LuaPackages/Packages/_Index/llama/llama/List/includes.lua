
local function includes(list, value)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	for i = 1, #list do
		if list[i] == value then
			return true
		end
	end

	return false
end

return includes