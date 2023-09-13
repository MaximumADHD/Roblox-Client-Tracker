--!nonstrict
local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local CompleteRequest = require(Root.Actions.CompleteRequest)
local SubscriptionPurchaseInfoReceived = require(Root.Actions.SubscriptionPurchaseInfoReceived)
local getPreviewImageUrl = require(Root.getPreviewImageUrl)

local SubscriptionPurchaseInfoReducer = Rodux.createReducer({}, {
	[SubscriptionPurchaseInfoReceived.name] = function(state, action)
		action.subscriptionPurchaseInfo.ImageUrl = getPreviewImageUrl(action.subscriptionPurchaseInfo)
		return action.subscriptionPurchaseInfo
	end,
	[CompleteRequest.name] = function(state, action)
		-- Clear product info when we hide the prompt
		return {}
	end,
})

return SubscriptionPurchaseInfoReducer
