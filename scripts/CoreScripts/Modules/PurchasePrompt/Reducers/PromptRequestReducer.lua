local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)

local Rodux = PurchasePromptDeps.Rodux

local RequestAssetPurchase = require(Root.Actions.RequestAssetPurchase)
local RequestBundlePurchase = require(Root.Actions.RequestBundlePurchase)
local RequestGamepassPurchase = require(Root.Actions.RequestGamepassPurchase)
local RequestProductPurchase = require(Root.Actions.RequestProductPurchase)
local RequestPremiumPurchase = require(Root.Actions.RequestPremiumPurchase)
local RequestSubscriptionPurchase = require(Root.Actions.RequestSubscriptionPurchase)
local CompleteRequest = require(Root.Actions.CompleteRequest)
local RequestType = require(Root.Enums.RequestType)

local EMPTY_STATE = { requestType = RequestType.None }

local RequestReducer = Rodux.createReducer(EMPTY_STATE, {
	[RequestAssetPurchase.name] = function(state, action)
		return {
			id = action.id,
			infoType = Enum.InfoType.Asset,
			requestType = RequestType.Asset,
			equipIfPurchased = action.equipIfPurchased,
			isRobloxPurchase = action.isRobloxPurchase,
		}
	end,
	[RequestGamepassPurchase.name] = function(state, action)
		return {
			id = action.id,
			infoType = Enum.InfoType.GamePass,
			requestType = RequestType.GamePass,
			isRobloxPurchase = false,
		}
	end,
	[RequestProductPurchase.name] = function(state, action)
		return {
			id = action.id,
			infoType = Enum.InfoType.Product,
			requestType = RequestType.Product,
			isRobloxPurchase = false,
		}
	end,
	[RequestBundlePurchase.name] = function(state, action)
		return {
			id = action.id,
			infoType = Enum.InfoType.Bundle,
			requestType = RequestType.Bundle,
			isRobloxPurchase = true,
		}
	end,
	[RequestPremiumPurchase.name] = function(state, action)
		return {
			requestType = RequestType.Premium,
		}
	end,
	[RequestSubscriptionPurchase.name] = function(state, action)
		return {
			id = action.id,
			infoType = Enum.InfoType.Subscription,
			requestType = RequestType.Subscription,
		}
	end,
	[CompleteRequest.name] = function(state, action)
		-- Clear product info when we hide the prompt
		return EMPTY_STATE
	end,
})

return RequestReducer
