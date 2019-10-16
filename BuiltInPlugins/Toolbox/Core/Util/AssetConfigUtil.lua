local Plugin = script.Parent.Parent.Parent
local Util = Plugin.Core.Util
local Constants = require(Util.Constants)

local MathUtils = require(Plugin.Libs.UILibrary.Utils.MathUtils)

local AssetConfigUtil = {}

function AssetConfigUtil.isReadyForSale(assetStatus)
	return Constants.AssetStatus.ReviewApproved == assetStatus or
		Constants.AssetStatus.OnSale == assetStatus or
		Constants.AssetStatus.OffSale == assetStatus or
		Constants.AssetStatus.DelayedRelease == assetStatus
end

function AssetConfigUtil.isOnSale(assetStatus)
	return Constants.AssetStatus.OnSale == assetStatus
end

function AssetConfigUtil.getSubText(newAssetStatus, currentAssetStatus, localizedContent)
	if not AssetConfigUtil.isReadyForSale(newAssetStatus) then
		return localizedContent.Sales.ItemCannotBeSold
	elseif AssetConfigUtil.isOnSale(newAssetStatus) and AssetConfigUtil.isOnSale(currentAssetStatus) then
		return localizedContent.Sales.Onsale
	elseif not AssetConfigUtil.isOnSale(newAssetStatus) and AssetConfigUtil.isOnSale(currentAssetStatus) then
		return localizedContent.Sales.OffsaleApplyToSave
	elseif AssetConfigUtil.isOnSale(newAssetStatus) and not AssetConfigUtil.isOnSale(currentAssetStatus) then
		return localizedContent.Sales.OnsaleApplyToSave
	end
	return localizedContent.Sales.Offsale
end

function AssetConfigUtil.getMarketplaceFeesPercentage(allowedAssetTypesForRelease, assetTypeEnum)
	local releaseDataForAssetType = allowedAssetTypesForRelease[assetTypeEnum.Name]
	return releaseDataForAssetType and releaseDataForAssetType.marketplaceFeesPercentage or 0
end


function AssetConfigUtil.calculatePotentialEarning(allowedAssetTypesForRelease, price, assetTypeEnum)
	price = tonumber(price)
	if not price then
		return 0
	end
	price = MathUtils:round(price)
	local convertToZeroToOne = 0.01
	local scaler = convertToZeroToOne * AssetConfigUtil.getMarketplaceFeesPercentage(allowedAssetTypesForRelease, assetTypeEnum)
	local marketPlaceFee = math.max(1, MathUtils:round(price * scaler))
	return math.max(0, price - marketPlaceFee)
end

function AssetConfigUtil.getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	local releaseDataForAssetType = allowedAssetTypesForRelease and assetTypeEnum and allowedAssetTypesForRelease[assetTypeEnum.Name]
	return releaseDataForAssetType and releaseDataForAssetType.allowedPriceRange or {}
end

function AssetConfigUtil.getMinPrice(allowedAssetTypesForRelease, assetTypeEnum)
	local priceRange = AssetConfigUtil.getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	return priceRange.minRobux and tonumber(priceRange.minRobux) or 0
end

function AssetConfigUtil.getMaxPrice(allowedAssetTypesForRelease, assetTypeEnum)
	local priceRange = AssetConfigUtil.getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	return priceRange.maxRobux and tonumber(priceRange.maxRobux) or 0
end

return AssetConfigUtil