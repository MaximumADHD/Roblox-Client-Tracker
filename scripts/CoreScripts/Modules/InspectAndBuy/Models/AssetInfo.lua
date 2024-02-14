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
local CoreGui = game:GetService("CoreGui")

local MockId = require(script.Parent.Parent.MockId)
local Constants = require(script.Parent.Parent.Constants)

local FFlagEnableRestrictedAssetSaleLocationInspectAndBuy
	= require(CoreGui.RobloxGui.Modules.Flags.FFlagEnableRestrictedAssetSaleLocationInspectAndBuy)

local GetCollectibleItemInInspectAndBuyEnabled = require(script.Parent.Parent.Flags.GetCollectibleItemInInspectAndBuyEnabled)
local GetFFlagIBGateUGC4ACollectibleAssetsBundles = require(script.Parent.Parent.Flags.GetFFlagIBGateUGC4ACollectibleAssetsBundles)


local AssetInfo = {}

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
	self.bundlesAssetIsIn = {}
	self.numFavorites = 0
	self.minimumMembershipLevel = 0
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
	if GetCollectibleItemInInspectAndBuyEnabled() and newAsset.productType == Constants.ProductType.CollectibleItem then
		newAsset.isForSale = assetInfo.IsForSale and assetInfo.Remaining > 0 and assetInfo.CanBeSoldInThisGame
			and assetInfo.SaleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
		newAsset.collectibleItemId = assetInfo.CollectibleItemId or ""
		newAsset.collectibleProductId = assetInfo.CollectibleProductId or ""
		newAsset.remaining = assetInfo.Remaining or 0
		if assetInfo.CollectiblesItemDetails then
			newAsset.collectibleLowestResalePrice = assetInfo.CollectiblesItemDetails.CollectibleLowestResalePrice or 0
			newAsset.collectibleLowestAvailableResaleProductId = assetInfo.CollectiblesItemDetails.CollectibleLowestAvailableResaleProductId or ""
			newAsset.collectibleLowestAvailableResaleItemInstanceId = assetInfo.CollectiblesItemDetails.CollectibleLowestAvailableResaleItemInstanceId or ""
			newAsset.collectibleQuantityLimitPerUser = assetInfo.CollectiblesItemDetails.CollectibleQuantityLimitPerUser or 0
			newAsset.collectibleIsLimited = if GetFFlagIBGateUGC4ACollectibleAssetsBundles() then assetInfo.CollectiblesItemDetails.IsLimited else nil
		end
	elseif FFlagEnableRestrictedAssetSaleLocationInspectAndBuy then
		newAsset.isForSale = assetInfo.IsForSale and assetInfo.CanBeSoldInThisGame
	else
		newAsset.isForSale = assetInfo.IsForSale
	end
	newAsset.creatorHasVerifiedBadge = assetInfo.Creator.HasVerifiedBadge
	newAsset.isLimited = assetInfo.IsLimited or assetInfo.IsLimitedUnique

	return newAsset
end

function AssetInfo.fromHumanoidDescription(assetId)
	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(assetId)

	return newAsset
end

function AssetInfo.fromGetAssetBundles(assetId, bundleIds)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.bundlesAssetIsIn = bundleIds
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

return AssetInfo
