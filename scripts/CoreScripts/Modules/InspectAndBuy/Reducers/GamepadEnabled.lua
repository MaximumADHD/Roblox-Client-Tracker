local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent

local SetGamepadEnabled = require(InspectAndBuyFolder.Actions.SetGamepadEnabled)

local GamepadEnabled = Rodux.createReducer(false, {
	[SetGamepadEnabled.name] = function(state, action)
		return action.gamepadEnabled
	end,
})

return GamepadEnabled
