--[[
	Changes position
]]
local Action = require(script.Parent.Action)
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

if FFlagTerrainToolsRefactor then
	return Action(script.Name, function(position)
		assert(type(position) == "table", ("Expected position to be a table, received %s"):format(type(position)))

		local xn = tonumber(position.X)
		local yn = tonumber(position.Y)
		local zn = tonumber(position.Z)

		assert(xn, ("Expected position.X to be a number, received %s"):format(type(position.x)))
		assert(yn, ("Expected position.Y to be a number, received %s"):format(type(position.y)))
		assert(zn, ("Expected position.Z to be a number, received %s"):format(type(position.z)))

		return {
			position = {
				X = xn,
				Y = yn,
				Z = zn,
			},
		}
	end)
else
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
end
