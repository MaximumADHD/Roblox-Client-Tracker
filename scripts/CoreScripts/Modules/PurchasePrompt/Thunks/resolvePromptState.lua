local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local SetPromptState = require(Root.Actions.SetPromptState)
local ProductInfoReceived = require(Root.Actions.ProductInfoReceived)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local BalanceInfoRecieved = require(Root.Actions.BalanceInfoRecieved)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local CompleteRequest = require(Root.Actions.CompleteRequest)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local selectRobuxProduct = require(Root.NativeUpsell.selectRobuxProduct)
local selectRobuxProductFromProvider = require(Root.NativeUpsell.selectRobuxProductFromProvider)
local Analytics = require(Root.Services.Analytics)
local ExternalSettings = require(Root.Services.ExternalSettings)
local meetsPrerequisites = require(Root.Utils.meetsPrerequisites)
local getPlayerProductInfoPrice = require(Root.Utils.getPlayerProductInfoPrice)
local getPaymentFromPlatform = require(Root.Utils.getPaymentFromPlatform)
local getHasAmazonUserAgent = require(Root.Utils.getHasAmazonUserAgent)
local Thunk = require(Root.Thunk)

local GetFFlagEnablePPUpsellProductListRefactor = require(Root.Flags.GetFFlagEnablePPUpsellProductListRefactor)
local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)
local FFlagPPAccountInfoMigration = require(Root.Flags.FFlagPPAccountInfoMigration)

local requiredServices = {
	Analytics,
	ExternalSettings,
}

local function resolvePromptState(productInfo, accountInfo, balanceInfo, alreadyOwned, isRobloxPurchase)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local state = store:getState()
		local analytics = services[Analytics]
		local externalSettings = services[ExternalSettings]

		store:dispatch(ProductInfoReceived(productInfo))
		store:dispatch(AccountInfoReceived(accountInfo))
		if FFlagPPAccountInfoMigration then
			store:dispatch(BalanceInfoRecieved(balanceInfo))
		end

		local restrictThirdParty =
			(not externalSettings.getFlagBypassThirdPartySettingForRobloxPurchase() or not isRobloxPurchase)
			and (externalSettings.getLuaUseThirdPartyPermissions() or externalSettings.getFlagRestrictSales2())

		local canPurchase, failureReason = meetsPrerequisites(productInfo, alreadyOwned, restrictThirdParty, externalSettings)
		if not canPurchase then
			if externalSettings.getFlagHideThirdPartyPurchaseFailure() then
				if not externalSettings.isStudio() and failureReason == PurchaseError.ThirdPartyDisabled then
					-- Do not annoy player with 3rd party failure notifications.
					return store:dispatch(CompleteRequest())
				end
				return store:dispatch(ErrorOccurred(failureReason))
			else
				return store:dispatch(ErrorOccurred(failureReason))
			end
		end

		local robuxBalance = FFlagPPAccountInfoMigration and balanceInfo.robux or accountInfo.RobuxBalance
		local isPlayerPremium = FFlagPPAccountInfoMigration and accountInfo.isPremium or accountInfo.MembershipType == 4
		local price = getPlayerProductInfoPrice(productInfo, isPlayerPremium)
		local platform = UserInputService:GetPlatform()

		if price > robuxBalance then

			if externalSettings.getFFlagDisableRobuxUpsell() then
				return store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxNoUpsell))
			end

			local neededRobux = price - robuxBalance

			if GetFFlagEnablePPUpsellProductListRefactor() then
				local isAmazon = getHasAmazonUserAgent()
				local isLuobu = GetFFlagEnableLuobuInGameUpsell()
				local paymentPlatform = getPaymentFromPlatform(platform, isLuobu, isAmazon)
				return selectRobuxProductFromProvider(paymentPlatform, neededRobux, isPlayerPremium, nil):andThen(function(product)
					analytics.signalProductPurchaseUpsellShown(productInfo.productId, state.requestType, product.productId)
					store:dispatch(PromptNativeUpsell(product.productId, product.robuxValue))
				end, function()
					-- No upsell item will provide sufficient funds to make this purchase
					store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
				end)
			else
				return selectRobuxProduct(platform, neededRobux, isPlayerPremium)
					:andThen(function(product)
						analytics.signalProductPurchaseUpsellShown(productInfo.productId, state.requestType, product.productId)
						store:dispatch(PromptNativeUpsell(product.productId, product.robuxValue))
					end, function()
						-- No upsell item will provide sufficient funds to make this purchase
						store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
					end)
			end
		end

		analytics.signalProductPurchaseShown(productInfo.productId, state.requestType)

		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolvePromptState
