--!nonstrict
local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local SetPromptState = require(Root.Actions.SetPromptState)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local BundleProductInfoReceived = require(Root.Actions.BundleProductInfoReceived)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local BalanceInfoRecieved = require(Root.Actions.BalanceInfoRecieved)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)

local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local UpsellFlow = require(Root.Enums.UpsellFlow)

local RobuxUpsell = require(Root.Models.RobuxUpsell)

local selectRobuxProduct = require(Root.NativeUpsell.selectRobuxProduct)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)

local getRobuxUpsellProduct = require(Root.Network.getRobuxUpsellProduct)

local Analytics = require(Root.Services.Analytics)
local Network = require(Root.Services.Network)

local getPaymentFromPlatform = require(Root.Utils.getPaymentFromPlatform)
local getHasAmazonUserAgent = require(Root.Utils.getHasAmazonUserAgent)
local Thunk = require(Root.Thunk)

local GetFFlagPPUpsellEndpoint = require(Root.Flags.GetFFlagPPUpsellEndpoint)
local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)
local GetFFlagEnableInsufficientRobuxForBundleUpsellFix = require(Root.Flags.GetFFlagEnableInsufficientRobuxForBundleUpsellFix)

local function getPurchasableStatus(productPurchasableDetails)
	local reason = productPurchasableDetails.reason

	if reason == "InsufficientFunds" then
		return PurchaseError.NotEnoughRobux
	elseif reason == "AlreadyOwned" then
		return PurchaseError.AlreadyOwn
	elseif reason == "NotForSale" then
		return PurchaseError.NotForSale
	elseif reason == "ContentRatingRestricted" then
		return PurchaseError.Under13
	else
		return PurchaseError.UnknownFailure
	end
end

local requiredServices = {
	Analytics,
	Network,
}

local function resolveBundlePromptState(productPurchasableDetails, bundleDetails, accountInfo, balanceInfo)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local state = store:getState()
		local analytics = services[Analytics]
		local network = services[Network]

		store:dispatch(BundleProductInfoReceived(bundleDetails))
		store:dispatch(AccountInfoReceived(accountInfo))
		store:dispatch(BalanceInfoRecieved(balanceInfo))

		local canPurchase = productPurchasableDetails.purchasable
		local failureReason = getPurchasableStatus(productPurchasableDetails)
		local price = productPurchasableDetails.price
		local platform = UserInputService:GetPlatform()
		local upsellFlow = getUpsellFlow(platform)

		if not canPurchase then
			if failureReason == PurchaseError.NotEnoughRobux then
				if not GetFFlagEnableInsufficientRobuxForBundleUpsellFix() and upsellFlow == UpsellFlow.Web then
					return store:dispatch(SetPromptState(PromptState.RobuxUpsell))
				else
					local neededRobux = price - balanceInfo.robux
					local isPlayerPremium = accountInfo.isPremium

					if GetFFlagPPUpsellEndpoint() then
						local isAmazon = getHasAmazonUserAgent()
						local isLuobu = GetFFlagEnableLuobuInGameUpsell()
						local paymentPlatform = getPaymentFromPlatform(platform, isLuobu, isAmazon)

						local robuxBalance = balanceInfo.robux
		
						return getRobuxUpsellProduct(network, price, robuxBalance, paymentPlatform)
							:andThen(function(product: RobuxUpsell.Product)
								analytics.signalProductPurchaseUpsellShown(product.id, state.requestType, product.providerId)
								store:dispatch(PromptNativeUpsell(product.providerId, product.id, product.robuxAmount))
							end, function()
								-- No upsell item will provide sufficient funds to make this purchase
								store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
							end)
					else
						return selectRobuxProduct(platform, neededRobux, isPlayerPremium)
							:andThen(function(product)
								-- We found a valid upsell product for the current platform
								store:dispatch(PromptNativeUpsell(product.productId, nil, product.robuxValue))
							end, function()
								-- No upsell item will provide sufficient funds to make this purchase
								store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
							end
						)
					end
				end
			else
				return store:dispatch(ErrorOccurred(failureReason))
			end
		end

		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolveBundlePromptState
