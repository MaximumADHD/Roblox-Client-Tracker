local Root = script.Parent.Parent
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local SetEconomicRestrictionError = require(Root.Actions.SetEconomicRestrictionError)
local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local SetPromptState = require(Root.Actions.SetPromptState)
local PromptState = require(Root.Enums.PromptState)
local performSubscriptionPurchase = require(Root.Network.performSubscriptionPurchase)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Network = require(Root.Services.Network)
local Thunk = require(Root.Thunk)
local hideWindow = require(Root.Thunks.hideWindow)
local PurchaseError = require(Root.Enums.PurchaseError)

local CorePackages = game:GetService("CorePackages")
local IAPExperience = require(CorePackages.Workspace.Packages.IAPExperience)
local FFlagEnableEconomicRestrictionInExpDevSub = IAPExperience.Flags.FFlagEnableEconomicRestrictionInExpDevSub
local isErrorReasonPrefixWithEconomicRestrictions = IAPExperience.Utility.isErrorReasonPrefixWithEconomicRestrictions
local parseErrorReasonToEconomicRestriction = IAPExperience.Utility.parseErrorReasonToEconomicRestriction

local requiredServices = {
	ExternalSettings,
	Network,
}

local function launchSubscriptionPurchase(paymentMethod)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local externalSettings = services[ExternalSettings]
		local network = services[Network]

		if externalSettings.isStudio() then
			store:dispatch(PurchaseCompleteRecieved())
			store:dispatch(hideWindow())
			return nil
		end

		performSubscriptionPurchase(network, store:getState().promptRequest.id, paymentMethod):catch(
			function(errorReason)
				if FFlagEnableEconomicRestrictionInExpDevSub and isErrorReasonPrefixWithEconomicRestrictions(errorReason) then
					local economicRestrictionError = parseErrorReasonToEconomicRestriction(errorReason)
					store:dispatch(SetEconomicRestrictionError(economicRestrictionError.violationType, economicRestrictionError.timeoutMinutes))
					store:dispatch(ErrorOccurred(PurchaseError.EconomicRestriction))
				else
					store:dispatch(ErrorOccurred(errorReason))
				end
			end
		)
		store:dispatch(SetPromptState(PromptState.UpsellInProgress))
		store:dispatch(hideWindow())
		return nil
	end)
end

return launchSubscriptionPurchase
