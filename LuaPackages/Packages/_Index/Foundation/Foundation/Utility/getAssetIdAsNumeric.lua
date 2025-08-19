type AssetId = string | number

local function getAssetIdAsNumeric(assetId: AssetId): number
	if typeof(assetId) == "number" then
		return assetId
	end

	local numericAssetId = tonumber(assetId:match("(%d+)$"))
	if numericAssetId then
		return numericAssetId
	else
		return -1
	end
end

return getAssetIdAsNumeric
