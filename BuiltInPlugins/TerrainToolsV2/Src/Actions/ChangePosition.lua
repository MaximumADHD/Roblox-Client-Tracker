--[[
	Changes position
]]
local Action = require(script.Parent.Action)

return Action(script.Name, function(position)
	if position then
		assert(type(position) == "table", string.format("Expected position to be a table, received %s", type(position)))
	end

	local x = tonumber(position.X) and tonumber(position.X) or 0
	local y = tonumber(position.Y) and tonumber(position.Y) or 0 
	local z = tonumber(position.Z) and tonumber(position.Z) or 0

	return {
		position = {X = x, Y = y, Z = z}
	}

end)