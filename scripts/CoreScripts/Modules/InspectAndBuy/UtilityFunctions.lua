local UtilityFunctions = {}

function UtilityFunctions.getBundleId(assetInfo)
	if not assetInfo.bundlesAssetIsIn then
		return nil
	end
	return assetInfo.bundlesAssetIsIn[1]
end

return UtilityFunctions
