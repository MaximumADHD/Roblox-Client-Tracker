
local toSet = require(script.Parent.toSet)

local function removeIndex(list, ...)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local new = {}
	local removeIndices = toSet({...})
	local index = 1

	for i = 1, #list do
		if not removeIndices[i] then
			new[index] = list[i]
			index = index + 1
		end
	end

	return new
end

return removeIndex