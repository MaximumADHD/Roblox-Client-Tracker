local InspectAndBuyFolder = script.Parent
local Constants = require(InspectAndBuyFolder.Constants)

local GetFFlagIBEnableCollectiblesSystemSupport =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableCollectiblesSystemSupport)

local UtilityFunctions = {}

function UtilityFunctions.getBundleId(assetInfo)
	if assetInfo.parentBundleId ~= nil then
		return assetInfo.parentBundleId
	else
		return nil
	end
end

function UtilityFunctions.isCollectibles(assetInfo)
	return assetInfo and assetInfo.productType and assetInfo.productType == Constants.ProductType.CollectibleItem
end

function UtilityFunctions.hasLimitedQuantity(assetInfo: any?): boolean?
	if not assetInfo then
		return nil
	end

	local isLimited = assetInfo.isLimited
	local isLimitedUnique = if GetFFlagIBEnableCollectiblesSystemSupport() then assetInfo.isLimitedUnique else nil
	local collectibleIsLimited = assetInfo.collectibleIsLimited

	return isLimited or isLimitedUnique or collectibleIsLimited
end

-- Add helper functions to identify Limited 1.0
function UtilityFunctions.isLimited1Point0(assetInfo: any?): boolean?
	if not assetInfo then
		return nil
	end

	return assetInfo.isLimited or assetInfo.isLimitedUnique
end

-- Add helper functions to identify limited 1.0 Limited Unique
function UtilityFunctions.isLimited1Point0_LimitedUnique(assetInfo: any?): boolean?
	if not assetInfo then
		return nil
	end

	return assetInfo.isLimitedUnique
end

-- Add helper functions to identify limited 2.0 and Limited Collectibles
function UtilityFunctions.isLimited2Point0_Or_LimitedCollectible(assetInfo: any?): boolean?
	if not assetInfo then
		return nil
	end

	local collectibleIsLimited = assetInfo.collectibleIsLimited
	return collectibleIsLimited
end

function UtilityFunctions.isUnlimitedCollectibleAsset(itemType: string?, assetInfo: any?): boolean?
	if not itemType or not assetInfo then
		return nil
	end

	local hasUnlimitedQuantity = not UtilityFunctions.hasLimitedQuantity(assetInfo)
	local isCollectible = assetInfo.productType == Constants.ProductType.CollectibleItem
	local isAsset = itemType == Constants.ItemType.Asset

	return hasUnlimitedQuantity and isCollectible and isAsset
end

function UtilityFunctions.isLimitedBundle(itemType: string?, assetInfo: any?): boolean?
	if not itemType or not assetInfo then
		return nil
	end

	local hasLimitedQuantity = assetInfo.collectibleIsLimited
	local isBundle = itemType == Constants.ItemType.Bundle

	return hasLimitedQuantity and isBundle
end

function UtilityFunctions.isUnlimitedCollectibleBundle(itemType: string?, assetInfo: any?): boolean?
	if not itemType or not assetInfo then
		return nil
	end

	local hasUnlimitedQuantity = not assetInfo.collectibleIsLimited
	local isCollectible = assetInfo.productType == Constants.ProductType.CollectibleItem
	local isBundle = itemType == Constants.ItemType.Bundle

	return hasUnlimitedQuantity and isCollectible and isBundle
end

function UtilityFunctions.isLimitedCollectible(assetInfo: any?): boolean?
	if not assetInfo then
		return nil
	end

	local hasLimitedQuantity = UtilityFunctions.hasLimitedQuantity(assetInfo)
	local isCollectible = assetInfo.productType == Constants.ProductType.CollectibleItem

	return hasLimitedQuantity and isCollectible
end

return UtilityFunctions
