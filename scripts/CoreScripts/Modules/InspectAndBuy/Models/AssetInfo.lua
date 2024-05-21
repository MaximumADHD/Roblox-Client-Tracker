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

local FFlagEnableRestrictedAssetSaleLocationInspectAndBuy =
	require(CoreGui.RobloxGui.Modules.Flags.FFlagEnableRestrictedAssetSaleLocationInspectAndBuy)

local GetCollectibleItemInInspectAndBuyEnabled =
	require(InspectAndBuyFolder.Flags.GetCollectibleItemInInspectAndBuyEnabled)
local GetFFlagIBGateUGC4ACollectibleAssetsBundles =
	require(InspectAndBuyFolder.Flags.GetFFlagIBGateUGC4ACollectibleAssetsBundles)
local GetFFlagIBEnableCollectiblesSystemSupport =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
local GetFFlagIBEnableCollectiblePurchaseForUnlimited =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblePurchaseForUnlimited)
local GetFFlagIBEnableRespectSaleLocation = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableRespectSaleLocation)

local GetFFlagIBEnableFixForOwnedText = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableFixForOwnedText)
local GetFFlagIBEnableFixForSaleLocation = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableFixForSaleLocation)
local GetFFlagIBFixBuyingFromResellers = require(InspectAndBuyFolder.Flags.GetFFlagIBFixBuyingFromResellers)
local GetFFlagIBEnableLimitedBundle = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableLimitedBundle)
local FFlagIBFixLegacyItemStatus = game:DefineFastFlag("IBFixLegacyItemStatus", false)

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
	self.isLimitedUnique = if GetFFlagIBEnableCollectiblesSystemSupport() then false else nil
	self.collectibleIsLimited = if GetFFlagIBEnableCollectiblesSystemSupport() then false else nil
	-- [Deprecated] Replace bundlesAssetIsIn with parentBundleId & state.assetBundles[assetId]
	self.bundlesAssetIsIn = {}
	if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
		-- Assume: Each BundleAsset could only be in one collectible bundle. This is true on the date 02/23/2024
		-- If the parentBundleId is nil, we could assume the asset is not part of bundle or the asset belongs to multiple bundles
		-- For shared parts, we will not support limited badging nor purchasing
		self.parentBundleId = nil
	end
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

	if GetFFlagIBFixBuyingFromResellers() then
		newAsset.isForSale = assetInfo.IsForSale
		newAsset.canBeSoldInThisGame = assetInfo.CanBeSoldInThisGame
		newAsset.saleLocation = assetInfo.SaleLocation
		newAsset.remaining = assetInfo.Remaining or 0
		if newAsset.productType == Constants.ProductType.CollectibleItem then
			newAsset.collectibleItemId = assetInfo.CollectibleItemId or ""
			newAsset.collectibleProductId = assetInfo.CollectibleProductId or ""
			if assetInfo.CollectiblesItemDetails then
				newAsset.collectibleLowestResalePrice = assetInfo.CollectiblesItemDetails.CollectibleLowestResalePrice
					or 0
				newAsset.collectibleLowestAvailableResaleProductId = assetInfo.CollectiblesItemDetails.CollectibleLowestAvailableResaleProductId
					or ""
				newAsset.collectibleLowestAvailableResaleItemInstanceId = assetInfo.CollectiblesItemDetails.CollectibleLowestAvailableResaleItemInstanceId
					or ""
				newAsset.collectibleQuantityLimitPerUser = assetInfo.CollectiblesItemDetails.CollectibleQuantityLimitPerUser
					or 0
				newAsset.collectibleIsLimited = assetInfo.CollectiblesItemDetails.IsLimited
			end
		end
	else
		-- Old behavior
		if
			GetCollectibleItemInInspectAndBuyEnabled()
			and newAsset.productType == Constants.ProductType.CollectibleItem
		then
			newAsset.isForSale = assetInfo.IsForSale
				and (assetInfo.Remaining or 0) > 0
				and assetInfo.CanBeSoldInThisGame
				and assetInfo.SaleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
			if GetFFlagIBEnableRespectSaleLocation() then
				local saleLocation = assetInfo.SaleLocation
				local isNotSpecificExperienceOnly = saleLocation
					and (
						saleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
						and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopAndExperiencesById
					)
				local isNotShopOnly = saleLocation
					and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopOnly
				-- verified: game.GameId is universe id
				local isSpecificExperienceOnlyButInThisUniverse = saleLocation
					and (saleLocation.SaleLocationType == Constants.SaleLocationType.ExperiencesDevApiOnly or saleLocation.SaleLocationType == Constants.SaleLocationType.ShopAndExperiencesById)
					and type(saleLocation.UniverseIds) == "table"
					and table.find(saleLocation.UniverseIds, game.GameId) ~= nil

				local isNotDevApiOnly
				if GetFFlagIBEnableFixForSaleLocation() then
					isNotSpecificExperienceOnly = saleLocation
						and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopAndExperiencesById
					isSpecificExperienceOnlyButInThisUniverse = saleLocation
						and (saleLocation.SaleLocationType == Constants.SaleLocationType.ShopAndExperiencesById)
						and type(saleLocation.UniverseIds) == "table"
						and table.find(saleLocation.UniverseIds, game.GameId) ~= nil
					isNotDevApiOnly = saleLocation
						and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
				end
				-- we should respect IsForSale and SaleLocation for collectibles
				-- CanBeSoldInThisGame attribute is set in the Engine level, it's not provided in the API
				newAsset.isForSale = assetInfo.IsForSale
					and assetInfo.CanBeSoldInThisGame
					and isNotShopOnly
					and (isNotSpecificExperienceOnly or isSpecificExperienceOnlyButInThisUniverse)
				if GetFFlagIBEnableFixForSaleLocation() then
					newAsset.isForSale = newAsset.isForSale and isNotDevApiOnly
				end
			end
			newAsset.collectibleItemId = assetInfo.CollectibleItemId or ""
			newAsset.collectibleProductId = assetInfo.CollectibleProductId or ""
			newAsset.remaining = assetInfo.Remaining or 0
			if assetInfo.CollectiblesItemDetails then
				newAsset.collectibleLowestResalePrice = assetInfo.CollectiblesItemDetails.CollectibleLowestResalePrice
					or 0
				newAsset.collectibleLowestAvailableResaleProductId = assetInfo.CollectiblesItemDetails.CollectibleLowestAvailableResaleProductId
					or ""
				newAsset.collectibleLowestAvailableResaleItemInstanceId = assetInfo.CollectiblesItemDetails.CollectibleLowestAvailableResaleItemInstanceId
					or ""
				newAsset.collectibleQuantityLimitPerUser = assetInfo.CollectiblesItemDetails.CollectibleQuantityLimitPerUser
					or 0
				newAsset.collectibleIsLimited = if GetFFlagIBGateUGC4ACollectibleAssetsBundles()
						or GetFFlagIBEnableCollectiblesSystemSupport()
					then assetInfo.CollectiblesItemDetails.IsLimited
					else nil
			end
		elseif FFlagEnableRestrictedAssetSaleLocationInspectAndBuy then
			newAsset.isForSale = assetInfo.IsForSale and assetInfo.CanBeSoldInThisGame
			if FFlagIBFixLegacyItemStatus and assetInfo.CanBeSoldInThisGame == nil then
				newAsset.isForSale = assetInfo.IsForSale
			end
		else
			newAsset.isForSale = assetInfo.IsForSale
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

