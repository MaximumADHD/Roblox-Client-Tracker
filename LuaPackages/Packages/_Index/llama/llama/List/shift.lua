
local function shift(list, shifts)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	shifts = shifts or 1
	local shiftsType = type(shifts)
	assert(shiftsType == "number" and shifts % 1 == 0, "expected an integer for second argument, got " .. shiftsType)
	
	local new = {}

	for i = 1 + shifts, #list do
		new[i - shifts] = list[i]
	end

	return new
end

return shift