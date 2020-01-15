local Action = require(script.Parent.Action)
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

if FFlagTerrainToolsRefactor then
	return Action(script.Name, function(baseSize)
		local baseSizeNum = tonumber(baseSize)
		assert(baseSizeNum, ("Expected baseSize to be a number, received %s"):format(type(baseSize)))
		return {
			baseSize = baseSizeNum,
		}
	end)
else
	return Action(script.Name, function(baseSize)
		baseSize = tonumber(baseSize)
		if baseSize then
			assert(type(baseSize) == "number", string.format("Expected baseSize to be a number, received %s", type(baseSize)))
		end
		return {
			baseSize = baseSize
		}
	end)
end
