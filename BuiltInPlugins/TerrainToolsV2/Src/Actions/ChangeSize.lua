--[[
	Changes size
]]
local Action = require(script.Parent.Action)
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

if FFlagTerrainToolsRefactor then
	return Action(script.Name, function(size)
		assert(type(size) == "table", ("Expected size to be a table, received %s"):format(type(size)))

		local xn = tonumber(size.X)
		local yn = tonumber(size.Y)
		local zn = tonumber(size.Z)

		assert(xn, ("Expected size.X to be a number, received %s"):format(type(size.x)))
		assert(yn, ("Expected size.Y to be a number, received %s"):format(type(size.y)))
		assert(zn, ("Expected size.Z to be a number, received %s"):format(type(size.z)))

		return {
			size = {
				X = xn,
				Y = yn,
				Z = zn,
			},
		}
	end)
else
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
end
