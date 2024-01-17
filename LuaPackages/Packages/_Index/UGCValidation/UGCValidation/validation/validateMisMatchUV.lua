local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local function validateMisMatchUV(
	innerCageEditableMesh: EditableMesh,
	outerCageEditableMesh: EditableMesh
): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateEditableMeshMisMatchUV(innerCageEditableMesh, outerCageEditableMesh)
	end)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateMisMatchUV_FailedToExecute)
		return false, { "Failed to execute validateMisMatchUV check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateMisMatchUV_UVMismatch)
		return false,
			{
				"Inner and Outer cage UV mismatched. Original cage template should be used and no modification to the UV map.",
			}
	end

	return true
end

local function DEPRECATED_validateMisMatchUV(innerCageMeshId: string, outerCageMeshId: string): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateMisMatchUV(innerCageMeshId, outerCageMeshId)
	end)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateMisMatchUV_FailedToExecute)
		return false, { "Failed to execute validateMisMatchUV check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateMisMatchUV_UVMismatch)
		return false,
			{
				"Inner and Outer cage UV mismatched. Original cage template should be used and no modification to the UV map.",
			}
	end

	return true
end

if getFFlagUseUGCValidationContext() then
	return validateMisMatchUV :: any
else
	return DEPRECATED_validateMisMatchUV :: any
end
