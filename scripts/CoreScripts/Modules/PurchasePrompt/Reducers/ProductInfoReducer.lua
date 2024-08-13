--!nonstrict
local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local Constants = require(Root.Misc.Constants)
local CompleteRequest = require(Root.Actions.CompleteRequest)
local ProductInfoReceived = require(Root.Actions.ProductInfoReceived)
local BundleProductInfoReceived = require(Root.Actions.BundleProductInfoReceived)
local ItemType = require(Root.Enums.ItemType)
local getPreviewImageUrl = require(Root.getPreviewImageUrl)

local USER_OUTFIT = "UserOutfit"

local GetFFlagTranslateDevProducts = require(Root.Flags.GetFFlagTranslateDevProducts)
local GetFFlagEnableAvatarCreationFeePurchase = require(Root.Flags.GetFFlagEnableAvatarCreationFeePurchase)
local GetFFlagFixBundlePromptThumbnail = require(Root.Flags.GetFFlagFixBundlePromptThumbnail)

local ProductInfoReducer = Rodux.createReducer({}, {
	[ProductInfoReceived.name] = function(state, action)
		local productInfo = action.productInfo

		local collectibleItemId = ""
		local collectibleProductId = ""
		if productInfo.ProductType == Constants.ProductType.CollectibleItem then
			collectibleItemId = productInfo.CollectibleItemId
			collectibleProductId = productInfo.CollectibleProductId
		end

		return {
			name = GetFFlagTranslateDevProducts() and (productInfo.DisplayName or productInfo.Name) or productInfo.Name,
			description = if GetFFlagEnableAvatarCreationFeePurchase() then productInfo.Description else nil,
			price = productInfo.PriceInRobux or 0,
			premiumPrice = productInfo.PremiumPriceInRobux,
			imageUrl = getPreviewImageUrl(productInfo),
			assetTypeId = productInfo.AssetTypeId,
			productId = productInfo.ProductId,
			productType = productInfo.ProductType,
			membershipTypeRequired = productInfo.MinimumMembershipLevel,
			itemType = productInfo.AssetTypeId,
			collectibleItemId = collectibleItemId,
			collectibleProductId = collectibleProductId,
		}
	end,

	[BundleProductInfoReceived.name] = function(state, action)
		local bundleProductInfo = action.bundleProductInfo

		-- For now we need the user outfit id to show the image of the bundle.
		local costumeId
		for _, item in ipairs(bundleProductInfo.items) do
			if item.type == USER_OUTFIT then
				costumeId = item.id
				if GetFFlagFixBundlePromptThumbnail() then
					break
				end
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
