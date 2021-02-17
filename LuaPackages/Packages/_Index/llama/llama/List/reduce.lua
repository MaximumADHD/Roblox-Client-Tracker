
local function reduce(list, reducer, initialReduction)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local reducerType = type(reducer)
	assert(reducerType == "function", "expected a function for second argument, got " .. reducerType)

	local reduction = initialReduction
	if reduction == nil then
		reduction = list[1]
	end
	local start = initialReduction == nil and 2 or 1

	for i = start, #list do
		reduction = reducer(reduction, list[i], i)
	end

	return reduction
end

return reduce