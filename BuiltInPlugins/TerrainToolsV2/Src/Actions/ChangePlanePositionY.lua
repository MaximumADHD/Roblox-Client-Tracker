local Action = require(script.Parent.Action)
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

if FFlagTerrainToolsRefactor then
	return Action(script.Name, function(planePositionY)
		local planePositionYNum = tonumber(planePositionY)
		assert(planePositionYNum, ("Expected planePositionY to be a number, received %s"):format(type(planePositionY)))
		return {
			planePositionY = planePositionYNum,
		}
	end)
else
	return Action(script.Name, function(planePositionY)
		planePositionY = tonumber(planePositionY)
		if planePositionY then
			assert(type(planePositionY) == "number", string.format("Expected planePositionY to be a number, received %s",
				type(planePositionY)))
		end
		return {
			planePositionY = planePositionY
		}
	end)
end