function AssetInfo.fromGetAssetBundles(assetId, bundleIds)
	local newAsset = AssetInfo.new()
	newAsset.assetId = tostring(assetId)
	newAsset.bundlesAssetIsIn = bundleIds
	return newAsset
end

if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
	function AssetInfo.fromBundleInfo(assetId, bundleInfo)
		local newAsset = AssetInfo.new()
		newAsset.assetId = tostring(assetId)
		newAsset.parentBundleId = bundleInfo.bundleId
		newAsset.bundlesAssetIsIn = { bundleInfo.bundleId } -- TODO: Deprecated bundlesAssetIsIn
		newAsset.collectibleItemId = bundleInfo.collectibleItemId
		newAsset.collectibleProductId = bundleInfo.collectibleProductId
		newAsset.collectibleLowestResalePrice = bundleInfo.collectibleLowestResalePrice
		newAsset.collectibleLowestAvailableResaleProductId = bundleInfo.collectibleLowestAvailableResaleProductId
		newAsset.collectibleLowestAvailableResaleItemInstanceId =
			bundleInfo.collectibleLowestAvailableResaleItemInstanceId
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
		if GetFFlagIBEnableLimitedBundle() then
			newAsset.owned = bundleInfo.owned
			if not newAsset.collectibleIsLimited then
				newAsset.isForSale = newAsset.isForSale and not newAsset.owned
			end
		end

		newAsset.description = bundleInfo.description or ""
		newAsset.productType = Constants.ProductType.CollectibleItem

		if bundleInfo.price then
			newAsset.price = bundleInfo.price
		end

		return newAsset
	end
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

