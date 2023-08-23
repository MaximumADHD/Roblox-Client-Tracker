local InspectAndBuyFolder = script.Parent
local Constants = require(InspectAndBuyFolder.Constants)

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

return UtilityFunctions
