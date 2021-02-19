
local function some(dictionary, predicate)
	local predicateType = type(predicate)
	assert(predicateType == "function", "expected a function for second argument, got " .. predicateType)

	for k, v in pairs(dictionary) do
		if predicate(v, k) then
			return true
		end
	end

	return false
end

return some