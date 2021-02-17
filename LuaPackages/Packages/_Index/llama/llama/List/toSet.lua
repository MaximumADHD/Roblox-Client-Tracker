
local function toSet(list)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local set = {}

	for i = 1, #list do
		set[list[i]] = true
	end
	
	return set
end

return toSet