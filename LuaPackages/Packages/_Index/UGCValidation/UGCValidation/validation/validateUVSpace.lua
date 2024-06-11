local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateUVSpace(meshInfo: Types.MeshInfo): (boolean, { string }?)
	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		success, result = pcall(function()
			return UGCValidationService:ValidateEditableMeshUVSpace(meshInfo.editableMesh)
		end)
	else
		success, result = pcall(function()
			return UGCValidationService:ValidateUVSpace(meshInfo.contentId)
		end)
	end

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateUVSpace_FailedToExecute)
		return false,
			{
				string.format(
					"Failed to execute validateUVSpace check on '%s'. Make sure the UV maps exists and try again.",
					meshInfo.fullName
				),
			}
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateUVSpace_InvalidUVSpace)
		return false,
			{
				string.format(
					"Detected modified UV values for '%s'. The original UV map for this model can't be altered.",
					meshInfo.fullName
				),
			}
	end

	return true
end

return validateUVSpace
