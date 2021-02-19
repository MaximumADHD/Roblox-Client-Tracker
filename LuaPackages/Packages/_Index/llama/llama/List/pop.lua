
local function pop(list, pops)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	pops = pops or 1
	local popsType = type(pops)
	assert(popsType == "number" and pops % 1 == 0, "expected an integer for second argument, got " .. popsType)

	local new = {}

	for i = 1, #list - pops do
		new[i] = list[i]
	end

	return new
end

return pop