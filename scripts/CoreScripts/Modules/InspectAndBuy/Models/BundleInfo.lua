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
local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
local GetFFlagIBEnableCollectiblePurchaseForUnlimited =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblePurchaseForUnlimited)
local GetFFlagIBEnableRespectSaleLocation = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableRespectSaleLocation)

local GetFFlagIBEnableFixForOwnedText = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableFixForOwnedText)
local GetFFlagIBEnableFixForSaleLocation = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableFixForSaleLocation)
local GetFFlagIBFixBuyingFromResellers = require(InspectAndBuyFolder.Flags.GetFFlagIBFixBuyingFromResellers)

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
	if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
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
	end

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

	if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
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

			if GetFFlagIBFixBuyingFromResellers() then
				newBundle.saleLocation = bundleInfo.collectibleItemDetail.saleLocation
			else
				if GetFFlagIBEnableRespectSaleLocation() then
					newBundle.saleLocation = bundleInfo.collectibleItemDetail.saleLocation
					local saleLocation = newBundle.saleLocation

					local isNotSpecificExperienceOnly = saleLocation
						and (
							(saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ExperiencesDevApiOnly)
							and (saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ShopAndExperiencesById)
						)
					local isNotShopOnly = saleLocation
						and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopOnly
					-- The bundle endpoint returns extra field: the `enabledUniverseIds`
					-- This field is purely used in Catalog to determine if a deep link should be displayed
					local isSpecificExperienceOnlyButInThisUniverse = saleLocation
						and ((saleLocation.saleLocationTypeId == Constants.SaleLocationType.ExperiencesDevApiOnly) or (saleLocation.saleLocationTypeId == Constants.SaleLocationType.ShopAndExperiencesById))
						and type(saleLocation.universeIds) == "table"
						and table.find(saleLocation.universeIds, game.GameId) ~= nil
					local isNotDevApiOnly
					if GetFFlagIBEnableFixForSaleLocation() then
						isNotSpecificExperienceOnly = saleLocation
							and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopAndExperiencesById
						isSpecificExperienceOnlyButInThisUniverse = saleLocation
							and saleLocation.SaleLocationType == Constants.SaleLocationType.ShopAndExperiencesById
							and type(saleLocation.UniverseIds) == "table"
							and table.find(saleLocation.UniverseIds, game.GameId) ~= nil
						isNotDevApiOnly = saleLocation
							and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
					end
					-- we should respect isForSale and SaleLocation for collectibles
					-- catalog API doesn't provide CanBeSoldInThisGame attribute for bundle
					newBundle.isForSale = newBundle.isForSale
						and isNotShopOnly
						and (isNotSpecificExperienceOnly or isSpecificExperienceOnlyButInThisUniverse)
					if GetFFlagIBEnableFixForSaleLocation() then
						newBundle.isForSale = newBundle.isForSale and isNotDevApiOnly
					end
				end
			end
		end
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
	if not GetFFlagIBEnableCollectiblePurchaseForUnlimited() then
		return
	end

	local newBundle = BundleInfo.new()

	newBundle.bundleId = tostring(itemDetails.Id)
	newBundle.owned = itemDetails.Owned
	newBundle.isForSale = itemDetails.IsPurchasable
	if GetFFlagIBEnableFixForOwnedText() and not GetFFlagIBFixBuyingFromResellers() then
		newBundle.isForSale = itemDetails.IsPurchasable and not itemDetails.Owned
	end
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

if GetFFlagIBFixBuyingFromResellers() then
	function BundleInfo.getSaleDetailsForCollectibles(bundleInfo)
		local newBundle = Dash.joinDeep({}, bundleInfo)
		if bundleInfo.productType == Constants.ProductType.CollectibleItem then
			-- Deep copy
			if GetFFlagIBEnableRespectSaleLocation() then
				local saleLocation = newBundle.saleLocation
				local isNotSpecificExperienceOnly = saleLocation
					and (
						(saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ExperiencesDevApiOnly)
						and (saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ShopAndExperiencesById)
					)
				local isNotShopOnly = saleLocation
					and saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ShopOnly
				-- The bundle endpoint returns extra field: the `enabledUniverseIds`
				-- This field is purely used in Catalog to determine if a deep link should be displayed
				local isSpecificExperienceOnlyButInThisUniverse = saleLocation
					and ((saleLocation.saleLocationTypeId == Constants.SaleLocationType.ExperiencesDevApiOnly) or (saleLocation.saleLocationTypeId == Constants.SaleLocationType.ShopAndExperiencesById))
					and type(saleLocation.universeIds) == "table"
					and table.find(saleLocation.universeIds, game.GameId) ~= nil
				local isNotDevApiOnly
				if GetFFlagIBEnableFixForSaleLocation() then
					isNotSpecificExperienceOnly = saleLocation
						and saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ShopAndExperiencesById
					isSpecificExperienceOnlyButInThisUniverse = saleLocation
						and saleLocation.saleLocationTypeId == Constants.SaleLocationType.ShopAndExperiencesById
						and type(saleLocation.universeIds) == "table"
						and table.find(saleLocation.universeIds, game.GameId) ~= nil
					isNotDevApiOnly = saleLocation
						and saleLocation.saleLocationTypeId ~= Constants.SaleLocationType.ExperiencesDevApiOnly
				end
				-- we should respect isForSale and SaleLocation for collectibles
				-- catalog API doesn't provide CanBeSoldInThisGame attribute for bundle
				newBundle.isForSale = newBundle.isForSale
					and isNotShopOnly
					and (isNotSpecificExperienceOnly or isSpecificExperienceOnlyButInThisUniverse)
				if GetFFlagIBEnableFixForSaleLocation() then
					newBundle.isForSale = newBundle.isForSale and isNotDevApiOnly
				end
			end
			if not bundleInfo.collectibleIsLimited then
				newBundle.isForSale = newBundle.isForSale and not newBundle.owned
			end
		end
		return newBundle
	end
end

return BundleInfo
