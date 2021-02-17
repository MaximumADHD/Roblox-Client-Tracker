
local join = require(script.Parent.join)

local function flatten(dictionary)
	local dictionaryType = type(dictionary)
	assert(dictionaryType == "table", "expected a table for first argument, got " .. dictionaryType)
	
	local new = {}

	for k, v in pairs(dictionary) do
		if type(v) == "table" then
			new = join(flatten(v), new)
		else
			new[k] = v
		end
	end

	return new
end

return flatten