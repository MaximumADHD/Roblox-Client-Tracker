local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	IsBusy = false,
}, {
	SetIsBusy = function(state, action)
		return Cryo.Dictionary.join(state, {
			IsBusy = action.isBusy,
		})
	end,
})