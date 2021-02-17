
local function insert(list, index, ...)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local len = #list
	assert(index >= 1 and index <= len + 1, "index must be in bounds of list")

	local new = {}
	local resultIndex = 1
	
	for i = 1, len do
		if i == index then
			for j = 1, select('#', ...) do
				new[resultIndex] = select(j, ...)
				resultIndex = resultIndex + 1
			end
		end
		
		new[resultIndex] = list[i]
		resultIndex = resultIndex + 1
	end

	return new
end

return insert