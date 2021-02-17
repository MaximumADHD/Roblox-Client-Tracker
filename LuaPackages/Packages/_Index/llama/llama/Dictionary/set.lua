
local copy = require(script.Parent.copy)

local function set(dictionary, key, value)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)

	assert(key ~= nil, "expected second argument to be anything but nil, got nil")

	local new = copy(dictionary)

	new[key] = value

	return new
end

return set