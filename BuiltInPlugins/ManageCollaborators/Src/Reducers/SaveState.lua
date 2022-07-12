local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetSaveState = require(Actions.SetSaveState)

return Rodux.createReducer({
}, {
	ResetStore = function(state, action)
		return {}
	end,

	[SetSaveState.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			CurrentSaveState = action.saveState,
		})
	end,
})
