--!nonstrict
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
		collectibleItemId = string,
		collectibleProductId = string,
		collectibleLowestResalePrice = int,
		collectibleLowestAvailableResaleProductId = string,
		collectibleLowestAvailableResaleItemInstanceId = string,
		collectibleQuantityLimitPerUser = int,
		remaining = int,
		creatingUniverseId = string,
	}
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Dash = require(CorePackages.Packages.Dash)

local InspectAndBuyFolder = script.Parent.Parent

local MockId = require(InspectAndBuyFolder.MockId)
local Constants = require(InspectAndBuyFolder.Constants)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local AvatarExperienceCommon = require(CorePackages.Workspace.Packages.AvatarExperienceCommon)
local ItemRestrictions = AvatarExperienceCommon.Enums.ItemRestrictions

type AvatarPreviewItem = AvatarExperienceInspectAndBuy.AvatarPreviewItem
type AssetInfo = AvatarExperienceInspectAndBuy.AssetInfo
type BundleInfo = AvatarExperienceInspectAndBuy.BundleInfo
type BulkPurchaseResultItem = AvatarExperienceInspectAndBuy.BulkPurchaseResultItem
type ItemDetails = AvatarExperienceInspectAndBuy.ItemDetails

local FFlagEnableRestrictedAssetSaleLocationInspectAndBuy =
	require(CoreGui.RobloxGui.Modules.Flags.FFlagEnableRestrictedAssetSaleLocationInspectAndBuy)

local GetFFlagIBEnableCollectiblesSystemSupport =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblesSystemSupport)

local FFlagAXParseAdditionalItemDetailsFromCatalog =
	require(InspectAndBuyFolder.Flags.FFlagAXParseAdditionalItemDetailsFromCatalog)

local AssetInfo = {}

-- helper function to round value to 2 decimal places (for meta field)
local roundValue = function(value)
	return math.round(value * 100) / 100
end

function AssetInfo.new()
	local self = {}

	return self
end

function AssetInfo.mock()
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
	self.isLimitedUnique = if GetFFlagIBEnableCollectiblesSystemSupport() then false else nil
	self.collectibleIsLimited = if GetFFlagIBEnableCollectiblesSystemSupport() then false else nil
	-- [Deprecated] Replace bundlesAssetIsIn with parentBundleId & state.assetBundles[assetId]
	self.bundlesAssetIsIn = {}
	-- Assume: Each BundleAsset could only be in one collectible bundle. This is true on the date 02/23/2024
	-- If the parentBundleId is nil, we could assume the asset is not part of bundle or the asset belongs to multiple bundles
	-- For shared parts, we will not support limited badging nor purchasing
	self.parentBundleId = nil
	self.numFavorites = 0
	self.minimumMembershipLevel = 0
	-- Because the assets inside any bundle are not counted in the collectible system at all, this is true on the date 02/23/2024.
	-- Thus, for assets inside any bundle, we will put the bundle's collectibleItemId, collectibleIsLimited to its assets.
	self.collectibleItemId = ""
	self.collectibleProductId = ""
	self.collectibleLowestResalePrice = 0
	self.collectibleLowestAvailableResaleProductId = ""
	self.collectibleLowestAvailableResaleItemInstanceId = ""
	self.collectibleQuantityLimitPerUser = 0
	self.remaining = 0
	self.creatingUniverseId = nil

	return self
end

--[[
    Used to process ownership of an asset based on the bulk purchase result
]]
function AssetInfo.fromBulkPurchaseResult(bulkPurchaseResult: BulkPurchaseResultItem, prevAsset: AssetInfo?): AssetInfo
	local newAsset = AssetInfo.new()
	local itemRestrictions = if prevAsset and prevAsset.itemRestrictions then prevAsset.itemRestrictions else {}
	newAsset.resellableCount = if prevAsset and prevAsset.resellableCount then prevAsset.resellableCount else 0
	if
		bulkPurchaseResult.status == Enum.MarketplaceItemPurchaseStatus.Success
		and bulkPurchaseResult.type == Enum.MarketplaceProductType.AvatarAsset
	then
		newAsset.owned = true

		-- update the resellable count by 1 if the asset is a collectible
		if
			itemRestrictions[ItemRestrictions.Collectible]
			or itemRestrictions[ItemRestrictions.Limited]
			or itemRestrictions[ItemRestrictions.LimitedUnique]
		then
			newAsset.resellableCount = newAsset.resellableCount + 1
		end
	end
	return newAsset
