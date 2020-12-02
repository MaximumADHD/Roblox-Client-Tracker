local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local SetGamepadEnabled = require(Root.Actions.SetGamepadEnabled)

local gamepadDefault = UserInputService:GetPlatform() == Enum.Platform.XBoxOne

local GamepadEnabledReducer = Rodux.createReducer(gamepadDefault, {
	[SetGamepadEnabled.name] = function(state, action)
		return action.enabled
	end,
})

return GamepadEnabledReducer
