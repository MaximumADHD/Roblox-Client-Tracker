local InspectAndBuyFolder = script.Parent.Parent
local GetFFlagIBEnableNewDataCollectionForCollectibleSystem =
	require(InspectAndBuyFolder.Flags.GetFFlagIBEnableNewDataCollectionForCollectibleSystem)
local GetFFlagIBEnableLimitedBundle = require(InspectAndBuyFolder.Flags.GetFFlagIBEnableLimitedBundle)

--[[
	Checks if an asset is part of a bundle.
]]
return function(state): boolean?
	local assetId = state.detailsInformation.assetId
	if assetId == nil then
		return nil
	end
	local assetInfo = state.assets[assetId]

	if GetFFlagIBEnableLimitedBundle() then
		return assetInfo and assetInfo.parentBundleId ~= nil
	end

	if assetInfo and assetInfo.isForSale then
		return false
	else
		if GetFFlagIBEnableNewDataCollectionForCollectibleSystem() then
			return assetInfo and assetInfo.parentBundleId ~= nil
		end
		return assetInfo and assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn > 0
	end
end