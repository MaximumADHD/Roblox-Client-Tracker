local toArrayContains = require(script.Parent.toArrayContains)

local function toBeOneOf(item, arr)
	return toArrayContains(arr, item)
end

return toBeOneOf
