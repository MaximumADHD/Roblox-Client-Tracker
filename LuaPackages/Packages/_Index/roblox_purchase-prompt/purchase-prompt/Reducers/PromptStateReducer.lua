local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local Rodux = require(LuaPackages.Rodux)

local SetPromptState = require(Root.Actions.SetPromptState)
local CompleteRequest = require(Root.Actions.CompleteRequest)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local StartPurchase = require(Root.Actions.StartPurchase)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local PromptState = require(Root.Enums.PromptState)

local PromptStateReducer = Rodux.createReducer(PromptState.None, {
	[SetPromptState.name] = function(state, action)
		return action.promptState
	end,
	[CompleteRequest.name] = function(state, action)
		return PromptState.None
	end,
	[ErrorOccurred.name] = function(state, action)
		return PromptState.Error
	end,
	[StartPurchase.name] = function(state, action)
		return PromptState.PurchaseInProgress
	end,
	[PromptNativeUpsell.name] = function(state, action)
		return PromptState.RobuxUpsell
	end,
})

return PromptStateReducer