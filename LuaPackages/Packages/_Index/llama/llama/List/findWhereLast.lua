
local function find(list, predicate, from)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local predicateType = type(predicate)
	assert(predicateType == "function", "expected a function for second argument, got " .. predicateType)
	
	for i = from or #list, 1, -1 do
		if predicate(list[i], i) then
			return i
		end
	end

	return nil
end

return find