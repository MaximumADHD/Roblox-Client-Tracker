
local function reduceRight(list, reducer, initialReduction)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)

	local reducerType = type(reducer)
	assert(reducerType == "function", "expected a function for second argument, got " .. reducerType)

	local len = #list
	local reduction = initialReduction
	if reduction == nil then
		reduction = list[len]
	end
	local start = initialReduction == nil and len - 1 or len

	for i = start, 1, -1 do
		reduction = reducer(reduction, list[i], i)
	end

	return reduction
end

return reduceRight