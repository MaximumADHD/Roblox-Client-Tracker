local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local SetGamepadEnabled = require(script.Parent.Parent.Actions.SetGamepadEnabled)

local GamepadEnabledReducer = Rodux.createReducer(false, {
	[SetGamepadEnabled.name] = function(state, action)
		return action.enabled
	end,
})

return GamepadEnabledReducer