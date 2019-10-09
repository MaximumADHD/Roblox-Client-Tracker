local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local SelectTool = Rodux.createReducer({
	fillMaterial = Enum.Material.Grass,
	mergeEmpty = false,
},
{
	SetMergeEmpty = function(state, action)
		local mergeEmpty = action.mergeEmpty

		return Cryo.Dictionary.join(state, {
			mergeEmpty = mergeEmpty
		})
	end,
})

return SelectTool