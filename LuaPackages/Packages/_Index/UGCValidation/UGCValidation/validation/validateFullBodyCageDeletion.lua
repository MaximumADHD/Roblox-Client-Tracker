local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent
local Types = require(root.util.Types)

local Analytics = require(root.Analytics)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateFullBodyCageDeletion(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		success, result = pcall(function()
			return UGCValidationService:ValidateEditableMeshFullBodyCageDeletion(meshInfo.editableMesh)
		end)
	else
		success, result = pcall(function()
			return UGCValidationService:ValidateFullBodyCageDeletion(meshInfo.contentId)
		end)
	end

	if not success then
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(
				string.format(
					"Failed to execute body cage detection for '%s'. Make sure the cage mesh exists and try again.",
					meshInfo.fullName
				)
			)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateFullBodyCageDeletion_FailedToExecute)
		return false,
			{
				string.format(
					"Failed to execute cage detection for '%s'. Make sure the cage mesh exists and try again.",
					meshInfo.fullName
				),
			}
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateFullBodyCageDeletion_GeometryRemoved)
		return false,
			{
				string.format(
					"Missing cage for '%s'. You need to provide a cage mesh for each of the 15 body parts making up the R15 body.",
					meshInfo.fullName
				),
			}
	end

	return true
end

local function DEPRECATED_validateFullBodyCageDeletion(
	meshId: string,
	meshType: string,
	isServer: boolean?
): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateFullBodyCageDeletion(meshId)
	end)

	if not success then
		if nil ~= isServer and isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error("Failed to execute validateFullBodyCageDeletion check")
		end
		Analytics.reportFailure(Analytics.ErrorType.validateFullBodyCageDeletion_FailedToExecute)
		return false, { "Failed to execute validateFullBodyCageDeletion check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateFullBodyCageDeletion_GeometryRemoved)
		return false,
			{ string.format("Some %s geometry has been removed. This will result in layering issues.", meshType) }
	end

	return true
end

return if getFFlagUseUGCValidationContext()
	then validateFullBodyCageDeletion
	else DEPRECATED_validateFullBodyCageDeletion :: never
