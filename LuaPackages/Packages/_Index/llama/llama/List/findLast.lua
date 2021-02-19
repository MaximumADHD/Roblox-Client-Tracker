
local function find(list, value, from)
	local listType = type(list)
	assert(listType == "table", "expected a table for first argument, got " .. listType)
	
	for i = from or #list, 1, -1 do
		if list[i] == value then
			return i
		end
	end

	return nil
end

return find