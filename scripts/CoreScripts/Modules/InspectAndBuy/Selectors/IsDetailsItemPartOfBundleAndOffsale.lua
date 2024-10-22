--[[
	Checks if an asset is part of a bundle.
]]
return function(state): boolean?
	local assetId = state.detailsInformation.assetId
	if assetId == nil then
		return nil
	end
	local assetInfo = state.assets[assetId]

	return assetInfo and assetInfo.parentBundleId ~= nil
end
