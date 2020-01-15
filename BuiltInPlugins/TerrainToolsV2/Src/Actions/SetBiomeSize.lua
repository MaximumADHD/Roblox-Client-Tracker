local Action = require(script.Parent.Action)
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

if FFlagTerrainToolsRefactor then
	return Action(script.Name, function(biomeSize)
		local biomeSizeNum = tonumber(biomeSize)
		assert(biomeSizeNum, ("Expected biomeSize to be a number, received %s"):format(type(biomeSize)))
		return {
			biomeSize = biomeSizeNum,
		}
	end)
else
	return Action(script.Name, function(biomeSize)
		local numBiomeSize
		if biomeSize then
			assert(type(biomeSize) == "string", string.format("Expected biomeSize to be a string, received %s", type(biomeSize)))
			numBiomeSize = tostring(biomeSize)
		end

		return {
			biomeSize = numBiomeSize
		}
	end)
end
