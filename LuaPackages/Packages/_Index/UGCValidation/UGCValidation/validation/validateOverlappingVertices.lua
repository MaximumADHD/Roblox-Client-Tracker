local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Types = require(root.util.Types)

local Analytics = require(root.Analytics)

local function validateOverlappingVertices(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		success, result = pcall(function()
			return UGCValidationService:ValidateEditableMeshOverlappingVertices(meshInfo.editableMesh)
		end)
	else
		success, result = pcall(function()
			return UGCValidationService:ValidateOverlappingVertices(meshInfo.contentId)
		end)
	end

	if not success then
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(
				string.format(
					"Failed to execute overlapping mesh vertex check for '%s'. Make sure mesh exists and try again.",
					meshInfo.fullName
				)
			)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateOverlappingVertices_FailedToExecute)
		return false,
			{
				string.format(
					"Failed to execute overlapping mesh vertex check for '%s'. Make sure mesh exists and try again.",
					meshInfo.fullName
				),
			}
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateOverlappingVertices_OverlappingVertices)
		return false,
			{
				string.format(
					"Detected two or more vertices in model mesh '%s' sharing near identical positions. You need to position vertices further apart from each other.",
					meshInfo.fullName
				),
			}
	end

	return true
end

local function DEPRECATED_validateOverlappingVertices(
	meshId: string,
	meshType: string,
	isServer: boolean?
): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateOverlappingVertices(meshId)
	end)

	if not success then
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(string.format("Failed to execute validateOverlappingVertices check for %s", meshType))
		end
		Analytics.reportFailure(Analytics.ErrorType.validateOverlappingVertices_FailedToExecute)
		return false, { string.format("Failed to execute validateOverlappingVertices check for %s", meshType) }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateOverlappingVertices_OverlappingVertices)
		return false,
			{ string.format("%s has multiple vertices sharing identical or near-identical positions.", meshType) }
	end

	return true
end

return if getFFlagUseUGCValidationContext()
	then validateOverlappingVertices
	else DEPRECATED_validateOverlappingVertices :: never
