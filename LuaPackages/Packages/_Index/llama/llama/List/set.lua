
local function set(list, index, value)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local len = #list

	assert(index <= len, "index must be less than or equal to the list length")
	assert(index >= 1, "index must be greater than or equal to 1")

	local new = {}
	local resultIndex = 1

	for i = 1, len do
		if i == index then
			new[resultIndex] = value
		else
			new[resultIndex] = list[i]
		end

		resultIndex = resultIndex + 1
	end

	return new
end

return set