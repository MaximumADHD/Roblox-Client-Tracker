local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local function validateCanLoad(assetId: string): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:CanLoadAsset(assetId)
	end)

	if not success or not result then
		Analytics.reportFailure(Analytics.ErrorType.validateCanLoad)
		return false, { "Asset could not be loaded" }
	end

	return true
end

return validateCanLoad
