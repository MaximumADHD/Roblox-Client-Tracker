--[[
	Model for a Bundle
	{
		name = string,
		bundleId = string,
		description = string,
		bundleType = string,
		creatorId = string,
		creatorName = string,
		productId = string,
		isForSale = bool,
		price = string,
		assetIds = table,
		numFavorites = int,
		costumeId = string,
		owned = bool
	}
]]
local MockId = require(script.Parent.Parent.Mocks.MockAssetId)

export type BundleInfo = {
	-- FIXME: refine type
	[string]: any,
}

local BundleInfo = {}

function BundleInfo.new(): BundleInfo
	local self = {}

	return self
end

function BundleInfo.mock(): BundleInfo
	local self = BundleInfo.new()

	self.name = ""
	self.bundleId = MockId()
	self.description = ""
	self.bundleType = ""
	self.creatorId = ""
	self.creatorName = ""
	self.productId = ""
	self.isForSale = false
	self.price = ""
	self.assetIds = {}
	self.numFavorites = 0
	self.costumeId = ""
	self.owned = false

	return self
end

function BundleInfo.fromGetAssetBundles(bundleInfo): BundleInfo
	local newBundle = BundleInfo.new()

	newBundle.name = bundleInfo.name
	newBundle.bundleId = tostring(bundleInfo.id)
	newBundle.description = bundleInfo.description
	newBundle.bundleType = bundleInfo.bundleType
	newBundle.creatorId = tostring(bundleInfo.creator.id)
	newBundle.creatorName = bundleInfo.creator.name
	newBundle.productId = tostring(bundleInfo.product.id)
	newBundle.assetIds = {}
	newBundle.price = bundleInfo.product.priceInRobux
	newBundle.isForSale = bundleInfo.product.isForSale
	newBundle.premiumPricing = bundleInfo.product.premiumPricing

	local owned = true
	for _, asset in pairs(bundleInfo.items) do
		if asset.type == "UserOutfit" then
			newBundle.costumeId = tostring(asset.id)
		else
			table.insert(newBundle.assetIds, tostring(asset.id))
		end

		if asset.type == "Asset" and not asset.owned then
			owned = false
		end
	end

	newBundle.owned = owned

	return newBundle
end

function BundleInfo.fromGetBundleFavoriteCount(bundleId, numFavorites)
	local newBundle = BundleInfo.new()
	newBundle.bundleId = tostring(bundleId)
	newBundle.numFavorites = numFavorites
	return newBundle
end

function BundleInfo.fromGetItemFavorite(bundleId, isFavorited)
	local newBundle = BundleInfo.new()
	newBundle.bundleId = tostring(bundleId)
	newBundle.isFavorited = isFavorited
	return newBundle
end

function BundleInfo.fromSetItemFavorite(bundleId, setFavorited, numFavorites: number)
	local newBundle = BundleInfo.new()
	newBundle.bundleId = tostring(bundleId)
	newBundle.isFavorited = setFavorited
	newBundle.numFavorites = setFavorited and numFavorites + 1 or numFavorites - 1

	return newBundle
end

function BundleInfo.fromPurchaseSuccess(bundleId)
	local newBundle = BundleInfo.new()
	newBundle.bundleId = tostring(bundleId)
	newBundle.owned = true
	return newBundle
end

return BundleInfo