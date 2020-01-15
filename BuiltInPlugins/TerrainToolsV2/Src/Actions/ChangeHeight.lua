local Action = require(script.Parent.Action)
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

if FFlagTerrainToolsRefactor then
	return Action(script.Name, function(height)
		local heightNum = tonumber(height)
		assert(heightNum, ("Expected height to be a number, received %s"):format(type(height)))
		return {
			height = heightNum,
		}
	end)
else
	return Action(script.Name, function(height)
		height = tonumber(height)
		if height then
			assert(type(height) == "number", string.format("Expected height to be a number, received %s", type(height)))
		end
		return {
			height = height
		}
	end)
end
