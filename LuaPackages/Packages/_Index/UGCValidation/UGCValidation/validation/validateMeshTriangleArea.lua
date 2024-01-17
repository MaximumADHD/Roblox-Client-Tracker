--!nonstrict

local root = script.Parent.Parent

local Types = require(root.util.Types)

local Analytics = require(root.Analytics)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureEngineUGCValidateMeshTriangleArea =
	require(root.flags.getEngineFeatureEngineUGCValidateMeshTriangleArea)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateMeshTriangleArea(
	editableMesh: EditableMesh,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = if validationContext then validationContext.isServer else nil

	if getEngineFeatureEngineUGCValidateMeshTriangleArea() then
		local success, result = pcall(function()
			return UGCValidationService:ValidateEditableMeshTriangleArea(editableMesh)
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
						editableMesh:GetAttribute("SourceFullName"),
						editableMesh:GetAttribute("FieldName"),
						editableMesh:GetAttribute("ContentId")
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

if getFFlagUseUGCValidationContext() then
	return validateMeshTriangleArea :: any
else
	return DEPRECATED_validateMeshTriangleArea :: any
end
