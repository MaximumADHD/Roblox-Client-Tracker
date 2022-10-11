local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local initial = {
	PlayerAcceptance = false,
}

return Rodux.createReducer(initial, {
	SetPlayerAcceptance = function(state, action)
		return Cryo.Dictionary.join(state, {
			PlayerAcceptance = action.playerAcceptance,
		})
	end,

	ResetInfo = function(state, action)
		return Cryo.Dictionary.join(state, {
			PlayerAcceptance = false,
		})
	end,
})
