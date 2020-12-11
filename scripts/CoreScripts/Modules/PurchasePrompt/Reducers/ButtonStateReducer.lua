local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local SetButtonState = require(Root.Actions.SetButtonState)
local ButtonState = require(Root.Enums.ButtonState)

return Rodux.createReducer(ButtonState.Enabled, {
	[SetButtonState.name] = function(state, action)
		return action.state
	end,
})
