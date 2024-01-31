--!nonstrict
--change above to string after latest robloxdev-cli has new function `UGCValidationService:ValidateUVValuesInReference()`

--[[
	validateCageUVs.lua checks that WrapTarget cage meshes have the correct UV values based on the template
]]

local root = script.Parent.Parent

local Types = require(root.util.Types)

local WRAP_TARGET_CAGE_REFERENCE_VALUES = require(root.WrapTargetCageUVReferenceValues)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureEngineUGCValidateBodyParts = require(root.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureEngineValidateUVValuesInReference =
	require(root.flags.getEngineFeatureEngineUGCValidateUVValuesInReference)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local Analytics = require(root.Analytics)

local UGCValidationService = game:GetService("UGCValidationService")

local function validateCageUVValues(
	meshInfo: Types.MeshInfo,
	wrapTarget: WrapTarget,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer
	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	if not getEngineFeatureEngineValidateUVValuesInReference() then
		return true
	end

	local referenceUVValues = assert(
		WRAP_TARGET_CAGE_REFERENCE_VALUES[(wrapTarget.Parent :: Instance).Name],
		"WrapTarget is not parented to a MeshPart"
	)

	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		success, result = pcall(function()
			return UGCValidationService:ValidateEditableMeshUVValuesInReference(
				referenceUVValues,
				meshInfo.editableMesh
			)
		end)
	else
		success, result = pcall(function()
			return UGCValidationService:ValidateUVValuesInReference(referenceUVValues, meshInfo.contentId)
		end)
	end

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateCageUVValues_FailedToLoadMesh)
		local errorMsg = string.format(
			"Failed to read mesh %s.%s ( %s )",
			wrapTarget:GetFullName(),
			meshInfo.fieldName,
			if meshInfo.contentId then meshInfo.contentId else "empty id"
		)
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorMsg)
		end
		return false, { errorMsg }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateCageUVValues_UnexpectedUVValue)
		return false,
			{
				string.format(
					"%s.%s ( %s ) has a UV value that is unexpected",
					wrapTarget:GetFullName(),
					meshInfo.fieldName,
					if meshInfo.contentId then meshInfo.contentId else "empty id"
				),
			}
	end
	return true
end

local function DEPRECATED_validateCageUVValues(
	contentId: string,
	wrapTarget: WrapTarget,
	fieldName: string,
	isServer: boolean?
): (boolean, { string }?)
	if not getEngineFeatureEngineUGCValidateBodyParts() then
		return true
	end

	if not getEngineFeatureEngineValidateUVValuesInReference() then
		return true
	end

	local referenceUVValues = assert(
		WRAP_TARGET_CAGE_REFERENCE_VALUES[(wrapTarget.Parent :: Instance).Name],
		"WrapTarget is not parented to a MeshPart"
	)

	local success, result = pcall(function()
		return UGCValidationService:ValidateUVValuesInReference(referenceUVValues, contentId)
	end)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateCageUVValues_FailedToLoadMesh)
		local errorMsg =
			string.format("Failed to read mesh %s.%s ( %s )", wrapTarget:GetFullName(), fieldName, contentId)
		if isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorMsg)
		end
		return false, { errorMsg }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateCageUVValues_UnexpectedUVValue)
		return false,
			{
				string.format(
					"%s.%s ( %s ) has a UV value that is unexpected",
					wrapTarget:GetFullName(),
					fieldName,
					contentId
				),
			}
	end
	return true
end

return if getFFlagUseUGCValidationContext() then validateCageUVValues else DEPRECATED_validateCageUVValues :: never
