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
local MockId = require(script.Parent.Parent.MockId)
local BundleInfo = {}

function BundleInfo.new()
	local self = {}

	return self
end

function BundleInfo.mock()
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

function BundleInfo.fromGetAssetBundles(bundleInfo)
	local newBundle = BundleInfo.new()

	newBundle.name = bundleInfo.name
	newBundle.bundleId = tostring(bundleInfo.id)
	newBundle.description = bundleInfo.description
	newBundle.bundleType = bundleInfo.bundleType
	newBundle.creatorId = tostring(bundleInfo.creator.id)
	newBundle.creatorName = bundleInfo.creator.name
	newBundle.productId = tostring(bundleInfo.product.id)
	newBundle.assetIds = {}

	for _, asset in pairs(bundleInfo.items) do
		if asset.type == "UserOutfit" then
			newBundle.costumeId = tostring(asset.id)
		else
			table.insert(newBundle.assetIds, tostring(asset.id))
		end
	end

	return newBundle
end

function BundleInfo.fromGetBundleFavoriteCount(bundleId, numFavorites)
	local newBundle = BundleInfo.new()
	newBundle.bundleId = tostring(bundleId)
	newBundle.numFavorites = numFavorites
	return newBundle
end

function BundleInfo.fromGetEconomyProductInfo(isOwned, bundleId, price, isForSale)
	local newBundle = BundleInfo.new()
	newBundle.bundleId = tostring(bundleId)
	newBundle.owned = isOwned
	newBundle.price = price
	newBundle.isForSale = isForSale
	return newBundle
end

function BundleInfo.fromPurchaseSuccess(bundleId)
	local newBundle = BundleInfo.new()
	newBundle.bundleId = tostring(bundleId)
	newBundle.owned = true
	return newBundle
end

return BundleInfo