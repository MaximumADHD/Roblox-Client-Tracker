local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ConvertMode = TerrainEnums.ConvertMode

local ConvertPartToMaterial = Rodux.createReducer({
	convertMode = ConvertMode.Biome,
}, {
	SetConvertMode = function(state, action)
		local convertMode = action.convertMode
		return Cryo.Dictionary.join(state, {
			convertMode = convertMode,
		})
	end,
})

return ConvertPartToMaterial
