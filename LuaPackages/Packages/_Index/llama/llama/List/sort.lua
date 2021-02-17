
local copy = require(script.Parent.copy)

local function sort(list, comparator)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	local new = copy(list)

	table.sort(new, comparator)

	return new
end

return sort