local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Rodux = require(Plugin.Packages.Rodux)

return Rodux.createReducer({
	mainSwitchEnabled = false,
}, {
	OnPlayerEmulationEnabledChanged = function(state, action)
		local enabled = action.enabled

		return Cryo.Dictionary.join(state, {
			mainSwitchEnabled = enabled,
		})
	end,
})