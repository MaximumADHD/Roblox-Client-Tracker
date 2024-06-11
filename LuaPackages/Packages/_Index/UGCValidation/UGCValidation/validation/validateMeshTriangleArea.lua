--!nonstrict

local root = script.Parent.Parent

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)

local Analytics = require(root.Analytics)

local getEngineFeatureEngineUGCValidateMeshTriangleArea =
	require(root.flags.getEngineFeatureEngineUGCValidateMeshTriangleArea)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateMeshTriangleArea(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local isServer = if validationContext then validationContext.isServer else nil

	if getEngineFeatureEngineUGCValidateMeshTriangleArea() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() and getFFlagUGCValidationShouldYield() then
			success, result = pcallDeferred(function()
				return UGCValidationService:ValidateEditableMeshTriangleArea(meshInfo.editableMesh)
			end, validationContext)
		else
			success, result = pcall(function()
				return UGCValidationService:validateMeshTriangleArea(meshInfo.contentId)
			end)
		end

		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangleArea_FailedToLoadMesh)
			if isServer then
				error(
					string.format(
						"Failed to load model mesh %s. Make sure mesh exists and try again.",
						meshInfo.fullName
					)
				)
			end
			return false,
				{
					string.format(
						"Failed to load model mesh %s. Make sure mesh exists and try again.",
						meshInfo.fullName
					),
				}
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangleArea_NoArea)
			return false,
				{
					string.format(
						"Detected zero-area triangle in model mesh %s. You need to edit the mesh to remove zero-area triangles.",
						meshInfo.fullName
					),
				}
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return validateMeshTriangleArea
