--!nonstrict

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureEngineUGCValidateCageUVTriangleArea =
	require(root.flags.getEngineFeatureEngineUGCValidateCageUVTriangleArea)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Analytics = require(root.Analytics)

local function validateCageUVTriangleArea(
	meshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	if getEngineFeatureEngineUGCValidateCageUVTriangleArea() then
		local success, result
		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			success, result = pcall(function()
				return UGCValidationService:ValidateEditableMeshCageUVTriangleArea(meshInfo.editableMesh)
			end)
		else
			success, result = pcall(function()
				return UGCValidationService:ValidateCageUVTriangleArea(meshInfo.contentId)
			end)
		end

		if not success then
			if isServer then
				error("Failed to load mesh data")
			end
			Analytics.reportFailure(Analytics.ErrorType.validateCageUVTriangleArea_FailedToLoadMesh)
			return false, { "Failed to load mesh data" }
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateCageUVTriangleArea_ZeroAreaTriangle)
			return false,
				{
					string.format(
						"%s.%s ( %s ) contained an invalid triangle which contained no area",
						meshInfo.fullName,
						meshInfo.fieldName,
						if meshInfo.contentId then meshInfo.contentId else "empty id"
					),
				}
		end
	end

	return true
end

local function DEPRECATED_validateCageUVTriangleArea(
	instance: Instance,
	fieldName: string,
	isServer: boolean?
): (boolean, { string }?)
	local contentId = instance[fieldName]

	if getEngineFeatureEngineUGCValidateCageUVTriangleArea() then
		local success, result = pcall(function()
			return UGCValidationService:ValidateCageUVTriangleArea(contentId)
		end)

		if not success then
			if isServer then
				error("Failed to load mesh data")
			end
			Analytics.reportFailure(Analytics.ErrorType.validateCageUVTriangleArea_FailedToLoadMesh)
			return false, { "Failed to load mesh data" }
		end

		if not result then
			Analytics.reportFailure(Analytics.ErrorType.validateCageUVTriangleArea_ZeroAreaTriangle)
			return false,
				{
					string.format(
						"%s.%s ( %s ) contained an invalid triangle which contained no area",
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
	then validateCageUVTriangleArea
	else DEPRECATED_validateCageUVTriangleArea :: never
