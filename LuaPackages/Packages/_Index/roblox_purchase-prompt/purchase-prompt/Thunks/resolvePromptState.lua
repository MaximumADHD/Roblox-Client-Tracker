local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local SetPromptState = require(Root.Actions.SetPromptState)
local ProductInfoReceived = require(Root.Actions.ProductInfoReceived)
local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local PromptNativeUpsell = require(Root.Actions.PromptNativeUpsell)
local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local UpsellFlow = require(Root.Enums.UpsellFlow)
local selectRobuxProduct = require(Root.NativeUpsell.selectRobuxProduct)
local getUpsellFlow = require(Root.NativeUpsell.getUpsellFlow)
local ExternalSettings = require(Root.Services.ExternalSettings)
local meetsPrerequisites = require(Root.Utils.meetsPrerequisites)
local Thunk = require(Root.Thunk)


local requiredServices = {
	ExternalSettings,
}

local function resolvePromptState(productInfo, accountInfo, alreadyOwned)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		local externalSettings = services[ExternalSettings]

		store:dispatch(ProductInfoReceived(productInfo))
		store:dispatch(AccountInfoReceived(accountInfo))

		local restrictThirdParty = externalSettings.getFlagRestrictSales2()

		local canPurchase, failureReason = meetsPrerequisites(productInfo, alreadyOwned, restrictThirdParty)
		if not canPurchase then
			return store:dispatch(ErrorOccurred(failureReason))
		end

		-- Price may be nil if the item is free
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

return resolvePromptState
