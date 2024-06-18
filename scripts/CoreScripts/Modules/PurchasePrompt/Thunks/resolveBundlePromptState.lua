--!nonstrict
local Root = script.Parent.Parent
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
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

local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)

local getRobuxUpsellProduct = require(Root.Network.getRobuxUpsellProduct)

local Analytics = require(Root.Services.Analytics)
local Network = require(Root.Services.Network)

local getPaymentPlatform = require(Root.Utils.getPaymentPlatform)
local getPaymentFromPlatformLegacy = require(Root.Utils.getPaymentFromPlatformLegacy)
local getHasAmazonUserAgent = require(Root.Utils.getHasAmazonUserAgent)
local GetFFlagEnableQuestPaymentPlatformType = require(Root.Flags.GetFFlagEnableQuestPaymentPlatformType)
local GetFFlagRespectBalanceInfoForBundleUpsellInStudio =
	require(Root.Flags.GetFFlagRespectBalanceInfoForBundleUpsellInStudio)
local Thunk = require(Root.Thunk)

local GetFFlagEnableLuobuInGameUpsell = require(Root.Flags.GetFFlagEnableLuobuInGameUpsell)
local GetFFlagEnableInsufficientRobuxForBundleUpsellFix =
	require(Root.Flags.GetFFlagEnableInsufficientRobuxForBundleUpsellFix)
local FFlagEnableBundlePurchaseChecks = require(Root.Parent.Flags.FFlagEnableBundlePurchaseChecks)
local GetFFlagUseCatalogItemDetailsToResolveBundlePurchase =
	require(Root.Flags.GetFFlagUseCatalogItemDetailsToResolveBundlePurchase)

local function getBundlePriceFromProductInfo(bundleDetails, isPlayerPremium)
	if bundleDetails and bundleDetails.product ~= nil then
		if isPlayerPremium and bundleDetails.product.premiumPricing ~= nil then
			return bundleDetails.product.premiumPricing.premiumPriceInRobux or 0
		else
			return bundleDetails.product.priceInRobux or 0
		end
	end

	-- Price info not found so return 0
	return 0
end

local function meetsBundlePrerequisitesV2(catalogItemDetails, bundleDetails, balanceInfo, expectedPrice)
	local isOwned = catalogItemDetails.owned
	local collectibleItemDetail = bundleDetails.collectibleItemDetail
	local isCollectible = collectibleItemDetail
		and collectibleItemDetail.collectibleItemId ~= nil
		and collectibleItemDetail.collectibleItemId ~= ""

	local isLimitedCollectible = collectibleItemDetail and collectibleItemDetail.collectibleItemType == "Limited"

	--Check if the bundle is already owned and can't be purchased again
	if isCollectible then
		if not isLimitedCollectible and isOwned then
			-- Non-limited collectibles can only be purchased once
			return false, PurchaseError.AlreadyOwn
		end
	else
		if isOwned then
			-- Legacy bundles can only be puchased once
			return false, PurchaseError.AlreadyOwn
		end
	end

	if not catalogItemDetails.isPurchasable then
		return false, PurchaseError.NotForSale
	end

	-- Check if the user has enough Robux to purchase the bundle
	if expectedPrice ~= nil and balanceInfo.robux ~= nil then
		if expectedPrice > balanceInfo.robux then
			return false, PurchaseError.NotEnoughRobux
		end
	end

	-- No failed prerequisites
	return true, nil
end

local function meetsBundlePrerequisites(bundleDetails, balanceInfo, expectedPrice, alreadyOwned)
	local collectibleItemDetail = bundleDetails.collectibleItemDetail
	local isCollectible = collectibleItemDetail
		and collectibleItemDetail.collectibleItemId ~= nil
		and collectibleItemDetail.collectibleItemId ~= ""

	if FFlagEnableBundlePurchaseChecks then
		local isLimitedCollectible = collectibleItemDetail
			and collectibleItemDetail.collectibleItemType ~= nil
			and collectibleItemDetail.collectibleItemType == "Limited"

		--Check if the bundle is already owned and can't be purchased again
		if isCollectible then
			if not isLimitedCollectible and alreadyOwned then
				return false, PurchaseError.AlreadyOwn
			end
		else
			if alreadyOwned then
				return false, PurchaseError.AlreadyOwn
			end
		end
	end

	-- Check if the bundle is not for sale
	local isForSale
	if isCollectible then
		isForSale = (collectibleItemDetail.saleStatus == "OnSale")
	else
		isForSale = (bundleDetails.product and bundleDetails.product.isForSale)
	end

	if not isForSale then
		return false, PurchaseError.NotForSale
	end

	if FFlagEnableBundlePurchaseChecks then
		-- Check if the user has enough Robux to purchase the bundle
		if expectedPrice ~= nil and balanceInfo.robux ~= nil then
			if expectedPrice > balanceInfo.robux then
				return false, PurchaseError.NotEnoughRobux
			end
		end

		-- Check for under 13 content restriction
		if bundleDetails.itemRestrictions ~= nil then
			for _, val in bundleDetails.itemRestrictions do
				if val == "ThirteenPlus" then
					if (Players.LocalPlayer :: Player):GetUnder13() then
						return false, PurchaseError.Under13
					end
					break
				end
			end
		end
	end

	-- No failed prerequisites
	return true, nil
end

local requiredServices = {
	Analytics,
	Network,
}

local function resolveBundlePromptState(
	catalogItemDetails,
	bundleDetails,
	accountInfo,
	balanceInfo,
	expectedPrice,
	alreadyOwned
)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local state = store:getState()
		local analytics = services[Analytics]
		local network = services[Network]

		store:dispatch(BundleProductInfoReceived(bundleDetails))
		store:dispatch(AccountInfoReceived(accountInfo))
		store:dispatch(BalanceInfoRecieved(balanceInfo))

		if FFlagEnableBundlePurchaseChecks then
			if expectedPrice == nil then
				local isPlayerPremium = accountInfo.isPremium
				expectedPrice = getBundlePriceFromProductInfo(bundleDetails, isPlayerPremium)
			end
		end

		local canPurchase, failureReason
		if GetFFlagUseCatalogItemDetailsToResolveBundlePurchase() then
			canPurchase, failureReason =
				meetsBundlePrerequisitesV2(catalogItemDetails, bundleDetails, balanceInfo, expectedPrice)
		else
			canPurchase, failureReason =
				meetsBundlePrerequisites(bundleDetails, balanceInfo, expectedPrice, alreadyOwned)
		end
		local price = expectedPrice
		local platform = UserInputService:GetPlatform()
		local upsellFlow = getUpsellFlow(platform)
		local canStartUpsellProcess = failureReason == PurchaseError.NotEnoughRobux
		--[[
			In studio, we falsely report that users have the maximum amount
			 of robux, so that they can always test the normal purchase flow
		]]
		if RunService:IsStudio() and GetFFlagRespectBalanceInfoForBundleUpsellInStudio() and canStartUpsellProcess then
			-- In this case, we will only show the Bundle purchase modal and respect the Robux balance mock.
			canStartUpsellProcess = price > balanceInfo.robux
			-- TODO: In Studio, we hide the Bundle upsell for now due to a better experience requirement.
			-- Currently, the Buy Robux Upsell requires Native Prompt call. In studio, we won't be able to purchase.
			-- Thus, with upsell open, devs won't be able to test purchasing a bundle. Thus, we will ignore this upsell case in Studio for now.
			if not canPurchase then
				canPurchase = not canStartUpsellProcess
			end
		end

		if not canPurchase then
			if canStartUpsellProcess then
				if not GetFFlagEnableInsufficientRobuxForBundleUpsellFix() and upsellFlow == UpsellFlow.Web then
					return store:dispatch(SetPromptState(PromptState.RobuxUpsell))
				else
					local neededRobux = price - balanceInfo.robux
					local isPlayerPremium = accountInfo.isPremium

					local paymentPlatform
					if GetFFlagEnableQuestPaymentPlatformType() then
						paymentPlatform = getPaymentPlatform(platform)
					else
						local isAmazon = getHasAmazonUserAgent()
						local isLuobu = GetFFlagEnableLuobuInGameUpsell()
						paymentPlatform = getPaymentFromPlatformLegacy(platform, isLuobu, isAmazon)
					end

					local robuxBalance = balanceInfo.robux

					return getRobuxUpsellProduct(network, price, robuxBalance, paymentPlatform):andThen(
						function(product: RobuxUpsell.Product)
							analytics.signalProductPurchaseUpsellShown(
								product.id,
								state.requestType,
								product.providerId
							)
							store:dispatch(PromptNativeUpsell(product.providerId, product.id, product.robuxAmount))
						end,
						function()
							-- No upsell item will provide sufficient funds to make this purchase
							store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
						end
					)
				end
			else
				return store:dispatch(ErrorOccurred(failureReason))
			end
		end

		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolveBundlePromptState
