--!nonstrict
local Root = script.Parent.Parent
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local CompleteRequest = require(Root.Actions.CompleteRequest)
local PromptState = require(Root.Enums.PromptState)
local RequestType = require(Root.Enums.RequestType)
local PurchaseError = require(Root.Enums.PurchaseError)

local Counter = require(Root.Enums.Counter)
local sendCounter = require(Root.Thunks.sendCounter)

local Analytics = require(Root.Services.Analytics)
local Thunk = require(Root.Thunk)

local requiredServices = {
	Analytics,
}

local function completeRequest()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]
		local state = store:getState()
		local requestType = state.promptRequest.requestType
		local purchaseError = state.purchaseError
		local id = state.promptRequest.id
		local didPurchase = state.hasCompletedPurchase

		local nativeProductId = state.nativeUpsell and state.nativeUpsell.robuxProductId
		local productId = state.productInfo and state.productInfo.productId
		-- Being in this state when the request is completed == Cancelled purchase
		if state.promptState == PromptState.U13PaymentModal then
			analytics.signalScaryModalCanceled(productId, "U13PaymentModal", nativeProductId)
		elseif state.promptState == PromptState.U13MonthlyThreshold1Modal then
			analytics.signalScaryModalCanceled(productId, "U13MonthlyThreshold1Modal", nativeProductId)
		elseif state.promptState == PromptState.U13MonthlyThreshold2Modal then
			analytics.signalScaryModalCanceled(productId, "U13MonthlyThreshold2Modal", nativeProductId)
		elseif state.promptState == PromptState.ParentalConsentWarningPaymentModal13To17 then
			analytics.signalScaryModalCanceled(productId, "ParentalConsentWarningPaymentModal13To17", nativeProductId)
		end

		if state.promptState == PromptState.PurchaseComplete then
			store:dispatch(sendCounter(Counter.Success))
		elseif state.promptState == PromptState.Error then
			store:dispatch(sendCounter(Counter.Failed))
		else
			store:dispatch(sendCounter(Counter.Cancelled))
		end

		if requestType == RequestType.Product then
			local playerId = (Players.LocalPlayer :: Player).UserId

			MarketplaceService:SignalPromptProductPurchaseFinished(playerId, id, didPurchase)
		elseif requestType == RequestType.GamePass then
			MarketplaceService:SignalPromptGamePassPurchaseFinished(Players.LocalPlayer, id, didPurchase)
		elseif requestType == RequestType.Bundle then
			MarketplaceService:SignalPromptBundlePurchaseFinished(Players.LocalPlayer, id, didPurchase)
		elseif requestType == RequestType.Asset then
			MarketplaceService:SignalPromptPurchaseFinished(Players.LocalPlayer, id, didPurchase)

			local assetTypeId = state.productInfo.assetTypeId
			if didPurchase and assetTypeId then
				-- AssetTypeId returned by the platform endpoint might not exist in the AssetType Enum
				pcall(function() MarketplaceService:SignalAssetTypePurchased(Players.LocalPlayer, assetTypeId) end)
			end
		elseif requestType == RequestType.Premium then
			MarketplaceService:SignalPromptPremiumPurchaseFinished(didPurchase or purchaseError == PurchaseError.AlreadyPremium)
		elseif requestType == RequestType.Subscription then
			MarketplaceService:SignalPromptSubscriptionPurchaseFinished(id, didPurchase or purchaseError == PurchaseError.AlreadySubscribed)
		end

		return store:dispatch(CompleteRequest())
	end)
end

return completeRequest
