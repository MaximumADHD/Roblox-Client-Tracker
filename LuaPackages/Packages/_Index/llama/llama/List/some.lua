
local function some(list, predicate)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local predicateType = type(predicate)
	assert(predicateType == "function", "expected a function for second argument, got " .. predicateType)
	
	for i = 1, #list do
		if predicate(list[i], i) then
			return true
		end
	end

	return false
end

return some