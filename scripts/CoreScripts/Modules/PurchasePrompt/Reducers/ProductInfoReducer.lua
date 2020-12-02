local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local CompleteRequest = require(Root.Actions.CompleteRequest)
local ProductInfoReceived = require(Root.Actions.ProductInfoReceived)
local BundleProductInfoReceived = require(Root.Actions.BundleProductInfoReceived)
local ItemType = require(Root.Enums.ItemType)
local getPreviewImageUrl = require(Root.getPreviewImageUrl)

local USER_OUTFIT = "UserOutfit"

local ProductInfoReducer = Rodux.createReducer({}, {
	[ProductInfoReceived.name] = function(state, action)
		local productInfo = action.productInfo

		return {
			name = productInfo.Name,
			price = productInfo.PriceInRobux or 0,
			premiumPrice = productInfo.PremiumPriceInRobux,
			imageUrl = getPreviewImageUrl(productInfo),
			assetTypeId = productInfo.AssetTypeId,
			productId = productInfo.ProductId,
			membershipTypeRequired = productInfo.MinimumMembershipLevel,
			itemType = productInfo.AssetTypeId
		}
	end,

	[BundleProductInfoReceived.name] = function(state, action)
		local bundleProductInfo = action.bundleProductInfo

		-- For now we need the user outfit id to show the image of the bundle.
		local costumeId
		for _, item in ipairs(bundleProductInfo.items) do
			if item.type == USER_OUTFIT then
				costumeId = item.id
			end
		end
		bundleProductInfo.costumeId = costumeId
		bundleProductInfo.itemType = ItemType.Bundle

		return {
			name = bundleProductInfo.name,
			price = bundleProductInfo.product.priceInRobux or 0,
			imageUrl = getPreviewImageUrl(bundleProductInfo),
			assetTypeId = nil,
			productId = bundleProductInfo.product.id,
			membershipTypeRequired = nil,
			itemType = bundleProductInfo.itemType
		}
	end,

	[CompleteRequest.name] = function(state, action)
		-- Clear product info when we hide the prompt
		return {}
	end,
})

return ProductInfoReducer
