--!nonstrict
local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local UpsellFlow = require(Root.Enums.UpsellFlow)
local Network = require(Root.Services.Network)
local checkUserPurchaseSettings = require(Root.Network.checkUserPurchaseSettings)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local SetEconomicRestrictionError = require(Root.Actions.SetEconomicRestrictionError)
local PurchaseError = require(Root.Enums.PurchaseError)
local Thunk = require(Root.Thunk)
local initiatePurchasePrecheck = require(Root.Thunks.initiatePurchasePrecheck)

local SetPromptState = require(Root.Actions.SetPromptState)
local PromptState = require(Root.Enums.PromptState)

local IAPExperience = require(CorePackages.Workspace.Packages.IAPExperience)
local FailureReason = IAPExperience.Enums.CheckUserPurchaseSettingsFailureReason
local mapCheckUserPurchaseSettingsFailureReasonToViolationType = IAPExperience.Utility.mapCheckUserPurchaseSettingsFailureReasonToViolationType
local EconomicRestrictionsViolationType = IAPExperience.Enums.EconomicRestrictionsViolationType
local FFlagEnableEconomicRestrictionsInExpUpsell = game:DefineFastFlag("EnableEconomicRestrictionsInExpUpsell", false)

local requiredServices = {
	Analytics,
	Network,
	ExternalSettings,
}

local function validateResult(result)
	if result == nil then
		return false
	end

	-- non-economic restriction response needs to have both isEligible and failureReason
	local hasInvalidResponse = result.isEligible == nil or result.failureReason == nil

	-- Economic restriction response doesn't have isEligible field
	-- It only has failureReason and expirationTimeInMinutes, so it's a special case
	local economicRestrictionViolationType = mapCheckUserPurchaseSettingsFailureReasonToViolationType(result.failureReason)
	local hasEconomicRestriction = FFlagEnableEconomicRestrictionsInExpUpsell 
		and economicRestrictionViolationType ~= EconomicRestrictionsViolationType.None
		and result.expirationTimeInMinutes ~= nil

	-- If it's not an economic restriction response and doesn't have all the fields for a non-economic restriction response, it's not a valid response
	if hasInvalidResponse and not hasEconomicRestriction then
		return false
	end
	-- both economic restrictions and non-economic restrictions responses are valid
	return true
end

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

				local economicRestrictionViolationType = mapCheckUserPurchaseSettingsFailureReasonToViolationType(result.failureReason)
				local isFailureReasonPartOfEconomicRestriction = economicRestrictionViolationType ~= EconomicRestrictionsViolationType.None

				if result.failureReason == FailureReason.PurchaseNotEnabled then
					analytics.signalUserSettingEligibilityModal("PurchaseNotEnabled")
					return store:dispatch(SetPromptState(PromptState.EnablePurchaseVPCModal))
				elseif result.failureReason == FailureReason.SpendLimitExceeded then
					-- TODO: PAY-9826: Create modal for spend limits error
					return store:dispatch(initiatePurchasePrecheck())
				elseif isFailureReasonPartOfEconomicRestriction then
					if FFlagEnableEconomicRestrictionsInExpUpsell and result.expirationTimeInMinutes ~= nil then
						analytics.signalEconomicRestrictionError(economicRestrictionViolationType, result.expirationTimeInMinutes)
						store:dispatch(SetEconomicRestrictionError(economicRestrictionViolationType, result.expirationTimeInMinutes))
						return store:dispatch(ErrorOccurred(PurchaseError.EconomicRestriction))
					end
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