end

function AssetInfo.fromAvatarPreviewItem(avatarPreviewItem: AvatarPreviewItem): AssetInfo
	local newAsset: AssetInfo = AssetInfo.new()

	newAsset.name = avatarPreviewItem.name
	newAsset.description = avatarPreviewItem.description
	newAsset.price = avatarPreviewItem.priceInRobux
	newAsset.productId = tostring(avatarPreviewItem.productId)
	newAsset.collectibleItemId = avatarPreviewItem.collectibleItemId
	newAsset.owned = avatarPreviewItem.quantityOwned > 0
	newAsset.resellableCount = avatarPreviewItem.quantityOwned
	newAsset.creatorId = tostring(avatarPreviewItem.creator.id)
	newAsset.creatorName = avatarPreviewItem.creator.name
	newAsset.creatorHasVerifiedBadge = avatarPreviewItem.creator.hasVerifiedBadge
	newAsset.assetId = tostring(avatarPreviewItem.id)
	newAsset.assetTypeId = tostring(avatarPreviewItem.assetType)
	newAsset.productId = tostring(avatarPreviewItem.productId)
	newAsset.isForSale = avatarPreviewItem.isPurchasable
	newAsset.noPriceStatus = avatarPreviewItem.noPriceStatus
	newAsset.meta = avatarPreviewItem.meta

	-- parse item restrictions
	if avatarPreviewItem.itemRestrictions then
		local itemRestrictions = {}
		for _, value in avatarPreviewItem.itemRestrictions do
			itemRestrictions[value] = true
		end
		newAsset.itemRestrictions = itemRestrictions
	end
	return newAsset
end

function AssetInfo.fromGetProductInfo(assetInfo)
	local newAsset = AssetInfo.new()

	newAsset.name = assetInfo.Name
	newAsset.description = assetInfo.Description
	newAsset.price = assetInfo.PriceInRobux
	newAsset.productType = assetInfo.ProductType
	newAsset.remaining = assetInfo.Remaining
	newAsset.creatorId = tostring(assetInfo.Creator.Id)
	newAsset.creatorName = assetInfo.Creator.Name
	newAsset.assetId = tostring(assetInfo.AssetId)
	newAsset.assetTypeId = tostring(assetInfo.AssetTypeId)
	newAsset.productId = tostring(assetInfo.ProductId)

	newAsset.isForSale = assetInfo.IsForSale
	newAsset.canBeSoldInThisGame = assetInfo.CanBeSoldInThisGame
	newAsset.saleLocation = assetInfo.SaleLocation
	newAsset.remaining = assetInfo.Remaining or 0
	if newAsset.productType == Constants.ProductType.CollectibleItem then
		newAsset.collectibleItemId = assetInfo.CollectibleItemId or ""
		newAsset.collectibleProductId = assetInfo.CollectibleProductId or ""
		if assetInfo.CollectiblesItemDetails then
			newAsset.collectibleLowestResalePrice = assetInfo.CollectiblesItemDetails.CollectibleLowestResalePrice or 0
			newAsset.collectibleLowestAvailableResaleProductId = assetInfo.CollectiblesItemDetails.CollectibleLowestAvailableResaleProductId
				or ""
			newAsset.collectibleLowestAvailableResaleItemInstanceId = assetInfo.CollectiblesItemDetails.CollectibleLowestAvailableResaleItemInstanceId
				or ""
			newAsset.collectibleQuantityLimitPerUser = assetInfo.CollectiblesItemDetails.CollectibleQuantityLimitPerUser
				or 0
			newAsset.collectibleIsLimited = assetInfo.CollectiblesItemDetails.IsLimited
		end
	end

	newAsset.creatorHasVerifiedBadge = assetInfo.Creator.HasVerifiedBadge
	if GetFFlagIBEnableCollectiblesSystemSupport() then
		-- Differentiate between L1.0 limited and limited unique items
		newAsset.isLimited = assetInfo.IsLimited
		newAsset.isLimitedUnique = assetInfo.IsLimitedUnique
	else
		newAsset.isLimited = assetInfo.IsLimited or assetInfo.IsLimitedUnique
	end

	return newAsset
end

function AssetInfo.fromHumanoidDescription(assetId)
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(assetId)

	return newAsset
end

function AssetInfo.fromHumanoidDescriptionAccessory(accessory): AssetInfo
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(accessory.AssetId)

	-- build the meta object
	newAsset.meta = {}
	newAsset.meta.position = {
		x = roundValue(accessory.Position.X),
		y = roundValue(accessory.Position.Y),
		z = roundValue(accessory.Position.Z),
	}
	newAsset.meta.rotation = {
		x = roundValue(accessory.Rotation.X),
		y = roundValue(accessory.Rotation.Y),
		z = roundValue(accessory.Rotation.Z),
	}
	newAsset.meta.scale = {
		x = roundValue(accessory.Scale.X),
		y = roundValue(accessory.Scale.Y),
		z = roundValue(accessory.Scale.Z),
	}

	-- if the item is layered, update the order field as well
	if accessory.IsLayered then
		newAsset.meta.order = accessory.Order
	end

	return newAsset
end

function AssetInfo.fromGetAssetBundles(assetId, bundleIds)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.bundlesAssetIsIn = bundleIds
	return newAsset
end

--[[
	Sets the favorite status of an asset.
]]
function AssetInfo.fromGetFavoriteForAsset(id: string, isFavorite: boolean): AssetInfo
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(id)
	newAsset.isFavorited = isFavorite
	return newAsset
end

function AssetInfo.fromBundleInfo(assetId, bundleInfo)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.parentBundleId = bundleInfo.bundleId
	newAsset.bundlesAssetIsIn = { bundleInfo.bundleId } -- TODO: Deprecated bundlesAssetIsIn
	newAsset.collectibleItemId = bundleInfo.collectibleItemId
	newAsset.collectibleProductId = bundleInfo.collectibleProductId
	newAsset.collectibleLowestResalePrice = bundleInfo.collectibleLowestResalePrice
	newAsset.collectibleLowestAvailableResaleProductId = bundleInfo.collectibleLowestAvailableResaleProductId
	newAsset.collectibleLowestAvailableResaleItemInstanceId = bundleInfo.collectibleLowestAvailableResaleItemInstanceId
	newAsset.collectibleQuantityLimitPerUser = bundleInfo.collectibleQuantityLimitPerUser
	newAsset.collectibleIsLimited = bundleInfo.collectibleIsLimited
	--[[
		Definition of isForSale
		In this new refactored data model, if an asset if part of bundle, the assetInfo.isForSale is indicating if the bundle, the asset belongs to, is for sale or not

		Why: The frontend logic doesn't need to consider if it's asset for sale or the bundle for sale.
		If the asset is part of a bundle, it's can be sold when bundle is for sale in business logic.
		In real world, an asset inside bundle is NOT for sale on production.
		According to current design on backend, they should not be for sale, otherwise, we have more problem.

		Thus, calculating assetInBundleButNotForSale is not necessary.
		Thus, here, we simplify to use bundleInfo.isForSale to indicate if the assetInBundle is for sale.
	--]]
	newAsset.isForSale = bundleInfo.isForSale
	newAsset.remaining = bundleInfo.remaining

	newAsset.owned = bundleInfo.owned
	if not newAsset.collectibleIsLimited then
		newAsset.isForSale = newAsset.isForSale and not newAsset.owned
	end

	newAsset.description = bundleInfo.description or ""
	newAsset.productType = Constants.ProductType.CollectibleItem

	if bundleInfo.price then
		newAsset.price = bundleInfo.price
	end

	return newAsset
end

function AssetInfo.fromGetAssetFavoriteCount(assetId, numFavorites)
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(assetId)
	newAsset.numFavorites = numFavorites

	return newAsset
end

function AssetInfo.fromGetEconomyProductInfo(asset, isOwned, price, isForSale, premiumPricing)
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(asset.assetId)
	newAsset.owned = isOwned
	if price then
		newAsset.price = price
	end
	newAsset.isForSale = isForSale
	newAsset.premiumPricing = premiumPricing

	return newAsset
end

