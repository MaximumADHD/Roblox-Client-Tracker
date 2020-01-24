local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Rodux = require(LuaPackages.Rodux)

local SetGamepadEnabled = require(script.Parent.Parent.Actions.SetGamepadEnabled)

local GamepadEnabledReducer = Rodux.createReducer(false, {
	[SetGamepadEnabled.name] = function(state, action)
		return action.enabled
	end,
})

return GamepadEnabledReducer