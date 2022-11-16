local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local SetPurchaseFlow = require(Root.Actions.SetPurchaseFlow)
local SetPromptState = require(Root.Actions.SetPromptState)
local ProductInfoReceived = require(Root.Actions.ProductInfoReceived)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local BalanceInfoRecieved = require(Root.Actions.BalanceInfoRecieved)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local CompleteRequest = require(Root.Actions.CompleteRequest)

local PurchaseFlow = require(Root.Enums.PurchaseFlow)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)

local RobuxUpsell = require(Root.Models.RobuxUpsell)

local selectRobuxProduct = require(Root.NativeUpsell.selectRobuxProduct)

local getRobuxUpsellProduct = require(Root.Network.getRobuxUpsellProduct)

local ABTest = require(Root.Services.ABTest)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Network = require(Root.Services.Network)

local Counter = require(Root.Enums.Counter)
local sendCounter = require(Root.Thunks.sendCounter)

local meetsPrerequisites = require(Root.Utils.meetsPrerequisites)
local getPlayerProductInfoPrice = require(Root.Utils.getPlayerProductInfoPrice)
local getPaymentFromPlatform = require(Root.Utils.getPaymentFromPlatform)
local getHasAmazonUserAgent = require(Root.Utils.getHasAmazonUserAgent)
local hasPendingRequest = require(Root.Utils.hasPendingRequest)

local Thunk = require(Root.Thunk)

local GetFFlagPPUpsellEndpoint = require(Root.Flags.GetFFlagPPUpsellEndpoint)
local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)
local GetFFlagRobuxUpsellIXP = require(Root.Flags.GetFFlagRobuxUpsellIXP)
local GetFFlagRobuxUpsellV2 = require(Root.Flags.GetFFlagRobuxUpsellV2)
local GetFStringRobuxUpsellIxpLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringRobuxUpsellIxpLayer
local GetFStringLargerRobuxUpsellIxpLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringLargerRobuxUpsellIxpLayer
local LargerRobuxUpsellTest = require(Root.Flags.LargerRobuxUpsellTest)

local GetFFlagPurchasePromptAnalytics = require(Root.Flags.GetFFlagPurchasePromptAnalytics)

local requiredServices = {
	ABTest,
	Analytics,
	ExternalSettings,
	Network,
}

local function resolvePromptState(productInfo, accountInfo, balanceInfo, alreadyOwned, isRobloxPurchase)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local state = store:getState()
		local abTest = services[ABTest]
		local analytics = services[Analytics]
		local externalSettings = services[ExternalSettings]
		local network = services[Network]

		store:dispatch(ProductInfoReceived(productInfo))
		store:dispatch(AccountInfoReceived(accountInfo))
		store:dispatch(BalanceInfoRecieved(balanceInfo))

		local restrictThirdParty = (
			not externalSettings.getFlagBypassThirdPartySettingForRobloxPurchase() or not isRobloxPurchase
		) and (externalSettings.getLuaUseThirdPartyPermissions() or externalSettings.getFlagRestrictSales2())

		local canPurchase, failureReason =
			meetsPrerequisites(productInfo, alreadyOwned, restrictThirdParty, externalSettings)
		if not canPurchase then
			if not externalSettings.isStudio() and failureReason == PurchaseError.ThirdPartyDisabled then
				-- Do not annoy player with 3rd party failure notifications.
				return store:dispatch(CompleteRequest())
			end
			return store:dispatch(ErrorOccurred(failureReason))
		end

		local robuxBalance = balanceInfo.robux
		local isPlayerPremium = accountInfo.isPremium
		local price = getPlayerProductInfoPrice(productInfo, isPlayerPremium)
		local platform = UserInputService:GetPlatform()

		if price > robuxBalance then
			if externalSettings.getFFlagDisableRobuxUpsell() then
				return store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxNoUpsell))
			end

			if GetFFlagRobuxUpsellIXP() then
				local layers = abTest.getLayerData(GetFStringRobuxUpsellIxpLayer())
				local isInExperiment = (layers and layers.isInInGameRobuxUpsell)
				if isInExperiment or GetFFlagRobuxUpsellV2() then
					store:dispatch(SetPurchaseFlow(PurchaseFlow.RobuxUpsellV2))
				end
				analytics.signalRobuxUpsellInGameIXP(isInExperiment)
			end

			-- Make sure this is checked AFTER PurchaseFlow.RobuxUpsellV2
			-- PurchaseFlow.RobuxUpsellV2 is rolled out to all
			local isInLargerRobuxUpsellTest = false
			if LargerRobuxUpsellTest.isEnabled() then
				local layerName = GetFStringLargerRobuxUpsellIxpLayer()
				local layers = abTest.getLayerData(layerName)
				if layers then
					abTest.logUserLayerExposure(layerName)
					isInLargerRobuxUpsellTest = LargerRobuxUpsellTest.isUserEnrolled(layers)
					if isInLargerRobuxUpsellTest then
						store:dispatch(SetPurchaseFlow(PurchaseFlow.LargeRobuxUpsell))
					end
				end
			end

			if GetFFlagPPUpsellEndpoint() or GetFFlagRobuxUpsellIXP() or isInLargerRobuxUpsellTest then
				local isAmazon = getHasAmazonUserAgent()
				local isLuobu = GetFFlagEnableLuobuInGameUpsell()
				local paymentPlatform = getPaymentFromPlatform(platform, isLuobu, isAmazon)

				return getRobuxUpsellProduct(network, price, robuxBalance, paymentPlatform):andThen(
					function(product: RobuxUpsell.Product)
						-- Check if the user cancel the purchase before this could return
						if not hasPendingRequest(store:getState()) then
							return
						end

						analytics.signalProductPurchaseUpsellShown(product.id, state.requestType, product.providerId)
						store:dispatch(PromptNativeUpsell(product.providerId, product.id, product.robuxAmount))
						if GetFFlagPurchasePromptAnalytics() then
							store:dispatch(sendCounter(Counter.UpsellModalShown))
						end
					end,
					function()
						-- Check if the user cancel the purchase before this could return
						if not hasPendingRequest(store:getState()) then
							return
						end

						-- No upsell item will provide sufficient funds to make this purchase
						if store:getState().purchaseFlow == PurchaseFlow.LargeRobuxUpsell then
							store:dispatch(SetPromptState(PromptState.LargeRobuxUpsell))
							if GetFFlagPurchasePromptAnalytics() then
								store:dispatch(sendCounter(Counter.UpsellModalShown))
							end
						else
							store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
							if GetFFlagPurchasePromptAnalytics() then
								store:dispatch(sendCounter(Counter.UpsellGenericModalShown))
							end
						end
					end
				)
			else
				return selectRobuxProduct(platform, price - robuxBalance, isPlayerPremium):andThen(function(product)
					analytics.signalProductPurchaseUpsellShown(
						productInfo.productId,
						state.requestType,
						product.productId
					)
					store:dispatch(PromptNativeUpsell(product.productId, nil, product.robuxValue))
					if GetFFlagPurchasePromptAnalytics() then
						store:dispatch(sendCounter(Counter.UpsellModalShown))
					end
				end, function()
					-- No upsell item will provide sufficient funds to make this purchase
					store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
					if GetFFlagPurchasePromptAnalytics() then
						store:dispatch(sendCounter(Counter.UpsellGenericModalShown))
					end
				end)
			end
		end

		analytics.signalProductPurchaseShown(productInfo.productId, state.requestType)

		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolvePromptState
