local UserInputService = game:GetService("UserInputService")

local Thunk = require(script.Parent.Parent.Thunk)

local ExternalSettings = require(script.Parent.Parent.Services.ExternalSettings)

local PromptState = require(script.Parent.Parent.PromptState)
local PurchaseError = require(script.Parent.Parent.PurchaseError)
local UpsellFlow = require(script.Parent.Parent.UpsellFlow)

local SetPromptState = require(script.Parent.Parent.Actions.SetPromptState)
local ProductInfoReceived = require(script.Parent.Parent.Actions.ProductInfoReceived)
local AccountInfoReceived = require(script.Parent.Parent.Actions.AccountInfoReceived)
local ItemCannotBePurchased = require(script.Parent.Parent.Actions.ItemCannotBePurchased)
local PromptNativeUpsell = require(script.Parent.Parent.Actions.PromptNativeUpsell)

local selectRobuxProduct = require(script.Parent.Parent.NativeUpsell.selectRobuxProduct)
local getUpsellFlow = require(script.Parent.Parent.NativeUpsell.getUpsellFlow)

local meetsPrerequisites = require(script.Parent.Parent.meetsPrerequisites)

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
			return store:dispatch(ItemCannotBePurchased(failureReason))
		end

		-- Price may be nil if the item is free
		local price = productInfo.PriceInRobux or 0
		local platform = UserInputService:GetPlatform()
		local upsellFlow = getUpsellFlow(platform)

		if productInfo.MinimumMembershipLevel > accountInfo.MembershipType then

			if upsellFlow == UpsellFlow.Web then
				return store:dispatch(SetPromptState(PromptState.BuildersClubUpsell))
			else
				return store:dispatch(SetPromptState(PurchaseError.BuildersClubLevelTooLow))
			end

		elseif price > accountInfo.RobuxBalance then

			if upsellFlow == UpsellFlow.Web then
				return store:dispatch(SetPromptState(PromptState.RobuxUpsell))
			else
				local hasBuildersClub = accountInfo.MembershipType > 0
				return selectRobuxProduct(platform, price, hasBuildersClub)
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
		end

		return store:dispatch(SetPromptState(PromptState.PromptPurchase))
	end)
end

return resolvePromptState