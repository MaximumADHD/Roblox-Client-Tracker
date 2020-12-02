local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local SetPromptState = require(Root.Actions.SetPromptState)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local ProductInfoReceived = require(Root.Actions.ProductInfoReceived)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local selectRobuxProduct = require(Root.NativeUpsell.selectRobuxProduct)
local Thunk = require(Root.Thunk)


local function resolveSubscriptionPromptState(productInfo, accountInfo, alreadyOwned)
	return Thunk.new(script.Name, {}, function(store, services)
		store:dispatch(ProductInfoReceived(productInfo))
		store:dispatch(AccountInfoReceived(accountInfo))

		if alreadyOwned then
			return store:dispatch(ErrorOccurred(PurchaseError.AlreadyOwn))
		end

		if not productInfo.IsForSale then
			return store:dispatch(ErrorOccurred(PurchaseError.NotForSale))
		end

		local price = productInfo.PriceInRobux or 0
		local platform = UserInputService:GetPlatform()
		local upsellFlow = getUpsellFlow(platform)

		if price > accountInfo.RobuxBalance then
			if upsellFlow == UpsellFlow.Unavailable then
				return store:dispatch(ErrorOccurred(PurchaseError.NotEnoughRobuxNoUpsell))
			end

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
		end

		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolveSubscriptionPromptState
