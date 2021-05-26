local Root = script.Parent.Parent
local Players = game:GetService("Players")

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local SetPromptState = require(Root.Actions.SetPromptState)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Constants = require(Root.Misc.Constants)
local postPurchaseWarningAcknowledge = require(Root.Network.postPurchaseWarningAcknowledge)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Network = require(Root.Services.Network)
local PlatformInterface = require(Root.Services.PlatformInterface)
local Thunk = require(Root.Thunk)
local Promise = require(Root.Promise)

local GetFFlagEnableScaryModalAnalytics = require(Root.Flags.GetFFlagEnableScaryModalAnalytics)
local GetFFlagEnableXboxIAPAnalytics = require(Root.Flags.GetFFlagEnableXboxIAPAnalytics)

local retryAfterUpsell = require(script.Parent.retryAfterUpsell)

local requiredServices = {
	Analytics,
	ExternalSettings,
	Network,
	PlatformInterface,
}

local function launchRobuxUpsell()
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local analytics = services[Analytics]
		local externalSettings = services[ExternalSettings]
		local network = services[Network]
		local platformInterface = services[PlatformInterface]
		local state = store:getState()

		local upsellFlow = getUpsellFlow(externalSettings.getPlatform())

		if GetFFlagEnableScaryModalAnalytics() then
			local nativeProductId = upsellFlow ~= UpsellFlow.Web and state.nativeUpsell.robuxProductId
			local productId = state.productInfo.productId
			if state.promptState == PromptState.U13PaymentModal then
				analytics.signalScaryModalConfirmed(productId, "U13PaymentModal", nativeProductId)
			elseif state.promptState == PromptState.U13MonthlyThreshold1Modal then
				analytics.signalScaryModalConfirmed(productId, "U13MonthlyThreshold1Modal", nativeProductId)
			elseif state.promptState == PromptState.U13MonthlyThreshold2Modal then
				analytics.signalScaryModalConfirmed(productId, "U13MonthlyThreshold2Modal", nativeProductId)
			end
		end

		if state.promptState == PromptState.U13PaymentModal then
			postPurchaseWarningAcknowledge(network, "ConfirmedU13PaymentModal")
		elseif state.promptState == PromptState.U13MonthlyThreshold1Modal then
			postPurchaseWarningAcknowledge(network, "ConfirmedU13MonthlyThreshold1Modal")
		elseif state.promptState == PromptState.U13MonthlyThreshold2Modal then
			postPurchaseWarningAcknowledge(network, "ConfirmedU13MonthlyThreshold2Modal")
		end

		if externalSettings.getFFlagDisableRobuxUpsell() then
			store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxNoUpsell))
			return
		end

		if upsellFlow == UpsellFlow.Web then
			local productId = state.productInfo.productId
			local requestType = state.requestType

			analytics.signalProductPurchaseUpsellConfirmed(productId, requestType, "UNKNOWN")
			platformInterface.startRobuxUpsellWeb()
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))

		elseif upsellFlow == UpsellFlow.Mobile then
			local nativeProductId = state.nativeUpsell.robuxProductId
			local productId = state.productInfo.productId
			local requestType = state.requestType

			analytics.signalProductPurchaseUpsellConfirmed(productId, requestType, nativeProductId)
			platformInterface.promptNativePurchase(Players.LocalPlayer, nativeProductId)
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))

		elseif upsellFlow == UpsellFlow.Xbox then
			local nativeProductId = state.nativeUpsell.robuxProductId
			local productId = state.productInfo.productId
			local requestType = state.requestType
			
			analytics.signalProductPurchaseUpsellConfirmed(productId, requestType, nativeProductId)
			store:dispatch(SetPromptState(PromptState.UpsellInProgress))
			return Promise.new(function(resolve, reject)
				local platformPurchaseResult = platformInterface.beginPlatformStorePurchase(nativeProductId)

				if GetFFlagEnableXboxIAPAnalytics() then
					if platformPurchaseResult == Constants.PlatformPurchaseResult.PurchaseResult_UserCancelled then
						analytics.signalXboxInGamePurchaseCanceled(productId, requestType, nativeProductId)
					else
						analytics.signalXboxInGamePurchaseFailure(productId, requestType, nativeProductId)
					end
				end

				Promise.resolve(platformPurchaseResult)
			end)
				:andThen(function(result)
					if result ~= 0 then
						store:dispatch(retryAfterUpsell)
					end
				end)
		elseif upsellFlow == UpsellFlow.Unavailable then
			store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxNoUpsell))
		else
			warn("Need more Robux: platform not supported for Robux purchase")
		end
	end)
end

return launchRobuxUpsell
