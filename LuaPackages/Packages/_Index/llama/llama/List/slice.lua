
local function slice(list, from, to)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local len = #list
	from = from or 1
	to = to or len

	assert(from <= to, "start index must be less than or equal to end index")

	local new = {}
	local index = 1

	for i = math.max(1, from), math.min(to, len) do
		new[index] = list[i]
		index = index + 1
	end

	return new
end

return slice