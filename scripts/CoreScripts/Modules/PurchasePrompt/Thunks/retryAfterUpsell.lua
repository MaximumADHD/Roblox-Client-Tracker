--!nonstrict
local Root = script.Parent.Parent

local SetPromptState = require(Root.Actions.SetPromptState)
local BalanceInfoRecieved = require(Root.Actions.BalanceInfoRecieved)
local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseFlow = require(Root.Enums.PurchaseFlow)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local PurchaseError = require(Root.Enums.PurchaseError)
local PromptState = require(Root.Enums.PromptState)
local RequestType = require(Root.Enums.RequestType)
local getBalanceInfo = require(Root.Network.getBalanceInfo)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local completeRequest = require(Root.Thunks.completeRequest)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Thunk = require(Root.Thunk)

local GetFFlagRobuxUpsellIXP = require(Root.Flags.GetFFlagRobuxUpsellIXP)

local purchaseItem = require(script.Parent.purchaseItem)

local MAX_RETRIES = game:DefineFastInt("UpsellAccountBalanceRetryAttemps", 3)
local RETRY_RATE = game:DefineFastInt("UpsellAccountBalanceRetryIntervalSec", 1)

local requiredServices = {
	Analytics,
	Network,
	ExternalSettings,
}

local function retryAfterUpsell(retriesRemaining)
	retriesRemaining = retriesRemaining or MAX_RETRIES

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

		if GetFFlagRobuxUpsellIXP() and promptState ~= PromptState.UpsellInProgress then
			return
		end

		if requestType == RequestType.Premium then
			if promptState == PromptState.UpsellInProgress then
				store:dispatch(PurchaseCompleteRecieved())
				store:dispatch(completeRequest())
			end
		else
			if GetFFlagRobuxUpsellIXP() then
				if purchaseFlow == PurchaseFlow.RobuxUpsellV2 then
					store:dispatch(SetPromptState(PromptState.PollingBalance))
				end
			end

			return getBalanceInfo(network, externalSettings):andThen(function(balanceInfo)
				local state = store:getState()
				local isPlayerPremium = state.accountInfo.membershipType == 4
				local price = getPlayerPrice(state.productInfo, isPlayerPremium)

				local balance = balanceInfo.robux

				store:dispatch(BalanceInfoRecieved(balanceInfo))

				if price ~= nil and price > balance then
					if retriesRemaining > 0 then
						-- Upsell result may not yet have propagated, so we need to
						-- wait a while and try again
						delay(RETRY_RATE, function()
							store:dispatch(retryAfterUpsell(retriesRemaining - 1))
						end)
					else
						analytics.signalFailedPurchasePostUpsell()
						if GetFFlagRobuxUpsellIXP() and upsellFlow == UpsellFlow.Web then
							store:dispatch(ErrorOccurred(PurchaseError.InvalidFundsUnknown))
						else
							store:dispatch(ErrorOccurred(PurchaseError.InvalidFunds))
						end
					end
				else
					-- Upsell was successful and purchase can now be completed
					store:dispatch(purchaseItem())
				end
			end)
			:catch(function(error)
				store:dispatch(ErrorOccurred(error))
			end)
		end
	end)
end

return retryAfterUpsell
