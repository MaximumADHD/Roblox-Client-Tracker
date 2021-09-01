local root = script:FindFirstAncestor("root")

local UGCValidationService = game:GetService("UGCValidationService")

local constants = require(root.src.constants)

local function fetchAssetFormat(assetId, assetFormat)
	if not settings():GetFFlag("SwitchFormatRequestHeader2") then
		assetFormat = "rbx-format/" .. assetFormat
	end
	return UGCValidationService:FetchAssetWithFormat(
		string.format(constants.FETCH_URL, assetId),
		assetFormat
	)[1]
end

return fetchAssetFormat
