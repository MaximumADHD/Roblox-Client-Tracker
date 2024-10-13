--!nonstrict
local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local SetButtonState = require(Root.Actions.SetButtonState)
local PurchaseWarning = require(Root.Enums.PurchaseWarning)
local ButtonState = require(Root.Enums.ButtonState)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local Network = require(Root.Services.Network)
local getPurchaseWarning = require(Root.Network.getPurchaseWarning)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Thunk = require(Root.Thunk)

local resolvePurchasePrecheck = require(script.Parent.resolvePurchasePrecheck)
local SetPromptState = require(Root.Actions.SetPromptState)
local PromptState = require(Root.Enums.PromptState)
local GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow
	= require(Root.Flags.GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow)

local requiredServices = {
	Analytics,
	Network,
	ExternalSettings,
}

local function initiatePurchasePrecheck()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local state = store:getState()
		local analytics = services[Analytics]
		local network = services[Network]
		local externalSettings = services[ExternalSettings]

		local isStudio = externalSettings.isStudio()

		if isStudio then
			return resolvePurchasePrecheck(PurchaseWarning.NoAction)
		end

		local upsellFlow = getUpsellFlow(externalSettings.getPlatform())

		local productId = state.productInfo.productId
		local nativeProductId = state.nativeUpsell.robuxProductId
		local robuxProductId = nil
		local isPremium = state.accountInfo.membershipType == 4
		
		if upsellFlow == UpsellFlow.Web then
			robuxProductId = state.nativeUpsell.productId
			nativeProductId = nil
		else
			robuxProductId = nil
		end

		store:dispatch(SetButtonState(ButtonState.Disabled))
		return getPurchaseWarning(network, nativeProductId, robuxProductId, isPremium)
			:andThen(function(results)
				store:dispatch(SetButtonState(ButtonState.Enabled))

				if results then
					if results.action == "U13PaymentModal" then
						analytics.signalScaryModalShown(productId, "U13PaymentModal", nativeProductId or robuxProductId)
						return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.U13PaymentModal))
					elseif results.action == "U13MonthlyThreshold1Modal" then
						analytics.signalScaryModalShown(productId, "U13MonthlyThreshold1Modal", nativeProductId or robuxProductId)
						return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.U13MonthlyThreshold1Modal))
					-- Rest of UI is not setup yet, ignore this type of response.
					--elseif results.action == "RequireEmailVerification" then
					--	return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.RequireEmailVerification))
					elseif results.action == "U13MonthlyThreshold2Modal" then
						analytics.signalScaryModalShown(productId, "U13MonthlyThreshold2Modal", nativeProductId or robuxProductId)
						return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.U13MonthlyThreshold2Modal))
					elseif results.action == "ParentalConsentWarningPaymentModal13To17" then
						analytics.signalScaryModalShown(productId, "ParentalConsentWarningPaymentModal13To17", nativeProductId or robuxProductId)
						return store:dispatch(resolvePurchasePrecheck(PurchaseWarning.ParentalConsentWarningPaymentModal13To17))
					end
				end

				store:dispatch(resolvePurchasePrecheck(PurchaseWarning.NoAction))
			end)
			:catch(function(errorReason)
				store:dispatch(SetButtonState(ButtonState.Enabled))
				store:dispatch(resolvePurchasePrecheck(PurchaseWarning.NoAction))
			end)
	end)
end

return initiatePurchasePrecheck
