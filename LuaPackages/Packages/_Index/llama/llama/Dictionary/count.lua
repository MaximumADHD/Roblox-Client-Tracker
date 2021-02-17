
local function alwaysTrue()
	return true
end

local function count(dictionary, predicate)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local counter = 0

	predicate = predicate or alwaysTrue

	for k, v in pairs(dictionary) do
		if predicate(v, k) then
			counter = counter + 1
		end
	end

	return counter
end

return count