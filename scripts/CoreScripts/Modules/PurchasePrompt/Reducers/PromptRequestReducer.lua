--!nonstrict
local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)

local Rodux = PurchasePromptDeps.Rodux

local RequestAssetPurchase = require(Root.Actions.RequestAssetPurchase)
local RequestBundlePurchase = require(Root.Actions.RequestBundlePurchase)
local RequestGamepassPurchase = require(Root.Actions.RequestGamepassPurchase)
local RequestProductPurchase = require(Root.Actions.RequestProductPurchase)
local RequestPremiumPurchase = require(Root.Actions.RequestPremiumPurchase)
local RequestSubscriptionPurchase = require(Root.Actions.RequestSubscriptionPurchase)
local RequestAvatarCreationFeePurchase = require(Root.Actions.RequestAvatarCreationFeePurchase)
local CompleteRequest = require(Root.Actions.CompleteRequest)
local RequestType = require(Root.Enums.RequestType)

local EMPTY_STATE = { requestType = RequestType.None }

local RequestReducer = Rodux.createReducer(EMPTY_STATE, {
	[RequestAssetPurchase.name] = function(state, action)
		local idempotencyKey = action.idempotencyKey
		if idempotencyKey == nil or idempotencyKey == '' then
			idempotencyKey = HttpService:GenerateGUID(false)
		end
		return {
			id = action.id,
			infoType = Enum.InfoType.Asset,
			requestType = RequestType.Asset,
			equipIfPurchased = action.equipIfPurchased,
			isRobloxPurchase = action.isRobloxPurchase,
			idempotencyKey = idempotencyKey,
			purchaseAuthToken = action.purchaseAuthToken or '',
			collectibleItemId = action.collectibleItemId or '',
			collectibleItemInstanceId = action.collectibleItemInstanceId or '',
			collectibleProductId = action.collectibleProductId or '',
			expectedPrice = action.expectedPrice or 0,
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
		local idempotencyKey = action.idempotencyKey
		if idempotencyKey == nil or idempotencyKey == '' then
			idempotencyKey = HttpService:GenerateGUID(false)
		end
		return {
			id = action.id,
			infoType = Enum.InfoType.Bundle,
			requestType = RequestType.Bundle,
			isRobloxPurchase = true,
			idempotencyKey = idempotencyKey,
			purchaseAuthToken = action.purchaseAuthToken or '',
			collectibleItemId = action.collectibleItemId or '',
			collectibleItemInstanceId = action.collectibleItemInstanceId or '',
			collectibleProductId = action.collectibleProductId or '',
			expectedPrice = action.expectedPrice or 0,
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
			requestType = RequestType.Subscription,
		}
	end,
	[RequestAvatarCreationFeePurchase.name] = function(state, action)
		return {
			requestType = RequestType.AvatarCreationFee,
			serializedModel = action.serializedModel,
		}
	end,
	[CompleteRequest.name] = function(state, action)
		-- Clear product info when we hide the prompt
		return EMPTY_STATE
	end,
})

return RequestReducer
