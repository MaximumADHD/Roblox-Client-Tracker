
local function every(dictionary, predicate)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local predicateType = type(predicate)
	assert(predicateType == "function", "expected a function for second argument, got " .. predicateType)
	
	for k, v in pairs(dictionary) do
		if not predicate(v, k) then
			return false
		end
	end

	return true
end

return every