--[[
	CageUVValuesCorrect checks that WrapTarget cage meshes have UV values
	that match the reference template values.

	Migrated from: src/validation/validateCageUVValues.lua
	Called via: validateDescendantMeshMetrics -> validateCageUVValues (on WrapTarget CageMeshId)
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local WRAP_TARGET_CAGE_REFERENCE_VALUES = require(root.WrapTargetCageUVReferenceValues)

local getFFlagUGCValidateMigrateCageUV = require(root.flags.getFFlagUGCValidateMigrateCageUV)

local CageUVValuesCorrect = {}

CageUVValuesCorrect.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}

CageUVValuesCorrect.requiredData = {
	ValidationEnums.SharedDataMember.outerCagesData,
}

CageUVValuesCorrect.conditionalData = {}

CageUVValuesCorrect.fflag = getFFlagUGCValidateMigrateCageUV

CageUVValuesCorrect.expectedFailures = {}

CageUVValuesCorrect.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	for partName, cageData in data.outerCagesData do
		local referenceUVValues = WRAP_TARGET_CAGE_REFERENCE_VALUES[partName]
		if not referenceUVValues then
			continue
		end

		local result =
			UGCValidationService:ValidateEditableMeshUVValuesInReference(referenceUVValues, cageData.editable)
		if not result then
			reporter:fail(ErrorSourceStrings.Keys.CageUV_InvalidUVValue, {
				partName = partName,
			})
		end
	end
end

return CageUVValuesCorrect :: Types.ValidationModule
