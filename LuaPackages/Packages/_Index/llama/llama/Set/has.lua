
local function has(set, key)
	local setType = type(set)
	assert(setType == "table", "expected a table for first argument, got " .. setType)

	assert(key ~= nil, "expected second argument to be anything but nil, got nil")
	
	return set[key] == true
end

return has