local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local SetPromptState = require(Root.Actions.SetPromptState)
local CompleteRequest = require(Root.Actions.CompleteRequest)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local StartPurchase = require(Root.Actions.StartPurchase)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local SetWindowState = require(Root.Actions.SetWindowState)
local WindowState = require(Root.Enums.WindowState)
local PromptState = require(Root.Enums.PromptState)

return Rodux.createReducer(WindowState.Hidden, {
	[SetPromptState.name] = function(state, action)
		if action.promptState == PromptState.None then
			return WindowState.Hidden
		else
			return WindowState.Shown
		end
	end,
	[SetWindowState.name] = function(state, action)
		return action.state
	end,
	[ErrorOccurred.name] = function(state, action)
		return WindowState.Shown
	end,
	[StartPurchase.name] = function(state, action)
		return WindowState.Shown
	end,
	[PromptNativeUpsell.name] = function(state, action)
		return WindowState.Shown
	end,
	[CompleteRequest.name] = function(state, action)
		return WindowState.Hidden
	end,
})