function AssetInfo.fromGetItemDetails(itemDetails)
	if not GetFFlagIBEnableCollectiblePurchaseForUnlimited() then
		return
	end

	local newAsset = AssetInfo.new()

	newAsset.assetId = tostring(itemDetails.Id)
	newAsset.owned = itemDetails.Owned
	newAsset.isForSale = itemDetails.IsPurchasable
	if GetFFlagIBEnableFixForOwnedText() and not GetFFlagIBFixBuyingFromResellers() then
		newAsset.isForSale = itemDetails.IsPurchasable and not itemDetails.Owned
	end
	newAsset.price = itemDetails.Price or 0
	newAsset.hasResellers = itemDetails.HasResellers
	newAsset.collectibleItemId = itemDetails.CollectibleItemId

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

if GetFFlagIBFixBuyingFromResellers() then
	function AssetInfo.getSaleDetailsForCollectibles(assetInfo)
		-- Deep clone data
		local newAsset = Dash.joinDeep({}, assetInfo)
		local saleLocation = assetInfo.saleLocation
		if assetInfo.productType == Constants.ProductType.CollectibleItem then
			newAsset.isForSale = assetInfo.isForSale
				and (assetInfo.remaining or 0) > 0
				and assetInfo.canBeSoldInThisGame
				and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
			if GetFFlagIBEnableRespectSaleLocation() then
				local isNotSpecificExperienceOnly = saleLocation
					and (
						saleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
						and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopAndExperiencesById
					)
				local isNotShopOnly = saleLocation
					and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopOnly
				-- verified: game.GameId is universe id
				local isSpecificExperienceOnlyButInThisUniverse = saleLocation
					and (saleLocation.SaleLocationType == Constants.SaleLocationType.ExperiencesDevApiOnly or saleLocation.SaleLocationType == Constants.SaleLocationType.ShopAndExperiencesById)
					and type(saleLocation.UniverseIds) == "table"
					and table.find(saleLocation.UniverseIds, game.GameId) ~= nil
				local isNotDevApiOnly
				if GetFFlagIBEnableFixForSaleLocation() then
					isNotSpecificExperienceOnly = saleLocation
						and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ShopAndExperiencesById
					isSpecificExperienceOnlyButInThisUniverse = saleLocation
						and (saleLocation.SaleLocationType == Constants.SaleLocationType.ShopAndExperiencesById)
						and type(saleLocation.UniverseIds) == "table"
						and table.find(saleLocation.UniverseIds, game.GameId) ~= nil
					isNotDevApiOnly = saleLocation
						and saleLocation.SaleLocationType ~= Constants.SaleLocationType.ExperiencesDevApiOnly
				end
				-- we should respect isForSale and SaleLocation for collectibles
				-- CanBeSoldInThisGame attribute is set in the Engine level, it's not provided in the API
				newAsset.isForSale = assetInfo.isForSale
					and assetInfo.canBeSoldInThisGame
					and isNotShopOnly
					and (isNotSpecificExperienceOnly or isSpecificExperienceOnlyButInThisUniverse)
				if GetFFlagIBEnableFixForSaleLocation() then
					newAsset.isForSale = newAsset.isForSale and isNotDevApiOnly
				end
			end
			-- Flip bool if not limited
			if not assetInfo.collectibleIsLimited then
				newAsset.isForSale = newAsset.isForSale and not newAsset.owned
			end
		elseif FFlagEnableRestrictedAssetSaleLocationInspectAndBuy then
			newAsset.isForSale = assetInfo.isForSale and assetInfo.canBeSoldInThisGame
			if FFlagIBFixLegacyItemStatus and assetInfo.canBeSoldInThisGame == nil then
				newAsset.isForSale = assetInfo.isForSale
			end
		else
			newAsset.isForSale = assetInfo.isForSale
		end
		return newAsset
	end
end

return AssetInfo
