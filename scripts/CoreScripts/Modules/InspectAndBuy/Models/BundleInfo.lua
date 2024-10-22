--!nonstrict
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
local CorePackages = game:GetService("CorePackages")
local Dash = require(CorePackages.Packages.Dash)

local InspectAndBuyFolder = script.Parent.Parent

local Constants = require(InspectAndBuyFolder.Constants)

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
	self.isForSale = false
	self.collectibleItemId = ""
	self.collectibleIsLimited = nil
	self.collectibleProductId = ""
	self.collectibleLowestResalePrice = 0
	self.collectibleLowestAvailableResaleProductId = ""
	self.collectibleLowestAvailableResaleItemInstanceId = ""
	self.collectibleQuantityLimitPerUser = 0
	self.remaining = 0
	self.productType = ""

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

	if bundleInfo.collectibleItemDetail then
		newBundle.isForSale = bundleInfo.collectibleItemDetail.saleStatus == Constants.SaleStatus.OnSale
		newBundle.collectibleItemId = bundleInfo.collectibleItemDetail.collectibleItemId or ""
		newBundle.collectibleProductId = bundleInfo.collectibleItemDetail.collectibleProductId or ""
		newBundle.collectibleLowestResalePrice = bundleInfo.collectibleItemDetail.lowestResalePrice or 0
		newBundle.collectibleLowestAvailableResaleProductId = bundleInfo.collectibleItemDetail.lowestAvailableResaleProductId
			or ""
		newBundle.collectibleLowestAvailableResaleItemInstanceId = bundleInfo.collectibleItemDetail.lowestAvailableResaleItemInstanceId
			or ""
		newBundle.collectibleQuantityLimitPerUser = bundleInfo.collectibleItemDetail.quantityLimitPerUser or 0
		-- productType is used for testing if the bundle is a collectible item
		-- TODO (lliu): this is a temporary solution to identify collectible items, we should use a different field
		newBundle.productType = Constants.ProductType.CollectibleItem
		-- price is required for collectible items
		newBundle.price = bundleInfo.collectibleItemDetail.price
		-- TODO: verify Remaining is reliable for collectible items
		newBundle.remaining = bundleInfo.collectibleItemDetail.unitsAvailable or 0

		newBundle.collectibleIsLimited = bundleInfo.collectibleItemDetail.collectibleItemType == "Limited"

		newBundle.saleLocation = bundleInfo.collectibleItemDetail.saleLocation
	end

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

function BundleInfo.fromGetItemDetails(itemDetails)
	local newBundle = BundleInfo.new()

	newBundle.bundleId = tostring(itemDetails.Id)
	newBundle.owned = itemDetails.Owned
	newBundle.isForSale = itemDetails.IsPurchasable
	newBundle.price = itemDetails.Price or 0
	newBundle.hasResellers = itemDetails.HasResellers
	newBundle.collectibleItemId = itemDetails.CollectibleItemId

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

function BundleInfo.getSaleDetailsForCollectibles(bundleInfo)
	local newBundle = Dash.joinDeep({}, bundleInfo)
	if bundleInfo.productType == Constants.ProductType.CollectibleItem then
		-- Deep copy
		local saleLocation = newBundle.saleLocation
		local isNotShopOnly = saleLocation and saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ShopOnly

		local isNotSpecificExperienceOnly = saleLocation
			and saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ShopAndExperiencesById
		-- The bundle endpoint returns extra field: the `enabledUniverseIds`
		-- This field is purely used in Catalog to determine if a deep link should be displayed
		local isSpecificExperienceOnlyButInThisUniverse = saleLocation
			and saleLocation.saleLocationTypeId == Constants.SaleLocationType.ShopAndExperiencesById
			and type(saleLocation.universeIds) == "table"
			and table.find(saleLocation.universeIds, game.GameId) ~= nil
		local isNotDevApiOnly = saleLocation
			and saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ExperiencesDevApiOnly
		-- we should respect isForSale and SaleLocation for collectibles
		-- catalog API doesn't provide CanBeSoldInThisGame attribute for bundle
		newBundle.isForSale = newBundle.isForSale
			and isNotShopOnly
			and (isNotSpecificExperienceOnly or isSpecificExperienceOnlyButInThisUniverse)
			and isNotDevApiOnly
		if not bundleInfo.collectibleIsLimited then
			newBundle.isForSale = newBundle.isForSale and not newBundle.owned
		end
	end
	return newBundle
end

return BundleInfo
