local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local ProductInfoReceived = require(script.Parent.Parent.Actions.ProductInfoReceived)
local BundleProductInfoReceived = require(script.Parent.Parent.Actions.BundleProductInfoReceived)

local getPreviewImageUrl = require(script.Parent.Parent.getPreviewImageUrl)

local ItemType = require(script.Parent.Parent.ItemType)

local USER_OUTFIT = "UserOutfit"

local ProductInfoReducer = Rodux.createReducer({}, {
	[ProductInfoReceived.name] = function(state, action)
		local productInfo = action.productInfo

		return {
			name = productInfo.Name,
			price = productInfo.PriceInRobux or 0,
			imageUrl = getPreviewImageUrl(productInfo),
			assetTypeId = productInfo.AssetTypeId,
			productId = productInfo.ProductId,
			bcLevelRequired = productInfo.MinimumMembershipLevel,
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
			bcLevelRequired = nil,
			itemType = bundleProductInfo.itemType
		}
	end,
})

return ProductInfoReducer