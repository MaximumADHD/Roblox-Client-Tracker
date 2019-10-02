local UserInputService = game:GetService("UserInputService")

local Thunk = require(script.Parent.Parent.Thunk)

local PromptState = require(script.Parent.Parent.PromptState)
local PurchaseError = require(script.Parent.Parent.PurchaseError)
local UpsellFlow = require(script.Parent.Parent.UpsellFlow)

local SetPromptState = require(script.Parent.Parent.Actions.SetPromptState)
local BundleProductInfoReceived = require(script.Parent.Parent.Actions.BundleProductInfoReceived)
local AccountInfoReceived = require(script.Parent.Parent.Actions.AccountInfoReceived)
local ItemCannotBePurchased = require(script.Parent.Parent.Actions.ItemCannotBePurchased)
local PromptNativeUpsell = require(script.Parent.Parent.Actions.PromptNativeUpsell)

local selectRobuxProduct = require(script.Parent.Parent.NativeUpsell.selectRobuxProduct)
local getUpsellFlow = require(script.Parent.Parent.NativeUpsell.getUpsellFlow)

local getPurchasableStatus = require(script.Parent.Parent.getPurchasableStatus)

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
								store:dispatch(ItemCannotBePurchased(PurchaseError.NotEnoughRobuxXbox))
							else
								store:dispatch(ItemCannotBePurchased(PurchaseError.NotEnoughRobux))
							end
						end)
				end
			else
				return store:dispatch(ItemCannotBePurchased(failureReason))
			end
		end
		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolveBundlePromptState