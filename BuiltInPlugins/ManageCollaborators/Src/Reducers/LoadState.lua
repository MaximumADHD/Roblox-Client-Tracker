local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetLoadState = require(Actions.SetLoadState)

return Rodux.createReducer({
}, {
	ResetStore = function(state, action)
		return {}
	end,

	[SetLoadState.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			CurrentLoadState = action.loadState,
		})
	end,
})
