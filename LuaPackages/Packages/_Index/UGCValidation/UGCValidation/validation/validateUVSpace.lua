local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
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
		return false, { "Failed to execute validateUVSpace check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateUVSpace_InvalidUVSpace)
		return false,
			{
				"Your mesh has UVs defined outside 0-1 space. This can lead to texturing discrepancies and violates UGC upload requirements.",
			}
	end

	return true
end

local function DEPRECATED_validateUVSpace(meshId: string): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateUVSpace(meshId)
	end)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateUVSpace_FailedToExecute)
		return false, { "Failed to execute validateUVSpace check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateUVSpace_InvalidUVSpace)
		return false,
			{
				"Your mesh has UVs defined outside 0-1 space. This can lead to texturing discrepancies and violates UGC upload requirements.",
			}
	end

	return true
end

return if getFFlagUseUGCValidationContext() then validateUVSpace else DEPRECATED_validateUVSpace :: never
