local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local PromptState = require(script.Parent.Parent.PromptState)

local SetPromptState = require(script.Parent.Parent.Actions.SetPromptState)
local HidePrompt = require(script.Parent.Parent.Actions.HidePrompt)
local ErrorOccurred = require(script.Parent.Parent.Actions.ErrorOccurred)
local ItemCannotBePurchased = require(script.Parent.Parent.Actions.ItemCannotBePurchased)
local StartPurchase = require(script.Parent.Parent.Actions.StartPurchase)
local PromptNativeUpsell = require(script.Parent.Parent.Actions.PromptNativeUpsell)

local PromptStateReducer = Rodux.createReducer(PromptState.Hidden, {
	[SetPromptState.name] = function(state, action)
		return action.promptState
	end,
	[HidePrompt.name] = function(state, action)
		return PromptState.Hidden
	end,
	[ErrorOccurred.name] = function(state, action)
		return PromptState.Error
	end,
	[ItemCannotBePurchased.name] = function(state, action)
		return PromptState.CannotPurchase
	end,
	[StartPurchase.name] = function(state, action)
		return PromptState.PurchaseInProgress
	end,
	[PromptNativeUpsell.name] = function(state, action)
		return PromptState.RobuxUpsell
	end,
})

return PromptStateReducer