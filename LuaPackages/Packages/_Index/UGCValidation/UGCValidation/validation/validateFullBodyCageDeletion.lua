local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent
local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local Analytics = require(root.Analytics)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateFullBodyCageDeletion(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local isServer = validationContext.isServer

	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
		success, result = pcallDeferred(function()
			return UGCValidationService:ValidateEditableMeshFullBodyCageDeletion(meshInfo.editableMesh)
		end, validationContext)
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

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateFullBodyCageDeletion
