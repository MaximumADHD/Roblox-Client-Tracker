local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local SetPromptState = require(Root.Actions.SetPromptState)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local BundleProductInfoReceived = require(Root.Actions.BundleProductInfoReceived)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local selectRobuxProduct = require(Root.NativeUpsell.selectRobuxProduct)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local Thunk = require(Root.Thunk)

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

local function resolveBundlePromptState(productPurchasableDetails, bundleDetails, accountInfo)
	return Thunk.new(script.Name, {}, function(store, services)
		store:dispatch(BundleProductInfoReceived(bundleDetails))
		store:dispatch(AccountInfoReceived(accountInfo))

		local canPurchase = productPurchasableDetails.purchasable
		local failureReason = getPurchasableStatus(productPurchasableDetails)
		local price = productPurchasableDetails.price
		local platform = UserInputService:GetPlatform()
		local upsellFlow = getUpsellFlow(platform)

		if not canPurchase then
			if failureReason == PurchaseError.NotEnoughRobux then
				if upsellFlow == UpsellFlow.Web then
					return store:dispatch(SetPromptState(PromptState.RobuxUpsell))
				else
					local neededRobux = price - accountInfo.RobuxBalance
					local hasMembership = accountInfo.MembershipType > 0

					return selectRobuxProduct(platform, neededRobux, hasMembership)
						:andThen(function(product)
							-- We found a valid upsell product for the current platform
							store:dispatch(PromptNativeUpsell(product.productId, product.robuxValue))
						end, function()
							-- No upsell item will provide sufficient funds to make this purchase
							if platform == Enum.Platform.XBoxOne then
								store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxXbox))
							else
								store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobux))
							end
						end)
				end
			else
				return store:dispatch(ErrorOccurred(failureReason))
			end
		end

		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolveBundlePromptState