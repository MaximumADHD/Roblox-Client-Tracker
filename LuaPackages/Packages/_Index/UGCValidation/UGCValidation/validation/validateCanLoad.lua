local UGCValidationService = game:GetService("UGCValidationService")

local function validateCanLoad(assetId: string): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:CanLoadAsset(assetId)
	end)

	if not success or not result then
		return false, { "Asset could not be loaded" }
	end

	return true
end

return validateCanLoad
