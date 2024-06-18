local root = script:FindFirstAncestor("root")

local UGCValidationService = game:GetService("UGCValidationService")

local constants = require(root.src.constants)

local function fetchAssetFormat(assetId, assetFormat)
	return UGCValidationService:FetchAssetWithFormat(
		string.format(constants.FETCH_URL, assetId),
		"rbx-format/" .. assetFormat
	)[1]
end

return fetchAssetFormat
