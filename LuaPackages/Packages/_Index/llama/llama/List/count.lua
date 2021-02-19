
local function alwaysTrue()
	return true
end

local function count(list, predicate)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	predicate = predicate or alwaysTrue
	
	local counter = 0

	for i = 1, #list do
		if predicate(list[i], i) then
			counter = counter + 1
		end
	end

	return counter
end

return count