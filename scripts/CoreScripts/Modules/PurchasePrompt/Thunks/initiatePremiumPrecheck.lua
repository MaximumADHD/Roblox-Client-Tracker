local Root = script.Parent.Parent

local Thunk = require(Root.Thunk)
local Network = require(Root.Services.Network)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Analytics = require(Root.Services.Analytics)

local PromptState = require(Root.Enums.PromptState)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local PaymentPlatform = require(Root.Enums.PaymentPlatform)

local SetPromptState = require(Root.Actions.SetPromptState)

local launchPremiumUpsell = require(Root.Thunks.launchPremiumUpsell)
local checkUserPurchaseSettings = require(Root.Network.checkUserPurchaseSettings)
local getPaymentPlatform = require(Root.Utils.getPaymentPlatform)

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseError = require(Root.Enums.PurchaseError)

local requiredServices = {
	Analytics,
	Network,
	ExternalSettings,
}

local FailureReason = {
	None = "None",
	PurchaseNotEnabled = "PurchaseNotEnabled",
	SpendLimitExceeded = "SpendLimitExceeded",
}

local function initiatePremiumPrecheck()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local analytics = services[Analytics]
		local externalSettings = services[ExternalSettings]

		local isStudio = externalSettings.isStudio()
		if isStudio then
			return store:dispatch(launchPremiumUpsell())
		end

		-- Skip user purchase settings check if upsell flow is web since we perform the check when selecting paymentMethod
		local paymentPlatform = getPaymentPlatform(externalSettings.getPlatform())
		if paymentPlatform == PaymentPlatform.Web then
			return store:dispatch(launchPremiumUpsell())
		end

		return checkUserPurchaseSettings(network)
			:andThen(function(result)
				-- Validate Response
				if result == nil or result.isEligible == nil or result.failureReason == nil then
					return store:dispatch(ErrorOccurred(PurchaseError.UnknownFailure))
				end

				-- Continue with original purchase flow if eligible
				if result.isEligible == true then
					return store:dispatch(launchPremiumUpsell())
				end

				if result.failureReason == FailureReason.PurchaseNotEnabled then
					analytics.signalUserSettingEligibilityModal(FailureReason.PurchaseNotEnabled)
					return store:dispatch(SetPromptState(PromptState.EnablePurchaseVPCModal))
				elseif result.failureReason == FailureReason.SpendLimitExceeded then
					-- TODO: PAY-9826: Create modal for spend limits error
					return store:dispatch(launchPremiumUpsell())
				end

				-- Unknown failure reason
				return store:dispatch(ErrorOccurred(PurchaseError.UnknownFailure))
			end)
			:catch(function(failure)
				return store:dispatch(ErrorOccurred(PurchaseError.UnknownFailure))
			end)
	end)
end

return initiatePremiumPrecheck
