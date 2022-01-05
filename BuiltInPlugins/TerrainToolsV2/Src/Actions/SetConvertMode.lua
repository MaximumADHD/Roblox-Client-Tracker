local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")
local FFlagTerrainToolsFlagConvertToolRemoval = game:GetFastFlag("TerrainToolsFlagConvertToolRemoval")
local convertToolRemoval = FFlagTerrainToolsFlagConvertToolRemoval and not FFlagTerrainToolsConvertPartTool

assert(not convertToolRemoval)

local Action = require(script.Parent.Action)

return Action(script.Name, function(convertMode)
	assert(type(convertMode) == "string", ("Expected convertMode to be a string, received %s"):format(type(convertMode)))

	return {
		convertMode = convertMode,
	}
end)
