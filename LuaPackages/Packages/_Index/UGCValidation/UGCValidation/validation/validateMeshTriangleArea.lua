--!nonstrict

local root = script.Parent.Parent

local Types = require(root.util.Types)

local Analytics = require(root.Analytics)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureEngineUGCValidateMeshTriangleArea =
	require(root.flags.getEngineFeatureEngineUGCValidateMeshTriangleArea)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateMeshTriangleArea(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = if validationContext then validationContext.isServer else nil

	if getEngineFeatureEngineUGCValidateMeshTriangleArea() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, result = pcall(function()
				return UGCValidationService:ValidateEditableMeshTriangleArea(meshInfo.editableMesh)
			end)
		else
			success, result = pcall(function()
				return UGCValidationService:validateMeshTriangleArea(meshInfo.contentId)
			end)
		end

		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangleArea_FailedToLoadMesh)
			if isServer then
				error("Failed to load mesh data")
			end
			return false, { "Failed to load mesh data" }
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangleArea_NoArea)
			return false,
				{
					string.format(
						"%s.%s ( %s ) contained an invalid triangle which contained no area in 3D space",
						meshInfo.fullName,
						meshInfo.fieldName,
						if meshInfo.contentId then meshInfo.contentId else "empty id"
					),
				}
		end
	end

	return true
end

local function DEPRECATED_validateMeshTriangleArea(
	instance: Instance,
	fieldName: string,
	isServer: boolean?
): (boolean, { string }?)
	local contentId = instance[fieldName]

	if getEngineFeatureEngineUGCValidateMeshTriangleArea() then
		local success, result = pcall(function()
			return UGCValidationService:validateMeshTriangleArea(contentId)
		end)

		if not success then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangleArea_FailedToLoadMesh)
			if isServer then
				error("Failed to load mesh data")
			end
			return false, { "Failed to load mesh data" }
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshTriangleArea_NoArea)
			return false,
				{
					string.format(
						"%s.%s ( %s ) contained an invalid triangle which contained no area in 3D space",
						instance:GetFullName(),
						fieldName,
						contentId
					),
				}
		end
	end

	return true
end

return if getFFlagUseUGCValidationContext()
	then validateMeshTriangleArea
	else DEPRECATED_validateMeshTriangleArea :: never
