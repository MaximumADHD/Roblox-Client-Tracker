--!nonstrict
--[[
	Checks if an asset is part of a bundle.
]]
return function(state)
	local assetId = state.detailsInformation.assetId
	if assetId == nil then
		return nil
	end
	local assetInfo = state.assets[assetId]

	if assetInfo and assetInfo.isForSale then
		return false
	else
		return assetInfo and assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn > 0
	end
end