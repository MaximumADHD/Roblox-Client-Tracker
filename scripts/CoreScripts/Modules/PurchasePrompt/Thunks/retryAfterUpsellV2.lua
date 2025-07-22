local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")

local SetPromptState = require(Root.Actions.SetPromptState)
local BalanceInfoRecieved = require(Root.Actions.BalanceInfoRecieved)
local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local PromptNativeUpsellSuggestions = require(Root.Actions.PromptNativeUpsellSuggestions)

local PurchaseFlow = require(Root.Enums.PurchaseFlow)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local PurchaseError = require(Root.Enums.PurchaseError)
local PromptState = require(Root.Enums.PromptState)
local RequestType = require(Root.Enums.RequestType)

local Counter = require(Root.Enums.Counter)
local sendCounter = require(Root.Thunks.sendCounter)

local RobuxUpsell = require(Root.Models.RobuxUpsell)
local getRobuxUpsellProduct = require(Root.Network.getRobuxUpsellProduct)
local getRobuxUpsellSuggestions = require(Root.Network.getRobuxUpsellSuggestions)
local getBalanceInfo = require(Root.Network.getBalanceInfo)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local completeRequest = require(Root.Thunks.completeRequest)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)
local getPaymentPlatform = require(Root.Utils.getPaymentPlatform)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Thunk = require(Root.Thunk)

local purchaseItem = require(script.Parent.purchaseItem)

local FFlagEnableUpsellSuggestionsAPI = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUpsellSuggestionsAPI

local MAX_RETRIES = game:DefineFastInt("UpsellAccountBalanceRetryAttemps", 3)
local RETRY_RATE = game:DefineFastInt("UpsellAccountBalanceRetryIntervalSec", 1)

local requiredServices = {
	Analytics,
	Network,
	ExternalSettings,
}

local function restartUpsell(store, network, price, newBalance, paymentPlatform)
	if FFlagEnableUpsellSuggestionsAPI then
		return getRobuxUpsellSuggestions(price, newBalance, paymentPlatform):andThen(
			-- success handler
			function(upsellSuggestions)
				if not hasPendingRequest(store:getState()) then
					return
				end
				store:dispatch(PromptNativeUpsellSuggestions(upsellSuggestions.products, 1, upsellSuggestions.virtualItemBadgeType))
				store:dispatch(sendCounter(Counter.UpsellModalShownAgain))
			end,
			-- failure handler
			function()
				if not hasPendingRequest(store:getState()) then
					return
				end

				store:dispatch(SetPromptState(PromptState.LargeRobuxUpsell))
				store:dispatch(sendCounter(Counter.UpsellGenericModalShownAgain))
			end
		)
	end

	return getRobuxUpsellProduct(network, price, newBalance, paymentPlatform):andThen(
		function(product: RobuxUpsell.Product)
			if not hasPendingRequest(store:getState()) then
				return
			end

			store:dispatch(
				PromptNativeUpsell(
					product.providerId,
					product.id,
					product.robuxAmount,
					product.robuxAmountBeforeBonus,
					product.price,
					nil,
					nil,
					nil
				)
			)
			store:dispatch(sendCounter(Counter.UpsellModalShownAgain))
		end,
		function()
			if not hasPendingRequest(store:getState()) then
				return
			end

			store:dispatch(SetPromptState(PromptState.LargeRobuxUpsell))
			store:dispatch(sendCounter(Counter.UpsellGenericModalShownAgain))
		end
	)
end

local function retryAfterUpsell(retriesRemaining: number?)
	local retriesRemaining = retriesRemaining or MAX_RETRIES

	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]
		local network = services[Network]
		local externalSettings = services[ExternalSettings]
		local state = store:getState()
		local requestType = state.promptRequest.requestType
		local promptState = state.promptState
		local purchaseFlow = state.purchaseFlow

		local upsellFlow = getUpsellFlow(externalSettings.getPlatform())

		if requestType == RequestType.None then
			return
		end

		if promptState ~= PromptState.UpsellInProgress and promptState ~= PromptState.PollingBalance then
			return
		end

		if requestType == RequestType.Premium or requestType == RequestType.Subscription then
			if promptState == PromptState.UpsellInProgress then
				store:dispatch(PurchaseCompleteRecieved())
				store:dispatch(completeRequest())
			end
		else
			if purchaseFlow == PurchaseFlow.RobuxUpsellV2 or purchaseFlow == PurchaseFlow.LargeRobuxUpsell then
				store:dispatch(SetPromptState(PromptState.PollingBalance))
			end

			return getBalanceInfo(network, externalSettings, false --[[overrideStudioMock]])
				:andThen(function(balanceInfo)
					local state = store:getState()
					local isPlayerPremium = state.accountInfo.membershipType == 4
					local price = getPlayerPrice(state.productInfo, isPlayerPremium)

					-- Check if the user cancel the purchase before this could return
					if not hasPendingRequest(store:getState()) then
						return
					end

					local paymentPlatform = getPaymentPlatform(externalSettings.getPlatform())

					local prevBalance = state.accountInfo.balance
					local newBalance = balanceInfo.robux
					store:dispatch(BalanceInfoRecieved(balanceInfo))

					if prevBalance ~= newBalance then
						if price ~= nil and price > newBalance then
							if purchaseFlow == PurchaseFlow.LargeRobuxUpsell or upsellFlow == UpsellFlow.Web then
								return restartUpsell(store, network, price, newBalance, paymentPlatform)
							else
								store:dispatch(ErrorOccurred(PurchaseError.InvalidFunds))
								store:dispatch(sendCounter(Counter.UpsellFailedNotEnoughRobux))
							end
						else
							-- Upsell was successful and purchase can now be completed
							store:dispatch(purchaseItem())
						end
					else
						if retriesRemaining > 0 then
							delay(RETRY_RATE, function()
								store:dispatch(retryAfterUpsell(retriesRemaining - 1))
							end)
						else
							-- We're here if the users balance didn't change - this could be because they just exited webview 
							-- or because the purchase failed and they closed the webview
							analytics.signalFailedPurchasePostUpsell()
							if upsellFlow == UpsellFlow.Web then
								restartUpsell(store, network, price, newBalance, paymentPlatform)
							else
								store:dispatch(ErrorOccurred(PurchaseError.InvalidFunds))
							end
						end
					end
				end)
				:catch(function(error)
					store:dispatch(ErrorOccurred(error))
				end)
		end
	end)
end

return retryAfterUpsell
