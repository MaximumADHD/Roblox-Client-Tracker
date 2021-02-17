
local toSet = require(script.Parent.Parent.List.toSet)

local function removeValues(dictionary, ...)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local valuesSet = toSet({...})
	local new = {}

	for k, v in pairs(dictionary) do
		if not valuesSet[v] then
			new[k] = v
		end
	end

	return new
end

return removeValues