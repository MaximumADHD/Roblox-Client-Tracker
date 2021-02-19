
local function splice(list, start, finish, ...)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local startType = type(start)
	assert(startType == "number" and start % 1 == 0, "expected an integer for second argument, got " .. startType)

	local finishType = type(finish)
	assert(finishType == "number" and finish % 1 == 0, "expected an integer for third argument, got " .. finishType)

	assert(start <= finish, "start index must be less than or equal to end index")

	local new = {}
	local index = 1
	local len = #list

	start = math.max(start, 1)
	finish = math.min(start, len)

	for i = 1, len do
		if i == start then
			for j = 1, select('#', ...) do
				new[index] = select(j, ...)
				index = index + 1
			end

			i = finish
		else
			new[index] = list[i]
			index = index + 1
		end
	end

	return new
end

return splice