function AssetInfo.fromGetItemDetailsV2(itemDetails: ItemDetails): AssetInfo
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(itemDetails.id)
	newAsset.isForSale = itemDetails.isPurchasable
	newAsset.price = itemDetails.price or 0
	newAsset.hasResellers = itemDetails.hasResellers
	newAsset.collectibleItemId = itemDetails.collectibleItemId

	local itemRestrictions = {}
	if itemDetails.itemRestrictions then
		for _, value in itemDetails.itemRestrictions do
			itemRestrictions[value] = true
		end
		newAsset.itemRestrictions = itemRestrictions
	end

	newAsset.saleLocationType = itemDetails.saleLocationType
	newAsset.remaining = itemDetails.unitsAvailableForConsumption
	newAsset.collectibleTotalQuantity = itemDetails.totalQuantity
	newAsset.collectibleLowestResalePrice = itemDetails.lowestResalePrice
	newAsset.isOffSale = itemDetails.isOffSale
	newAsset.saleLocationType = itemDetails.saleLocationType
	newAsset.numFavorites = itemDetails.favoriteCount
	newAsset.catalogPriceStatus = itemDetails.priceStatus

	return newAsset
end

function AssetInfo.fromGetItemDetails(itemDetails)
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(itemDetails.Id)
	newAsset.owned = itemDetails.Owned
	newAsset.isForSale = itemDetails.IsPurchasable
	newAsset.price = itemDetails.Price or 0
	newAsset.hasResellers = itemDetails.HasResellers
	newAsset.collectibleItemId = itemDetails.CollectibleItemId

	if FFlagAXParseAdditionalItemDetailsFromCatalog then
		local itemRestrictions = {}
		if itemDetails.ItemRestrictions then
			for _, value in itemDetails.ItemRestrictions do
				itemRestrictions[value] = true
			end
			newAsset.itemRestrictions = itemRestrictions
		end

		newAsset.saleLocationType = itemDetails.SaleLocationType
		newAsset.remaining = itemDetails.UnitsAvailableForConsumption
		newAsset.collectibleTotalQuantity = itemDetails.TotalQuantity
		newAsset.collectibleLowestResalePrice = itemDetails.LowestResalePrice
		newAsset.isOffSale = itemDetails.IsOffSale
		newAsset.saleLocationType = itemDetails.SaleLocationType
		newAsset.numFavorites = itemDetails.FavoriteCount
		newAsset.catalogPriceStatus = itemDetails.PriceStatus
	end

	return newAsset
end

function AssetInfo.fromPurchaseSuccess(assetId)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.owned = true
	return newAsset
end

--[[
	FIXME(dbanks)
	2023/12/07
	See https://roblox.atlassian.net/browse/AVBURST-12905
	This will be removed once backend sends "creating universe" with asset details.
--]]
function AssetInfo.fromGetVersionInfo(assetId, latestVersionData)
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(assetId)
	newAsset.creatingUniverseId = if latestVersionData.creatingUniverseId
		then tostring(latestVersionData.creatingUniverseId)
		else nil

	return newAsset
end

function AssetInfo.getSaleDetailsForCollectibles(assetInfo)
	-- Deep clone data
	local newAsset = Dash.joinDeep({}, assetInfo)
	local saleLocation = assetInfo.saleLocation
	if assetInfo.productType == Constants.ProductType.CollectibleItem then
		local isNotShopOnly = saleLocation and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopOnly
		local isNotSpecificExperienceOnly = saleLocation
			and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopAndExperiencesById
		-- verified: game.GameId is universe id
		local isSpecificExperienceOnlyButInThisUniverse = saleLocation
			and (saleLocation.SaleLocationType == Constants.SaleLocationType.ShopAndExperiencesById)
			and type(saleLocation.UniverseIds) == "table"
			and table.find(saleLocation.UniverseIds, game.GameId) ~= nil
		local isNotDevApiOnly = saleLocation
			and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
		-- we should respect isForSale and SaleLocation for collectibles
		-- CanBeSoldInThisGame attribute is set in the Engine level, it's not provided in the API
		newAsset.isForSale = assetInfo.isForSale
			and assetInfo.canBeSoldInThisGame
			and isNotShopOnly
			and (isNotSpecificExperienceOnly or isSpecificExperienceOnlyButInThisUniverse)
			and isNotDevApiOnly

		-- Flip bool if not limited
		if not assetInfo.collectibleIsLimited then
			newAsset.isForSale = newAsset.isForSale and not newAsset.owned
		end
	elseif FFlagEnableRestrictedAssetSaleLocationInspectAndBuy then
		newAsset.isForSale = assetInfo.isForSale and assetInfo.canBeSoldInThisGame
		if assetInfo.canBeSoldInThisGame == nil then
			newAsset.isForSale = assetInfo.isForSale
		end
	else
		newAsset.isForSale = assetInfo.isForSale
	end
	return newAsset
end

return AssetInfo
