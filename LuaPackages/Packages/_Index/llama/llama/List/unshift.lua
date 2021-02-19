
local function unshift(list, ...)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local argc = select('#', ...)

	local new = {}

	for i = 1, argc do
		new[i] = select(i, ...)
	end

	for i = 1, #list do
		new[argc + i] = list[i]
	end

	return new
end

return unshift