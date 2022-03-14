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

		local nativeProductId = upsellFlow ~= UpsellFlow.Web and state.nativeUpsell.robuxProductId
		local productId = state.productInfo.productId
		if state.promptState == PromptState.U13PaymentModal then
			analytics.signalScaryModalConfirmed(productId, "U13PaymentModal", nativeProductId)
		elseif state.promptState == PromptState.U13MonthlyThreshold1Modal then
			analytics.signalScaryModalConfirmed(productId, "U13MonthlyThreshold1Modal", nativeProductId)
		elseif state.promptState == PromptState.U13MonthlyThreshold2Modal then
			analytics.signalScaryModalConfirmed(productId, "U13MonthlyThreshold2Modal", nativeProductId)
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
				-- Constants.PlatformPurchaseResult.PurchaseResult_Success == 0
				-- DO NOT USE 0 for platformPurchaseResult
				local platformPurchaseResult = nil
				local purchaseCallSuccess = nil
				local purchaseErrorMsg = nil
				if externalSettings.FFlagPurchasePromptUpsellXboxFix() then
					purchaseCallSuccess, purchaseErrorMsg = pcall(function()
						platformPurchaseResult = platformInterface.beginPlatformStorePurchase(nativeProductId)
					end)
				else
					platformPurchaseResult = platformInterface.beginPlatformStorePurchase(nativeProductId)
				end
				
				if not externalSettings.FFlagPurchasePromptUpsellXboxFix() then
					if platformPurchaseResult == Constants.PlatformPurchaseResult.PurchaseResult_UserCancelled then
						analytics.signalXboxInGamePurchaseCanceled(productId, requestType, nativeProductId)
					else
						analytics.signalXboxInGamePurchaseFailure(productId, requestType, nativeProductId)
					end
				end

				if externalSettings.FFlagPurchasePromptUpsellXboxFix() then
					if purchaseCallSuccess then
						resolve(platformPurchaseResult)
					else
						reject(purchaseErrorMsg)
					end
				else
					Promise.resolve(platformPurchaseResult)
				end
			end)
				:andThen(function(result)
					if externalSettings.FFlagPurchasePromptUpsellXboxFix() then
						if result == Constants.PlatformPurchaseResult.PurchaseResult_Success then
							analytics.signalXboxInGamePurchaseSuccess(productId, requestType, nativeProductId)
						elseif result == Constants.PlatformPurchaseResult.PurchaseResult_UserCancelled then
							analytics.signalXboxInGamePurchaseCanceled(productId, requestType, nativeProductId)
						else
							analytics.signalXboxInGamePurchaseFailure(productId, requestType, nativeProductId)
						end

						if result == Constants.PlatformPurchaseResult.PurchaseResult_Success
								or result == Constants.PlatformPurchaseResult.PurchaseResult_RobuxUpdated then
							return store:dispatch(retryAfterUpsell())
						else
							return store:dispatch(ErrorOccurred(PurchaseError.UnknownFailure))
						end
					else
						if result ~= 0 then
							return store:dispatch(retryAfterUpsell)
						end
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
