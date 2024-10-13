--!nonstrict
local Root = script.Parent.Parent

local UpsellFlow = require(Root.Enums.UpsellFlow)
local Network = require(Root.Services.Network)
local checkUserPurchaseSettings = require(Root.Network.checkUserPurchaseSettings)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PurchaseError = require(Root.Enums.PurchaseError)
local Thunk = require(Root.Thunk)
local initiatePurchasePrecheck = require(Root.Thunks.initiatePurchasePrecheck)

local SetPromptState = require(Root.Actions.SetPromptState)
local PromptState = require(Root.Enums.PromptState)

local requiredServices = {
	Analytics,
	Network,
	ExternalSettings,
}

local function validateResult(result)
	if result == nil then
		return false
	end
	if result.isEligible == nil or result.failureReason == nil then
		return false
	end
	return true
end

local FailureReason = {
	None = "None",
	PurchaseNotEnabled = "PurchaseNotEnabled",
	SpendLimitExceeded = "SpendLimitExceeded",
}

local function initiateUserPurchaseSettingsPrecheck()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local network = services[Network]
		local analytics = services[Analytics]
		local externalSettings = services[ExternalSettings]

		local isStudio = externalSettings.isStudio()

		if isStudio then
			return store:dispatch(initiatePurchasePrecheck())
		end

		local upsellFlow = getUpsellFlow(externalSettings.getPlatform())

		-- Skip user purchase settings check if upsell flow is web since we perform the check when selecting paymentMethod
		if upsellFlow == UpsellFlow.Web then
			return store:dispatch(initiatePurchasePrecheck())
		end

		return checkUserPurchaseSettings(network)
			:andThen(function(result)
				-- Validate Response
				if validateResult(result) == false then
					return store:dispatch(ErrorOccurred(PurchaseError.UnknownFailure))
				end

				-- Continue with original purchase flow if eligible
				if result.isEligible == true then
					return store:dispatch(initiatePurchasePrecheck())
				end

				if result.failureReason == FailureReason.PurchaseNotEnabled then
					analytics.signalUserSettingEligibilityModal("PurchaseNotEnabled")
					return store:dispatch(SetPromptState(PromptState.EnablePurchaseVPCModal))
				elseif result.failureReason == FailureReason.SpendLimitExceeded then
					-- TODO: PAY-9826: Create modal for spend limits error
					return store:dispatch(initiatePurchasePrecheck())
				end

				-- Unknown failure reason
				return store:dispatch(ErrorOccurred(PurchaseError.UnknownFailure))
			end)
			:catch(function(failure)
				return store:dispatch(ErrorOccurred(PurchaseError.UnknownFailure))
			end)
	end)
end

return initiateUserPurchaseSettingsPrecheck
