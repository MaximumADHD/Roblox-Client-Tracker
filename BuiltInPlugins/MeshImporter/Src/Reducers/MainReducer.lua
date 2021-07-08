local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)

local Cryo = require(Plugin.Packages.Cryo)

local initialState = {
	assetSettings = nil,
}

local MainReducer = Rodux.createReducer(initialState, {
	SetAssetSettings = function(state, action)
		return Cryo.Dictionary.join(state, {
			assetSettings = action.assetSettings,
		})
	end,
})

return MainReducer
