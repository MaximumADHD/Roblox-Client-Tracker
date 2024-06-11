--!nonstrict
local Root = script.Parent.Parent
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local SetPromptState = require(Root.Actions.SetPromptState)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local PurchaseFlow = require(Root.Enums.PurchaseFlow)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Constants = require(Root.Misc.Constants)
local postPurchaseWarningAcknowledge = require(Root.Network.postPurchaseWarningAcknowledge)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Network = require(Root.Services.Network)
local PlatformInterface = require(Root.Services.PlatformInterface)
local Thunk = require(Root.Thunk)
local Promise = require(Root.Promise)

local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local getAppFeaturePolicies = UniversalAppPolicy.getAppFeaturePolicies
local GetFFlagOpenVngShopForVngRobuxPurchase =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagOpenVngShopForVngRobuxPurchase

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
		elseif state.promptState == PromptState.ParentalConsentWarningPaymentModal13To17 then
			analytics.signalScaryModalConfirmed(productId, "ConfirmedParentalConsentWarningPaymentModal13To17", nativeProductId)
		end

		if state.promptState == PromptState.U13PaymentModal then
			postPurchaseWarningAcknowledge.Post(network,
				postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13PaymentModal)
		elseif state.promptState == PromptState.U13MonthlyThreshold1Modal then
			postPurchaseWarningAcknowledge.Post(network,
				postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold1Modal)
		elseif state.promptState == PromptState.U13MonthlyThreshold2Modal then
			postPurchaseWarningAcknowledge.Post(network,
				postPurchaseWarningAcknowledge.UserActionType.ConfirmedU13MonthlyThreshold2Modal)
		elseif state.promptState == PromptState.ParentalConsentWarningPaymentModal13To17 then
			postPurchaseWarningAcknowledge.Post(network,
				postPurchaseWarningAcknowledge.UserActionType.ConfirmedParentalConsentWarningPaymentModal13To17)
		end

		if externalSettings.getFFlagDisableRobuxUpsell() then
			store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxNoUpsell))
			return
		end

		if upsellFlow == UpsellFlow.Web then
			local requestType = state.requestType
			analytics.signalProductPurchaseUpsellConfirmed(productId, requestType, state.nativeUpsell.productId)
			if GetFFlagOpenVngShopForVngRobuxPurchase() then
				if getAppFeaturePolicies().getRedirectBuyRobuxToVNG() then
					if state.promptState == PromptState.LeaveRobloxWarning then
						platformInterface.openVngStore()
						store:dispatch(SetPromptState(PromptState.UpsellInProgress))
					else
						store:dispatch(SetPromptState(PromptState.LeaveRobloxWarning))
					end
				else
					local purchaseFlow = state.purchaseFlow
					if purchaseFlow == PurchaseFlow.RobuxUpsellV2 or purchaseFlow == PurchaseFlow.LargeRobuxUpsell then
						platformInterface.startRobuxUpsellWeb(state.nativeUpsell.productId)
					else
						platformInterface.startRobuxUpsellWeb()
					end
					store:dispatch(SetPromptState(PromptState.UpsellInProgress))
				end
			else
				local purchaseFlow = state.purchaseFlow
				if purchaseFlow == PurchaseFlow.RobuxUpsellV2 or purchaseFlow == PurchaseFlow.LargeRobuxUpsell then
					platformInterface.startRobuxUpsellWeb(state.nativeUpsell.productId)
				else
					platformInterface.startRobuxUpsellWeb()
				end
				store:dispatch(SetPromptState(PromptState.UpsellInProgress))
			end
		elseif upsellFlow == UpsellFlow.Mobile then
			local nativeProductId = state.nativeUpsell.robuxProductId
			local productId = state.productInfo.productId
			local requestType = state.requestType
			local player = Players.LocalPlayer

			analytics.signalProductPurchaseUpsellConfirmed(productId, requestType, nativeProductId)
			if game:GetEngineFeature("NativePurchaseWithLocalPlayer") then
				platformInterface.promptNativePurchaseWithLocalPlayer(nativeProductId)
			else
				platformInterface.promptNativePurchase(player, nativeProductId)
			end
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
				purchaseCallSuccess, purchaseErrorMsg = pcall(function()
					platformPurchaseResult = platformInterface.beginPlatformStorePurchase(nativeProductId)
				end)

				if purchaseCallSuccess then
					resolve(platformPurchaseResult)
				else
					reject(purchaseErrorMsg)
				end
			end)
				:andThen(function(result)
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
				end)
		elseif upsellFlow == UpsellFlow.Unavailable then
			store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxNoUpsell))
		else
			warn("Need more Robux: platform not supported for Robux purchase")
		end
	end)
end

return launchRobuxUpsell
