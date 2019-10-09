--[[
	Changes size
]]
local Action = require(script.Parent.Action)

return Action(script.Name, function(size)
	if size then
		assert(type(size) == "table", string.format("Expected size to be a table, received %s", type(size)))
	end
	
	local x = tonumber(size.X) and tonumber(size.X) or 0
	local y = tonumber(size.Y) and tonumber(size.Y) or 0 
	local z = tonumber(size.Z) and tonumber(size.Z) or 0

	return {
		size = {X = x, Y = y, Z = z}
	}

end)