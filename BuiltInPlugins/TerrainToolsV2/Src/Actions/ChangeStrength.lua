local Action = require(script.Parent.Action)
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

if FFlagTerrainToolsRefactor then
	return Action(script.Name, function(strength)
		local strengthNum = tonumber(strength)
		assert(strengthNum, ("Expected strength to be a number, received %s"):format(type(strength)))
		return {
			strength = strengthNum,
		}
	end)
else
	return Action(script.Name, function(strength)
		strength = tonumber(strength)
		if strength then
			assert(type(strength) == "number", string.format("Expected strength to be a number, received %s", type(strength)))
		end
		return {
			strength = strength
		}
	end)
end
