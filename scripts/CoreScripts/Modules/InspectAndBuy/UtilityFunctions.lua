local InspectAndBuyFolder = script.Parent
local Constants = require(InspectAndBuyFolder.Constants)

local GetFFlagIBGateUGC4ACollectibleAssetsBundles =
	require(InspectAndBuyFolder.Flags.GetFFlagIBGateUGC4ACollectibleAssetsBundles)

local UtilityFunctions = {}

function UtilityFunctions.getBundleId(assetInfo)
	if not assetInfo.bundlesAssetIsIn then
		return nil
	end
	return assetInfo.bundlesAssetIsIn[1]
end

function UtilityFunctions.isCollectibles(assetInfo)
	return assetInfo and assetInfo.productType and assetInfo.productType == Constants.ProductType.CollectibleItem
end

if GetFFlagIBGateUGC4ACollectibleAssetsBundles() then
	function UtilityFunctions.hasLimitedQuantity(assetInfo: any?): boolean?
		if not assetInfo then
			return nil
		end

		return assetInfo.isLimited or assetInfo.collectibleIsLimited
	end

	function UtilityFunctions.isUnlimitedCollectibleAsset(itemType: string?, assetInfo: any?): boolean?
		if not itemType or not assetInfo then
			return nil
		end

		local hasUnlimitedQuantity = not UtilityFunctions.hasLimitedQuantity(assetInfo)
		local hasCollectibleItemId = assetInfo.collectibleItemId and assetInfo.collectibleItemId ~= ""
		local isAsset = itemType == Constants.ItemType.Asset

		return hasUnlimitedQuantity and hasCollectibleItemId and isAsset
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
		local hasCollectibleItemId = assetInfo.collectibleItemId and assetInfo.collectibleItemId ~= ""
		local isBundle = itemType == Constants.ItemType.Bundle

		return hasUnlimitedQuantity and hasCollectibleItemId and isBundle
	end
end

return UtilityFunctions
