--!nonstrict

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local getEngineFeatureEngineUGCValidateCageUVTriangleArea =
	require(root.flags.getEngineFeatureEngineUGCValidateCageUVTriangleArea)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Analytics = require(root.Analytics)

local function validateCageUVTriangleArea(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local isServer = validationContext.isServer

	if getEngineFeatureEngineUGCValidateCageUVTriangleArea() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
			success, result = pcallDeferred(function()
				return UGCValidationService:ValidateEditableMeshCageUVTriangleArea(meshInfo.editableMesh)
			end, validationContext)
		else
			success, result = pcall(function()
				return UGCValidationService:ValidateCageUVTriangleArea(meshInfo.contentId)
			end)
		end

		if not success then
			if isServer then
				error(
					string.format(
						"Failed to load UVs for '%s'. Make sure the model has a valid UV map and try again.",
						meshInfo.fullName
					)
				)
			end
			Analytics.reportFailure(Analytics.ErrorType.validateCageUVTriangleArea_FailedToLoadMesh)
			return false,
				{
					string.format(
						"Failed to load UVs for '%s'. Make sure the model has a valid UV map and try again.",
						meshInfo.fullName
					),
				}
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateCageUVTriangleArea_ZeroAreaTriangle)
			return false,
				{
					string.format(
						"Detected zero-area triangle in UV map of '%s'. You need to edit the UV map to fix this issue.",
						meshInfo.fullName
					),
				}
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateCageUVTriangleArea
