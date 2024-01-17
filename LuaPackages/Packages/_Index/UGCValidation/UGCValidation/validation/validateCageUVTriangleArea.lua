--!nonstrict

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureEngineUGCValidateCageUVTriangleArea =
	require(root.flags.getEngineFeatureEngineUGCValidateCageUVTriangleArea)

local Analytics = require(root.Analytics)

local function validateCageUVTriangleArea(
	editableMesh: EditableMesh,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer

	if getEngineFeatureEngineUGCValidateCageUVTriangleArea() then
		local success, result = pcall(function()
			return UGCValidationService:ValidateEditableMeshCageUVTriangleArea(editableMesh)
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
						editableMesh:GetAttribute("SourceFullName"),
						editableMesh:GetAttribute("FieldName"),
						editableMesh:GetAttribute("ContentId")
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

if getFFlagUseUGCValidationContext() then
	return validateCageUVTriangleArea :: any
else
	return DEPRECATED_validateCageUVTriangleArea :: any
end
