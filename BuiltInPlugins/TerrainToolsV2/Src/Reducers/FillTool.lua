--[[

]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local FillTool = Rodux.createReducer({
	mergeEmpty = false,
	material = nil,
},
{
	SetMergeEmpty = function(state, action)
		local mergeEmpty = action.mergeEmpty

		return Cryo.Dictionary.join(state, {
			mergeEmpty = mergeEmpty
		})
	end,
	SetMaterial = function(state, action)
		local material = action.material

		return Cryo.Dictionary.join(state, {
			material = material
		})
	end,
})

return FillTool