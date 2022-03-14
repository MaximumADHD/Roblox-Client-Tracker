local Root = script.Parent.Parent

local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local PurchaseError = require(Root.Enums.PurchaseError)
local PromptState = require(Root.Enums.PromptState)
local RequestType = require(Root.Enums.RequestType)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local getAccountInfo = require(Root.Network.getAccountInfo)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local completeRequest = require(Root.Thunks.completeRequest)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local Thunk = require(Root.Thunk)

local purchaseItem = require(script.Parent.purchaseItem)

local GetFFlagPPRetryPost2SVWebviewFix = require(Root.Flags.GetFFlagPPRetryPost2SVWebviewFix)

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

		if GetFFlagPPRetryPost2SVWebviewFix() then
			if requestType == RequestType.None then
				return
			end
		end

		if requestType == RequestType.Premium then
			if promptState == PromptState.UpsellInProgress then
				store:dispatch(PurchaseCompleteRecieved())
				store:dispatch(completeRequest())
			end
		else
			return getAccountInfo(network, externalSettings)
				:andThen(function(accountInfo)
					local state = store:getState()

					local isPlayerPremium = state.accountInfo.membershipType == 4
					local price = getPlayerPrice(state.productInfo, isPlayerPremium)

					local balance = accountInfo.RobuxBalance

					store:dispatch(AccountInfoReceived(accountInfo))

					if price ~= nil and price > balance then
						if retriesRemaining > 0 then
							-- Upsell result may not yet have propagated, so we need to
							-- wait a while and try again
							delay(RETRY_RATE, function()
								store:dispatch(retryAfterUpsell(retriesRemaining - 1))
							end)
						else
							analytics.signalFailedPurchasePostUpsell()
							store:dispatch(ErrorOccurred(PurchaseError.InvalidFunds))
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
