
local copy = require(script.Parent.copy)

local function removeKey(dictionary, ...)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local new = copy(dictionary)

	for i = 1, select('#', ...) do
		new[select(i, ...)] = nil
	end

	return new
end

return removeKey