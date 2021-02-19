
local toSet = require(script.Parent.Parent.List.toSet)

local function removeValue(list, ...)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local valuesSet = toSet({...})
	local new = {}
	local index = 1

	for i = 1, #list do
		if not valuesSet[list[i]] then
			new[index] = list[i]
			index = index + 1
		end
	end

	return new
end

return removeValue