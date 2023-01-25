--[[
	Model for an Asset (e.g. Hat).
	{
		name = string,
		assetId = string,
		assetTypeId = string,
		creatorId = string,
		creatorName = string,
		owned = bool,
		isForSale = bool,
		description = string,
		price = string,
		productId = string,
		isLimited = bool,
		bundlesAssetIsIn = table,
		numFavorites = int,
	}
]]
local CoreGui = game:GetService("CoreGui")
local MockId = require(script.Parent.Parent.Mocks.MockAssetId)
local FFlagEnableRestrictedAssetSaleLocationInspectAndBuy
	= require(CoreGui.RobloxGui.Modules.Flags.FFlagEnableRestrictedAssetSaleLocationInspectAndBuy)

export type AssetInfo = {
	-- FIXME: refine type
	[string]: any,
}

local AssetInfo = {}

function AssetInfo.new(): AssetInfo
	local self = {}

	return self
end

function AssetInfo.mock(): AssetInfo
	local self = AssetInfo.new()

	self.name = ""
	self.assetId = MockId()
	self.assetTypeId = ""
	self.creatorId = ""
	self.creatorName = ""
	self.creatorHasVerifiedBadge = false
	self.owned = false
	self.isForSale = false
	self.description = ""
	self.price = ""
	self.productId = ""
	self.isLimited = false
	self.bundlesAssetIsIn = {}
	self.numFavorites = 0
	self.minimumMembershipLevel = 0
	self.genres = {}

	return self
end

function AssetInfo.fromGetProductInfo(assetInfo)
	local newAsset = AssetInfo.new()

	newAsset.name = assetInfo.Name
	newAsset.description = assetInfo.Description
	newAsset.price = assetInfo.PriceInRobux
	newAsset.creatorId = tostring(assetInfo.Creator.Id)
	newAsset.creatorName = assetInfo.Creator.Name
	newAsset.assetId = tostring(assetInfo.AssetId)
	newAsset.assetTypeId = tostring(assetInfo.AssetTypeId)
	newAsset.productId = tostring(assetInfo.ProductId)
	if FFlagEnableRestrictedAssetSaleLocationInspectAndBuy then
		newAsset.isForSale = assetInfo.isForSale and assetInfo.CanBeSoldInThisGame
	else
		newAsset.isForSale = assetInfo.IsForSale
	end
	newAsset.creatorHasVerifiedBadge = assetInfo.Creator.CreatorHasVerifiedBadge
	newAsset.isLimited = assetInfo.IsLimited or assetInfo.IsLimitedUnique

	return newAsset
end

--[[
	When getting assets from the humanoid description in
	GetAssetsFromHumanoidDescription thunk, create an asset
	from the model with just the assetId
]]
function AssetInfo.fromHumanoidDescription(id)
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(id)

	return newAsset
end

function AssetInfo.fromGetItemDetails(asset, isOwned, price, isForSale, premiumPricing)
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(asset.Id)
	newAsset.owned = isOwned
	if price then
		newAsset.price = price
	end
	newAsset.isForSale = isForSale
	newAsset.premiumPricing = premiumPricing
	newAsset.numFavorites = asset.FavoriteCount
	newAsset.genres = asset.Genres

	return newAsset
end

function AssetInfo.fromGetAssetBundles(assetId, bundleIds)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.bundlesAssetIsIn = bundleIds
	return newAsset
end

function AssetInfo.fromGetItemFavorite(assetId, isFavorited)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.isFavorited = isFavorited
	return newAsset
end

function AssetInfo.fromSetItemFavorite(assetId, setFavorited, numFavorites: number)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.isFavorited = setFavorited
	newAsset.numFavorites = setFavorited and numFavorites + 1 or numFavorites - 1

	return newAsset
end

function AssetInfo.fromPurchaseSuccess(assetId)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.owned = true
	return newAsset
end

return AssetInfo