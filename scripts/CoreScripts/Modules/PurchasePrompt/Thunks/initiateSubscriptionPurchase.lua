--!nonstrict
local Root = script.Parent.Parent

local Promise = require(Root.Promise)
local Thunk = require(Root.Thunk)
local PurchaseError = require(Root.Enums.PurchaseError)

local RequestSubscriptionPurchase = require(Root.Actions.RequestSubscriptionPurchase)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local getPremiumUpsellPrecheck = require(Root.Network.getPremiumUpsellPrecheck)
local getSubscriptionPurchaseInfo = require(Root.Network.getSubscriptionPurchaseInfo)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local resolveSubscriptionPromptState = require(Root.Thunks.resolveSubscriptionPromptState)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)

local requiredServices = {
	Network,
	ExternalSettings,
}

local function initiateSubscriptionPurchase(subscriptionId)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		if externalSettings.GetFFlagCLI37642() == false then
			return nil
		end
		
		if hasPendingRequest(store:getState()) then
			return nil
		end
		
		store:dispatch(RequestSubscriptionPurchase(subscriptionId))

		if externalSettings.getFlagOrder66() then
			store:dispatch(ErrorOccurred(PurchaseError.PurchaseDisabled))
			return nil
		end
		return getSubscriptionPurchaseInfo(network, subscriptionId)
			:andThen(function(results)
				store:dispatch(resolveSubscriptionPromptState(results))
			end)
			:catch(function(errorReason)
				store:dispatch(ErrorOccurred(errorReason))
			end)
	end)
end

return initiateSubscriptionPurchase
