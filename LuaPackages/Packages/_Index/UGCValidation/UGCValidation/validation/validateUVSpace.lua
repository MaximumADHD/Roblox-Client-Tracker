local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)

local function validateUVSpace(editableMesh: EditableMesh): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateEditableMeshUVSpace(editableMesh)
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

if getFFlagUseUGCValidationContext() then
	return validateUVSpace :: any
else
	return DEPRECATED_validateUVSpace :: any
end
