local Root = script.Parent.Parent
local Players = game:GetService("Players")

local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)
local PurchaseError = require(Root.Enums.PurchaseError)

local RequestSubscriptionPurchase = require(Root.Actions.RequestSubscriptionPurchase)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local getProductInfo = require(Root.Network.getProductInfo)
local getIsAlreadyOwned = require(Root.Network.getIsAlreadyOwned)
local getAccountInfo = require(Root.Network.getAccountInfo)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)
local resolveSubscriptionPromptState = require(Root.Thunks.resolveSubscriptionPromptState)
local GetFFlagDeveloperSubscriptionsEnabled = require(Root.Flags.GetFFlagDeveloperSubscriptionsEnabled)

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiateSubscriptionPurchase(id)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		if not GetFFlagDeveloperSubscriptionsEnabled() or hasPendingRequest(store:getState()) then
			return nil
		end
		store:dispatch(RequestSubscriptionPurchase(id))

		local isStudio = externalSettings.isStudio()

		if not isStudio and Players.LocalPlayer.UserId <= 0 then
			store:dispatch(ErrorOccurred(PurchaseError.Guest))
			return nil
		end

		if externalSettings.getFlagOrder66() then
			store:dispatch(ErrorOccurred(PurchaseError.PurchaseDisabled))
			return nil
		end

		return Promise.all({
			productInfo = getProductInfo(network, id, Enum.InfoType.Subscription),
			accountInfo = getAccountInfo(network, externalSettings),
			alreadyOwned = getIsAlreadyOwned(network, id, Enum.InfoType.Subscription),
		})
			:andThen(function(results)
				store:dispatch(resolveSubscriptionPromptState(
					results.productInfo,
					results.accountInfo,
					results.alreadyOwned
				))
			end)
            :catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiateSubscriptionPurchase